package com.hinnka.mycamera.processor

import kotlin.math.max
import kotlin.math.roundToInt
import kotlin.math.sqrt

data class RawStackRegistrationSample(
    val referenceX: Float,
    val referenceY: Float,
    val targetX: Float,
    val targetY: Float,
    val robustness: Float,
    val tileMask: Float,
    val residual: Float,
    val detail: Float,
) {
    val weight: Float
        get() {
            if (!referenceX.isFinite() || !referenceY.isFinite() ||
                !targetX.isFinite() || !targetY.isFinite()
            ) {
                return 0f
            }
            val support = robustness.coerceIn(0f, 1f) * tileMask.coerceIn(0f, 1f)
            val detailWeight = (0.25f + detail.coerceAtLeast(0f) * 16f).coerceIn(0.25f, 1f)
            val residualWeight = 1f / (1f + residual.coerceAtLeast(0f) * 16f)
            return support * detailWeight * residualWeight
    }
}

data class RawStackGlobalRegistrationCandidate(
    val dxRaw: Float,
    val dyRaw: Float,
    val score: Float,
    val coverage: Float,
)

data class RawStackRegistrationEstimate(
    val transform: RawStackPerspectiveTransform,
    val candidateTransform: RawStackPerspectiveTransform = transform,
    val sampleCount: Int,
    val usedSampleCount: Int,
    val inlierRatio: Float,
    val meanResidualPx: Float,
    val residualP50Px: Float,
    val residualP90Px: Float,
    val source: RawStackRegistrationSource = RawStackRegistrationSource.FLOW_AFFINE,
    val globalBestScore: Float = Float.NaN,
    val globalSecondScore: Float = Float.NaN,
    val globalScoreMargin: Float = Float.NaN,
    val globalCoverage: Float = Float.NaN,
    val globalDiscreteDxRaw: Float = Float.NaN,
    val globalDiscreteDyRaw: Float = Float.NaN,
    val globalSubpixelRefined: Boolean = false,
) {
    val confidence: Int
        get() = transform.confidence

    val forceIdentity: Boolean
        get() = transform.forceIdentity
}

object RawStackFrameRegistrationEstimator {
    private data class RefinedGlobalTranslation(
        val dxRaw: Float,
        val dyRaw: Float,
        val refined: Boolean,
    )

    fun estimateGlobalTranslation(
        setup: RawStackRegistrationSetup,
        candidates: List<RawStackGlobalRegistrationCandidate>,
        stage: RawStackRegistrationStage = RawStackRegistrationStage.BLEND,
    ): RawStackRegistrationEstimate {
        val sortedCandidates = candidates
            .filter {
                it.dxRaw.isFinite() &&
                    it.dyRaw.isFinite() &&
                    it.score.isFinite() &&
                    it.coverage.isFinite() &&
                    it.coverage > 0f
            }
            .sortedBy { it.score }
        if (sortedCandidates.isEmpty()) {
            return identityEstimate(
                setup = setup,
                stage = stage,
                sampleCount = candidates.size,
                source = RawStackRegistrationSource.IMAGE_TRANSLATION,
            )
        }

        val best = sortedCandidates.first()
        val second = secondDistinctGlobalBasin(best, sortedCandidates)
        val secondScore = second?.score ?: Float.NaN
        val margin = if (secondScore.isFinite()) {
            ((secondScore - best.score) / max(best.score, GLOBAL_SCORE_EPSILON)).coerceAtLeast(0f)
        } else {
            Float.NaN
        }
        val rawConfidence = estimateGlobalConfidence(
            confidenceConfig = setup.confidenceConfig,
            score = best.score,
            scoreMargin = margin,
            coverage = best.coverage,
        )
        val refinedTranslation = refineGlobalTranslation(best, sortedCandidates)
        val fittedTransform = RawStackPerspectiveTransform.fromSingleMatrix(
            stage = stage,
            transformDefinedOnWidth = setup.sourceWidth,
            transformDefinedOnHeight = setup.sourceHeight,
            geometryColumns = setup.cvpPerspectiveGeometryColumns,
            geometryRows = setup.cvpPerspectiveGeometryRows,
            rowMajorMatrix = floatArrayOf(
                1f, 0f, refinedTranslation.dxRaw,
                0f, 1f, refinedTranslation.dyRaw,
                0f, 0f, 1f,
            ),
            rawConfidence = rawConfidence,
            confidenceConfig = setup.confidenceConfig,
        )
        val transform = if (fittedTransform.forceIdentity) {
            RawStackPerspectiveTransform.identity(
                stage = stage,
                transformDefinedOnWidth = setup.sourceWidth,
                transformDefinedOnHeight = setup.sourceHeight,
                geometryColumns = setup.cvpPerspectiveGeometryColumns,
                geometryRows = setup.cvpPerspectiveGeometryRows,
                rawConfidence = rawConfidence,
                confidenceConfig = setup.confidenceConfig,
            )
        } else {
            fittedTransform
        }
        return RawStackRegistrationEstimate(
            transform = transform,
            candidateTransform = fittedTransform,
            sampleCount = sortedCandidates.size,
            usedSampleCount = 1,
            inlierRatio = best.coverage.coerceIn(0f, 1f),
            meanResidualPx = Float.NaN,
            residualP50Px = Float.NaN,
            residualP90Px = Float.NaN,
            source = RawStackRegistrationSource.IMAGE_TRANSLATION,
            globalBestScore = best.score,
            globalSecondScore = secondScore,
            globalScoreMargin = margin,
            globalCoverage = best.coverage,
            globalDiscreteDxRaw = best.dxRaw,
            globalDiscreteDyRaw = best.dyRaw,
            globalSubpixelRefined = refinedTranslation.refined,
        )
    }

