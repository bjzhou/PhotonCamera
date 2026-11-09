package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Test

class DenoiseStrengthTest {
    @Test
    fun strengthIsBoundedAndRejectsNonFiniteValues() {
        assertEquals(0f, DenoiseStrength.clamp(-1f), 0f)
        assertEquals(1.5f, DenoiseStrength.clamp(1.5f), 0f)
        assertEquals(2f, DenoiseStrength.clamp(3f), 0f)
        assertEquals(0f, DenoiseStrength.clamp(Float.NaN), 0f)
        assertEquals(0f, DenoiseStrength.clamp(Float.POSITIVE_INFINITY), 0f)
    }
}
