package com.hinnka.mycamera.hdr

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
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
    fun preservesRawHdrRatioAcrossLutEditsAndReferenceWhite() {
        val offset = RawGainmapMath.OFFSET
        for (before in listOf(0.1f, 0.5f, 0.6f, 1f)) {
            for (after in listOf(0.05f, 0.35f, 0.85f, 1f)) {
                for (ratio in listOf(1f, 1.5f, 2f, 3.5f)) {
                    val hdr = (before + offset) * ratio - offset
                    val adjusted = RawGainmapMath.applyLutLuminanceGain(
                        RawGainmapMath.computeLutLuminanceGain(before, after),
                        hdr,
                    )
                    assertEquals(ratio, (adjusted + offset) / (after + offset), 0.00001f)
                }
            }
        }
    }

    @Test
    fun brightLutShoulderDoesNotInvertBranchAgainstSky() {
        // Both the RAW reference and the LUT keep the branch darker than the sky.
        // Splitting HDR at absolute white applies the branch's larger LUT gain to
        // too much of its reference and reverses this ordering (about 1.70 > 1.63).
        val offset = RawGainmapMath.OFFSET
        fun render(before: Float, after: Float): Float = RawGainmapMath.applyLutLuminanceGain(
            RawGainmapMath.computeLutLuminanceGain(before, after),
            (before + offset) * 2f - offset,
        )
        val branch = render(0.5f, 0.85f)
        val sky = render(0.6f, 0.86f)

        assertTrue("Branch $branch must remain darker than sky $sky", branch < sky)
        assertEquals(1.7001f, branch, 0.00001f)
        assertEquals(1.7201f, sky, 0.00001f)
    }

    @Test
    fun encodesTheReferenceCurveWithoutASecondLuminanceGate() {
        val encoded = RawGainmapMath.encodeLuminance(
            sdrEncodedRgb = floatArrayOf(0.10f, 0.10f, 0.10f),
            hdrLinearRgb = floatArrayOf(0.08f, 0.08f, 0.08f),
        )
        val expected = RawGainmapMath.encode(
            sdrEncoded = 0.10f,
            hdrLinear = 0.08f,
        )

        assertEquals(expected, encoded, 0.00001f)
    }
}
