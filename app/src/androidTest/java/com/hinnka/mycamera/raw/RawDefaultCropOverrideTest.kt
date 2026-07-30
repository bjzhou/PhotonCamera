package com.hinnka.mycamera.raw

import android.graphics.Rect
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class RawDefaultCropOverrideTest {
    @Test
    fun stackedIszPgtmUsesTheSameBoundsAsSubsequentRawRendering() {
        val blackBorderDefaultCrop =
            RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
                width = 6118,
                height = 4594,
                rotation = 90,
                rawBlackBorderCrop = RawBlackBorderCrop(leftPx = 750),
                metadataDefaultCrop = Rect(0, 0, 6118, 4594),
            )

        assertEquals(Rect(0, 0, 6118, 3844), blackBorderDefaultCrop)
        assertEquals(
            Rect(497, 0, 5621, 3844),
            RawDefaultCropOverride.resolveOutputSourceBounds(
                width = 6118,
                height = 4594,
                aspectRatio = AspectRatio.RATIO_4_3,
                userCrop = Rect(0, 0, 6118, 4594),
                metadataDefaultCrop = blackBorderDefaultCrop,
            ),
        )
    }
}
