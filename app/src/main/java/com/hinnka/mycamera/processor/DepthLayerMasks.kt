package com.hinnka.mycamera.processor

import com.hinnka.mycamera.ml.RelativeDepthMap
import com.hinnka.mycamera.ml.SubjectMask
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.roundToInt
import java.util.concurrent.CompletableFuture

/**
 * CPU-side masks of the layered depth (docs/lrmobile-lens-blur-evidence.md §9).
 *
 * Interior weights follow `depth_estimation_planar`'s mask-guided composite:
 * deep inside a layer the base depth is kept, only the boundary band takes the
 * layer-separated value. Lens Blur works on a mask resized to 320 px on the
 * image's long edge; every morphology and blur radius here is that grid's size
 * expressed in original-image pixels, then converted to the subject mask's own
 * texels so a crop does not change the physical extent.
 */
internal object DepthLayerMasks {
    /** `cv::threshold(mask, 1/255)`: any predicted coverage belongs to the subject. */
    private const val SUBJECT_THRESHOLD = 1f / 255f
    private const val LENS_MASK_GRID = 320f
    private const val SUBJECT_ERODE = 7
    private const val BACKGROUND_ERODE = 6
    private const val BACKGROUND_DILATE = 1
    private const val BLUR_HALF_WIDTH = 5
    private const val BLUR_SIGMA = 4f

    /** Internal parameter 14 of `ComputeBaseFocalMatte`: growth range around the in-focus depth. */
    const val FOCAL_FLOOD_PADDING = 0.05f

    /**
     * Interior weights at the subject mask's grid, interleaved RG:
     * R = Gauss(erode7(M > 1/255)), G = Gauss(erode6(dilate1(erode6(1 - bin)))).
     * Outside an interior crop edge the mask is zero (R = 0, G = 1); the
     * original image edge replicates, as `cv::erode` does not erode from it.
     */
    fun subjectInterior(mask: SubjectMask, imageWidth: Int, imageHeight: Int): FloatArray {
        val width = mask.width
        val height = mask.height
        val region = mask.region
        val lensTexel = max(imageWidth, imageHeight) / LENS_MASK_GRID
        val texelX = region.width * imageWidth / width
        val texelY = region.height * imageHeight / height
        val scaleX = lensTexel / texelX
        val scaleY = lensTexel / texelY
        val edges = CropEdges(region.left > 0f, region.right < 1f, region.top > 0f, region.bottom < 1f)

        // The two layers are independent; the background chain runs on a pool worker.
        val backgroundInterior = CompletableFuture.supplyAsync {
            val background = ByteArray(width * height) { if (mask.values[it] > SUBJECT_THRESHOLD) 0 else 1 }
            morph(background, width, height, scaleX, scaleY, BACKGROUND_ERODE, false, edges, 1)
                .let { morph(it, width, height, scaleX, scaleY, BACKGROUND_DILATE, true, edges, 1) }
                .let { morph(it, width, height, scaleX, scaleY, BACKGROUND_ERODE, false, edges, 1) }
                .let { blur(it, width, height, scaleX, scaleY, edges, 1f) }
        }
        val subject = ByteArray(width * height) { if (mask.values[it] > SUBJECT_THRESHOLD) 1 else 0 }
        val subjectValues = morph(subject, width, height, scaleX, scaleY, SUBJECT_ERODE, false, edges, 0)
            .let { blur(it, width, height, scaleX, scaleY, edges, 0f) }
        val backgroundValues = backgroundInterior.join()

        return FloatArray(width * height * 2).also { out ->
            for (index in 0 until width * height) {
                out[2 * index] = subjectValues[index]
                out[2 * index + 1] = backgroundValues[index]
            }
        }
    }

