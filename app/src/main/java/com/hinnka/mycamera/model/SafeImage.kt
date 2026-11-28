package com.hinnka.mycamera.model

import android.graphics.ImageFormat
import android.media.Image
import com.hinnka.mycamera.camera.Camera2Controller
import com.hinnka.mycamera.raw.RawImageBufferLayout
import com.hinnka.mycamera.raw.RawPackedUnpacker
import com.hinnka.mycamera.utils.LargeDirectBuffer
import java.nio.ByteBuffer

/** Owns a lease on a camera image and its lazily prepared processing buffers. */
class SafeImage private constructor(private val shared: SharedImage) : AutoCloseable {
    constructor(image: Image, camera2Controller: Camera2Controller) : this(SharedImage(image, camera2Controller))

    interface Plane {
        val buffer: ByteBuffer
        val rowStride: Int
        val pixelStride: Int
    }

    private var closed = false

    val image: Image
        get() = shared.image

    /** Original camera output; [format] and [planes] describe the processing representation. */
    val sourceFormat: Int
        get() = shared.sourceFormat
    val width: Int
        get() = image.width
    val height: Int
        get() = image.height
    val format: Int
        get() = if (shared.packedRaw) ImageFormat.RAW_SENSOR else sourceFormat
    val planes: Array<Plane>
        get() = synchronized(shared) {
            check(!closed) { "Image is already closed" }
            shared.processingPlanes()
        }
    val timestamp: Long
        get() = image.timestamp

    /** Returns another lease on the same pixels. Each owner closes its own lease. */
    internal fun retain(): SafeImage = synchronized(shared) {
        check(!closed) { "Image is already closed" }
        SafeImage(shared).also { shared.leaseCount++ }
    }

    /** Validate descriptors before handing a frame to consumers, without unpacking pixels. */
    internal fun validateBufferLayout() = synchronized(shared) {
        check(!closed) { "Image is already closed" }
        shared.validateBufferLayout()
    }

    internal fun rawBufferByteCount(): Long? = synchronized(shared) {
        check(!closed) { "Image is already closed" }
        shared.rawBufferByteCount()
    }

    override fun close() {
        val lastLease = synchronized(shared) {
            if (closed) return
            closed = true
            --shared.leaseCount == 0
        }
        if (lastLease) shared.release()
    }

    private class SharedImage(val image: Image, private val camera2Controller: Camera2Controller) {
        val sourceFormat = image.format
        val packedRaw = sourceFormat == ImageFormat.RAW10 || sourceFormat == ImageFormat.RAW12
        var leaseCount = 1
        private var unpackedRawBuffer: ByteBuffer? = null
        private var processingPlanes: Array<Plane>? = null
        private var rawLayoutInspected = false
        private var rawByteCount: Long? = null

        fun processingPlanes(): Array<Plane> {
            processingPlanes?.let { return it }
            validateBufferLayout()
            val resolved = if (packedRaw) {
                // Decode on first pixel access, on the processing thread rather than the camera callback.
                val sourcePlane = image.planes.single()
                val width = image.width
                val unpacked = RawPackedUnpacker.unpack(
                    sourceFormat, sourcePlane.buffer, width, image.height, sourcePlane.rowStride,
                )
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
            return resolved
        }

        fun validateBufferLayout() {
            if (packedRaw) rawBufferByteCount()
        }

        fun rawBufferByteCount(): Long? {
            if (!rawLayoutInspected) {
                rawByteCount = RawImageBufferLayout.describeByteCount(image)
                rawLayoutInspected = true
            }
            return rawByteCount
        }

        fun release() {
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
