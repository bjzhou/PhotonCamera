package com.hinnka.mycamera.raw.denoise

import android.opengl.GLES30
import com.hinnka.mycamera.processor.RawStackRuntimeDebug
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil
import java.util.Locale

/**
 * Per-pass timing of one [PhotonMultiScaleDenoiser.denoise] call, selected through
 * debug.photon.denoise.timing (debug builds only):
 * - `true`: submit time and GPU time of every pass;
 * - `ablation`: additionally re-runs each synthesis level into a scratch image with luma, chroma
 *   and the chroma bilateral toggled, so the fused dispatch's cost splits into its parts; the
 *   fastest of the repeated rounds is reported.
 *
 * GPU time is the wall time from submission to glFinish with the queue drained beforehand:
 * GL_EXT_disjoint_timer_query reports ~0 for compute dispatches on some drivers, so it cannot
 * time this pipeline. Enabling timing therefore serializes the denoise pass by pass.
 */
internal class PhotonDenoiseTiming(width: Int, height: Int, params: PhotonDenoiseParams) {
    private class Sample(val stage: String, val detail: String, val cpuNs: Long, val gpuNs: Long)

    private val mode = if (RawStackRuntimeDebug.enabled) SystemPropertiesUtil.get("debug.photon.denoise.timing") else null
    val enabled = mode == "true" || mode == "ablation"
    val ablation = mode == "ablation"
    private val samples = ArrayList<Sample>()
    private val startNs = System.nanoTime()
    private val description = if (enabled) {
        "${width}x$height levels=${params.levels} lumaLevels=${params.lumaLevels} " +
            "luma=${params.lumaStrength} chroma=${params.chromaStrength} bilateralLevels=${params.bilateralLevels} " +
            "fixedStrength=${params.strengthTable != null} lsc=${params.lensShading != null} " +
            "merge=${params.mergeMapWidth}x${params.mergeMapHeight}"
    } else ""

    init {
        if (enabled) {
            // The caller's queued work is not part of the denoise.
            val drainStart = System.nanoTime()
            GLES30.glFinish()
            PLog.i(TAG, "begin $description gpu=${GLES30.glGetString(GLES30.GL_RENDERER)} " +
                "callerBacklogMs=${ms(System.nanoTime() - drainStart)}")
        }
    }

    /** GL work submitted by [block]; its GPU time is measured up to a glFinish. */
    fun <T> gpu(stage: String, detail: String = "", block: () -> T): T {
        if (!enabled) return block()
        val start = System.nanoTime()
        val result = block()
        val submitted = System.nanoTime()
        GLES30.glFinish()
        samples += Sample(stage, detail, submitted - start, System.nanoTime() - start)
        return result
    }

    /** CPU-only scope, e.g. a buffer map. */
    fun <T> cpu(stage: String, detail: String = "", block: () -> T): T {
        if (!enabled) return block()
        val start = System.nanoTime()
        val result = block()
        samples += Sample(stage, detail, System.nanoTime() - start, -1)
        return result
    }

    fun report() {
        if (!enabled) return
        for (sample in samples) {
            PLog.i(TAG, "pass ${sample.stage} ${sample.detail} submitMs=${ms(sample.cpuNs)} " +
                "gpuMs=${if (sample.gpuNs >= 0) ms(sample.gpuNs) else "NA"}")
        }
        val pipeline = samples.filterNot { it.stage.startsWith(ABLATION) }
        val pipelineNs = pipeline.sumOf { if (it.gpuNs >= 0) it.gpuNs else it.cpuNs }
        for ((stage, group) in pipeline.groupBy { it.stage }) {
            val ns = group.sumOf { if (it.gpuNs >= 0) it.gpuNs else it.cpuNs }
            PLog.i(TAG, "stage $stage calls=${group.size} ms=${ms(ns)} " +
                "share=${String.format(Locale.US, "%.1f%%", 100.0 * ns / maxOf(pipelineNs, 1L))}")
        }
        samples.filter { it.stage.startsWith(ABLATION) }.groupBy { it.detail }.forEach { (level, group) ->
            // Fastest of the repeated rounds per variant.
            val byStage = group.groupBy { it.stage.removePrefix(ABLATION) }.mapValues { (_, runs) -> runs.minOf { it.gpuNs } }
            val none = byStage["none"] ?: return@forEach
            fun delta(part: String, reference: Long) = byStage[part]?.let { ms(it - reference) } ?: "NA"
            PLog.i(TAG, "ablation $level fullMs=${byStage["full"]?.let(::ms) ?: "NA"} bandOnlyMs=${ms(none)} " +
                "lumaMs=+${delta("luma", none)} chromaGateMs=+${delta("chroma", none)} " +
                "bilateralMs=+${byStage["chroma"]?.let { delta("bilateral", it) } ?: "NA"}")
        }
        PLog.i(TAG, "end $description pipelineMs=${ms(pipelineNs)} wallMs=${ms(System.nanoTime() - startNs)} " +
            "passes=${pipeline.size}" + if (ablation) " (wallMs includes ablation passes)" else "")
        samples.clear()
    }

    private fun ms(ns: Long): String = String.format(Locale.US, "%.3f", ns / 1_000_000.0)

    companion object {
        const val ABLATION = "ablation."
        private const val TAG = "PhotonDenoiseTiming"
    }
}
