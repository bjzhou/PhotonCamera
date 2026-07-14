package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Test
import kotlin.math.exp
import kotlin.math.ln

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
        assertEquals(1_000, stats.sampleCount)
    }
}
