package com.hinnka.mycamera.raw

import kotlin.math.max
import kotlin.math.sqrt

/**
 * Validation and source-coverage policy for DNG 1.3 WarpRectilinear opcodes.
 *
 * DNG maps corrected destination pixels back into the uncorrected Stage 3 image. Optional
 * opcodes may be skipped. In particular, an optional warp must not turn an otherwise valid
 * DefaultCrop into repeated edge pixels by mapping that crop outside the available source.
 */
internal object DngWarpRectilinear {
    const val OPTIONAL_FLAG = 1

    enum class Rejection {
        NONE,
        MALFORMED_OR_UNSAFE,
        OPTIONAL_REQUIRES_EDGE_CLAMPING,
    }

    data class Decision(
        val apply: Boolean,
        val rejection: Rejection,
    )

    fun decide(
        parameters: FloatArray,
        flags: Int,
        width: Int,
        height: Int,
        left: Int,
        top: Int,
        right: Int,
        bottom: Int,
    ): Decision {
        if (!isNumericallySafe(parameters, width, height)) {
            return Decision(false, Rejection.MALFORMED_OR_UNSAFE)
        }
        val hasCoverage = hasSourceCoverage(
            parameters = parameters,
            width = width,
            height = height,
            left = left,
            top = top,
            right = right,
            bottom = bottom,
        )
        if (!hasCoverage && flags and OPTIONAL_FLAG != 0) {
            return Decision(false, Rejection.OPTIONAL_REQUIRES_EDGE_CLAMPING)
        }
        return Decision(true, Rejection.NONE)
    }

    fun hasSourceCoverage(
        parameters: FloatArray,
        width: Int,
        height: Int,
        left: Int,
        top: Int,
        right: Int,
        bottom: Int,
    ): Boolean {
        if (parameters.size != 8 || width <= 1 || height <= 1 ||
            left < 0 || top < 0 || right > width || bottom > height ||
            left >= right || top >= bottom
        ) {
            return false
        }

        fun covered(x: Int, y: Int): Boolean {
            val source = mapDestinationToSource(parameters, width, height, x.toFloat(), y.toFloat())
                ?: return false
            // AOSP DngCreator accepts coordinates inside the continuous image rectangle
            // [0,width) x [0,height). Values above the last pixel center by less than one pixel
            // are handled by the resampler without creating a multi-pixel repeated border.
            return source.first >= -1e-3f && source.first < width.toFloat() &&
                source.second >= -1e-3f && source.second < height.toFloat()
        }

        val lastX = right - 1
        val lastY = bottom - 1
        for (x in left until right) {
            if (!covered(x, top) || !covered(x, lastY)) return false
        }
        for (y in (top + 1) until lastY) {
            if (!covered(left, y) || !covered(lastX, y)) return false
        }
        return true
    }

    private fun isNumericallySafe(parameters: FloatArray, width: Int, height: Int): Boolean {
        if (parameters.size != 8 || parameters.any { !it.isFinite() } ||
            width <= 1 || height <= 1
        ) {
            return false
        }
        if (parameters[6] !in 0f..1f || parameters[7] !in 0f..1f) return false

        for (gridY in 0..16) {
            for (gridX in 0..16) {
                val destinationX = (width - 1) * gridX / 16f
                val destinationY = (height - 1) * gridY / 16f
                val source = mapDestinationToSource(
                    parameters,
                    width,
                    height,
                    destinationX,
                    destinationY,
                ) ?: return false
                val limitX = width * 4f
                val limitY = height * 4f
                if (source.first !in -limitX..limitX * 2f ||
                    source.second !in -limitY..limitY * 2f
                ) {
                    return false
                }
            }
        }
        return true
    }

    private fun mapDestinationToSource(
        parameters: FloatArray,
        width: Int,
        height: Int,
        destinationX: Float,
        destinationY: Float,
    ): Pair<Float, Float>? {
        val centerX = parameters[6] * width
        val centerY = parameters[7] * height
        val farX = max(centerX, width - centerX)
        val farY = max(centerY, height - centerY)
        val normRadius = sqrt(farX * farX + farY * farY).coerceAtLeast(1f)
        val dx = (destinationX - centerX) / normRadius
        val dy = (destinationY - centerY) / normRadius
        val r2 = (dx * dx + dy * dy).coerceAtMost(1f)
        val ratio = parameters[0] + parameters[1] * r2 +
            parameters[2] * r2 * r2 + parameters[3] * r2 * r2 * r2
        if (!ratio.isFinite() || ratio <= 0f) return null
        val tangentX = parameters[5] * (r2 + 2f * dx * dx) +
            2f * parameters[4] * dx * dy
        val tangentY = parameters[4] * (r2 + 2f * dy * dy) +
            2f * parameters[5] * dx * dy
        val sourceX = centerX + normRadius * (dx * ratio + tangentX)
        val sourceY = centerY + normRadius * (dy * ratio + tangentY)
        return if (sourceX.isFinite() && sourceY.isFinite()) {
            sourceX to sourceY
        } else {
            null
        }
    }
}
