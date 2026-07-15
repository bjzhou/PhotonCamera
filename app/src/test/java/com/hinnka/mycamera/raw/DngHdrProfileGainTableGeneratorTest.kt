package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.sqrt

class DngHdrProfileGainTableGeneratorTest {
    @Test
    fun bimodalPhotonCaptureKeepsAUsableBrightSyntheticExposure() {
        val fixture = loadFixture(BIMODAL_CAPTURE_RESOURCE)
        val map = generateMap(fixture)
        val blackGains = actualAnchorGains(fixture, map, ToneAnchor.BLACK)
        val medianGains = actualAnchorGains(fixture, map, ToneAnchor.MEDIAN)
        val medianOutputs = FloatArray(fixture.cellCount) { cell ->
            val p50 = sceneSignalForAnchor(
                fixture = fixture,
                cell = cell,
                anchor = ToneAnchor.MEDIAN,
                inputScale = map.mapInputWeights.sum()
            )
            p50 * medianGains[cell]
        }
        val blackGainMedian = percentile(blackGains, 0.50f)
        val medianOutputMean = medianOutputs.average().toFloat()
        assertTrue(
            "inputScale=${map.mapInputWeights.sum()}",
            map.mapInputWeights.sum() in 0.095f..0.120f
        )
        assertTrue("blackGainMedian=$blackGainMedian", blackGainMedian > 1.0f)
        assertTrue(
            "medianOutputMean=$medianOutputMean blackGainMedian=$blackGainMedian",
            medianOutputMean > 0.18f
        )
    }

    @Test
    fun skyykingFixturesCoverRealBlackMedianHighlightAndWhiteCases() {
        val fixtures = loadFixtures()
        assertEquals(12, fixtures.size)

        val inputScales = fixtures.map { it.inputScale }
        val globalMedians = fixtures.map { fixture ->
            percentile(cellStats(fixture, STAT_P50), 0.50f)
        }
        val blackGains = fixtures.flatMap { fixture ->
            anchorGains(fixture.expectedGains, fixture.cellCount, ToneAnchor.BLACK).asIterable()
        }

        assertTrue("inputScales=$inputScales", inputScales.min() < 0.07f)
        assertTrue("inputScales=$inputScales", inputScales.max() > 0.33f)
        assertTrue("globalMedians=$globalMedians", globalMedians.min() < 0.10f)
        assertTrue("globalMedians=$globalMedians", globalMedians.max() > 0.80f)
        assertTrue("blackGainMin=${blackGains.min()}", blackGains.min() < 0.30f)
        assertTrue("blackGainMax=${blackGains.max()}", blackGains.max() > 4.50f)

        fixtures.forEach { fixture ->
            assertEquals(64, fixture.mapPointsH)
            assertEquals(48, fixture.mapPointsV)
            assertEquals(ToneAnchor.entries.size, fixture.anchorCount)
            assertEquals(fixture.cellCount * CELL_STATS_STRIDE, fixture.packedStats.size)
            assertEquals(fixture.cellCount * fixture.anchorCount, fixture.expectedGains.size)
            assertEquals(1f, fixture.gamma, 0f)
            assertOfficialInputWeights(fixture.inputWeights, fixture.sourceName)
            assertEmbeddedSemanticOutputsMonotonic(fixture)
        }
    }

    @Test
    fun official184953TrustedHighlightTailStaysNearWhite() {
        val fixture = loadFixture(
            "/pgtm/skyyking/Skyyking_20260711_184953.RAW-02.ORIGINAL.pgtfixture"
        )
        val map = generateMap(fixture)
        val expectedSpecular = anchorGains(
            source = fixture.expectedGains,
            cellCount = fixture.cellCount,
            anchor = ToneAnchor.SPECULAR
        )
        val actualSpecular = actualAnchorGains(fixture, map, ToneAnchor.SPECULAR)
        val trustedShoulderCells = actualSpecular.indices.filter { cell ->
            fixture.packedStats[cell * CELL_STATS_STRIDE + STAT_P999] in 2f..3f
        }

        assertTrue("Expected trusted shoulder cells", trustedShoulderCells.isNotEmpty())
        trustedShoulderCells.forEach { cell ->
            val p999 = fixture.packedStats[cell * CELL_STATS_STRIDE + STAT_P999]
            val expectedOutput = p999 * expectedSpecular[cell]
            val actualOutput = p999 * actualSpecular[cell]
            assertTrue(
                "cell=$cell p999=$p999 expectedOutput=$expectedOutput actualOutput=$actualOutput",
                actualOutput + 0.025f >= expectedOutput
            )
        }

    }

