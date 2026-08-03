package com.hinnka.mycamera.raw

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DngWarpRectilinearTest {
    private val malformedPhotonSample = floatArrayOf(
        1f,
        0.016676925f,
        0.001357187f,
        -0.0038023079f,
        0f,
        0f,
        0.5009297f,
        0.5010741f,
    )

    @Test
    fun optionalWarpThatMapsDefaultCropOutsideRawIsSkipped() {
        val decision = decide(malformedPhotonSample, DngWarpRectilinear.OPTIONAL_FLAG)

        assertFalse(decision.apply)
        assertEquals(
            DngWarpRectilinear.Rejection.OPTIONAL_REQUIRES_EDGE_CLAMPING,
            decision.rejection,
        )
    }

    @Test
    fun mandatoryWarpIsNotSilentlyDiscardedForCoverage() {
        val decision = decide(malformedPhotonSample, flags = 0)

        assertTrue(decision.apply)
        assertEquals(DngWarpRectilinear.Rejection.NONE, decision.rejection)
    }

    @Test
    fun normalizedRadialOffsetKeepsFullDefaultCropInsideSource() {
        val normalized = malformedPhotonSample.copyOf().also { it[0] = 0.984f }

        assertTrue(
            DngWarpRectilinear.hasSourceCoverage(
                parameters = normalized,
                width = WIDTH,
                height = HEIGHT,
                left = 0,
                top = 0,
                right = WIDTH,
                bottom = HEIGHT,
            )
        )
    }

    private fun decide(parameters: FloatArray, flags: Int): DngWarpRectilinear.Decision =
        DngWarpRectilinear.decide(
            parameters = parameters,
            flags = flags,
            width = WIDTH,
            height = HEIGHT,
            left = 0,
            top = 0,
            right = WIDTH,
            bottom = HEIGHT,
        )

    private companion object {
        const val WIDTH = 4032
        const val HEIGHT = 3024
    }
}
