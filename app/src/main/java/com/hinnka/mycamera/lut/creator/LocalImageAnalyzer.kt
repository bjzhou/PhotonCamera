package com.hinnka.mycamera.lut.creator

import android.graphics.Bitmap
import android.graphics.Color
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlin.math.max
import kotlin.math.min
import androidx.core.graphics.scale
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.sqrt

object LocalImageAnalyzer {
    private const val CONSISTENCY_CHECK_SIZE = 128
    private const val LOCAL_SEARCH_RADIUS = 6
    private const val PATCH_RADIUS = 1
    private const val CLUSTER_MATCH_SAMPLE_COUNT = 96
    private const val MAX_PATCH_MATCH_SCORE = 0.28f
    private const val MIN_CLUSTER_MATCH_RATIO = 0.25f
    private const val MIN_GLOBAL_MATCH_RATIO = 0.18f

    /**
     * Analyzes the given images using K-Means clustering in Oklab space
     * to extract the 8 most representative Target Colors.
     * It then estimates their corresponding Source Colors using Inverse Transformation
     * (Grey World + Contrast Normalization + Saturation Correction).
     */
    suspend fun analyzeImages(bitmaps: List<Bitmap>): LutRecipe = withContext(Dispatchers.Default) {
        // Existing implementation remains as fallback or for local-only extraction
        internalAnalyzeImages(bitmaps)
    }

    suspend fun analyzeSourceTargetImages(source: Bitmap, target: Bitmap): LutRecipe =
        withContext(Dispatchers.Default) {
            LutRecipe(mergeNearbyControlPoints(extractSourceTargetControlPoints(source, target)))
        }

    suspend fun analyzeSourceTargetImagePairs(pairs: List<Pair<Bitmap, Bitmap>>): LutRecipe =
        withContext(Dispatchers.Default) {
            if (pairs.isEmpty()) return@withContext LutRecipe()

            val mergedControlPoints = buildList {
                pairs.forEach { (source, target) ->
                    addAll(extractSourceTargetControlPoints(source, target))
                }
            }

            return@withContext LutRecipe(mergeNearbyControlPoints(mergedControlPoints))
        }