    @Test
    fun fixedFusionPreservesOfficialShouldersAcrossSkyykingSet() {
        val fixturesByName = loadFixtures().associateBy { it.sourceName }
        val results = denseShoulderCases().flatMap { case ->
            val fixture = fixturesByName[case.name] ?: error("Missing fixture ${case.name}")
            val map = DngHdrProfileGainTableGenerator.forCellStats(
                width = fixture.width,
                height = fixture.height,
                baselineExposureEv = fixture.baselineExposureEv,
                packedCellStats = fixture.packedStats,
            ) ?: error("Expected Google PGTM for ${case.name}")
            listOf(0.25f, 0.50f, 0.75f).mapIndexed { index, tableInput ->
                val actual = percentile(
                    FloatArray(fixture.cellCount) { cell -> sampleGain(map, tableInput, cell) },
                    0.50f,
                )
                DenseShoulderResult(
                    name = case.name,
                    tableInput = tableInput,
                    expectedGain = case.officialMedianGains[index],
                    actualGain = actual,
                    errorEv = abs(log2(actual / case.officialMedianGains[index])),
                )
            }
        }
        assertTrue(
            results.joinToString("\n") { result ->
                "${result.name} t=${result.tableInput} expected=${result.expectedGain} " +
                    "actual=${result.actualGain} errorEv=${result.errorEv}"
            },
            results.all { it.errorEv <= 0.38f },
        )
    }

    @Test
    fun generatedMapsMatchEmbeddedSemanticToneDistributions() {
        val failures = mutableListOf<String>()
        loadFixtures().forEach { fixture ->
            val map = generateMap(fixture)
            assertTrue("${fixture.sourceName} invalid map", map.isValid)
            assertMapOutputsMonotonic(map, fixture.sourceName)
            assertOfficialInputWeights(map.mapInputWeights, fixture.sourceName)

            val scaleError = relativeError(map.mapInputWeights.sum(), fixture.inputScale)
            if (scaleError > MAX_INPUT_SCALE_RELATIVE_ERROR) {
                failures += "${fixture.sourceName} inputScale expected=${fixture.inputScale} " +
                    "actual=${map.mapInputWeights.sum()} relativeError=$scaleError"
            }

            ToneAnchor.entries.forEach { anchor ->
                val expected = anchorGains(
                    source = fixture.expectedGains,
                    cellCount = fixture.cellCount,
                    anchor = anchor
                )
                val actual = actualAnchorGains(fixture, map, anchor)
                DISTRIBUTION_PERCENTILES.forEach { percentile ->
                    val expectedGain = percentile(expected, percentile)
                    val actualGain = percentile(actual, percentile)
                    val errorEv = gainErrorEv(actualGain, expectedGain)
                    val tolerance = when (percentile) {
                        0.50f -> MAX_MEDIAN_GAIN_ERROR_EV
                        else -> MAX_SPATIAL_QUANTILE_GAIN_ERROR_EV
                    }
                    if (errorEv > tolerance) {
                        failures += "${fixture.sourceName} ${anchor.label} p${(percentile * 100).toInt()} " +
                            "expected=$expectedGain actual=$actualGain errorEv=$errorEv toleranceEv=$tolerance"
                    }
                }
            }
        }
        assertTrue(failures.joinToString(separator = "\n"), failures.isEmpty())
    }

    @Test
    fun generatedMapsMatchEmbeddedPerCellToneShape() {
        val failures = mutableListOf<String>()
        loadFixtures().forEach { fixture ->
            val map = generateMap(fixture)
            ToneAnchor.entries
                .filterNot { it == ToneAnchor.ENDPOINT }
                .forEach { anchor ->
                    val expected = anchorGains(
                        source = fixture.expectedGains,
                        cellCount = fixture.cellCount,
                        anchor = anchor
                    )
                    val actual = actualAnchorGains(fixture, map, anchor)
                    val rmseEv = logGainRmseEv(actual, expected)
                    if (rmseEv > MAX_PER_CELL_GAIN_RMSE_EV) {
                        failures += "${fixture.sourceName} ${anchor.label} perCellRmseEv=$rmseEv " +
                            "toleranceEv=$MAX_PER_CELL_GAIN_RMSE_EV"
                    }
                }
        }
        assertTrue(failures.joinToString(separator = "\n"), failures.isEmpty())
    }

    private fun generateMap(fixture: PgtmFixture): DngProfileGainTableMap {
        return DngHdrProfileGainTableGenerator.forCellStats(
            width = fixture.width,
            height = fixture.height,
            baselineExposureEv = fixture.baselineExposureEv,
            packedCellStats = fixture.packedStats
        ) ?: error("Expected PGTM for ${fixture.sourceName}")
    }

