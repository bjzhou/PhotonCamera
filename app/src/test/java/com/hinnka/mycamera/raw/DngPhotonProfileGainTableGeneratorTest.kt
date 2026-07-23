package com.hinnka.mycamera.raw

import kotlin.math.ln
import org.junit.Assert.assertEquals
import org.junit.Test

class DngPhotonProfileGainTableGeneratorTest {
    @Test
    fun parametersAndKernelsMatchPublishedReferences() {
        val parameters = PhotonLocalToneMappingParameters()
        assertEquals(ln(2.5).toFloat(), parameters.localLaplacianRangeSigma, 0f)
        assertEquals(1f, parameters.localLaplacianDetailExponent, 0f)
        assertEquals(20, parameters.localLaplacianIntensityLevels)
        assertEquals(0.005f, parameters.percentileClip, 0f)
        assertEquals(100f, parameters.targetDynamicRange, 0f)
        assertEquals(16, parameters.bilateralSpatialBinSize)
        assertEquals(1f / 8f, parameters.bilateralRangeSigma, 0f)
        assertEquals(0.8f, parameters.bilateralGuideCurveAlpha, 0f)
        assertEquals(0.1f, parameters.bilateralRegularization, 0f)
        assertFloatArrayEquals(
            floatArrayOf(0.05f, 0.25f, 0.4f, 0.25f, 0.05f),
            DngPhotonLocalToneMapper.localLaplacianPyramidFilter,
            0f,
        )
        assertFloatArrayEquals(
            floatArrayOf(1f, 1f / 8f, 1f / 27f, 1f / 64f),
            DngPhotonLocalToneMapper.bilateralBlurWeights,
            0f,
        )
    }

    @Test
    fun dngCoordinatesUseSourceLinearGuideAtTileCenters() {
        val plan = plan(
            gridWidth = 4,
            gridHeight = 2,
            baselineExposureEv = 3f,
            samplingArea = HdrPgtmSamplingArea(
                originH = 0.25,
                originV = 0.125,
                extentH = 0.5,
                extentV = 0.75,
            ),
        )
        val exposureGain = 8f
        assertEquals(1f, plan.gamma, 0f)
        assertEquals(0.125, plan.grid.mapSpacingH, 0.0)
        assertEquals(0.375, plan.grid.mapSpacingV, 0.0)
        assertEquals(0.3125, plan.grid.mapOriginH, 0.0)
        assertEquals(0.3125, plan.grid.mapOriginV, 0.0)
        DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHTS.forEachIndexed { index, weight ->
            assertEquals(weight / exposureGain, plan.mapInputWeights[index], 1e-7f)
        }
        val map = requireNotNull(
            DngHdrProfileGainTableGenerator.mapFromGpuGains(
                plan,
                FloatArray(plan.cellCount * plan.pointCount) { 1f },
            )
        )
        assertEquals(plan.grid.mapOriginH, map.mapOriginH, 0.0)
        assertEquals(plan.grid.mapOriginV, map.mapOriginV, 0.0)
        assertEquals(plan.grid.mapSpacingH, map.mapSpacingH, 0.0)
        assertEquals(plan.grid.mapSpacingV, map.mapSpacingV, 0.0)
    }

    @Test
    fun scalarGainBilateralGridPreservesIdentityGain() {
        val gridWidth = 2
        val gridHeight = 2
        val width = gridWidth * DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val height = gridHeight * DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val source = FloatArray(width * height) { index ->
            val x = index % width
            (x + 0.5f) / width
        }
        val grid = DngPhotonLocalToneMapper.fitScalarGainBilateralGrid(
            source = source,
            target = source.copyOf(),
            width = width,
            height = height,
            gridWidth = gridWidth,
            gridHeight = gridHeight,
            parameters = PhotonLocalToneMappingParameters(),
        )
        repeat(gridWidth * gridHeight) { cell ->
            listOf(0f, 0.125f, 0.5f, 0.875f, 1f).forEach { guide ->
                val gain = grid.gain(cell, guide)
                assertEquals("cell=$cell guide=$guide", 1f, gain, 2e-4f)
            }
        }
    }

    private fun plan(
        gridWidth: Int,
        gridHeight: Int,
        baselineExposureEv: Float,
        samplingArea: HdrPgtmSamplingArea = HdrPgtmSamplingArea.FULL,
    ): HdrProfileGainTablePlan = DngPhotonProfileGainTableGenerator.plan(
        grid = HdrPgtmGrid(
            mapPointsH = gridWidth,
            mapPointsV = gridHeight,
            mapSpacingH = if (gridWidth > 1) 1.0 / (gridWidth - 1) else 1.0,
            mapSpacingV = if (gridHeight > 1) 1.0 / (gridHeight - 1) else 1.0,
        ),
        pointCount = 257,
        baselineExposureEv = baselineExposureEv,
        samplingArea = samplingArea,
        diagnosticBand = null,
    )

    private fun assertFloatArrayEquals(
        expected: FloatArray,
        actual: FloatArray,
        tolerance: Float,
    ) {
        assertEquals(expected.size, actual.size)
        expected.indices.forEach { index ->
            assertEquals("index=$index", expected[index], actual[index], tolerance)
        }
    }
}
