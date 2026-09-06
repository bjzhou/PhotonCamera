package com.hinnka.mycamera.camera

import android.hardware.camera2.CaptureRequest
import android.hardware.camera2.CaptureResult
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class MultiFrameFocusLockPolicyTest {
    @Test
    fun unfinishedContinuousFocusUsesAnExplicitAutoSweep() {
        for (mode in intArrayOf(
            CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE,
            CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_VIDEO,
        )) {
            assertEquals(CaptureRequest.CONTROL_AF_MODE_AUTO,
                MultiFrameFocusLockPolicy.triggerMode(mode, supportsAuto = true))
        }
    }

    @Test
    fun explicitFocusModeAndDeviceCapabilitiesArePreserved() {
        assertEquals(CaptureRequest.CONTROL_AF_MODE_MACRO,
            MultiFrameFocusLockPolicy.triggerMode(CaptureRequest.CONTROL_AF_MODE_MACRO, supportsAuto = true))
        assertEquals(CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE,
            MultiFrameFocusLockPolicy.triggerMode(CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE, supportsAuto = false))
    }

    @Test
    fun oldLockedPreviewResultsCannotCompleteANewTrigger() {
        val auto = CaptureRequest.CONTROL_AF_MODE_AUTO
        val continuous = CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE
        assertFalse(MultiFrameFocusLockPolicy.isResultFromTrigger(null, 337, auto, auto, auto))
        assertFalse(MultiFrameFocusLockPolicy.isResultFromTrigger(340, 339, auto, auto, auto))
        assertFalse(MultiFrameFocusLockPolicy.isResultFromTrigger(340, 341, auto, continuous, continuous))
        assertFalse(MultiFrameFocusLockPolicy.isResultFromTrigger(340, 341, auto, auto, continuous))
    }

    @Test
    fun triggerAndFollowingResultsCanReportAnImmediateLock() {
        val auto = CaptureRequest.CONTROL_AF_MODE_AUTO
        assertTrue(MultiFrameFocusLockPolicy.isResultFromTrigger(340, 340, auto, auto, auto))
        assertTrue(MultiFrameFocusLockPolicy.isResultFromTrigger(340, 341, auto, auto, auto))
        // Optional result metadata can be absent; the submitted request must still match.
        assertTrue(MultiFrameFocusLockPolicy.isResultFromTrigger(340, 341, auto, auto, null))
    }

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

    @Test
    fun settledPassiveUnfocusedCanBeFrozenInsteadOfRetriggered() {
        assertTrue(
            MultiFrameFocusLockPolicy.canFreezeSettledContinuousFocus(
                afMode = CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE,
                afState = CaptureResult.CONTROL_AF_STATE_PASSIVE_UNFOCUSED,
                lensState = CaptureResult.LENS_STATE_STATIONARY,
                focusDistanceDiopters = 7.181988f,
                supportsAfOff = true,
            ),
        )
    }

    @Test
    fun settledPassiveFocusedCanBeFrozenInsteadOfRetriggered() {
        assertTrue(
            MultiFrameFocusLockPolicy.canFreezeSettledContinuousFocus(
                afMode = CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_VIDEO,
                afState = CaptureResult.CONTROL_AF_STATE_PASSIVE_FOCUSED,
                lensState = null,
                focusDistanceDiopters = 0f,
                supportsAfOff = true,
            ),
        )
    }

    @Test
    fun passiveScanMustStillWaitForFocus() {
        assertFalse(
            MultiFrameFocusLockPolicy.canFreezeSettledContinuousFocus(
                afMode = CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE,
                afState = CaptureResult.CONTROL_AF_STATE_PASSIVE_SCAN,
                lensState = CaptureResult.LENS_STATE_STATIONARY,
                focusDistanceDiopters = 7.181988f,
                supportsAfOff = true,
            ),
        )
    }

    @Test
    fun settledContinuousFocusNeedsReusableManualFocusControl() {
        assertFalse(
            MultiFrameFocusLockPolicy.canFreezeSettledContinuousFocus(
                afMode = CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE,
                afState = CaptureResult.CONTROL_AF_STATE_PASSIVE_UNFOCUSED,
                lensState = CaptureResult.LENS_STATE_STATIONARY,
                focusDistanceDiopters = 7.181988f,
                supportsAfOff = false,
            ),
        )
        assertFalse(
            MultiFrameFocusLockPolicy.canFreezeSettledContinuousFocus(
                afMode = CaptureRequest.CONTROL_AF_MODE_CONTINUOUS_PICTURE,
                afState = CaptureResult.CONTROL_AF_STATE_PASSIVE_UNFOCUSED,
                lensState = CaptureResult.LENS_STATE_STATIONARY,
                focusDistanceDiopters = null,
                supportsAfOff = true,
            ),
        )
    }
}
