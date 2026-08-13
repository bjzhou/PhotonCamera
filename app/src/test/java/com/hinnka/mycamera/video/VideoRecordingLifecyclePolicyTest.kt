package com.hinnka.mycamera.video

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class VideoRecordingLifecyclePolicyTest {

    @Test
    fun cameraInputIsAttachedOnlyWhileActivelyRecording() {
        assertTrue(VideoRecordingState(isRecording = true).shouldAttachCameraInput())
        assertFalse(
            VideoRecordingState(isRecording = true, isPaused = true).shouldAttachCameraInput()
        )
        assertFalse(VideoRecordingState(isProcessing = true).shouldAttachCameraInput())
        assertFalse(VideoRecordingState().shouldAttachCameraInput())
    }
}
