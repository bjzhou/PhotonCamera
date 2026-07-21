package com.hinnka.mycamera.viewmodel

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class MultiFrameOutputScaleTest {
    @Test
    fun disabledModesResolveToNull() {
        assertNull(resolveMultiFrameOutputScale(useJpgMax = false, useRawMax = false, rawMaxOutputScale = 1.5f))
    }

    @Test
    fun jpgMaxResolvesToNativeScale() {
        assertEquals(1f, resolveMultiFrameOutputScale(useJpgMax = true, useRawMax = false, rawMaxOutputScale = 1.8f))
    }

    @Test
    fun rawMaxUsesClampedFloatingPointScale() {
        assertEquals(1.35f, resolveMultiFrameOutputScale(useJpgMax = false, useRawMax = true, rawMaxOutputScale = 1.35f))
        assertEquals(1f, resolveMultiFrameOutputScale(useJpgMax = false, useRawMax = true, rawMaxOutputScale = 0.5f))
        assertEquals(2f, resolveMultiFrameOutputScale(useJpgMax = false, useRawMax = true, rawMaxOutputScale = 2.5f))
        assertEquals(
            1f,
            resolveMultiFrameOutputScale(useJpgMax = false, useRawMax = true, rawMaxOutputScale = Float.NaN),
        )
    }

    @Test
    fun rawMaxTakesPrecedenceForConflictingPreferences() {
        assertEquals(1.6f, resolveMultiFrameOutputScale(useJpgMax = true, useRawMax = true, rawMaxOutputScale = 1.6f))
    }
}
