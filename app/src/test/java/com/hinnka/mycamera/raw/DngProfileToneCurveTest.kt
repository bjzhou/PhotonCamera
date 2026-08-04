package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class DngProfileToneCurveTest {
    @Test
    fun photonPgtmFormulaIsMonotonicAndRetainsToneShape() {
        val points = DngProfileToneCurve.photonPgtmToneCurvePoints()
        assertEquals(257 * 2, points.size)
        assertEquals(0f, points[0], 0f)
        assertEquals(0f, points[1], 0f)
        assertEquals(1f, points[points.lastIndex - 1], 0f)
        assertEquals(1f, points.last(), 0f)

        var previousX = -1f
        var previousY = -1f
        for (index in points.indices step 2) {
            val x = points[index]
            val y = points[index + 1]
            assertTrue("x must increase at point ${index / 2}", x > previousX)
            assertTrue("y must increase at point ${index / 2}", y > previousY)
            assertTrue("y must stay normalized at point ${index / 2}", y in 0f..1f)
            previousX = x
            previousY = y
        }

        assertEquals(0.000008f, outputAt(points, 1f / 256f), 0.000004f)
        assertEquals(0.0053f, outputAt(points, 0.03125f), 0.001f)
        assertEquals(0.483f, outputAt(points, 0.5f), 0.01f)
        assertEquals(0.900f, outputAt(points, 0.875f), 0.01f)
        assertTrue(outputAt(points, 0.125f) < 0.125f)
        assertTrue(outputAt(points, 0.75f) > 0.75f)
    }

    @Test
    fun jpegSrgbInverseSCurveIsMonotonicAndControllable() {
        val strength = DngProfileToneCurve.DEFAULT_JPEG_SRGB_INVERSE_S_STRENGTH
        val lut = DngProfileToneCurve.jpegSrgbInverseSCurveLut(
            sampleCount = 4097,
            strength = strength,
        )
        assertEquals(0f, lut.first(), 0f)
        assertEquals(0.5f, lut[lut.lastIndex / 2], 0f)
        assertEquals(1f, lut.last(), 0f)

        var previous = -1f
        lut.forEachIndexed { index, value ->
            assertTrue("curve must be finite at $index", value.isFinite())
            assertTrue("curve must stay normalized at $index", value in 0f..1f)
            assertTrue("curve must be strictly monotonic at $index", value > previous)
            previous = value
        }

        assertTrue(sampleLut(lut, 0.25f) > 0.25f)
        assertTrue(sampleLut(lut, 0.75f) < 0.75f)
        assertEquals(
            0.25f,
            DngProfileToneCurve.applyJpegSrgbInverseSCurve(0.25f, 0f),
            0f,
        )
        assertEquals(
            0.34375f,
            DngProfileToneCurve.applyJpegSrgbInverseSCurve(0.25f, 1f),
            0f,
        )
        assertEquals(
            DngProfileToneCurve.applyJpegSrgbInverseSCurve(0.25f, strength),
            sampleLut(lut, 0.25f),
            1e-7f,
        )
    }

    private fun outputAt(points: FloatArray, input: Float): Float {
        val pointIndex = (input * 256f).toInt()
        assertEquals(input, points[pointIndex * 2], 1e-7f)
        return points[pointIndex * 2 + 1]
    }

    private fun sampleLut(lut: FloatArray, input: Float): Float {
        val position = input.coerceIn(0f, 1f) * lut.lastIndex
        val lowerIndex = position.toInt()
        val upperIndex = (lowerIndex + 1).coerceAtMost(lut.lastIndex)
        return lut[lowerIndex] +
            (lut[upperIndex] - lut[lowerIndex]) * (position - lowerIndex)
    }
}
