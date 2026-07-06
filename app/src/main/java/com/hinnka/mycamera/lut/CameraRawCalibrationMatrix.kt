package com.hinnka.mycamera.lut

import com.hinnka.mycamera.model.ColorRecipeParams
import kotlin.math.PI
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.sin

/**
 * Builds a Camera Raw style primary calibration matrix.
 *
 * The calibration moves the RGB primary chromaticities around a fixed D65 white point and then
 * derives a white-preserving linear RGB matrix from those adjusted primaries. This keeps neutral
 * gray neutral and applies calibration globally in linear light, instead of masking image pixels
 * by their current hue.
 */
object CameraRawCalibrationMatrix {
    private const val D65_X = 0.3127
    private const val D65_Y = 0.3290

    private const val RED_X = 0.6400
    private const val RED_Y = 0.3300
    private const val GREEN_X = 0.3000
    private const val GREEN_Y = 0.6000
    private const val BLUE_X = 0.1500
    private const val BLUE_Y = 0.0600

    private const val MAX_HUE_ROTATION_DEGREES = 30.0
    private const val MAX_SATURATION_SCALE = 0.50

    private val baseRgbToXyz = rgbToXyzFromPrimaries(
        RED_X, RED_Y,
        GREEN_X, GREEN_Y,
        BLUE_X, BLUE_Y,
        D65_X, D65_Y
    )
    private val xyzToBaseRgb = invert3x3(baseRgbToXyz) ?: identityRowMajor()

    fun build(params: ColorRecipeParams?): FloatArray {
        if (params == null) return IDENTITY_COLUMN_MAJOR.copyOf()
        return build(
            redHue = params.primaryRedHue,
            redSaturation = params.primaryRedSaturation,
            greenHue = params.primaryGreenHue,
            greenSaturation = params.primaryGreenSaturation,
            blueHue = params.primaryBlueHue,
            blueSaturation = params.primaryBlueSaturation,
        )
    }

    fun build(
        redHue: Float,
        redSaturation: Float,
        greenHue: Float,
        greenSaturation: Float,
        blueHue: Float,
        blueSaturation: Float,
    ): FloatArray {
        if (isNeutral(redHue, redSaturation, greenHue, greenSaturation, blueHue, blueSaturation)) {
            return IDENTITY_COLUMN_MAJOR.copyOf()
        }

        val red = adjustPrimary(RED_X, RED_Y, redHue, redSaturation)
        val green = adjustPrimary(GREEN_X, GREEN_Y, greenHue, greenSaturation)
        val blue = adjustPrimary(BLUE_X, BLUE_Y, blueHue, blueSaturation)
        val adjustedRgbToXyz = rgbToXyzFromPrimaries(
            red.x, red.y,
            green.x, green.y,
            blue.x, blue.y,
            D65_X, D65_Y
        )
        val calibration = multiply3x3(xyzToBaseRgb, adjustedRgbToXyz)
        return rowMajorToColumnMajor(calibration)
    }

    private fun adjustPrimary(x: Double, y: Double, hue: Float, saturation: Float): Chromaticity {
        val white = xyToUv(D65_X, D65_Y)
        val primary = xyToUv(x, y)
        val vx = primary.u - white.u
        val vy = primary.v - white.v
        val hueRadians = hue.coerceIn(-1f, 1f).toDouble() * MAX_HUE_ROTATION_DEGREES * PI / 180.0
        val radiusScale = max(0.05, 1.0 + saturation.coerceIn(-1f, 1f).toDouble() * MAX_SATURATION_SCALE)
        val cosA = cos(hueRadians)
        val sinA = sin(hueRadians)
        val adjustedU = white.u + (vx * cosA - vy * sinA) * radiusScale
        val adjustedV = white.v + (vx * sinA + vy * cosA) * radiusScale
        return uvToXy(adjustedU, adjustedV)
    }

