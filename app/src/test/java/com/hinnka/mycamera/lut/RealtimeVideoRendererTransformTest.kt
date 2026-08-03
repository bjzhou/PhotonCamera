package com.hinnka.mycamera.lut

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RealtimeVideoRendererTransformTest {
    @Test
    fun identityAndFlipDoNotSwapAxes() {
        assertFalse(
            isTextureTransformAxesSwapped(
                floatArrayOf(
                    1f, 0f, 0f, 0f,
                    0f, -1f, 0f, 0f,
                    0f, 0f, 1f, 0f,
                    0f, 1f, 0f, 1f,
                )
            )
        )
    }

    @Test
    fun quarterTurnSwapsAxes() {
        assertTrue(
            isTextureTransformAxesSwapped(
                floatArrayOf(
                    0f, 1f, 0f, 0f,
                    1f, 0f, 0f, 0f,
                    0f, 0f, 1f, 0f,
                    0f, 0f, 0f, 1f,
                )
            )
        )
    }
}
