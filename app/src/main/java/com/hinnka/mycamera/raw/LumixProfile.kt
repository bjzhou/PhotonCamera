package com.hinnka.mycamera.raw

import android.content.Context
import android.util.Half
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Original PSL1 payloads; arrays are immutable after validation and shared by render plans. */
internal data class LumixPhotoStyleTables(
    val style: LumixPhotoStyle,
    val curve: FloatArray,
    val low: FloatArray,
    val high: FloatArray,
)

internal data class LumixRenderPlan(
    val tables: LumixPhotoStyleTables,
    val highWeight: Float,
    val outputClip: Float,
    /** Null means direct WB Camera RGB, without equivalent-camera conversion. */
    val calibrationLuts: EquivalentCameraLuts?,
    val calibrationFirstWeight: Float = 1f,
    val colorCorrectionCoordinate: Int,
)

/** S9 is the fixed asset/calibration model, independently of the source RAW camera. */
internal object LumixProfile {
    private val cache = mutableMapOf<LumixPhotoStyle, LumixPhotoStyleTables>()

    @Synchronized
    fun createRenderPlan(
        context: Context,
        style: LumixPhotoStyle,
        colorTemperature: Float?,
        calibrationLuts: EquivalentCameraLuts?,
        calibrationFirstWeight: Float,
        iso: Int = 100,
        colorCorrectionCoordinate: Int? = null,
    ): LumixRenderPlan {
        val tables = cache.getOrPut(style) {
            val prefix = "lumix/s9/lut_${style.assetName}"
            LumixPhotoStyleTables(
                style,
                readTable(context, "$prefix.bin", 0, 2048),
                readTable(context, "${prefix}_low.bin", 1, 33),
                readTable(context, "${prefix}_high.bin", 1, 33),
            )
        }
        val coordinate = colorCorrectionCoordinate ?: LumixColorTemperature.coordinateForKelvin(colorTemperature)
        val highWeight = LumixColorTemperature.highWeight(colorTemperature, coordinate)
        val clip = if (style == LumixPhotoStyle.VLog) {
            when (iso) { 320 -> 3300; 400 -> 3400; 500 -> 3496; else -> 3596 }
        } else 4095
        return LumixRenderPlan(tables, highWeight, clip / 4095f, calibrationLuts, calibrationFirstWeight, coordinate)
    }

    private fun readTable(context: Context, path: String, kind: Int, dimension: Int): FloatArray {
        val bytes = context.assets.open(path).use { it.readBytes() }
        require(bytes.size >= 88) { "Truncated Lumix PhotoStyle header: $path" }
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        require(buffer.int == 827085648 && buffer.get().toInt() == kind && buffer.int == dimension) {
            "Invalid Lumix PhotoStyle header: $path"
        }
        val format = buffer.get().toInt()
        require(format == 0 || format == 1) { "Unknown Lumix PhotoStyle format: $path" }
        val count = if (kind == 0) dimension else dimension * dimension * dimension * 3
        val stride = if (format == 1) 2 else 4
        require(bytes.size == 88 + count * stride) { "Invalid Lumix PhotoStyle payload: $path" }
        buffer.position(88)
        return FloatArray(count) {
            (if (format == 1) Half.toFloat(buffer.short) else buffer.float).also { value ->
                require(value.isFinite()) { "Non-finite Lumix PhotoStyle sample: $path" }
            }
        }
    }
}
