package com.hinnka.mycamera.preview

import android.content.Context
import android.graphics.Bitmap
import android.os.SystemClock
import com.google.mediapipe.framework.image.BitmapImageBuilder
import com.google.mediapipe.framework.image.MPImage
import com.google.mediapipe.tasks.core.BaseOptions
import com.google.mediapipe.tasks.core.Delegate
import com.google.mediapipe.tasks.vision.core.RunningMode
import com.google.mediapipe.tasks.vision.facedetector.FaceDetector
import com.google.mediapipe.tasks.vision.facedetector.FaceDetectorResult
import com.hinnka.mycamera.utils.PLog
import java.io.Closeable
import java.util.concurrent.ExecutorService
import java.util.concurrent.Executors
import java.util.concurrent.RejectedExecutionException
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicInteger
import kotlin.math.hypot

class PreviewEyeFocusProcessor(context: Context) : Closeable {

    data class EyeTarget(
        val x: Float,
        val y: Float,
        val confidence: Float,
    )

    private data class FaceCandidate(
        val faceCenterX: Float,
        val faceCenterY: Float,
        val area: Float,
        val confidence: Float,
        val leftEyeX: Float,
        val leftEyeY: Float,
        val rightEyeX: Float,
        val rightEyeY: Float,
    )

    companion object {
        private const val TAG = "PreviewEyeFocus"
        private const val MODEL_ASSET = "blaze_face_full_range.tflite"
        private const val MIN_DETECTION_CONFIDENCE = 0.5f
        private const val REQUIRED_STABLE_RESULTS = 2
        private const val TARGET_LOST_RESULT_COUNT = 4
        private const val FACE_CONTINUITY_DISTANCE = 0.22f
        private const val EYE_DISCONTINUITY_DISTANCE = 0.18f
        private const val POSITION_SMOOTHING_ALPHA = 0.42f
    }

