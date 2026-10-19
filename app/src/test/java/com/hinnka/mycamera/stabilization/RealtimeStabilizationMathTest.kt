package com.hinnka.mycamera.stabilization

import com.hinnka.mycamera.lut.MgcEisMesh
import org.junit.Assert.assertEquals
import org.junit.Test

class RealtimeStabilizationMathTest {
    @Test
    fun stabilizationLookaheadAllowsZeroAndCapsAtTen() {
        assertEquals(0, normalizeStabilizationLookahead(0))
        assertEquals(0, normalizeStabilizationLookahead(-1))
        assertEquals(10, normalizeStabilizationLookahead(10))
        assertEquals(10, normalizeStabilizationLookahead(11))
        assertEquals(7, normalizeStabilizationLookahead(DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD))
    }

    @Test
    fun subThreeLookaheadUsesSafeEisSolverWindow() {
        assertEquals(3, effectiveStabilizationLookahead(0))
        assertEquals(3, effectiveStabilizationLookahead(1))
        assertEquals(3, effectiveStabilizationLookahead(2))
        assertEquals(3, effectiveStabilizationLookahead(3))
        assertEquals(10, effectiveStabilizationLookahead(10))
        assertEquals(10, effectiveStabilizationLookahead(11))
    }

    @Test
    fun identityNativeMatricesReproduceMgcTwentySixVertexStrip() {
        val matrices = FloatArray(STABILIZATION_ROW_COUNT * 9)
        repeat(STABILIZATION_ROW_COUNT) { row ->
            matrices[row * 9] = 1f
            matrices[row * 9 + 4] = 1f
            matrices[row * 9 + 8] = 1f
        }

        val positions = MgcEisMesh.warpedPositions(matrices)

        assertEquals((STABILIZATION_ROW_COUNT + 1) * 2 * 4, positions.size)
        assertEquals(-1f, positions[0], 0f)
        assertEquals(1f, positions[1], 0f)
        assertEquals(1f, positions[3], 0f)
        assertEquals(1f, positions[positions.size - 4], 0f)
        assertEquals(-1f, positions[positions.size - 3], 0f)
        assertEquals(1f, positions[positions.size - 1], 0f)
        assertEquals(STABILIZATION_ROW_COUNT * 6, MgcEisMesh.indices.size)
    }

    @Test
    fun rearNinetyDegreeSensorUsesMgcRawGyroOrder() {
        assertTripleEquals(
            Triple(1.0, 2.0, 3.0),
            remapMgcGyroForTest(1.0, 2.0, 3.0, 90, frontFacing = false),
        )
    }

    @Test
    fun rearTwoSeventyDegreeSensorNegatesMgcXYOnly() {
        assertTripleEquals(
            Triple(-1.0, -2.0, 3.0),
            remapMgcGyroForTest(1.0, 2.0, 3.0, 270, frontFacing = false),
        )
    }

    @Test
    fun frontZeroDegreeSensorUsesMgcAxisSwap() {
        assertTripleEquals(
            Triple(2.0, -1.0, 3.0),
            remapMgcGyroForTest(1.0, 2.0, 3.0, 0, frontFacing = true),
        )
    }

    private fun assertTripleEquals(
        expected: Triple<Double, Double, Double>,
        actual: Triple<Double, Double, Double>,
    ) {
        assertEquals(expected.first, actual.first, 1.0e-9)
        assertEquals(expected.second, actual.second, 1.0e-9)
        assertEquals(expected.third, actual.third, 1.0e-9)
    }
}
