package com.hinnka.mycamera.lut

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class FilmGrainShadersTest {
    @Test
    fun previewAndVideoUseTheSameTimestampSeed() {
        val presentationTimeUs = 123_456_789L

        assertEquals(
            FilmGrainShaders.frameSeed(presentationTimeUs * 1_000L),
            FilmGrainShaders.videoFrameSeed(presentationTimeUs),
            0f,
        )
    }

    @Test
    fun seedIsStableWithinTickAndChangesAtHighFrameRate() {
        val timestampNs = 1_000_000_000L
        val seed = FilmGrainShaders.frameSeed(timestampNs)

        assertEquals(seed, FilmGrainShaders.frameSeed(timestampNs + 1_000_000L), 0f)
        assertNotEquals(seed, FilmGrainShaders.frameSeed(timestampNs + 8_333_333L))
    }

    @Test
    fun pixelScalePreservesGrainSizeAcrossOutputResolutions() {
        assertEquals(0.5f, FilmGrainShaders.pixelScale(640, 480), 0f)
        assertEquals(1f, FilmGrainShaders.pixelScale(1920, 1080), 0f)
        assertEquals(2f, FilmGrainShaders.pixelScale(3840, 2160), 0f)
        assertEquals(4f, FilmGrainShaders.pixelScale(8640, 4320), 0f)
    }
}
