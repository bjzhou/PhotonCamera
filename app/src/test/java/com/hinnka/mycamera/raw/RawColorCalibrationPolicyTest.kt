package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class RawColorCalibrationPolicyTest {
    // Row directions of the generated sRGB placeholders, with per-row gains as a HAL
    // or DNG writer would apply them.
    private val placeholderCm1 = scaleRows(
        floatArrayOf(
            0.894898f, -0.424503f, -0.137677f,
            -0.458929f, 0.888255f, 0.019676f,
            0.051609f, -0.189234f, 0.980575f,
        ),
        1.21f, 0.93f, 1.07f,
    )
    private val placeholderCm2 = scaleRows(
        floatArrayOf(
            0.813831f, -0.563242f, -0.142960f,
            -0.441178f, 0.897414f, -0.003170f,
            0.046917f, -0.110280f, 0.992793f,
        ),
        1.1f, 0.97f, 1.02f,
    )
    private val sensorCm1 = floatArrayOf(
        0.8295f, -0.3055f, -0.0624f,
        -0.4277f, 1.2820f, 0.1581f,
        -0.1698f, 0.3265f, 0.5168f,
    )
    private val sensorCm2 = floatArrayOf(
        0.9054f, -0.4137f, 0.0305f,
        -0.3584f, 1.1733f, 0.2087f,
        -0.0847f, 0.2213f, 0.5807f,
    )
    private val sensorFm1 = floatArrayOf(
        0.6484f, 0.2266f, 0.0898f,
        0.2578f, 0.7969f, -0.0547f,
        0.0234f, -0.1563f, 0.9570f,
    )
    private val sensorFm2 = floatArrayOf(
        0.6016f, 0.2813f, 0.0820f,
        0.2109f, 0.8828f, -0.0938f,
        0.0156f, -0.2422f, 1.0508f,
    )

    @Test
    fun placeholderMatricesAreRecognized() {
        assertTrue(SrgbColorMatrixPolicy.isPlaceholder(placeholderCm1, 21))
        assertTrue(SrgbColorMatrixPolicy.isPlaceholder(placeholderCm2, 17))
        assertFalse(SrgbColorMatrixPolicy.isPlaceholder(sensorCm1, 21))
        assertFalse(SrgbColorMatrixPolicy.isPlaceholder(sensorCm2, 17))
    }

    // GitHub issue #85: 1.28.5 dropped placeholder ColorMatrices but kept the
    // ForwardMatrices, so the exported DNG had ForwardMatrix without ColorMatrix1.
    @Test
    fun usableForwardMatrixKeepsPlaceholderColorMatrices() {
        val selection = select(placeholderCm1, placeholderCm2, sensorFm1, sensorFm2)

        assertTrue(selection!!.useForward)
        assertTrue(selection.keepSlot2)
        assertFalse(selection.placeholderColor)
    }

    // A placeholder must not be replaced by another sensor's calibration.
    @Test
    fun placeholderColorMatricesAreKeptWithoutForwardMatrix() {
        val selection = select(placeholderCm1, placeholderCm2, null, null)

        assertFalse(selection!!.useForward)
        assertTrue(selection.keepSlot2)
        assertTrue(selection.placeholderColor)
    }

    @Test
    fun placeholderSecondSlotIsDroppedNextToRealFirstSlot() {
        val selection = select(sensorCm1, placeholderCm2, null, null)

        assertFalse(selection!!.useForward)
        assertFalse(selection.keepSlot2)
        assertFalse(selection.placeholderColor)
    }

    @Test
    fun unusableForwardMatrixFallsBackToColorMatrix() {
        val negativeRow = sensorFm1.copyOf().also { it[6] = -1f; it[7] = -0.5f; it[8] = 0.2f }
        val selection = select(sensorCm1, sensorCm2, negativeRow, sensorFm2)

        assertFalse(selection!!.useForward)
        assertTrue(selection.keepSlot2)
        assertTrue(selection.droppedForward)
    }

    @Test
    fun missingColorMatrix1HasNoSourceSelection() {
        assertNull(select(null, sensorCm2, sensorFm1, sensorFm2))
        assertNull(select(FloatArray(9), sensorCm2, null, null))
    }

    @Test
    fun srgbFallbackMapsD65WhiteToUnitCameraWhite() {
        val d65 = floatArrayOf(0.3127f / 0.3290f, 1f, (1f - 0.3127f - 0.3290f) / 0.3290f)
        val m = RawColorCalibrationPolicy.SRGB_D65_COLOR_MATRIX
        for (row in 0..2) {
            val value = (0..2).sumOf { m[row * 3 + it].toDouble() * d65[it] }
            assertEquals(1.0, value, 2e-3)
        }
        assertTrue(SrgbColorMatrixPolicy.isPlaceholder(m, 21))
    }

    private fun select(
        cm1: FloatArray?, cm2: FloatArray?, fm1: FloatArray?, fm2: FloatArray?,
    ) = RawColorCalibrationPolicy.select(cm1, cm2, 21, 17, fm1, fm2)

    private fun scaleRows(matrix: FloatArray, vararg gains: Float) =
        FloatArray(9) { matrix[it] * gains[it / 3] }
}