    /**
     * Refines the discrete minimum with the gradient and Hessian of the local
     * 3x3 score surface. The full 2D fit retains the xy term, which matters for
     * diagonal structure and avoids independently biasing the two axes.
     */
    private fun refineGlobalTranslation(
        best: RawStackGlobalRegistrationCandidate,
        candidates: List<RawStackGlobalRegistrationCandidate>,
    ): RefinedGlobalTranslation {
        val stepX = minimumPositiveStep(candidates.map { it.dxRaw })
            ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val stepY = minimumPositiveStep(candidates.map { it.dyRaw })
            ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val toleranceX = max(stepX * 0.05f, GLOBAL_COORDINATE_EPSILON)
        val toleranceY = max(stepY * 0.05f, GLOBAL_COORDINATE_EPSILON)

        fun scoreAt(x: Int, y: Int): Float? {
            val targetX = best.dxRaw + x * stepX
            val targetY = best.dyRaw + y * stepY
            return candidates.firstOrNull {
                kotlin.math.abs(it.dxRaw - targetX) <= toleranceX &&
                    kotlin.math.abs(it.dyRaw - targetY) <= toleranceY
            }?.score
        }

        val left = scoreAt(-1, 0) ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val right = scoreAt(1, 0) ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val up = scoreAt(0, -1) ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val down = scoreAt(0, 1) ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val upLeft = scoreAt(-1, -1) ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val upRight = scoreAt(1, -1) ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val downLeft = scoreAt(-1, 1) ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        val downRight = scoreAt(1, 1) ?: return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)

        val gradientX = 0.5f * (right - left)
        val gradientY = 0.5f * (down - up)
        val hessianXX = left - 2f * best.score + right
        val hessianYY = up - 2f * best.score + down
        val hessianXY = 0.25f * (downRight - downLeft - upRight + upLeft)
        val determinant = hessianXX * hessianYY - hessianXY * hessianXY
        if (!determinant.isFinite() ||
            hessianXX <= GLOBAL_CURVATURE_EPSILON ||
            hessianYY <= GLOBAL_CURVATURE_EPSILON ||
            determinant <= GLOBAL_CURVATURE_EPSILON
        ) {
            return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        }

