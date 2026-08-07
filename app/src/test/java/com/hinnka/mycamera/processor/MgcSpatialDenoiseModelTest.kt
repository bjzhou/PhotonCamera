package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcSpatialDenoiseModelTest {
    @Test
    fun negligibleGreenDiagnosticRatioProducesIdentitySpectrum() {
        val result = checkNotNull(
            MgcSpatialDenoiseModel.fromBayerDiagnostics(
                outputWeightsSumTotalDiag0 = floatArrayOf(4f, 100f, 8f),
                outputWeightsSumTotalDiag1 = floatArrayOf(1f, 0.02f, 2f),
            ),
        )

        assertEquals(0.00005f, result.diagnosticRatio, 1e-8f)
        assertEquals(0f, result.outerTap, 0f)
        assertEquals(1f, result.centerTap, 0f)
        result.correlation.forEach { assertEquals(1f, it, 0f) }
    }

    @Test
    fun ratioJustAboveIdentityThresholdKeepsFiniteCorrelation() {
        val result = checkNotNull(
            MgcSpatialDenoiseModel.fromBayerDiagnostics(
                outputWeightsSumTotalDiag0 = floatArrayOf(6.97281f, 13.9472f, 6.97281f),
                outputWeightsSumTotalDiag1 = floatArrayOf(0f, 0.00577806f, 0f),
            ),
        )

        assertEquals(0.00010357025f, result.diagnosticRatio, 1e-10f)
        assertTrue(result.outerTap > 0f)
        assertTrue(result.centerTap > 0f)
        assertEquals(1.0, result.correlation.average(), 1e-6)
        assertTrue(result.correlation.all { it.isFinite() && it >= 0f })
    }

    @Test
    fun savannahFitUsesGreenDiagnosticsAndNormalizesPowerSpectrum() {
        val nullableResult =
            MgcSpatialDenoiseModel.fromBayerDiagnostics(
                outputWeightsSumTotalDiag0 = floatArrayOf(1f, 100f, 1f),
                outputWeightsSumTotalDiag1 = floatArrayOf(0f, 40f, 0f),
            )
        assertNotNull(nullableResult)
        val result = checkNotNull(nullableResult)

        assertEquals(0.1f, result.diagnosticRatio, 1e-7f)
        assertEquals(0.1227826f, result.outerTap, 2e-6f)
        assertEquals(0.7755716f, result.centerTap, 2e-6f)
        assertEquals(1.0, result.correlation.average(), 1e-6)
        assertTrue(result.correlation.all { it.isFinite() && it >= 0f })
        for (index in 0 until 64) {
            assertEquals(
                result.correlation[index],
                result.correlation[127 - index],
                2e-6f,
            )
        }
    }

    @Test
    fun redAndBlueDiagnosticsDoNotAffectBayerSavannahFit() {
        val expected = checkNotNull(
            MgcSpatialDenoiseModel.fromBayerDiagnostics(
                outputWeightsSumTotalDiag0 = floatArrayOf(1f, 100f, 1f),
                outputWeightsSumTotalDiag1 = floatArrayOf(0f, 40f, 0f),
            ),
        )
        val actual = checkNotNull(
            MgcSpatialDenoiseModel.fromBayerDiagnostics(
                outputWeightsSumTotalDiag0 = floatArrayOf(500f, 100f, 700f),
                outputWeightsSumTotalDiag1 = floatArrayOf(300f, 40f, 600f),
            ),
        )

        assertEquals(expected.diagnosticRatio, actual.diagnosticRatio, 0f)
        expected.correlation.indices.forEach { index ->
            assertEquals(expected.correlation[index], actual.correlation[index], 0f)
        }
    }

    @Test
    fun malformedDiagnosticsAreRejected() {
        assertEquals(
            null,
            MgcSpatialDenoiseModel.fromBayerDiagnostics(
                outputWeightsSumTotalDiag0 = floatArrayOf(1f, 2f),
                outputWeightsSumTotalDiag1 = floatArrayOf(1f, 2f, 3f),
            ),
        )
        assertEquals(
            null,
            MgcSpatialDenoiseModel.fromBayerDiagnostics(
                outputWeightsSumTotalDiag0 =
                    floatArrayOf(1f, Float.NaN, 3f),
                outputWeightsSumTotalDiag1 = floatArrayOf(1f, 2f, 3f),
            ),
        )
        assertEquals(
            null,
            MgcSpatialDenoiseModel.fromBayerDiagnostics(
                outputWeightsSumTotalDiag0 = floatArrayOf(1f, 2f, 3f),
                outputWeightsSumTotalDiag1 = floatArrayOf(1f, -1f, 3f),
            ),
        )
    }
}