    private fun actualAnchorGains(
        fixture: PgtmFixture,
        map: DngProfileGainTableMap,
        anchor: ToneAnchor,
    ): FloatArray {
        val inputScale = map.mapInputWeights.sum()
        return FloatArray(fixture.cellCount) { cell ->
            val sceneSignal = sceneSignalForAnchor(fixture, cell, anchor, inputScale)
            val tableInput = if (anchor == ToneAnchor.ENDPOINT) 1f else sceneSignal * inputScale
            sampleGain(map, tableInput, cell)
        }
    }

    private fun assertEmbeddedSemanticOutputsMonotonic(fixture: PgtmFixture) {
        for (cell in 0 until fixture.cellCount) {
            var previousOutput = 0f
            ToneAnchor.entries.forEach { anchor ->
                val sceneSignal = sceneSignalForAnchor(fixture, cell, anchor, fixture.inputScale)
                val gain = fixture.expectedGains[cell * fixture.anchorCount + anchor.ordinal]
                val tableInput = if (anchor == ToneAnchor.ENDPOINT) {
                    1f
                } else {
                    (sceneSignal * fixture.inputScale).coerceIn(0f, 1f)
                }
                val output = tableInput * gain
                assertTrue(
                    "${fixture.sourceName} cell=$cell anchor=${anchor.label} output=$output previous=$previousOutput",
                    output + OUTPUT_EPS >= previousOutput
                )
                previousOutput = max(previousOutput, output)
            }
        }
    }

    private fun assertMapOutputsMonotonic(map: DngProfileGainTableMap, sourceName: String) {
        for (cell in 0 until map.mapPointsH * map.mapPointsV) {
            var previousOutput = 0f
            for (index in 0 until map.mapPointsN) {
                val input = tableInputForIndex(index, map.mapPointsN)
                val output = input * map.gains[cell * map.mapPointsN + index]
                assertTrue(
                    "$sourceName cell=$cell index=$index output=$output previous=$previousOutput",
                    output + OUTPUT_EPS >= previousOutput
                )
                previousOutput = max(previousOutput, output)
            }
        }
    }

    private fun sceneSignalForAnchor(
        fixture: PgtmFixture,
        cell: Int,
        anchor: ToneAnchor,
        inputScale: Float,
    ): Float {
        val offset = cell * CELL_STATS_STRIDE
        val p10 = fixture.packedStats[offset + STAT_P10].coerceIn(0f, 1f)
        val p50 = max(p10, fixture.packedStats[offset + STAT_P50].coerceIn(0f, 1f))
        val p90 = max(p50, fixture.packedStats[offset + STAT_P90].coerceIn(0f, 1f))
        val p98 = max(p90, fixture.packedStats[offset + STAT_P98].coerceIn(0f, 1f))
        val p995 = max(p98, fixture.packedStats[offset + STAT_P995].takeIf { it > 0f } ?: p98)
        val p999 = max(p995, fixture.packedStats[offset + STAT_P999].takeIf { it > 0f } ?: p995)
        return when (anchor) {
            ToneAnchor.BLACK -> 0f
            ToneAnchor.SHADOW -> p10
            ToneAnchor.DARK -> 0.5f * (p10 + p50)
            ToneAnchor.MEDIAN -> p50
            ToneAnchor.BRIGHT -> p90
            ToneAnchor.HIGHLIGHT -> p98
            ToneAnchor.WHITE -> p995
            ToneAnchor.SPECULAR -> p999
            ToneAnchor.ENDPOINT -> 1f / inputScale.coerceAtLeast(1e-6f)
        }
    }

    private fun anchorGains(
        source: FloatArray,
        cellCount: Int,
        anchor: ToneAnchor,
    ): FloatArray {
        return FloatArray(cellCount) { cell ->
            source[cell * ToneAnchor.entries.size + anchor.ordinal]
        }
    }

    private fun cellStats(fixture: PgtmFixture, stat: Int): FloatArray {
        return FloatArray(fixture.cellCount) { cell ->
            fixture.packedStats[cell * CELL_STATS_STRIDE + stat]
        }
    }

