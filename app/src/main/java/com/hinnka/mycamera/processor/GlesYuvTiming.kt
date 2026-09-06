package com.hinnka.mycamera.processor

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil
import java.util.Locale

/** Capture-local timing. Queries never wait; fences are only awaited at the existing CPU readback. */
internal class GlesYuvTiming {
    private data class Sample(
        val stage: String,
        val frame: String,
        val startNs: Long,
        val kind: String,
        var cpuNs: Long = 0,
        var query: Int = 0,
        var fence: Long = 0,
        var gpuNs: Long? = null,
        var queueTailNs: Long? = null,
    )

    private val enabled = RawStackRuntimeDebug.enabled &&
        SystemPropertiesUtil.get("debug.photon.yuv.timing") == "true"
    private val samples = ArrayList<Sample>()
    private var active: Sample? = null
    private var frame = "init"
    private var startNs = 0L
    private var capture = ""
    private var description = ""
    private var contextReady = false
    private var timerQueries = false
    private var timerWrapNs = Long.MAX_VALUE
    private var counterOverflow = false
    private var disjoint = false
    private var aborted = false

    fun start(description: String) {
        if (!enabled) return
        startNs = System.nanoTime()
        capture = java.lang.Long.toString(startNs, 36)
        this.description = description
        PLog.i(TAG, "capture=$capture begin $description")
    }

    fun onContextReady() {
        if (!enabled) return
        contextReady = true
        val bits = GlesGpuTimerQuery.counterBits()
        // Counter width is implementation-defined; e.g. Adreno's 53 bits cover 104 days.
        // A zero-width counter is unsupported. Check narrower counters against the actual
        // submission-to-result interval instead of requiring a 64-bit hardware counter.
        timerQueries = bits > 0
        timerWrapNs = if (bits in 1..62) 1L shl bits else Long.MAX_VALUE
        if (timerQueries) GlesGpuTimerQuery.isDisjoint() // Discard events preceding this capture.
        PLog.i(
            TAG,
            "capture=$capture backend=${if (timerQueries) "timer-query" else "queue-tail"} " +
                "counterBits=$bits gpu=${GLES30.glGetString(GLES30.GL_RENDERER)} " +
                "driver=${GLES30.glGetString(GLES30.GL_VERSION)}",
        )
    }

    fun frame(label: String) {
        if (!enabled) return
        check(active == null) { "Timing frame changed inside ${active?.stage}" }
        collectReady()
        frame = label
    }

    /** CPU wall time, potentially inclusive of nested GPU submissions; never summed as GPU time. */
    fun <T> cpu(stage: String, block: () -> T): T {
        if (!enabled) return block()
        val sample = Sample(stage, frame, System.nanoTime(), "cpu-scope")
        try {
            return block()
        } finally {
            sample.cpuNs = System.nanoTime() - sample.startNs
            samples += sample
        }
    }

    fun beginPass(stage: String) {
        if (!enabled || !contextReady) return
        check(active == null) { "Nested GPU timing: ${active?.stage} / $stage" }
        val sample = Sample(stage, frame, System.nanoTime(), "gpu-pass")
        if (timerQueries) {
            sample.query = GlesGpuTimerQuery.begin()
            check(sample.query != 0) { "Unable to allocate GPU timer query for $stage" }
        }
        active = sample
    }

    fun endPass(stage: String) {
        if (!enabled || !contextReady) return
        val sample = checkNotNull(active) { "GPU timing end without start: $stage" }
        check(sample.stage == stage) { "GPU timing mismatch: ${sample.stage} / $stage" }
        if (sample.query != 0) GlesGpuTimerQuery.end()
        sample.cpuNs = System.nanoTime() - sample.startNs
        if (!timerQueries) sample.fence = GLES30.glFenceSync(GLES30.GL_SYNC_GPU_COMMANDS_COMPLETE, 0)
        samples += sample
        active = null
    }

    fun <T> gpu(stage: String, block: () -> T): T {
        beginPass(stage)
        try {
            return block()
        } finally {
            endPass(stage)
        }
    }

    /** Called immediately before glReadPixels, never at individual render-pass boundaries. */
    fun awaitReadback(checkGlError: (String) -> Unit) {
        if (!enabled) return
        cpu("readback.gpuQueueWait") {
            if (!timerQueries) {
                for (sample in samples) {
                    if (sample.fence == 0L) continue
                    val before = System.nanoTime()
                    try {
                        GlesGpuCompletion.awaitSync(sample.fence, "YUV ${sample.stage}")
                        sample.queueTailNs = System.nanoTime() - before
                    } finally {
                        GLES30.glDeleteSync(sample.fence)
                        sample.fence = 0L
                    }
                }
            }
            // Also covers GPU work outside render passes, such as texture uploads.
            GlesGpuCompletion.awaitSubmittedWork("YUV readback", checkGlError)
        }
        collectReady()
    }

