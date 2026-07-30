package com.hinnka.mycamera.lut.creator

import kotlin.math.abs
import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertThrows
import org.junit.Assert.assertTrue
import org.junit.Test

class LutGeneratorTest {
    @Test
    fun pavaNonDecreasing_returnsClosestL2Projection() {
        val actual = LutGenerator.pavaNonDecreasing(floatArrayOf(0.2f, 0.9f, 0.3f))

        assertArrayEquals(floatArrayOf(0.2f, 0.6f, 0.6f), actual, 1e-6f)
    }

    @Test
    fun primaryProjection_removesEveryPrimaryAxisViolation() {
        val size = 3
        val lut = identityLut(size)
        lut[offset(size, b = 1, g = 1, r = 1)] = 0.9f
        lut[offset(size, b = 1, g = 1, r = 2)] = 0.2f
        lut[offset(size, b = 1, g = 1, r = 1) + 1] = 0.9f
        lut[offset(size, b = 1, g = 2, r = 1) + 1] = 0.2f
        lut[offset(size, b = 1, g = 1, r = 1) + 2] = 0.9f
        lut[offset(size, b = 2, g = 1, r = 1) + 2] = 0.2f

        val projected = LutGenerator.projectPrimaryChannelsPava(lut, size)

        assertEquals(0f, LutGenerator.maxPrimaryMonotonicViolation(projected, size), 1e-6f)
    }

    @Test
    fun identityInferredPairRecipe_staysIdentity() {
        val recipe = inferredPairRecipe { source ->
            floatArrayOf(source.r, source.g, source.b)
        }
        val size = 9

        val actual = LutGenerator.generateLut(recipe, size)
        val expected = identityLut(size)
        val maxDifference = actual.indices.maxOf { abs(actual[it] - expected[it]) }

        assertTrue("Identity drift was $maxDifference", maxDifference < 2e-4f)
    }

    @Test
    fun strongCoherentStyle_isNotPulledBackTowardIdentity() {
        val recipe = inferredPairRecipe { source ->
            floatArrayOf(
                (0.10f + source.r * 0.90f).coerceIn(0f, 1f),
                (source.g * 0.80f).coerceIn(0f, 1f),
                (0.05f + source.b * 0.65f).coerceIn(0f, 1f)
            )
        }
        val size = 9

        val actual = LutGenerator.generateLut(recipe, size)
        val middle = offset(size, b = 4, g = 4, r = 4)

        assertTrue(actual[middle] - actual[middle + 1] > 0.10f)
        assertTrue(actual[middle] > 0.52f)
        assertTrue(actual[middle + 1] < 0.44f)
    }

    @Test
    fun monochromeRecipe_isExactlyNeutralAndMonotonicOnAllAxes() {
        val recipe = inferredPairRecipe(
            isMonochrome = true
        ) { source ->
            val luma =
                source.r * 0.2126f + source.g * 0.7152f + source.b * 0.0722f
            val target = (0.08f + luma * 0.82f).coerceIn(0f, 1f)
            floatArrayOf(target, target, target)
        }
        val size = 7

        val actual = LutGenerator.generateLut(recipe, size)

        for (index in actual.indices step 3) {
            assertEquals(actual[index], actual[index + 1], 0f)
            assertEquals(actual[index], actual[index + 2], 0f)
        }
        assertScalarMonotonic(actual, size)
    }

    @Test
    fun nonFiniteControlPoint_isRejected() {
        val recipe = LutRecipe(
            controlPoints = listOf(
                ControlPoint(
                    sourceR = Float.NaN,
                    sourceG = 0f,
                    sourceB = 0f,
                    targetR = 0f,
                    targetG = 0f,
                    targetB = 0f
                )
            )
        )

        assertThrows(IllegalArgumentException::class.java) {
            LutGenerator.generateLut(recipe, size = 3)
        }
    }

    private data class SourceSample(
        val r: Float,
        val g: Float,
        val b: Float
    )

    private fun inferredPairRecipe(
        isMonochrome: Boolean = false,
        target: (SourceSample) -> FloatArray
    ): LutRecipe = LutRecipe(
        controlPoints = sourceSamples().map { source ->
            val targetRgb = target(source)
            ControlPoint(
                sourceR = source.r,
                sourceG = source.g,
                sourceB = source.b,
                targetR = targetRgb[0],
                targetG = targetRgb[1],
                targetB = targetRgb[2],
                matchConfidence = 1f
            )
        },
        isMonochrome = isMonochrome
    )

    private fun sourceSamples(): List<SourceSample> = buildList {
        val levels = floatArrayOf(0f, 0.5f, 1f)
        for (b in levels) {
            for (g in levels) {
                for (r in levels) {
                    add(SourceSample(r, g, b))
                }
            }
        }
    }

    private fun identityLut(size: Int): FloatArray {
        val result = FloatArray(size * size * size * 3)
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val offset = offset(size, b, g, r)
                    result[offset] = r.toFloat() / (size - 1)
                    result[offset + 1] = g.toFloat() / (size - 1)
                    result[offset + 2] = b.toFloat() / (size - 1)
                }
            }
        }
        return result
    }

    private fun assertScalarMonotonic(lut: FloatArray, size: Int) {
        fun gray(b: Int, g: Int, r: Int): Float = lut[offset(size, b, g, r)]

        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 1 until size) assertTrue(gray(b, g, r) + 1e-6f >= gray(b, g, r - 1))
            }
        }
        for (b in 0 until size) {
            for (r in 0 until size) {
                for (g in 1 until size) assertTrue(gray(b, g, r) + 1e-6f >= gray(b, g - 1, r))
            }
        }
        for (g in 0 until size) {
            for (r in 0 until size) {
                for (b in 1 until size) assertTrue(gray(b, g, r) + 1e-6f >= gray(b - 1, g, r))
            }
        }
    }

    private fun offset(size: Int, b: Int, g: Int, r: Int): Int =
        (b * size * size + g * size + r) * 3
}