    private fun extractSourceTargetControlPoints(source: Bitmap, target: Bitmap): List<ControlPoint> {
            val maxDim = 256
            val sw = if (source.width > maxDim || source.height > maxDim) {
                val scale = maxDim.toFloat() / max(source.width, source.height)
                (source.width * scale).toInt()
            } else source.width
            val sh = if (source.width > maxDim || source.height > maxDim) {
                val scale = maxDim.toFloat() / max(source.width, source.height)
                (source.height * scale).toInt()
            } else source.height

            logPairConsistency(source, target)

            val scaledSource = source.scale(sw, sh)
            val scaledTarget = target.scale(sw, sh)

            val pixelsS = IntArray(sw * sh)
            val pixelsT = IntArray(sw * sh)
            scaledSource.getPixels(pixelsS, 0, sw, 0, 0, sw, sh)
            scaledTarget.getPixels(pixelsT, 0, sw, 0, 0, sw, sh)

            val totalPixels = sw * sh
            if (totalPixels == 0) return emptyList()

            val oklabSource = FloatArray(totalPixels * 3)
            val sourceLuma = FloatArray(totalPixels)
            val targetLuma = FloatArray(totalPixels)
            for (i in 0 until totalPixels) {
                val colorS = pixelsS[i]
                val r = Color.red(colorS) / 255f
                val g = Color.green(colorS) / 255f
                val b = Color.blue(colorS) / 255f
                val oklab = OklchConverter.linearSrgbToOklab(
                    OklchConverter.srgbToLinear(r),
                    OklchConverter.srgbToLinear(g),
                    OklchConverter.srgbToLinear(b)
                )
                oklabSource[i * 3] = oklab[0]
                oklabSource[i * 3 + 1] = oklab[1]
                oklabSource[i * 3 + 2] = oklab[2]
                sourceLuma[i] = lumaFromColor(colorS)
                targetLuma[i] = lumaFromColor(pixelsT[i])
            }

            val k = 16
            val centroids = Array(k) { FloatArray(3) }
            val step = totalPixels / k
            for (i in 0 until k) {
                val pIdx = min(i * step, totalPixels - 1)
                centroids[i][0] = oklabSource[pIdx * 3]
                centroids[i][1] = oklabSource[pIdx * 3 + 1]
                centroids[i][2] = oklabSource[pIdx * 3 + 2]
            }

            val assignments = IntArray(totalPixels)
            repeat(15) {
                for (i in 0 until totalPixels) {
                    var bestDist = Float.MAX_VALUE
                    var bestC = 0
                    for (c in 0 until k) {
                        val dL = oklabSource[i * 3] - centroids[c][0]
                        val da = oklabSource[i * 3 + 1] - centroids[c][1]
                        val db = oklabSource[i * 3 + 2] - centroids[c][2]
                        val dist = dL * dL + da * da + db * db
                        if (dist < bestDist) {
                            bestDist = dist
                            bestC = c
                        }
                    }
                    assignments[i] = bestC
                }
                val sums = Array(k) { DoubleArray(3) }
                val counts = IntArray(k)
                for (i in 0 until totalPixels) {
                    val c = assignments[i]
                    sums[c][0] += oklabSource[i * 3].toDouble()
                    sums[c][1] += oklabSource[i * 3 + 1].toDouble()
                    sums[c][2] += oklabSource[i * 3 + 2].toDouble()
                    counts[c]++
                }
                for (c in 0 until k) {
                    if (counts[c] > 0) {
                        centroids[c][0] = (sums[c][0] / counts[c]).toFloat()
                        centroids[c][1] = (sums[c][1] / counts[c]).toFloat()
                        centroids[c][2] = (sums[c][2] / counts[c]).toFloat()
                    }
                }
            }

            val controlPoints = mutableListOf<ControlPoint>()
            var totalMatchAttempts = 0
            var totalMatchSuccess = 0
            for (c in 0 until k) {
                val clusterIndices = IntArray(totalPixels)
                var clusterCount = 0
                for (i in 0 until totalPixels) {
                    if (assignments[i] == c) {
                        clusterIndices[clusterCount++] = i
                    }
                }

                if (clusterCount == 0) continue

                val matchedTarget = sampleMatchedTargetColor(
                    clusterIndices = clusterIndices,
                    clusterCount = clusterCount,
                    width = sw,
                    height = sh,
                    sourceLuma = sourceLuma,
                    targetLuma = targetLuma,
                    targetPixels = pixelsT
                ) ?: continue

                totalMatchAttempts += matchedTarget.attemptCount
                totalMatchSuccess += matchedTarget.matchCount

                if (matchedTarget.matchRatio < MIN_CLUSTER_MATCH_RATIO) continue

                val sourceRgb = oklabToSrgb(centroids[c][0], centroids[c][1], centroids[c][2])
                val targetR = matchedTarget.r
                val targetG = matchedTarget.g
                val targetB = matchedTarget.b

                val tLinearR = OklchConverter.srgbToLinear(targetR)
                val tLinearG = OklchConverter.srgbToLinear(targetG)
                val tLinearB = OklchConverter.srgbToLinear(targetB)
                val tOklab = OklchConverter.linearSrgbToOklab(tLinearR, tLinearG, tLinearB)

                val dL = centroids[c][0] - tOklab[0]
                val da = centroids[c][1] - tOklab[1]
                val db = centroids[c][2] - tOklab[2]
                val deltaE = sqrt(dL * dL + da * da + db * db)

                if (deltaE < 0.50f) {
                    controlPoints.add(
                        ControlPoint(
                            sourceR = sourceRgb[0], sourceG = sourceRgb[1], sourceB = sourceRgb[2],
                            targetR = targetR, targetG = targetG, targetB = targetB
                        )
                    )
                }
            }

            val globalMatchRatio = if (totalMatchAttempts > 0) {
                totalMatchSuccess.toFloat() / totalMatchAttempts
            } else {
                0f
            }
            PLog.d("LocalImageAnalyzer", "local match coverage=$globalMatchRatio")
            if (globalMatchRatio < MIN_GLOBAL_MATCH_RATIO || controlPoints.size < 6) {
                scaledSource.recycle()
                scaledTarget.recycle()
                throw IllegalArgumentException(
                    "Too few locally matched regions for reliable analysis. matchCoverage=%.2f controlPoints=%d"
                        .format(globalMatchRatio, controlPoints.size)
                )
            }

            // --- Grayscale/Tone Sampling ---
            // We capture the "Tone Curve" by looking for neutral pixels along the luminance axis.
            // This allows capturing faded shadows, compressed highlights, and contrast moods.
            val toneSteps = 7
            for (step in 0 until toneSteps) {
                val targetL = step.toFloat() / (toneSteps - 1)
                // Define a small range in Oklab around the neutral axis (a=0, b=0)
                var sumTR = 0.0;
                var sumTG = 0.0;
                var sumTB = 0.0
                var sumSR = 0.0;
                var sumSG = 0.0;
                var sumSB = 0.0
                var count = 0

                for (i in 0 until totalPixels) {
                    val sL = oklabSource[i * 3]
                    val sa = oklabSource[i * 3 + 1]
                    val sb = oklabSource[i * 3 + 2]

                    // If the pixel is close to this luminance and is relatively neutral
                    if (abs(sL - targetL) < 0.05f && (sa * sa + sb * sb) < 0.001f) {
                        val matchedIndex = findBestTargetMatch(
                            sourceIndex = i,
                            width = sw,
                            height = sh,
                            sourceLuma = sourceLuma,
                            targetLuma = targetLuma
                        ) ?: continue
                        val colorT = pixelsT[matchedIndex]
                        val colorS = pixelsS[i]
                        sumTR += Color.red(colorT) / 255f
                        sumTG += Color.green(colorT) / 255f
                        sumTB += Color.blue(colorT) / 255f
                        sumSR += Color.red(colorS) / 255f
                        sumSG += Color.green(colorS) / 255f
                        sumSB += Color.blue(colorS) / 255f
                        count++
                    }
                }

                if (count > 10) { // Only add if we found enough neutral samples to be representative
                    controlPoints.add(
                        ControlPoint(
                            sourceR = (sumSR / count).toFloat(),
                            sourceG = (sumSG / count).toFloat(),
                            sourceB = (sumSB / count).toFloat(),
                            targetR = (sumTR / count).toFloat(),
                            targetG = (sumTG / count).toFloat(),
                            targetB = (sumTB / count).toFloat()
                        )
                    )
                } else {
                    // Fallback: If no neutral pixels found for this luminance, add a slightly stabilized identity point
                    // with lower weight in logic (or just skip to let RBF decide)
                    if (step == 0 || step == toneSteps - 1) {
                        val fallbackL = targetL
                        controlPoints.add(
                            ControlPoint(
                                fallbackL,
                                fallbackL,
                                fallbackL,
                                fallbackL,
                                fallbackL,
                                fallbackL
                            )
                        )
                    }
                }
            }

            // --- Anchor on Demand Logic ---
            // Instead of hardcoding all 8 corners, we only add identity anchors where 
            // we have NO sampled data near that corner. This preserves style while preventing
            // wild extrapolation in empty regions of the color space.
            val corners = listOf(
                floatArrayOf(0f, 0f, 0f), floatArrayOf(1f, 1f, 1f),
                floatArrayOf(1f, 0f, 0f), floatArrayOf(0f, 1f, 0f), floatArrayOf(0f, 0f, 1f),
                floatArrayOf(1f, 1f, 0f), floatArrayOf(1f, 0f, 1f), floatArrayOf(0f, 1f, 1f)
            )
            for (corner in corners) {
                val isNearSampledPoint = controlPoints.any { cp ->
                    val dist = sqrt(
                        (cp.sourceR - corner[0]).let { it * it } +
                                (cp.sourceG - corner[1]).let { it * it } +
                                (cp.sourceB - corner[2]).let { it * it }
                    )
                    dist < 0.4f // Threshold for considering a corner "covered" by style
                }

                if (!isNearSampledPoint) {
                    // No sampled data near this corner, add protection anchor
                    controlPoints.add(
                        ControlPoint(
                            sourceR = corner[0], sourceG = corner[1], sourceB = corner[2],
                            targetR = corner[0], targetG = corner[1], targetB = corner[2]
                        )
                    )
                }
            }

            val monotonicControlPoints = enforceControlPointLuminanceMonotonicity(controlPoints)

            scaledSource.recycle()
            scaledTarget.recycle()

            return monotonicControlPoints
        }

