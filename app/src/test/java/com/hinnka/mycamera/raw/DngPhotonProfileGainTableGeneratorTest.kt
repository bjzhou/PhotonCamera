package com.hinnka.mycamera.raw

import kotlin.math.max
import kotlin.math.pow
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DngPhotonProfileGainTableGeneratorTest {
    @Test
    fun fixedGrayReachesOnePointOneEvAfterPhotonToneCurve() {
        listOf(-2f, 0f, 3f, 7f).forEach { baselineExposureEv ->
            val plan = photonPlan(baselineExposureEv)
            val photonPlan = requireNotNull(plan.photonPlan)
            assertTrue("EV=$baselineExposureEv", photonPlan.usesFixedGray)

            val gains = DngHdrProfileGainTableCpuReference.generate(plan)
            val sourceGray = REFERENCE_GRAY / photonPlan.exposureGain
            val tableGray = sourceGray.pow(plan.gamma)
            val gain = sampleCurve(gains, plan.pointCount, tableGray)
            val preToneGray = REFERENCE_GRAY * gain
            val finalGray = sampleLut(
                DngProfileToneCurve.photonPgtmToneCurveLut(),
                preToneGray,
            )
            val expected = REFERENCE_GRAY * 2f.pow(1.1f)
            assertEquals("EV=$baselineExposureEv", expected, finalGray, 1.5e-3f)
        }
    }

    @Test
    fun globalLowSegmentUsesSmoothEndpointPreservingLift() {
        listOf(-2f, 0f, 3f, 7f).forEach { baselineExposureEv ->
            val photonPlan = requireNotNull(photonPlan(baselineExposureEv).photonPlan)
            assertEquals("EV=$baselineExposureEv", 1.5f, photonPlan.lowCurveLift, 0f)
            assertEquals(
                "EV=$baselineExposureEv",
                photonPlan.pivotOutput / photonPlan.exposedPivot,
                photonPlan.lowSlope,
                1e-6f,
            )
        }
    }

    @Test
    fun smoothLowLiftRaisesInteriorWithoutMovingGray() {
        val plan = photonPlan(3f)
        val photonPlan = requireNotNull(plan.photonPlan)
        val gains = DngHdrProfileGainTableCpuReference.generate(plan)
        val cellPlan = photonPlan.cellPlans.first()
        val exposedInput = photonPlan.exposedPivot * 0.5f
        val warpedNormalized = 0.5f.pow(cellPlan.contrastExponent)
        val oneMinus = 1f - warpedNormalized
        val linearOutput = photonPlan.pivotOutput * warpedNormalized
        val expectedOutput = photonPlan.pivotOutput * (
            warpedNormalized +
                photonPlan.lowCurveLift * warpedNormalized * warpedNormalized *
                oneMinus * oneMinus
            )
        val actualOutput = samplePhysicalOutput(
            plan,
            gains,
            cell = 0,
            exposedInput = exposedInput,
        )

        assertTrue("lifted=$actualOutput linear=$linearOutput", actualOutput > linearOutput)
        assertEquals(expectedOutput, actualOutput, 2e-3f)
        assertEquals(
            photonPlan.pivotOutput,
            samplePhysicalOutput(
                plan,
                gains,
                cell = 0,
                exposedInput = photonPlan.exposedPivot,
            ),
            2e-3f,
        )
    }

    @Test
    fun mapWeightsCancelPositiveAndNegativeBaselineExposure() {
        listOf(-4f, -2f, 0f, 3f, 7f).forEach { baselineExposureEv ->
            val plan = photonPlan(baselineExposureEv)
            val exposureGain = requireNotNull(plan.photonPlan).exposureGain
            plan.mapInputWeights.forEachIndexed { index, weight ->
                assertEquals(
                    "EV=$baselineExposureEv weight=$index",
                    DngHdrProfileGainTableGenerator.BASE_INPUT_WEIGHTS[index],
                    weight * exposureGain,
                    2e-6f,
                )
            }
        }
    }

    @Test
    fun endpointUsesAdaptiveOneToOnePointThreeNormalization() {
        val sparse = photonPlan(
            baselineExposureEv = 3f,
            stats = Stats(p98 = 0.42f, p999 = 0.98f, highlightFraction = 0.005f),
        )
        val broad = photonPlan(
            baselineExposureEv = 3f,
            stats = Stats(p98 = 0.82f, p999 = 0.98f, highlightFraction = 0.45f),
        )
        val sparsePhoton = requireNotNull(sparse.photonPlan)
        val broadPhoton = requireNotNull(broad.photonPlan)
        assertTrue(sparsePhoton.endpointOutput in 1f..1.3f)
        assertTrue(broadPhoton.endpointOutput in 1f..1.3f)
        assertTrue(sparsePhoton.endpointOutput > broadPhoton.endpointOutput)

        listOf(sparse, broad).forEach { plan ->
            val photonPlan = requireNotNull(plan.photonPlan)
            val gains = DngHdrProfileGainTableCpuReference.generate(plan)
            val expectedEndpointGain = photonPlan.endpointOutput / photonPlan.exposureGain
            repeat(plan.cellCount) { cell ->
                assertEquals(
                    expectedEndpointGain,
                    gains[cell * plan.pointCount + plan.pointCount - 1],
                    2e-5f,
                )
            }
        }
    }

    @Test
    fun unreachableGrayFallsBackWithoutBreakingNegativeBaselineCurve() {
        val reachable = photonPlan(-2f)
        val unreachable = photonPlan(-3f)
        assertTrue(requireNotNull(reachable.photonPlan).usesFixedGray)
        assertFalse(requireNotNull(unreachable.photonPlan).usesFixedGray)

        listOf(-4f, -3f, -2f, 0f, 3f, 7f).forEach { baselineExposureEv ->
            val plan = photonPlan(baselineExposureEv)
            val photonPlan = requireNotNull(plan.photonPlan)
            val gains = DngHdrProfileGainTableCpuReference.generate(plan)
            val map = requireNotNull(
                DngHdrProfileGainTableGenerator.mapFromGpuGains(plan, gains)
            )
            assertTrue("EV=$baselineExposureEv map invalid", map.isValid)
            assertTrue("EV=$baselineExposureEv gamma=${plan.gamma}", plan.gamma in 0.125f..8f)
            var previousOutput = 0f
            repeat(plan.pointCount) { point ->
                val tableInput = tableInput(point, plan.pointCount)
                val sourceInput = max(tableInput, 0f).pow(1f / plan.gamma)
                val exposedInput = photonPlan.exposureGain * sourceInput
                val gain = gains[point]
                val output = exposedInput * gain
                assertTrue("EV=$baselineExposureEv point=$point gain=$gain", gain.isFinite() && gain > 0f)
                assertTrue(
                    "EV=$baselineExposureEv reversal at point=$point",
                    output + 2e-5f >= previousOutput,
                )
                previousOutput = output
            }
            assertEquals(photonPlan.endpointOutput, previousOutput, 2e-5f)
        }
    }

    @Test
    fun localPlansUseBoundedSContrast() {
        val plan = photonPlan(3f)
        val cellPlans = requireNotNull(plan.photonPlan).cellPlans
        assertTrue(cellPlans.all { it.contrastExponent in 1f..1.18f })
        assertTrue(cellPlans.any { it.contrastExponent > 1.01f })
    }

    @Test
    fun saturatedLocalParametersRemainInsideClosedFloatBounds() {
        val maximumContrast = photonPlan(
            baselineExposureEv = 3f,
            stats = Stats(
                p10 = 0.18f,
                p50 = 0.19f,
                p90 = 0.20f,
                p98 = 0.22f,
                p999 = 0.30f,
                highlightFraction = 0f,
            ),
        )
        val cellPlans = requireNotNull(maximumContrast.photonPlan).cellPlans
        assertTrue(cellPlans.all { it.contrastExponent in 1f..1.18f })
    }

    @Test
    fun logarithmicShoulderKeepsMultipleHdrStopsBelowWhite() {
        val plan = photonPlan(
            baselineExposureEv = 3f,
            stats = Stats(highlightFraction = 0.005f),
        )
        val gains = DngHdrProfileGainTableCpuReference.generate(plan)
        val atOne = samplePhysicalOutput(plan, gains, cell = 0, exposedInput = 1f)
        val atTwo = samplePhysicalOutput(plan, gains, cell = 0, exposedInput = 2f)
        val atFour = samplePhysicalOutput(plan, gains, cell = 0, exposedInput = 4f)
        assertTrue("one-stop output=$atOne", atOne < 1f)
        assertTrue("1..2 stop separation=${atTwo - atOne}", atTwo - atOne > 0.10f)
        assertTrue("2..4 stop separation=${atFour - atTwo}", atFour - atTwo > 0.10f)
    }

    private fun photonPlan(
        baselineExposureEv: Float,
        stats: Stats = Stats(),
    ): HdrProfileGainTablePlan {
        val grid = DngHdrProfileGainTableGenerator.gridSizeFor(WIDTH, HEIGHT)
        val cellCount = grid[0] * grid[1]
        val packed = FloatArray(
            cellCount * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
        )
        repeat(cellCount) { cell ->
            val offset = cell * DngHdrProfileGainTableGenerator.CELL_STATS_FLOAT_STRIDE
            packed[offset] = stats.p10
            packed[offset + 1] = stats.p50
            packed[offset + 2] = stats.p90
            packed[offset + 3] = stats.p98
            packed[offset + 4] = stats.highlightFraction
            packed[offset + 5] = 256f
            packed[offset + 6] = max(stats.p98, stats.p999 * 0.96f)
            packed[offset + 7] = stats.p999
        }
        return requireNotNull(
            DngHdrProfileGainTableGenerator.planForCellStats(
                width = WIDTH,
                height = HEIGHT,
                baselineExposureEv = baselineExposureEv,
                packedCellStats = packed,
                noiseSlope = 1e-4f,
                noiseOffset = 4.5e-7f,
                curveModel = HdrPgtmCurveModel.PHOTON,
            )
        )
    }

    private fun sampleCurve(gains: FloatArray, pointCount: Int, input: Float): Float {
        return sampleCurve(gains, pointCount, cell = 0, input = input)
    }

    private fun sampleCurve(
        gains: FloatArray,
        pointCount: Int,
        cell: Int,
        input: Float,
    ): Float {
        val offset = cell * pointCount
        if (input >= 1f) return gains[offset + pointCount - 1]
        val scaled = input.coerceIn(0f, 1f) * pointCount
        val first = scaled.toInt().coerceIn(0, pointCount - 1)
        val second = (first + 1).coerceAtMost(pointCount - 1)
        val amount = scaled - first
        return gains[offset + first] * (1f - amount) + gains[offset + second] * amount
    }

    private fun samplePhysicalOutput(
        plan: HdrProfileGainTablePlan,
        gains: FloatArray,
        cell: Int,
        exposedInput: Float,
    ): Float {
        val photonPlan = requireNotNull(plan.photonPlan)
        val sourceInput = exposedInput / photonPlan.exposureGain
        val tableInput = sourceInput.coerceIn(0f, 1f).pow(plan.gamma)
        return exposedInput * sampleCurve(gains, plan.pointCount, cell, tableInput)
    }

    private fun sampleLut(lut: FloatArray, input: Float): Float {
        val scaled = input.coerceIn(0f, 1f) * (lut.size - 1f)
        val first = scaled.toInt().coerceIn(0, lut.lastIndex)
        val second = (first + 1).coerceAtMost(lut.lastIndex)
        val amount = scaled - first
        return lut[first] * (1f - amount) + lut[second] * amount
    }

    private fun tableInput(point: Int, pointCount: Int): Float =
        if (point == pointCount - 1) 1f else point.toFloat() / pointCount.toFloat()

    private data class Stats(
        val p10: Float = 0.025f,
        val p50: Float = 0.16f,
        val p90: Float = 0.52f,
        val p98: Float = 0.82f,
        val p999: Float = 0.98f,
        val highlightFraction: Float = 0.03f,
    )

    private companion object {
        const val WIDTH = 512
        const val HEIGHT = 384
        const val REFERENCE_GRAY = 0.18f
    }
}
