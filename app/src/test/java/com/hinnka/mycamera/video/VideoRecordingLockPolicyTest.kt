package com.hinnka.mycamera.video

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class VideoRecordingLockPolicyTest {
    @Test
    fun lensLockOnlyActivatesDuringVideoRecording() {
        val config = VideoConfig(lensLockEnabled = true)

        assertFalse(config.shouldLockLens(CaptureMode.VIDEO, isRecording = false))
        assertFalse(config.shouldLockLens(CaptureMode.PHOTO, isRecording = true))
        assertTrue(config.shouldLockLens(CaptureMode.VIDEO, isRecording = true))
    }

    @Test
    fun whiteBalanceLockOnlyActivatesDuringVideoRecording() {
        val config = VideoConfig(whiteBalanceLockEnabled = true)

        assertFalse(config.shouldLockWhiteBalance(CaptureMode.VIDEO, isRecording = false))
        assertFalse(config.shouldLockWhiteBalance(CaptureMode.PHOTO, isRecording = true))
        assertTrue(config.shouldLockWhiteBalance(CaptureMode.VIDEO, isRecording = true))
    }

    @Test
    fun disabledLocksRemainInactiveDuringRecording() {
        val config = VideoConfig()

        assertFalse(config.shouldLockLens(CaptureMode.VIDEO, isRecording = true))
        assertFalse(config.shouldLockWhiteBalance(CaptureMode.VIDEO, isRecording = true))
    }
}