    private data class MatchedTargetColor(
        val r: Float,
        val g: Float,
        val b: Float,
        val attemptCount: Int,
        val matchCount: Int
    ) {
        val matchRatio: Float
            get() = if (attemptCount > 0) matchCount.toFloat() / attemptCount else 0f
    }

    private fun logPairConsistency(source: Bitmap, target: Bitmap) {
        val sourceScaled = source.scaleForConsistency()
        val targetScaled = target.scale(sourceScaled.width, sourceScaled.height)
        try {
            val width = sourceScaled.width
            val height = sourceScaled.height
            val size = width * height
            if (size == 0) return

            val sourcePixels = IntArray(size)
            val targetPixels = IntArray(size)
            sourceScaled.getPixels(sourcePixels, 0, width, 0, 0, width, height)
            targetScaled.getPixels(targetPixels, 0, width, 0, 0, width, height)

            val sourceLuma = FloatArray(size) { lumaFromColor(sourcePixels[it]) }
            val targetLuma = FloatArray(size) { lumaFromColor(targetPixels[it]) }
            val sourceGradient = buildGradientMagnitude(sourceLuma, width, height)
            val targetGradient = buildGradientMagnitude(targetLuma, width, height)

            val luminanceCorrelation = pearsonCorrelation(sourceLuma, targetLuma)
            val gradientCorrelation = pearsonCorrelation(sourceGradient, targetGradient)

            PLog.d(
                "LocalImageAnalyzer",
                "pair consistency luminanceCorr=$luminanceCorrelation gradientCorr=$gradientCorrelation"
            )
        } finally {
            if (sourceScaled !== source) sourceScaled.recycle()
            if (targetScaled !== target) targetScaled.recycle()
        }
    }

