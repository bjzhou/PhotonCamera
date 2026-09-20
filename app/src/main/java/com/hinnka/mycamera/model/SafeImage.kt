package com.hinnka.mycamera.model

import android.graphics.ImageFormat
import android.media.Image
import com.hinnka.mycamera.camera.Camera2Controller
import com.hinnka.mycamera.raw.Raw10Unpacker
import com.hinnka.mycamera.utils.LargeDirectBuffer
import java.nio.ByteBuffer
import java.util.concurrent.atomic.AtomicBoolean

class SafeImage(val image: Image, private val camera2Controller: Camera2Controller) : AutoCloseable {
    private val closed = AtomicBoolean(false)
    private var unpackedRawBuffer: ByteBuffer? = null
    private var processingPlanes: Array<Plane>? = null

    /** Original camera output; [format] and [planes] describe the processing representation. */
    val sourceFormat: Int = image.format

    interface Plane {
        val buffer: ByteBuffer
        val rowStride: Int
        val pixelStride: Int
    }

    val width: Int
        get() = image.width
    val height: Int
        get() = image.height
    val format: Int
        get() = if (sourceFormat == ImageFormat.RAW10) ImageFormat.RAW_SENSOR else sourceFormat
    val planes: Array<Plane>
        get() = synchronized(this) {
            check(!closed.get()) { "Image is already closed" }
            processingPlanes?.let { return@synchronized it }
            val resolved = if (sourceFormat == ImageFormat.RAW10) {
                // Decode on first pixel access, on the processing thread rather than the camera callback.
                val sourcePlane = image.planes.single()
                val unpacked = Raw10Unpacker.unpack(sourcePlane.buffer, width, height, sourcePlane.rowStride)
                unpackedRawBuffer = unpacked
                val unpackedRowStride = width * 2
                arrayOf<Plane>(object : Plane {
                    override val buffer: ByteBuffer get() = unpacked
                    override val rowStride: Int = unpackedRowStride
                    override val pixelStride: Int = 2
                })
            } else {
                image.planes.map { sourcePlane ->
                    object : Plane {
                        override val buffer: ByteBuffer get() = sourcePlane.buffer
                        override val rowStride: Int get() = sourcePlane.rowStride
                        override val pixelStride: Int get() = sourcePlane.pixelStride
                    }
                }.toTypedArray<Plane>()
            }
            processingPlanes = resolved
            resolved
        }
    val timestamp: Long
        get() = image.timestamp

    @Synchronized
    override fun close() {
        if (closed.compareAndSet(false, true)) {
            try {
                LargeDirectBuffer.free(unpackedRawBuffer)
                unpackedRawBuffer = null
                processingPlanes = null
                image.close()
            } finally {
                camera2Controller.onImageRelease()
            }
        }
    }
}
