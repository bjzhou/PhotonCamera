package com.hinnka.mycamera.processor

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class GlesMgcRawBaseFrameSelectorTest {
    @Test
    fun sharpnessObjectiveUsesRecoveredNoMotionNoiseBound() {
        assertEquals(
            0.025,
            GlesMgcRawBaseFrameSelector.sharpnessScore(
                sqrGradientSum = 12.0,
                noiseCorrectionTerm = 2.0,
                sampleCount = 404.0,
            ),
            1.0e-12,
        )
    }

    @Test
    fun eightForwardBurstCandidatesPruneLatestBeforeChoosingSharpest() {
        val measurements = (0 until 8).associateWith { index ->
            measurement(index.toDouble())
        }

        val selection = GlesMgcRawBaseFrameSelector.selectFromMeasurements(
            normalIndices = IntArray(8) { it },
            timestampsNs = LongArray(8) { it.toLong() },
            measurements = measurements,
        )

        requireNotNull(selection)
        assertEquals(7, selection.prunedLatestIndex)
        assertArrayEquals(intArrayOf(0, 1, 2, 3, 4, 5, 6), selection.candidateIndices)
        assertEquals(6, selection.referenceIndex)
    }

    @Test
    fun fewerThanEightCandidatesKeepLatestEligible() {
        val measurements = (0 until 7).associateWith { index ->
            measurement(index.toDouble())
        }

        val selection = GlesMgcRawBaseFrameSelector.selectFromMeasurements(
            normalIndices = IntArray(7) { it },
            timestampsNs = LongArray(7) { it.toLong() },
            measurements = measurements,
        )

        requireNotNull(selection)
        assertEquals(null, selection.prunedLatestIndex)
        assertEquals(6, selection.referenceIndex)
    }

    @Test
    fun equalScoresKeepEarlierCandidateRegardlessOfInputOrder() {
        val selection = GlesMgcRawBaseFrameSelector.selectFromMeasurements(
            normalIndices = intArrayOf(6, 4, 2),
            timestampsNs = longArrayOf(0L, 0L, 10L, 0L, 20L, 0L, 30L),
            measurements = mapOf(
                2 to measurement(5.0),
                4 to measurement(5.0),
                6 to measurement(4.0),
            ),
        )

        requireNotNull(selection)
        assertArrayEquals(intArrayOf(2, 4, 6), selection.candidateIndices)
        assertEquals(2, selection.referenceIndex)
    }

    @Test
    fun selectorShadersStayWithinGles31BaselineAndAvoidFloatAtomics() {
        val measure = GlesMgcRawBaseFrameShaders.MEASURE
        val reduce = GlesMgcRawBaseFrameShaders.REDUCE

        GlesComputeWorkGroup.requireBaselineCompatible(measure, "MGC_RAW_BASE_MEASURE")
        GlesComputeWorkGroup.requireBaselineCompatible(reduce, "MGC_RAW_BASE_REDUCE")
        assertTrue(measure.contains("uniform highp usampler2D uRaw"))
        assertTrue(measure.contains("texelFetch(uRaw"))
        assertTrue(measure.contains("dot(gradient, gradient)"))
        assertTrue(measure.contains("diagonalLeft - center"))
        assertTrue(measure.contains("diagonalRight - center"))
        assertFalse(measure.contains("uSampleStep"))
        assertTrue(reduce.contains("local_size_x = 128"))
        assertFalse(measure.contains("atomic"))
        assertFalse(reduce.contains("atomic"))
    }

    private fun measurement(score: Double): GlesMgcRawSharpnessMeasurement =
        GlesMgcRawSharpnessMeasurement(
            sqrGradientSum = score,
            noiseCorrectionTerm = 0.0,
            saturatedPixelsFraction = 0.0,
            sharpnessScore = score,
            sampleCount = 100,
        )
}
