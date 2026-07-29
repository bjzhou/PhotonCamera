package com.hinnka.mycamera.raw

import java.io.File
import kotlin.math.ln
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
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
    fun dngCoordinatesUseMaxRgbGuideAtTileCenters() {
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
        DngPhotonProfileGainTableGenerator.MAX_RGB_INPUT_WEIGHTS.forEachIndexed { index, weight ->
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

    @Test
    fun scalarGainBilateralGridPreservesDarkGainWithSampleScaledRegularization() {
        val gridWidth = 1
        val gridHeight = 1
        val width = DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val height = DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val sourceLevel = 0.01f
        val expectedGain = 4f
        val source = FloatArray(width * height) { sourceLevel }
        val target = FloatArray(width * height) { sourceLevel * expectedGain }

        val grid = DngPhotonLocalToneMapper.fitScalarGainBilateralGrid(
            source = source,
            target = target,
            width = width,
            height = height,
            gridWidth = gridWidth,
            gridHeight = gridHeight,
            parameters = PhotonLocalToneMappingParameters(),
        )

        // The 0.1-sample prior may pull the fitted gain slightly towards one, but its relative
        // influence must remain below 0.1% even at a 1% scene-linear input.
        assertEquals(
            expectedGain,
            grid.gain(cell = 0, source = sourceLevel),
            expectedGain * 0.001f,
        )
    }

    @Test
    fun scalarGainRegularizationRepresentsOneTenthOfAnRmsInputSample() {
        val sampleCount = 256f
        val sourceLevel = 0.01f
        val targetGain = 4f
        val regularization = 0.1f
        val sumXX = sampleCount * sourceLevel * sourceLevel
        val sumYX = sampleCount * sourceLevel * (sourceLevel * targetGain)
        val expected = (
            sampleCount * targetGain + regularization
            ) / (
            sampleCount + regularization
            )

        val actual = DngPhotonLocalToneMapper.solveRegularizedScalarGain(
            sumXX = sumXX,
            sumWeight = sampleCount,
            sumYX = sumYX,
            identitySlope = 1f,
            regularization = regularization,
        )

        assertEquals(expected, actual, 1e-6f)
    }

    @Test
    fun scalarGainBilateralGridUsesIdentityForUnobservableBlackCells() {
        val gridWidth = 1
        val gridHeight = 1
        val width = DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val height = DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val source = FloatArray(width * height)
        val unrepresentableTarget = FloatArray(width * height) { 0.1f }

        val grid = DngPhotonLocalToneMapper.fitScalarGainBilateralGrid(
            source = source,
            target = unrepresentableTarget,
            width = width,
            height = height,
            gridWidth = gridWidth,
            gridHeight = gridHeight,
            parameters = PhotonLocalToneMappingParameters(),
        )

        listOf(0f, 0.125f, 0.5f, 1f).forEach { guide ->
            assertEquals(1f, grid.gain(cell = 0, source = guide), 0f)
        }
    }

    @Test
    fun gpuBguSolveUsesSampleScaledIdentityRegularization() {
        val shader = DngPhotonLocalToneMapGpuShaders.sources[
            DngPhotonLocalToneMapGpuShaders.Pass.BGU_SOLVE.ordinal
        ]

        assertTrue(shader.contains("float sumWeight = blurred[offset + 2];"))
        assertTrue(
            shader.contains(
                "float identityPriorXX = uRegularization * (sumXX / sumWeight);"
            )
        )
        assertTrue(shader.contains("coefficients[index] = uIdentitySlope;"))
    }

    @Test
    fun gpuBguSolvePassesAvailableNdkValidator() {
        val sdkRoot = System.getenv("ANDROID_SDK_ROOT") ?: System.getenv("ANDROID_HOME")
        val validator = sdkRoot?.let(::File)
            ?.resolve("ndk")
            ?.listFiles()
            ?.sortedByDescending { it.name }
            ?.asSequence()
            ?.mapNotNull { ndk ->
                ndk.resolve("shader-tools")
                    .walkTopDown()
                    .firstOrNull { it.name == "glslc" && it.canExecute() }
            }
            ?.firstOrNull()
        assumeTrue("Android NDK glslc is unavailable", validator != null)
        val shader = DngPhotonLocalToneMapGpuShaders.sources[
            DngPhotonLocalToneMapGpuShaders.Pass.BGU_SOLVE.ordinal
        ]
        val sourceFile = File.createTempFile("photon-bgu-solve-", ".compute")
        val outputFile = File.createTempFile("photon-bgu-solve-", ".spv")
        try {
            sourceFile.writeText(shader)
            val process = ProcessBuilder(
                checkNotNull(validator).absolutePath,
                "--target-env=opengl",
                "-fauto-map-locations",
                "-fauto-bind-uniforms",
                "-fshader-stage=compute",
                sourceFile.absolutePath,
                "-o",
                outputFile.absolutePath,
            ).redirectErrorStream(true).start()
            val output = process.inputStream.bufferedReader().use { it.readText() }
            assertEquals(output, 0, process.waitFor())
        } finally {
            sourceFile.delete()
            outputFile.delete()
        }
    }

    @Test
    fun localLaplacianClampsSparsePeakBeforeNonlinearProfileStages() {
        val width = 16
        val height = 16
        val source = FloatArray(width * height) { 0.1f }
        source[source.lastIndex] = 1f

        val result = DngPhotonLocalToneMapper.localLaplacianToneMap(
            source = source,
            width = width,
            height = height,
            exposureGain = 2f,
            parameters = PhotonLocalToneMappingParameters(
                targetDynamicRange = 1_000_000f,
            ),
        )

        assertEquals(0.2f, result.target.first(), 2e-4f)
        assertEquals(1f, result.target.last(), 0f)
        assertEquals(0, result.target.count { it > 1f })
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
