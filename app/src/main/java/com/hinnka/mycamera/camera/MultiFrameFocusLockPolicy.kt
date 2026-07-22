package com.hinnka.mycamera.camera

import android.hardware.camera2.CaptureResult

/**
 * Defines the result barrier that must be crossed before a multi-frame exposure starts.
 * A terminal AF state alone is insufficient while the lens actuator is still moving.
 */
internal object MultiFrameFocusLockPolicy {
    fun isReadyForCapture(afState: Int?, lensState: Int?): Boolean {
        val afLocked = afState == CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED ||
            afState == CaptureResult.CONTROL_AF_STATE_NOT_FOCUSED_LOCKED
        val lensStationary = lensState == null || lensState == CaptureResult.LENS_STATE_STATIONARY
        return afLocked && lensStationary
    }
}