    private fun Bitmap.scaleForConsistency(): Bitmap {
        if (width <= CONSISTENCY_CHECK_SIZE && height <= CONSISTENCY_CHECK_SIZE) return this
        val scaleFactor = CONSISTENCY_CHECK_SIZE.toFloat() / max(width, height)
        return scale(
            (width * scaleFactor).toInt().coerceAtLeast(1),
            (height * scaleFactor).toInt().coerceAtLeast(1)
        )
    }

    private fun sampleMatchedTargetColor(
        clusterIndices: IntArray,
        clusterCount: Int,
        width: Int,
        height: Int,
        sourceLuma: FloatArray,
        targetLuma: FloatArray,
        targetPixels: IntArray
    ): MatchedTargetColor? {
        var sumTR = 0.0
        var sumTG = 0.0
        var sumTB = 0.0
        var matchedCount = 0
        val step = max(1, clusterCount / CLUSTER_MATCH_SAMPLE_COUNT)
        var attemptCount = 0

        for (sampleIndex in 0 until clusterCount step step) {
            attemptCount++
            val sourceIndex = clusterIndices[sampleIndex]
            val matchedIndex = findBestTargetMatch(
                sourceIndex = sourceIndex,
                width = width,
                height = height,
                sourceLuma = sourceLuma,
                targetLuma = targetLuma
            ) ?: continue

            val colorT = targetPixels[matchedIndex]
            sumTR += Color.red(colorT) / 255f
            sumTG += Color.green(colorT) / 255f
            sumTB += Color.blue(colorT) / 255f
            matchedCount++
        }

        if (matchedCount == 0) return null
        return MatchedTargetColor(
            r = (sumTR / matchedCount).toFloat(),
            g = (sumTG / matchedCount).toFloat(),
            b = (sumTB / matchedCount).toFloat(),
            attemptCount = attemptCount,
            matchCount = matchedCount
        )
    }

    private fun findBestTargetMatch(
        sourceIndex: Int,
        width: Int,
        height: Int,
        sourceLuma: FloatArray,
        targetLuma: FloatArray
    ): Int? {
        val x = sourceIndex % width
        val y = sourceIndex / width
        if (
            x < PATCH_RADIUS ||
            x > width - PATCH_RADIUS - 1 ||
            y < PATCH_RADIUS ||
            y > height - PATCH_RADIUS - 1
        ) {
            return null
        }
        val minX = max(PATCH_RADIUS, x - LOCAL_SEARCH_RADIUS)
        val maxX = min(width - PATCH_RADIUS - 1, x + LOCAL_SEARCH_RADIUS)
        val minY = max(PATCH_RADIUS, y - LOCAL_SEARCH_RADIUS)
        val maxY = min(height - PATCH_RADIUS - 1, y + LOCAL_SEARCH_RADIUS)
        if (minX > maxX || minY > maxY) return null

        var bestIndex: Int? = null
        var bestScore = Float.MAX_VALUE
        for (candidateY in minY..maxY) {
            for (candidateX in minX..maxX) {
                val candidateIndex = candidateY * width + candidateX
                val patchScore = patchDifferenceScore(
                    sourceX = x,
                    sourceY = y,
                    targetX = candidateX,
                    targetY = candidateY,
                    width = width,
                    sourceLuma = sourceLuma,
                    targetLuma = targetLuma
                )
                val distancePenalty = (abs(candidateX - x) + abs(candidateY - y)) * 0.015f
                val score = patchScore + distancePenalty
                if (score < bestScore) {
                    bestScore = score
                    bestIndex = candidateIndex
                }
            }
        }
        return if (bestScore <= MAX_PATCH_MATCH_SCORE) bestIndex else null
    }