    /**
     * Layer mask of a focus point outside the salient subject.
     *
     * `ComputeFloodedFocalMask`: pixels whose Lens Blur depth lies in the
     * focal range [r1, r2] seed an 8-connected flood that may grow through
     * depths within [r1 - padding, r2 + padding]. Inside the flood the
     * coverage falls linearly from 1 at the focal range to 0 at the padding,
     * so a continuous surface leaves protection exactly where its CoC starts;
     * only a depth discontinuity ends the mask abruptly, and that edge is the
     * one the RGB refinement resolves (Lens Blur solves it with `deep_matting`).
     */
    fun focalLayerMask(depth: RelativeDepthMap, focalRange: LensBlurFocalRange): SubjectMask {
        val width = depth.width
        val height = depth.height
        val strongLow = focalRange.lowerFull
        val strongHigh = focalRange.upperFull
        val weakLow = strongLow - FOCAL_FLOOD_PADDING
        val weakHigh = strongHigh + FOCAL_FLOOD_PADDING
        val result = FloatArray(width * height)
        val queue = IntArray(width * height)
        var head = 0
        var tail = 0
        for (index in 0 until width * height) {
            val lensDepth = LensBlurFocalRange.lensDepth(depth.values[index])
            if (lensDepth in strongLow..strongHigh) {
                result[index] = 1f
                queue[tail++] = index
            }
        }
        while (head < tail) {
            val index = queue[head++]
            val x = index % width
            val y = index / width
            for (dy in -1..1) {
                val ny = y + dy
                if (ny < 0 || ny >= height) continue
                for (dx in -1..1) {
                    val nx = x + dx
                    if ((dx == 0 && dy == 0) || nx < 0 || nx >= width) continue
                    val neighbor = ny * width + nx
                    if (result[neighbor] != 0f) continue
                    val lensDepth = LensBlurFocalRange.lensDepth(depth.values[neighbor])
                    if (lensDepth in weakLow..weakHigh) {
                        result[neighbor] = 1f
                        queue[tail++] = neighbor
                    }
                }
            }
        }
        for (index in result.indices) {
            if (result[index] == 0f) continue
            val lensDepth = LensBlurFocalRange.lensDepth(depth.values[index])
            val outside = max(max(strongLow - lensDepth, lensDepth - strongHigh), 0f)
            result[index] = (1f - outside / FOCAL_FLOOD_PADDING).coerceIn(0f, 1f)
        }
        return SubjectMask(width, height, result)
    }

    /**
     * 3x3 median of the model's depth at its native grid. Lens Blur applies
     * `cv::medianBlur(3)` after bilinear upsampling, where it is almost an
     * identity; at the model grid it removes the inference speckle it targets.
     */
    fun median3(depth: RelativeDepthMap): RelativeDepthMap {
        val width = depth.width
        val height = depth.height
        val window = FloatArray(9)
        val values = FloatArray(width * height)
        for (y in 0 until height) {
            for (x in 0 until width) {
                var n = 0
                for (dy in -1..1) {
                    val sy = (y + dy).coerceIn(0, height - 1)
                    for (dx in -1..1) {
                        window[n++] = depth.values[sy * width + (x + dx).coerceIn(0, width - 1)]
                    }
                }
                window.sort()
                values[y * width + x] = window[4]
            }
        }
        return RelativeDepthMap(width, height, values)
    }

    private class CropEdges(val left: Boolean, val right: Boolean, val top: Boolean, val bottom: Boolean)

