package com.hinnka.mycamera.raw

import android.util.Base64
import android.util.Half
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Pipelines with separate denoise tuning tables (docs/photon-multiscale-denoise.md §5). */
enum class RawDenoisePipeline { VGN, QUAD, SABRE, SPATIAL, BITMAP }

/**
 * Per-pixel merge variance ratios (docs/photon-multiscale-denoise.md §2.2): [values] holds
 * (m_r, m_s) interleaved on a [width] × [height] grid spanning the whole image; cell (i, j)
 * covers the normalized rectangle [i, i + 1) / width × [j, j + 1) / height and is sampled
 * bilinearly at cell centres.
 */
data class RawMergeVarianceMap(
    val width: Int,
    val height: Int,
    val values: FloatArray,
) {
    val isValid: Boolean
        get() = width > 0 && height > 0 && values.size == width * height * 2 &&
            values.all { it.isFinite() && it > 0f }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is RawMergeVarianceMap) return false
        return width == other.width && height == other.height && values.contentEquals(other.values)
    }

    override fun hashCode(): Int {
        var result = values.contentHashCode()
        result = 31 * result + width
        result = 31 * result + height
        return result
    }
    // Summary only: the full grid is thousands of floats and floods logcat.
    override fun toString(): String {
        if (values.isEmpty()) return "RawMergeVarianceMap(${width}x$height, empty)"
        return "RawMergeVarianceMap(${width}x$height, min=${values.min()}, max=${values.max()}, " +
            "mean=${values.average().toFloat()})"
    }
}

/**
 * Noise state of pixels produced by a merge and/or an earlier denoise
 * (docs/photon-multiscale-denoise.md §2.2, §2.4).
 *
 * [pipeline] is the pipeline that produced the pixels, which selects the tuning table.
 * [mergeRead] / [mergeShot] scale the reference frame's read / shot coefficients to the merged
 * pixels when every frame is accepted (§2.2, including the merge's output exposure); they select
 * pixel-independent quantities. [mergeMap] holds the per-pixel ratios (null: the scalars hold
 * everywhere). [signal] is the mean green signal of the merged pixels (MGC EstimateSnr's mean at
 * the reference frame, times the output exposure), the §5.1 image SNR signal when the pixels are not
 * on the CPU. [residual] holds the residual variance
 * ratio t² per pyramid level as (Y, Cb, Cr); null means the pixels have not been denoised.
 * Levels beyond [residual] were left untouched and keep ratio 1. [strength] is the §5.1 strength
 * table of the source noise, [STRENGTH_ENTRIES] values per level as (bin, Y / Cb / Cr), recorded
 * when the pixels were denoised (null: estimated again from the pixels).
 */
data class RawDenoiseHistory(
    val pipeline: RawDenoisePipeline,
    val mergeRead: Float,
    val mergeShot: Float,
    val residual: List<FloatArray>? = null,
    val mergeMap: RawMergeVarianceMap? = null,
    val signal: Float? = null,
    val strength: FloatArray? = null,
) {
    val isValid: Boolean
        get() = mergeRead.isFinite() && mergeRead > 0f && mergeShot.isFinite() && mergeShot > 0f &&
            mergeMap?.isValid != false && signal?.let { it.isFinite() && it >= 0f } != false &&
            residual?.all { level -> level.size == 3 && level.all { it.isFinite() && it in 0f..1f } } != false &&
            strength?.let { table ->
                table.isNotEmpty() && table.size % STRENGTH_ENTRIES == 0 && table.all { it.isFinite() && it >= 0f }
            } != false

    /** t² of [level] as (Y, Cb, Cr). */
    fun residualAt(level: Int): FloatArray = residual?.getOrNull(level)?.copyOf() ?: floatArrayOf(1f, 1f, 1f)

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is RawDenoiseHistory) return false
        if (pipeline != other.pipeline || mergeRead != other.mergeRead || mergeShot != other.mergeShot) return false
        if (mergeMap != other.mergeMap || signal != other.signal) return false
        if (!(strength contentEquals other.strength)) return false
        val a = residual
        val b = other.residual
        if (a == null || b == null) return a == b
        return a.size == b.size && a.indices.all { a[it].contentEquals(b[it]) }
    }

    override fun hashCode(): Int {
        var result = pipeline.hashCode()
        result = 31 * result + mergeRead.hashCode()
        result = 31 * result + mergeShot.hashCode()
        result = 31 * result + (residual?.fold(0) { acc, level -> 31 * acc + level.contentHashCode() } ?: 0)
        result = 31 * result + (mergeMap?.hashCode() ?: 0)
        result = 31 * result + (signal?.hashCode() ?: 0)
        result = 31 * result + (strength?.contentHashCode() ?: 0)
        return result
    }

    override fun toString(): String =
        "RawDenoiseHistory(pipeline=$pipeline, mergeRead=$mergeRead, mergeShot=$mergeShot, " +
            "residual=${residual?.joinToString(";", "[", "]") { it.joinToString(",") }}, " +
            "mergeMap=$mergeMap, signal=$signal, strength=${strength?.size?.let { "$it values" }})"

    companion object {
        /** §5.1 luma bins × (Y, Cb, Cr) per level of [strength]. */
        const val STRENGTH_BINS = 8
        const val STRENGTH_ENTRIES = STRENGTH_BINS * 3

        /** A single, not yet denoised frame of [pipeline]. */
        fun singleFrame(pipeline: RawDenoisePipeline) = RawDenoiseHistory(pipeline, 1f, 1f)
    }
}

