package com.hinnka.mycamera.raw

import android.opengl.GLES30
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow

object RawToneMappingGl {
    private val OPPO_MASTER_ADOBE_CURVE by lazy {
        DngProfileToneCurve.oppoEmbeddedToneCurveLut()
    }

    data class FilmicToneCurveUniforms(
        val blackRelativeExposure: Float,
        val whiteRelativeExposure: Float,
        val dynamicRange: Float,
        val inputMin: Float,
        val inputMax: Float,
        val latitudeMin: Float,
        val latitudeMax: Float,
        val m1: FloatArray,
        val m2: FloatArray,
        val m3: FloatArray,
        val m4: FloatArray,
        val m5: FloatArray
    )

    fun adobeCurveSamplesFor(params: RawToneMappingParameters): FloatArray {
        val normalized = params.normalized()
        return if (normalized.useOppoMasterToneMap) {
            OPPO_MASTER_ADOBE_CURVE
        } else {
            ACR3Curve.samples()
        }
    }

    fun bindRawToneMappingUniforms(program: Int, params: RawToneMappingParameters) {
        val normalized = params.normalized()
        uniform1f(program, "uAgxBlackRelativeExposure", normalized.agxBlackRelativeExposure)
        uniform1f(program, "uAgxWhiteRelativeExposure", normalized.agxWhiteRelativeExposure)
        uniform1f(program, "uAgxToe", normalized.agxToe)
        uniform1f(program, "uAgxShoulder", normalized.agxShoulder)

        val filmic = computeFilmicToneCurveUniforms(normalized)
        uniform1f(program, "uFilmicBlackRelativeExposure", filmic.blackRelativeExposure)
        uniform1f(program, "uFilmicWhiteRelativeExposure", filmic.whiteRelativeExposure)
        uniform1f(program, "uFilmicDynamicRange", filmic.dynamicRange)
        uniform1f(program, "uFilmicInputMin", filmic.inputMin)
        uniform1f(program, "uFilmicInputMax", filmic.inputMax)
        uniform1f(program, "uFilmicLatitudeMin", filmic.latitudeMin)
        uniform1f(program, "uFilmicLatitudeMax", filmic.latitudeMax)
        uniform3f(program, "uFilmicM1", filmic.m1)
        uniform3f(program, "uFilmicM2", filmic.m2)
        uniform3f(program, "uFilmicM3", filmic.m3)
        uniform3f(program, "uFilmicM4", filmic.m4)
        uniform3f(program, "uFilmicM5", filmic.m5)
    }

    fun computeWorkingToOutputTransform(
        workingSpace: ColorSpace,
        outputSpace: ColorSpace
    ): FloatArray {
        val workingFromXyz = computeXyzD50ToGamut(workingSpace) ?: return identityMatrix3x3()
        val xyzFromWorking = invertMatrix3x3(workingFromXyz) ?: return identityMatrix3x3()
        val outputFromXyz = computeXyzD50ToGamut(outputSpace) ?: return identityMatrix3x3()
        return multiplyMatrix3x3(outputFromXyz, xyzFromWorking)
    }

    fun identityMatrix3x3(): FloatArray = floatArrayOf(
        1f, 0f, 0f,
        0f, 1f, 0f,
        0f, 0f, 1f
    )

    fun transposeMatrix3x3(matrix: FloatArray): FloatArray = floatArrayOf(
        matrix[0], matrix[3], matrix[6],
        matrix[1], matrix[4], matrix[7],
        matrix[2], matrix[5], matrix[8]
    )

