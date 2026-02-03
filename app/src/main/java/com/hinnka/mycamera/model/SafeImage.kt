package com.hinnka.mycamera.model

import android.media.Image
import com.hinnka.mycamera.camera.Camera2Controller

class SafeImage(val image: Image, private val camera2Controller: Camera2Controller) : AutoCloseable {

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
        image.close()
        camera2Controller.onImageRelease()
    }
}