package com.hinnka.mycamera.raw

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class DngSourceColorMetadataTest {
    @Test
    fun asShotNeutralReplacesStaleCaptureWhiteAndCalibrationTogether() {
        val source = RawCameraCalibration(
            colorMatrix1 = floatArrayOf(
                0.8f, 0.1f, 0.05f,
                0.1f, 0.9f, 0.05f,
                0.02f, 0.1f, 0.7f,
            ),
            colorMatrix2 = null,
            calibrationIlluminant1 = 21,
            cameraCalibration1 = floatArrayOf(
                1.1f, 0f, 0f,
                0f, 1f, 0f,
                0f, 0f, 0.9f,
            ),
        )
        val profile = source.toDcpProfile()
        val stale = metadata().copy(
            whitePointXy = floatArrayOf(0.44757f, 0.40745f),
            colorTemperature = 2856f,
            cameraWhite = floatArrayOf(1f, 1f, 1f),
            cameraCalibration = RawCameraCalibration(
                colorMatrix1 = source.colorMatrix1,
                colorMatrix2 = null,
                calibrationIlluminant1 = 21,
            ),
        )
        val resolved = requireNotNull(
            DngSdkColorSpec.resolveSourceMetadata(profile, stale, ColorSpace.ProPhoto),
        )
        val reopened = requireNotNull(
            DngSdkColorSpec.resolveSourceMetadata(profile, metadata(), ColorSpace.ProPhoto),
        )

        assertArrayEquals(reopened.whitePointXy!!, resolved.whitePointXy!!, 0f)
        assertEquals(reopened.colorTemperature, resolved.colorTemperature)
        assertArrayEquals(reopened.cameraWhite, resolved.cameraWhite, 0f)
        assertArrayEquals(reopened.colorCorrectionMatrix, resolved.colorCorrectionMatrix, 0f)
        assertEquals(source, resolved.cameraCalibration)
        assertTrue(kotlin.math.abs(resolved.colorTemperature!! - stale.colorTemperature!!) > 1f)
        // A calibrated neutral must still map to the working-space white.
        val neutral = FloatArray(3) { row ->
            (0..2).sumOf { column ->
                (resolved.colorCorrectionMatrix[row * 3 + column] *
                    resolved.cameraWhite[column]).toDouble()
            }.toFloat()
        }
        assertArrayEquals(floatArrayOf(1f, 1f, 1f), neutral, 0.002f)
        assertEquals(stale.baselineExposure, resolved.baselineExposure, 0f)
        assertArrayEquals(stale.whiteBalanceGains, resolved.whiteBalanceGains, 0f)
    }

    private fun metadata() = RawMetadata(
        width = 16,
        height = 16,
        cfaPattern = RawMetadata.CFA_RGGB,
        blackLevel = FloatArray(4),
        whiteLevel = 4095f,
        whiteBalanceGains = floatArrayOf(2f, 1f, 1f, 1.5f),
        colorCorrectionMatrix = FloatArray(9),
        baselineExposure = 0.5f,
    )
}
