package com.hinnka.mycamera.livephoto

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.media.*
import android.opengl.*
import android.view.Surface
import androidx.core.app.ActivityCompat
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.*
import java.io.File
import java.nio.ByteBuffer
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
        private const val MIME_TYPE_VIDEO = MediaFormat.MIMETYPE_VIDEO_AVC
        private const val VIDEO_BITRATE = 8_000_000
        private const val I_FRAME_INTERVAL = 1

        private const val MIME_TYPE_AUDIO = MediaFormat.MIMETYPE_AUDIO_AAC
        private const val AUDIO_SAMPLE_RATE = 44100
        private const val AUDIO_BITRATE = 64000
        private const val AUDIO_CHANNEL_COUNT = 1
    }

    // 核心组件
    // 缓冲区大小增加一部分裕量 (如增加 2000ms)，以确保在裁剪时能找到前置关键帧
    private val bufferCapacity = bufferDurationMs + postCaptureDurationMs + 2000L
    private val circularVideoRecorder = CircularSampleRecorder(bufferCapacity)
    private val circularAudioRecorder = CircularSampleRecorder(bufferCapacity)

    @Volatile
    private var videoEncoder: MediaCodec? = null
    private var inputSurface: Surface? = null

    @Volatile
    private var audioEncoder: MediaCodec? = null
    private var audioRecord: AudioRecord? = null

    @Volatile
    private var videoFormat: MediaFormat? = null

    @Volatile
    private var audioFormat: MediaFormat? = null

    // 渲染组件 (负责将纹理绘制到编码器 Surface)
    private var lutRenderer: HardwareLutVideoRenderer? = null

    // 状态控制
    @Volatile
    private var isRunning = false
    private var isCapturing = false
    private var snapshotTimestampUs: Long = 0

    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private var videoDrainJob: Job? = null
    private var audioDrainJob: Job? = null
    private var audioRecordJob: Job? = null
    private val renderDispatcher = Executors.newSingleThreadExecutor().asCoroutineDispatcher()

    private var lastFrameTimestampUs: Long = 0
    private var lastSharedContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var lastWidth: Int = 0
    private var lastHeight: Int = 0
    private var pendingRelease = false

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
        circularVideoRecorder.startRecording()
        circularAudioRecorder.startRecording()
        isRunning = true
        lastFrameTimestampUs = 0
        PLog.d(TAG, "Live Photo recording prepared")
    }

    /**
     * 停止录制 (当实况照片模式关闭或相机关闭时调用)
     */
    fun stopRecording() {
        isRunning = false
        circularVideoRecorder.stopRecording()
        circularAudioRecorder.stopRecording()
        if (isCapturing) {
            PLog.d(TAG, "Stop requested while capture in progress, delaying encoder release")
            pendingRelease = true
        } else {
            release()
        }
        PLog.d(TAG, "Live Photo recording stopped")
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
        sharedContext: EGLContext,
        sharedDisplay: EGLDisplay
    ) {
        if (!isRunning) return

        lastFrameTimestampUs = timestampNs / 1000

        val matrix = transformMatrix.clone()
        scope.launch(renderDispatcher) {
            // 如果上下文发生了变化（比如 App 重入）或者分辨率发生了变化（旋转），必须释放旧编码器并重新创建
            if (videoEncoder != null && (
                        (lastSharedContext != EGL14.EGL_NO_CONTEXT && lastSharedContext != sharedContext) ||
                                (lastWidth != width || lastHeight != height)
                        )
            ) {
                PLog.w(TAG, "Shared EGL Context or dimensions changed, forcing encoder re-init.")
                internalRelease()
            }

            // 延迟初始化编码器
            if (videoEncoder == null && sharedContext != EGL14.EGL_NO_CONTEXT) {
                initEncoder(width, height, lutConfig, params, sharedContext, sharedDisplay)
                lastSharedContext = sharedContext
                lastWidth = width
                lastHeight = height
                pendingRelease = false
            }

            if (!isRunning) return@launch

            lutRenderer?.let { renderer ->
                renderer.renderFrame(textureId, matrix, timestampNs / 1000)
            }
        }
    }

    private fun initEncoder(
        width: Int,
        height: Int,
        lutConfig: LutConfig?,
        params: ColorRecipeParams?,
        sharedContext: EGLContext,
        sharedDisplay: EGLDisplay
    ) {
        try {
            var w = width
            var h = height

            // Ensure even dimensions
            if (w % 2 != 0) w--
            if (h % 2 != 0) h--

            // Video Encoder
            val videoFormat = MediaFormat.createVideoFormat(MIME_TYPE_VIDEO, w, h).apply {
                setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface)
                setInteger(MediaFormat.KEY_BIT_RATE, VIDEO_BITRATE)
                setInteger(MediaFormat.KEY_FRAME_RATE, frameRateHz)
                setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, I_FRAME_INTERVAL)
            }

            videoEncoder = MediaCodec.createEncoderByType(MIME_TYPE_VIDEO).apply {
                configure(videoFormat, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
                inputSurface = createInputSurface()
                start()
            }

            // Audio Record & Encoder
            initAudio()

            lutRenderer = HardwareLutVideoRenderer(w, h, lutConfig, params).apply {
                initialize(inputSurface!!, sharedContext, sharedDisplay)
            }

            startDraining()
            PLog.d(TAG, "Encoders initialized: ${w}x${h}")
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to init encoders", e)
        }
    }

    private fun initAudio() {
        try {
            val bufferSize = AudioRecord.getMinBufferSize(
                AUDIO_SAMPLE_RATE,
                AudioFormat.CHANNEL_IN_MONO,
                AudioFormat.ENCODING_PCM_16BIT
            )
            if (bufferSize <= 0) return

            if (ActivityCompat.checkSelfPermission(
                    context,
                    Manifest.permission.RECORD_AUDIO
                ) != PackageManager.PERMISSION_GRANTED
            ) {
                return
            }
            audioRecord = AudioRecord(
                MediaRecorder.AudioSource.CAMCORDER,
                AUDIO_SAMPLE_RATE,
                AudioFormat.CHANNEL_IN_MONO,
                AudioFormat.ENCODING_PCM_16BIT,
                bufferSize * 2
            ).apply {
                if (state == AudioRecord.STATE_INITIALIZED) {
                    startRecording()
                } else {
                    PLog.e(TAG, "AudioRecord state not initialized")
                    return
                }
            }

            val format = MediaFormat.createAudioFormat(MIME_TYPE_AUDIO, AUDIO_SAMPLE_RATE, AUDIO_CHANNEL_COUNT).apply {
                setInteger(MediaFormat.KEY_BIT_RATE, AUDIO_BITRATE)
                setInteger(MediaFormat.KEY_AAC_PROFILE, MediaCodecInfo.CodecProfileLevel.AACObjectLC)
            }

            audioEncoder = MediaCodec.createEncoderByType(MIME_TYPE_AUDIO).apply {
                configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
                start()
            }

            startAudioRecordingLoop()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to init audio", e)
        }
    }

    private fun startAudioRecordingLoop() {
        audioRecordJob = scope.launch {
            val buffer = ByteArray(2048)
            while (isRunning) {
                try {
                    val record = audioRecord ?: break
                    val encoder = audioEncoder ?: break
                    val len = record.read(buffer, 0, buffer.size)
                    if (len > 0 && isRunning) {
                        val inputBufferIndex = try {
                            encoder.dequeueInputBuffer(10_000L)
                        } catch (e: IllegalStateException) {
                            break
                        }
                        if (inputBufferIndex >= 0) {
                            val inputBuffer = encoder.getInputBuffer(inputBufferIndex)
                            inputBuffer?.clear()
                            inputBuffer?.put(buffer, 0, len)
                            try {
                                encoder.queueInputBuffer(
                                    inputBufferIndex,
                                    0,
                                    len,
                                    android.os.SystemClock.elapsedRealtimeNanos() / 1000,
                                    0
                                )
                            } catch (e: IllegalStateException) {
                                break
                            }
                        }
                    }
                } catch (e: Exception) {
                    if (e !is IllegalStateException) {
                        PLog.e(TAG, "Error in audio recording loop", e)
                    }
                    break
                }
            }
        }
    }

    /**
     * 触发快照 (拍照时调用)
     */
    fun snapshot(): List<CircularSampleRecorder.Sample> {
        if (!isRunning) return emptyList()

        // 使用最近一帧的时间戳作为基准，避免时钟源不一致问题
        snapshotTimestampUs = lastFrameTimestampUs
        if (snapshotTimestampUs == 0L) {
            snapshotTimestampUs = android.os.SystemClock.elapsedRealtimeNanos() / 1000
        }

        isCapturing = true
        PLog.d(TAG, "Snapshot triggered at $snapshotTimestampUs")
        return circularVideoRecorder.snapshot()
    }

    /**
     * 完成并生成视频 (拍照后延迟调用)
     * @param imageTimestampUs 可选的图像精确时间戳（纳秒/1000），若不传则使用 snapshot 时的预览时间戳
     */
    fun recordVideo(
        imageTimestampUs: Long? = null,
        onCaptured: (File, Long) -> Unit
    ) {
        scope.launch {
            try {
                // 等待后半段录制 + 额外 500ms 缓冲时间确保编码器完成工作
                delay(postCaptureDurationMs + 500L)

                val currentVideoSamples = circularVideoRecorder.snapshot()
                val currentAudioSamples = circularAudioRecorder.snapshot()
                if (currentVideoSamples.isEmpty()) {
                    PLog.e(TAG, "No video samples in buffer")
                    isCapturing = false
                    return@launch
                }

                // 中心时间点
                val centerTs = imageTimestampUs ?: snapshotTimestampUs

                // 目标时间范围：[中心前 1.5s, 中心后 1.5s]
                var startTimeUs = centerTs - bufferDurationMs * 1000
                val endTimeUs = centerTs + postCaptureDurationMs * 1000

                // 安全检查：如果中心点完全超出了缓冲区（可能由于长曝光导致延迟太久被裁掉了）
                // 则取缓冲区中最新的部分
                val firstSampleTs = currentVideoSamples.first().info.presentationTimeUs
                val lastSampleTs = currentVideoSamples.last().info.presentationTimeUs

                if (centerTs < firstSampleTs || centerTs > lastSampleTs) {
                    PLog.w(
                        TAG,
                        "Center timestamp $centerTs out of buffer range [$firstSampleTs, $lastSampleTs]. Fallback to latest available."
                    )
                    // 如果落后太多，取最后 3s
                    startTimeUs = lastSampleTs - (bufferDurationMs + postCaptureDurationMs) * 1000
                }

                PLog.d(TAG, "Filtering samples: center=$centerTs, range=[$startTimeUs, $endTimeUs]")

                // 策略：寻找 startTimeUs 之前的最后一个关键帧作为视频起点
                var startIndex = -1
                for (i in currentVideoSamples.indices.reversed()) {
                    val sample = currentVideoSamples[i]
                    if (sample.info.presentationTimeUs <= startTimeUs &&
                        (sample.info.flags and MediaCodec.BUFFER_FLAG_KEY_FRAME) != 0
                    ) {
                        startIndex = i
                        break
                    }
                }

                // 如果没找到 startTimeUs 之前的关键帧，则寻找整个缓冲区中的第一个关键帧
                if (startIndex == -1) {
                    startIndex = currentVideoSamples.indexOfFirst {
                        (it.info.flags and MediaCodec.BUFFER_FLAG_KEY_FRAME) != 0
                    }
                }

                if (startIndex == -1 || videoFormat == null) {
                    PLog.e(TAG, "No keyframe or format to mux (format=${videoFormat != null})")
                    onCaptured(File("error"), 0L) // Notify failure to prevent hang
                    return@launch
                }

                // 构建最终视频样本列表，直到 endTimeUs
                val muxVideoSamples = mutableListOf<CircularSampleRecorder.Sample>()
                for (i in startIndex until currentVideoSamples.size) {
                    val sample = currentVideoSamples[i]
                    muxVideoSamples.add(sample)
                    // 核心修复：确保至少收集了一些帧再根据 endTime 停止，避免 1 帧问题
                    if (sample.info.presentationTimeUs >= endTimeUs && muxVideoSamples.size > 5) break
                }

                if (muxVideoSamples.size < 2) {
                    PLog.e(TAG, "Too few video samples for video: ${muxVideoSamples.size}")
                    onCaptured(File("error"), 0L) // Notify failure
                    return@launch
                }

                val finalVideoStartTs = muxVideoSamples.first().info.presentationTimeUs
                val finalVideoEndTs = muxVideoSamples.last().info.presentationTimeUs

                // 过滤出相同时间段的音频样本
                val muxAudioSamples = currentAudioSamples.filter {
                    it.info.presentationTimeUs in finalVideoStartTs..finalVideoEndTs
                }

                if (muxAudioSamples.isEmpty() && !currentAudioSamples.isEmpty()) {
                    PLog.w(
                        TAG,
                        "Audio samples exist but none match video range. Video: [$finalVideoStartTs, $finalVideoEndTs], Audio range: [${currentAudioSamples.first().info.presentationTimeUs}, ${currentAudioSamples.last().info.presentationTimeUs}]"
                    )
                }

                PLog.d(TAG, "Selected ${muxVideoSamples.size} video, ${muxAudioSamples.size} audio samples")
                PLog.d(
                    TAG,
                    "Selected range: [$finalVideoStartTs, $finalVideoEndTs], duration: ${(finalVideoEndTs - finalVideoStartTs) / 1000}ms"
                )

                val videoFile = File(context.cacheDir, "livephoto_${System.currentTimeMillis()}.mp4")

                // 封装 MP4
                muxVideo(videoFile, muxVideoSamples, muxAudioSamples)

                // 计算拍照时刻在视频中的相对时间戳
                val presentationTimestampUs = centerTs - finalVideoStartTs

                onCaptured(videoFile, presentationTimestampUs)

            } catch (e: Exception) {
                PLog.e(TAG, "Failed to finish Live Photo capture", e)
                onCaptured(File("error"), 0L)
            } finally {
                isCapturing = false
                if (pendingRelease) {
                    PLog.d(TAG, "Executing delayed encoder release")
                    release()
                    pendingRelease = false
                }
            }
        }
    }

    private fun startDraining() {
        videoDrainJob = scope.launch {
            val bufferInfo = MediaCodec.BufferInfo()
            while (isRunning) {
                try {
                    val encoderRef = videoEncoder ?: break
                    val outputBufferIndex = try {
                        encoderRef.dequeueOutputBuffer(bufferInfo, 10_000L)
                    } catch (e: IllegalStateException) {
                        // 编码器可能在 dequeue 时被 stop 了
                        PLog.d(TAG, "Video encoder dequeue cancelled (encoder stopped)")
                        break
                    }

                    if (outputBufferIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                        synchronized(this@LivePhotoRecorder) {
                            videoFormat = encoderRef.outputFormat
                        }
                        PLog.d(TAG, "Video encoder format changed: $videoFormat")
                    } else if (outputBufferIndex == MediaCodec.INFO_TRY_AGAIN_LATER) {
                        //PLog.v(TAG, "Video encoder dequeue timeout")
                    } else if (outputBufferIndex >= 0) {
                        val outputBuffer = encoderRef.getOutputBuffer(outputBufferIndex)
                        if (outputBuffer != null && bufferInfo.size > 0) {
                            circularVideoRecorder.addSample(outputBuffer, bufferInfo)
                        }
                        encoderRef.releaseOutputBuffer(outputBufferIndex, false)
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Error draining video encoder", e)
                    break
                }
            }
        }

        audioDrainJob = scope.launch {
            val bufferInfo = MediaCodec.BufferInfo()
            while (isRunning) {
                try {
                    val encoderRef = audioEncoder ?: break
                    val outputBufferIndex = try {
                        encoderRef.dequeueOutputBuffer(bufferInfo, 10_000L)
                    } catch (e: IllegalStateException) {
                        PLog.d(TAG, "Audio encoder dequeue cancelled (encoder stopped)")
                        break
                    }

                    if (outputBufferIndex == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED) {
                        synchronized(this@LivePhotoRecorder) {
                            audioFormat = encoderRef.outputFormat
                        }
                        PLog.d(TAG, "Audio encoder format changed: $audioFormat")
                    } else if (outputBufferIndex >= 0) {
                        val outputBuffer = encoderRef.getOutputBuffer(outputBufferIndex)
                        if (outputBuffer != null && bufferInfo.size > 0) {
                            circularAudioRecorder.addSample(outputBuffer, bufferInfo)
                        }
                        encoderRef.releaseOutputBuffer(outputBufferIndex, false)
                    }
                } catch (e: Exception) {
                    PLog.e(TAG, "Error draining audio encoder", e)
                    break
                }
            }
        }
    }

    private fun muxVideo(
        outputFile: File,
        videoSamples: List<CircularSampleRecorder.Sample>,
        audioSamples: List<CircularSampleRecorder.Sample>
    ) {
        val vFormat = synchronized(this) { videoFormat }
        val aFormat = synchronized(this) { audioFormat }
        if (vFormat == null) {
            PLog.e(TAG, "Cannot mux video: videoFormat is null")
            return
        }
        val muxer = MediaMuxer(outputFile.absolutePath, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4)
        val videoTrackIndex = muxer.addTrack(vFormat)
        val audioTrackIndex = if (aFormat != null && audioSamples.isNotEmpty()) muxer.addTrack(aFormat) else -1
        muxer.start()

        val baseTimeUs = videoSamples.first().info.presentationTimeUs
        videoSamples.forEach { sample ->
            val info = MediaCodec.BufferInfo()
            info.set(0, sample.info.size, sample.info.presentationTimeUs - baseTimeUs, sample.info.flags)
            val buffer = ByteBuffer.wrap(sample.data)
            muxer.writeSampleData(videoTrackIndex, buffer, info)
        }

        if (audioTrackIndex != -1) {
            audioSamples.forEach { sample ->
                val info = MediaCodec.BufferInfo()
                info.set(0, sample.info.size, sample.info.presentationTimeUs - baseTimeUs, sample.info.flags)
                val buffer = ByteBuffer.wrap(sample.data)
                muxer.writeSampleData(audioTrackIndex, buffer, info)
            }
        }

        muxer.stop()
        muxer.release()
        PLog.d(TAG, "Muxed ${videoSamples.size} video and ${audioSamples.size} audio samples to ${outputFile.name}")
    }

    fun release() {
        isRunning = false
        videoDrainJob?.cancel()
        audioDrainJob?.cancel()
        audioRecordJob?.cancel()
        // 不要在这里立刻置空 videoFormat，因为异步的 recordVideo 还需要它进行 mux
        scope.launch(renderDispatcher) {
            internalRelease()
        }
    }

    private fun internalRelease() {
        videoEncoder?.let {
            try {
                it.stop()
                it.release()
            } catch (e: Exception) {
                PLog.w(TAG, "Error releasing video encoder: ${e.message}")
            }
        }
        videoEncoder = null
        inputSurface = null

        audioEncoder?.let {
            try {
                it.stop()
                it.release()
            } catch (e: Exception) {
                PLog.w(TAG, "Error releasing audio encoder: ${e.message}")
            }
        }
        audioEncoder = null

        audioRecord?.let {
            try {
                it.stop()
                it.release()
            } catch (e: Exception) {
                PLog.w(TAG, "Error releasing audio record: ${e.message}")
            }
        }
        audioRecord = null

        lutRenderer?.release()
        lutRenderer = null

        // 核心修复：不要在这里调用 circularVideoRecorder.release()。
        // 因为 release() 是异步执行的，如果此时用户已经重新打开了相机（Session B），
        // 调用 circularVideoRecorder.release() 会把已经开始的 Session B 也关掉（isRecording=false）。
        // 样本缓冲区的生命周期应由 startRecording / stopRecording 同步控制。

        lastSharedContext = EGL14.EGL_NO_CONTEXT
        PLog.d(TAG, "Live Photo hardware resources released")
    }

    // 简单透出状态
    fun isRecording(): Boolean = isRunning
    fun isCapturing(): Boolean = isCapturing
}
