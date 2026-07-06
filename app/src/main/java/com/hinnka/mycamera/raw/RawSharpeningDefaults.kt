package com.hinnka.mycamera.raw

object RawSharpeningDefaults {
    const val CAPTURE_DEFAULT = 0.4f

    fun forCapture(requested: Float): Float = maxOf(requested, CAPTURE_DEFAULT)
}
