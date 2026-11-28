package com.hinnka.mycamera.camera

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import com.hinnka.mycamera.model.SafeImage
import java.util.concurrent.atomic.AtomicReference

internal class PreviewRawFrame(
    val image: SafeImage,
    val result: CaptureResult,
    val characteristics: CameraCharacteristics,
    val timestampNs: Long,
    val sessionGeneration: Long,
    val cameraId: String,
    val cfaPatternOverride: Int?,
    val exposureCompensationEv: Float,
) : AutoCloseable {
    override fun close() = image.close()
}

/** Transfers the latest RAW preview lease from the camera handler to the GL thread. */
class PreviewRawFrameChannel {
    private val latest = AtomicReference<PreviewRawFrame?>(null)
    private val listener = AtomicReference<(() -> Unit)?>(null)

    @Volatile
    var isActive: Boolean = false
        internal set(value) {
            if (field == value) return
            field = value
            onFrameAvailable?.invoke()
        }

    var onFrameAvailable: (() -> Unit)?
        get() = listener.get()
        set(value) {
            listener.set(value)
            if (value != null && (isActive || latest.get() != null)) value()
        }

    internal fun clearListener(expected: () -> Unit): Boolean = listener.compareAndSet(expected, null)

    internal fun publish(frame: PreviewRawFrame) {
        latest.getAndSet(frame)?.close()
        onFrameAvailable?.invoke()
    }

    /** The caller owns the returned frame and must close it. */
    internal fun take(): PreviewRawFrame? = latest.getAndSet(null)

    internal fun discard() {
        latest.getAndSet(null)?.close()
    }
}
