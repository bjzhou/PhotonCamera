package com.hinnka.mycamera.processor

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class RawStackFrameRegistrationEstimatorTest {
    @Test
    fun refinesGlobalTranslationFromTwoDimensionalScoreSurface() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)
        val centerX = 8f
        val centerY = -4f
        val expectedOffsetX = 0.30f
        val expectedOffsetY = -0.25f
        val candidates = buildList {
            for (gridY in -1..1) {
                for (gridX in -1..1) {
                    val x = gridX - expectedOffsetX
                    val y = gridY - expectedOffsetY
                    val score = 0.010f + 0.030f * (x * x + 1.2f * y * y + 0.2f * x * y)
                    add(
                        RawStackGlobalRegistrationCandidate(
                            dxRaw = centerX + gridX * 2f,
                            dyRaw = centerY + gridY * 2f,
                            score = score,
                            coverage = 0.92f,
                        )
                    )
                }
            }
            add(
                RawStackGlobalRegistrationCandidate(
                    dxRaw = centerX + 6f,
                    dyRaw = centerY,
                    score = 0.040f,
                    coverage = 0.92f,
                )
            )
        }

        val estimate = RawStackFrameRegistrationEstimator.estimateGlobalTranslation(setup, candidates)
        val matrix = estimate.candidateTransform.matrixAt(0)

        assertTrue(estimate.globalSubpixelRefined)
        assertEquals(centerX + expectedOffsetX * 2f, matrix[2], 0.001f)
        assertEquals(centerY + expectedOffsetY * 2f, matrix[5], 0.001f)
        assertEquals(centerX, estimate.globalDiscreteDxRaw, 0.001f)
        assertEquals(centerY, estimate.globalDiscreteDyRaw, 0.001f)
        assertEquals(0.040f, estimate.globalSecondScore, 0.001f)
        assertTrue(estimate.globalScoreMargin > 1f)
    }

    @Test
    fun estimatesGlobalImageTranslationInRawCoordinates() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)
        val estimate = RawStackFrameRegistrationEstimator.estimateGlobalTranslation(
            setup = setup,
            candidates = listOf(
                RawStackGlobalRegistrationCandidate(dxRaw = 8f, dyRaw = -4f, score = 0.010f, coverage = 0.92f),
                RawStackGlobalRegistrationCandidate(dxRaw = 4f, dyRaw = -4f, score = 0.018f, coverage = 0.91f),
                RawStackGlobalRegistrationCandidate(dxRaw = 12f, dyRaw = -4f, score = 0.021f, coverage = 0.90f),
            ),
        )
        val matrix = estimate.transform.matrixAt(0)

        assertFalse(estimate.forceIdentity)
        assertEquals(RawStackRegistrationSource.IMAGE_TRANSLATION, estimate.source)
        assertTrue(estimate.confidence >= setup.confidenceConfig.forceIdentityThreshold)
        assertEquals(8f, matrix[2], 0.0001f)
        assertEquals(-4f, matrix[5], 0.0001f)
        assertEquals(0.010f, estimate.globalBestScore, 0.0001f)
    }

    @Test
    fun forcesIdentityForWeakGlobalImageTranslationScore() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)
        val estimate = RawStackFrameRegistrationEstimator.estimateGlobalTranslation(
            setup = setup,
            candidates = listOf(
                RawStackGlobalRegistrationCandidate(dxRaw = 8f, dyRaw = -4f, score = 0.095f, coverage = 0.82f),
                RawStackGlobalRegistrationCandidate(dxRaw = 4f, dyRaw = -4f, score = 0.100f, coverage = 0.82f),
            ),
        )
        val matrix = estimate.transform.matrixAt(0)
        val candidateMatrix = estimate.candidateTransform.matrixAt(0)

        assertTrue(estimate.forceIdentity)
        assertEquals(RawStackRegistrationSource.IMAGE_TRANSLATION, estimate.source)
        assertTrue(estimate.confidence < setup.confidenceConfig.forceIdentityThreshold)
        assertEquals(0f, matrix[2], 0f)
        assertEquals(0f, matrix[5], 0f)
        assertEquals(8f, candidateMatrix[2], 0.0001f)
        assertEquals(-4f, candidateMatrix[5], 0.0001f)
    }

    @Test
    fun forcesIdentityWhenGlobalImageTranslationHasNoCandidates() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)
        val estimate = RawStackFrameRegistrationEstimator.estimateGlobalTranslation(
            setup = setup,
            candidates = emptyList(),
        )

        assertTrue(estimate.forceIdentity)
        assertEquals(RawStackRegistrationSource.IMAGE_TRANSLATION, estimate.source)
        assertEquals(0, estimate.confidence)
    }

    @Test
    fun estimatesGlobalTranslationInRawCoordinates() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)
        val samples = gridSamples(
            width = 4096,
            height = 3072,
            dx = 4f,
            dy = -2f,
        )

        val estimate = RawStackFrameRegistrationEstimator.estimate(setup, samples)
        val matrix = estimate.transform.matrixAt(0)

        assertFalse(estimate.forceIdentity)
        assertTrue(estimate.confidence >= setup.confidenceConfig.forceIdentityThreshold)
        assertEquals(1f, matrix[0], 0.0001f)
        assertEquals(0f, matrix[1], 0.0001f)
        assertEquals(4f, matrix[2], 0.0001f)
        assertEquals(0f, matrix[3], 0.0001f)
        assertEquals(1f, matrix[4], 0.0001f)
        assertEquals(-2f, matrix[5], 0.0001f)
        assertEquals(0f, matrix[6], 0.0001f)
        assertEquals(0f, matrix[7], 0.0001f)
        assertEquals(1f, matrix[8], 0.0001f)
    }

    @Test
    fun estimatesSmallAffineScaleAndTranslation() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)
        val samples = gridSamples(
            width = 4096,
            height = 3072,
            transform = { x, y ->
                val targetX = 1.0015f * x + 0.0004f * y + 3.0f
                val targetY = -0.0003f * x + 0.9985f * y - 1.5f
                targetX to targetY
            },
        )

        val estimate = RawStackFrameRegistrationEstimator.estimate(setup, samples)
        val matrix = estimate.transform.matrixAt(0)

        assertFalse(estimate.forceIdentity)
        assertEquals(1.0015f, matrix[0], 0.0003f)
        assertEquals(0.0004f, matrix[1], 0.0003f)
        assertEquals(3.0f, matrix[2], 0.08f)
        assertEquals(-0.0003f, matrix[3], 0.0003f)
        assertEquals(0.9985f, matrix[4], 0.0003f)
        assertEquals(-1.5f, matrix[5], 0.08f)
    }

    @Test
    fun forcesIdentityForIncoherentFlowField() {
        val setup = RawStackRegistrationResolver.resolve(4096, 3072)
        val samples = gridSamples(
            width = 4096,
            height = 3072,
            transform = { x, y ->
                val cell = ((x / 256f).toInt() + (y / 256f).toInt()) and 3
                val dx = when (cell) {
                    0 -> -18f
                    1 -> 14f
                    2 -> 7f
                    else -> -9f
                }
                val dy = when (cell) {
                    0 -> 11f
                    1 -> -13f
                    2 -> -6f
                    else -> 15f
                }
                x + dx to y + dy
            },
        )

        val estimate = RawStackFrameRegistrationEstimator.estimate(setup, samples)
        val matrix = estimate.transform.matrixAt(0)

        assertTrue(estimate.forceIdentity)
        assertTrue(estimate.confidence < setup.confidenceConfig.forceIdentityThreshold)
        assertEquals(1f, matrix[0], 0f)
        assertEquals(0f, matrix[1], 0f)
        assertEquals(0f, matrix[2], 0f)
        assertEquals(0f, matrix[3], 0f)
        assertEquals(1f, matrix[4], 0f)
        assertEquals(0f, matrix[5], 0f)
        assertEquals(0f, matrix[6], 0f)
        assertEquals(0f, matrix[7], 0f)
        assertEquals(1f, matrix[8], 0f)
    }

    private fun gridSamples(
        width: Int,
        height: Int,
        dx: Float = 0f,
        dy: Float = 0f,
    ): List<RawStackRegistrationSample> {
        return gridSamples(width, height) { x, y -> x + dx to y + dy }
    }

    private fun gridSamples(
        width: Int,
        height: Int,
        transform: (Float, Float) -> Pair<Float, Float>,
    ): List<RawStackRegistrationSample> {
        val samples = ArrayList<RawStackRegistrationSample>()
        for (y in 160 until height step 320) {
            for (x in 160 until width step 320) {
                val target = transform(x.toFloat(), y.toFloat())
                samples += RawStackRegistrationSample(
                    referenceX = x.toFloat(),
                    referenceY = y.toFloat(),
                    targetX = target.first,
                    targetY = target.second,
                    robustness = 1f,
                    tileMask = 1f,
                    residual = 0f,
                    detail = 0.08f,
                )
            }
        }
        return samples
    }
}
