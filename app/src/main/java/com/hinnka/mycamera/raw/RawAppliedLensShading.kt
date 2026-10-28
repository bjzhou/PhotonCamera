package com.hinnka.mycamera.raw

import android.util.Base64
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Lens shading gain already multiplied into the pixels before the denoiser
 * (docs/photon-multiscale-denoise.md §3.2).
 *
 * Layout and sampling are those of the merge output transforms (GlesMgcRawSpatialShaders
 * normalizeRgb / normalizeAotRgb, GlesMgcRawSabreShaders output transform): Camera2
 * LensShadingMap gains interleaved as R, Ge, Go, B; whole-image UV (p + 0.5) / imageSize with
 * bilinear filtering; green uses the mean of the two green gains.
 */
data class RawAppliedLensShading(
    val gains: FloatArray,
    val width: Int,
    val height: Int,
) {
    val isValid: Boolean
        get() = width > 0 && height > 0 && gains.size == width * height * CHANNELS &&
            gains.all { it.isFinite() && it > 0f }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is RawAppliedLensShading) return false
        return width == other.width && height == other.height && gains.contentEquals(other.gains)
    }

    override fun hashCode(): Int {
        var result = gains.contentHashCode()
        result = 31 * result + width
        result = 31 * result + height
        return result
    }

    companion object {
        const val CHANNELS = 4

        /**
         * The map a merge applied: MultiFrameStacker.validLensShadingOrNull accepts a map holding at
         * least width * height * 4 gains and samples only that prefix.
         */
        fun fromCamera2(map: FloatArray?, width: Int, height: Int): RawAppliedLensShading? {
            if (map == null || width <= 0 || height <= 0 || map.size < width * height * CHANNELS) return null
            return RawAppliedLensShading(map.copyOf(width * height * CHANNELS), width, height)
                .takeIf { it.isValid }
        }
    }
}

/** Gallery-metadata persistence of [RawAppliedLensShading], alongside RawPhotonHdrMetadata. */
internal object RawAppliedLensShadingMetadata {
    private const val GAINS_PROPERTY = "photonAppliedLensShadingGains"
    private const val SIZE_PROPERTY = "photonAppliedLensShadingSize"
    private const val CONTRACT_PROPERTY = "photonAppliedLensShadingContract"
    private const val CURRENT_CONTRACT = "camera2_r_ge_go_b_image_uv_bilinear_f32le_v1"

    fun write(properties: Map<String, String>, value: RawAppliedLensShading?): Map<String, String> {
        val out = properties.toMutableMap()
        out.remove(GAINS_PROPERTY)
        out.remove(SIZE_PROPERTY)
        out.remove(CONTRACT_PROPERTY)
        if (value == null) return out
        require(value.isValid) { "Applied lens shading map is malformed" }
        val bytes = ByteBuffer.allocate(value.gains.size * Float.SIZE_BYTES)
            .order(ByteOrder.LITTLE_ENDIAN)
        value.gains.forEach(bytes::putFloat)
        out[GAINS_PROPERTY] = Base64.encodeToString(bytes.array(), Base64.NO_WRAP)
        out[SIZE_PROPERTY] = "${value.width}x${value.height}"
        out[CONTRACT_PROPERTY] = CURRENT_CONTRACT
        return out
    }

    fun read(properties: Map<String, String>): RawAppliedLensShading? {
        if (properties[CONTRACT_PROPERTY] != CURRENT_CONTRACT) return null
        val size = properties[SIZE_PROPERTY]?.split('x')?.mapNotNull(String::toIntOrNull)
            ?.takeIf { it.size == 2 } ?: return null
        val encoded = properties[GAINS_PROPERTY] ?: return null
        val bytes = runCatching { Base64.decode(encoded, Base64.NO_WRAP) }.getOrNull() ?: return null
        if (bytes.size % Float.SIZE_BYTES != 0) return null
        val buffer = ByteBuffer.wrap(bytes).order(ByteOrder.LITTLE_ENDIAN)
        val gains = FloatArray(bytes.size / Float.SIZE_BYTES) { buffer.getFloat() }
        return RawAppliedLensShading(gains, size[0], size[1]).takeIf { it.isValid }
    }
}
