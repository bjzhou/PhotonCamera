package com.hinnka.mycamera.stabilization

import android.graphics.ImageFormat
import android.media.Image
import android.media.ImageReader
import android.os.Handler
import com.hinnka.mycamera.utils.PLog
import java.util.concurrent.atomic.AtomicBoolean

/** Owns the reader until every acquired frame, including renderer leases, has been released. */
internal class StabilizationImageReader(
    val width: Int,
    val height: Int,
    maxImages: Int,
) : AutoCloseable {
    private val lock = Any()
    private val reader = ImageReader.newInstance(width, height, ImageFormat.YUV_420_888, maxImages)
    val surface = reader.surface
    private var acquiredImageCount = 0

    @Volatile
    var isClosed = false
        private set

    fun setOnImageAvailableListener(handler: Handler, listener: (StabilizationImageReader) -> Unit) {
        synchronized(lock) {
            check(!isClosed)
            reader.setOnImageAvailableListener({ listener(this) }, handler)
        }
    }

    fun acquireNextImage(): AcquiredImage? = synchronized(lock) {
        // A callback queued before retirement must not acquire another frame.
        if (isClosed) return@synchronized null
        val image = reader.acquireNextImage() ?: return@synchronized null
        acquiredImageCount += 1
        AcquiredImage(this, image)
    }

    override fun close() {
        synchronized(lock) {
            if (isClosed) return
            isClosed = true
            reader.setOnImageAvailableListener(null, null)
            if (acquiredImageCount == 0) {
                reader.close()
            } else {
                PLog.d("StabilizationImageReader", "Retiring ${width}x$height reader with $acquiredImageCount acquired images")
            }
        }
    }

    private fun releaseImage(image: Image) {
        synchronized(lock) {
            image.close()
            acquiredImageCount -= 1
            if (isClosed && acquiredImageCount == 0) {
                reader.close()
                PLog.d("StabilizationImageReader", "Closed retired ${width}x$height reader after its last image")
            }
        }
    }

    class AcquiredImage internal constructor(
        val owner: StabilizationImageReader,
        val image: Image,
    ) : AutoCloseable {
        val timestampNs = image.timestamp
        val width = image.width
        val height = image.height
        private val closed = AtomicBoolean(false)

        override fun close() {
            if (closed.compareAndSet(false, true)) owner.releaseImage(image)
        }
    }
}
