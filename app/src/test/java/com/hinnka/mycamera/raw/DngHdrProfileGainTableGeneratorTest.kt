package com.hinnka.mycamera.raw

import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.sqrt
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class DngHdrProfileGainTableGeneratorTest {
    @Test
    fun corpusContainsOnlyTheCompletePxls2TrainingSet() {
        val fixtures = fixtures()
        assertEquals(27, fixtures.size)
        assertTrue(fixtures.all { it.sourceName.startsWith("PXL_202607") })
        assertTrue(fixtures.all { it.tableInputs.size == 33 })
        assertTrue(fixtures.all { it.noiseSlope > 0f && it.noiseOffset > 0f })
        assertTrue(fixtures.none { it.sourceName.contains("pxls/", ignoreCase = true) })
    }

    @Test
    fun densePxls2CurvesStayWithinTrainedErrorEnvelope() {
        var squaredErrorSum = 0.0
        var errorCount = 0
        val absoluteErrors = ArrayList<Float>(2_700_000)
        fixtures().forEach { fixture ->
            val plan = plan(fixture)
            val generated = DngHdrProfileGainTableCpuReference.generate(plan)
            fixture.expectedGains.forEachIndexed { cell, expectedCurve ->
                fixture.tableInputs.forEachIndexed { inputIndex, tableInput ->
                    val predicted = sampleCurve(
                        generated,
                        cell,
                        plan.pointCount,
                        tableInput,
                    )
                    val errorEv = log2(
                        max(predicted, 1e-8f) / max(expectedCurve[inputIndex], 1e-8f)
                    )
                    squaredErrorSum += errorEv * errorEv
                    absoluteErrors += abs(errorEv)
                    errorCount++
                }
            }
        }
        absoluteErrors.sort()
        val rmse = sqrt(squaredErrorSum / errorCount)
        val p95 = absoluteErrors[(absoluteErrors.size * 0.95).toInt()]
        assertTrue("PXLs2 dense curve RMSE=$rmse EV", rmse <= 0.155)
        assertTrue("PXLs2 dense curve p95=$p95 EV", p95 <= 0.290f)
    }

    @Test
    fun generatedCurvesEnforceBlackToeShoulderAndEndpointRules() {
        fixtures().forEach { fixture ->
            val plan = plan(fixture)
            val gains = DngHdrProfileGainTableCpuReference.generate(plan)
            val googlePlan = requireNotNull(plan.googlePlan)
            val curveParameters = googlePlan.curveParameters
            googlePlan.cellPlans.forEachIndexed { cell, cellPlan ->
                assertEquals(googlePlan.inputScale, cellPlan.endpointGain, 0f)
                assertTrue(
                    cellPlan.blackGain in
                        curveParameters.minBlackGain..curveParameters.maxTableGain
                )
                assertTrue(
                    cellPlan.shapePower in
                        curveParameters.minShapePower..curveParameters.maxShapePower
                )
                var previousOutput = 0f
                repeat(plan.pointCount) { point ->
                    val tableInput = tableInput(point, plan.pointCount)
                    val gain = gains[cell * plan.pointCount + point]
                    val output = tableInput * gain
                    assertTrue("${fixture.sourceName} gain=$gain", gain.isFinite() && gain > 0f)
                    assertTrue(
                        "${fixture.sourceName} output reversal at point=$point",
                        output + 2e-6f >= previousOutput,
                    )
                    assertTrue(
                        "${fixture.sourceName} output overflow=$output",
                        output <= max(1f, googlePlan.inputScale) + 2e-6f,
                    )
                    if (tableInput <= curveParameters.toeEnd) {
                        assertEquals(cellPlan.blackGain, gain, 2e-6f)
                    }
                    previousOutput = output
                }
                assertEquals(
                    googlePlan.inputScale,
                    gains[cell * plan.pointCount + plan.pointCount - 1],
                    1e-6f,
                )
            }
        }
    }

    @Test
    fun baselineExposureDoesNotReciprocallyClampTheLearnedDomain() {
        val fixtures = fixtures()
        val plans = fixtures.map(::plan)
        assertTrue(
            fixtures.zip(plans).any { (fixture, plan) ->
                requireNotNull(plan.googlePlan).inputScale * DngBaselineExposure.exactGain(
                    fixture.baselineExposureEv
                ) > 1.25f
            }
        )
        assertTrue(plans.maxOf { requireNotNull(it.googlePlan).inputScale } > 0.95f)
        assertTrue(plans.minOf { requireNotNull(it.googlePlan).inputScale } < 0.45f)
    }

    @Test
    fun largerNoiseFloorReducesUnsupportedBlackLift() {
        val fixture = fixtures().first()
        val quieter = plan(fixture, noiseOffset = fixture.noiseOffset * 0.25f)
        val noisier = plan(fixture, noiseOffset = fixture.noiseOffset * 4f)
        assertTrue(
            median(requireNotNull(noisier.googlePlan).cellPlans.map { it.blackGain }) <
                median(requireNotNull(quieter.googlePlan).cellPlans.map { it.blackGain })
        )
    }

    private fun plan(
        fixture: Fixture,
        noiseOffset: Float = fixture.noiseOffset,
    ): HdrProfileGainTablePlan = requireNotNull(
        DngHdrProfileGainTableGenerator.planForCellStats(
            width = fixture.width,
            height = fixture.height,
            baselineExposureEv = fixture.baselineExposureEv,
            packedCellStats = fixture.packedStats,
            noiseSlope = fixture.noiseSlope,
            noiseOffset = noiseOffset,
        )
    )

    private fun fixtures(): List<Fixture> = fixtureCache

    private fun sampleCurve(
        gains: FloatArray,
        cell: Int,
        pointCount: Int,
        tableInput: Float,
    ): Float {
        if (tableInput >= 1f) return gains[cell * pointCount + pointCount - 1]
        val scaled = tableInput.coerceIn(0f, 1f) * pointCount
        val first = scaled.toInt().coerceIn(0, pointCount - 1)
        val second = (first + 1).coerceAtMost(pointCount - 1)
        val amount = scaled - first
        val offset = cell * pointCount
        return gains[offset + first] * (1f - amount) + gains[offset + second] * amount
    }

    private fun tableInput(point: Int, pointCount: Int): Float =
        if (point == pointCount - 1) 1f else point.toFloat() / pointCount.toFloat()

    private fun median(values: List<Float>): Float {
        val sorted = values.sorted()
        val center = sorted.size / 2
        return if (sorted.size % 2 == 0) {
            0.5f * (sorted[center - 1] + sorted[center])
        } else {
            sorted[center]
        }
    }

    private fun log2(value: Float): Float = (ln(value.toDouble()) / ln(2.0)).toFloat()

    private data class Fixture(
        val sourceName: String,
        val width: Int,
        val height: Int,
        val baselineExposureEv: Float,
        val mapH: Int,
        val mapV: Int,
        val inputWeights: FloatArray,
        val noiseSlope: Float,
        val noiseOffset: Float,
        val tableInputs: FloatArray,
        val packedStats: FloatArray,
        val expectedGains: Array<FloatArray>,
    )

    companion object {
        private val MAGIC = "PGTFIX3\u0000".toByteArray(Charsets.US_ASCII)

        private val fixtureCache: List<Fixture> by lazy {
            val loader = requireNotNull(
                DngHdrProfileGainTableGeneratorTest::class.java.classLoader
            )
            val resource = requireNotNull(loader.getResource("pgtm/pxls2"))
            File(resource.toURI()).listFiles()
                .orEmpty()
                .filter { it.isFile && it.extension == "pgtfix" }
                .sortedBy { it.name }
                .map(::readFixture)
        }

        private fun readFixture(file: File): Fixture {
            val buffer = ByteBuffer.wrap(file.readBytes()).order(ByteOrder.LITTLE_ENDIAN)
            val magic = ByteArray(MAGIC.size).also(buffer::get)
            require(magic.contentEquals(MAGIC)) { "invalid fixture ${file.name}" }
            val width = buffer.int
            val height = buffer.int
            val baseline = buffer.float
            val mapH = buffer.int
            val mapV = buffer.int
            val inputCount = buffer.int
            val statCount = buffer.int
            val gainCount = buffer.int
            val weights = FloatArray(5) { buffer.float }
            val gamma = buffer.float
            require(gamma == 1f)
            val noiseSlope = buffer.float
            val noiseOffset = buffer.float
            val tableInputs = FloatArray(inputCount) { buffer.float }
            val packedStats = FloatArray(statCount) { buffer.float }
            require(gainCount == mapH * mapV * inputCount)
            val expected = Array(mapH * mapV) {
                FloatArray(inputCount) { buffer.float }
            }
            return Fixture(
                sourceName = file.name,
                width = width,
                height = height,
                baselineExposureEv = baseline,
                mapH = mapH,
                mapV = mapV,
                inputWeights = weights,
                noiseSlope = noiseSlope,
                noiseOffset = noiseOffset,
                tableInputs = tableInputs,
                packedStats = packedStats,
                expectedGains = expected,
            )
        }
    }
}
