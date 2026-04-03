package com.hinnka.mycamera.previewhook.api

import android.util.Log

object MgcNrjStageChainAugmenter {
    private const val TAG = "codex_lut_chain"

    private val nrkClass by lazy(LazyThreadSafetyMode.SYNCHRONIZED) { Class.forName("nrk") }
    private val rybClass by lazy(LazyThreadSafetyMode.SYNCHRONIZED) { Class.forName("ryb") }
    private val codexRuntimeClass by lazy(LazyThreadSafetyMode.SYNCHRONIZED) { Class.forName("codexlutruntime") }
    private val getCodexStageMethod by lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        codexRuntimeClass.getDeclaredMethod("b", nrkClass)
    }
    private val clearCodexStageMethod by lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        codexRuntimeClass.getDeclaredMethod("c")
    }
    private val buildRybMethod by lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        rybClass.getDeclaredMethod("i", Iterable::class.java)
    }

    @JvmStatic
    fun augmentStages(pipeline: Any?, stages: Any?): Any? {
        if (pipeline == null || stages == null) return stages

        runCatching { MgcVfeLutRuntime.ensureBootstrapVerificationLut() }
        val snapshot = runCatching { MgcVfeLutRuntime.buildSnapshot() }.getOrNull()
        val lutActive = snapshot?.let { it.lutEnabled || it.colorRecipeEnabled } == true
        MgcMtkPreviewDebug.logOnce(
            TAG,
            "augment:${pipeline.javaClass.simpleName}:$lutActive",
        ) {
            "augment stages pipeline=${pipeline.describe()} lutActive=$lutActive"
        }
        if (!lutActive) {
            runCatching { clearCodexStageMethod.invoke(null) }
            return stages
        }

        val codexStage = runCatching { getCodexStageMethod.invoke(null, pipeline) }.getOrNull() ?: return stages
        val currentStages = stages.asStageList()
        if (currentStages.any { it === codexStage }) {
            return stages
        }

        val merged = ArrayList<Any>(currentStages.size + 1)
        merged.addAll(currentStages)
        merged.add(codexStage)
        Log.d(TAG, "augment stages appended codex stage pipeline=${pipeline.describe()} stageCount=${currentStages.size}->${merged.size}")
        val mergedStages = runCatching { buildRybMethod.invoke(null, merged) }.getOrNull() ?: return stages
        return mergedStages
    }

    private fun Any.describe(): String = "${javaClass.simpleName}@${System.identityHashCode(this)}"

    private fun Any.asStageList(): List<Any> {
        return when (this) {
            is Iterable<*> -> this.mapNotNull { it }
            else -> emptyList()
        }
    }
}
