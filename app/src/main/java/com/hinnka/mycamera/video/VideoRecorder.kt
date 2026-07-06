package com.hinnka.mycamera.video

import android.Manifest
import android.content.Context
import android.content.pm.PackageManager
import android.media.AudioFormat
import android.media.AudioRecord
import android.media.AudioManager
import android.media.MediaCodec
import android.media.MediaCodecInfo
import android.media.MediaFormat
import android.media.MediaMuxer
import android.media.MediaRecorder
import android.net.Uri
import android.opengl.EGL14
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.view.Surface
import androidx.core.app.ActivityCompat
import com.hinnka.mycamera.livephoto.HardwareLutVideoRenderer
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExecutorCoroutineDispatcher
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.cancel
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
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

    private data class PendingFrame(
        val textureId: Int,
        val transformMatrix: FloatArray,
        val timestampUs: Long,
        val sharedContext: EGLContext,
        val sharedDisplay: EGLDisplay
    )

    private val scope = CoroutineScope(Dispatchers.Default + SupervisorJob())
    private val audioManager = context.getSystemService(AudioManager::class.java)
    private val renderDispatcher: ExecutorCoroutineDispatcher =
        Executors.newSingleThreadExecutor().asCoroutineDispatcher()
    private val muxerLock = Any()
    private val pendingFrameLock = Any()
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
    private var renderer: HardwareLutVideoRenderer? = null
    private var lastSharedContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var lastSharedDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var requestedBitrateMbps: Int = 30
    private var requestedCodecMime: String = MediaFormat.MIMETYPE_VIDEO_AVC
    private var requestedOrientationHintDegrees: Int = 0
    private var requestedFlipEncodedFrame: Boolean = false
    private var requestedRecordingPath: VideoRecordingPath = VideoRecordingPath.DCIM_PHOTON
    private var requestedRecordingTreeUri: String? = null
    private var preferredAudioInputId: String = VIDEO_AUDIO_INPUT_AUTO
    private var requestedColorConfig: VideoEncoderColorRequest = VideoEncoderColorRequest()
    private var preparedEncoderColorConfig: VideoEncoderColorConfig? = null

    private var requestedSize = android.util.Size(1080, 1920)
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
    private var audioBytesQueued = 0L
    private var activeAudioConfig = monoAudioConfig()
    private var lastAcceptedFrameTimestampUs = Long.MIN_VALUE
    private var frameSelectionStartTimestampUs = Long.MIN_VALUE
    private var lastAcceptedFrameSlot = Long.MIN_VALUE
    private var lastEncodedFrameSlot = Long.MIN_VALUE
    private var lastMuxedVideoPresentationTimeUs = Long.MIN_VALUE
    private var lastMuxedAudioPresentationTimeUs = Long.MIN_VALUE
    private var pendingFrame: PendingFrame? = null
    private var totalPausedDurationUs: Long = 0L
    private var pauseStartTimeUs: Long = 0L
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

    val targetSize: android.util.Size?
        get() = requestedSize.takeIf { isRecording }

    fun startRecording(
        size: android.util.Size,
        fps: Int,
        bitrateMbps: Int,
        codecMime: String,
        colorConfig: VideoEncoderColorRequest = VideoEncoderColorRequest(),
        orientationHintDegrees: Int = 0,
        flipEncodedFrame: Boolean = false,
        recordingPath: VideoRecordingPath = VideoRecordingPath.DCIM_PHOTON,
        recordingTreeUri: String? = null,
        onError: ((String) -> Unit)? = null,
        onFinished: ((Uri?) -> Unit)? = null
    ): Boolean {
        if (isRecording) return false

        requestedSize = android.util.Size(size.width.align16(), size.height.align16())
        requestedFps = fps
        requestedBitrateMbps = bitrateMbps
        requestedCodecMime = codecMime
        requestedColorConfig = colorConfig
        requestedOrientationHintDegrees = normalizeOrientationHint(orientationHintDegrees)
        requestedFlipEncodedFrame = flipEncodedFrame
        requestedRecordingPath = recordingPath
        requestedRecordingTreeUri = recordingTreeUri?.takeIf { it.isNotBlank() }
        outputDateTakenMs = System.currentTimeMillis()
        this.errorCallback = onError
        this.finishCallback = onFinished
        resetMuxerState()
        frameSelectionStartTimestampUs = Long.MIN_VALUE
        lastAcceptedFrameSlot = Long.MIN_VALUE
        lastAcceptedFrameTimestampUs = Long.MIN_VALUE
        lastEncodedFrameSlot = Long.MIN_VALUE
        totalPausedDurationUs = 0L
        pauseStartTimeUs = 0L
        isPaused = false
        statsWindowStartMs = 0L
        statsIncomingFrames = 0
        statsAcceptedFrames = 0
        statsReplacedPendingFrames = 0
        statsRenderedFrames = 0
        statsRenderTimeTotalMs = 0L
        statsRenderTimeMaxMs = 0L
        stopRequested = false
        try {
            prepareVideoEncoder()
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
        if (audioEnabled) {
            startAudioLoop()
        }
        PLog.d(
            TAG,
            "Video recording prepared: ${requestedSize.width}x${requestedSize.height} @ " +
                "${requestedFps}fps, orientationHint=$requestedOrientationHintDegrees, " +
                "path=${requestedRecordingPath.name}, uri=${requestedRecordingTreeUri?.take(48)}"
        )
        return true
    }

    fun stopRecording() {
        if (!isRecording || stopRequested) return
        stopRequested = true
        scope.launch {
            try {
                audioRecordJob?.join()
                withContext(renderDispatcher) {
                    drainPendingFrames()
                    signalVideoEndOfInputStream()
                }
                queueAudioEndOfStream()
                videoDrainJob?.join()
                audioDrainJob?.join()

                val publishedUri = finalizeOutput()
                finishCallback?.invoke(publishedUri)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to stop recording cleanly", e)
                finishCallback?.invoke(null)
            } finally {
                cleanup()
            }
        }
    }

    fun forceStop() {
        if (!isRecording) return
        stopRequested = true
        scope.launch {
            errorCallback?.invoke("Recording stopped unexpectedly")
            finishCallback?.invoke(null)
            cleanup()
        }
    }

    fun pauseRecording() {
        if (!isRecording || isPaused || stopRequested) return
        isPaused = true
        pauseStartTimeUs = android.os.SystemClock.elapsedRealtimeNanos() / 1000
        PLog.d(TAG, "Video recording paused")
    }

    fun resumeRecording() {
        if (!isRecording || !isPaused || stopRequested) return
        val nowUs = android.os.SystemClock.elapsedRealtimeNanos() / 1000
        totalPausedDurationUs += (nowUs - pauseStartTimeUs).coerceAtLeast(0L)
        isPaused = false
        PLog.d(TAG, "Video recording resumed")
    }

    fun onPreviewFrame(
        textureId: Int,
        transformMatrix: FloatArray,
        timestampNs: Long,
        sharedContext: EGLContext,
        sharedDisplay: EGLDisplay
    ) {
        if (!isRecording || stopRequested || isPaused) return
        if (textureId == 0 || sharedContext == EGL14.EGL_NO_CONTEXT) return

        val frameTimestampUs = timestampNs / 1000
        statsIncomingFrames += 1
        if (!shouldEncodeFrame(frameTimestampUs)) return
        statsAcceptedFrames += 1

        synchronized(pendingFrameLock) {
            if (pendingFrame != null) {
                statsReplacedPendingFrames += 1
            }
            pendingFrame = PendingFrame(
                textureId = textureId,
                transformMatrix = transformMatrix.clone(),
                timestampUs = frameTimestampUs,
                sharedContext = sharedContext,
                sharedDisplay = sharedDisplay
            )
            if (!renderLoopRunning) {
                renderLoopRunning = true
                scope.launch(renderDispatcher) {
                    drainPendingFrames()
                }
            }
        }
    }

    fun isRecording(): Boolean = isRecording && !stopRequested

    fun setPreferredAudioInputId(audioInputId: String) {
        preferredAudioInputId = audioInputId.ifBlank { VIDEO_AUDIO_INPUT_AUTO }
    }

    private fun initEncoders(sharedContext: EGLContext, sharedDisplay: EGLDisplay) {
        val width = requestedSize.width
        val height = requestedSize.height
        if (videoEncoder == null) {
            prepareVideoEncoder()
        }
        val encoderSurface = inputSurface ?: throw IllegalStateException("Video encoder input surface is not prepared")
        val encoderColorConfig = preparedEncoderColorConfig ?: VideoEncoderColorConfig.sdrDisplay()
        renderer = HardwareLutVideoRenderer(
            width = width,
            height = height,
            lutConfig = null,
            colorRecipeParams = null,
            encoderColorConfig = encoderColorConfig
        ).apply {
            initialize(encoderSurface, sharedContext, sharedDisplay)
        }

        lastSharedContext = sharedContext
        lastSharedDisplay = sharedDisplay
        PLog.d(TAG, "Video renderer initialized: ${width}x${height} @ ${requestedFps}fps")
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
                    recorder.startRecording()
                }
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to start audio recording loop: ${e.message}")
                return@launch
            }
            val buffer = ByteArray(4096)
            while (isRecording && !stopRequested) {
                if (isPaused) {
                    delay(10)
                    continue
                }
                val read = recorder.read(buffer, 0, buffer.size)
                if (read <= 0) continue
                val frameAlignedRead = read - (read % audioBytesPerFrame())
                if (frameAlignedRead <= 0) continue
                if (!queueAudioPcm(encoder, buffer, frameAlignedRead)) {
                    break
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
        byteCount: Int
    ): Boolean {
        var offset = 0
        while (offset < byteCount && isRecording && !stopRequested) {
            val inputIndex = try {
                encoder.dequeueInputBuffer(10_000L)
            } catch (_: IllegalStateException) {
                return false
            }
            if (inputIndex < 0) continue

            val inputBuffer = encoder.getInputBuffer(inputIndex) ?: continue
            inputBuffer.clear()
            val bytesPerFrame = audioBytesPerFrame()
            val maxChunkSize = minOf(byteCount - offset, inputBuffer.remaining())
            val chunkSize = maxChunkSize - (maxChunkSize % bytesPerFrame)
            if (chunkSize <= 0) {
                PLog.w(TAG, "Skip audio chunk because encoder input buffer cannot fit a complete audio frame")
                return true
            }

            inputBuffer.put(source, offset, chunkSize)
            val presentationTimeUs = audioBytesToPresentationTimeUs(audioBytesQueued)
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
            audioBytesQueued += chunkSize.toLong()
            offset += chunkSize
        }
        return true
    }

    private fun audioBytesToPresentationTimeUs(byteCount: Long): Long {
        val frames = byteCount / audioBytesPerFrame()
        return frames * 1_000_000L / AUDIO_SAMPLE_RATE
    }

    private fun audioBytesPerFrame(): Int {
        return activeAudioConfig.channelCount * AUDIO_BYTES_PER_SAMPLE
    }

    private fun presentationTimeForSlot(slot: Long): Long {
        val fps = requestedFps.coerceAtLeast(1)
        return (slot.coerceAtLeast(0L) * 1_000_000L) / fps.toLong()
    }

    private fun shouldEncodeFrame(timestampUs: Long): Boolean {
        if (timestampUs <= 0L) return false
        if (lastAcceptedFrameTimestampUs != Long.MIN_VALUE && timestampUs <= lastAcceptedFrameTimestampUs) {
            return false
        }

        val fps = requestedFps.coerceAtLeast(1)
        if (frameSelectionStartTimestampUs == Long.MIN_VALUE) {
            frameSelectionStartTimestampUs = timestampUs
            lastAcceptedFrameSlot = 0L
            lastAcceptedFrameTimestampUs = timestampUs
            return true
        }

        val elapsedUs = (timestampUs - frameSelectionStartTimestampUs - totalPausedDurationUs).coerceAtLeast(0L)
        val slot = (elapsedUs * fps.toLong()) / 1_000_000L
        if (slot <= lastAcceptedFrameSlot) {
            return false
        }

        lastAcceptedFrameSlot = slot
        lastAcceptedFrameTimestampUs = timestampUs
        return true
    }

    private fun drainPendingFrames() {
        while (true) {
            var frame = synchronized(pendingFrameLock) {
                val nextFrame = pendingFrame
                if (nextFrame == null) {
                    renderLoopRunning = false
                    return
                }
                pendingFrame = null
                nextFrame
            }

            if (!isRecording || stopRequested) {
                continue
            }

            try {
                if (renderer == null) {
                    try {
                        initEncoders(frame.sharedContext, frame.sharedDisplay)
                    } catch (e: Exception) {
                        val diagnostic = if (e is MediaCodec.CodecException) {
                            "isTransient=${e.isTransient}, isRecoverable=${e.isRecoverable}, errorCode=${e.errorCode}"
                        } else ""
                        val errorMessage = "Failed to initialize encoders: ${e.localizedMessage ?: "Unknown error"}. $diagnostic"
                        PLog.e(TAG, errorMessage, e)
                        errorCallback?.invoke(errorMessage)
                        forceStop()
                        return
                    }
                }
                val videoRenderer = renderer ?: continue
                val frameSlot = lastAcceptedFrameSlot.takeIf { it != Long.MIN_VALUE } ?: 0L
                if (lastEncodedFrameSlot != Long.MIN_VALUE && frameSlot <= lastEncodedFrameSlot) {
                    continue
                }
                val presentationTimeUs = presentationTimeForSlot(frameSlot)
                val renderStartMs = android.os.SystemClock.elapsedRealtime()
                videoRenderer.renderFrame(
                    textureId = frame.textureId,
                    stMatrix = frame.transformMatrix,
                    timestampUs = presentationTimeUs,
                    mirrorHorizontally = requestedFlipEncodedFrame && requestedOrientationHintDegrees % 180 == 0,
                    mirrorVertically = requestedFlipEncodedFrame && requestedOrientationHintDegrees % 180 != 0
                )
                val renderCostMs = (android.os.SystemClock.elapsedRealtime() - renderStartMs).coerceAtLeast(0L)
                statsRenderedFrames += 1
                statsRenderTimeTotalMs += renderCostMs
                if (renderCostMs > statsRenderTimeMaxMs) {
                    statsRenderTimeMaxMs = renderCostMs
                }
                lastEncodedFrameSlot = frameSlot
                // logRenderStatsIfNeeded()
            } catch (e: Exception) {
                val diagnostic = if (e is MediaCodec.CodecException) {
                    "isTransient=${e.isTransient}, isRecoverable=${e.isRecoverable}, errorCode=${e.errorCode}"
                } else ""
                PLog.e(TAG, "Failed to render frame to encoder. $diagnostic", e)
            }
        }
    }

    private fun logRenderStatsIfNeeded() {
        val nowMs = android.os.SystemClock.elapsedRealtime()
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
                    encoder.queueInputBuffer(
                        inputIndex,
                        0,
                        0,
                        audioBytesToPresentationTimeUs(audioBytesQueued),
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
        synchronized(muxerLock) {
            if (!muxerStarted) {
                val pending = if (isVideo) pendingVideoSamples else pendingAudioSamples
                pending += copyEncodedSample(isVideo = isVideo, buffer = buffer, info = info)
                return
            }

            val trackIndex = if (isVideo) videoTrackIndex else audioTrackIndex
            if (trackIndex >= 0) {
                val sanitizedInfo = sanitizeSampleInfo(isVideo = isVideo, info = info)
                if (sanitizedInfo.size > 0 && sanitizedInfo.flags and MediaCodec.BUFFER_FLAG_CODEC_CONFIG == 0) {
                    val sampleBuffer = buffer.duplicate()
                    sampleBuffer.position(info.offset)
                    sampleBuffer.limit(info.offset + info.size)
                    try {
                        muxer?.writeSampleData(trackIndex, sampleBuffer.slice(), sanitizedInfo)
                    } catch (e: Exception) {
                        PLog.w(TAG, "video recorder write sample error", e)
                    }
                }
            }
        }
    }

    private fun copyEncodedSample(
        isVideo: Boolean,
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
            info = sanitizeSampleInfo(isVideo = isVideo, info = copiedInfo)
        )
    }

    private fun sanitizeSampleInfo(
        isVideo: Boolean,
        info: MediaCodec.BufferInfo
    ): MediaCodec.BufferInfo {
        val lastPresentationTimeUs = if (isVideo) {
            lastMuxedVideoPresentationTimeUs
        } else {
            lastMuxedAudioPresentationTimeUs
        }
        val sanitizedPresentationTimeUs = if (lastPresentationTimeUs == Long.MIN_VALUE) {
            info.presentationTimeUs.coerceAtLeast(0L)
        } else {
            info.presentationTimeUs.coerceAtLeast(lastPresentationTimeUs + 1L)
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

        pendingVideoSamples.forEach { sample ->
            localMuxer.writeSampleData(videoTrackIndex, ByteBuffer.wrap(sample.data), sample.info)
        }
        pendingVideoSamples.clear()

        if (audioTrackIndex >= 0) {
            pendingAudioSamples.forEach { sample ->
                localMuxer.writeSampleData(audioTrackIndex, ByteBuffer.wrap(sample.data), sample.info)
            }
        }
        pendingAudioSamples.clear()
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
                    pendingVideoSamples.forEach { sample ->
                        muxer?.writeSampleData(videoTrackIndex, ByteBuffer.wrap(sample.data), sample.info)
                    }
                    pendingVideoSamples.clear()
                }
            }

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
        pendingVideoOutput = null

        if (!muxerStopSucceeded) {
            VideoMediaStoreWriter.discardPendingVideo(context, output)
            return null
        }

        val uri = VideoMediaStoreWriter.publishPendingVideo(context, output)
        if (uri == null) {
            VideoMediaStoreWriter.discardPendingVideo(context, output)
        }
        return uri
    }

    private suspend fun cleanup() {
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

        resetMuxerState()
        finishCallback = null
        lastSharedContext = EGL14.EGL_NO_CONTEXT
        lastSharedDisplay = EGL14.EGL_NO_DISPLAY
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
            audioBytesQueued = 0L
            activeAudioConfig = monoAudioConfig()
            lastAcceptedFrameTimestampUs = Long.MIN_VALUE
            lastEncodedFrameSlot = Long.MIN_VALUE
            lastMuxedVideoPresentationTimeUs = Long.MIN_VALUE
            lastMuxedAudioPresentationTimeUs = Long.MIN_VALUE
        }
        synchronized(pendingFrameLock) {
            pendingFrame = null
            renderLoopRunning = false
        }
    }

    private fun cleanupPreparedStart() {
        try {
            renderer?.release()
        } catch (_: Exception) {
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
        forceStop()
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
