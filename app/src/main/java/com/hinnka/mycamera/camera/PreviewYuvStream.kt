package com.hinnka.mycamera.camera

import com.hinnka.mycamera.stabilization.StabilizationImageReader
import java.util.concurrent.atomic.AtomicReference

/** Latest-frame-wins hand-off for the shared photo YUV stream when stabilization is off. */
class PreviewYuvFrameChannel {
    private val latest = AtomicReference<StabilizationImageReader.AcquiredImage?>(null)

    @Volatile
    var onFrameAvailable: (() -> Unit)? = null

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
