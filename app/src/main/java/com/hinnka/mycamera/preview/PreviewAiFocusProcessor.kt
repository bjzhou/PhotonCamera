package com.hinnka.mycamera.preview

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.data.AiFocusTargetMode
import com.hinnka.mycamera.ml.FaceDetLiteFocusDetector
import com.hinnka.mycamera.ml.SharedFaceDetLiteFocusDetector
import com.hinnka.mycamera.ml.SharedYoloXObjectDetector
import com.hinnka.mycamera.ml.YoloXObjectDetector
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.StartupTrace
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.launch
import kotlin.math.hypot

class PreviewAiFocusProcessor(private val context: Context) {
    companion object {
        private const val TAG = "PreviewAiFocusProcessor"
        private const val MIN_FOCUS_INTERVAL_MS = 60L
        private const val MIN_TARGET_MOVE = 0.025f
        private const val TRACK_KEEP_DISTANCE = 0.22f
        private const val TARGET_LOST_CONFIRM_FRAMES = 3
        private const val FACE_PERSON_BOX_PADDING = 0.12f
        private const val PERSON_PRIORITY = 3
        private const val FACE_REFINEMENT_PRIORITY = 4
        private const val FACE_REFINEMENT_SMOOTHING = 0.65f
        private const val FACE_HOLD_MS = 250L
        private const val FACE_WITH_PERSON_SCORE_THRESHOLD = 0.2f
        private const val PROCESSING_STALE_MS = 2_000L
    }

    data class FocusTarget(
        val x: Float,
        val y: Float,
        val label: String,
        val score: Float,
        val priority: Int,
    )

    private data class FocusCandidate(
        val label: String,
        val score: Float,
        val focusX: Float,
        val focusY: Float,
        val priority: Int,
        val area: Float,
    )

    private val scope = CoroutineScope(Dispatchers.Default + Job())
    @Volatile
    private var isPrewarming = false
    @Volatile
    private var isPrewarmed = false
    @Volatile
    private var isProcessing = false
        set(value) {
            field = value
            onBusyStateChanged?.invoke(value)
        }

    var onBusyStateChanged: ((Boolean) -> Unit)? = null

    fun isBusy(): Boolean {
        return isProcessing
    }
    @Volatile
    private var processingStartTimeMs = 0L
    @Volatile
    var targetMode: AiFocusTargetMode = AiFocusTargetMode.OFF
    @Volatile
    var scoreThreshold: Float = 0.5f
    private var lastFocusTimeMs = 0L
    private var lastFocusX = -1f
    private var lastFocusY = -1f
    private var targetMissingFrames = 0
    private var lastDetectionLogTimeMs = 0L
    private var lastRefinedFaceX = -1f
    private var lastRefinedFaceY = -1f
    private var lastRefinedFaceLabel = ""
    private var heldFaceCandidate: FocusCandidate? = null
    private var heldFaceTimeMs = 0L
    private var lastFaceDetectTimeMs = 0L
    private var lastFaceDetectorUseTimeMs = 0L
    var onFocusTarget: ((FocusTarget) -> Unit)? = null
    var onTargetSeen: ((FocusTarget) -> Unit)? = null
    var onTargetLost: (() -> Unit)? = null

    fun prewarm() {
        if (isPrewarmed || isPrewarming) return
        scope.launch {
            prewarmBlocking()
        }
    }

    suspend fun prewarmBlocking() {
        if (isPrewarmed || isPrewarming) return
        isPrewarming = true
        try {
            StartupTrace.mark("PreviewAiFocusProcessor.prewarm start")
            SharedYoloXObjectDetector.prewarm(context)
            isPrewarmed = true
            StartupTrace.mark("PreviewAiFocusProcessor.prewarm end")
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to prewarm YOLOX object detector", e)
        } finally {
            isPrewarming = false
        }
    }

    fun processBitmap(bitmap: Bitmap) {
        if (targetMode == AiFocusTargetMode.OFF) {
            handleMissingTarget()
            return
        }
        if (isProcessing) {
            val processingElapsedMs = System.currentTimeMillis() - processingStartTimeMs
            if (processingElapsedMs < PROCESSING_STALE_MS) return
            PLog.w(TAG, "AI focus processing stale, resetting: elapsed=${processingElapsedMs}ms")
            isProcessing = false
            processingStartTimeMs = 0L
        }
        if (!isPrewarmed) {
            prewarm()
            return
        }

        isProcessing = true
        processingStartTimeMs = System.currentTimeMillis()
        scope.launch {
            val startTimeMs = System.currentTimeMillis()
            try {
                val detections = SharedYoloXObjectDetector.detect(
                    context = context,
                    bitmap = bitmap,
                    targetMode = targetMode,
                    scoreThreshold = scoreThreshold
                )
                val candidates = buildFocusCandidates(bitmap, detections)
                val target = selectFocusTarget(candidates)
                if (target == null) {
                    handleMissingTarget()
                    return@launch
                }
                targetMissingFrames = 0
                val seenTarget = FocusTarget(
                    x = target.focusX,
                    y = target.focusY,
                    label = target.label,
                    score = target.score,
                    priority = target.priority,
                )
                onTargetSeen?.invoke(seenTarget)
//                logTargetSeen(target, startTimeMs, System.currentTimeMillis() - startTimeMs)
                if (!shouldRefocus(target)) return@launch

                lastFocusTimeMs = System.currentTimeMillis()
                lastFocusX = target.focusX
                lastFocusY = target.focusY
//                PLog.d(
//                    TAG,
//                    "AI focus target: label=${target.label} score=${target.score} x=${target.focusX} y=${target.focusY}"
//                )
                onFocusTarget?.invoke(seenTarget)
            } catch (e: Exception) {
                PLog.e(TAG, "Error processing preview bitmap for AI focus", e)
            } finally {
                isProcessing = false
                processingStartTimeMs = 0L
            }
        }
    }