/** Gallery-metadata persistence of [RawDenoiseHistory], alongside RawAppliedLensShadingMetadata. */
internal object RawDenoiseHistoryMetadata {
    private const val PIPELINE_PROPERTY = "photonDenoisePipeline"
    private const val MERGE_PROPERTY = "photonDenoiseMerge"
    private const val RESIDUAL_PROPERTY = "photonDenoiseResidual"
    private const val MERGE_MAP_PROPERTY = "photonDenoiseMergeMap"
    private const val MERGE_MAP_SIZE_PROPERTY = "photonDenoiseMergeMapSize"
    private const val SIGNAL_PROPERTY = "photonDenoiseSignal"
    private const val STRENGTH_PROPERTY = "photonDenoiseStrength"
    private const val CONTRACT_PROPERTY = "photonDenoiseHistoryContract"
    private const val CURRENT_CONTRACT = "pipeline_merge_read_shot_residual_level_y_cb_cr_map_rg_f16le_signal_strength_level_bin_y_cb_cr_v4"

    // Same fields without the §5.1 strength table, which is then estimated from the pixels.
    private const val CONTRACT_V3 = "pipeline_merge_read_shot_residual_level_y_cb_cr_map_rg_f16le_signal_v3"

    fun write(properties: Map<String, String>, value: RawDenoiseHistory?): Map<String, String> {
        val out = properties.toMutableMap()
        out.remove(PIPELINE_PROPERTY)
        out.remove(MERGE_PROPERTY)
        out.remove(RESIDUAL_PROPERTY)
        out.remove(MERGE_MAP_PROPERTY)
        out.remove(MERGE_MAP_SIZE_PROPERTY)
        out.remove(SIGNAL_PROPERTY)
        out.remove(STRENGTH_PROPERTY)
        out.remove(CONTRACT_PROPERTY)
        if (value == null) return out
        require(value.isValid) { "Denoise history is malformed" }
        out[PIPELINE_PROPERTY] = value.pipeline.name
        out[MERGE_PROPERTY] = "${value.mergeRead},${value.mergeShot}"
        value.residual?.let { levels ->
            out[RESIDUAL_PROPERTY] = levels.joinToString(";") { it.joinToString(",") }
        }
        value.mergeMap?.let { map ->
            val bytes = ByteBuffer.allocate(map.values.size * 2).order(ByteOrder.LITTLE_ENDIAN)
            map.values.forEach { bytes.putShort(Half.toHalf(it)) }
            out[MERGE_MAP_PROPERTY] = Base64.encodeToString(bytes.array(), Base64.NO_WRAP)
            out[MERGE_MAP_SIZE_PROPERTY] = "${map.width}x${map.height}"
        }
        value.signal?.let { out[SIGNAL_PROPERTY] = it.toString() }
        value.strength?.let { out[STRENGTH_PROPERTY] = it.joinToString(",") }
        out[CONTRACT_PROPERTY] = CURRENT_CONTRACT
        return out
    }

    fun read(properties: Map<String, String>): RawDenoiseHistory? {
        val contract = properties[CONTRACT_PROPERTY]
        if (contract != CURRENT_CONTRACT && contract != CONTRACT_V3) return null
        val pipeline = RawDenoisePipeline.entries.firstOrNull { it.name == properties[PIPELINE_PROPERTY] }
            ?: return null
        val merge = properties[MERGE_PROPERTY]?.split(',')?.mapNotNull(String::toFloatOrNull)
            ?.takeIf { it.size == 2 } ?: return null
        val residual = properties[RESIDUAL_PROPERTY]?.let { encoded ->
            encoded.split(';').map { level ->
                level.split(',').mapNotNull(String::toFloatOrNull).toFloatArray()
            }
        }
        val mergeMap = properties[MERGE_MAP_PROPERTY]?.let { encoded ->
            val size = properties[MERGE_MAP_SIZE_PROPERTY]?.split('x')?.mapNotNull(String::toIntOrNull)
                ?.takeIf { it.size == 2 } ?: return null
            val bytes = runCatching { Base64.decode(encoded, Base64.NO_WRAP) }.getOrNull() ?: return null
            if (bytes.size % 2 != 0) return null
            val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
            RawMergeVarianceMap(size[0], size[1], FloatArray(bytes.size / 2) { Half.toFloat(buffer.getShort()) })
        }
        val signal = properties[SIGNAL_PROPERTY]?.let { it.toFloatOrNull() ?: return null }
        val strength = properties[STRENGTH_PROPERTY]?.takeIf { contract == CURRENT_CONTRACT }?.let { encoded ->
            encoded.split(',').map { it.toFloatOrNull() ?: return null }.toFloatArray()
        }
        return RawDenoiseHistory(pipeline, merge[0], merge[1], residual, mergeMap, signal, strength)
            .takeIf { it.isValid }
    }
}
