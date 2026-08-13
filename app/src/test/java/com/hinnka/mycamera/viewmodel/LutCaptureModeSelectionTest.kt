package com.hinnka.mycamera.viewmodel

import com.hinnka.mycamera.video.CaptureMode
import org.junit.Assert.assertEquals
import org.junit.Test

class LutCaptureModeSelectionTest {
    @Test
    fun sharedSelectionUsesPhotoLutInEveryCaptureMode() {
        CaptureMode.entries.forEach { mode ->
            assertEquals(
                "photo",
                resolveLutIdForCaptureMode(
                    photoLutId = "photo",
                    videoLutId = "video",
                    separateVideoLutEnabled = false,
                    captureMode = mode,
                    defaultLutId = "default",
                ),
            )
        }
    }

    @Test
    fun separatedSelectionOnlyUsesVideoLutInVideoMode() {
        assertEquals(
            "video",
            resolveLutIdForCaptureMode(
                photoLutId = "photo",
                videoLutId = "video",
                separateVideoLutEnabled = true,
                captureMode = CaptureMode.VIDEO,
                defaultLutId = "default",
            ),
        )
        assertEquals(
            "photo",
            resolveLutIdForCaptureMode(
                photoLutId = "photo",
                videoLutId = "video",
                separateVideoLutEnabled = true,
                captureMode = CaptureMode.PHOTO,
                defaultLutId = "default",
            ),
        )
        assertEquals(
            "photo",
            resolveLutIdForCaptureMode(
                photoLutId = "photo",
                videoLutId = "video",
                separateVideoLutEnabled = true,
                captureMode = CaptureMode.QUICK_SHOT,
                defaultLutId = "default",
            ),
        )
    }

    @Test
    fun missingSelectionsFallBackFromVideoToPhotoThenDefault() {
        assertEquals(
            "photo",
            resolveLutIdForCaptureMode(
                photoLutId = "photo",
                videoLutId = null,
                separateVideoLutEnabled = true,
                captureMode = CaptureMode.VIDEO,
                defaultLutId = "default",
            ),
        )
        assertEquals(
            "default",
            resolveLutIdForCaptureMode(
                photoLutId = null,
                videoLutId = null,
                separateVideoLutEnabled = true,
                captureMode = CaptureMode.VIDEO,
                defaultLutId = "default",
            ),
        )
    }
}
