package com.hinnka.mycamera.camera

import android.hardware.camera2.CaptureResult
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MultiFrameFocusLockPolicyTest {
    @Test
    fun focusedLockWithStationaryLensIsReady() {
        assertTrue(
            MultiFrameFocusLockPolicy.isReadyForCapture(
                CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED,
                CaptureResult.LENS_STATE_STATIONARY,
            ),
        )
    }

    @Test
    fun failedLockStillStopsScanningAndCanCapture() {
        assertTrue(
            MultiFrameFocusLockPolicy.isReadyForCapture(
                CaptureResult.CONTROL_AF_STATE_NOT_FOCUSED_LOCKED,
                CaptureResult.LENS_STATE_STATIONARY,
            ),
        )
    }

    @Test
    fun terminalAfStateWaitsForLensActuator() {
        assertFalse(
            MultiFrameFocusLockPolicy.isReadyForCapture(
                CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED,
                CaptureResult.LENS_STATE_MOVING,
            ),
        )
    }

    @Test
    fun passiveFocusIsNotAnAfLock() {
        assertFalse(
            MultiFrameFocusLockPolicy.isReadyForCapture(
                CaptureResult.CONTROL_AF_STATE_PASSIVE_FOCUSED,
                CaptureResult.LENS_STATE_STATIONARY,
            ),
        )
    }

    @Test
    fun devicesWithoutLensStateCanUseTerminalAfState() {
        assertTrue(
            MultiFrameFocusLockPolicy.isReadyForCapture(
                CaptureResult.CONTROL_AF_STATE_FOCUSED_LOCKED,
                null,
            ),
        )
    }
}
