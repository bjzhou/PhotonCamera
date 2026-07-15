package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

/** CPU reference for the DNG SDK Camera RGB -> RIMM steps that precede PGTM. */
internal object DngSdkProfileRgbTransform {
    fun fromCameraRgb(
        red: Float,
        green: Float,
        blue: Float,
        colorCorrectionMatrix: FloatArray?,
        cameraWhite: FloatArray? = null,
        hueSatMap: DcpHueSatMap? = null,
    ): FloatArray {
        val white = sanitizedCameraWhite(cameraWhite)
        val cameraRed = min(red, white[0])
        val cameraGreen = min(green, white[1])
        val cameraBlue = min(blue, white[2])
        val matrix = colorCorrectionMatrix?.takeIf { it.size >= 9 }
        val profileRgb = if (matrix != null) {
            floatArrayOf(
                matrix[0] * cameraRed + matrix[1] * cameraGreen + matrix[2] * cameraBlue,
                matrix[3] * cameraRed + matrix[4] * cameraGreen + matrix[5] * cameraBlue,
                matrix[6] * cameraRed + matrix[7] * cameraGreen + matrix[8] * cameraBlue,
            )
        } else {
            floatArrayOf(cameraRed, cameraGreen, cameraBlue)
        }
        for (index in profileRgb.indices) {
            profileRgb[index] = profileRgb[index].takeIf { it.isFinite() }
                ?.coerceIn(0f, 1f)
                ?: 0f
        }
        return applyHueSatMap(profileRgb, hueSatMap)
    }

    fun clampProfileRgb(red: Float, green: Float, blue: Float): FloatArray = floatArrayOf(
        red.takeIf { it.isFinite() }?.coerceIn(0f, 1f) ?: 0f,
        green.takeIf { it.isFinite() }?.coerceIn(0f, 1f) ?: 0f,
        blue.takeIf { it.isFinite() }?.coerceIn(0f, 1f) ?: 0f,
    )

    private fun sanitizedCameraWhite(cameraWhite: FloatArray?): FloatArray {
        if (cameraWhite == null || cameraWhite.size < 3) return floatArrayOf(1f, 1f, 1f)
        return FloatArray(3) { index ->
            cameraWhite[index].takeIf { it.isFinite() }?.coerceIn(0.001f, 1f) ?: 1f
        }
    }

    private fun applyHueSatMap(rgb: FloatArray, map: DcpHueSatMap?): FloatArray {
        val table = map?.takeIf { it.isValid } ?: return rgb
        val hsv = rgbToHsv(rgb)
        var encodedValue = hsv[2]
        var lookupValue = hsv[2]
        if (table.encoding == DcpHueSatMap.ENCODING_SRGB && table.valueDivisions > 1) {
            encodedValue = encodeScaledValue(hsv[2], table.encoding)
            lookupValue = encodeLookupValue(hsv[2], table.encoding)
        }
        val modify = sampleMap(
            table,
            hsv[0],
            hsv[1],
            lookupValue.coerceIn(0f, 1f),
        )
        hsv[0] = positiveModulo(hsv[0] + modify[0] * 6f / 360f, 6f)
        hsv[1] = (hsv[1] * modify[1]).coerceIn(0f, 1f)
        hsv[2] = decodeScaledValue((encodedValue * modify[2]).coerceIn(0f, 1f), table.encoding)
        return hsvToRgb(hsv)
    }

