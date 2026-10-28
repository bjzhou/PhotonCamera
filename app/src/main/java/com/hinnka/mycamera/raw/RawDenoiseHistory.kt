package com.hinnka.mycamera.raw

/** Pipelines with separate denoise tuning tables (docs/photon-multiscale-denoise.md §5). */
enum class RawDenoisePipeline { VGN, QUAD, SABRE, SPATIAL, BITMAP }

/**
 * Noise state of pixels produced by a merge and/or an earlier denoise
 * (docs/photon-multiscale-denoise.md §2.2, §2.4).
 *
 * [pipeline] is the pipeline that produced the pixels, which selects the tuning table.
 * [mergeRead] / [mergeShot] scale the reference frame's read / shot coefficients to the merged
 * pixels (§2.2, including the merge's output exposure). [residual] holds the residual variance
 * ratio t² per pyramid level as (Y, Cb, Cr); null means the pixels have not been denoised.
 * Levels beyond [residual] were left untouched and keep ratio 1.
 */
data class RawDenoiseHistory(
    val pipeline: RawDenoisePipeline,
    val mergeRead: Float,
    val mergeShot: Float,
    val residual: List<FloatArray>? = null,
) {
    val isValid: Boolean
        get() = mergeRead.isFinite() && mergeRead > 0f && mergeShot.isFinite() && mergeShot > 0f &&
            residual?.all { level -> level.size == 3 && level.all { it.isFinite() && it in 0f..1f } } != false

    /** t² of [level] as (Y, Cb, Cr). */
    fun residualAt(level: Int): FloatArray = residual?.getOrNull(level)?.copyOf() ?: floatArrayOf(1f, 1f, 1f)

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is RawDenoiseHistory) return false
        if (pipeline != other.pipeline || mergeRead != other.mergeRead || mergeShot != other.mergeShot) return false
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
        return result
    }

    companion object {
        /** A single, not yet denoised frame of [pipeline]. */
        fun singleFrame(pipeline: RawDenoisePipeline) = RawDenoiseHistory(pipeline, 1f, 1f)
    }
}

/** Gallery-metadata persistence of [RawDenoiseHistory], alongside RawAppliedLensShadingMetadata. */
internal object RawDenoiseHistoryMetadata {
    private const val PIPELINE_PROPERTY = "photonDenoisePipeline"
    private const val MERGE_PROPERTY = "photonDenoiseMerge"
    private const val RESIDUAL_PROPERTY = "photonDenoiseResidual"
    private const val CONTRACT_PROPERTY = "photonDenoiseHistoryContract"
    private const val CURRENT_CONTRACT = "pipeline_merge_read_shot_residual_level_y_cb_cr_v1"

    fun write(properties: Map<String, String>, value: RawDenoiseHistory?): Map<String, String> {
        val out = properties.toMutableMap()
        out.remove(PIPELINE_PROPERTY)
        out.remove(MERGE_PROPERTY)
        out.remove(RESIDUAL_PROPERTY)
        out.remove(CONTRACT_PROPERTY)
        if (value == null) return out
        require(value.isValid) { "Denoise history is malformed" }
        out[PIPELINE_PROPERTY] = value.pipeline.name
        out[MERGE_PROPERTY] = "${value.mergeRead},${value.mergeShot}"
        value.residual?.let { levels ->
            out[RESIDUAL_PROPERTY] = levels.joinToString(";") { it.joinToString(",") }
        }
        out[CONTRACT_PROPERTY] = CURRENT_CONTRACT
        return out
    }

    fun read(properties: Map<String, String>): RawDenoiseHistory? {
        if (properties[CONTRACT_PROPERTY] != CURRENT_CONTRACT) return null
        val pipeline = RawDenoisePipeline.entries.firstOrNull { it.name == properties[PIPELINE_PROPERTY] }
            ?: return null
        val merge = properties[MERGE_PROPERTY]?.split(',')?.mapNotNull(String::toFloatOrNull)
            ?.takeIf { it.size == 2 } ?: return null
        val residual = properties[RESIDUAL_PROPERTY]?.let { encoded ->
            encoded.split(';').map { level ->
                level.split(',').mapNotNull(String::toFloatOrNull).toFloatArray()
            }
        }
        return RawDenoiseHistory(pipeline, merge[0], merge[1], residual).takeIf { it.isValid }
    }
}
