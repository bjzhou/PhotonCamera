package com.hinnka.mycamera.ml

import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * Uses a clearly separated, spatially compact depth layer only to choose RGB context for U2NetP.
 * Depth is never a segmentation mask here. Decisions do not depend on the focus point or on
 * whether the imported model encodes near objects with large or small values.
 */
internal object DepthSubjectCropPlanner {
    data class Crop(val left: Int, val top: Int, val right: Int, val bottom: Int) {
        val width: Int get() = right - left
        val height: Int get() = bottom - top
    }

    data class Plan(
        val crop: Crop,
        val reason: String,
        val foregroundFraction: Float,
        val separation: Float,
        val linearGain: Float,
    )

    private const val HISTOGRAM_BINS = 256
    private const val MIN_DEPTH_SEPARATION = 0.12
    // A continuous depth ramp explains only about 75% of its variance with two classes.
    // Requiring 85% avoids interpreting ordinary perspective as a cuttable object boundary.
    private const val MIN_EXPLAINED_VARIANCE = 0.85
    private const val MIN_BORDER_BACKGROUND_FRACTION = 0.9
    private const val MIN_FOREGROUND_FRACTION = 0.005f
    private const val MAX_FOREGROUND_FRACTION = 0.45f
    private const val MIN_COMPONENT_FRACTION = 0.00025
    private const val MIN_MODEL_INPUT_EDGE = 320
    private const val MIN_LINEAR_GAIN = 1.25f
    private const val MAX_CROP_AREA_FRACTION = 0.65