    private fun computeFilmicToneCurveUniforms(params: RawToneMappingParameters): FilmicToneCurveUniforms {
        val blackSource = min(
            params.filmicBlackRelativeExposure,
            params.filmicWhiteRelativeExposure - RawToneMappingParameters.MIN_DYNAMIC_RANGE_EV
        )
        val whiteSource = max(
            params.filmicWhiteRelativeExposure,
            blackSource + RawToneMappingParameters.MIN_DYNAMIC_RANGE_EV
        )
        val dynamicRange = max(RawToneMappingParameters.MIN_DYNAMIC_RANGE_EV, whiteSource - blackSource)
        val inputMin = 2.0f.pow(blackSource) * FILMIC_GREY_SOURCE
        val inputMax = 2.0f.pow(whiteSource) * FILMIC_GREY_SOURCE

        val blackDisplay = FILMIC_DISPLAY_BLACK.pow(1f / FILMIC_OUTPUT_POWER)
        val whiteDisplay = 1f
        val greyDisplay = FILMIC_GREY_SOURCE.pow(1f / FILMIC_OUTPUT_POWER)
        val greyLog = (abs(blackSource) / dynamicRange).coerceIn(0.001f, 0.999f)

        var contrast = FILMIC_DEFAULT_CONTRAST * (dynamicRange / FILMIC_DEFAULT_DYNAMIC_RANGE)
        var minContrast = 1f
        minContrast = max(minContrast, (whiteDisplay - greyDisplay) / max(1f - greyLog, 1e-5f))
        minContrast = max(minContrast, (greyDisplay - blackDisplay) / max(greyLog, 1e-5f))
        contrast = contrast.coerceIn(minContrast + FILMIC_SAFETY_MARGIN, 100f)

        val linearIntercept = greyDisplay - contrast * greyLog
        val displayRange = whiteDisplay - blackDisplay
        val xmin = (
            blackDisplay + FILMIC_SAFETY_MARGIN * displayRange - linearIntercept
            ) / contrast
        val xmax = (
            whiteDisplay - FILMIC_SAFETY_MARGIN * displayRange - linearIntercept
            ) / contrast

        val toeLog = ((1f - FILMIC_LATITUDE) * greyLog + FILMIC_LATITUDE * xmin)
            .coerceIn(0f, greyLog)
        val shoulderLog = ((1f - FILMIC_LATITUDE) * greyLog + FILMIC_LATITUDE * xmax)
            .coerceIn(greyLog, 1f)
        val toeDisplay = toeLog * contrast + linearIntercept
        val shoulderDisplay = shoulderLog * contrast + linearIntercept

        val m1 = FloatArray(3)
        val m2 = FloatArray(3)
        val m3 = FloatArray(3)
        val m4 = FloatArray(3)
        val m5 = FloatArray(3)

        val toe = solveFilmicToe(toeLog.toDouble(), toeDisplay.toDouble(), blackDisplay.toDouble(), contrast.toDouble())
        val shoulder = solveFilmicShoulder(
            shoulderLog.toDouble(),
            shoulderDisplay.toDouble(),
            whiteDisplay.toDouble(),
            contrast.toDouble()
        )
        m5[0] = toe[0].toFloat()
        m4[0] = toe[1].toFloat()
        m3[0] = toe[2].toFloat()
        m2[0] = toe[3].toFloat()
        m1[0] = toe[4].toFloat()

        m5[1] = shoulder[0].toFloat()
        m4[1] = shoulder[1].toFloat()
        m3[1] = shoulder[2].toFloat()
        m2[1] = shoulder[3].toFloat()
        m1[1] = shoulder[4].toFloat()

        m1[2] = toeDisplay - contrast * toeLog
        m2[2] = contrast
        m3[2] = 0f
        m4[2] = 0f
        m5[2] = 0f

        return FilmicToneCurveUniforms(
            blackRelativeExposure = blackSource,
            whiteRelativeExposure = whiteSource,
            dynamicRange = dynamicRange,
            inputMin = max(inputMin, 1e-8f),
            inputMax = max(inputMax, inputMin + 1e-8f),
            latitudeMin = toeLog,
            latitudeMax = shoulderLog,
            m1 = m1,
            m2 = m2,
            m3 = m3,
            m4 = m4,
            m5 = m5
        )
    }

