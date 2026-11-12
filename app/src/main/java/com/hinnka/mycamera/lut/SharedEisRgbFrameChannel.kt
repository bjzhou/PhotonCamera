package com.hinnka.mycamera.lut

import android.hardware.HardwareBuffer
import java.util.concurrent.atomic.AtomicBoolean

/** Latest-only preview of the recording renderer's neutral, geometrically stabilized RGB. */
class SharedEisRgbFrameChannel {
    private val lock = Any()
    private var producer: Producer? = null
    private var consumer: Consumer? = null
    private var latest: SharedEisRgbFrame? = null

    internal fun openProducer(): Producer {
        val next = Producer()
        val callback = synchronized(lock) {
            check(producer == null) { "An EIS RGB producer is already active" }
            producer = next
            consumer?.onChanged
        }
        callback?.invoke()
        return next
    }

    internal fun openConsumer(onChanged: () -> Unit): Consumer {
        val next = Consumer(onChanged)
        synchronized(lock) { consumer = next }
        onChanged()
        return next
    }

    internal inner class Producer : AutoCloseable {
        fun publish(frame: SharedEisRgbFrame) {
            var old: SharedEisRgbFrame? = null
            val callback = synchronized(lock) {
                if (producer !== this) {
                    frame.close()
                    return
                }
                old = latest
                latest = frame
                consumer?.onChanged
            }
            old?.close()
            callback?.invoke()
        }

        fun discardPendingFrame() {
            val old = synchronized(lock) {
                if (producer !== this) return
                latest.also { latest = null }
            }
            old?.close()
        }

        override fun close() {
            var old: SharedEisRgbFrame? = null
            val callback = synchronized(lock) {
                if (producer !== this) return
                producer = null
                old = latest
                latest = null
                consumer?.onChanged
            }
            old?.close()
            callback?.invoke()
        }
    }

    internal inner class Consumer(internal val onChanged: () -> Unit) : AutoCloseable {
        val isActive: Boolean
            get() = synchronized(lock) { consumer === this && producer != null }

        fun take(): SharedEisRgbFrame? = synchronized(lock) {
            if (consumer !== this) null else latest.also { latest = null }
        }

        override fun close() {
            val old = synchronized(lock) {
                if (consumer !== this) return
                consumer = null
                latest.also { latest = null }
            }
            old?.close()
        }
    }
}

/** Owns a pool slot and its producer fence until preview has finished GPU sampling. */
internal class SharedEisRgbFrame(
    val buffer: HardwareBuffer,
    val timestampNs: Long,
    val width: Int,
    val height: Int,
    val ready: GlSamplingFence,
    private val releaseSlot: () -> Unit,
) : AutoCloseable {
    private val closed = AtomicBoolean(false)

    override fun close() {
        if (closed.compareAndSet(false, true)) {
            ready.close()
            releaseSlot()
        }
    }
}
