package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test

class MgcSpatialDenoiseModelTest {
    @Test
    fun equalExposureModelUsesActualEffectiveMergeFactor() {
        val nullableResult =
            MgcSpatialDenoiseModel.fromEqualExposureMergeFactors(
                listOf(1f, 0.75f, 0.25f),
            )
        assertNotNull(nullableResult)
        val result = checkNotNull(nullableResult)

        assertEquals(2f, result.effectiveMergeFactor, 0f)
        assertEquals(2f / 3f, result.averageMergeFactor, 1e-7f)
        assertEquals(0.5f, result.noiseScale, 0f)
        assertEquals(1.0, result.correlation.average(), 1e-5)
        assertTrue(result.correlation.all { it.isFinite() && it >= 0f })
        for (index in 0 until 64) {
            assertEquals(
                result.correlation[index],
                result.correlation[127 - index],
                2e-5f,
            )
        }
    }

    @Test
    fun rejectsFactorsThatCannotComeFromEqualExposureR8MergeMasks() {
        assertEquals(
            null,
            MgcSpatialDenoiseModel.fromEqualExposureMergeFactors(
                listOf(0.9f, 0.5f),
            ),
        )
        assertEquals(
            null,
            MgcSpatialDenoiseModel.fromEqualExposureMergeFactors(
                listOf(1f, 1.01f),
            ),
        )
    }

    @Test
    fun highAcceptanceMergeKeepsEveryPyramidLevelAtPositiveEnergy() {
        // Regression for the 20-frame device trace:
        // average=0.8161901, effective=16.323803. The incorrectly paired logistic constants
        // produced negative level-zero energy and made MGC BuildChromaNoiseBuffers fail.
        val average = 0.8161901f
        val effective = average * 20f
        val remainingFactor = (effective - 1f) / 19f
        val result = checkNotNull(
            MgcSpatialDenoiseModel.fromEqualExposureMergeFactors(
                listOf(1f) + List(19) { remainingFactor },
            ),
        )

        assertTrue(result.correlation.all { it.isFinite() && it >= 0f })
        var spectrum = result.correlation
        val expectedDownsampledEnergy = floatArrayOf(
            1.7234538f,
            1.3296090f,
            1.1721125f,
            1.0857906f,
        )
        val expectedNativeEnergy = floatArrayOf(
            0.7600923f,
            0.4364758f,
            0.3620128f,
            0.3255170f,
        )
        val expectedPyramidEnergy = floatArrayOf(
            0.8330758f,
            0.9613993f,
            0.9919459f,
            1.0061622f,
        )
        repeat(4) {
            assertEquals(
                expectedDownsampledEnergy[it],
                downsamplingEnergy(spectrum, xFactor = 2, yFactor = 0),
                2e-4f,
            )
            assertEquals(
                expectedNativeEnergy[it],
                downsamplingEnergy(spectrum, xFactor = 1, yFactor = 0),
                2e-4f,
            )
            val advanced = advancePyramidCorrelation(spectrum)
            assertEquals(expectedPyramidEnergy[it], advanced.second, 2e-4f)
            spectrum = advanced.first
        }
    }

    private fun downsamplingEnergy(
        spectrum: FloatArray,
        xFactor: Int,
        yFactor: Int,
    ): Float {
        var total = 0.0
        for (outer in 0 until 128) {
            var innerSum = 0.0
            for (inner in 0 until 128) {
                val wrapped = (outer * yFactor + inner * xFactor) and 127
                val angle =
                    wrapped.toDouble() * Math.PI / 64.0 -
                        (xFactor + yFactor).toDouble() * Math.PI
                val cosine = kotlin.math.cos(angle)
                val response =
                    (1.0 - cosine * cosine) +
                        (cosine - 1.0) * (cosine - 1.0)
                innerSum += spectrum[inner] * response
            }
            total += innerSum * spectrum[outer]
        }
        return (total / 16384.0).toFloat()
    }

    private fun advancePyramidCorrelation(
        spectrum: FloatArray,
    ): Pair<FloatArray, Float> {
        val filter = floatArrayOf(
            -3f / 128f,
            -7f / 128f,
            17f / 128f,
            57f / 128f,
            57f / 128f,
            17f / 128f,
            -7f / 128f,
            -3f / 128f,
        )
        val filtered = FloatArray(128)
        var energy = 0.0
        for (frequency in 0 until 128) {
            var real = 0.0
            var imaginary = 0.0
            val omega =
                (frequency.toDouble() + 0.5) * 2.0 * Math.PI / 128.0 -
                    Math.PI
            for (tap in filter.indices) {
                real += filter[tap] * kotlin.math.cos(omega * tap)
                imaginary -= filter[tap] * kotlin.math.sin(omega * tap)
            }
            filtered[frequency] =
                spectrum[frequency] * (real * real + imaginary * imaginary).toFloat()
            energy += filtered[frequency]
        }
        val meanEnergy = (energy / 128.0).toFloat()
        return FloatArray(128) { filtered[it] / meanEnergy } to meanEnergy
    }
}
