package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.abs
import kotlin.math.pow

class DngPhotonPercentileTest {
    @Test
    fun percentileUsesMatlabMidpointRanks() {
        val sorted = floatArrayOf(1f, 2f, 3f, 6f, 10f)

        assertEquals(2.5f, DngPhotonLocalToneMapper.percentile(sorted, 0.4f), 0f)
        assertEquals(1f, DngPhotonLocalToneMapper.percentile(sorted, 0f), 0f)
        assertEquals(10f, DngPhotonLocalToneMapper.percentile(sorted, 1f), 0f)
    }

    @Test
    fun identityLocalLaplacianMapsRenderedUpperPercentileToOne() {
        val width = 16
        val height = 16
        val source = FloatArray(width * height) { index ->
            if (index < 2) 0f else index.toFloat() / (width * height - 1f)
        }
        val result = DngPhotonLocalToneMapper.localLaplacianToneMap(
            source = source,
            width = width,
            height = height,
            exposureGain = 2.3f,
            parameters = PhotonLocalToneMappingParameters(
                localLaplacianDetailExponent = 1f,
                localLaplacianEdgeSlope = 1f,
                targetDynamicRange = 1_000_000f,
            ),
        )

        val sourceUpper = DngPhotonLocalToneMapper.percentile(
            source.copyOf().also { it.sort() },
            0.995f,
        )
        val maximumError = source.indices.maxOf {
            abs(result.target[it] * 2.3f - source[it] / sourceUpper)
        }
        assertEquals(0f, result.target[0], 1e-6f)
        assertEquals(0f, result.target[1], 1e-6f)
        assertTrue("identity LL normalized maximum error=$maximumError", maximumError < 2e-4f)
    }

    @Test
    fun outputPercentileExponentUsesFiniteRawBlackEndpoint() {
        val exponent = DngPhotonLocalToneMapper.outputPercentileExponent(
            filteredLower = 0f,
            filteredUpper = 1f,
            exposureGain = 1f,
            targetDynamicRange = 100f,
        )
        val exposureEquivalent = DngPhotonLocalToneMapper.outputPercentileExponent(
            filteredLower = 0f,
            filteredUpper = 2.5f,
            exposureGain = 2.5f,
            targetDynamicRange = 100f,
        )
        val widerTarget = DngPhotonLocalToneMapper.outputPercentileExponent(
            filteredLower = 0f,
            filteredUpper = 1f,
            exposureGain = 1f,
            targetDynamicRange = 1_000f,
        )
        val noExpansion = DngPhotonLocalToneMapper.outputPercentileExponent(
            filteredLower = 0.1f,
            filteredUpper = 0.5f,
            exposureGain = 1f,
            targetDynamicRange = 100f,
        )

        assertEquals(1f / 3f, exponent, 1e-6f)
        assertEquals(exponent, exposureEquivalent, 1e-6f)
        assertEquals(0.5f, widerTarget, 1e-6f)
        assertEquals(1f, noExpansion, 0f)
    }

    @Test
    fun underRangeUpperAdaptsBetweenGammaMappingAndWhite() {
        val filteredUpper = 0.25f
        val exponent = 0.6f
        val gammaMapped = filteredUpper.toDouble().pow(exponent.toDouble()).toFloat()
        val outputUpper = DngPhotonLocalToneMapper.outputUpperPercentile(
            filteredUpper = filteredUpper,
            outputExponent = exponent,
        )

        assertTrue(outputUpper > gammaMapped)
        assertTrue(outputUpper < 1f)
        assertEquals(
            filteredUpper,
            DngPhotonLocalToneMapper.outputUpperPercentile(filteredUpper, 1f),
            0f,
        )
        assertEquals(1f, DngPhotonLocalToneMapper.outputUpperPercentile(1.2f, exponent), 0f)
    }

    @Test
    fun gpuNormalizesOnlyOverrangeFilteredUpperWithoutInputPercentileAnchor() {
        val source = DngPhotonLocalToneMapGpuShaders.sources[
            DngPhotonLocalToneMapGpuShaders.Pass.FINALIZE_SDR_TARGET.ordinal
        ]

        assertTrue(source.contains("max(exp(filteredLog) - PAPER_EPS, 0.0)"))
        assertTrue(source.contains("filteredLinear / uFilteredUpper"))
        assertTrue(source.contains("float mapped = uOutputUpper *"))
        assertTrue(source.contains("pow(max(normalized, 0.0), uOutputExponent)"))
        assertTrue(source.contains("target[index] = mapped / uPreToneMapExposureGain"))
        assertTrue(!source.contains("uInputUpper"))
    }

    @Test
    fun paperLuminanceIsClampedToThePgtmInputDomain() {
        val source = DngPhotonProfileGainTableInputShader.CELL_SAMPLES

        assertTrue(
            source.contains(
                "return clamp(dot(profileRgb, PAPER_INTENSITY_WEIGHTS), 0.0, 1.0);",
            ),
        )
    }

    @Test
    fun streamedPgtmSamplesUseGlobalCoordinatesWithSingleTileOwnership() {
        val source = DngPhotonProfileGainTableInputShader.CELL_SAMPLES

        assertTrue(source.contains("coord - uRawTextureOrigin"))
        assertTrue(source.contains("lessThan(sourceCoord, uSampleSourceBounds.xy)"))
        assertTrue(source.contains("greaterThanEqual(sourceCoord, uSampleSourceBounds.zw)"))
        assertTrue(source.contains("continue;"))
    }
}