    fun release() {
        scope.launch {
            SharedYoloXObjectDetector.release()
            SharedFaceDetLiteFocusDetector.release()
        }
    }

    fun resetForPreviewRestart() {
        PLog.d(TAG, "Reset AI focus processor for preview restart")
        isProcessing = false
        processingStartTimeMs = 0L
        isPrewarming = false
        isPrewarmed = false
        targetMissingFrames = 0
        lastFocusX = -1f
        lastFocusY = -1f
        lastFocusTimeMs = 0L
        lastFaceDetectTimeMs = 0L
        lastFaceDetectorUseTimeMs = 0L
        resetFaceRefinementSmoothing()
    }

    private suspend fun buildFocusCandidates(
        bitmap: Bitmap,
        detections: List<YoloXObjectDetector.Detection>,
    ): List<FocusCandidate> {
        val usesFaceDetection = shouldDetectFaceFocus()
        val faceOnlyMode = targetMode == AiFocusTargetMode.FACE
        val candidates = detections
            .filterNot { faceOnlyMode && it.priority == PERSON_PRIORITY }
            .map { it.toFocusCandidate() }
            .toMutableList()
        val personDetections = detections.filter { it.priority == PERSON_PRIORITY }
        if (usesFaceDetection && personDetections.isNotEmpty()) {
            lastFaceDetectTimeMs = System.currentTimeMillis()
            lastFaceDetectorUseTimeMs = lastFaceDetectTimeMs
            val faceFocus = SharedFaceDetLiteFocusDetector.detect(
                context = context,
                bitmap = bitmap,
                minScore = FACE_WITH_PERSON_SCORE_THRESHOLD,
            )
            if (faceFocus != null && faceFocus.isAttachedToPerson(personDetections)) {
                val faceCandidate = faceFocus.toFocusCandidate().smoothedFaceRefinement()
                rememberHeldFaceCandidate(faceCandidate)
                candidates += faceCandidate
            }/* else if (faceFocus != null) {
                PLog.d(
                    TAG,
                    "AI face focus rejected: label=${faceFocus.label} score=${faceFocus.score} x=${faceFocus.x} y=${faceFocus.y}"
                )
            } else {
                PLog.d(TAG, "AI face focus missing: persons=${personDetections.size} threshold=$scoreThreshold")
            }*/
            if (faceFocus == null || !faceFocus.isAttachedToPerson(personDetections)) {
                val heldFace = getHeldFaceCandidate(personDetections)
                heldFace?.let { candidates += it }
            }
        } else {
            clearHeldFaceCandidate()
        }
        return candidates
    }

    private fun shouldDetectFaceFocus(): Boolean {
        return targetMode == AiFocusTargetMode.FACE || targetMode == AiFocusTargetMode.AUTO
    }

    private fun selectFocusTarget(
        candidates: List<FocusCandidate>,
    ): FocusCandidate? {
        if (candidates.isEmpty()) return null

        val hasTrackedTarget = lastFocusX >= 0f && lastFocusY >= 0f
        if (hasTrackedTarget) {
            val trackedPriority = candidates.maxOf { it.priority }
            val trackedCandidates = candidates
                .filter { it.priority == trackedPriority }
                .map { candidate ->
                    val distance = hypot(candidate.focusX - lastFocusX, candidate.focusY - lastFocusY)
                    candidate to distance
                }
                .filter { (_, distance) -> distance <= TRACK_KEEP_DISTANCE }

            if (trackedCandidates.isNotEmpty()) {
                return trackedCandidates.maxWithOrNull(
                    compareBy<Pair<FocusCandidate, Float>> { -it.second }
                        .thenBy { it.first.score }
                        .thenBy { it.first.area }
                )?.first
            }
        }

        return candidates.maxWithOrNull(
            compareBy<FocusCandidate> { it.priority }
                .thenBy { it.score }
                .thenBy { it.area }
        )
    }

