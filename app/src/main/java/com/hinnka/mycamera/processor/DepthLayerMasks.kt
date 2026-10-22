package com.hinnka.mycamera.processor

import com.hinnka.mycamera.ml.RelativeDepthMap
import com.hinnka.mycamera.ml.SubjectMask
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.roundToInt

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

        val subject = FloatArray(width * height) { if (mask.values[it] > SUBJECT_THRESHOLD) 1f else 0f }
        val background = FloatArray(width * height) { 1f - subject[it] }

        val subjectInterior = morph(subject, width, height, scaleX, scaleY, SUBJECT_ERODE, false, edges, 0f)
            .let { blur(it, width, height, scaleX, scaleY, edges, 0f) }
        val backgroundInterior = morph(background, width, height, scaleX, scaleY, BACKGROUND_ERODE, false, edges, 1f)
            .let { morph(it, width, height, scaleX, scaleY, BACKGROUND_DILATE, true, edges, 1f) }
            .let { morph(it, width, height, scaleX, scaleY, BACKGROUND_ERODE, false, edges, 1f) }
            .let { blur(it, width, height, scaleX, scaleY, edges, 1f) }

        return FloatArray(width * height * 2).also { out ->
            for (index in 0 until width * height) {
                out[2 * index] = subjectInterior[index]
                out[2 * index + 1] = backgroundInterior[index]
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

    /** Square erosion / dilation by [iterations] Lens Blur texels (3x3 iterated), separable. */
    private fun morph(
        source: FloatArray,
        width: Int,
        height: Int,
        scaleX: Float,
        scaleY: Float,
        iterations: Int,
        dilate: Boolean,
        edges: CropEdges,
        outside: Float,
    ): FloatArray {
        val radiusX = (iterations * scaleX).roundToInt()
        val radiusY = (iterations * scaleY).roundToInt()
        val horizontal = FloatArray(width * height)
        val row = FloatArray(width + 2 * radiusX)
        for (y in 0 until height) {
            padRow(source, width, y, radiusX, edges, outside, row)
            for (x in 0 until width) {
                var value = row[x + radiusX]
                for (i in x..x + 2 * radiusX) {
                    value = if (dilate) max(value, row[i]) else minOf(value, row[i])
                }
                horizontal[y * width + x] = value
            }
        }
        val result = FloatArray(width * height)
        val column = FloatArray(height + 2 * radiusY)
        for (x in 0 until width) {
            padColumn(horizontal, width, height, x, radiusY, edges, outside, column)
            for (y in 0 until height) {
                var value = column[y + radiusY]
                for (i in y..y + 2 * radiusY) {
                    value = if (dilate) max(value, column[i]) else minOf(value, column[i])
                }
                result[y * width + x] = value
            }
        }
        return result
    }

    /** `cv::GaussianBlur(11x11, sigma 4)` of the Lens Blur grid, separable. */
    private fun blur(
        source: FloatArray,
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
            padRow(source, width, y, halfX, edges, outside, row)
            for (x in 0 until width) {
                var sum = 0f
                for (i in kernelX.indices) sum += kernelX[i] * row[x + i]
                horizontal[y * width + x] = sum
            }
        }
        val result = FloatArray(width * height)
        val column = FloatArray(height + 2 * halfY)
        for (x in 0 until width) {
            padColumn(horizontal, width, height, x, halfY, edges, outside, column)
            for (y in 0 until height) {
                var sum = 0f
                for (i in kernelY.indices) sum += kernelY[i] * column[y + i]
                result[y * width + x] = sum.coerceIn(0f, 1f)
            }
        }
        return result
    }

    /** Row [y] with [radius] edge-handled samples on each side: `padded[radius + x]` is pixel x. */
    private fun padRow(
        values: FloatArray,
        width: Int,
        y: Int,
        radius: Int,
        edges: CropEdges,
        outside: Float,
        padded: FloatArray,
    ) {
        for (i in 0 until width + 2 * radius) padded[i] = sampleRow(values, width, y, i - radius, edges, outside)
    }

    /** Column [x] with [radius] edge-handled samples on each side: `padded[radius + y]` is pixel y. */
    private fun padColumn(
        values: FloatArray,
        width: Int,
        height: Int,
        x: Int,
        radius: Int,
        edges: CropEdges,
        outside: Float,
        padded: FloatArray,
    ) {
        for (i in 0 until height + 2 * radius) {
            padded[i] = sampleColumn(values, width, height, x, i - radius, edges, outside)
        }
    }

    private fun sampleRow(values: FloatArray, width: Int, y: Int, x: Int, edges: CropEdges, outside: Float): Float {
        if ((x < 0 && edges.left) || (x >= width && edges.right)) return outside
        return values[y * width + x.coerceIn(0, width - 1)]
    }

    private fun sampleColumn(
        values: FloatArray,
        width: Int,
        height: Int,
        x: Int,
        y: Int,
        edges: CropEdges,
        outside: Float,
    ): Float {
        if ((y < 0 && edges.top) || (y >= height && edges.bottom)) return outside
        return values[y.coerceIn(0, height - 1) * width + x]
    }
}
