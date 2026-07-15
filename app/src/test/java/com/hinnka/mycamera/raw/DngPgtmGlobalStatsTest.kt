package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import kotlin.math.exp
import kotlin.math.ln
import kotlin.math.pow

class DngPgtmGlobalStatsTest {
    @Test
    fun computesPercentilesFromSingleSamplePopulation() {
        val samples = FloatArray(1_000) { index -> (index + 1).toFloat() / 1_000f }

        val stats = DngPgtmGlobalStats.fromMutableSamples(samples, samples.size)

        assertNotNull(stats)
        stats ?: return
        assertEquals(0.100f, stats.p10, 1e-6f)
        assertEquals(0.500f, stats.p50, 1e-6f)
        assertEquals(0.900f, stats.p90, 1e-6f)
        assertEquals(0.980f, stats.p98, 1e-6f)
        assertEquals(0.995f, stats.p995, 1e-6f)
        assertEquals(0.999f, stats.p999, 1e-6f)
        assertEquals(1.000f, stats.maxInput, 1e-6f)
        assertEquals(0.081f, stats.highlightFraction, 1e-6f)
        assertEquals(0.5005f, stats.linearMean, 1e-6f)
        val expectedLogAverage = exp(
            (1..1_000).sumOf { value -> ln(value.toDouble() / 1_000.0) } / 1_000.0
        ).toFloat()
        assertEquals(expectedLogAverage, stats.logAverage, 1e-6f)
        assertTrue("shadowEdge=${stats.shadowEdge}", stats.shadowEdge > 0f)
        assertTrue(
            "shadowFoot=${stats.shadowFoot} shadowEdge=${stats.shadowEdge}",
            stats.shadowFoot in 0f..stats.shadowEdge
        )
        assertEquals(1_000, stats.sampleCount)
    }

    @Test
    fun shadowSlopeFootIgnoresMovementInsideSparseDarkTail() {
        fun samples(tailStartEv: Float): FloatArray {
            return FloatArray(1_000) { index ->
                val ev = if (index < 150) {
                    tailStartEv + 3f * index.toFloat() / 149f
                } else {
                    -4f + 3f * (index - 150).toFloat() / 849f
                }
                2.0f.pow(ev)
            }
        }

        val first = DngPgtmGlobalStats.fromMutableSamples(samples(-9f), 1_000)
            ?: error("Expected first stats")
        val second = DngPgtmGlobalStats.fromMutableSamples(samples(-10f), 1_000)
            ?: error("Expected second stats")
        val p10DeltaEv = kotlin.math.abs(log2(second.p10 / first.p10))
        val footDeltaEv = kotlin.math.abs(log2(second.shadowFoot / first.shadowFoot))

        assertTrue("p10DeltaEv=$p10DeltaEv", p10DeltaEv > 0.8f)
        assertTrue(
            "firstFoot=${first.shadowFoot} secondFoot=${second.shadowFoot} " +
                "footDeltaEv=$footDeltaEv",
            footDeltaEv < 0.2f
        )
    }

    private fun log2(value: Float): Float {
        return (ln(value.toDouble()) / ln(2.0)).toFloat()
    }
}
