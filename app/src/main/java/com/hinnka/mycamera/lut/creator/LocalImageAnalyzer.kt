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
            val maxDim = 256
            val sw = if (source.width > maxDim || source.height > maxDim) {
                val scale = maxDim.toFloat() / max(source.width, source.height)
                (source.width * scale).toInt()
            } else source.width
            val sh = if (source.width > maxDim || source.height > maxDim) {
                val scale = maxDim.toFloat() / max(source.width, source.height)
                (source.height * scale).toInt()
            } else source.height

            val scaledSource = source.scale(sw, sh)
            val scaledTarget = target.scale(sw, sh)

            val pixelsS = IntArray(sw * sh)
            val pixelsT = IntArray(sw * sh)
            scaledSource.getPixels(pixelsS, 0, sw, 0, 0, sw, sh)
            scaledTarget.getPixels(pixelsT, 0, sw, 0, 0, sw, sh)

            val totalPixels = sw * sh
            if (totalPixels == 0) return@withContext LutRecipe()

            val oklabSource = FloatArray(totalPixels * 3)
            for (i in 0 until totalPixels) {
                val c = pixelsS[i]
                val r = Color.red(c) / 255f
                val g = Color.green(c) / 255f
                val b = Color.blue(c) / 255f
                val oklab = OklchConverter.linearSrgbToOklab(
                    OklchConverter.srgbToLinear(r),
                    OklchConverter.srgbToLinear(g),
                    OklchConverter.srgbToLinear(b)
                )
                oklabSource[i * 3] = oklab[0]
                oklabSource[i * 3 + 1] = oklab[1]
                oklabSource[i * 3 + 2] = oklab[2]
            }

            // K-Means on Source to find significant colors
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
            repeat(15) { // 15 iterations of K-means
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
            // For each cluster, find the average color in TARGET
            for (c in 0 until k) {
                var sumTR = 0.0
                var sumTG = 0.0
                var sumTB = 0.0
                var count = 0
                for (i in 0 until totalPixels) {
                    if (assignments[i] == c) {
                        val colorT = pixelsT[i]
                        sumTR += Color.red(colorT) / 255f
                        sumTG += Color.green(colorT) / 255f
                        sumTB += Color.blue(colorT) / 255f
                        count++
                    }
                }

                if (count > 0) {
                    val sourceRgb = oklabToSrgb(centroids[c][0], centroids[c][1], centroids[c][2])
                    val targetR = (sumTR / count).toFloat()
                    val targetG = (sumTG / count).toFloat()
                    val targetB = (sumTB / count).toFloat()

                    // Calculate Delta E in Oklab space (already have centroids[c] for source)
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
                        val colorT = pixelsT[i]
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

            scaledSource.recycle()
            scaledTarget.recycle()

            // --- Final Cleanup: Merge Nearby Points ---
            // This is CRITICAL. If two points are very close in Source space but have different Targets,
            // the RBF solver will explode (matrix singularity). We merge points within 0.02 distance.
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
                    if (dist < 0.05f) { // Points are too close, merge to prevent RBF explosion
                        // Average them
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

            return@withContext LutRecipe(finalPoints)
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