    private fun shouldRefocus(target: FocusCandidate): Boolean {
        val now = System.currentTimeMillis()
        if (now - lastFocusTimeMs < MIN_FOCUS_INTERVAL_MS) return false
        if (lastFocusX < 0f || lastFocusY < 0f) return true
        return hypot(target.focusX - lastFocusX, target.focusY - lastFocusY) >= MIN_TARGET_MOVE
    }

    private fun handleMissingTarget() {
        if (lastFocusX < 0f || lastFocusY < 0f) return
        targetMissingFrames++
        if (targetMissingFrames < TARGET_LOST_CONFIRM_FRAMES) return

        PLog.d(TAG, "AI focus target lost: frames=$targetMissingFrames")
        targetMissingFrames = 0
        lastFocusX = -1f
        lastFocusY = -1f
        lastFocusTimeMs = 0L
        resetFaceRefinementSmoothing()
        onTargetLost?.invoke()
    }

    private fun logTargetSeen(target: FocusCandidate, startTimeMs: Long, elapsedMs: Long) {
        val intervalMs = if (lastDetectionLogTimeMs > 0L) startTimeMs - lastDetectionLogTimeMs else 0L
        lastDetectionLogTimeMs = startTimeMs
        PLog.d(
            TAG,
            "AI target seen: label=${target.label} score=${target.score} x=${target.focusX} y=${target.focusY} interval=${intervalMs}ms inference=${elapsedMs}ms"
        )
    }

    private fun YoloXObjectDetector.Detection.toFocusCandidate(): FocusCandidate {
        return FocusCandidate(
            label = label,
            score = score,
            focusX = focusX,
            focusY = focusY,
            priority = priority,
            area = area,
        )
    }

    private fun FaceDetLiteFocusDetector.FaceFocus.toFocusCandidate(): FocusCandidate {
        return FocusCandidate(
            label = label,
            score = score,
            focusX = x,
            focusY = y,
            priority = priority,
            area = 0f,
        )
    }

    private fun FaceDetLiteFocusDetector.FaceFocus.isAttachedToPerson(
        personDetections: List<YoloXObjectDetector.Detection>,
    ): Boolean {
        return personDetections.any { person ->
            x >= (person.left - FACE_PERSON_BOX_PADDING).coerceAtLeast(0f) &&
                x <= (person.right + FACE_PERSON_BOX_PADDING).coerceAtMost(1f) &&
                y >= (person.top - FACE_PERSON_BOX_PADDING).coerceAtLeast(0f) &&
                y <= (person.bottom + FACE_PERSON_BOX_PADDING).coerceAtMost(1f)
        }
    }

    private fun FocusCandidate.smoothedFaceRefinement(): FocusCandidate {
        if (priority < FACE_REFINEMENT_PRIORITY) return this
        if (lastRefinedFaceX < 0f || lastRefinedFaceY < 0f || lastRefinedFaceLabel != label) {
            lastRefinedFaceX = focusX
            lastRefinedFaceY = focusY
            lastRefinedFaceLabel = label
            return this
        }

        val smoothedX = lastRefinedFaceX * FACE_REFINEMENT_SMOOTHING + focusX * (1f - FACE_REFINEMENT_SMOOTHING)
        val smoothedY = lastRefinedFaceY * FACE_REFINEMENT_SMOOTHING + focusY * (1f - FACE_REFINEMENT_SMOOTHING)
        lastRefinedFaceX = smoothedX
        lastRefinedFaceY = smoothedY
        return copy(focusX = smoothedX, focusY = smoothedY)
    }

    private fun resetFaceRefinementSmoothing() {
        lastRefinedFaceX = -1f
        lastRefinedFaceY = -1f
        lastRefinedFaceLabel = ""
        clearHeldFaceCandidate()
    }

    private fun rememberHeldFaceCandidate(candidate: FocusCandidate) {
        heldFaceCandidate = candidate
        heldFaceTimeMs = System.currentTimeMillis()
    }

    private fun getHeldFaceCandidate(
        personDetections: List<YoloXObjectDetector.Detection>,
    ): FocusCandidate? {
        val candidate = heldFaceCandidate ?: return null
        if (System.currentTimeMillis() - heldFaceTimeMs > FACE_HOLD_MS) {
            clearHeldFaceCandidate()
            return null
        }
        return if (candidate.isAttachedToPerson(personDetections)) candidate else null
    }

    private fun FocusCandidate.isAttachedToPerson(
        personDetections: List<YoloXObjectDetector.Detection>,
    ): Boolean {
        return personDetections.any { person ->
            focusX >= (person.left - FACE_PERSON_BOX_PADDING).coerceAtLeast(0f) &&
                focusX <= (person.right + FACE_PERSON_BOX_PADDING).coerceAtMost(1f) &&
                focusY >= (person.top - FACE_PERSON_BOX_PADDING).coerceAtLeast(0f) &&
                focusY <= (person.bottom + FACE_PERSON_BOX_PADDING).coerceAtMost(1f)
        }
    }

    private fun clearHeldFaceCandidate() {
        heldFaceCandidate = null
        heldFaceTimeMs = 0L
    }
}