    private fun sampleMap(map: DcpHueSatMap, hue: Float, saturation: Float, value: Float): FloatArray {
        val hScaled = hue * map.hueDivisions.toFloat() / 6f
        val sScaled = saturation * max(map.satDivisions - 1, 0).toFloat()
        val vScaled = value * max(map.valueDivisions - 1, 0).toFloat()
        var h0 = floor(hScaled).toInt()
        var h1 = h0 + 1
        if (h0 >= map.hueDivisions - 1) {
            h0 = map.hueDivisions - 1
            h1 = 0
        }
        val s0 = min(floor(sScaled).toInt(), max(map.satDivisions - 2, 0))
        val v0 = min(floor(vScaled).toInt(), max(map.valueDivisions - 2, 0))
        val s1 = min(s0 + 1, map.satDivisions - 1)
        val v1 = min(v0 + 1, map.valueDivisions - 1)
        val hf = hScaled - h0.toFloat()
        val sf = sScaled - s0.toFloat()
        val vf = vScaled - v0.toFloat()

        fun entry(h: Int, s: Int, v: Int): FloatArray {
            val offset = ((v * map.hueDivisions + h) * map.satDivisions + s) * 3
            return floatArrayOf(map.values[offset], map.values[offset + 1], map.values[offset + 2])
        }

        fun mix(first: FloatArray, second: FloatArray, amount: Float): FloatArray =
            FloatArray(3) { index -> first[index] + (second[index] - first[index]) * amount }

        val p000 = mix(entry(h0, s0, v0), entry(h0, s0, v1), vf)
        val p001 = mix(entry(h1, s0, v0), entry(h1, s0, v1), vf)
        val p010 = mix(entry(h0, s1, v0), entry(h0, s1, v1), vf)
        val p011 = mix(entry(h1, s1, v0), entry(h1, s1, v1), vf)
        return mix(mix(p000, p001, hf), mix(p010, p011, hf), sf)
    }

    private fun rgbToHsv(rgb: FloatArray): FloatArray {
        val maxValue = max(rgb[0], max(rgb[1], rgb[2]))
        val minValue = min(rgb[0], min(rgb[1], rgb[2]))
        val delta = maxValue - minValue
        val hue = if (delta <= 1e-6f) {
            0f
        } else when (maxValue) {
            rgb[0] -> positiveModulo((rgb[1] - rgb[2]) / delta, 6f)
            rgb[1] -> (rgb[2] - rgb[0]) / delta + 2f
            else -> (rgb[0] - rgb[1]) / delta + 4f
        }
        return floatArrayOf(hue, if (maxValue > 1e-6f) delta / maxValue else 0f, maxValue)
    }

    private fun hsvToRgb(hsv: FloatArray): FloatArray {
        val hue = positiveModulo(hsv[0], 6f)
        val chroma = max(hsv[2], 0f) * max(hsv[1], 0f)
        val x = chroma * (1f - abs(positiveModulo(hue, 2f) - 1f))
        val base = when {
            hue < 1f -> floatArrayOf(chroma, x, 0f)
            hue < 2f -> floatArrayOf(x, chroma, 0f)
            hue < 3f -> floatArrayOf(0f, chroma, x)
            hue < 4f -> floatArrayOf(0f, x, chroma)
            hue < 5f -> floatArrayOf(x, 0f, chroma)
            else -> floatArrayOf(chroma, 0f, x)
        }
        val match = max(hsv[2], 0f) - chroma
        return FloatArray(3) { index -> base[index] + match }
    }

    private fun encodeLookupValue(value: Float, encoding: Int): Float =
        if (encoding == DcpHueSatMap.ENCODING_SRGB) linearToSrgb(value.coerceIn(0f, 1f)) else value

    private fun encodeScaledValue(value: Float, encoding: Int): Float =
        if (encoding == DcpHueSatMap.ENCODING_SRGB) linearToSrgb(max(value, 0f)) else max(value, 0f)

    private fun decodeScaledValue(value: Float, encoding: Int): Float =
        if (encoding == DcpHueSatMap.ENCODING_SRGB) srgbToLinear(max(value, 0f)) else max(value, 0f)

    private fun linearToSrgb(value: Float): Float = if (value <= 0.0031308f) {
        value * 12.92f
    } else {
        1.055f * value.toDouble().pow(1.0 / 2.4).toFloat() - 0.055f
    }

    private fun srgbToLinear(value: Float): Float = if (value <= 0.04045f) {
        value / 12.92f
    } else {
        ((value + 0.055f) / 1.055f).toDouble().pow(2.4).toFloat()
    }

    private fun positiveModulo(value: Float, modulus: Float): Float {
        val result = value % modulus
        return if (result < 0f) result + modulus else result
    }
}