    private fun patchDifferenceScore(
        sourceX: Int,
        sourceY: Int,
        targetX: Int,
        targetY: Int,
        width: Int,
        sourceLuma: FloatArray,
        targetLuma: FloatArray
    ): Float {
        var sourceMean = 0f
        var targetMean = 0f
        var count = 0
        for (dy in -PATCH_RADIUS..PATCH_RADIUS) {
            for (dx in -PATCH_RADIUS..PATCH_RADIUS) {
                sourceMean += sourceLuma[(sourceY + dy) * width + (sourceX + dx)]
                targetMean += targetLuma[(targetY + dy) * width + (targetX + dx)]
                count++
            }
        }
        sourceMean /= count
        targetMean /= count

        var sourceVar = 0f
        var targetVar = 0f
        for (dy in -PATCH_RADIUS..PATCH_RADIUS) {
            for (dx in -PATCH_RADIUS..PATCH_RADIUS) {
                val sourceDelta = sourceLuma[(sourceY + dy) * width + (sourceX + dx)] - sourceMean
                val targetDelta = targetLuma[(targetY + dy) * width + (targetX + dx)] - targetMean
                sourceVar += sourceDelta * sourceDelta
                targetVar += targetDelta * targetDelta
            }
        }

        val sourceStd = sqrt(max(sourceVar / count, 1e-6f))
        val targetStd = sqrt(max(targetVar / count, 1e-6f))

        var score = 0f
        for (dy in -PATCH_RADIUS..PATCH_RADIUS) {
            for (dx in -PATCH_RADIUS..PATCH_RADIUS) {
                val sourceNormalized =
                    (sourceLuma[(sourceY + dy) * width + (sourceX + dx)] - sourceMean) / sourceStd
                val targetNormalized =
                    (targetLuma[(targetY + dy) * width + (targetX + dx)] - targetMean) / targetStd
                val delta = sourceNormalized - targetNormalized
                score += delta * delta
            }
        }
        return score / count
    }

    private fun buildGradientMagnitude(luma: FloatArray, width: Int, height: Int): FloatArray {
        val gradient = FloatArray(luma.size)
        for (y in 1 until height - 1) {
            for (x in 1 until width - 1) {
                val idx = y * width + x
                val gx =
                    -luma[(y - 1) * width + (x - 1)] + luma[(y - 1) * width + (x + 1)] +
                        -2f * luma[y * width + (x - 1)] + 2f * luma[y * width + (x + 1)] +
                        -luma[(y + 1) * width + (x - 1)] + luma[(y + 1) * width + (x + 1)]
                val gy =
                    -luma[(y - 1) * width + (x - 1)] - 2f * luma[(y - 1) * width + x] - luma[(y - 1) * width + (x + 1)] +
                        luma[(y + 1) * width + (x - 1)] + 2f * luma[(y + 1) * width + x] + luma[(y + 1) * width + (x + 1)]
                gradient[idx] = sqrt(gx * gx + gy * gy)
            }
        }
        return gradient
    }

    private fun pearsonCorrelation(a: FloatArray, b: FloatArray): Float {
        if (a.size != b.size || a.isEmpty()) return 0f
        var meanA = 0.0
        var meanB = 0.0
        for (i in a.indices) {
            meanA += a[i]
            meanB += b[i]
        }
        meanA /= a.size
        meanB /= b.size

        var numerator = 0.0
        var varianceA = 0.0
        var varianceB = 0.0
        for (i in a.indices) {
            val da = a[i] - meanA
            val db = b[i] - meanB
            numerator += da * db
            varianceA += da * da
            varianceB += db * db
        }
        if (varianceA < 1e-8 || varianceB < 1e-8) return 0f
        return (numerator / sqrt(varianceA * varianceB)).toFloat()
    }

    private fun lumaFromColor(color: Int): Float {
        val r = Color.red(color) / 255f
        val g = Color.green(color) / 255f
        val b = Color.blue(color) / 255f
        return 0.2126f * r + 0.7152f * g + 0.0722f * b
    }

