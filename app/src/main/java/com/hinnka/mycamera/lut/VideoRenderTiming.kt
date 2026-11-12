package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.processor.GlesGpuTimerQuery
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil
import java.util.Locale

/** Opt-in, context-local diagnostics. GPU results are polled, never awaited. */
internal class VideoRenderTiming private constructor(private val role: String) {
    private class Stats {
        val cpu = ArrayList<Long>()
        val gpu = ArrayList<Long>()
        var rejected = 0
        var rejectedMaxNs = 0L
        var rejectedLifetimeMaxNs = 0L
    }
    private data class Query(val id: Int, val stage: String, val startNs: Long)

    private val session = java.lang.Long.toString(System.nanoTime(), 36)
    private val stats = linkedMapOf<String, Stats>()
    private val pending = ArrayList<Query>()
    private var active: Query? = null
    private var contextReady = false
    private var timerBits = 0
    private var wrapNs = Long.MAX_VALUE
    private var frame = 0L
    private var sampledFrame = false
    private var frameStartNs = 0L
    private var windowStartNs = 0L
    private var window = 0
    private var disjointInWindow = false
    private var discarded = 0
    private var skipped = 0

    fun beginFrame() {
        if (!contextReady) {
            contextReady = true
            timerBits = GlesGpuTimerQuery.counterBits()
            wrapNs = if (timerBits in 1..62) 1L shl timerBits else Long.MAX_VALUE
            if (timerBits > 0) GlesGpuTimerQuery.isDisjoint()
            PLog.i(TAG, "session=$session role=$role begin timerBits=$timerBits gpuEvery=10 " +
                "cpuScopes=inclusive cpuGpu=overlap gpuResults=delayed " +
                "gpu=${GLES30.glGetString(GLES30.GL_RENDERER)} driver=${GLES30.glGetString(GLES30.GL_VERSION)}")
        }
        collectReady()
        frameStartNs = System.nanoTime()
        if (windowStartNs == 0L) windowStartNs = frameStartNs
        sampledFrame = frame++ % 10L == 0L
    }

    fun endFrame() {
        recordCpu("frame.total", System.nanoTime() - frameStartNs)
        collectReady()
        if (System.nanoTime() - windowStartNs >= 2_000_000_000L) report()
    }

    fun recordCpu(stage: String, ns: Long) {
        stats.getOrPut(stage) { Stats() }.cpu += ns
    }

    fun beginGpu(stage: String) {
        check(active == null) { "Nested video GPU timing: ${active?.stage} / $stage" }
        if (!sampledFrame || timerBits == 0) return
        if (pending.size >= 24) {
            skipped++
            return
        }
        val start = System.nanoTime()
        val id = GlesGpuTimerQuery.begin()
        if (id != 0) active = Query(id, stage, start) else skipped++
    }

    fun endGpu() {
        active?.let {
            GlesGpuTimerQuery.end()
            pending += it
            active = null
        }
    }

    private fun invalidateDisjoint() {
        disjointInWindow = true
        stats.values.forEach { it.gpu.clear() }
        discarded += pending.size
        pending.forEach { GlesGpuTimerQuery.delete(it.id) }
        pending.clear()
    }

    private fun collectReady() {
        if (timerBits == 0) return
        if (GlesGpuTimerQuery.isDisjoint()) invalidateDisjoint()
        val iterator = pending.iterator()
        while (iterator.hasNext()) {
            val query = iterator.next()
            val ns = GlesGpuTimerQuery.poll(query.id)
            if (ns < 0) continue
            val lifetime = System.nanoTime() - query.startNs
            val values = stats.getOrPut(query.stage) { Stats() }
            if (lifetime >= wrapNs) discarded++
            else if (ns > lifetime) {
                // GPU execution cannot outlast submission-to-ready CPU time. Reject
                // inconsistent results even with disjoint=false, preserving the evidence.
                discarded++
                values.rejected++
                values.rejectedMaxNs = maxOf(values.rejectedMaxNs, ns)
                values.rejectedLifetimeMaxNs = maxOf(values.rejectedLifetimeMaxNs, lifetime)
            } else if (!disjointInWindow) values.gpu += ns
            GlesGpuTimerQuery.delete(query.id)
            iterator.remove()
        }
        if (GlesGpuTimerQuery.isDisjoint()) invalidateDisjoint()
    }

    private fun report() {
        val now = System.nanoTime()
        val status = when {
            timerBits == 0 -> "unsupported"
            disjointInWindow -> "disjoint"
            else -> "valid"
        }
        for ((stage, values) in stats) {
            val stageStatus = if (status == "valid" && values.rejected > 0) "invalid-lifetime" else status
            PLog.i(TAG, "session=$session role=$role window=$window stage=$stage " +
                "spanMs=${ms(now - windowStartNs)} ${summary("cpu", values.cpu)} " +
                "${summary("gpu", values.gpu)} gpuStatus=$stageStatus pending=${pending.size} " +
                "gpuRejected=${values.rejected} gpuRejectedMaxMs=${ms(values.rejectedMaxNs)} " +
                "gpuLifetimeMaxMs=${ms(values.rejectedLifetimeMaxNs)} " +
                "discarded=$discarded skipped=$skipped")
        }
        stats.clear()
        window++
        windowStartNs = now
        disjointInWindow = false
        discarded = 0
        skipped = 0
    }

    /** Call with the owning GL context current, before EGL teardown. Adds no GPU wait. */
    fun closeGl() {
        if (!contextReady) return
        check(active == null)
        collectReady()
        if (stats.isNotEmpty()) report()
        pending.forEach { GlesGpuTimerQuery.delete(it.id) }
        pending.clear()
        contextReady = false
    }

    /** Old query names belong to the lost context and must not be deleted in the new one. */
    fun resetAfterContextLoss() {
        active = null
        pending.clear()
        stats.clear()
        contextReady = false
        windowStartNs = 0L
        disjointInWindow = false
        discarded = 0
        skipped = 0
    }

    private fun summary(prefix: String, values: List<Long>): String {
        if (values.isEmpty()) return "${prefix}N=0 ${prefix}AvgMs=NA ${prefix}P95Ms=NA ${prefix}MaxMs=NA"
        val sorted = values.sorted()
        return "${prefix}N=${values.size} ${prefix}AvgMs=${ms(values.sum() / values.size)} " +
            "${prefix}P95Ms=${ms(sorted[((values.size * 95 + 99) / 100 - 1).coerceAtLeast(0)])} " +
            "${prefix}MaxMs=${ms(sorted.last())}"
    }

    private fun ms(ns: Long) = String.format(Locale.US, "%.3f", ns / 1_000_000.0)

    companion object {
        private const val TAG = "VideoTiming"
        fun create(role: String): VideoRenderTiming? =
            if (BuildConfig.DEBUG && SystemPropertiesUtil.get("debug.photon.video.timing") == "true") {
                VideoRenderTiming(role)
            } else null
    }
}

internal inline fun <T> VideoRenderTiming?.cpu(stage: String, block: () -> T): T {
    if (this == null) return block()
    val start = System.nanoTime()
    try { return block() } finally { recordCpu(stage, System.nanoTime() - start) }
}

internal inline fun <T> VideoRenderTiming?.gpu(stage: String, block: () -> T): T {
    if (this == null) return block()
    val start = System.nanoTime()
    beginGpu(stage)
    try { return block() } finally {
        endGpu()
        recordCpu(stage, System.nanoTime() - start)
    }
}
