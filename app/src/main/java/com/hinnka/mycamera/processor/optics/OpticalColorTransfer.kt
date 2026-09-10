package com.hinnka.mycamera.processor.optics

import android.graphics.ColorSpace
import java.util.Locale
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.pow

/** Keep the source RGB primaries; only its declared transfer function is removed and restored. */
internal class OpticalColorTransfer(colorSpace: ColorSpace) {
    private val rgb = colorSpace as? ColorSpace.Rgb
        ?: error("Optical bokeh requires an RGB color space")
    private val parameters = rgb.transferParameters
        ?: error("Optical bokeh does not support the non-parametric transfer of ${rgb.name}")
    private val signed: Boolean

    init {
        val p = parameters
        require(p.a > 0.0 && p.g > 0.0 && p.c >= 0.0)
        fun decode(value: Double, useSign: Boolean): Double {
            val x = if (useSign) abs(value) else value
            val y = if (x < p.d) p.c * x + p.f else (p.a * x + p.b).pow(p.g) + p.e
            return if (useSign && value < 0.0) -y else y
        }
        val minimum = rgb.getMinValue(0).toDouble()
        val probes = listOf(minimum, 0.0, 0.018, 0.04, 0.18, 0.5, 1.0)
            .filter { it >= minimum && it <= rgb.getMaxValue(0) }
        fun matches(useSign: Boolean) = probes.all { x ->
            val expected = rgb.eotf.applyAsDouble(x)
            val actual = decode(x, useSign)
            actual.isFinite() && abs(actual - expected) <= 1e-6 * max(1.0, abs(expected))
        }
        signed = when {
            matches(false) -> false
            matches(true) -> true
            else -> error("Color-space transfer parameters disagree with ${rgb.name}")
        }
    }

    fun shaderFunctions(): String {
        val p = parameters
        fun Double.glsl() = String.format(Locale.US, "%.17e", this)
        val decodeInput = if (signed) "abs(value)" else "value"
        val resultSign = if (signed) "sign(value) * result" else "result"
        val linearEncode = if (p.c > 0.0) "(x - ${p.f.glsl()}) / ${p.c.glsl()}" else "0.0"
        return """
            float decodeChannel(float value) {
                float x = $decodeInput;
                float result = x < ${p.d.glsl()}
                    ? ${p.c.glsl()} * x + ${p.f.glsl()}
                    : pow(max(${p.a.glsl()} * x + ${p.b.glsl()}, 0.0), ${p.g.glsl()}) + ${p.e.glsl()};
                return $resultSign;
            }
            float encodeChannel(float value) {
                float x = $decodeInput;
                float result = x < ${(p.c * p.d + p.f).glsl()}
                    ? $linearEncode
                    : (pow(max(x - ${p.e.glsl()}, 0.0), ${(1.0 / p.g).glsl()}) - ${p.b.glsl()}) / ${p.a.glsl()};
                return $resultSign;
            }
            vec3 decodeColor(vec3 value) {
                return vec3(decodeChannel(value.r), decodeChannel(value.g), decodeChannel(value.b));
            }
            vec3 encodeColor(vec3 value) {
                return vec3(encodeChannel(value.r), encodeChannel(value.g), encodeChannel(value.b));
            }
        """.trimIndent()
    }
}
