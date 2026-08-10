package com.hinnka.mycamera.raw

import android.graphics.Rect
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.camera.IszLensConfig
import com.hinnka.mycamera.camera.RawBlackBorderCrop
import org.junit.Assert.assertEquals
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class RawDefaultCropOverrideTest {
    @Test
    fun portraitSettingsConvertToSensorEdgesForEverySensorOrientation() {
        val portraitCrop = RawBlackBorderCrop(
            leftPx = 10,
            topPx = 20,
            rightPx = 30,
            bottomPx = 40,
        )
        val expectedSensorCrop = mapOf(
            0 to RawBlackBorderCrop(10, 20, 30, 40),
            90 to RawBlackBorderCrop(20, 30, 40, 10),
            180 to RawBlackBorderCrop(30, 40, 10, 20),
            270 to RawBlackBorderCrop(40, 10, 20, 30),
        )

        expectedSensorCrop.forEach { (sensorRotation, expected) ->
            val sensorCrop = IszLensConfig.portraitCropToSensor(
                portraitCrop = portraitCrop,
                sensorRotation = sensorRotation,
            )
            assertEquals(expected, sensorCrop)
            assertEquals(
                portraitCrop,
                IszLensConfig.sensorCropToPortrait(sensorCrop, sensorRotation),
            )
        }
    }

    @Test
    fun sensorMarginsAreUsedDirectlyByRawCrop() {
        val sensorMargins = RawBlackBorderCrop(
            leftPx = 10,
            topPx = 20,
            rightPx = 30,
            bottomPx = 40,
        )

        assertEquals(
            Rect(10, 20, 970, 760),
            RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
                width = 1000,
                height = 800,
                rawBlackBorderCrop = sensorMargins,
                metadataDefaultCrop = Rect(0, 0, 1000, 800),
            ),
        )
    }

    @Test
    fun stackedIszPgtmUsesTheSameBoundsAsSubsequentRawRendering() {
        val blackBorderDefaultCrop =
            RawDefaultCropOverride.resolveRawBlackBorderDefaultCrop(
                width = 6118,
                height = 4594,
                rawBlackBorderCrop = RawBlackBorderCrop(bottomPx = 750),
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
