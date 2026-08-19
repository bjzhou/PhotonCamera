package com.hinnka.mycamera.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ColorGradingParamsTest {
    @Test
    fun defaults_doNotEnableColorGrading() {
        assertTrue(ColorRecipeParams.DEFAULT.isDefault())
        assertEquals(0.5f, ColorRecipeParams.DEFAULT.gradingBlending, 0.0001f)
    }

    @Test
    fun gradingAdjustment_participatesInDefaultAndEqualityChecks() {
        val adjusted = ColorRecipeParams.DEFAULT.copy(
            gradingMidtoneHue = 0.36f,
            gradingMidtoneAmount = 0.42f,
            gradingMidtoneLuminance = -0.18f,
        )

        assertFalse(adjusted.isDefault())
        assertFalse(adjusted.isSameAs(ColorRecipeParams.DEFAULT))
        assertTrue(adjusted.isSameAs(adjusted.copy()))
    }

    @Test
    fun jsonRoundTrip_preservesAllThreeTonalRanges() {
        val source = ColorRecipeParams.DEFAULT.copy(
            gradingShadowHue = 0.08f,
            gradingShadowAmount = 0.21f,
            gradingShadowLuminance = -0.12f,
            gradingMidtoneHue = 0.37f,
            gradingMidtoneAmount = 0.43f,
            gradingMidtoneLuminance = 0.08f,
            gradingHighlightHue = 0.64f,
            gradingHighlightAmount = 0.72f,
            gradingHighlightLuminance = 0.24f,
            gradingBalance = -0.16f,
            gradingBlending = 0.81f,
        )

        val decoded = ColorRecipeParams.fromJson(source.toJson())

        assertTrue(source.isSameAs(decoded))
    }

    @Test
    fun legacyJson_usesNeutralBlendingDefault() {
        val decoded = ColorRecipeParams.fromJson(
            """
            {
              "gradingShadowHue": 0.12,
              "gradingShadowAmount": 0.25
            }
            """.trimIndent()
        )

        assertEquals(0.12f, decoded.gradingShadowHue, 0.0001f)
        assertEquals(0.25f, decoded.gradingShadowAmount, 0.0001f)
        assertEquals(0f, decoded.gradingShadowLuminance, 0.0001f)
        assertEquals(0f, decoded.gradingMidtoneLuminance, 0.0001f)
        assertEquals(0f, decoded.gradingHighlightLuminance, 0.0001f)
        assertEquals(0.5f, decoded.gradingBlending, 0.0001f)
    }
}