    private fun sampleGain(map: DngProfileGainTableMap, input: Float, cell: Int): Float {
        val scaled = input.coerceIn(0f, 1f) * map.mapPointsN.coerceAtLeast(1)
        val index0 = scaled.toInt().coerceIn(0, map.mapPointsN - 1)
        val index1 = (index0 + 1).coerceIn(0, map.mapPointsN - 1)
        val fraction = scaled - index0
        val offset = cell.coerceIn(0, map.mapPointsH * map.mapPointsV - 1) * map.mapPointsN
        return map.gains[offset + index0] * (1f - fraction) +
            map.gains[offset + index1] * fraction
    }

    private fun tableInputForIndex(index: Int, pointCount: Int): Float {
        if (pointCount <= 1) return 0f
        return if (index == pointCount - 1) 1f else index.toFloat() / pointCount.toFloat()
    }

    private fun assertOfficialInputWeights(weights: FloatArray, sourceName: String) {
        val sum = weights.sum()
        assertTrue("$sourceName invalid weight sum=$sum", sum.isFinite() && sum > 0f)
        OFFICIAL_INPUT_WEIGHTS.forEachIndexed { index, expected ->
            assertEquals("$sourceName weight[$index]", expected, weights[index] / sum, 0.0001f)
        }
    }

    private fun percentile(values: FloatArray, percentile: Float): Float {
        if (values.isEmpty()) return 0f
        val sorted = values.copyOf().also { it.sort() }
        val rank = (sorted.size - 1).toFloat() * percentile.coerceIn(0f, 1f)
        val lower = floor(rank).toInt()
        val upper = ceil(rank).toInt()
        if (lower == upper) return sorted[lower]
        return sorted[lower] * (upper - rank) + sorted[upper] * (rank - lower)
    }

    private fun relativeError(actual: Float, expected: Float): Float {
        return abs(actual - expected) / max(abs(expected), 1e-6f)
    }

    private fun gainErrorEv(actual: Float, expected: Float): Float {
        return abs(log2(actual.coerceAtLeast(1e-6f) / expected.coerceAtLeast(1e-6f)))
    }

    private fun logGainRmseEv(actual: FloatArray, expected: FloatArray): Float {
        require(actual.size == expected.size)
        val meanSquare = actual.indices.sumOf { index ->
            val error = log2(actual[index].coerceAtLeast(1e-6f) / expected[index].coerceAtLeast(1e-6f))
            (error * error).toDouble()
        } / actual.size.coerceAtLeast(1).toDouble()
        return sqrt(meanSquare).toFloat()
    }

    private fun log2(value: Float): Float {
        return (ln(value.coerceAtLeast(1e-6f).toDouble()) / ln(2.0)).toFloat()
    }

    private fun denseShoulderCases(): List<DenseShoulderCase> = listOf(
        denseShoulderCase("Skyyking_20260711_184627.RAW-02.ORIGINAL", 0.331765622f, 0.205544580f, 0.152909992f),
        denseShoulderCase("Skyyking_20260711_184751.RAW-02.ORIGINAL", 0.462672237f, 0.337412789f, 0.272237092f),
        denseShoulderCase("Skyyking_20260711_184953.RAW-02.ORIGINAL", 0.915177912f, 0.544002324f, 0.395905923f),
        denseShoulderCase("Skyyking_20260711_185653.RAW-02.ORIGINAL", 0.213499438f, 0.181819726f, 0.162513237f),
        denseShoulderCase("Skyyking_20260711_185704.RAW-02.ORIGINAL", 0.163654307f, 0.101506390f, 0.075539880f),
        denseShoulderCase("Skyyking_20260711_185836.RAW-02.ORIGINAL", 0.522830814f, 0.433588199f, 0.374911249f),
        denseShoulderCase("Skyyking_20260712_105529.RAW-02.ORIGINAL", 0.332546350f, 0.203987684f, 0.150961947f),
        denseShoulderCase("Skyyking_20260713_232945.RAW-02.ORIGINAL", 0.504472025f, 0.425721936f, 0.372749154f),
        denseShoulderCase("Skyyking_20260714_083737.RAW-02.ORIGINAL", 0.735527232f, 0.438027993f, 0.319880389f),
        denseShoulderCase("Skyyking_20260714_092416.RAW-02.ORIGINAL", 0.243842043f, 0.142250773f, 0.102864855f),
        denseShoulderCase("Skyyking_20260714_123251.RAW-02.ORIGINAL", 0.259386316f, 0.154736947f, 0.113109255f),
        denseShoulderCase("Skyyking_20260714_151021.RAW-02.ORIGINAL", 0.411366213f, 0.272355564f, 0.209032677f),
    )

    private fun denseShoulderCase(
        name: String,
        gain25: Float,
        gain50: Float,
        gain75: Float,
    ) = DenseShoulderCase(name, floatArrayOf(gain25, gain50, gain75))

