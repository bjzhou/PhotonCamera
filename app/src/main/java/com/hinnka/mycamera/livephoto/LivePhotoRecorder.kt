package com.hinnka.mycamera.livephoto

import android.content.Context
import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.media.MediaMuxer
import android.opengl.*
import android.view.Surface
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.*
import java.io.File
import java.nio.ByteBuffer
import java.util.*
import java.util.concurrent.ConcurrentLinkedDeque
import java.util.concurrent.Executors

/**
 * Live Photo 录制管理器 (重构版 - 解决 OOM)
 *
 * 采用“实时编码+样本缓冲”方案：
 * 1. 持续将预览帧发送到硬件编码器 (MediaCodec)。
 * 2. 缓冲编码后的压缩数据 (H.264 Samples) 而非原始像素。
 * 3. 内存占用从数百 MB 降低到约 2-5 MB。
 */
class LivePhotoRecorder(
    private val context: Context,
    private val bufferDurationMs: Long = 1500L,
    private val postCaptureDurationMs: Long = 1500L,
    private val frameRateHz: Int = 30
) {
    companion object {
        private const val TAG = "LivePhotoRecorder"
        private const val MIME_TYPE = MediaFormat.MIMETYPE_VIDEO_AVC
        private const val BITRATE = 8_000_000
        private const val I_FRAME_INTERVAL = 1
    }

    // 核心组件
    // 缓冲区大小需要覆盖 预录制(bufferDuration) + 后录制(postCaptureDuration)
    private val circularRecorder = CircularVideoRecorder(bufferDurationMs + postCaptureDurationMs)

    @Volatile
    private var encoder: MediaCodec? = null
    private var inputSurface: Surface? = null

    @Volatile
    private var encoderFormat: MediaFormat? = null

    // 渲染组件 (负责将纹理绘制到编码器 Surface)
    private var lutRenderer: HardwareLutVideoRenderer? = null

    // 状态控制
    @Volatile
    private var isRunning = false
    private var isCapturing = false
    private var snapshotTimestampUs: Long = 0

    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private var drainJob: Job? = null
    private val renderDispatcher = Executors.newSingleThreadExecutor().asCoroutineDispatcher()

    private var lastFrameTimestampUs: Long = 0

    /**
     * 更新实时编码器的配置（如 LUT 或色彩配方）
     */
    fun updateConfig(lutConfig: LutConfig?, params: ColorRecipeParams?) {
        lutRenderer?.updateConfig(lutConfig, params)
    }

    /**
     * 开始录制 (当实况照片模式开启时调用)
     */
    fun startRecording() {
        if (isRunning) return
        circularRecorder.startRecording()
        isRunning = true
        lastFrameTimestampUs = 0
        PLog.d(TAG, "Live Photo recording prepared")
    }

    /**
     * 停止录制
     */
    fun stopRecording() {
        isRunning = false
        drainJob?.cancel()
        release()
        PLog.d(TAG, "Live Photo background encoder stopped")
    }

    /**
     * 处理预览帧 (GL 线程调用)
     */
    fun onPreviewFrame(
        textureId: Int,
        transformMatrix: FloatArray,
        width: Int,
        height: Int,
        timestampNs: Long,
        lutConfig: LutConfig?,
        params: ColorRecipeParams?,
        sharedContext: EGLContext
    ) {
        if (!isRunning) return

        lastFrameTimestampUs = timestampNs / 1000

        val matrix = transformMatrix.clone()
        scope.launch(renderDispatcher) {
            // 延迟初始化编码器 (当收到第一帧时)
            if (encoder == null) {
                initEncoder(width, height, lutConfig, params, sharedContext)
            }

            lutRenderer?.let { renderer ->
                //PLog.v(TAG, "Rendering frame at ${timestampNs / 1000}")
                // renderer.updateConfig(lutConfig, params) // No longer needed
                renderer.renderFrame(textureId, matrix, timestampNs / 1000)
            }
        }
    }

    private fun initEncoder(
        width: Int,
        height: Int,
        lutConfig: LutConfig?,
        params: ColorRecipeParams?,
        sharedContext: EGLContext
    ) {
        try {
            // 限制分辨率
            val maxDim = 1280
            var w = width
            var h = height
            if (w > maxDim || h > maxDim) {
                if (w > h) {
                    h = (h * maxDim.toFloat() / w).toInt()
                    w = maxDim
                } else {
                    w = (w * maxDim.toFloat() / h).toInt()
                    h = maxDim
                }
            }

            // Ensure even dimensions
            if (w % 2 != 0) w--
            if (h % 2 != 0) h--

            val format = MediaFormat.createVideoFormat(MIME_TYPE, w, h).apply {
                setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface)
                setInteger(MediaFormat.KEY_BIT_RATE, BITRATE)
                setInteger(MediaFormat.KEY_FRAME_RATE, frameRateHz)
                setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, I_FRAME_INTERVAL)
            }

            encoder = MediaCodec.createEncoderByType(MIME_TYPE).apply {
                configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
                inputSurface = createInputSurface()
                start()
            }

            lutRenderer = HardwareLutVideoRenderer(w, h, lutConfig, params).apply {
                initialize(inputSurface!!, sharedContext)
            }

            startDraining()
            PLog.d(TAG, "Encoder initialized: ${w}x${h}")
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to init encoder", e)
        }
    }

    /**
     * 触发快照 (拍照时调用)
     */
    fun snapshot(): List<CircularVideoRecorder.Sample> {
        if (!isRunning) return emptyList()

        // 使用最近一帧的时间戳作为基准，避免时钟源不一致问题
        snapshotTimestampUs = lastFrameTimestampUs
        if (snapshotTimestampUs == 0L) {
            snapshotTimestampUs = System.nanoTime() / 1000
        }

        isCapturing = true
        PLog.d(TAG, "Snapshot triggered at $snapshotTimestampUs")
        return circularRecorder.snapshot()
    }

    /**
     * 完成并生成视频 (拍照后延迟调用)
     */
    fun recordVideo(
        lutConfig: LutConfig?,
        params: ColorRecipeParams?,
        onCaptured: (File, Long) -> Unit
    ) {
        // 由于是持续编码，lutConfig 和 params 已经在预览渲染时应用了
        scope.launch {
            try {
                // 等待后半段录制
                delay(postCaptureDurationMs)

                val currentSamples = circularRecorder.snapshot()

                // 筛选时间范围：[拍照前 bufferDurationMs, 拍照后 postCaptureDurationMs]
                val startTimeUs = snapshotTimestampUs - bufferDurationMs * 1000
                val endTimeUs = snapshotTimestampUs + postCaptureDurationMs * 1000

                PLog.d(TAG, "Filtering samples: snapshot=$snapshotTimestampUs, range=[$startTimeUs, $endTimeUs]")

                val targetSamples = currentSamples.filter {
                    it.info.presentationTimeUs in startTimeUs..endTimeUs
                }

                PLog.d(TAG, "Found ${targetSamples.size} samples out of ${currentSamples.size} total")
                if (currentSamples.isNotEmpty()) {
                    val first = currentSamples.first().info.presentationTimeUs
                    val last = currentSamples.last().info.presentationTimeUs
                    PLog.d(TAG, "Available range: [$first, $last]")
                }

                if (targetSamples.isEmpty() || encoderFormat == null) {
                    PLog.e(TAG, "No samples or format to mux")
                    isCapturing = false
                    return@launch
                }

                // 寻找第一个关键帧作为起点
                val firstSyncIdx = targetSamples.indexOfFirst {
                    (it.info.flags and MediaCodec.BUFFER_FLAG_KEY_FRAME) != 0
                }

                if (firstSyncIdx == -1) {
                    PLog.e(TAG, "No keyframe found in samples")
                    isCapturing = false
                    return@launch
                }

                val muxSamples = targetSamples.subList(firstSyncIdx, targetSamples.size)
                val videoFile = File(context.cacheDir, "livephoto_${System.currentTimeMillis()}.mp4")

                // 封装 MP4
                muxVideo(videoFile, muxSamples)

                // 计算拍照时刻在视频中的相对时间戳
                val startTs = muxSamples.first().info.presentationTimeUs
                val presentationTimestampUs = snapshotTimestampUs - startTs

                onCaptured(videoFile, presentationTimestampUs)

            } catch (e: Exception) {
                PLog.e(TAG, "Failed to finish Live Photo capture", e)
            } finally {
                isCapturing = false
            }
        }
    }

    private fun startDraining() {
        drainJob = scope.launch {
            val bufferInfo = MediaCodec.BufferInfo()
            while (isRunning) {
                try {
                    val encoderRef = encoder ?: break
                    val outputBufferIndex = try {
                        encoderRef.dequeueOutputBuffer(bufferInfo, 10_000L)
                    } catch (e: IllegalStateException) {
                        break
                    }

                    if (outputBufferIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                        encoderFormat = encoderRef.outputFormat
                        PLog.d(TAG, "Encoder format changed: $encoderFormat")
                    } else if (outputBufferIndex == MediaCodec.INFO_TRY_AGAIN_LATER) {
                        //PLog.v(TAG, "Encoder dequeue timeout")
                    } else if (outputBufferIndex >= 0) {
                        val outputBuffer = encoderRef.getOutputBuffer(outputBufferIndex)
                        if (outputBuffer != null && bufferInfo.size > 0) {
                            circularRecorder.addSample(outputBuffer, bufferInfo)
                        }
                        encoderRef.releaseOutputBuffer(outputBufferIndex, false)
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Error draining encoder", e)
                    break
                }
            }
        }
    }

    private fun muxVideo(outputFile: File, samples: List<CircularVideoRecorder.Sample>) {
        val muxer = MediaMuxer(outputFile.absolutePath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4)
        val trackIndex = muxer.addTrack(encoderFormat!!)
        muxer.start()

        val baseTimeUs = samples.first().info.presentationTimeUs
        samples.forEach { sample ->
            val info = MediaCodec.BufferInfo()
            info.set(0, sample.info.size, sample.info.presentationTimeUs - baseTimeUs, sample.info.flags)
            val buffer = ByteBuffer.wrap(sample.data)
            muxer.writeSampleData(trackIndex, buffer, info)
        }

        muxer.stop()
        muxer.release()
        PLog.d(TAG, "Muxed ${samples.size} samples to ${outputFile.name}")
    }

    fun release() {
        isRunning = false
        isCapturing = false
        drainJob?.cancel()

        scope.launch(renderDispatcher) {
            encoder?.let {
                try {
                    it.stop(); it.release()
                } catch (e: Exception) {
                }
            }
            encoder = null
            inputSurface = null

            lutRenderer?.release()
            lutRenderer = null

            circularRecorder.release()
        }
    }

    // 简单透出状态
    fun isRecording(): Boolean = isRunning
    fun isCapturing(): Boolean = isCapturing
}
