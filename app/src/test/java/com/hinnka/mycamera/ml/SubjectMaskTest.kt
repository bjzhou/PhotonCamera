package com.hinnka.mycamera.ml

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SubjectMaskTest {
    @Test
    fun fullImageKeepsClampedBilinearSampling() {
        val mask = SubjectMask(2, 2, floatArrayOf(0f, 1f, 0.5f, 0.75f))
        assertEquals(0f, mask.sample(0f, 0f), 0f)
        assertEquals(0.75f, mask.sample(1f, 1f), 0f)
        assertEquals(0.5625f, mask.sample(0.5f, 0.5f), 0f)
        assertFalse(mask.touchesInteriorCropBoundary())
    }

    @Test
    fun offsetNonSquareCropRetainsEachLocalTexelInImageCoordinates() {
        // A crop from an odd-sized portrait, with different x/y scale and offset.
        val region = SubjectMaskRegion(103f / 1001, 207f / 1503, 807f / 1001, 911f / 1503)
        val values = FloatArray(32 * 32) { if (it % 32 % 2 == 0) 1f else 0f }
        val mask = SubjectMask(32, 32, values, region)
        for (x in 0 until 32) {
            val u = region.left + (x + 0.5f) / 32 * region.width
            val v = region.top + 0.5f * region.height
            assertEquals(values[x], mask.sample(u, v), 1e-5f)
        }
        assertEquals(0f, mask.sample(0.01f, 0.5f), 0f)
        assertEquals(0f, mask.sample(0.99f, 0.5f), 0f)
        assertEquals(0f, mask.sample(0.5f, 0.99f), 0f)
    }

    @Test
    fun internalCropBorderIsTransparentButOriginalImageBorderClamps() {
        val mask = SubjectMask(8, 8, FloatArray(64) { 1f }, SubjectMaskRegion(0f, 0.25f, 0.5f, 0.75f))
        assertEquals(1f, mask.sample(0f, 0.5f), 0f)
        assertEquals(0.5f, mask.sample(0.5f, 0.5f), 1e-6f)
        assertEquals(0f, mask.sample(0.6f, 0.5f), 0f)
        assertEquals(0.5f, mask.sample(0.25f, 0.25f), 1e-6f)
    }

    @Test
    fun onlyForegroundAtAnArtificialCropEdgeRejectsTheCrop() {
        val values = FloatArray(32 * 32)
        values[16 * 32] = 1f // Subject already meets the original image's left edge.
        val region = SubjectMaskRegion(0f, 0.2f, 0.6f, 0.8f)
        val mask = SubjectMask(32, 32, values, region)
        assertFalse(mask.touchesInteriorCropBoundary())
        values[16 * 32 + 30] = 0.7f
        assertTrue(mask.touchesInteriorCropBoundary())
        values[16 * 32 + 30] = 0.2f
        assertFalse(mask.touchesInteriorCropBoundary())
        values[2 * 32 + 16] = 0.8f
        assertTrue(mask.touchesInteriorCropBoundary())
    }
}
