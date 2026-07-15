package com.hinnka.mycamera.raw

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Test

class DngSdkProfileRgbTransformTest {
    @Test
    fun cameraWhiteAndRimmClampMatchBaselineAbcToRgbOrder() {
        val rgb = DngSdkProfileRgbTransform.fromCameraRgb(
            red = 0.9f,
            green = 0.9f,
            blue = 0.9f,
            colorCorrectionMatrix = floatArrayOf(
                3f, 0f, 0f,
                0f, 1f, 0f,
                0f, 0f, 2f,
            ),
            cameraWhite = floatArrayOf(0.5f, 1f, 0.75f),
        )

        assertArrayEquals(floatArrayOf(1f, 0.9f, 1f), rgb, 1e-6f)
    }

    @Test
    fun neutralOverrangeIsClampedBeforeCompressivePgtmGain() {
        val rgb = DngSdkProfileRgbTransform.fromCameraRgb(
            red = 1f,
            green = 1f,
            blue = 1f,
            colorCorrectionMatrix = floatArrayOf(
                1.35f, 0f, 0f,
                0f, 0.96f, 0f,
                0f, 0f, 1.28f,
            ),
        )
        val gain = 0.45f
        val output = FloatArray(3) { index -> rgb[index] * gain }

        assertArrayEquals(floatArrayOf(0.45f, 0.432f, 0.45f), output, 1e-6f)
    }

    @Test
    fun identityHueSatMapKeepsProfileRgbUnchanged() {
        val identityMap = DcpHueSatMap(
            hueDivisions = 1,
            satDivisions = 1,
            valueDivisions = 1,
            values = floatArrayOf(0f, 1f, 1f),
        )
        val rgb = DngSdkProfileRgbTransform.fromCameraRgb(
            red = 0.72f,
            green = 0.41f,
            blue = 0.18f,
            colorCorrectionMatrix = IDENTITY_MATRIX,
            hueSatMap = identityMap,
        )

        assertArrayEquals(floatArrayOf(0.72f, 0.41f, 0.18f), rgb, 1e-5f)
    }

    @Test
    fun srgbEncodedTwoPointFiveDimensionalMapKeepsValueLinearUntilScale() {
        val map = DcpHueSatMap(
            hueDivisions = 1,
            satDivisions = 1,
            valueDivisions = 1,
            values = floatArrayOf(0f, 1f, 0.5f),
            encoding = DcpHueSatMap.ENCODING_SRGB,
        )
        val rgb = DngSdkProfileRgbTransform.fromCameraRgb(
            red = 0.8f,
            green = 0.4f,
            blue = 0.2f,
            colorCorrectionMatrix = IDENTITY_MATRIX,
            hueSatMap = map,
        )
        val sdkDecodedValue = srgbToLinear(0.4f)

        assertArrayEquals(
            floatArrayOf(sdkDecodedValue, sdkDecodedValue * 0.5f, sdkDecodedValue * 0.25f),
            rgb,
            1e-5f,
        )
    }

    @Test
    fun baselineExposureScalesOnlyClampedFiveWeightInput() {
        val input = DngHdrProfileGainTableGenerator.sceneInputFromLinearRgb(
            red = 2f,
            green = 3f,
            blue = 4f,
            baselineGain = 2f,
            colorCorrectionMatrix = IDENTITY_MATRIX,
        )

        assertEquals(2f, input, 1e-6f)
    }

    private companion object {
        val IDENTITY_MATRIX = floatArrayOf(
            1f, 0f, 0f,
            0f, 1f, 0f,
            0f, 0f, 1f,
        )

        fun srgbToLinear(value: Float): Float = if (value <= 0.04045f) {
            value / 12.92f
        } else {
            Math.pow(((value + 0.055f) / 1.055f).toDouble(), 2.4).toFloat()
        }
    }
}
