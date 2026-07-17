package com.hinnka.mycamera.raw

internal data class DenoiseProfileStripe(
    val rowOffset: Int,
    val rowCount: Int,
)

/**
 * Bounds the NLM accumulator SSBO while keeping input sampling in full-image coordinates.
 * A vec4 accumulator costs 16 bytes per output pixel.
 */
internal object DenoiseProfileStripePlanner {
    const val ACCUMULATOR_BYTES_PER_PIXEL = 16L
    const val PREFERRED_STRIPE_ROWS = 256
    const val TARGET_BUFFER_BYTES = 64L * 1024L * 1024L

    fun capacityRows(
        imageWidth: Int,
        imageHeight: Int,
        maxShaderStorageBlockBytes: Long,
    ): Int {
        if (imageWidth <= 0 || imageHeight <= 0 || maxShaderStorageBlockBytes <= 0L) return 0
        val rowBytes = imageWidth.toLong() * ACCUMULATOR_BYTES_PER_PIXEL
        if (rowBytes > maxShaderStorageBlockBytes) return 0

        val byteBudget = minOf(maxShaderStorageBlockBytes, TARGET_BUFFER_BYTES)
        val rowsByBudget = (byteBudget / rowBytes).coerceAtMost(Int.MAX_VALUE.toLong()).toInt()
        val candidate = minOf(imageHeight, PREFERRED_STRIPE_ROWS, rowsByBudget)
        val workgroupRows = DenoiseProfileShaders.IMAGE_LOCAL_Y
        return if (candidate >= workgroupRows) {
            candidate - candidate % workgroupRows
        } else {
            candidate
        }
    }

    fun requiredBytes(imageWidth: Int, capacityRows: Int): Long =
        imageWidth.toLong() * capacityRows.toLong() * ACCUMULATOR_BYTES_PER_PIXEL

    fun plan(imageHeight: Int, capacityRows: Int): List<DenoiseProfileStripe> {
        require(imageHeight > 0) { "Image height must be positive" }
        require(capacityRows > 0) { "Stripe capacity must be positive" }
        return buildList {
            var rowOffset = 0
            while (rowOffset < imageHeight) {
                val rowCount = minOf(capacityRows, imageHeight - rowOffset)
                add(DenoiseProfileStripe(rowOffset, rowCount))
                rowOffset += rowCount
            }
        }
    }
}
