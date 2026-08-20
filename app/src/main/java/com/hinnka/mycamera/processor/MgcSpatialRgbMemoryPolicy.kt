package com.hinnka.mycamera.processor

/**
 * Advisory memory planning for Spatial RGB.
 *
 * Estimates choose between equivalent reconstruction layouts, but they never decide whether the
 * GLES driver is allowed to attempt the operation. When every candidate exceeds the advisory
 * threshold, the smallest estimated candidate remains runnable.
 */
internal object MgcSpatialRgbMemoryPolicy {
    private const val RGBA16_BYTES_PER_PIXEL = 8L
    private const val IIR_SURFACE_COUNT = 3L

    fun selectAdvisoryPlanIndex(
        projectedBytes: List<Long>,
        advisoryBytes: Long,
    ): Int {
        require(projectedBytes.isNotEmpty())
        require(projectedBytes.all { it >= 0L })
        require(advisoryBytes > 0L)
        val fittingIndex = projectedBytes.indexOfFirst { it <= advisoryBytes }
        return if (fittingIndex >= 0) {
            fittingIndex
        } else {
            projectedBytes.indices.minBy { projectedBytes[it] }
        }
    }

    fun iirWorkingSetBytes(width: Int, height: Int): Long {
        require(width > 0 && height > 0)
        return width.toLong() * height * RGBA16_BYTES_PER_PIXEL * IIR_SURFACE_COUNT
    }
}
