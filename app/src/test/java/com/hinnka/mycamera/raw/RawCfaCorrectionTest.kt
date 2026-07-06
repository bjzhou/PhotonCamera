package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Test

class RawCfaCorrectionTest {
    @Test
    fun camera2LensShadingGreenChannelsFollowRowParityForBayerPatterns() {
        assertEquals(1, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_RGGB, 1, 0))
        assertEquals(2, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_RGGB, 0, 1))

        assertEquals(1, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_GRBG, 0, 0))
        assertEquals(2, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_GRBG, 1, 1))

        assertEquals(1, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_GBRG, 0, 0))
        assertEquals(2, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_GBRG, 1, 1))

        assertEquals(1, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_BGGR, 1, 0))
        assertEquals(2, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_BGGR, 0, 1))
    }

    @Test
    fun camera2LensShadingKeepsRedAndBlueChannelsSemantic() {
        assertEquals(0, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_BGGR, 1, 1))
        assertEquals(3, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_BGGR, 0, 0))
    }

    @Test
    fun camera2LensShadingGreenChannelsFollowRowParityForExpandedBayerPatterns() {
        assertEquals(1, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_QUAD_BGGR, 2, 0))
        assertEquals(2, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_QUAD_BGGR, 0, 3))

        assertEquals(1, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_QUAD_8X8_GBRG, 0, 0))
        assertEquals(2, RawCfaCorrection.camera2LensShadingChannelIndexForPixel(RawMetadata.CFA_QUAD_8X8_GBRG, 0, 1))
    }
}
