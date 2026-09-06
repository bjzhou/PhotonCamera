package com.hinnka.mycamera.ml

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class DepthSubjectCropPlannerTest {
    @Test
    fun smallSubjectGetsSquareContextFromOriginalPixels() {
        val result = DepthSubjectCropPlanner.plan(
            depthWithRectangles(100, 80, Rect(40, 30, 60, 50)), 4000, 3200,
        )

        assertEquals("depth_guided_crop", result.reason)
        assertEquals(DepthSubjectCropPlanner.Crop(1360, 960, 2640, 2240), result.crop)
        assertEquals(0.05f, result.foregroundFraction, 0.00001f)
        assertEquals(2.5f, result.linearGain, 0.00001f)
        assertEquals(result.crop.width, result.crop.height)
    }

    @Test
    fun depthPolarityDoesNotChangeGeometry() {
        val depth = depthWithRectangles(97, 73, Rect(29, 21, 51, 44)).let { base ->
            RelativeDepthMap(base.width, base.height, FloatArray(base.values.size) { index ->
                base.values[index] + (index % 5) * 0.004f
            })
        }
        val reversed = RelativeDepthMap(depth.width, depth.height, FloatArray(depth.values.size) {
            1f - depth.values[it]
        })

        val normalPlan = DepthSubjectCropPlanner.plan(depth, 4032, 3024)
        val reversedPlan = DepthSubjectCropPlanner.plan(reversed, 4032, 3024)

        assertEquals("depth_guided_crop", normalPlan.reason)
        assertEquals(normalPlan.crop, reversedPlan.crop)
        assertEquals(normalPlan.foregroundFraction, reversedPlan.foregroundFraction, 0f)
    }

    @Test
    fun flatDepthAndPerspectiveRampKeepWholeFrame() {
        assertFullFrame(RelativeDepthMap(100, 80, FloatArray(8000) { 0.5f }))
        assertFullFrame(RelativeDepthMap(100, 80, FloatArray(8000) { (it % 100) / 99f }))
        assertFullFrame(depthWithRectangles(
            100, 80, Rect(40, 30, 60, 50), background = 0.45f, foreground = 0.55f,
        ))
    }

    @Test
    fun largeSubjectKeepsWholeFrame() {
        assertFullFrame(depthWithRectangles(100, 80, Rect(10, 8, 90, 72)))
    }

    @Test
    fun retainsSmallerSecondSubjectInUnionCrop() {
        val result = DepthSubjectCropPlanner.plan(
            depthWithRectangles(100, 80, Rect(30, 28, 44, 48), Rect(60, 36, 66, 42)),
            4000, 3200,
        )

        assertEquals("depth_guided_crop", result.reason)
        assertTrue(result.crop.left < 30 * 40)
        assertTrue(result.crop.right > 66 * 40)
        assertTrue(result.crop.top < 28 * 40)
        assertTrue(result.crop.bottom > 48 * 40)
        assertEquals((14 * 20 + 6 * 6) / 8000f, result.foregroundFraction, 0.00001f)
    }

    @Test
    fun edgeSubjectShiftsCropWithoutClippingItsPixels() {
        val result = DepthSubjectCropPlanner.plan(
            depthWithRectangles(100, 80, Rect(0, 30, 8, 40)), 4000, 3200,
        )

        assertEquals("depth_guided_crop", result.reason)
        assertEquals(0, result.crop.left)
        assertTrue(result.crop.right > 8 * 40)
        assertTrue(result.crop.top < 30 * 40)
        assertTrue(result.crop.bottom > 40 * 40)
        assertEquals(result.crop.width, result.crop.height)
    }

    @Test
    fun portraitAndLandscapeMappingPreservePhysicalBounds() {
        val landscape = DepthSubjectCropPlanner.plan(
            depthWithRectangles(120, 60, Rect(48, 22, 66, 36)), 4800, 2400,
        )
        val portrait = DepthSubjectCropPlanner.plan(
            depthWithRectangles(60, 120, Rect(22, 48, 36, 66)), 2400, 4800,
        )

        assertEquals("depth_guided_crop", landscape.reason)
        assertEquals("depth_guided_crop", portrait.reason)
        assertEquals(landscape.crop.left, portrait.crop.top)
        assertEquals(landscape.crop.top, portrait.crop.left)
        assertEquals(landscape.crop.right, portrait.crop.bottom)
        assertEquals(landscape.crop.bottom, portrait.crop.right)
        assertTrue(landscape.crop.left >= 0 && landscape.crop.right <= 4800)
        assertTrue(landscape.crop.top >= 0 && landscape.crop.bottom <= 2400)
    }

    @Test
    fun isolatedNoiseDoesNotTriggerCropOrEnlargeRealSubject() {
        val noiseOnly = FloatArray(8000) { 0.1f }
        for (y in 10..60 step 10) {
            for (x in 10..80 step 10) noiseOnly[y * 100 + x] = 0.9f
        }
        assertFullFrame(RelativeDepthMap(100, 80, noiseOnly))

        val subject = depthWithRectangles(100, 80, Rect(40, 30, 60, 50))
        val withNoise = subject.values.copyOf().apply { this[10 * 100 + 10] = 0.9f }
        assertEquals(
            DepthSubjectCropPlanner.plan(subject, 4000, 3200).crop,
            DepthSubjectCropPlanner.plan(RelativeDepthMap(100, 80, withNoise), 4000, 3200).crop,
        )
    }

    @Test
    fun lowResolutionSourceCannotGainModelSamples() {
        val depth = depthWithRectangles(100, 80, Rect(40, 30, 60, 50))

        assertFullFrame(depth, 300, 240)
        assertFullFrame(depth, 400, 320)
    }

    @Test
    fun ambiguousBorderDoesNotInventForegroundPolarity() {
        assertFullFrame(depthWithRectangles(100, 80, Rect(0, 0, 40, 80)))
    }

    @Test(expected = IllegalArgumentException::class)
    fun invalidDepthIsRejectedRatherThanHidden() {
        DepthSubjectCropPlanner.plan(RelativeDepthMap(2, 2, floatArrayOf(0f, 0.5f, Float.NaN, 1f)), 4000, 3000)
    }

    private data class Rect(val left: Int, val top: Int, val right: Int, val bottom: Int)

    private fun depthWithRectangles(
        width: Int,
        height: Int,
        vararg rectangles: Rect,
        background: Float = 0.1f,
        foreground: Float = 0.9f,
    ) = RelativeDepthMap(width, height, FloatArray(width * height) { index ->
        val x = index % width
        val y = index / width
        if (rectangles.any { x >= it.left && x < it.right && y >= it.top && y < it.bottom }) {
            foreground
        } else {
            background
        }
    })

    private fun assertFullFrame(depth: RelativeDepthMap, width: Int = 4000, height: Int = 3200) {
        val result = DepthSubjectCropPlanner.plan(depth, width, height)
        assertEquals(DepthSubjectCropPlanner.Crop(0, 0, width, height), result.crop)
        assertEquals(1f, result.linearGain, 0f)
    }
}