    fun collectReady() {
        if (!enabled || !contextReady || !timerQueries || active != null) return
        if (GlesGpuTimerQuery.isDisjoint()) disjoint = true
        for (sample in samples) {
            if (sample.query == 0) continue
            val ns = GlesGpuTimerQuery.poll(sample.query)
            if (ns >= 0) {
                // This CPU interval bounds GPU execution because polling only returns ready
                // results. If it could include an entire counter period, discard the capture.
                if (System.nanoTime() - sample.startNs >= timerWrapNs) counterOverflow = true
                else sample.gpuNs = ns
                GlesGpuTimerQuery.delete(sample.query)
                sample.query = 0
            }
        }
        // If a clock reset happened during collection, invalidate the entire capture consistently.
        if (GlesGpuTimerQuery.isDisjoint()) disjoint = true
    }

    /** Release GL objects before destroying the owning EGL context, including failure exits. */
    fun closeGl() {
        if (!enabled || !contextReady) return
        active?.let {
            aborted = true
            if (it.query != 0) GlesGpuTimerQuery.end()
            it.cpuNs = System.nanoTime() - it.startNs
            samples += it
            active = null
        }
        collectReady()
        for (sample in samples) {
            if (sample.query != 0) GlesGpuTimerQuery.delete(sample.query)
            if (sample.fence != 0L) GLES30.glDeleteSync(sample.fence)
            sample.query = 0
            sample.fence = 0L
        }
        contextReady = false
    }

    fun report(success: Boolean) {
        if (!enabled) return
        val gpuSamples = samples.filter { it.kind == "gpu-pass" }
        val validGpu = timerQueries && !disjoint && !counterOverflow && !aborted &&
            gpuSamples.all { it.gpuNs != null }
        val gpuStatus = when {
            !timerQueries -> "unsupported"
            disjoint -> "disjoint"
            counterOverflow -> "counter-overflow"
            aborted -> "aborted"
            !validGpu -> "pending"
            else -> "valid"
        }
        PLog.i(
            TAG,
            "capture=$capture end success=$success $description " +
                "wallMs=${ms(System.nanoTime() - startNs)} " +
                "gpuMs=${if (validGpu) ms(gpuSamples.sumOf { it.gpuNs ?: 0L }) else "NA"} " +
                "gpuStatus=$gpuStatus passes=${gpuSamples.size} " +
                "cpuScopes=inclusive cpuGpu=overlap queueTail=remaining-at-readback",
        )
        for ((label, frameSamples) in samples.groupBy { it.frame }) {
            val passes = frameSamples.filter { it.kind == "gpu-pass" }
            val first = frameSamples.minOf { it.startNs }
            val last = frameSamples.maxOf { it.startNs + it.cpuNs }
            PLog.i(
                TAG,
                "capture=$capture frame=$label submitStartMs=${ms(first - startNs)} " +
                    "submitEndMs=${ms(last - startNs)} " +
                    "cpuSubmitMs=${ms(passes.sumOf { it.cpuNs })} " +
                    "gpuMs=${if (validGpu) ms(passes.sumOf { it.gpuNs ?: 0L }) else "NA"}",
            )
        }
        // Aggregate repeated passes across frames; retain worst frame and exact pyramid/iteration.
        for ((_, group) in samples.groupBy { it.kind to it.stage }.entries.sortedByDescending {
            it.value.sumOf { sample -> if (validGpu && sample.kind == "gpu-pass") sample.gpuNs ?: 0L else sample.cpuNs }
        }) {
            val worst = group.maxBy { if (validGpu && it.kind == "gpu-pass") it.gpuNs ?: 0L else it.cpuNs }
            val gpuSum = group.sumOf { it.gpuNs ?: 0L }
            PLog.i(
                TAG,
                "capture=$capture stage=${group.first().stage.replace(' ', '_')} " +
                    "kind=${group.first().kind} calls=${group.size} " +
                    "cpuMs=${ms(group.sumOf { it.cpuNs })} " +
                    "gpuMs=${if (validGpu && group.first().kind == "gpu-pass") ms(gpuSum) else "NA"} " +
                    "gpuAvgMs=${if (validGpu && group.first().kind == "gpu-pass") ms(gpuSum / group.size) else "NA"} " +
                    "gpuMaxMs=${if (validGpu && worst.kind == "gpu-pass") ms(worst.gpuNs ?: 0L) else "NA"} " +
                    "queueTailMs=${if (group.any { it.queueTailNs != null }) ms(group.sumOf { it.queueTailNs ?: 0L }) else "NA"} " +
                    "worstFrame=${worst.frame}",
            )
        }
    }

    private fun ms(ns: Long): String = String.format(Locale.US, "%.3f", ns / 1_000_000.0)

    private companion object {
        const val TAG = "YuvTiming"
    }
}
