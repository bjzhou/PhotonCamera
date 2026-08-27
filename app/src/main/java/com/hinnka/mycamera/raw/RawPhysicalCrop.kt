package com.hinnka.mycamera.raw

import android.graphics.Rect
import kotlin.math.floor

/**
 * One software-physical RAW_SENSOR crop shared by single-frame and multi-frame processing.
 *
 * [sourceBounds] addresses the original RAW_SENSOR plane. Its origin is aligned to the CFA phase
 * represented by [RawMetadata.cfaPattern], so the cropped buffer keeps the same Bayer pattern.
 */
data class RawPhysicalCrop(
    val sourceBounds: Rect,
    val sourceWidth: Int,
    val sourceHeight: Int,
    val activeSourceBounds: Rect,
    val sensorOriginX: Int,
    val sensorOriginY: Int,
    val activeSensorWidth: Int,
    val activeSensorHeight: Int,
) {
    init {
        require(sourceWidth > 0 && sourceHeight > 0)
        require(activeSensorWidth > 0 && activeSensorHeight > 0)
        require(!sourceBounds.isEmpty && !activeSourceBounds.isEmpty)
        require(Rect(0, 0, sourceWidth, sourceHeight).contains(sourceBounds))
        require(Rect(0, 0, sourceWidth, sourceHeight).contains(activeSourceBounds))
        require(activeSourceBounds.contains(sourceBounds))
        require(((sourceBounds.left - activeSourceBounds.left) and 1) == 0)
        require(((sourceBounds.top - activeSourceBounds.top) and 1) == 0)
        require((sourceBounds.width() and 1) == 0 && (sourceBounds.height() and 1) == 0)
    }

    val width: Int get() = sourceBounds.width()
    val height: Int get() = sourceBounds.height()
    val outputBounds: Rect get() = Rect(0, 0, width, height)

    val normalizedActiveBounds: FloatArray
        get() = floatArrayOf(
            (sourceBounds.left - activeSourceBounds.left).toFloat() /
                activeSourceBounds.width().toFloat(),
            (sourceBounds.top - activeSourceBounds.top).toFloat() /
                activeSourceBounds.height().toFloat(),
            (sourceBounds.right - activeSourceBounds.left).toFloat() /
                activeSourceBounds.width().toFloat(),
            (sourceBounds.bottom - activeSourceBounds.top).toFloat() /
                activeSourceBounds.height().toFloat(),
        )

    fun rebase(metadata: RawMetadata): RawMetadata = metadata.copy(
        width = width,
        height = height,
        lensShadingMap = cropLensShadingMap(
            source = metadata.lensShadingMap,
            mapWidth = metadata.lensShadingMapWidth,
            mapHeight = metadata.lensShadingMapHeight,
        ),
        lensShadingMapGrid = null,
        afRegions = null,
        activeArray = outputBounds,
        defaultCrop = outputBounds,
    )

    fun cropLensShadingMap(
        source: FloatArray?,
        mapWidth: Int,
        mapHeight: Int,
    ): FloatArray? {
        if (source == null || mapWidth <= 0 || mapHeight <= 0 ||
            source.size < mapWidth * mapHeight * 4
        ) {
            return null
        }
        val bounds = normalizedActiveBounds
        return FloatArray(mapWidth * mapHeight * 4) { outputIndex ->
            val channel = outputIndex and 3
            val pixel = outputIndex ushr 2
            val outputX = pixel % mapWidth
            val outputY = pixel / mapWidth
            val outputU = if (mapWidth > 1) outputX.toFloat() / (mapWidth - 1) else 0.5f
            val outputV = if (mapHeight > 1) outputY.toFloat() / (mapHeight - 1) else 0.5f
            val sourceU = bounds[0] + (bounds[2] - bounds[0]) * outputU
            val sourceV = bounds[1] + (bounds[3] - bounds[1]) * outputV
            sampleLensShadingMap(source, mapWidth, mapHeight, channel, sourceU, sourceV)
        }
    }

    private fun sampleLensShadingMap(
        source: FloatArray,
        mapWidth: Int,
        mapHeight: Int,
        channel: Int,
        u: Float,
        v: Float,
    ): Float {
        val x = u.coerceIn(0f, 1f) * (mapWidth - 1).coerceAtLeast(0)
        val y = v.coerceIn(0f, 1f) * (mapHeight - 1).coerceAtLeast(0)
        val x0 = floor(x).toInt().coerceIn(0, mapWidth - 1)
        val y0 = floor(y).toInt().coerceIn(0, mapHeight - 1)
        val x1 = (x0 + 1).coerceAtMost(mapWidth - 1)
        val y1 = (y0 + 1).coerceAtMost(mapHeight - 1)
        val tx = x - x0
        val ty = y - y0
        fun value(sampleX: Int, sampleY: Int): Float =
            source[(sampleY * mapWidth + sampleX) * 4 + channel]
                .takeIf { it.isFinite() && it > 0f } ?: 1f
        val top = value(x0, y0) + (value(x1, y0) - value(x0, y0)) * tx
        val bottom = value(x0, y1) + (value(x1, y1) - value(x0, y1)) * tx
        return top + (bottom - top) * ty
    }
}
