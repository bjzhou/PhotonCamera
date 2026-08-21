package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcSabreNoiseEstimatesLutTest {
    @Test
    fun zeroLinearNoiseProducesZeroSqrtDomainNoise() {
        for (index in 0 until MgcSabreNoiseEstimatesLut.WIDTH) {
            val signal = index.toFloat() / (MgcSabreNoiseEstimatesLut.WIDTH - 1).toFloat()
            assertEquals(
                0f,
                MgcSabreNoiseEstimatesLut.sqrtDomainVariance(signal, 0f, 0f),
                0f,
            )
        }
    }

    @Test
    fun qmcTransformMatchesReversedMgcReferenceValues() {
        assertEquals(
            0.0012591606f,
            MgcSabreNoiseEstimatesLut.sqrtDomainVariance(0f, 0.001f, 0.00001f),
            1e-8f,
        )
        assertEquals(
            0.00025654092f,
            MgcSabreNoiseEstimatesLut.sqrtDomainVariance(0.5f, 0.001f, 0.00001f),
            1e-8f,
        )
        assertEquals(
            0.00024920312f,
            MgcSabreNoiseEstimatesLut.sqrtDomainVariance(1f, 0.001f, 0.00001f),
            1e-8f,
        )
    }

    @Test
    fun lutKeepsReferenceAndCurrentRowsAndAveragesGreenVariance() {
        val referenceShot = floatArrayOf(0.01f, 0.02f, 0.04f, 0.08f)
        val referenceRead = floatArrayOf(0.001f, 0.002f, 0.004f, 0.008f)
        val currentShot = floatArrayOf(0.03f, 0.05f, 0.07f, 0.09f)
        val currentRead = floatArrayOf(0.003f, 0.005f, 0.007f, 0.009f)

        val lut = MgcSabreNoiseEstimatesLut.create(
            referenceShot,
            referenceRead,
            currentShot,
            currentRead,
        )
        val x = MgcSabreNoiseEstimatesLut.WIDTH - 1
        val referenceOffset = x * MgcSabreNoiseEstimatesLut.CHANNELS
        val currentOffset = (MgcSabreNoiseEstimatesLut.WIDTH + x) *
            MgcSabreNoiseEstimatesLut.CHANNELS

        assertEquals(
            MgcSabreNoiseEstimatesLut.sqrtDomainVariance(1f, referenceShot[0], referenceRead[0]),
            lut[referenceOffset],
            1e-7f,
        )
        val referenceGreenVarianceSum =
            MgcSabreNoiseEstimatesLut.sqrtDomainVariance(
                1f,
                referenceShot[1],
                referenceRead[1],
            ) + MgcSabreNoiseEstimatesLut.sqrtDomainVariance(
                1f,
                referenceShot[2],
                referenceRead[2],
            )
        val expectedReferenceGreen = 0.25f * referenceGreenVarianceSum
        assertEquals(expectedReferenceGreen, lut[referenceOffset + 1], 1e-7f)
        assertEquals(
            MgcSabreNoiseEstimatesLut.sqrtDomainVariance(1f, currentShot[3], currentRead[3]),
            lut[currentOffset + 2],
            1e-7f,
        )
        assertEquals(0f, lut[referenceOffset + 3], 0f)
        assertEquals(0f, lut[currentOffset + 3], 0f)
        assertTrue(lut[referenceOffset] != lut[currentOffset])
    }

    @Test
    fun bayerSabreGuideUsesSqrtColorSpaceBeforeTensorConstruction() {
        val shader = GlesMgcRawSabreShaders.guideAndCovariance
        val sqrtTransform = "rggb = sqrt(max(vec4(0.0), rggb));"
        val greenTensorInput = "green0[index] = rggb"

        assertTrue(shader.contains(sqrtTransform))
        assertTrue(shader.indexOf(sqrtTransform) < shader.indexOf(greenTensorInput))
    }

    @Test
    fun mergedNoiseFactorUsesActualGreenRbfWeightsInQ8Domain() {
        val shader = GlesMgcRawSabreShaders.reciprocalGreenWeight4x4

        assertTrue(shader.contains("texelFetch(uAccumulatedWeightsGb, p, 0).r"))
        assertTrue(shader.contains("floor(weight * 256.0 + 0.5)"))
        assertTrue(shader.contains("reciprocalSum += 256.0 / weightQ8"))
    }
}
