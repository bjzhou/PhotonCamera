package com.hinnka.mycamera.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EffectParamsTest {
    @Test
    fun flash_roundTripsAndBridgesToColorRecipe() {
        val source = EffectParams.DEFAULT.copy(flash = 0.72f)

        val restored = EffectParams.fromJson(source.toJson())
        val recipe = restored.applyTo(ColorRecipeParams.DEFAULT)

        assertFalse(restored.isDefault())
        assertEquals(0.72f, restored.flash, 0.0001f)
        assertEquals(0.72f, recipe.flash, 0.0001f)
        assertEquals(restored, recipe.toEffectParams())
    }

    @Test
    fun defaultFlash_keepsEffectsDefault() {
        assertTrue(EffectParams.DEFAULT.isDefault())
        assertEquals(0f, ColorRecipeParams.DEFAULT.flash, 0.0001f)
    }
}
