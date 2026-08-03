package com.hinnka.mycamera.hdr

import org.junit.Assert.assertEquals
import org.junit.Test

class RawGainmapMathTest {
    @Test
    fun decodesStandardSrgbTransferFunction() {
        assertEquals(0f, RawGainmapMath.srgbToLinear(0f), 0.000001f)
        assertEquals(1f, RawGainmapMath.srgbToLinear(1f), 0.000001f)
        assertEquals(0.214041f, RawGainmapMath.srgbToLinear(0.5f), 0.00001f)
        assertEquals(-0.214041f, RawGainmapMath.srgbToLinear(-0.5f), 0.00001f)
    }

    @Test
    fun unityResidualEncodesAtZeroEvPosition() {
        val sdr = 0.5f
        val encoded = RawGainmapMath.encode(sdr, RawGainmapMath.srgbToLinear(sdr))

        assertEquals(0.5f, encoded, 0.00001f)
    }

    @Test
    fun reconstructsLinearHdrFromRgbLogResidual() {
        val sdr = 0.42f
        val hdr = 0.5f
        val encoded = RawGainmapMath.encode(sdr, hdr)

        assertEquals(hdr, RawGainmapMath.reconstructLinear(sdr, encoded), 0.00001f)
    }

    @Test
    fun clipsResidualAtDeclaredMetadataRange() {
        val sdr = 0.42f
        val encoded = RawGainmapMath.encode(sdr, 0.72f)
        val expected = (RawGainmapMath.srgbToLinear(sdr) + RawGainmapMath.OFFSET) *
            RawGainmapMath.MAX_GAIN_RATIO - RawGainmapMath.OFFSET

        assertEquals(1f, encoded, 0.00001f)
        assertEquals(expected, RawGainmapMath.reconstructLinear(sdr, encoded), 0.00001f)
    }

    @Test
    fun preservesNegativeGainResidual() {
        val sdr = 0.8f
        val hdr = RawGainmapMath.srgbToLinear(sdr) * 0.5f
        val encoded = RawGainmapMath.encode(sdr, hdr)

        assertEquals(hdr, RawGainmapMath.reconstructLinear(sdr, encoded), 0.00001f)
    }

    @Test
    fun luminanceResidualKeepsLutRenderedSdrRgbAsColorBase() {
        val sdr = floatArrayOf(0.82f, 0.41f, 0.19f)
        val hdr = floatArrayOf(0.70f, 0.82f, 0.64f)
        val encoded = RawGainmapMath.encodeLuminance(sdr, hdr)
        val reconstructed = FloatArray(3) { channel ->
            RawGainmapMath.reconstructLinear(sdr[channel], encoded)
        }
        val appliedRatios = FloatArray(3) { channel ->
            (reconstructed[channel] + RawGainmapMath.OFFSET) /
                (RawGainmapMath.srgbToLinear(sdr[channel]) + RawGainmapMath.OFFSET)
        }

        assertEquals(appliedRatios[0], appliedRatios[1], 0.00001f)
        assertEquals(appliedRatios[1], appliedRatios[2], 0.00001f)
        assertEquals(
            RawGainmapMath.linearLuma(hdr[0], hdr[1], hdr[2]),
            RawGainmapMath.linearLuma(reconstructed[0], reconstructed[1], reconstructed[2]),
            0.0001f,
        )
    }

    @Test
    fun transfersLutLuminanceGainOntoHdrBaseRange() {
        val beforeLut = floatArrayOf(0.40f, 0.40f, 0.40f)
        val afterLut = floatArrayOf(0.52f, 0.52f, 0.52f)
        val hdr = floatArrayOf(0.50f, 0.50f, 0.50f)
        val encoded = RawGainmapMath.encodeLuminance(
            sdrEncodedRgb = afterLut,
            hdrLinearRgb = hdr,
            lutLuminanceGain = RawGainmapMath.computeLutLuminanceGain(
                RawGainmapMath.srgbToLinear(beforeLut[0]),
                RawGainmapMath.srgbToLinear(afterLut[0]),
            ),
        )
        val reconstructed = RawGainmapMath.reconstructLinear(afterLut[0], encoded)
        val beforeLutLuma = RawGainmapMath.srgbToLinear(beforeLut[0])
        val afterLutLuma = RawGainmapMath.srgbToLinear(afterLut[0])
        val expected = RawGainmapMath.applyLutLuminanceGain(
            RawGainmapMath.computeLutLuminanceGain(
                beforeLutLuma,
                afterLutLuma,
            ),
            hdr[0],
        )

        assertEquals(expected, reconstructed, 0.00001f)
    }

    @Test
    fun keepsExtendedHdrHeadroomLinearAfterLutAdjustedBase() {
        val lutGain = RawGainmapMath.computeLutLuminanceGain(0.5f, 0.35f)
        val adjustedWhite = RawGainmapMath.applyLutLuminanceGain(lutGain, 1.0f)
        val adjustedExtended = RawGainmapMath.applyLutLuminanceGain(lutGain, 2.25f)

        assertEquals(1.25f, adjustedExtended - adjustedWhite, 0.00001f)
    }

    @Test
    fun keepsZeroGainThroughDarkLuminanceRange() {
        assertEquals(
            1f,
            RawGainmapMath.gateRatioByHdrLuminance(
                candidateRatio = RawGainmapMath.MAX_GAIN_RATIO,
                hdrReferenceLuma = RawGainmapMath.GAIN_START_LUMA,
            ),
            0.00001f,
        )
        assertEquals(
            1f,
            RawGainmapMath.gateRatioByHdrLuminance(
                candidateRatio = RawGainmapMath.MIN_GAIN_RATIO,
                hdrReferenceLuma = RawGainmapMath.GAIN_START_LUMA,
            ),
            0.00001f,
        )
    }

    @Test
    fun smoothlyIntroducesGainBetweenDarkAndFullThresholds() {
        val midpoint = (RawGainmapMath.GAIN_START_LUMA + RawGainmapMath.GAIN_FULL_LUMA) * 0.5f

        assertEquals(
            2f,
            RawGainmapMath.gateRatioByHdrLuminance(
                candidateRatio = 3f,
                hdrReferenceLuma = midpoint,
            ),
            0.00001f,
        )
        assertEquals(
            3f,
            RawGainmapMath.gateRatioByHdrLuminance(
                candidateRatio = 3f,
                hdrReferenceLuma = RawGainmapMath.GAIN_FULL_LUMA,
            ),
            0.00001f,
        )
    }

    @Test
    fun lutLiftCannotActivateGainBelowDarkThreshold() {
        val encoded = RawGainmapMath.encodeLuminance(
            sdrEncodedRgb = floatArrayOf(0.10f, 0.10f, 0.10f),
            hdrLinearRgb = floatArrayOf(0.08f, 0.08f, 0.08f),
            lutLuminanceGain = 2.0f,
        )

        assertEquals(0.5f, encoded, 0.00001f)
    }
}