    private fun lumaFromRgb(r: Float, g: Float, b: Float): Float {
        return 0.2126f * r + 0.7152f * g + 0.0722f * b
    }

    private fun enforceControlPointLuminanceMonotonicity(
        controlPoints: List<ControlPoint>
    ): List<ControlPoint> {
        if (controlPoints.size < 2) return controlPoints

        val sorted = controlPoints.withIndex().sortedBy {
            lumaFromRgb(it.value.sourceR, it.value.sourceG, it.value.sourceB)
        }

        data class Block(
            var start: Int,
            var end: Int,
            var weight: Int,
            var averageTargetLuma: Float
        )

        val sourceLuma = FloatArray(sorted.size)
        val targetLuma = FloatArray(sorted.size)
        sorted.forEachIndexed { sortedIndex, indexedValue ->
            val point = indexedValue.value
            sourceLuma[sortedIndex] = lumaFromRgb(point.sourceR, point.sourceG, point.sourceB)
            targetLuma[sortedIndex] = lumaFromRgb(point.targetR, point.targetG, point.targetB)
        }

        val blocks = mutableListOf<Block>()
        for (i in targetLuma.indices) {
            blocks.add(Block(i, i, 1, targetLuma[i]))
            while (blocks.size >= 2) {
                val last = blocks[blocks.lastIndex]
                val previous = blocks[blocks.lastIndex - 1]
                if (previous.averageTargetLuma <= last.averageTargetLuma) break

                val previousWeight = previous.weight
                val mergedWeight = previous.weight + last.weight
                val mergedAverage =
                    (previous.averageTargetLuma * previousWeight + last.averageTargetLuma * last.weight) / mergedWeight
                previous.end = last.end
                previous.weight = mergedWeight
                previous.averageTargetLuma = mergedAverage
                blocks.removeAt(blocks.lastIndex)
            }
        }

        val adjustedTargetLuma = FloatArray(sorted.size)
        blocks.forEach { block ->
            for (i in block.start..block.end) {
                adjustedTargetLuma[i] = block.averageTargetLuma
            }
        }

        val adjustedByOriginalIndex = arrayOfNulls<ControlPoint>(controlPoints.size)
        sorted.forEachIndexed { sortedIndex, indexedValue ->
            val point = indexedValue.value
            val currentLuma = targetLuma[sortedIndex]
            val desiredLuma = adjustedTargetLuma[sortedIndex].coerceIn(0f, 1f)
            val adjustedPoint = adjustTargetLuma(point, currentLuma, desiredLuma)
            adjustedByOriginalIndex[indexedValue.index] = adjustedPoint
        }

        return adjustedByOriginalIndex.map { it!! }
    }

    private fun adjustTargetLuma(
        point: ControlPoint,
        currentLuma: Float,
        desiredLuma: Float
    ): ControlPoint {
        val adjustedTarget = if (currentLuma < 1e-4f) {
            floatArrayOf(desiredLuma, desiredLuma, desiredLuma)
        } else {
            val scale = desiredLuma / currentLuma
            floatArrayOf(
                (point.targetR * scale).coerceIn(0f, 1f),
                (point.targetG * scale).coerceIn(0f, 1f),
                (point.targetB * scale).coerceIn(0f, 1f)
            )
        }
        return point.copy(
            targetR = adjustedTarget[0],
            targetG = adjustedTarget[1],
            targetB = adjustedTarget[2]
        )
    }

    private fun mergeNearbyControlPoints(controlPoints: List<ControlPoint>): List<ControlPoint> {
        // This is CRITICAL. If two points are very close in Source space but have different Targets,
        // the RBF solver will explode (matrix singularity). We merge points within 0.05 distance.
        val finalPoints = mutableListOf<ControlPoint>()
        for (p in controlPoints) {
            var merged = false
            for (i in finalPoints.indices) {
                val fp = finalPoints[i]
                val dist = sqrt(
                    (p.sourceR - fp.sourceR).let { it * it } +
                            (p.sourceG - fp.sourceG).let { it * it } +
                            (p.sourceB - fp.sourceB).let { it * it }
                )
                if (dist < 0.05f) {
                    finalPoints[i] = ControlPoint(
                        sourceR = (p.sourceR + fp.sourceR) / 2f,
                        sourceG = (p.sourceG + fp.sourceG) / 2f,
                        sourceB = (p.sourceB + fp.sourceB) / 2f,
                        targetR = (p.targetR + fp.targetR) / 2f,
                        targetG = (p.targetG + fp.targetG) / 2f,
                        targetB = (p.targetB + fp.targetB) / 2f
                    )
                    merged = true
                    break
                }
            }
            if (!merged) finalPoints.add(p)
        }
        return finalPoints
    }

