package com.hinnka.mycamera.video

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.hardware.camera2.CameraCharacteristics
import android.media.AudioFormat
import android.media.AudioManager
import android.media.AudioRecord
import android.media.AudioTimestamp
import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.media.MediaMuxer
import android.media.MediaRecorder
import android.net.Uri
import android.os.SystemClock
import android.util.Size
import android.view.Surface
import androidx.core.app.ActivityCompat
import com.hinnka.mycamera.lut.RealtimeVideoRenderer
import com.hinnka.mycamera.lut.VideoColorEffectLayer
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExecutorCoroutineDispatcher
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.cancel
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.util.concurrent.Executors

class VideoRecorder(
    private val context: Context
) {

    companion object {
        private const val TAG = "VideoRecorder"

        private const val AUDIO_MIME = MediaFormat.MIMETYPE_AUDIO_AAC
        private const val AUDIO_SAMPLE_RATE = 48_000
        private const val AUDIO_MONO_CHANNEL_COUNT = 1
        private const val AUDIO_STEREO_CHANNEL_COUNT = 2
        private const val AUDIO_BYTES_PER_SAMPLE = 2
        private const val AUDIO_MONO_BITRATE = 96_000
        private const val AUDIO_STEREO_BITRATE = 192_000
        private const val I_FRAME_INTERVAL = 1
        private const val UNSET_TIMESTAMP = Long.MIN_VALUE
        private const val NANOS_PER_SECOND = 1_000_000_000L
        private const val MICROS_PER_SECOND = 1_000_000L
    }

    private data class AudioCaptureConfig(
        val channelMask: Int,
        val channelCount: Int,
        val bitrate: Int,
        val label: String
    )

    private data class PreparedAudioRecord(
        val recorder: AudioRecord,
        val config: AudioCaptureConfig
    )

    private data class EncodedSample(
        val data: ByteArray,
        val info: MediaCodec.BufferInfo
    )

    private data class PauseInterval(
        val startTimeUs: Long,
        val endTimeUs: Long,
    )

    private data class FrameRange(
        val startFrame: Int,
        val endFrameExclusive: Int,
    )

    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private val audioManager = context.getSystemService(AudioManager::class.java)
    private val renderDispatcher: ExecutorCoroutineDispatcher =
        Executors.newSingleThreadExecutor().asCoroutineDispatcher()
    private val muxerLock = Any()
    private val timelineLock = Any()
    private val realtimeFrameLock = Any()
    private val videoCodecLock = Any()
    private val audioCodecLock = Any()

    @Volatile
    private var isRecording = false

    @Volatile
    private var isPaused = false

    @Volatile
    private var stopRequested = false

    @Volatile
    private var videoEncoder: MediaCodec? = null
    private var audioEncoder: MediaCodec? = null
    private var audioRecord: AudioRecord? = null
    private var inputSurface: Surface? = null
    private var renderer: RealtimeVideoRenderer? = null
    private var requestedBitrateMbps: Int = 30
    private var requestedCodecMime: String = MediaFormat.MIMETYPE_VIDEO_AVC
    private var requestedOrientationHintDegrees: Int = 0
    private var requestedFlipEncodedFrame: Boolean = false
    private var requestedRecordingPath: VideoRecordingPath = VideoRecordingPath.DCIM_PHOTON
    private var requestedRecordingTreeUri: String? = null
    private var preferredAudioInputId: String = VIDEO_AUDIO_INPUT_AUTO
    private var requestedColorConfig: VideoEncoderColorRequest = VideoEncoderColorRequest()
    private var preparedEncoderColorConfig: VideoEncoderColorConfig? = null
    private var requestedOutputSize = Size(1080, 1920)
    private var requestedCameraInputSize = Size(1920, 1080)
    private var requestedColorLayers: List<VideoColorEffectLayer> = emptyList()
    private var cameraInputStarted = false
    private var hlgCameraInput = false
    private var requestedCameraTimestampSource = CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN
    private var cameraTimestampToBoottimeOffsetNs = UNSET_TIMESTAMP
    private var timelineOriginUs = UNSET_TIMESTAMP
    private var pauseIntervals = mutableListOf<PauseInterval>()
    private var activePauseStartTimeUs = UNSET_TIMESTAMP

    private var requestedSize = Size(1080, 1920)
    private var requestedFps = 30
    private var outputDateTakenMs: Long = 0L
    private var pendingVideoOutput: VideoMediaStoreWriter.PendingVideo? = null
    private var muxer: MediaMuxer? = null
    private var videoTrackIndex = -1
    private var audioTrackIndex = -1
    private var muxerStarted = false
    private var audioEnabled = true
    private var pendingVideoSamples = mutableListOf<EncodedSample>()
    private var pendingAudioSamples = mutableListOf<EncodedSample>()
    private var videoFormat: MediaFormat? = null
    private var audioFormat: MediaFormat? = null
    private var errorCallback: ((String) -> Unit)? = null
    private var finishCallback: ((Uri?) -> Unit)? = null
    private var audioFramesRead = 0L
    private var audioFallbackStartTimeNs = UNSET_TIMESTAMP
    private var firstAudioCaptureTimeUs = UNSET_TIMESTAMP
    private var lastQueuedAudioPresentationTimeUs = UNSET_TIMESTAMP
    private var audioEndPresentationTimeUs = UNSET_TIMESTAMP
    private var activeAudioConfig = monoAudioConfig()
    private var lastMuxedVideoPresentationTimeUs = Long.MIN_VALUE
    private var lastMuxedAudioPresentationTimeUs = Long.MIN_VALUE
    private var pendingRealtimeFrame = false
    private var renderLoopRunning = false
    private var statsWindowStartMs: Long = 0L
    private var statsIncomingFrames: Int = 0
    private var statsAcceptedFrames: Int = 0
    private var statsReplacedPendingFrames: Int = 0
    private var statsRenderedFrames: Int = 0
    private var statsRenderTimeTotalMs: Long = 0L
    private var statsRenderTimeMaxMs: Long = 0L

    private var videoDrainJob: Job? = null
    private var audioDrainJob: Job? = null
    private var audioRecordJob: Job? = null

    val usesDedicatedCameraInput: Boolean
        get() = isRecording

    val cameraInputSurface: Surface?
        get() = renderer?.inputSurface.takeIf {
            isRecording && !stopRequested
        }

    fun startRecording(
        size: Size,
        cameraInputSize: Size = size,
        fps: Int,
        bitrateMbps: Int,
        codecMime: String,
        colorConfig: VideoEncoderColorRequest = VideoEncoderColorRequest(),
        colorLayers: List<VideoColorEffectLayer> = emptyList(),
        hlgInput: Boolean = false,
        cameraTimestampSource: Int = CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN,
        orientationHintDegrees: Int = 0,
        flipEncodedFrame: Boolean = false,
        recordingPath: VideoRecordingPath = VideoRecordingPath.DCIM_PHOTON,
        recordingTreeUri: String? = null,
        onError: ((String) -> Unit)? = null,
        onFinished: ((Uri?) -> Unit)? = null
    ): Boolean {
        if (isRecording) return false

        requestedOrientationHintDegrees = normalizeOrientationHint(orientationHintDegrees)
        requestedOutputSize = Size(size.width.align16(), size.height.align16())
        requestedCameraInputSize = cameraInputSize
        // SurfaceTexture 变换后的 OES 内容已经处于自然显示方向，编码画布必须继续使用
        // VideoResolutionPreset 的显示尺寸。设备横竖屏差异只通过容器 rotation metadata 表达。
        requestedSize = requestedOutputSize
        requestedFps = fps
        requestedBitrateMbps = bitrateMbps
        requestedCodecMime = codecMime
        requestedColorConfig = colorConfig
        requestedColorLayers = colorLayers.toList()
        hlgCameraInput = hlgInput
        requestedCameraTimestampSource = cameraTimestampSource
        requestedFlipEncodedFrame = flipEncodedFrame
        requestedRecordingPath = recordingPath
        requestedRecordingTreeUri = recordingTreeUri?.takeIf { it.isNotBlank() }
        outputDateTakenMs = System.currentTimeMillis()
        this.errorCallback = onError
        this.finishCallback = onFinished
        resetMuxerState()
        isPaused = false
        statsWindowStartMs = 0L
        statsIncomingFrames = 0
        statsAcceptedFrames = 0
        statsReplacedPendingFrames = 0
        statsRenderedFrames = 0
        statsRenderTimeTotalMs = 0L
        statsRenderTimeMaxMs = 0L
        stopRequested = false
        cameraInputStarted = false
        try {
            prepareVideoEncoder()
            runBlocking(renderDispatcher) {
                initializeRealtimeRenderer()
            }
            createMuxer()
            audioEnabled = initAudioEncoder(startLoop = false)
            startDrains()
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to prepare video recording before start", e)
            cleanupPreparedStart()
            errorCallback?.invoke("Failed to prepare video recording: ${e.localizedMessage ?: "Unknown error"}")
            return false
        }
        isRecording = true
        PLog.d(
            TAG,
            "Video recording prepared: encoder=${requestedSize.width}x${requestedSize.height}, " +
                "output=${requestedOutputSize.width}x${requestedOutputSize.height} @ " +
                "${requestedFps}fps, orientationHint=$requestedOrientationHintDegrees, " +
                "input=dedicated-surface-texture, " +
                "cameraTimestampSource=$requestedCameraTimestampSource, " +
                "path=${requestedRecordingPath.name}, uri=${requestedRecordingTreeUri?.take(48)}"
        )
        return true
    }

    fun onCameraInputStarted(): Boolean {
        if (!isRecording || stopRequested || cameraInputStarted) return false
        cameraInputStarted = true
        if (audioEnabled) {
            startAudioLoop()
        }
        PLog.d(TAG, "Dedicated Camera2 recording input started")
        return true
    }

    fun stopRecording() {
        if (!isRecording || stopRequested) return
        stopRequested = true
        val completion = finishCallback
        scope.launch {
            var publishedUri: Uri? = null
            try {
                audioRecordJob?.join()
                withContext(renderDispatcher) {
                    drainRealtimeFrames(allowWhenStopping = true)
                    signalVideoEndOfInputStream()
                }
                queueAudioEndOfStream()
                videoDrainJob?.join()
                audioDrainJob?.join()

                releaseCaptureResources()
                isRecording = false
                publishedUri = finalizeOutput()
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to stop recording cleanly", e)
            } finally {
                cleanup()
                completion?.invoke(publishedUri)
            }
        }
    }

    fun forceStop() {
        if (!isRecording || stopRequested) return
        stopRequested = true
        val completion = finishCallback
        scope.launch {
            errorCallback?.invoke("Recording stopped unexpectedly")
            cleanup()
            completion?.invoke(null)
        }
    }

    fun pauseRecording() {
        if (!isRecording || isPaused || stopRequested) return
        val nowUs = SystemClock.elapsedRealtimeNanos() / 1_000L
        synchronized(timelineLock) {
            activePauseStartTimeUs = nowUs
        }
        isPaused = true
        PLog.d(TAG, "Video recording paused")
    }

    fun resumeRecording() {
        if (!isRecording || !isPaused || stopRequested) return
        val nowUs = SystemClock.elapsedRealtimeNanos() / 1_000L
        synchronized(timelineLock) {
            val pauseStartUs = activePauseStartTimeUs
            if (pauseStartUs != UNSET_TIMESTAMP && nowUs > pauseStartUs) {
                pauseIntervals += PauseInterval(pauseStartUs, nowUs)
            }
            activePauseStartTimeUs = UNSET_TIMESTAMP
        }
        isPaused = false
        PLog.d(TAG, "Video recording resumed")
    }

    fun isRecording(): Boolean = isRecording && !stopRequested

    fun setPreferredAudioInputId(audioInputId: String) {
        preferredAudioInputId = audioInputId.ifBlank { VIDEO_AUDIO_INPUT_AUTO }
    }

    private fun initializeRealtimeRenderer() {
        val encoderSurface = inputSurface ?: throw IllegalStateException("Video encoder input surface is not prepared")
        val encoderColorConfig = preparedEncoderColorConfig ?: VideoEncoderColorConfig.sdrDisplay()
        val realtimeRenderer = RealtimeVideoRenderer(
            context = context,
            cameraInputSize = requestedCameraInputSize,
            encoderOutputSize = requestedSize,
            colorLayers = requestedColorLayers,
            videoLogProfile = requestedColorConfig.logProfile,
            hlgInput = hlgCameraInput,
            mirrorHorizontally =
                requestedFlipEncodedFrame && requestedOrientationHintDegrees % 180 == 0,
            mirrorVertically =
                requestedFlipEncodedFrame && requestedOrientationHintDegrees % 180 != 0,
            encoderColorConfig = encoderColorConfig,
        )
        renderer = realtimeRenderer
        realtimeRenderer.initialize(
            encoderSurface = encoderSurface,
            onFrameAvailable = ::onRealtimeFrameAvailable,
        )
        PLog.d(
            TAG,
            "Realtime video renderer initialized: ${requestedSize.width}x${requestedSize.height} @ ${requestedFps}fps"
        )
    }

    private fun onRealtimeFrameAvailable() {
        if (!isRecording || stopRequested || isPaused) return
        statsIncomingFrames += 1
        synchronized(realtimeFrameLock) {
            if (pendingRealtimeFrame) {
                statsReplacedPendingFrames += 1
            }
            pendingRealtimeFrame = true
            if (!renderLoopRunning) {
                renderLoopRunning = true
                scope.launch(renderDispatcher) {
                    drainRealtimeFrames(allowWhenStopping = false)
                }
            }
        }
    }

    private fun prepareVideoEncoder() {
        if (videoEncoder != null && inputSurface != null) return
        val width = requestedSize.width
        val height = requestedSize.height
        val videoBitrate = (requestedBitrateMbps * 1_000_000).coerceIn(2_000_000, 300_000_000)

        videoEncoder = MediaCodec.createEncoderByType(requestedCodecMime).apply {
            val capabilities = codecInfo.getCapabilitiesForType(requestedCodecMime)
            val isCbrSupported = capabilities.encoderCapabilities?.isBitrateModeSupported(MediaCodecInfo.EncoderCapabilities.BITRATE_MODE_CBR) == true
            val bitrateMode = if (isCbrSupported) {
                MediaCodecInfo.EncoderCapabilities.BITRATE_MODE_CBR
            } else {
                PLog.w(TAG, "CBR bitrate mode not supported, falling back to VBR")
                MediaCodecInfo.EncoderCapabilities.BITRATE_MODE_VBR
            }
            val resolvedColorConfig = resolveVideoEncoderColorConfig(codecInfo, requestedCodecMime, requestedColorConfig)
            preparedEncoderColorConfig = resolvedColorConfig
            val format = MediaFormat.createVideoFormat(requestedCodecMime, width, height).apply {
                setInteger(MediaFormat.KEY_COLOR_FORMAT, MediaCodecInfo.CodecCapabilities.COLOR_FormatSurface)
                setInteger(MediaFormat.KEY_BIT_RATE, videoBitrate)
                setInteger(MediaFormat.KEY_FRAME_RATE, requestedFps)
                setInteger(MediaFormat.KEY_I_FRAME_INTERVAL, I_FRAME_INTERVAL)
                setInteger(MediaFormat.KEY_PRIORITY, 0)
                setInteger(MediaFormat.KEY_BITRATE_MODE, bitrateMode)
                setInteger(MediaFormat.KEY_MAX_B_FRAMES, 0)
                resolvedColorConfig.applyTo(this)
            }
            try {
                configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
                inputSurface = createInputSurface()
                start()
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to start video encoder with primary config: ${e.message}")
                if (isCbrSupported) {
                    PLog.i(TAG, "Retrying with VBR as fallback...")
                    format.setInteger(MediaFormat.KEY_BITRATE_MODE, MediaCodecInfo.EncoderCapabilities.BITRATE_MODE_VBR)
                    reset()
                    configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
                    inputSurface = createInputSurface()
                    start()
                } else {
                    throw e
                }
            }
            PLog.i(
                TAG,
                "Prepared video encoder: mime=$requestedCodecMime, bitrateMode=${if (bitrateMode == 2) "CBR" else "VBR"}, " +
                    "colorPipeline=${resolvedColorConfig.pipeline}, colorStandard=${resolvedColorConfig.colorStandard}, " +
                    "colorTransfer=${resolvedColorConfig.colorTransfer}, colorRange=${resolvedColorConfig.colorRange}, " +
                    "codecProfile=${resolvedColorConfig.codecProfile}, prefer10BitSurface=${resolvedColorConfig.prefer10BitInputSurface}, " +
                    "request=${requestedColorConfig.logProfile.name}, hasLut=${requestedColorConfig.hasActiveLut}"
            )
            if (requestedColorConfig.logProfile.isEnabled && resolvedColorConfig.codecProfile == null) {
                PLog.w(
                    TAG,
                    "Selected codec does not expose a 10-bit profile for ${requestedColorConfig.logProfile.name}. " +
                        "Recording will continue, but encoded Log compatibility may be reduced."
                )
            }
        }
    }

    private fun initAudioEncoder(startLoop: Boolean = true): Boolean {
        if (ActivityCompat.checkSelfPermission(context, Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
            PLog.w(TAG, "Audio permission missing, continue without audio")
            return false
        }

        return try {
            val preparedAudioRecord = createAudioRecordWithFallback() ?: return false
            audioRecord = preparedAudioRecord.recorder.apply {
                if (startLoop) {
                    startRecording()
                }
            }
            activeAudioConfig = preparedAudioRecord.config

            audioEncoder = MediaCodec.createEncoderByType(AUDIO_MIME).apply {
                val format = MediaFormat.createAudioFormat(
                    AUDIO_MIME,
                    AUDIO_SAMPLE_RATE,
                    activeAudioConfig.channelCount
                ).apply {
                    setInteger(MediaFormat.KEY_BIT_RATE, activeAudioConfig.bitrate)
                    setInteger(MediaFormat.KEY_AAC_PROFILE, MediaCodecInfo.CodecProfileLevel.AACObjectLC)
                }
                configure(format, null, null, MediaCodec.CONFIGURE_FLAG_ENCODE)
                start()
            }

            PLog.i(
                TAG,
                "Audio encoder initialized: ${activeAudioConfig.label}, " +
                    "channels=${activeAudioConfig.channelCount}, bitrate=${activeAudioConfig.bitrate}"
            )
            if (startLoop) {
                startAudioLoop()
            }
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to initialize audio encoder", e)
            audioRecord?.release()
            audioRecord = null
            audioEncoder?.release()
            audioEncoder = null
            false
        }
    }

    private fun createAudioRecordWithFallback(): PreparedAudioRecord? {
        val configs = listOf(stereoAudioConfig(), monoAudioConfig())
        for (config in configs) {
            val minBufferSize = try {
                AudioRecord.getMinBufferSize(
                    AUDIO_SAMPLE_RATE,
                    config.channelMask,
                    AudioFormat.ENCODING_PCM_16BIT
                )
            } catch (e: Exception) {
                PLog.w(TAG, "AudioRecord min buffer query failed for ${config.label}: ${e.message}")
                continue
            }
            if (minBufferSize <= 0) {
                PLog.w(TAG, "AudioRecord does not support ${config.label}: minBufferSize=$minBufferSize")
                continue
            }

            val recorder = try {
                AudioRecord(
                    MediaRecorder.AudioSource.CAMCORDER,
                    AUDIO_SAMPLE_RATE,
                    config.channelMask,
                    AudioFormat.ENCODING_PCM_16BIT,
                    minBufferSize * 2
                )
            } catch (e: Exception) {
                PLog.w(TAG, "AudioRecord creation failed for ${config.label}: ${e.message}")
                continue
            }
            if (recorder.state == AudioRecord.STATE_INITIALIZED) {
                applyPreferredAudioInput(recorder)
                PLog.i(TAG, "AudioRecord initialized: ${config.label}, bufferSize=${minBufferSize * 2}")
                return PreparedAudioRecord(recorder, config)
            }

            recorder.release()
            PLog.w(TAG, "AudioRecord failed to initialize with ${config.label}")
        }
        PLog.w(TAG, "No supported audio capture channel configuration found")
        return null
    }

    private fun stereoAudioConfig(): AudioCaptureConfig {
        return AudioCaptureConfig(
            channelMask = AudioFormat.CHANNEL_IN_STEREO,
            channelCount = AUDIO_STEREO_CHANNEL_COUNT,
            bitrate = AUDIO_STEREO_BITRATE,
            label = "stereo"
        )
    }

    private fun monoAudioConfig(): AudioCaptureConfig {
        return AudioCaptureConfig(
            channelMask = AudioFormat.CHANNEL_IN_MONO,
            channelCount = AUDIO_MONO_CHANNEL_COUNT,
            bitrate = AUDIO_MONO_BITRATE,
            label = "mono"
        )
    }

    private fun applyPreferredAudioInput(audioRecord: AudioRecord) {
        if (preferredAudioInputId == VIDEO_AUDIO_INPUT_AUTO) {
            PLog.d(TAG, "Use system default audio input routing")
            return
        }
        val preferredDevice = audioManager.getDevices(AudioManager.GET_DEVICES_INPUTS)
            .firstOrNull { it.isSource && it.toVideoAudioInputId() == preferredAudioInputId }
        if (preferredDevice == null) {
            PLog.w(TAG, "Preferred audio input not found, fallback to system routing: $preferredAudioInputId")
            return
        }
        val routed = audioRecord.setPreferredDevice(preferredDevice)
        PLog.i(
            TAG,
            "Apply preferred audio input=${preferredDevice.toVideoAudioInputId()}, type=${preferredDevice.type}, success=$routed"
        )
    }

    private fun createMuxer() {
        val output = VideoMediaStoreWriter.createPendingVideo(
            context = context,
            dateTakenMs = outputDateTakenMs,
            recordingPath = requestedRecordingPath,
            recordingTreeUri = requestedRecordingTreeUri
        ) ?: throw IllegalStateException("Failed to create video output")
        pendingVideoOutput = output
        muxer = MediaMuxer(output.descriptor.fileDescriptor, MediaMuxer.OutputFormat.MUXER_OUTPUT_MPEG_4).apply {
            setOrientationHint(requestedOrientationHintDegrees)
        }
    }

    private fun startAudioLoop() {
        val recorder = audioRecord ?: return
        val encoder = audioEncoder ?: return
        audioRecordJob = scope.launch {
            try {
                if (recorder.recordingState != AudioRecord.RECORDSTATE_RECORDING) {
                    audioFallbackStartTimeNs = SystemClock.elapsedRealtimeNanos()
                    recorder.startRecording()
                }
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to start audio recording loop: ${e.message}")
                return@launch
            }
            val buffer = ByteArray(4096)
            recordingLoop@ while (isRecording && !stopRequested) {
                val read = recorder.read(buffer, 0, buffer.size)
                if (read <= 0) continue
                val frameAlignedRead = read - (read % audioBytesPerFrame())
                if (frameAlignedRead <= 0) continue

                val bytesPerFrame = audioBytesPerFrame()
                val frameCount = frameAlignedRead / bytesPerFrame
                val firstFramePosition = audioFramesRead
                val bufferStartTimeUs = resolveAudioCaptureTimeUs(
                    recorder = recorder,
                    firstFramePosition = firstFramePosition,
                )
                audioFramesRead += frameCount.toLong()
                logFirstAudioCaptureTime(bufferStartTimeUs)

                val activeRanges = resolveActiveAudioFrameRanges(
                    bufferStartTimeUs = bufferStartTimeUs,
                    frameCount = frameCount,
                )
                for (range in activeRanges) {
                    val rangeFrameCount = range.endFrameExclusive - range.startFrame
                    val rangeStartTimeUs = bufferStartTimeUs +
                        audioFramesToDurationUs(range.startFrame.toLong())
                    if (!queueAudioPcm(
                            encoder = encoder,
                            source = buffer,
                            sourceOffset = range.startFrame * bytesPerFrame,
                            byteCount = rangeFrameCount * bytesPerFrame,
                            firstPresentationTimeUs = rangeStartTimeUs,
                        )
                    ) {
                        break@recordingLoop
                    }
                }
            }
            try {
                recorder.stop()
            } catch (_: Exception) {
            }
        }
    }

    private fun queueAudioPcm(
        encoder: MediaCodec,
        source: ByteArray,
        sourceOffset: Int,
        byteCount: Int,
        firstPresentationTimeUs: Long,
    ): Boolean {
        var offset = sourceOffset
        val endOffset = sourceOffset + byteCount
        while (offset < endOffset && isRecording && !stopRequested) {
            val inputIndex = try {
                encoder.dequeueInputBuffer(10_000L)
            } catch (_: IllegalStateException) {
                return false
            }
            if (inputIndex < 0) continue

            val inputBuffer = encoder.getInputBuffer(inputIndex) ?: continue
            inputBuffer.clear()
            val bytesPerFrame = audioBytesPerFrame()
            val maxChunkSize = minOf(endOffset - offset, inputBuffer.remaining())
            val chunkSize = maxChunkSize - (maxChunkSize % bytesPerFrame)
            if (chunkSize <= 0) {
                PLog.w(TAG, "Skip audio chunk because encoder input buffer cannot fit a complete audio frame")
                return true
            }

            inputBuffer.put(source, offset, chunkSize)
            val sourceFrameOffset = (offset - sourceOffset) / bytesPerFrame
            val capturePresentationTimeUs = firstPresentationTimeUs +
                audioFramesToDurationUs(sourceFrameOffset.toLong())
            val presentationTimeUs = if (lastQueuedAudioPresentationTimeUs == UNSET_TIMESTAMP) {
                capturePresentationTimeUs
            } else {
                capturePresentationTimeUs.coerceAtLeast(lastQueuedAudioPresentationTimeUs + 1L)
            }
            try {
                encoder.queueInputBuffer(
                    inputIndex,
                    0,
                    chunkSize,
                    presentationTimeUs,
                    0
                )
            } catch (_: IllegalStateException) {
                return false
            }
            lastQueuedAudioPresentationTimeUs = presentationTimeUs
            audioEndPresentationTimeUs = presentationTimeUs +
                audioFramesToDurationUs((chunkSize / bytesPerFrame).toLong())
            offset += chunkSize
        }
        return true
    }

    private fun resolveAudioCaptureTimeUs(
        recorder: AudioRecord,
        firstFramePosition: Long,
    ): Long {
        val timestamp = AudioTimestamp()
        val timestampAvailable = recorder.getTimestamp(
            timestamp,
            AudioTimestamp.TIMEBASE_BOOTTIME,
        ) == AudioRecord.SUCCESS && timestamp.nanoTime > 0L
        val captureTimeNs = if (timestampAvailable) {
            timestamp.nanoTime + audioFramesToDurationNs(firstFramePosition - timestamp.framePosition)
        } else {
            val fallbackStartNs = audioFallbackStartTimeNs.takeIf { it != UNSET_TIMESTAMP }
                ?: SystemClock.elapsedRealtimeNanos().also { audioFallbackStartTimeNs = it }
            fallbackStartNs + audioFramesToDurationNs(firstFramePosition)
        }
        return captureTimeNs / 1_000L
    }

    private fun logFirstAudioCaptureTime(captureTimeUs: Long) {
        if (firstAudioCaptureTimeUs != UNSET_TIMESTAMP) return
        firstAudioCaptureTimeUs = captureTimeUs
        val originUs = synchronized(timelineLock) { timelineOriginUs }
        val offsetMs = if (originUs == UNSET_TIMESTAMP) {
            "pending-video-origin"
        } else {
            "${(captureTimeUs - originUs) / 1_000f}"
        }
        PLog.i(
            TAG,
            "Audio capture timeline established: firstAudioCaptureUs=$captureTimeUs, " +
                "initialAvOffsetMs=$offsetMs"
        )
    }

    private fun resolveActiveAudioFrameRanges(
        bufferStartTimeUs: Long,
        frameCount: Int,
    ): List<FrameRange> {
        if (frameCount <= 0) return emptyList()
        val bufferEndTimeUs = bufferStartTimeUs + audioFramesToDurationUs(frameCount.toLong())
        val pauses = synchronized(timelineLock) {
            buildList {
                addAll(pauseIntervals)
                if (activePauseStartTimeUs != UNSET_TIMESTAMP) {
                    add(PauseInterval(activePauseStartTimeUs, Long.MAX_VALUE))
                }
            }
        }
        var activeRanges = listOf(FrameRange(0, frameCount))
        for (pause in pauses) {
            if (pause.startTimeUs >= bufferEndTimeUs || pause.endTimeUs <= bufferStartTimeUs) continue
            val pauseStartFrame = audioFrameOffsetAtOrAfter(
                timestampUs = pause.startTimeUs,
                bufferStartTimeUs = bufferStartTimeUs,
                bufferEndTimeUs = bufferEndTimeUs,
                frameCount = frameCount,
            )
            val pauseEndFrame = if (pause.endTimeUs == Long.MAX_VALUE) {
                frameCount
            } else {
                audioFrameOffsetAtOrAfter(
                    timestampUs = pause.endTimeUs,
                    bufferStartTimeUs = bufferStartTimeUs,
                    bufferEndTimeUs = bufferEndTimeUs,
                    frameCount = frameCount,
                )
            }
            activeRanges = activeRanges.flatMap { range ->
                if (pauseEndFrame <= range.startFrame || pauseStartFrame >= range.endFrameExclusive) {
                    listOf(range)
                } else {
                    buildList {
                        if (range.startFrame < pauseStartFrame) {
                            add(FrameRange(range.startFrame, pauseStartFrame))
                        }
                        if (pauseEndFrame < range.endFrameExclusive) {
                            add(FrameRange(pauseEndFrame, range.endFrameExclusive))
                        }
                    }
                }
            }
            if (activeRanges.isEmpty()) break
        }
        return activeRanges
    }

    private fun audioFrameOffsetAtOrAfter(
        timestampUs: Long,
        bufferStartTimeUs: Long,
        bufferEndTimeUs: Long,
        frameCount: Int,
    ): Int {
        if (timestampUs <= bufferStartTimeUs) return 0
        if (timestampUs >= bufferEndTimeUs) return frameCount
        val deltaUs = timestampUs - bufferStartTimeUs
        return ((deltaUs * AUDIO_SAMPLE_RATE + MICROS_PER_SECOND - 1L) / MICROS_PER_SECOND)
            .toInt()
            .coerceIn(0, frameCount)
    }

    private fun audioFramesToDurationUs(frameCount: Long): Long {
        return frameCount * MICROS_PER_SECOND / AUDIO_SAMPLE_RATE
    }

    private fun audioFramesToDurationNs(frameCount: Long): Long {
        return frameCount * NANOS_PER_SECOND / AUDIO_SAMPLE_RATE
    }

    private fun audioBytesPerFrame(): Int {
        return activeAudioConfig.channelCount * AUDIO_BYTES_PER_SAMPLE
    }

    private fun mapCameraTimestampToBoottimeNs(cameraTimestampNs: Long): Long {
        if (requestedCameraTimestampSource == CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_REALTIME) {
            return cameraTimestampNs
        }

        if (cameraTimestampToBoottimeOffsetNs == UNSET_TIMESTAMP) {
            cameraTimestampToBoottimeOffsetNs = SystemClock.elapsedRealtimeNanos() - cameraTimestampNs
            PLog.w(
                TAG,
                "Camera timestamp source is not REALTIME; calibrated to BOOTTIME with " +
                    "offsetNs=$cameraTimestampToBoottimeOffsetNs"
            )
        }
        return cameraTimestampNs + cameraTimestampToBoottimeOffsetNs
    }

    private fun establishTimelineOrigin(firstVideoPresentationTimeUs: Long) {
        val established = synchronized(timelineLock) {
            if (timelineOriginUs != UNSET_TIMESTAMP) {
                false
            } else {
                timelineOriginUs = firstVideoPresentationTimeUs
                true
            }
        }
        if (established) {
            val audioOffsetMs = firstAudioCaptureTimeUs
                .takeIf { it != UNSET_TIMESTAMP }
                ?.let { (it - firstVideoPresentationTimeUs) / 1_000f }
            PLog.i(
                TAG,
                "Recording timeline established: firstVideoCaptureUs=$firstVideoPresentationTimeUs, " +
                    "initialAvOffsetMs=${audioOffsetMs ?: "pending-audio"}"
            )
        }
    }

    private fun drainRealtimeFrames(allowWhenStopping: Boolean) {
        while (true) {
            val hasFrame = synchronized(realtimeFrameLock) {
                if (!pendingRealtimeFrame) {
                    renderLoopRunning = false
                    return
                }
                pendingRealtimeFrame = false
                true
            }

            if (!hasFrame ||
                !isRecording ||
                (stopRequested && !allowWhenStopping) ||
                isPaused
            ) {
                continue
            }

            try {
                val videoRenderer = renderer ?: continue
                val renderStartMs = SystemClock.elapsedRealtime()
                val presentationTimeNs = videoRenderer.renderLatestFrame(
                    mapPresentationTimeNs = ::mapCameraTimestampToBoottimeNs,
                ) ?: continue
                establishTimelineOrigin(presentationTimeNs / 1_000L)
                val renderCostMs = (SystemClock.elapsedRealtime() - renderStartMs).coerceAtLeast(0L)
                statsAcceptedFrames += 1
                statsRenderedFrames += 1
                statsRenderTimeTotalMs += renderCostMs
                if (renderCostMs > statsRenderTimeMaxMs) {
                    statsRenderTimeMaxMs = renderCostMs
                }
                logRenderStatsIfNeeded()
            } catch (e: Exception) {
                val diagnostic = if (e is MediaCodec.CodecException) {
                    "isTransient=${e.isTransient}, isRecoverable=${e.isRecoverable}, errorCode=${e.errorCode}"
                } else ""
                val message = "Failed to render dedicated recording frame. $diagnostic"
                PLog.e(TAG, message, e)
                errorCallback?.invoke(message)
                if (!stopRequested) {
                    forceStop()
                }
                return
            }
        }
    }

    private fun logRenderStatsIfNeeded() {
        val nowMs = SystemClock.elapsedRealtime()
        if (statsWindowStartMs == 0L) {
            statsWindowStartMs = nowMs
            return
        }
        val elapsedMs = nowMs - statsWindowStartMs
        if (elapsedMs < 1000L) return

        val incomingFps = statsIncomingFrames * 1000f / elapsedMs.toFloat()
        val acceptedFps = statsAcceptedFrames * 1000f / elapsedMs.toFloat()
        val renderedFps = statsRenderedFrames * 1000f / elapsedMs.toFloat()
        val avgRenderMs = if (statsRenderedFrames > 0) {
            statsRenderTimeTotalMs.toFloat() / statsRenderedFrames.toFloat()
        } else {
            0f
        }
        PLog.i(
            TAG,
            "Video encoder stats: requested=${requestedFps}, incomingFps=${"%.1f".format(incomingFps)}, " +
                "acceptedFps=${"%.1f".format(acceptedFps)}, renderedFps=${"%.1f".format(renderedFps)}, " +
                "pendingDrops=$statsReplacedPendingFrames, avgRenderMs=${"%.1f".format(avgRenderMs)}, " +
                "maxRenderMs=$statsRenderTimeMaxMs"
        )

        statsWindowStartMs = nowMs
        statsIncomingFrames = 0
        statsAcceptedFrames = 0
        statsReplacedPendingFrames = 0
        statsRenderedFrames = 0
        statsRenderTimeTotalMs = 0L
        statsRenderTimeMaxMs = 0L
    }

    private fun startDrains() {
        videoDrainJob = scope.launch {
            val bufferInfo = MediaCodec.BufferInfo()
            while (isActive) {
                if (!drainVideoEncoderOnce(bufferInfo)) {
                    break
                }
            }
        }

        if (audioEnabled) {
            audioDrainJob = scope.launch {
                val bufferInfo = MediaCodec.BufferInfo()
                while (isActive) {
                    if (!drainAudioEncoderOnce(bufferInfo)) {
                        break
                    }
                }
            }
        }
    }

    private fun drainVideoEncoderOnce(bufferInfo: MediaCodec.BufferInfo): Boolean {
        return synchronized(videoCodecLock) {
            val encoder = videoEncoder ?: return@synchronized false
            val index = try {
                encoder.dequeueOutputBuffer(bufferInfo, 10_000L)
            } catch (_: IllegalStateException) {
                return@synchronized false
            }
            drainEncoderOutput(
                encoder = encoder,
                bufferInfo = bufferInfo,
                index = index,
                isVideo = true
            )
        }
    }

    private fun drainAudioEncoderOnce(bufferInfo: MediaCodec.BufferInfo): Boolean {
        return synchronized(audioCodecLock) {
            val encoder = audioEncoder ?: return@synchronized false
            val index = try {
                encoder.dequeueOutputBuffer(bufferInfo, 10_000L)
            } catch (_: IllegalStateException) {
                return@synchronized false
            }
            drainEncoderOutput(
                encoder = encoder,
                bufferInfo = bufferInfo,
                index = index,
                isVideo = false
            )
        }
    }

    private fun drainEncoderOutput(
        encoder: MediaCodec,
        bufferInfo: MediaCodec.BufferInfo,
        index: Int,
        isVideo: Boolean
    ): Boolean {
        when {
            index == MediaCodec.INFO_OUTPUT_FORMAT_CHANGED -> {
                synchronized(muxerLock) {
                    if (isVideo) {
                        videoFormat = encoder.outputFormat
                    } else {
                        audioFormat = encoder.outputFormat
                    }
                    maybeStartMuxerLocked()
                }
            }
            index >= 0 -> {
                val outputBuffer = try {
                    encoder.getOutputBuffer(index)
                } catch (_: IllegalStateException) {
                    return false
                }
                if (outputBuffer != null && bufferInfo.size > 0) {
                    writeSample(
                        isVideo = isVideo,
                        buffer = outputBuffer,
                        info = bufferInfo
                    )
                }
                val isEos = bufferInfo.flags and MediaCodec.BUFFER_FLAG_END_OF_STREAM != 0
                try {
                    encoder.releaseOutputBuffer(index, false)
                } catch (e: IllegalStateException) {
                    PLog.w(TAG, "Encoder output buffer release skipped during codec state change: ${e.message}")
                    return false
                }
                if (isEos) {
                    return false
                }
            }
        }
        return true
    }

    private fun queueAudioEndOfStream() {
        synchronized(audioCodecLock) {
            val encoder = audioEncoder ?: return
            val inputIndex = try {
                encoder.dequeueInputBuffer(10_000L)
            } catch (_: IllegalStateException) {
                return
            }
            if (inputIndex >= 0) {
                try {
                    val endOfStreamTimeUs = audioEndPresentationTimeUs
                        .takeIf { it != UNSET_TIMESTAMP }
                        ?: SystemClock.elapsedRealtimeNanos() / 1_000L
                    encoder.queueInputBuffer(
                        inputIndex,
                        0,
                        0,
                        endOfStreamTimeUs,
                        MediaCodec.BUFFER_FLAG_END_OF_STREAM
                    )
                } catch (_: IllegalStateException) {
                }
            }
        }
    }

    private fun signalVideoEndOfInputStream() {
        synchronized(videoCodecLock) {
            try {
                videoEncoder?.signalEndOfInputStream()
            } catch (e: IllegalStateException) {
                PLog.w(TAG, "Video encoder EOS signal skipped during codec state change: ${e.message}")
            }
        }
    }

    private fun writeSample(
        isVideo: Boolean,
        buffer: ByteBuffer,
        info: MediaCodec.BufferInfo
    ) {
        if (info.size <= 0 ||
            info.flags and MediaCodec.BUFFER_FLAG_CODEC_CONFIG != 0
        ) {
            return
        }
        synchronized(muxerLock) {
            val timelineReady = synchronized(timelineLock) {
                timelineOriginUs != UNSET_TIMESTAMP
            }
            if (!muxerStarted || !timelineReady) {
                val pending = if (isVideo) pendingVideoSamples else pendingAudioSamples
                pending += copyEncodedSample(buffer = buffer, info = info)
                return
            }

            flushPendingSamplesLocked()
            val sampleBuffer = buffer.duplicate()
            sampleBuffer.position(info.offset)
            sampleBuffer.limit(info.offset + info.size)
            writeEncodedSampleLocked(
                isVideo = isVideo,
                buffer = sampleBuffer.slice(),
                info = info,
            )
        }
    }

    private fun copyEncodedSample(
        buffer: ByteBuffer,
        info: MediaCodec.BufferInfo
    ): EncodedSample {
        val sampleBytes = ByteArray(info.size)
        val duplicate = buffer.duplicate()
        duplicate.position(info.offset)
        duplicate.limit(info.offset + info.size)
        duplicate.get(sampleBytes)
        val copiedInfo = MediaCodec.BufferInfo().apply {
            set(0, info.size, info.presentationTimeUs, info.flags)
        }
        return EncodedSample(
            data = sampleBytes,
            info = copiedInfo,
        )
    }

    private fun normalizeSampleInfo(
        isVideo: Boolean,
        info: MediaCodec.BufferInfo
    ): MediaCodec.BufferInfo? {
        val normalizedSourceTimeUs = synchronized(timelineLock) {
            val originUs = timelineOriginUs
            if (originUs == UNSET_TIMESTAMP || info.presentationTimeUs < originUs) {
                return null
            }
            info.presentationTimeUs - originUs -
                pausedDurationBetweenLocked(originUs, info.presentationTimeUs)
        }
        val lastPresentationTimeUs = if (isVideo) {
            lastMuxedVideoPresentationTimeUs
        } else {
            lastMuxedAudioPresentationTimeUs
        }
        val sanitizedPresentationTimeUs = if (lastPresentationTimeUs == Long.MIN_VALUE) {
            normalizedSourceTimeUs.coerceAtLeast(0L)
        } else {
            normalizedSourceTimeUs.coerceAtLeast(lastPresentationTimeUs + 1L)
        }
        val sanitizedInfo = MediaCodec.BufferInfo().apply {
            set(0, info.size, sanitizedPresentationTimeUs, info.flags)
        }
        if (isVideo) {
            lastMuxedVideoPresentationTimeUs = sanitizedPresentationTimeUs
        } else {
            lastMuxedAudioPresentationTimeUs = sanitizedPresentationTimeUs
        }
        return sanitizedInfo
    }

    private fun pausedDurationBetweenLocked(startTimeUs: Long, endTimeUs: Long): Long {
        if (endTimeUs <= startTimeUs) return 0L
        var pausedDurationUs = 0L
        pauseIntervals.forEach { pause ->
            val overlapStartUs = maxOf(startTimeUs, pause.startTimeUs)
            val overlapEndUs = minOf(endTimeUs, pause.endTimeUs)
            if (overlapEndUs > overlapStartUs) {
                pausedDurationUs += overlapEndUs - overlapStartUs
            }
        }
        val activePauseStartUs = activePauseStartTimeUs
        if (activePauseStartUs != UNSET_TIMESTAMP) {
            val overlapStartUs = maxOf(startTimeUs, activePauseStartUs)
            if (endTimeUs > overlapStartUs) {
                pausedDurationUs += endTimeUs - overlapStartUs
            }
        }
        return pausedDurationUs
    }

    private fun writeEncodedSampleLocked(
        isVideo: Boolean,
        buffer: ByteBuffer,
        info: MediaCodec.BufferInfo,
    ) {
        val trackIndex = if (isVideo) videoTrackIndex else audioTrackIndex
        if (trackIndex < 0) return
        val normalizedInfo = normalizeSampleInfo(isVideo = isVideo, info = info) ?: return
        try {
            muxer?.writeSampleData(trackIndex, buffer, normalizedInfo)
        } catch (e: Exception) {
            PLog.w(TAG, "Video recorder write sample error", e)
        }
    }

    private fun flushPendingSamplesLocked() {
        if (!muxerStarted) return
        val timelineReady = synchronized(timelineLock) {
            timelineOriginUs != UNSET_TIMESTAMP
        }
        if (!timelineReady) return

        pendingVideoSamples.forEach { sample ->
            writeEncodedSampleLocked(
                isVideo = true,
                buffer = ByteBuffer.wrap(sample.data),
                info = sample.info,
            )
        }
        pendingVideoSamples.clear()

        pendingAudioSamples.forEach { sample ->
            writeEncodedSampleLocked(
                isVideo = false,
                buffer = ByteBuffer.wrap(sample.data),
                info = sample.info,
            )
        }
        pendingAudioSamples.clear()
    }

    private fun maybeStartMuxerLocked() {
        if (muxerStarted) return
        val localMuxer = muxer ?: return
        val localVideoFormat = videoFormat ?: return
        val canStartWithAudio = !audioEnabled || audioFormat != null
        if (!canStartWithAudio) return

        videoTrackIndex = localMuxer.addTrack(localVideoFormat)
        if (audioEnabled && audioFormat != null) {
            audioTrackIndex = localMuxer.addTrack(audioFormat!!)
        }
        localMuxer.start()
        muxerStarted = true
        flushPendingSamplesLocked()
    }

    private suspend fun finalizeOutput(): Uri? {
        val output = pendingVideoOutput ?: return null
        var muxerStopSucceeded = false
        synchronized(muxerLock) {
            if (!muxerStarted && videoFormat != null) {
                maybeStartMuxerLocked()
                if (!muxerStarted) {
                    videoTrackIndex = muxer?.addTrack(videoFormat!!) ?: -1
                    muxer?.start()
                    muxerStarted = true
                    flushPendingSamplesLocked()
                }
            }

            flushPendingSamplesLocked()

            try {
                if (muxerStarted) {
                    muxer?.stop()
                    muxerStopSucceeded = true
                }
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to stop muxer cleanly: ${e.message}")
            } finally {
                try {
                    muxer?.release()
                } catch (_: Exception) {
                }
                muxer = null
            }
        }

        try {
            output.descriptor.close()
        } catch (_: Exception) {
        }

        if (!muxerStopSucceeded) {
            VideoMediaStoreWriter.discardPendingVideo(context, output)
            pendingVideoOutput = null
            return null
        }

        val uri = VideoMediaStoreWriter.publishPendingVideo(context, output)
        if (uri == null) {
            VideoMediaStoreWriter.discardPendingVideo(context, output)
        }
        pendingVideoOutput = null
        return uri
    }

    private suspend fun releaseCaptureResources() {
        videoDrainJob?.cancel()
        audioDrainJob?.cancel()
        audioRecordJob?.cancel()
        videoDrainJob?.join()
        audioDrainJob?.join()
        videoDrainJob = null
        audioDrainJob = null
        audioRecordJob = null

        withContext(renderDispatcher) {
            try {
                renderer?.release()
            } catch (_: Exception) {
            }
            renderer = null
            inputSurface?.release()
            inputSurface = null
            synchronized(videoCodecLock) {
                try {
                    videoEncoder?.stop()
                } catch (_: Exception) {
                }
                try {
                    videoEncoder?.release()
                } catch (_: Exception) {
                }
                videoEncoder = null
            }
        }

        try {
            audioRecord?.stop()
        } catch (_: Exception) {
        }
        try {
            audioRecord?.release()
        } catch (_: Exception) {
        }
        audioRecord = null

        synchronized(audioCodecLock) {
            try {
                audioEncoder?.stop()
            } catch (_: Exception) {
            }
            try {
                audioEncoder?.release()
            } catch (_: Exception) {
            }
            audioEncoder = null
        }
    }

    private suspend fun cleanup() {
        releaseCaptureResources()

        resetMuxerState()
        finishCallback = null
        pendingVideoOutput?.let { output ->
            try {
                output.descriptor.close()
            } catch (_: Exception) {
            }
            VideoMediaStoreWriter.discardPendingVideo(context, output)
        }
        pendingVideoOutput = null
        isRecording = false
        stopRequested = false
    }

    private fun resetMuxerState() {
        synchronized(muxerLock) {
            pendingVideoSamples = mutableListOf()
            pendingAudioSamples = mutableListOf()
            videoTrackIndex = -1
            audioTrackIndex = -1
            muxerStarted = false
            videoFormat = null
            audioFormat = null
            audioFramesRead = 0L
            audioFallbackStartTimeNs = UNSET_TIMESTAMP
            firstAudioCaptureTimeUs = UNSET_TIMESTAMP
            lastQueuedAudioPresentationTimeUs = UNSET_TIMESTAMP
            audioEndPresentationTimeUs = UNSET_TIMESTAMP
            activeAudioConfig = monoAudioConfig()
            lastMuxedVideoPresentationTimeUs = Long.MIN_VALUE
            lastMuxedAudioPresentationTimeUs = Long.MIN_VALUE
        }
        synchronized(timelineLock) {
            cameraTimestampToBoottimeOffsetNs = UNSET_TIMESTAMP
            timelineOriginUs = UNSET_TIMESTAMP
            pauseIntervals = mutableListOf()
            activePauseStartTimeUs = UNSET_TIMESTAMP
        }
        synchronized(realtimeFrameLock) {
            pendingRealtimeFrame = false
            renderLoopRunning = false
        }
    }

    private fun cleanupPreparedStart() {
        runBlocking(renderDispatcher) {
            try {
                renderer?.release()
            } catch (_: Exception) {
            }
        }
        renderer = null
        try {
            inputSurface?.release()
        } catch (_: Exception) {
        }
        inputSurface = null
        try {
            videoEncoder?.stop()
        } catch (_: Exception) {
        }
        try {
            videoEncoder?.release()
        } catch (_: Exception) {
        }
        videoEncoder = null
        preparedEncoderColorConfig = null
        try {
            audioRecord?.stop()
        } catch (_: Exception) {
        }
        try {
            audioRecord?.release()
        } catch (_: Exception) {
        }
        audioRecord = null
        try {
            audioEncoder?.stop()
        } catch (_: Exception) {
        }
        try {
            audioEncoder?.release()
        } catch (_: Exception) {
        }
        audioEncoder = null
        pendingVideoOutput?.let { output ->
            try {
                output.descriptor.close()
            } catch (_: Exception) {
            }
            VideoMediaStoreWriter.discardPendingVideo(context, output)
        }
        pendingVideoOutput = null
        try {
            muxer?.release()
        } catch (_: Exception) {
        }
        muxer = null
        isRecording = false
        stopRequested = false
        resetMuxerState()
    }

    fun release() {
        if (isRecording || renderer != null || videoEncoder != null || audioEncoder != null) {
            stopRequested = true
            runBlocking {
                cleanup()
            }
        }
        scope.cancel()
        renderDispatcher.close()
    }
}

private fun Int.align16(): Int {
    return (this / 16 * 16).coerceAtLeast(16)
}

private fun normalizeOrientationHint(degrees: Int): Int {
    val normalized = ((degrees % 360) + 360) % 360
    return (normalized / 90) * 90
}
