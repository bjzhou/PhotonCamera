package com.hinnka.mycamera.previewhook.api

import android.hardware.HardwareBuffer
import android.util.Log
import java.nio.ByteBuffer
import java.nio.ReadOnlyBufferException
import java.util.concurrent.ConcurrentHashMap
import java.util.concurrent.atomic.AtomicInteger
import kotlin.math.max
import kotlin.math.min

object MgcMtkPreviewFlowTracer {
    private const val TAG = "codex_mtk_preview"
    private const val LEGACY_OUTPUT_FORMAT = 17
    private const val CONVERTED_OUTPUT_FORMAT = 35

    @JvmStatic
    fun refreshSubmitBuffer(
        prw: Any?,
        incomingBuffer: HardwareBuffer?,
    ): HardwareBuffer? {
        val prwFormat = MgcMtkPreviewDebug.invokeInt(prw, "a")
        val liveBuffer = MgcMtkPreviewDebug.invokeBuffer(prw, "f")
        MgcMtkPreviewDebug.logOnce(
            TAG,
            "submit:$prwFormat:${incomingBuffer?.format}:${liveBuffer?.format}",
        ) {
            "submit-buffer entry prwFormat=$prwFormat incoming=${MgcMtkPreviewDebug.describeBuffer(incomingBuffer)} live=${MgcMtkPreviewDebug.describeBuffer(liveBuffer)}"
        }
        if (
            incomingBuffer == null ||
            (
                incomingBuffer.format != LEGACY_OUTPUT_FORMAT &&
                    incomingBuffer.format != CONVERTED_OUTPUT_FORMAT
            )
        ) {
            return incomingBuffer
        }
        acquireLiveSubmitBuffer { runCatching { invoke(prw, "f") as? HardwareBuffer }.getOrNull() }?.let {
            MgcMtkPreviewDebug.logOnce(
                TAG,
                "submit-swap:${it.format}:${it.width}x${it.height}",
            ) {
                "submit-buffer swapped to live=${MgcMtkPreviewDebug.describeBuffer(it)}"
            }
            return it
        }
        MgcMtkPreviewDebug.logOnce(
            TAG,
            "submit-fallback:${incomingBuffer.format}:${incomingBuffer.width}x${incomingBuffer.height}",
        ) {
            "submit-buffer fallback to incoming=${MgcMtkPreviewDebug.describeBuffer(incomingBuffer)}"
        }
        return acquireLiveSubmitBuffer { incomingBuffer }
    }

    private fun acquireLiveSubmitBuffer(provider: () -> HardwareBuffer?): HardwareBuffer? {
        repeat(2) {
            val candidate = provider() ?: return@repeat
            if (isReadableHardwareBuffer(candidate)) {
                return candidate
            }
        }
        return null
    }

    private fun isReadableHardwareBuffer(buffer: HardwareBuffer): Boolean {
        return runCatching {
            if (buffer.isClosed) {
                false
            } else {
                buffer.width
                buffer.height
                true
            }
        }.getOrDefault(false)
    }

    private fun invoke(target: Any?, methodName: String): Any? {
        if (target == null) return null
        return target.javaClass.getMethod(methodName).invoke(target)
    }
}