    private suspend fun internalAnalyzeImages(bitmaps: List<Bitmap>): LutRecipe = withContext(Dispatchers.Default) {
        val maxDim = 256
        var totalPixels = 0

        for (bitmap in bitmaps) {
            var w = bitmap.width
            var h = bitmap.height
            if (w > maxDim || h > maxDim) {
                val scale = maxDim.toFloat() / max(w, h)
                w = (w * scale).toInt()
                h = (h * scale).toInt()
            }
            totalPixels += w * h
        }

        if (totalPixels == 0) return@withContext LutRecipe()

        // We use an interleaved array for memory efficiency: [L, a, b, L, a, b...]
        val oklabPixels = FloatArray(totalPixels * 3)
        var idx = 0

        var sumL = 0.0
        var sumA = 0.0
        var sumB = 0.0
        var sumC = 0.0
        var minL = 1.0f
        var maxL = 0.0f

        for (bitmap in bitmaps) {
            var w = bitmap.width
            var h = bitmap.height
            if (w > maxDim || h > maxDim) {
                val scale = maxDim.toFloat() / max(w, h)
                w = (w * scale).toInt()
                h = (h * scale).toInt()
            }

            val scaled = if (w != bitmap.width || h != bitmap.height) {
                Bitmap.createScaledBitmap(bitmap, w, h, true)
            } else {
                bitmap
            }

            val pixels = IntArray(scaled.width * scaled.height)
            scaled.getPixels(pixels, 0, scaled.width, 0, 0, scaled.width, scaled.height)

            for (color in pixels) {
                val r = Color.red(color) / 255f
                val g = Color.green(color) / 255f
                val b = Color.blue(color) / 255f

                val lr = OklchConverter.srgbToLinear(r)
                val lg = OklchConverter.srgbToLinear(g)
                val lb = OklchConverter.srgbToLinear(b)
                val oklab = OklchConverter.linearSrgbToOklab(lr, lg, lb)

                val l = oklab[0]
                val a = oklab[1]
                val bv = oklab[2]

                oklabPixels[idx * 3] = l
                oklabPixels[idx * 3 + 1] = a
                oklabPixels[idx * 3 + 2] = bv
                idx++

                sumL += l
                sumA += a
                sumB += bv
                val cStrLimit = Math.sqrt((a * a + bv * bv).toDouble()).toFloat()
                sumC += cStrLimit

                if (l < minL) minL = l
                if (l > maxL) maxL = l
            }

            if (scaled != bitmap) {
                scaled.recycle()
            }
        }

        // --- 1. Global Image Statistics ---
        val avgL = (sumL / totalPixels).toFloat()
        val avgA = (sumA / totalPixels).toFloat()
        val avgB = (sumB / totalPixels).toFloat()
        val avgC = (sumC / totalPixels).toFloat()

        // Dampen the global average subtraction so the white balance correction isn't too aggressive.
        val dampenVal = 0.5f // Blend factor (0.0 = no correction, 1.0 = full correction)

        // Target neutral chroma
        val targetNeutralC = 0.12f
        val satCorr = (targetNeutralC / max(0.01f, avgC)).coerceIn(0.7f, 1.5f) // Narrowed range
        val blendedSatCorr = 1.0f + (satCorr - 1.0f) * dampenVal

        val lumaRange = max(0.01f, maxL - minL)

        // --- 2. K-means Clustering (K=8) ---
        val k = 8
        val centroids = Array(k) { FloatArray(3) }

        // Initialize centroids uniformly from the data
        val step = totalPixels / k
        for (i in 0 until k) {
            val pIdx = min(i * step, totalPixels - 1)
            centroids[i][0] = oklabPixels[pIdx * 3]
            centroids[i][1] = oklabPixels[pIdx * 3 + 1]
            centroids[i][2] = oklabPixels[pIdx * 3 + 2]
        }

        val assignments = IntArray(totalPixels)
        val maxIters = 20
        var centroidsChanged = true
        var iters = 0

        while (centroidsChanged && iters < maxIters) {
            centroidsChanged = false
            iters++

            // Assign points to nearest centroid
            for (i in 0 until totalPixels) {
                val l = oklabPixels[i * 3]
                val a = oklabPixels[i * 3 + 1]
                val bv = oklabPixels[i * 3 + 2]

                var bestDist = Float.MAX_VALUE
                var bestCluster = 0
                for (c in 0 until k) {
                    val cL = centroids[c][0]
                    val ca = centroids[c][1]
                    val cb = centroids[c][2]
                    val dL = l - cL
                    val da = a - ca
                    val db = bv - cb
                    // Euclidean distance in Oklab is perceptually uniform
                    val dist = dL * dL + da * da + db * db
                    if (dist < bestDist) {
                        bestDist = dist
                        bestCluster = c
                    }
                }
                assignments[i] = bestCluster
            }

            // Update centroids
            val clusterCounts = IntArray(k)
            val clusterSums = Array(k) { DoubleArray(3) }

            for (i in 0 until totalPixels) {
                val cluster = assignments[i]
                clusterCounts[cluster]++
                clusterSums[cluster][0] += oklabPixels[i * 3].toDouble()
                clusterSums[cluster][1] += oklabPixels[i * 3 + 1].toDouble()
                clusterSums[cluster][2] += oklabPixels[i * 3 + 2].toDouble()
            }

            for (c in 0 until k) {
                if (clusterCounts[c] > 0) {
                    val newL = (clusterSums[c][0] / clusterCounts[c]).toFloat()
                    val newa = (clusterSums[c][1] / clusterCounts[c]).toFloat()
                    val newb = (clusterSums[c][2] / clusterCounts[c]).toFloat()

                    if (Math.abs(newL - centroids[c][0]) > 0.001f ||
                        Math.abs(newa - centroids[c][1]) > 0.001f ||
                        Math.abs(newb - centroids[c][2]) > 0.001f
                    ) {
                        centroidsChanged = true
                    }
                    centroids[c][0] = newL
                    centroids[c][1] = newa
                    centroids[c][2] = newb
                }
            }
        }

        // --- 3. Map Target Colors to Source Colors ---
        val controlPoints = mutableListOf<ControlPoint>()

        for (c in 0 until k) {
            val tL = centroids[c][0]
            val ta = centroids[c][1]
            val tb = centroids[c][2]

            // Inverse Transform:
            // 1. Contrast Normalization (damped)
            val fullNormL = ((tL - minL) / lumaRange).coerceIn(0f, 1f)
            val sL = tL * (1f - dampenVal) + fullNormL * dampenVal

            // 2. Grey World white balance removal (damped)
            var sa = ta - avgA * dampenVal
            var sb = tb - avgB * dampenVal

            // 3. Saturation correction (damped)
            sa *= blendedSatCorr
            sb *= blendedSatCorr

            // Convert back to Linear RGB, then sRGB for Control Points
            val sourceRgb = oklabToSrgb(sL, sa, sb)
            val targetRgb = oklabToSrgb(tL, ta, tb)

            controlPoints.add(
                ControlPoint(
                    sourceR = sourceRgb[0], sourceG = sourceRgb[1], sourceB = sourceRgb[2],
                    targetR = targetRgb[0], targetG = targetRgb[1], targetB = targetRgb[2]
                )
            )
        }

        // --- 4. Anchors (Black, White, Mid-Grey) ---
        // Anchors should map strictly identity or very close to identity to prevent heavy color casts on neutrals
        controlPoints.add(ControlPoint(0f, 0f, 0f, 0f, 0f, 0f))
        controlPoints.add(ControlPoint(1f, 1f, 1f, 1f, 1f, 1f))

        // Target Mid-Grey - Add a very slight curve to grey if needed, but safer to keep mostly neutral
        val greyTarget = oklabToSrgb((minL + maxL) / 2f, avgA * 0.2f, avgB * 0.2f)
        val sGrey = oklabToSrgb(0.5f, 0f, 0f)
        controlPoints.add(
            ControlPoint(sGrey[0], sGrey[1], sGrey[2], greyTarget[0], greyTarget[1], greyTarget[2])
        )

        LutRecipe(controlPoints)
    }

    private fun oklabToSrgb(l: Float, a: Float, b: Float): FloatArray {
        val linear = OklchConverter.oklabToLinearSrgb(l, a, b)
        val r = OklchConverter.linearToSrgb(linear[0].coerceIn(0f, 1f))
        val g = OklchConverter.linearToSrgb(linear[1].coerceIn(0f, 1f))
        val bSrgb = OklchConverter.linearToSrgb(linear[2].coerceIn(0f, 1f))
        return floatArrayOf(r, g, bSrgb)
    }
}
