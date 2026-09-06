package com.hinnka.mycamera.camera

import android.hardware.camera2.CaptureRequest
import android.hardware.camera2.CaptureResult

/**
 * Defines the result barrier that must be crossed before a multi-frame exposure starts.
 * A terminal AF state alone is insufficient while the lens actuator is still moving.
 */
internal object MultiFrameFocusLockPolicy {
    /** A capture-owned sweep must not wait for an unfinished continuous-picture passive scan. */
    fun triggerMode(afMode: Int, supportsAuto: Boolean): Int {
        val continuous = afMode == CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE ||
            afMode == CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_VIDEO
        return if (continuous && supportsAuto) CaptureRequest.CONTROL_AF_MODE_AUTO else afMode
    }

    /** Ignore in-flight preview results from before this trigger or from a different AF mode. */
    fun isResultFromTrigger(
        triggerFrameNumber: Long?,
        frameNumber: Long,
        triggerMode: Int,
        requestMode: Int?,
        resultMode: Int?,
    ): Boolean {
        return triggerFrameNumber != null && frameNumber >= triggerFrameNumber &&
            requestMode == triggerMode && (resultMode == null || resultMode == triggerMode)
    }

    fun isReadyForCapture(afState: Int?, lensState: Int?): Boolean {
        val afLocked = afState == CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED ||
            afState == CaptureResult.CONTROL_AF_STATE_NOT_FOCUSED_LOCKED
        val lensStationary = lensState == null || lensState == CaptureResult.LENS_STATE_STATIONARY
        return afLocked && lensStationary
    }

    /**
     * Continuous AF has already completed an attempt in either passive terminal state. When the
     * current lens position can be carried into an AF-off still request, another AF trigger only
     * adds shutter lag and can restart focus hunting without improving the captured focus plane.
     */
    fun canFreezeSettledContinuousFocus(
        afMode: Int,
        afState: Int?,
        lensState: Int?,
        focusDistanceDiopters: Float?,
        supportsAfOff: Boolean,
    ): Boolean {
        val continuousAf = afMode == CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE ||
            afMode == CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_VIDEO
        val passiveAttemptFinished = afState == CaptureResult.CONTROL_AF_STATE_PASSIVE_FOCUSED ||
            afState == CaptureResult.CONTROL_AF_STATE_PASSIVE_UNFOCUSED
        val lensStationary = lensState == null || lensState == CaptureResult.LENS_STATE_STATIONARY
        val hasReusableFocusDistance = focusDistanceDiopters != null &&
            focusDistanceDiopters.isFinite() && focusDistanceDiopters >= 0f
        return continuousAf && passiveAttemptFinished && lensStationary &&
            hasReusableFocusDistance && supportsAfOff
    }
}
