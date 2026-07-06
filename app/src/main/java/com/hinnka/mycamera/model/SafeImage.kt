package com.hinnka.mycamera.model

import android.media.Image
import com.hinnka.mycamera.camera.Camera2Controller
import java.util.concurrent.atomic.AtomicBoolean

class SafeImage(val image: Image, private val camera2Controller: Camera2Controller) : AutoCloseable {
    private val closed = AtomicBoolean(false)

    val width: Int
        get() = image.width
    val height: Int
        get() = image.height
    val format: Int
        get() = image.format
    val planes: Array<Image.Plane>
        get() = image.planes
    val timestamp: Long
        get() = image.timestamp

    override fun close() {
        if (closed.compareAndSet(false, true)) {
            image.close()
            camera2Controller.onImageRelease()
        }
    }
}