        val offsetX = (-hessianYY * gradientX + hessianXY * gradientY) / determinant
        val offsetY = (hessianXY * gradientX - hessianXX * gradientY) / determinant
        if (!offsetX.isFinite() || !offsetY.isFinite() ||
            kotlin.math.abs(offsetX) > GLOBAL_SUBPIXEL_OFFSET_LIMIT ||
            kotlin.math.abs(offsetY) > GLOBAL_SUBPIXEL_OFFSET_LIMIT
        ) {
            return RefinedGlobalTranslation(best.dxRaw, best.dyRaw, false)
        }
        return RefinedGlobalTranslation(
            dxRaw = best.dxRaw + offsetX * stepX,
            dyRaw = best.dyRaw + offsetY * stepY,
            refined = true,
        )
    }

    /**
     * Adjacent scores belong to the same quadratic peak and naturally become
     * nearly equal when the true minimum lies between grid points. Ambiguity
     * must therefore be measured against the next basin, not the next sample
     * in the same 3x3 neighborhood.
     */
    private fun secondDistinctGlobalBasin(
        best: RawStackGlobalRegistrationCandidate,
        candidates: List<RawStackGlobalRegistrationCandidate>,
    ): RawStackGlobalRegistrationCandidate? {
        val stepX = minimumPositiveStep(candidates.map { it.dxRaw })
            ?: return candidates.firstOrNull { it !== best }
        val stepY = minimumPositiveStep(candidates.map { it.dyRaw })
            ?: return candidates.firstOrNull { it !== best }
        val localRadiusX = stepX * GLOBAL_LOCAL_BASIN_RADIUS
        val localRadiusY = stepY * GLOBAL_LOCAL_BASIN_RADIUS
        return candidates.firstOrNull { candidate ->
            candidate !== best && (
                kotlin.math.abs(candidate.dxRaw - best.dxRaw) > localRadiusX ||
                    kotlin.math.abs(candidate.dyRaw - best.dyRaw) > localRadiusY
                )
        }
    }

    private fun minimumPositiveStep(values: List<Float>): Float? {
        val sorted = values.filter { it.isFinite() }.distinct().sorted()
        var minimum = Float.POSITIVE_INFINITY
        for (index in 1 until sorted.size) {
            val delta = sorted[index] - sorted[index - 1]
            if (delta > GLOBAL_COORDINATE_EPSILON) minimum = minOf(minimum, delta)
        }
        return minimum.takeIf { it.isFinite() }
    }

    fun estimate(
        setup: RawStackRegistrationSetup,
        samples: List<RawStackRegistrationSample>,
        stage: RawStackRegistrationStage = RawStackRegistrationStage.BLEND,
    ): RawStackRegistrationEstimate {
        val validSamples = samples.filter { it.weight > MIN_SAMPLE_WEIGHT }
        if (validSamples.size < MIN_AFFINE_SAMPLE_COUNT) {
            return identityEstimate(setup, stage, samples.size)
        }

        val initialModel = fitAffine(validSamples, residualGate = null)
            ?: return identityEstimate(setup, stage, samples.size)
        val initialResiduals = residuals(validSamples, initialModel)
        val initialP50 = percentile(initialResiduals, 0.50f)
        val initialGate = max(CAMX_RANSAC_FLOOR_PX, initialP50 * ROBUST_REFIT_P50_SCALE)
        val refinedModel = fitAffine(validSamples, residualGate = initialModel to initialGate)
            ?: initialModel
        val refinedResiduals = residuals(validSamples, refinedModel)
        val p50 = percentile(refinedResiduals, 0.50f)
        val p90 = percentile(refinedResiduals, 0.90f)
        val finalGate = max(CAMX_RANSAC_FLOOR_PX, p50 * ROBUST_REFIT_P50_SCALE)

        var inlierWeight = 0.0
        var totalWeight = 0.0
        var residualSum = 0.0
        var usedCount = 0
        for (sample in validSamples) {
            val weight = sample.weight.toDouble()
            val residual = refinedModel.residual(sample)
            totalWeight += weight
            residualSum += residual * weight
            if (residual <= finalGate) {
                inlierWeight += weight
                usedCount += 1
            }
        }
        val inlierRatio = if (totalWeight > 0.0) {
            (inlierWeight / totalWeight).toFloat().coerceIn(0f, 1f)
        } else {
            0f
        }
        val meanResidual = if (totalWeight > 0.0) {
            (residualSum / totalWeight).toFloat()
        } else {
            Float.NaN
        }
        val rawConfidence = estimateConfidence(
            confidenceConfig = setup.confidenceConfig,
            inlierRatio = inlierRatio,
            residualP90Px = p90,
        )
        val fittedTransform = RawStackPerspectiveTransform.fromSingleMatrix(
            stage = stage,
            transformDefinedOnWidth = setup.sourceWidth,
            transformDefinedOnHeight = setup.sourceHeight,
            geometryColumns = setup.cvpPerspectiveGeometryColumns,
            geometryRows = setup.cvpPerspectiveGeometryRows,
            rowMajorMatrix = refinedModel.rowMajorMatrix(),
            rawConfidence = rawConfidence,
            confidenceConfig = setup.confidenceConfig,
        )
        val transform = if (fittedTransform.forceIdentity) {
            RawStackPerspectiveTransform.identity(
                stage = stage,
                transformDefinedOnWidth = setup.sourceWidth,
                transformDefinedOnHeight = setup.sourceHeight,
                geometryColumns = setup.cvpPerspectiveGeometryColumns,
                geometryRows = setup.cvpPerspectiveGeometryRows,
                rawConfidence = rawConfidence,
                confidenceConfig = setup.confidenceConfig,
            )
        } else {
            fittedTransform
        }
        return RawStackRegistrationEstimate(
            transform = transform,
            candidateTransform = fittedTransform,
            sampleCount = samples.size,
            usedSampleCount = usedCount,
            inlierRatio = inlierRatio,
            meanResidualPx = meanResidual,
            residualP50Px = p50,
            residualP90Px = p90,
        )
    }

    private fun identityEstimate(
        setup: RawStackRegistrationSetup,
        stage: RawStackRegistrationStage,
        sampleCount: Int,
        source: RawStackRegistrationSource = RawStackRegistrationSource.FLOW_AFFINE,
    ): RawStackRegistrationEstimate {
        return RawStackRegistrationEstimate(
            transform = RawStackPerspectiveTransform.identity(
                stage = stage,
                transformDefinedOnWidth = setup.sourceWidth,
                transformDefinedOnHeight = setup.sourceHeight,
                geometryColumns = setup.cvpPerspectiveGeometryColumns,
                geometryRows = setup.cvpPerspectiveGeometryRows,
                rawConfidence = 0,
                confidenceConfig = setup.confidenceConfig,
            ),
            sampleCount = sampleCount,
            usedSampleCount = 0,
            inlierRatio = 0f,
            meanResidualPx = Float.NaN,
            residualP50Px = Float.NaN,
            residualP90Px = Float.NaN,
            source = source,
        )
    }

    private fun fitAffine(
        samples: List<RawStackRegistrationSample>,
        residualGate: Pair<AffineModel, Float>?,
    ): AffineModel? {
        val normal = Array(3) { DoubleArray(3) }
        val rhsX = DoubleArray(3)
        val rhsY = DoubleArray(3)
        var used = 0
        for (sample in samples) {
            if (residualGate != null && residualGate.first.residual(sample) > residualGate.second) {
                continue
            }
            val weight = sample.weight.toDouble()
            if (weight <= MIN_SAMPLE_WEIGHT) continue
            val x = sample.referenceX.toDouble()
            val y = sample.referenceY.toDouble()
            val row = doubleArrayOf(x, y, 1.0)
            val targetX = sample.targetX.toDouble()
            val targetY = sample.targetY.toDouble()
            for (r in 0 until 3) {
                rhsX[r] += weight * row[r] * targetX
                rhsY[r] += weight * row[r] * targetY
                for (c in 0 until 3) {
                    normal[r][c] += weight * row[r] * row[c]
                }
            }
            used += 1
        }
        if (used < MIN_AFFINE_SAMPLE_COUNT) return null
        val xParams = solve3x3(normal, rhsX) ?: return null
        val yParams = solve3x3(normal, rhsY) ?: return null
        return AffineModel(
            a = xParams[0],
            b = xParams[1],
            tx = xParams[2],
            c = yParams[0],
            d = yParams[1],
            ty = yParams[2],
        )
    }

    private fun solve3x3(sourceMatrix: Array<DoubleArray>, sourceRhs: DoubleArray): DoubleArray? {
        val matrix = Array(3) { row -> sourceMatrix[row].copyOf() }
        val rhs = sourceRhs.copyOf()
        for (pivot in 0 until 3) {
            var bestRow = pivot
            var bestValue = kotlin.math.abs(matrix[pivot][pivot])
            for (row in pivot + 1 until 3) {
                val value = kotlin.math.abs(matrix[row][pivot])
                if (value > bestValue) {
                    bestValue = value
                    bestRow = row
                }
            }
            if (bestValue < SOLVE_EPSILON) return null
            if (bestRow != pivot) {
                val tmp = matrix[pivot]
                matrix[pivot] = matrix[bestRow]
                matrix[bestRow] = tmp
                val rhsTmp = rhs[pivot]
                rhs[pivot] = rhs[bestRow]
                rhs[bestRow] = rhsTmp
            }
            val pivotValue = matrix[pivot][pivot]
            for (col in pivot until 3) {
                matrix[pivot][col] /= pivotValue
            }
            rhs[pivot] /= pivotValue
            for (row in 0 until 3) {
                if (row == pivot) continue
                val factor = matrix[row][pivot]
                for (col in pivot until 3) {
                    matrix[row][col] -= factor * matrix[pivot][col]
                }
                rhs[row] -= factor * rhs[pivot]
            }
        }
        return rhs
    }

    private fun residuals(samples: List<RawStackRegistrationSample>, model: AffineModel): List<Float> {
        return samples.map { model.residual(it).toFloat() }.sorted()
    }

    private fun percentile(sortedValues: List<Float>, percentile: Float): Float {
        if (sortedValues.isEmpty()) return Float.NaN
        val index = ((sortedValues.size - 1) * percentile.coerceIn(0f, 1f)).roundToInt()
        return sortedValues[index.coerceIn(0, sortedValues.lastIndex)]
    }

    private fun estimateConfidence(
        confidenceConfig: RawStackRegistrationConfidenceConfig,
        inlierRatio: Float,
        residualP90Px: Float,
    ): Int {
        if (!residualP90Px.isFinite()) return 0
        val residualQuality = 1f / (1f + (residualP90Px / RESIDUAL_QUALITY_SCALE_PX).let { it * it })
        val confidence = confidenceConfig.maxConfidence.toFloat() *
            inlierRatio.coerceIn(0f, 1f) *
            residualQuality.coerceIn(0f, 1f)
        return confidence.roundToInt().coerceIn(0, confidenceConfig.maxConfidence.coerceAtLeast(1))
    }

    private fun estimateGlobalConfidence(
        confidenceConfig: RawStackRegistrationConfidenceConfig,
        score: Float,
        scoreMargin: Float,
        coverage: Float,
    ): Int {
        if (!score.isFinite()) return 0
        val normalizedScore = score.coerceAtLeast(0f)
        val scoreQuality = 1f / (
            1f + (normalizedScore / GLOBAL_SCORE_QUALITY_SCALE).let { it * it }
            )
        val marginQuality = if (scoreMargin.isFinite()) {
            (scoreMargin / GLOBAL_MARGIN_FULL_CONFIDENCE).coerceIn(0f, 1f)
        } else {
            0f
        }
        val coverageQuality = coverage.coerceIn(0f, 1f)
        val confidence = confidenceConfig.maxConfidence.toFloat() *
            coverageQuality *
            scoreQuality.coerceIn(0f, 1f) *
            (GLOBAL_MARGIN_FLOOR + (1f - GLOBAL_MARGIN_FLOOR) * marginQuality)
        return confidence.roundToInt().coerceIn(0, confidenceConfig.maxConfidence.coerceAtLeast(1))
    }

    private data class AffineModel(
        val a: Double,
        val b: Double,
        val tx: Double,
        val c: Double,
        val d: Double,
        val ty: Double,
    ) {
        fun residual(sample: RawStackRegistrationSample): Double {
            val x = sample.referenceX.toDouble()
            val y = sample.referenceY.toDouble()
            val predictedX = a * x + b * y + tx
            val predictedY = c * x + d * y + ty
            val dx = predictedX - sample.targetX.toDouble()
            val dy = predictedY - sample.targetY.toDouble()
            return sqrt(dx * dx + dy * dy)
        }

        fun rowMajorMatrix(): FloatArray {
            return floatArrayOf(
                a.toFloat(), b.toFloat(), tx.toFloat(),
                c.toFloat(), d.toFloat(), ty.toFloat(),
                0f, 0f, 1f,
            )
        }
    }

    private const val MIN_AFFINE_SAMPLE_COUNT = 6
    private const val MIN_SAMPLE_WEIGHT = 1e-4
    private const val SOLVE_EPSILON = 1e-9
    private const val CAMX_RANSAC_FLOOR_PX = 1.0f
    private const val ROBUST_REFIT_P50_SCALE = 2.5f
    private const val RESIDUAL_QUALITY_SCALE_PX = 2.0f
    private const val GLOBAL_SCORE_EPSILON = 1e-4f
    private const val GLOBAL_SCORE_QUALITY_SCALE = 0.035f
    private const val GLOBAL_MARGIN_FULL_CONFIDENCE = 0.05f
    private const val GLOBAL_MARGIN_FLOOR = 0.70f
    private const val GLOBAL_COORDINATE_EPSILON = 1e-4f
    private const val GLOBAL_CURVATURE_EPSILON = 1e-7f
    private const val GLOBAL_SUBPIXEL_OFFSET_LIMIT = 0.75f
    private const val GLOBAL_LOCAL_BASIN_RADIUS = 1.05f
}
