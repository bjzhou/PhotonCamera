package com.hinnka.mycamera.previewhook.api

import com.hinnka.mycamera.model.ColorRecipeParams
import org.junit.After
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcVfeLutRuntimeTest {
    @After
    fun resetRuntime() {
        MgcVfeLutRuntime.clearActiveLutConfig()
        MgcVfeLutRuntime.clearActiveRecipeParams()
    }

    @Test
    fun completePhotonRecipeReachesCapturedJpegSnapshot() {
        MgcVfeLutRuntime.setActiveRecipeParamsDirect(
            ColorRecipeParams(
                paletteY = 0f,
                flash = 0.21f,
                bloom = 0.32f,
                softLight = 0.43f,
                redHalation = 0.54f,
                primaryRedHue = 0.12f,
                primaryGreenSaturation = -0.23f,
                primaryBlueHue = 0.34f,
                gradingShadowHue = 0.11f,
                gradingShadowAmount = 0.22f,
                gradingMidtoneHue = 0.33f,
                gradingMidtoneAmount = 0.44f,
                gradingHighlightHue = 0.55f,
                gradingHighlightAmount = 0.66f,
                gradingBalance = -0.27f,
                gradingBlending = 0.73f,
                masterCurvePoints = floatArrayOf(0f, 0f, 0.5f, 0.4f, 1f, 1f),
                redCurvePoints = floatArrayOf(0f, 0f, 1f, 0.9f),
            )
        )

        val snapshot = MgcVfeLutRuntime.buildSnapshot()

        assertTrue(snapshot.colorRecipeEnabled)
        assertEquals(1f, snapshot.basicToneAmount, 0.0001f)
        assertEquals(0.21f, snapshot.flash, 0.0001f)
        assertEquals(0.32f, snapshot.bloom, 0.0001f)
        assertEquals(0.43f, snapshot.softLight, 0.0001f)
        assertEquals(0.54f, snapshot.redHalation, 0.0001f)
        assertArrayEquals(floatArrayOf(0.11f, 0.33f, 0.55f), snapshot.gradingHues, 0.0001f)
        assertArrayEquals(floatArrayOf(0.22f, 0.44f, 0.66f), snapshot.gradingAmounts, 0.0001f)
        assertEquals(-0.27f, snapshot.gradingBalance, 0.0001f)
        assertEquals(0.73f, snapshot.gradingBlending, 0.0001f)
        assertTrue(snapshot.curveEnabled)
        assertNotNull(snapshot.curvePayload)
        assertEquals(256 * 4, snapshot.curvePayload?.size)
        assertTrue(
            snapshot.primaryCalibrationMatrix.indices.any { index ->
                val identity = if (index % 4 == 0) 1f else 0f
                kotlin.math.abs(snapshot.primaryCalibrationMatrix[index] - identity) > 0.0001f
            }
        )
    }
}
