package com.hinnka.mycamera.viewmodel

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class MultiFrameOutputScaleTest {
    @Test
    fun disabledModesResolveToNull() {
        assertNull(resolveMultiFrameOutputScale(false, false, 1.5f))
    }

    @Test
    fun mfnrResolvesToNativeScale() {
        assertEquals(1f, resolveMultiFrameOutputScale(true, false, 1.8f))
    }

    @Test
    fun mfsrUsesClampedFloatingPointScale() {
        assertEquals(1.35f, resolveMultiFrameOutputScale(false, true, 1.35f))
        assertEquals(1f, resolveMultiFrameOutputScale(false, true, 0.5f))
        assertEquals(2f, resolveMultiFrameOutputScale(false, true, 2.5f))
        assertEquals(
            1.5f,
            resolveMultiFrameOutputScale(false, true, Float.NaN),
        )
    }

    @Test
    fun mfsrTakesPrecedenceForMigratedConflictingPreferences() {
        assertEquals(1.6f, resolveMultiFrameOutputScale(true, true, 1.6f))
    }
}
