package com.hinnka.mycamera.gallery

import com.hinnka.mycamera.raw.RawMetadata
import org.junit.Assert.assertEquals
import org.junit.Test

class MediaMetadataTest {
    @Test
    fun mergeKeepsExistingIsoWhenRawIsoIsFallback100() {
        val metadata = MediaMetadata(iso = 800)
        val raw = rawMetadata(iso = 100)

        assertEquals(800, metadata.merge(raw).iso)
    }

    @Test
    fun mergeUsesRawIsoWhenRawIsoIsSpecificValue() {
        val metadata = MediaMetadata(iso = 800)
        val raw = rawMetadata(iso = 1600)

        assertEquals(1600, metadata.merge(raw).iso)
    }

    @Test
    fun mergeUsesFallback100WhenNoExistingIso() {
        val metadata = MediaMetadata(iso = null)
        val raw = rawMetadata(iso = 100)

        assertEquals(100, metadata.merge(raw).iso)
    }

    private fun rawMetadata(iso: Int): RawMetadata {
        return RawMetadata(
            width = 4000,
            height = 3000,
            cfaPattern = RawMetadata.CFA_RGGB,
            blackLevel = floatArrayOf(0f, 0f, 0f, 0f),
            whiteLevel = 1023f,
            whiteBalanceGains = floatArrayOf(1f, 1f, 1f, 1f),
            colorCorrectionMatrix = floatArrayOf(
                1f, 0f, 0f,
                0f, 1f, 0f,
                0f, 0f, 1f
            ),
            iso = iso
        )
    }
}