    private fun loadFixtures(): List<PgtmFixture> = FIXTURE_RESOURCES.map(::loadFixture)

    private fun loadFixture(resourceName: String): PgtmFixture {
        val bytes = requireNotNull(javaClass.getResourceAsStream(resourceName)) {
            "Missing PGTM fixture $resourceName"
        }.use { it.readBytes() }
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        val magic = ByteArray(FIXTURE_MAGIC.size).also(buffer::get)
        require(magic.contentEquals(FIXTURE_MAGIC)) { "Invalid PGTM fixture $resourceName" }
        val width = buffer.int
        val height = buffer.int
        val baselineExposureEv = buffer.float
        val mapPointsH = buffer.int
        val mapPointsV = buffer.int
        val anchorCount = buffer.int
        val statCount = buffer.int
        val gainCount = buffer.int
        val weights = FloatArray(5) { buffer.float }
        val gamma = buffer.float
        val packedStats = FloatArray(statCount) { buffer.float }
        val expectedGains = FloatArray(gainCount) { buffer.float }
        require(!buffer.hasRemaining()) { "Unexpected trailing data in $resourceName" }
        return PgtmFixture(
            sourceName = resourceName.substringAfterLast('/').substringBefore(".pgtfixture"),
            width = width,
            height = height,
            baselineExposureEv = baselineExposureEv,
            mapPointsH = mapPointsH,
            mapPointsV = mapPointsV,
            anchorCount = anchorCount,
            inputWeights = weights,
            gamma = gamma,
            packedStats = packedStats,
            expectedGains = expectedGains
        )
    }

    private enum class ToneAnchor(val label: String) {
        BLACK("black"),
        SHADOW("shadow-p10"),
        DARK("dark-p10-p50"),
        MEDIAN("median-p50"),
        BRIGHT("bright-p90"),
        HIGHLIGHT("highlight-p98"),
        WHITE("white-p995"),
        SPECULAR("specular-p999"),
        ENDPOINT("table-endpoint"),
    }

    private data class PgtmFixture(
        val sourceName: String,
        val width: Int,
        val height: Int,
        val baselineExposureEv: Float,
        val mapPointsH: Int,
        val mapPointsV: Int,
        val anchorCount: Int,
        val inputWeights: FloatArray,
        val gamma: Float,
        val packedStats: FloatArray,
        val expectedGains: FloatArray,
    ) {
        val cellCount: Int get() = mapPointsH * mapPointsV
        val inputScale: Float get() = inputWeights.sum()
    }

    private data class DenseShoulderCase(
        val name: String,
        val officialMedianGains: FloatArray,
    )

    private data class DenseShoulderResult(
        val name: String,
        val tableInput: Float,
        val expectedGain: Float,
        val actualGain: Float,
        val errorEv: Float,
    )

    private companion object {
        private const val CELL_STATS_STRIDE = 8
        private const val STAT_P10 = 0
        private const val STAT_P50 = 1
        private const val STAT_P90 = 2
        private const val STAT_P98 = 3
        private const val STAT_P995 = 6
        private const val STAT_P999 = 7
        private const val OUTPUT_EPS = 0.0001f
        private const val MAX_INPUT_SCALE_RELATIVE_ERROR = 0.12f
        private const val MAX_MEDIAN_GAIN_ERROR_EV = 0.22f
        private const val MAX_SPATIAL_QUANTILE_GAIN_ERROR_EV = 0.38f
        private const val MAX_PER_CELL_GAIN_RMSE_EV = 0.48f

        private val FIXTURE_MAGIC = "PGTFIX2\u0000".toByteArray(Charsets.US_ASCII)
        private const val BIMODAL_CAPTURE_RESOURCE =
            "/pgtm/captures/PhotonCamera_20260715_173013.pgtfixture"
        private val DISTRIBUTION_PERCENTILES = floatArrayOf(0.10f, 0.50f, 0.90f)
        private val OFFICIAL_INPUT_WEIGHTS = floatArrayOf(0.1495f, 0.2935f, 0.0570f, 0.1250f, 0.3750f)
        private val FIXTURE_RESOURCES = listOf(
            "/pgtm/skyyking/Skyyking_20260711_184627.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260711_184751.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260711_184953.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260711_185653.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260711_185704.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260711_185836.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260712_105529.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260713_232945.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260714_083737.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260714_092416.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260714_123251.RAW-02.ORIGINAL.pgtfixture",
            "/pgtm/skyyking/Skyyking_20260714_151021.RAW-02.ORIGINAL.pgtfixture",
        )
    }
}