    private fun rgbToXyzFromPrimaries(
        rx: Double,
        ry: Double,
        gx: Double,
        gy: Double,
        bx: Double,
        by: Double,
        wx: Double,
        wy: Double,
    ): DoubleArray {
        val r = xyToXyz(rx, ry)
        val g = xyToXyz(gx, gy)
        val b = xyToXyz(bx, by)
        val white = xyToXyz(wx, wy)
        val primaryMatrix = doubleArrayOf(
            r[0], g[0], b[0],
            r[1], g[1], b[1],
            r[2], g[2], b[2],
        )
        val scales = multiply3x3Vector(invert3x3(primaryMatrix) ?: return identityRowMajor(), white)
        return doubleArrayOf(
            r[0] * scales[0], g[0] * scales[1], b[0] * scales[2],
            r[1] * scales[0], g[1] * scales[1], b[1] * scales[2],
            r[2] * scales[0], g[2] * scales[1], b[2] * scales[2],
        )
    }

    private fun xyToXyz(x: Double, y: Double): DoubleArray {
        val safeY = y.coerceAtLeast(1.0e-6)
        return doubleArrayOf(x / safeY, 1.0, (1.0 - x - y) / safeY)
    }

    private fun xyToUv(x: Double, y: Double): Uv {
        val denominator = -2.0 * x + 12.0 * y + 3.0
        return Uv(
            u = 4.0 * x / denominator,
            v = 9.0 * y / denominator
        )
    }

    private fun uvToXy(u: Double, v: Double): Chromaticity {
        val denominator = (6.0 * u) - (16.0 * v) + 12.0
        val x = (9.0 * u / denominator).coerceIn(0.001, 0.999)
        val y = (4.0 * v / denominator).coerceIn(0.001, 0.999)
        return Chromaticity(x, y)
    }

    private fun multiply3x3(a: DoubleArray, b: DoubleArray): DoubleArray {
        val out = DoubleArray(9)
        for (row in 0 until 3) {
            for (col in 0 until 3) {
                out[row * 3 + col] =
                    a[row * 3 + 0] * b[col + 0] +
                    a[row * 3 + 1] * b[col + 3] +
                    a[row * 3 + 2] * b[col + 6]
            }
        }
        return out
    }

    private fun multiply3x3Vector(m: DoubleArray, v: DoubleArray): DoubleArray {
        return doubleArrayOf(
            m[0] * v[0] + m[1] * v[1] + m[2] * v[2],
            m[3] * v[0] + m[4] * v[1] + m[5] * v[2],
            m[6] * v[0] + m[7] * v[1] + m[8] * v[2],
        )
    }

    private fun invert3x3(m: DoubleArray): DoubleArray? {
        val det =
            m[0] * (m[4] * m[8] - m[5] * m[7]) -
                m[1] * (m[3] * m[8] - m[5] * m[6]) +
                m[2] * (m[3] * m[7] - m[4] * m[6])
        if (kotlin.math.abs(det) < 1.0e-12) return null
        val invDet = 1.0 / det
        return doubleArrayOf(
            (m[4] * m[8] - m[5] * m[7]) * invDet,
            (m[2] * m[7] - m[1] * m[8]) * invDet,
            (m[1] * m[5] - m[2] * m[4]) * invDet,
            (m[5] * m[6] - m[3] * m[8]) * invDet,
            (m[0] * m[8] - m[2] * m[6]) * invDet,
            (m[2] * m[3] - m[0] * m[5]) * invDet,
            (m[3] * m[7] - m[4] * m[6]) * invDet,
            (m[1] * m[6] - m[0] * m[7]) * invDet,
            (m[0] * m[4] - m[1] * m[3]) * invDet,
        )
    }

    private fun rowMajorToColumnMajor(rowMajor: DoubleArray): FloatArray {
        return floatArrayOf(
            rowMajor[0].toFloat(), rowMajor[3].toFloat(), rowMajor[6].toFloat(),
            rowMajor[1].toFloat(), rowMajor[4].toFloat(), rowMajor[7].toFloat(),
            rowMajor[2].toFloat(), rowMajor[5].toFloat(), rowMajor[8].toFloat(),
        )
    }

    private fun identityRowMajor(): DoubleArray {
        return doubleArrayOf(
            1.0, 0.0, 0.0,
            0.0, 1.0, 0.0,
            0.0, 0.0, 1.0,
        )
    }

    private fun isNeutral(vararg values: Float): Boolean = values.all { kotlin.math.abs(it) < 0.0001f }

    private data class Uv(val u: Double, val v: Double)
    private data class Chromaticity(val x: Double, val y: Double)

    private val IDENTITY_COLUMN_MAJOR = floatArrayOf(
        1f, 0f, 0f,
        0f, 1f, 0f,
        0f, 0f, 1f,
    )
}
