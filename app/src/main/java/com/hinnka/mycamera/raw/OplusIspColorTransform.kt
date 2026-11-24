package com.hinnka.mycamera.raw

import android.hardware.camera2.CaptureResult
import android.os.Build
import com.hinnka.mycamera.camera.readMetadataOrNull
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs

internal object OplusIspColorTransform {
    private val families = setOf("oppo", "oneplus", "realme")
    private val key by lazy { CaptureResult.Key("com.oplus.custom.ccm", ByteArray::class.java) }
    private const val COEFFICIENT_OFFSET = 4
    private const val MATRIX_BYTES = COEFFICIENT_OFFSET + 9 * Float.SIZE_BYTES

    val isSupportedFamily: Boolean
        get() = Build.MANUFACTURER.lowercase() in families || Build.BRAND.lowercase() in families

    fun read(result: CaptureResult, cameraId: String?): ByteArray? = try {
        result.readMetadataOrNull(key, cameraId)
    } catch (_: IllegalArgumentException) {
        // The device may not register this vendor tag for third-party camera clients.
        null
    }

    fun decode(bytes: ByteArray): FloatArray? {
        if (bytes.size < MATRIX_BYTES) return null
        // Four header bytes followed by a row-major 3x3 matrix of little-endian float32s.
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        val matrix = FloatArray(9) { buffer.getFloat(COEFFICIENT_OFFSET + it * Float.SIZE_BYTES) }
        return matrix.takeIf {
            it.all { value -> value.isFinite() && abs(value) <= 8f } &&
                it[0] >= 0.8f && it[4] >= 0.8f && it[8] >= 0.8f
        }
    }
}
