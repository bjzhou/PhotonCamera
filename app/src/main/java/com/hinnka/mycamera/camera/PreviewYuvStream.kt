package com.hinnka.mycamera.camera

import com.hinnka.mycamera.stabilization.StabilizationImageReader
import java.util.concurrent.atomic.AtomicReference

/** Latest-frame-wins preview lease from the shared photo/video YUV input. */
class PreviewYuvFrameChannel {
    private val latest = AtomicReference<StabilizationImageReader.AcquiredImage?>(null)

    private val listener = AtomicReference<(() -> Unit)?>(null)
    var onFrameAvailable: (() -> Unit)?
        get() = listener.get()
        set(value) { listener.set(value) }

    internal fun clearListener(expected: () -> Unit): Boolean = listener.compareAndSet(expected, null)

    internal fun publish(frame: StabilizationImageReader.AcquiredImage) {
        latest.getAndSet(frame)?.close()
        onFrameAvailable?.invoke()
    }

    /** The caller owns the returned frame and must close it. */
    internal fun take(): StabilizationImageReader.AcquiredImage? = latest.getAndSet(null)

    internal fun discardFrom(owner: StabilizationImageReader) {
        val frame = latest.get() ?: return
        if (frame.owner === owner && latest.compareAndSet(frame, null)) frame.close()
    }
}