    /**
     * Square erosion / dilation by [iterations] Lens Blur texels (3x3 iterated), separable,
     * of a binary (0 / 1) mask. Each pass slides a count of set samples over the window:
     * erosion keeps a sample whose whole window is set, dilation one whose window holds any,
     * so the cost per sample does not depend on the radius.
     */
    private fun morph(
        source: ByteArray,
        width: Int,
        height: Int,
        scaleX: Float,
        scaleY: Float,
        iterations: Int,
        dilate: Boolean,
        edges: CropEdges,
        outside: Byte,
    ): ByteArray {
        val radiusX = (iterations * scaleX).roundToInt()
        val radiusY = (iterations * scaleY).roundToInt()
        val windowX = 2 * radiusX + 1
        val windowY = 2 * radiusY + 1
        val horizontal = ByteArray(width * height)
        for (y in 0 until height) {
            val rowBase = y * width
            fun sample(x: Int): Int {
                if ((x < 0 && edges.left) || (x >= width && edges.right)) return outside.toInt()
                return source[rowBase + x.coerceIn(0, width - 1)].toInt()
            }
            var count = 0
            for (x in -radiusX..radiusX) count += sample(x)
            for (x in 0 until width) {
                horizontal[rowBase + x] = morphValue(count, windowX, dilate)
                count += sample(x + radiusX + 1) - sample(x - radiusX)
            }
        }

        // Vertical counts per column, slid row by row so every access stays row-major.
        val outsideCount = outside.toInt()
        val counts = IntArray(width)
        fun accumulate(row: Int, sign: Int) {
            if ((row < 0 && edges.top) || (row >= height && edges.bottom)) {
                if (outsideCount != 0) for (x in 0 until width) counts[x] += sign * outsideCount
                return
            }
            val base = row.coerceIn(0, height - 1) * width
            for (x in 0 until width) counts[x] += sign * horizontal[base + x]
        }
        for (row in -radiusY..radiusY) accumulate(row, 1)
        val result = ByteArray(width * height)
        for (y in 0 until height) {
            val rowBase = y * width
            for (x in 0 until width) result[rowBase + x] = morphValue(counts[x], windowY, dilate)
            if (y + 1 < height) {
                accumulate(y + radiusY + 1, 1)
                accumulate(y - radiusY, -1)
            }
        }
        return result
    }

    private fun morphValue(setCount: Int, window: Int, dilate: Boolean): Byte =
        if (dilate) { if (setCount > 0) 1 else 0 } else { if (setCount == window) 1 else 0 }

    /** Separable Gaussian of a binary mask; the vertical pass walks rows to stay row-major. */
    private fun blur(
        source: ByteArray,
        width: Int,
        height: Int,
        scaleX: Float,
        scaleY: Float,
        edges: CropEdges,
        outside: Float,
    ): FloatArray {
        fun kernel(scale: Float): FloatArray {
            val half = ceil(BLUR_HALF_WIDTH * scale).toInt()
            val sigma = BLUR_SIGMA * scale
            val weights = FloatArray(2 * half + 1) { exp(-((it - half) * (it - half)) / (2f * sigma * sigma)) }
            val sum = weights.sum()
            return FloatArray(weights.size) { weights[it] / sum }
        }
        val kernelX = kernel(scaleX)
        val kernelY = kernel(scaleY)
        val halfX = kernelX.size / 2
        val halfY = kernelY.size / 2
        val horizontal = FloatArray(width * height)
        val row = FloatArray(width + 2 * halfX)
        for (y in 0 until height) {
            for (i in row.indices) {
                val x = i - halfX
                row[i] = if ((x < 0 && edges.left) || (x >= width && edges.right)) {
                    outside
                } else {
                    source[y * width + x.coerceIn(0, width - 1)].toFloat()
                }
            }
            for (x in 0 until width) {
                var sum = 0f
                for (i in kernelX.indices) sum += kernelX[i] * row[x + i]
                horizontal[y * width + x] = sum
            }
        }
        val result = FloatArray(width * height)
        val sum = FloatArray(width)
        for (y in 0 until height) {
            sum.fill(0f)
            for (i in kernelY.indices) {
                val sourceRow = y + i - halfY
                val weight = kernelY[i]
                if ((sourceRow < 0 && edges.top) || (sourceRow >= height && edges.bottom)) {
                    val value = weight * outside
                    for (x in 0 until width) sum[x] += value
                } else {
                    val base = sourceRow.coerceIn(0, height - 1) * width
                    for (x in 0 until width) sum[x] += weight * horizontal[base + x]
                }
            }
            val rowBase = y * width
            for (x in 0 until width) result[rowBase + x] = sum[x].coerceIn(0f, 1f)
        }
        return result
    }
}