    private fun solveFilmicToe(
        toeLog: Double,
        toeDisplay: Double,
        blackDisplay: Double,
        contrast: Double
    ): DoubleArray {
        val x2 = toeLog * toeLog
        val x3 = x2 * toeLog
        val x4 = x3 * toeLog
        return solveLinearSystem(
            arrayOf(
                doubleArrayOf(0.0, 0.0, 0.0, 0.0, 1.0),
                doubleArrayOf(0.0, 0.0, 0.0, 1.0, 0.0),
                doubleArrayOf(x4, x3, x2, toeLog, 1.0),
                doubleArrayOf(4.0 * x3, 3.0 * x2, 2.0 * toeLog, 1.0, 0.0),
                doubleArrayOf(12.0 * x2, 6.0 * toeLog, 2.0, 0.0, 0.0)
            ),
            doubleArrayOf(blackDisplay, 0.0, toeDisplay, contrast, 0.0)
        )
    }

    private fun solveFilmicShoulder(
        shoulderLog: Double,
        shoulderDisplay: Double,
        whiteDisplay: Double,
        contrast: Double
    ): DoubleArray {
        val x2 = shoulderLog * shoulderLog
        val x3 = x2 * shoulderLog
        val x4 = x3 * shoulderLog
        return solveLinearSystem(
            arrayOf(
                doubleArrayOf(1.0, 1.0, 1.0, 1.0, 1.0),
                doubleArrayOf(4.0, 3.0, 2.0, 1.0, 0.0),
                doubleArrayOf(x4, x3, x2, shoulderLog, 1.0),
                doubleArrayOf(4.0 * x3, 3.0 * x2, 2.0 * shoulderLog, 1.0, 0.0),
                doubleArrayOf(12.0 * x2, 6.0 * shoulderLog, 2.0, 0.0, 0.0)
            ),
            doubleArrayOf(whiteDisplay, 0.0, shoulderDisplay, contrast, 0.0)
        )
    }

    private fun solveLinearSystem(matrix: Array<DoubleArray>, values: DoubleArray): DoubleArray {
        val size = values.size
        for (column in 0 until size) {
            var pivot = column
            for (row in column + 1 until size) {
                if (abs(matrix[row][column]) > abs(matrix[pivot][column])) {
                    pivot = row
                }
            }
            if (pivot != column) {
                val tmpRow = matrix[column]
                matrix[column] = matrix[pivot]
                matrix[pivot] = tmpRow
                val tmpValue = values[column]
                values[column] = values[pivot]
                values[pivot] = tmpValue
            }

            val pivotValue = matrix[column][column]
            if (abs(pivotValue) < 1e-12) continue

            for (row in column + 1 until size) {
                val factor = matrix[row][column] / pivotValue
                for (col in column until size) {
                    matrix[row][col] -= factor * matrix[column][col]
                }
                values[row] -= factor * values[column]
            }
        }

        val result = DoubleArray(size)
        for (row in size - 1 downTo 0) {
            var sum = values[row]
            for (col in row + 1 until size) {
                sum -= matrix[row][col] * result[col]
            }
            val denominator = matrix[row][row]
            result[row] = if (abs(denominator) < 1e-12) 0.0 else sum / denominator
        }
        return result
    }

