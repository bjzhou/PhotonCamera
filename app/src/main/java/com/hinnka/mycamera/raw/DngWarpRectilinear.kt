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

    /** Image planes carried by every record: R, G, B. */
    const val PLANES = 3

    /** Radial kr0..kr3 followed by tangential kt0, kt1. */
    const val PLANE_COEFFICIENTS = 6

    /** Offset of [centerH, centerV] inside a record. */
    const val CENTER_OFFSET = PLANES * PLANE_COEFFICIENTS

    /**
     * One opcode record: per-plane coefficients for R, G, B, then the normalized center.
     * Single-plane DNG opcodes are replicated to all planes (DNG SDK reuses the last plane).
     */
    const val RECORD_SIZE = CENTER_OFFSET + 2

    /** Plane whose geometry represents the image for luminance-only sampling. */
    const val REFERENCE_PLANE = 1

    /** dng_opcode_BaseWarpRectilinear::IsNOP: identity radial and zero tangential terms. */
    fun isNoOp(parameters: FloatArray): Boolean {
        if (parameters.size != RECORD_SIZE) return false
        for (plane in 0 until PLANES) {
            val offset = plane * PLANE_COEFFICIENTS
            if (parameters[offset] != 1f) return false
            for (index in 1 until PLANE_COEFFICIENTS) {
                if (parameters[offset + index] != 0f) return false
            }
        }
        return true
    }

    /** Floats per single-plane geometry: [kr0..kr3, kt0, kt1, centerH, centerV]. */
    const val SINGLE_PLANE_SIZE = PLANE_COEFFICIENTS + 2

    /**
     * Expands a single-plane opcode ([SINGLE_PLANE_SIZE] floats) into a record by replicating
     * its coefficients to every plane, as the DNG SDK does for images with more planes.
     */
    fun recordFromSinglePlane(singlePlane: FloatArray): FloatArray {
        require(singlePlane.size == SINGLE_PLANE_SIZE) {
            "Single-plane WarpRectilinear size ${singlePlane.size}"
        }
        return FloatArray(RECORD_SIZE).also { record ->
            for (plane in 0 until PLANES) {
                singlePlane.copyInto(record, plane * PLANE_COEFFICIENTS, 0, PLANE_COEFFICIENTS)
            }
            record[CENTER_OFFSET] = singlePlane[PLANE_COEFFICIENTS]
            record[CENTER_OFFSET + 1] = singlePlane[PLANE_COEFFICIENTS + 1]
        }
    }

    /**
     * Single-plane geometry of [REFERENCE_PLANE], for consumers that sample one luminance-like
     * value per position (statistics, metering) rather than resampling each color plane.
     */
    fun referencePlaneParameters(parameters: FloatArray): FloatArray {
        require(parameters.size == RECORD_SIZE) { "WarpRectilinear record size ${parameters.size}" }
        val offset = REFERENCE_PLANE * PLANE_COEFFICIENTS
        return FloatArray(SINGLE_PLANE_SIZE).also { out ->
            parameters.copyInto(out, 0, offset, offset + PLANE_COEFFICIENTS)
            out[PLANE_COEFFICIENTS] = parameters[CENTER_OFFSET]
            out[PLANE_COEFFICIENTS + 1] = parameters[CENTER_OFFSET + 1]
        }
    }

    /** Whether all planes share one geometry, so a single sample serves every channel. */
    fun planesShareGeometry(parameters: FloatArray): Boolean {
        if (parameters.size != RECORD_SIZE) return false
        for (plane in 1 until PLANES) {
            for (index in 0 until PLANE_COEFFICIENTS) {
                if (parameters[plane * PLANE_COEFFICIENTS + index] != parameters[index]) {
                    return false
                }
            }
        }
        return true
    }

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
        if (parameters.size != RECORD_SIZE || width <= 1 || height <= 1 ||
            left < 0 || top < 0 || right > width || bottom > height ||
            left >= right || top >= bottom
        ) {
            return false
        }

        fun covered(x: Int, y: Int): Boolean {
            for (plane in 0 until PLANES) {
                val source = mapDestinationToSource(
                    parameters,
                    plane,
                    width,
                    height,
                    x.toFloat(),
                    y.toFloat(),
                ) ?: return false
                // AOSP DngCreator accepts coordinates inside the continuous image rectangle
                // [0,width) x [0,height). Values above the last pixel center by less than one
                // pixel are handled by the resampler without a multi-pixel repeated border.
                if (source.first < -1e-3f || source.first >= width.toFloat() ||
                    source.second < -1e-3f || source.second >= height.toFloat()
                ) {
                    return false
                }
            }
            return true
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
        if (parameters.size != RECORD_SIZE || parameters.any { !it.isFinite() } ||
            width <= 1 || height <= 1
        ) {
            return false
        }
        if (parameters[CENTER_OFFSET] !in 0f..1f || parameters[CENTER_OFFSET + 1] !in 0f..1f) {
            return false
        }

        for (plane in 0 until PLANES) {
            for (gridY in 0..16) {
                for (gridX in 0..16) {
                    val destinationX = (width - 1) * gridX / 16f
                    val destinationY = (height - 1) * gridY / 16f
                    val source = mapDestinationToSource(
                        parameters,
                        plane,
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
        }
        return true
    }

    private fun mapDestinationToSource(
        parameters: FloatArray,
        plane: Int,
        width: Int,
        height: Int,
        destinationX: Float,
        destinationY: Float,
    ): Pair<Float, Float>? {
        val centerX = parameters[CENTER_OFFSET] * width
        val centerY = parameters[CENTER_OFFSET + 1] * height
        val p = plane * PLANE_COEFFICIENTS
        val farX = max(centerX, width - centerX)
        val farY = max(centerY, height - centerY)
        val normRadius = sqrt(farX * farX + farY * farY).coerceAtLeast(1f)
        val dx = (destinationX - centerX) / normRadius
        val dy = (destinationY - centerY) / normRadius
        val r2 = (dx * dx + dy * dy).coerceAtMost(1f)
        val ratio = parameters[p] + parameters[p + 1] * r2 +
            parameters[p + 2] * r2 * r2 + parameters[p + 3] * r2 * r2 * r2
        if (!ratio.isFinite() || ratio <= 0f) return null
        val tangentX = parameters[p + 5] * (r2 + 2f * dx * dx) +
            2f * parameters[p + 4] * dx * dy
        val tangentY = parameters[p + 4] * (r2 + 2f * dy * dy) +
            2f * parameters[p + 5] * dx * dy
        val sourceX = centerX + normRadius * (dx * ratio + tangentX)
        val sourceY = centerY + normRadius * (dy * ratio + tangentY)
        return if (sourceX.isFinite() && sourceY.isFinite()) {
            sourceX to sourceY
        } else {
            null
        }
    }
}
