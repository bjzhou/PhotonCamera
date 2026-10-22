package com.hinnka.mycamera.processor

import com.hinnka.mycamera.ml.RelativeDepthMap
import com.hinnka.mycamera.ml.SubjectMask
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * Lens Blur focal range: the ramped `cr_1d_range` [r0, r1, r2, r3] over
 * normalized depth where smaller values are nearer. [r1, r2] is in focus,
 * the defocus ramps linearly to full blur at r0 / r3
 * (docs/lrmobile-lens-blur-evidence.md §2–§3).
 */
internal data class LensBlurFocalRange(
    val lowerNone: Float,
    val lowerFull: Float,
    val upperFull: Float,
    val upperNone: Float,
) {
    companion object {
        private const val RAMP_SIZE = 0.8f
        private const val SAMPLE_MIN_SIZE = 0.2f
        private const val SAMPLE_MAX_SIZE = 0.5f
        private const val SAMPLE_EDGE_SNAP = 0.1f
        private const val HISTOGRAM_BINS = 256
        private const val LOW_PERCENTILE = 0.01f
        private const val HIGH_PERCENTILE = 0.99f
        private const val SUBJECT_COVERAGE = 0.8f
        private const val FOCUS_AREA_RADIUS = 0.045f

        /** `FocusOnSubject`: the subject's depth range with a 0.8 ramp on each side. */
        fun forSubject(depth: RelativeDepthMap, subjectMask: SubjectMask): LensBlurFocalRange? {
            val histogram = FloatArray(HISTOGRAM_BINS)
            var total = 0f
            for (y in 0 until depth.height) {
                val v = (y + 0.5f) / depth.height
                for (x in 0 until depth.width) {
                    if (subjectMask.sample((x + 0.5f) / depth.width, v) < SUBJECT_COVERAGE) continue
                    histogram[bin(lensDepth(depth.values[y * depth.width + x]))] += 1f
                    total += 1f
                }
            }
            if (total <= 0f) return null
            val (lo, hi) = percentileRange(histogram, total)
            return LensBlurFocalRange(lo - RAMP_SIZE, lo, hi, hi + RAMP_SIZE).rounded()
        }

        /**
         * Point focus: `GetAreaDepthRangeFromNegative` (p1 / p99 of the area)
         * followed by `cr_1d_range::SetFromSample(lo, hi, 0.2, 0.5, 0.8, 0.1)`.
         */
        fun forPoint(depth: RelativeDepthMap, focusX: Float, focusY: Float): LensBlurFocalRange {
            val radius = max((min(depth.width, depth.height) * FOCUS_AREA_RADIUS).roundToInt(), 1)
            val centerX = (focusX.coerceIn(0f, 1f) * (depth.width - 1)).roundToInt()
            val centerY = (focusY.coerceIn(0f, 1f) * (depth.height - 1)).roundToInt()
            val histogram = FloatArray(HISTOGRAM_BINS)
            var total = 0f
            for (y in max(centerY - radius, 0)..min(centerY + radius, depth.height - 1)) {
                for (x in max(centerX - radius, 0)..min(centerX + radius, depth.width - 1)) {
                    histogram[bin(lensDepth(depth.values[y * depth.width + x]))] += 1f
                    total += 1f
                }
            }
            val (lo, hi) = if (total > 0f) percentileRange(histogram, total) else 0f to 0f
            return fromSample(lo, hi)
        }

        /** The renderer's relative disparity is nearer-is-larger; Lens Blur depth is nearer-is-smaller. */
        fun lensDepth(disparity: Float): Float = 1f - disparity.coerceIn(0f, 1f)

        private fun bin(depth: Float): Int = (depth.coerceIn(0f, 1f) * (HISTOGRAM_BINS - 1)).roundToInt()

        private fun percentileRange(histogram: FloatArray, total: Float): Pair<Float, Float> {
            var cumulative = 0f
            var lo = 0f
            var hi = 0f
            var foundLo = false
            var foundHi = false
            for (index in histogram.indices) {
                cumulative += histogram[index] / total
                if (!foundLo && cumulative > LOW_PERCENTILE) {
                    foundLo = true
                    lo = index / (HISTOGRAM_BINS - 1f)
                }
                if (!foundHi && cumulative > HIGH_PERCENTILE) {
                    foundHi = true
                    hi = index / (HISTOGRAM_BINS - 1f)
                }
            }
            return lo to hi
        }

        private fun fromSample(sampleA: Float, sampleB: Float): LensBlurFocalRange {
            val lo = min(sampleA, sampleB).coerceIn(0f, 1f)
            val hi = max(sampleA, sampleB).coerceIn(0f, 1f)
            var r0 = lo - RAMP_SIZE
            var r1 = lo
            var r2 = hi
            var r3 = hi + RAMP_SIZE
            if (lo < SAMPLE_EDGE_SNAP) {
                r0 -= lo
                r1 = 0f
            }
            if (hi > 1f - SAMPLE_EDGE_SNAP) {
                r2 = 1f
                r3 += 1f - hi
            }
            return LensBlurFocalRange(r0, r1, r2, r3)
                .limitSize(SAMPLE_MIN_SIZE, SAMPLE_MAX_SIZE)
                .rounded()
        }
    }

    /** `cr_1d_range::LimitSize`: keeps the in-focus width within [minSize, maxSize] inside [0, 1]. */
    private fun limitSize(minSize: Float, maxSize: Float): LensBlurFocalRange {
        var r0 = lowerNone
        var r1 = lowerFull
        var r2 = upperFull
        var r3 = upperNone
        val width = r2 - r1
        if (width < minSize) {
            val grow = (minSize - width) * 0.5f
            r0 -= grow
            r1 -= grow
            r2 += grow
            r3 += grow
        }
        if (r1 > 1f - minSize) {
            val lowerShift = 1f - minSize - r1
            val upperShift = 1f - r2
            r0 += lowerShift
            r1 += lowerShift
            r2 += upperShift
            r3 += upperShift
        }
        if (r2 < minSize) {
            val upperShift = minSize - r2
            val lowerShift = -r1
            r2 += upperShift
            r3 += upperShift
            r0 += lowerShift
            r1 += lowerShift
        }
        if (r2 - r1 > maxSize) {
            val shrink = (r2 - r1 - maxSize) * 0.5f
            r0 += shrink
            r1 += shrink
            r2 -= shrink
            r3 -= shrink
        }
        return LensBlurFocalRange(r0, r1, r2, r3)
    }

    /** `cr_1d_range::Rounded`: Camera Raw stores the range as whole percentages. */
    private fun rounded(): LensBlurFocalRange = LensBlurFocalRange(
        roundPercent(lowerNone),
        roundPercent(lowerFull),
        roundPercent(upperFull),
        roundPercent(upperNone),
    )

    private fun roundPercent(value: Float): Float = (value * 100f).roundToInt() / 100f
}