    private fun computeXyzD50ToGamut(colorSpace: ColorSpace): FloatArray? {
        val primaries = colorSpace.primaries
        val whitePoint = colorSpace.whitePoint
        if (primaries.size != 6 || whitePoint.size != 2) return null

        val xr = primaries[0]
        val yr = primaries[1]
        val xg = primaries[2]
        val yg = primaries[3]
        val xb = primaries[4]
        val yb = primaries[5]
        val xw = whitePoint[0]
        val yw = whitePoint[1]

        val mS = floatArrayOf(
            xr / yr, xg / yg, xb / yb,
            1f, 1f, 1f,
            (1 - xr - yr) / yr, (1 - xg - yg) / yg, (1 - xb - yb) / yb
        )
        val invS = invertMatrix3x3(mS) ?: return null

        val xWhite = xw / yw
        val yWhite = 1f
        val zWhite = (1 - xw - yw) / yw

        val sR = invS[0] * xWhite + invS[1] * yWhite + invS[2] * zWhite
        val sG = invS[3] * xWhite + invS[4] * yWhite + invS[5] * zWhite
        val sB = invS[6] * xWhite + invS[7] * yWhite + invS[8] * zWhite

        val gamutToXyzD65 = floatArrayOf(
            mS[0] * sR, mS[1] * sG, mS[2] * sB,
            mS[3] * sR, mS[4] * sG, mS[5] * sB,
            mS[6] * sR, mS[7] * sG, mS[8] * sB
        )

        val gamutToXyzD50 = if (isD50WhitePoint(xw, yw)) {
            gamutToXyzD65
        } else {
            multiplyMatrix3x3(BRADFORD_D65_TO_D50, gamutToXyzD65)
        }

        return invertMatrix3x3(gamutToXyzD50)
    }

    private fun isD50WhitePoint(x: Float, y: Float): Boolean {
        return abs(x - 0.3457f) < 0.002f && abs(y - 0.3585f) < 0.002f
    }

    private fun invertMatrix3x3(m: FloatArray): FloatArray? {
        if (m.size != 9) return null
        val det = m[0] * (m[4] * m[8] - m[5] * m[7]) -
            m[1] * (m[3] * m[8] - m[5] * m[6]) +
            m[2] * (m[3] * m[7] - m[4] * m[6])
        if (abs(det) < 1e-12f) return null
        val invDet = 1f / det
        return floatArrayOf(
            (m[4] * m[8] - m[5] * m[7]) * invDet,
            (m[2] * m[7] - m[1] * m[8]) * invDet,
            (m[1] * m[5] - m[2] * m[4]) * invDet,
            (m[5] * m[6] - m[3] * m[8]) * invDet,
            (m[0] * m[8] - m[2] * m[6]) * invDet,
            (m[2] * m[3] - m[0] * m[5]) * invDet,
            (m[3] * m[7] - m[4] * m[6]) * invDet,
            (m[1] * m[6] - m[0] * m[7]) * invDet,
            (m[0] * m[4] - m[1] * m[3]) * invDet
        )
    }

    private fun multiplyMatrix3x3(a: FloatArray, b: FloatArray): FloatArray {
        val result = FloatArray(9)
        for (row in 0..2) {
            for (col in 0..2) {
                var sum = 0f
                for (k in 0..2) {
                    sum += a[row * 3 + k] * b[k * 3 + col]
                }
                result[row * 3 + col] = sum
            }
        }
        return result
    }

    private fun uniform1f(program: Int, name: String, value: Float) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) {
            GLES30.glUniform1f(location, value)
        }
    }

    private fun uniform3f(program: Int, name: String, value: FloatArray) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) {
            GLES30.glUniform3f(location, value[0], value[1], value[2])
        }
    }

    private const val FILMIC_GREY_SOURCE = 0.1845f
    private const val FILMIC_OUTPUT_POWER = 3.614815775f
    private const val FILMIC_DISPLAY_BLACK = 0.0001517634f
    private const val FILMIC_DEFAULT_DYNAMIC_RANGE = 12.21f
    private const val FILMIC_DEFAULT_CONTRAST = 1.433801098f
    private const val FILMIC_LATITUDE = 0.0001f
    private const val FILMIC_SAFETY_MARGIN = 0.01f
    private val BRADFORD_D65_TO_D50 = floatArrayOf(
        1.0478112f, 0.0228866f, -0.0501270f,
        0.0295424f, 0.9904844f, -0.0170491f,
        -0.0092345f, 0.0150436f, 0.7521316f
    )
}