    private val appContext = context.applicationContext
    private val stateLock = Any()
    private val inferenceExecutor: ExecutorService = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "MediaPipeEyeFocus").apply {
            priority = Thread.NORM_PRIORITY - 1
        }
    }
    private val frameInFlight = AtomicBoolean(false)
    private val released = AtomicBoolean(false)
    private val trackingGeneration = AtomicInteger(0)

    @Volatile
    private var activeSampleStartedAtNanos = 0L
    @Volatile
    private var activeCaptureDurationNanos = 0L
    @Volatile
    private var activeProcessingStartedAtNanos = 0L

    private var faceDetector: FaceDetector? = null
    private var detectorInitializationFailed = false
    private var lastTimestampMs = 0L
    private var pendingImage: MPImage? = null
    private var pendingBitmap: Bitmap? = null
    private var pendingGeneration = 0

    private var lastFaceCenterX: Float? = null
    private var lastFaceCenterY: Float? = null
    private var smoothedEyeX: Float? = null
    private var smoothedEyeY: Float? = null
    private var stableResultCount = 0
    private var missingResultCount = 0
    private var targetLostNotified = true

    var onEyeTarget: ((EyeTarget) -> Unit)? = null
    var onTargetLost: (() -> Unit)? = null
    var onBusyStateChanged: ((Boolean) -> Unit)? = null
    var onFrameProcessed: ((EyeFocusProcessingTiming) -> Unit)? = null
    var onInitializationError: ((Throwable) -> Unit)? = null
    var onError: ((Throwable) -> Unit)? = null

    fun prewarm() {
        if (released.get()) return
        try {
            inferenceExecutor.execute {
                if (!released.get()) {
                    getOrCreateDetector()
                }
            }
        } catch (_: RejectedExecutionException) {
            // The processor is being released.
        }
    }

    fun processFrame(frame: EyeFocusPreviewFrame): Boolean {
        if (released.get() || detectorInitializationFailed || !frameInFlight.compareAndSet(false, true)) {
            return false
        }

        activeSampleStartedAtNanos = frame.sampleStartedAtNanos
        activeCaptureDurationNanos = frame.captureDurationNanos
        activeProcessingStartedAtNanos = SystemClock.elapsedRealtimeNanos()
        val generation = trackingGeneration.get()
        onBusyStateChanged?.invoke(true)
        try {
            inferenceExecutor.execute {
                submitBitmap(frame.bitmap, generation)
            }
            return true
        } catch (error: RejectedExecutionException) {
            finishFrame()
            return false
        }
    }

    fun resetTracking() {
        trackingGeneration.incrementAndGet()
        synchronized(stateLock) {
            resetTrackingStateLocked()
        }
    }

    private fun submitBitmap(bitmap: Bitmap, generation: Int) {
        if (released.get()) {
            bitmap.recycle()
            finishFrame()
            return
        }

        val detector = getOrCreateDetector()
        if (detector == null) {
            bitmap.recycle()
            finishFrame()
            return
        }

        var preparedBitmap: Bitmap? = null
        var mpImage: MPImage? = null
        try {
            preparedBitmap = if (bitmap.config == Bitmap.Config.ARGB_8888) {
                bitmap
            } else {
                val converted = bitmap.copy(Bitmap.Config.ARGB_8888, false)
                    ?: throw IllegalStateException("Unable to convert eye-focus input bitmap")
                bitmap.recycle()
                converted
            }
            mpImage = BitmapImageBuilder(preparedBitmap).build()
        } catch (error: RuntimeException) {
            mpImage?.close()
            preparedBitmap?.takeUnless { it.isRecycled }?.recycle()
            if (!bitmap.isRecycled) bitmap.recycle()
            onError?.invoke(error)
            finishFrame()
            return
        }
        val submittedBitmap = checkNotNull(preparedBitmap)
        val submittedImage = checkNotNull(mpImage)
        val timestampMs = synchronized(stateLock) {
            val now = SystemClock.uptimeMillis()
            lastTimestampMs = maxOf(now, lastTimestampMs + 1L)
            pendingImage = submittedImage
            pendingBitmap = submittedBitmap
            pendingGeneration = generation
            lastTimestampMs
        }

        try {
            detector.detectAsync(submittedImage, timestampMs)
        } catch (error: RuntimeException) {
            cleanupPendingInput()
            onError?.invoke(error)
            finishFrame()
        }
    }

    private fun getOrCreateDetector(): FaceDetector? {
        faceDetector?.let { return it }
        if (detectorInitializationFailed || released.get()) return null

        return try {
            val baseOptions = BaseOptions.builder()
                .setDelegate(Delegate.CPU)
                .setModelAssetPath(MODEL_ASSET)
                .build()
            val options = FaceDetector.FaceDetectorOptions.builder()
                .setBaseOptions(baseOptions)
                .setMinDetectionConfidence(MIN_DETECTION_CONFIDENCE)
                .setRunningMode(RunningMode.LIVE_STREAM)
                .setResultListener(::handleResult)
                .setErrorListener(::handleError)
                .build()
            FaceDetector.createFromOptions(appContext, options).also {
                faceDetector = it
                PLog.d(TAG, "MediaPipe face detector initialized")
            }
        } catch (error: RuntimeException) {
            detectorInitializationFailed = true
            PLog.e(TAG, "Failed to initialize MediaPipe face detector", error)
            onInitializationError?.invoke(error)
            null
        }
    }

    private fun handleResult(result: FaceDetectorResult, input: MPImage) {
        val inputWidth = input.width
        val inputHeight = input.height
        val generation: Int
        val target: EyeTarget?
        var targetLost = false
        synchronized(stateLock) {
            generation = pendingGeneration
            cleanupPendingInputLocked()
            if (generation != trackingGeneration.get() || released.get()) {
                target = null
            } else {
                val candidate = selectCandidateLocked(result, inputWidth, inputHeight)
                if (candidate == null) {
                    missingResultCount++
                    if (missingResultCount >= TARGET_LOST_RESULT_COUNT && !targetLostNotified) {
                        targetLostNotified = true
                        targetLost = true
                        resetSelectedTargetLocked()
                    }
                    target = null
                } else {
                    missingResultCount = 0
                    targetLostNotified = false
                    target = stabilizeCandidateLocked(candidate)
                }
            }
        }

        finishFrame()
        target?.let { onEyeTarget?.invoke(it) }
        if (targetLost) onTargetLost?.invoke()
    }

    private fun handleError(error: RuntimeException) {
        cleanupPendingInput()
        PLog.e(TAG, "MediaPipe eye focus inference failed", error)
        onError?.invoke(error)
        finishFrame()
    }

    private fun selectCandidateLocked(
        result: FaceDetectorResult,
        inputWidth: Int,
        inputHeight: Int,
    ): FaceCandidate? {
        if (inputWidth <= 0 || inputHeight <= 0) return null
        val previousFaceX = lastFaceCenterX
        val previousFaceY = lastFaceCenterY

        return result.detections().mapNotNull { detection ->
            val keypoints = detection.keypoints().orElse(null) ?: return@mapNotNull null
            if (keypoints.size < 2) return@mapNotNull null
            val leftEye = keypoints[0]
            val rightEye = keypoints[1]
            val eyeCoordinates = floatArrayOf(
                leftEye.x(), leftEye.y(), rightEye.x(), rightEye.y()
            )
            if (eyeCoordinates.any { !it.isFinite() || it !in 0f..1f }) return@mapNotNull null

            val box = detection.boundingBox()
            val centerX = (box.centerX() / inputWidth).coerceIn(0f, 1f)
            val centerY = (box.centerY() / inputHeight).coerceIn(0f, 1f)
            val area = ((box.width() * box.height()) / (inputWidth.toFloat() * inputHeight))
                .coerceAtLeast(0f)
            val confidence = detection.categories().firstOrNull()?.score() ?: 0f
            FaceCandidate(
                faceCenterX = centerX,
                faceCenterY = centerY,
                area = area,
                confidence = confidence,
                leftEyeX = eyeCoordinates[0],
                leftEyeY = eyeCoordinates[1],
                rightEyeX = eyeCoordinates[2],
                rightEyeY = eyeCoordinates[3],
            )
        }.maxByOrNull { candidate ->
            val centerDistance = distance(candidate.faceCenterX, candidate.faceCenterY, 0.5f, 0.5f)
            val centerWeight = 1f - (centerDistance / 0.71f).coerceIn(0f, 1f) * 0.2f
            val confidenceWeight = 0.75f + candidate.confidence.coerceIn(0f, 1f) * 0.25f
            val continuityWeight = if (
                previousFaceX != null && previousFaceY != null &&
                distance(candidate.faceCenterX, candidate.faceCenterY, previousFaceX, previousFaceY) <=
                FACE_CONTINUITY_DISTANCE
            ) {
                1.8f
            } else {
                1f
            }
            candidate.area * centerWeight * confidenceWeight * continuityWeight
        }
    }

    private fun stabilizeCandidateLocked(candidate: FaceCandidate): EyeTarget? {
        val previousFaceX = lastFaceCenterX
        val previousFaceY = lastFaceCenterY
        val sameFace = previousFaceX != null && previousFaceY != null &&
            distance(candidate.faceCenterX, candidate.faceCenterY, previousFaceX, previousFaceY) <=
            FACE_CONTINUITY_DISTANCE

        val referenceX = if (sameFace) smoothedEyeX ?: 0.5f else 0.5f
        val referenceY = if (sameFace) smoothedEyeY ?: 0.5f else 0.5f
        val leftDistance = distance(candidate.leftEyeX, candidate.leftEyeY, referenceX, referenceY)
        val rightDistance = distance(candidate.rightEyeX, candidate.rightEyeY, referenceX, referenceY)
        val rawEyeX = if (leftDistance <= rightDistance) candidate.leftEyeX else candidate.rightEyeX
        val rawEyeY = if (leftDistance <= rightDistance) candidate.leftEyeY else candidate.rightEyeY

        val previousEyeX = smoothedEyeX
        val previousEyeY = smoothedEyeY
        val eyeDiscontinuous = !sameFace || previousEyeX == null || previousEyeY == null ||
            distance(rawEyeX, rawEyeY, previousEyeX, previousEyeY) > EYE_DISCONTINUITY_DISTANCE
        if (eyeDiscontinuous) {
            smoothedEyeX = rawEyeX
            smoothedEyeY = rawEyeY
            stableResultCount = 1
        } else {
            smoothedEyeX = previousEyeX + (rawEyeX - previousEyeX) * POSITION_SMOOTHING_ALPHA
            smoothedEyeY = previousEyeY + (rawEyeY - previousEyeY) * POSITION_SMOOTHING_ALPHA
            stableResultCount++
        }
        lastFaceCenterX = candidate.faceCenterX
        lastFaceCenterY = candidate.faceCenterY

        if (stableResultCount < REQUIRED_STABLE_RESULTS) return null
        return EyeTarget(
            x = smoothedEyeX?.coerceIn(0f, 1f) ?: return null,
            y = smoothedEyeY?.coerceIn(0f, 1f) ?: return null,
            confidence = candidate.confidence,
        )
    }

    private fun finishFrame() {
        val completedAtNanos = SystemClock.elapsedRealtimeNanos()
        val sampleStartedAtNanos = activeSampleStartedAtNanos
        val processingStartedAtNanos = activeProcessingStartedAtNanos
        val captureDurationNanos = activeCaptureDurationNanos
        activeSampleStartedAtNanos = 0L
        activeCaptureDurationNanos = 0L
        activeProcessingStartedAtNanos = 0L
        frameInFlight.set(false)
        if (sampleStartedAtNanos > 0L && processingStartedAtNanos > 0L) {
            onFrameProcessed?.invoke(
                EyeFocusProcessingTiming(
                    captureDurationNanos = captureDurationNanos.coerceAtLeast(0L),
                    processingDurationNanos =
                        (completedAtNanos - processingStartedAtNanos).coerceAtLeast(0L),
                    endToEndDurationNanos =
                        (completedAtNanos - sampleStartedAtNanos).coerceAtLeast(0L),
                )
            )
        }
        onBusyStateChanged?.invoke(false)
    }

    private fun cleanupPendingInput() {
        synchronized(stateLock) {
            cleanupPendingInputLocked()
        }
    }

    private fun cleanupPendingInputLocked() {
        pendingImage?.close()
        pendingImage = null
        pendingBitmap?.recycle()
        pendingBitmap = null
    }

    private fun resetTrackingStateLocked() {
        missingResultCount = 0
        targetLostNotified = true
        resetSelectedTargetLocked()
    }

    private fun resetSelectedTargetLocked() {
        lastFaceCenterX = null
        lastFaceCenterY = null
        smoothedEyeX = null
        smoothedEyeY = null
        stableResultCount = 0
    }

    override fun close() {
        if (!released.compareAndSet(false, true)) return
        trackingGeneration.incrementAndGet()
        try {
            inferenceExecutor.execute {
                faceDetector?.close()
                faceDetector = null
                cleanupPendingInput()
                frameInFlight.set(false)
            }
        } catch (_: RejectedExecutionException) {
            faceDetector?.close()
            faceDetector = null
            cleanupPendingInput()
            frameInFlight.set(false)
        } finally {
            inferenceExecutor.shutdown()
        }
    }

    private fun distance(x1: Float, y1: Float, x2: Float, y2: Float): Float =
        hypot(x1 - x2, y1 - y2)
}
