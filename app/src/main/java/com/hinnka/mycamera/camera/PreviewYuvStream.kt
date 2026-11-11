package com.hinnka.mycamera.camera

import android.graphics.ImageFormat
import android.media.Image
import android.media.ImageReader
import android.os.Build
import android.os.Handler
import com.hinnka.mycamera.utils.PLog
import java.util.concurrent.atomic.AtomicBoolean
import java.util.concurrent.atomic.AtomicReference

/**
 * Photo-mode viewfinder stream: a YUV_420_888 ImageReader instead of a SurfaceTexture.
 *
 * The PRIVATE preview stream is ISP-tuned independently of the YUV capture stream, and some HALs
 * deliver it as limited-range YCbCr with an unknown dataspace. A YUV_420_888 stream carries an
 * explicit dataspace (JFIF on Camera2) and comes from the same ISP path as the capture stream.
 * Follows Chromium's VideoCaptureCamera2: latest-frame-wins delivery and per-frame dataspace.
 *
 * The reader keeps the default usage, the same as the capture and MGC readers. Requesting
 * USAGE_GPU_SAMPLED_IMAGE (as Chromium does) made the Xiaomi 11 HAL write Cr/Cb into a buffer
 * whose planes are reported as Cb/Cr, so both the EGLImage and the CPU planes showed swapped red
 * and blue. Default-usage buffers still import into EGL for GPU sampling.
 */
internal class PreviewYuvImageReader(
    val width: Int,
    val height: Int,
    handler: Handler,
    private val channel: PreviewYuvFrameChannel,
) : AutoCloseable {
    private val lock = Any()
    private val reader = ImageReader.newInstance(width, height, ImageFormat.YUV_420_888, MAX_IMAGES)
    val surface = reader.surface
    private var acquiredImageCount = 0
    private var closed = false

    init {
        reader.setOnImageAvailableListener({ onImageAvailable() }, handler)
    }

    private fun onImageAvailable() {
        val frame = synchronized(lock) {
            if (closed) return
            val image = try {
                reader.acquireLatestImage()
            } catch (error: IllegalStateException) {
                PLog.w(TAG, "Cannot acquire preview image: ${error.message}")
                null
            } ?: return
            acquiredImageCount += 1
            PreviewYuvFrame(this, image)
        }
        channel.publish(frame)
    }

    override fun close() {
        synchronized(lock) {
            if (closed) return
            closed = true
            reader.setOnImageAvailableListener(null, null)
            if (acquiredImageCount == 0) reader.close()
        }
        channel.discardFrom(this)
    }

    internal fun release(image: Image) {
        synchronized(lock) {
            image.close()
            acquiredImageCount -= 1
            if (closed && acquiredImageCount == 0) reader.close()
        }
    }

    private companion object {
        const val TAG = "PreviewYuvImageReader"

        // One frame waiting in the channel, one being sampled on the GL thread, and the two that
        // acquireLatestImage holds while skipping to the newest frame.
        const val MAX_IMAGES = 4
    }
}

/** A leased preview image; [close] returns it to its reader. */
internal class PreviewYuvFrame(
    val owner: PreviewYuvImageReader,
    val image: Image,
) : AutoCloseable {
    val timestampNs: Long = image.timestamp
    val dataSpace: Int = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) image.dataSpace else 0
    private val closed = AtomicBoolean(false)

    override fun close() {
        if (closed.compareAndSet(false, true)) owner.release(image)
    }
}

/** Latest-frame-wins hand-off from the camera thread to the GL thread. */
class PreviewYuvFrameChannel {
    private val latest = AtomicReference<PreviewYuvFrame?>(null)

    @Volatile
    var onFrameAvailable: (() -> Unit)? = null

    internal fun publish(frame: PreviewYuvFrame) {
        latest.getAndSet(frame)?.close()
        onFrameAvailable?.invoke()
    }

    /** The caller owns the returned frame and must close it. */
    internal fun take(): PreviewYuvFrame? = latest.getAndSet(null)

    internal fun discardFrom(owner: PreviewYuvImageReader) {
        val frame = latest.get() ?: return
        if (frame.owner === owner && latest.compareAndSet(frame, null)) frame.close()
    }
}
