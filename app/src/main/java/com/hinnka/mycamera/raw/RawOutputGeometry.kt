package com.hinnka.mycamera.raw

import com.hinnka.mycamera.camera.MultiFrameConfig
import kotlin.math.roundToInt

/** Final display sampling grid. RAW, denoise and sharpen always keep their native grid. */
internal class RawOutputGeometry(
    val sourceBounds: RawTileRect,
    val rotation: Int,
    scale: Float,
    referenceWidth: Int = sourceBounds.width,
    referenceHeight: Int = sourceBounds.height,
) {
    init {
        require(rotation in setOf(0, 90, 180, 270))
        require(referenceWidth > 0 && referenceHeight > 0)
    }
    private val nativeWidth = if (rotation % 180 == 0) sourceBounds.width else sourceBounds.height
    private val nativeHeight = if (rotation % 180 == 0) sourceBounds.height else sourceBounds.width
    private val outputBaseWidth = if (rotation % 180 == 0) referenceWidth else referenceHeight
    private val outputBaseHeight = if (rotation % 180 == 0) referenceHeight else referenceWidth
    val width = MultiFrameConfig.scaledRawOutputDimension(outputBaseWidth, scale)
    val height = MultiFrameConfig.scaledRawOutputDimension(outputBaseHeight, scale)
    val mgcFinishResolution = MgcFinishResolution.resolve(nativeWidth, nativeHeight, width, height)
    val resample = width != nativeWidth || height != nativeHeight
    val fullRegion = RawTileRect(0, 0, width, height)

    /** Round shared edges once on the global grid, never resize each tile independently. */
    fun scaleRegion(region: RawTileRect) = RawTileRect(
        (region.left.toDouble() * width / nativeWidth).roundToInt(),
        (region.top.toDouble() * height / nativeHeight).roundToInt(),
        (region.right.toDouble() * width / nativeWidth).roundToInt(),
        (region.bottom.toDouble() * height / nativeHeight).roundToInt(),
    )

    fun textureMatrix(
        sourceWidth: Int,
        sourceHeight: Int,
        originX: Int,
        originY: Int,
        region: RawTileRect,
    ): FloatArray {
        fun sourcePoint(x: Double, y: Double): Pair<Double, Double> {
            val u = x / width
            val v = y / height
            val (sx, sy) = when (rotation) {
                0 -> u to v
                90 -> v to 1.0 - u
                180 -> 1.0 - u to 1.0 - v
                270 -> 1.0 - v to u
                else -> error("Unsupported RAW output rotation: $rotation")
            }
            return (sourceBounds.left + sx * sourceBounds.width - originX) / sourceWidth to
                (sourceBounds.top + sy * sourceBounds.height - originY) / sourceHeight
        }
        val p = sourcePoint(region.left.toDouble(), region.top.toDouble())
        val x = sourcePoint(region.right.toDouble(), region.top.toDouble())
        val y = sourcePoint(region.left.toDouble(), region.bottom.toDouble())
        return floatArrayOf(
            (x.first - p.first).toFloat(), (x.second - p.second).toFloat(), 0f, 0f,
            (y.first - p.first).toFloat(), (y.second - p.second).toFloat(), 0f, 0f,
            0f, 0f, 1f, 0f,
            p.first.toFloat(), p.second.toFloat(), 0f, 1f,
        )
    }
}

/** Stored separately from native DNG dimensions; older already-scaled DNGs default to 1x. */
object RawOutputScaling {
    private const val KEY = "rawDisplayOutputScale"

    fun read(properties: Map<String, String>): Float =
        MultiFrameConfig.normalizeOutputScale(properties[KEY]?.toFloatOrNull() ?: 1f)

    fun write(properties: Map<String, String>, scale: Float): Map<String, String> =
        properties + (KEY to MultiFrameConfig.normalizeOutputScale(scale).toString())
}