    /** [Crop.right] and [Crop.bottom] are exclusive coordinates in the original RGB image. */
    fun plan(depth: RelativeDepthMap, imageWidth: Int, imageHeight: Int): Plan {
        require(imageWidth > 0 && imageHeight > 0) { "Image dimensions must be positive" }
        require(depth.values.all { it.isFinite() && it in 0f..1f }) {
            "Crop planning requires finite normalized depth"
        }
        val fullCrop = Crop(0, 0, imageWidth, imageHeight)
        fun full(reason: String, fraction: Float = 0f, separation: Float = 0f) =
            Plan(fullCrop, reason, fraction, separation, 1f)

        if (min(imageWidth, imageHeight) < MIN_MODEL_INPUT_EDGE ||
            depth.width < 3 || depth.height < 3
        ) {
            return full("insufficient_source_resolution")
        }

        val counts = IntArray(HISTOGRAM_BINS)
        val sums = DoubleArray(HISTOGRAM_BINS)
        var totalSum = 0.0
        var totalSquaredSum = 0.0
        for (value in depth.values) {
            val bin = (value * (HISTOGRAM_BINS - 1)).roundToInt()
            counts[bin]++
            sums[bin] += value.toDouble()
            totalSum += value.toDouble()
            totalSquaredSum += value.toDouble() * value.toDouble()
        }
        val totalCount = depth.values.size
        val totalMean = totalSum / totalCount
        val totalVariance = totalSquaredSum / totalCount - totalMean * totalMean
        if (totalVariance <= 1e-12) return full("flat_depth")

        var lowCount = 0
        var lowSum = 0.0
        var bestBetweenVariance = 0.0
        var bestLowMean = 0.0
        var bestHighMean = 0.0
        for (bin in 0 until HISTOGRAM_BINS - 1) {
            lowCount += counts[bin]
            lowSum += sums[bin]
            val highCount = totalCount - lowCount
            if (lowCount == 0 || highCount == 0) continue
            val lowMean = lowSum / lowCount
            val highMean = (totalSum - lowSum) / highCount
            val difference = highMean - lowMean
            val betweenVariance = (lowCount.toDouble() / totalCount) *
                (highCount.toDouble() / totalCount) * difference * difference
            if (betweenVariance > bestBetweenVariance) {
                bestBetweenVariance = betweenVariance
                bestLowMean = lowMean
                bestHighMean = highMean
            }
        }
        val separation = (bestHighMean - bestLowMean).toFloat()
        if (separation < MIN_DEPTH_SEPARATION ||
            bestBetweenVariance / totalVariance < MIN_EXPLAINED_VARIANCE
        ) {
            return full("weak_depth_separation", separation = separation)
        }

        // A midpoint between actual class means avoids making geometry depend on the particular
        // histogram bin selected in an empty interval, including after reversing depth polarity.
        val midpoint = (bestLowMean + bestHighMean) * 0.5
        val borderWidth = max(1, (min(depth.width, depth.height) * 0.02).roundToInt())
        var borderCount = 0
        var highBorderCount = 0
        for (y in 0 until depth.height) {
            for (x in 0 until depth.width) {
                if (x < borderWidth || y < borderWidth ||
                    x >= depth.width - borderWidth || y >= depth.height - borderWidth
                ) {
                    borderCount++
                    if (depth.values[y * depth.width + x] > midpoint) highBorderCount++
                }
            }
        }
        val highBorderFraction = highBorderCount.toDouble() / borderCount
        val lowBorderFraction = (borderCount - highBorderCount).toDouble() / borderCount
        val highIsForeground = when {
            highBorderFraction >= MIN_BORDER_BACKGROUND_FRACTION -> false
            lowBorderFraction >= MIN_BORDER_BACKGROUND_FRACTION -> true
            else -> return full("ambiguous_border", separation = separation)
        }

        val foreground = ByteArray(totalCount)
        var rawForegroundCount = 0
        for (index in depth.values.indices) {
            if ((depth.values[index] > midpoint) == highIsForeground) {
                foreground[index] = 1
                rawForegroundCount++
            }
        }
        val rawFraction = rawForegroundCount.toFloat() / totalCount
        if (rawFraction < MIN_FOREGROUND_FRACTION || rawFraction > MAX_FOREGROUND_FRACTION) {
            return full("unsuitable_foreground_extent", rawFraction, separation)
        }

        val minimumComponentSize = max(4, ceil(totalCount * MIN_COMPONENT_FRACTION).toInt())
        val queue = IntArray(totalCount)
        var retainedCount = 0
        var minX = depth.width
        var minY = depth.height
        var maxX = -1
        var maxY = -1
        for (start in foreground.indices) {
            if (foreground[start] != 1.toByte()) continue
            var readIndex = 0
            var writeIndex = 1
            queue[0] = start
            foreground[start] = 2
            var componentMinX = depth.width
            var componentMinY = depth.height
            var componentMaxX = -1
            var componentMaxY = -1
            while (readIndex < writeIndex) {
                val current = queue[readIndex++]
                val x = current % depth.width
                val y = current / depth.width
                componentMinX = min(componentMinX, x)
                componentMinY = min(componentMinY, y)
                componentMaxX = max(componentMaxX, x)
                componentMaxY = max(componentMaxY, y)
                // Eight-connected components keep narrow diagonal limbs together.
                for (neighborY in max(0, y - 1)..min(depth.height - 1, y + 1)) {
                    for (neighborX in max(0, x - 1)..min(depth.width - 1, x + 1)) {
                        val neighbor = neighborY * depth.width + neighborX
                        if (foreground[neighbor] == 1.toByte()) {
                            foreground[neighbor] = 2
                            queue[writeIndex++] = neighbor
                        }
                    }
                }
            }
            if (writeIndex < minimumComponentSize) continue
            // Keep every substantial component, including a smaller second subject.
            retainedCount += writeIndex
            minX = min(minX, componentMinX)
            minY = min(minY, componentMinY)
            maxX = max(maxX, componentMaxX)
            maxY = max(maxY, componentMaxY)
        }
        val foregroundFraction = retainedCount.toFloat() / totalCount
        if (foregroundFraction < MIN_FOREGROUND_FRACTION) {
            return full("no_coherent_foreground", foregroundFraction, separation)
        }

        // Cover the complete footprint of every retained depth texel in original RGB pixels.
        val texelWidth = imageWidth.toDouble() / depth.width
        val texelHeight = imageHeight.toDouble() / depth.height
        val left = floor(minX * texelWidth).toInt()
        val top = floor(minY * texelHeight).toInt()
        val right = ceil((maxX + 1) * texelWidth).toInt()
        val bottom = ceil((maxY + 1) * texelHeight).toInt()
        val contextPadding = max(
            max(right - left, bottom - top) * 0.25,
            min(imageWidth, imageHeight) * 0.03,
        )
        // One extra depth texel on each side accounts for the low-resolution depth boundary.
        val desiredWidth = ceil(right - left + 2 * (contextPadding + texelWidth)).toInt()
        val desiredHeight = ceil(bottom - top + 2 * (contextPadding + texelHeight)).toInt()
        val squareSide = max(MIN_MODEL_INPUT_EDGE, max(desiredWidth, desiredHeight))
        val cropWidth = min(squareSide, imageWidth)
        val cropHeight = min(squareSide, imageHeight)
        val linearGain = min(imageWidth.toFloat() / cropWidth, imageHeight.toFloat() / cropHeight)
        val areaFraction = cropWidth.toDouble() * cropHeight / (imageWidth.toDouble() * imageHeight)
        if (linearGain < MIN_LINEAR_GAIN || areaFraction >= MAX_CROP_AREA_FRACTION) {
            return full("insufficient_sampling_gain", foregroundFraction, separation)
        }

        // Shift a fixed-size context window at an image boundary; do not squeeze the object.
        val cropLeft = floor((left.toDouble() + right - cropWidth) * 0.5).toInt()
            .coerceIn(0, imageWidth - cropWidth)
        val cropTop = floor((top.toDouble() + bottom - cropHeight) * 0.5).toInt()
            .coerceIn(0, imageHeight - cropHeight)
        return Plan(
            Crop(cropLeft, cropTop, cropLeft + cropWidth, cropTop + cropHeight),
            "depth_guided_crop",
            foregroundFraction,
            separation,
            linearGain,
        )
    }
}
