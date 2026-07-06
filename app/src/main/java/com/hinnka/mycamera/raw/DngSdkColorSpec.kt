package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.max
import kotlin.math.round
import kotlin.math.sqrt

internal object DngSdkColorSpec {
    private const val EPSILON = 1e-6f
    private const val D50_X = 0.3457f
    private const val D50_Y = 0.3585f

    private val PCS_TO_XYZ = floatArrayOf(0.9642957f, 1.0f, 0.8251046f)
    private val IDENTITY_3X3 = floatArrayOf(
        1f, 0f, 0f,
        0f, 1f, 0f,
        0f, 0f, 1f
    )

    private data class PreparedProfile(
        val temperature1: Float,
        val temperature2: Float,
        val colorMatrix1: FloatArray,
        val colorMatrix2: FloatArray,
        val forwardMatrix1: FloatArray?,
        val forwardMatrix2: FloatArray?,
        val cameraCalibration1: FloatArray,
        val cameraCalibration2: FloatArray,
        val analogBalance: FloatArray
    )

    private data class MatrixForWhite(
        val colorMatrix: FloatArray,
        val forwardMatrix: FloatArray?,
        val cameraCalibration: FloatArray
    )

    fun computeCameraToWorkingMatrix(
        profile: DcpProfile,
        metadata: RawMetadata,
        workingColorSpace: ColorSpace
    ): FloatArray? {
        return computeCameraToWorkingMatrix(
            colorMatrix1 = profile.colorMatrix1,
            colorMatrix2 = profile.colorMatrix2,
            forwardMatrix1 = profile.forwardMatrix1,
            forwardMatrix2 = profile.forwardMatrix2,
            calibrationIlluminant1 = profile.calibrationIlluminant1,
            calibrationIlluminant2 = profile.calibrationIlluminant2,
            whiteBalanceGains = metadata.whiteBalanceGains,
            workingColorSpace = workingColorSpace,
            analogBalance = profile.analogBalance,
            cameraCalibration1 = profile.cameraCalibration1,
            cameraCalibration2 = profile.cameraCalibration2
        )
    }

    fun computeCameraWhite(
        profile: DcpProfile,
        metadata: RawMetadata
    ): FloatArray? {
        return computeCameraWhite(
            colorMatrix1 = profile.colorMatrix1,
            colorMatrix2 = profile.colorMatrix2,
            forwardMatrix1 = profile.forwardMatrix1,
            forwardMatrix2 = profile.forwardMatrix2,
            calibrationIlluminant1 = profile.calibrationIlluminant1,
            calibrationIlluminant2 = profile.calibrationIlluminant2,
            whiteBalanceGains = metadata.whiteBalanceGains,
            analogBalance = profile.analogBalance,
            cameraCalibration1 = profile.cameraCalibration1,
            cameraCalibration2 = profile.cameraCalibration2
        )
    }

    fun computeCameraToWorkingMatrix(
        colorMatrix1: FloatArray?,
        colorMatrix2: FloatArray?,
        forwardMatrix1: FloatArray?,
        forwardMatrix2: FloatArray?,
        calibrationIlluminant1: Int,
        calibrationIlluminant2: Int,
        whiteBalanceGains: FloatArray,
        workingColorSpace: ColorSpace,
        analogBalance: FloatArray? = null,
        cameraCalibration1: FloatArray? = null,
        cameraCalibration2: FloatArray? = null
    ): FloatArray? {
        val cameraToPcs = computeCameraToPcsD50(
            colorMatrix1 = colorMatrix1,
            colorMatrix2 = colorMatrix2,
            forwardMatrix1 = forwardMatrix1,
            forwardMatrix2 = forwardMatrix2,
            calibrationIlluminant1 = calibrationIlluminant1,
            calibrationIlluminant2 = calibrationIlluminant2,
            whiteBalanceGains = whiteBalanceGains,
            analogBalance = analogBalance,
            cameraCalibration1 = cameraCalibration1,
            cameraCalibration2 = cameraCalibration2
        ) ?: return null
        val xyzToWorking = computeXyzD50ToGamut(workingColorSpace) ?: return null
        return multiplyMatrix3x3(xyzToWorking, cameraToPcs)
    }

    fun computeCameraWhite(
        colorMatrix1: FloatArray?,
        colorMatrix2: FloatArray?,
        forwardMatrix1: FloatArray?,
        forwardMatrix2: FloatArray?,
        calibrationIlluminant1: Int,
        calibrationIlluminant2: Int,
        whiteBalanceGains: FloatArray,
        analogBalance: FloatArray? = null,
        cameraCalibration1: FloatArray? = null,
        cameraCalibration2: FloatArray? = null
    ): FloatArray? {
        val prepared = prepareProfile(
            colorMatrix1 = colorMatrix1,
            colorMatrix2 = colorMatrix2,
            forwardMatrix1 = forwardMatrix1,
            forwardMatrix2 = forwardMatrix2,
            calibrationIlluminant1 = calibrationIlluminant1,
            calibrationIlluminant2 = calibrationIlluminant2,
            analogBalance = analogBalance,
            cameraCalibration1 = cameraCalibration1,
            cameraCalibration2 = cameraCalibration2
        ) ?: return null

        val whiteXy = neutralToXy(prepared, cameraNeutralFromWb(whiteBalanceGains)) ?: return null
        return cameraWhiteForWhite(prepared, whiteXy)
    }

    fun computeCameraToPcsD50(
        colorMatrix1: FloatArray?,
        colorMatrix2: FloatArray?,
        forwardMatrix1: FloatArray?,
        forwardMatrix2: FloatArray?,
        calibrationIlluminant1: Int,
        calibrationIlluminant2: Int,
        whiteBalanceGains: FloatArray,
        analogBalance: FloatArray? = null,
        cameraCalibration1: FloatArray? = null,
        cameraCalibration2: FloatArray? = null
    ): FloatArray? {
        val prepared = prepareProfile(
            colorMatrix1 = colorMatrix1,
            colorMatrix2 = colorMatrix2,
            forwardMatrix1 = forwardMatrix1,
            forwardMatrix2 = forwardMatrix2,
            calibrationIlluminant1 = calibrationIlluminant1,
            calibrationIlluminant2 = calibrationIlluminant2,
            analogBalance = analogBalance,
            cameraCalibration1 = cameraCalibration1,
            cameraCalibration2 = cameraCalibration2
        ) ?: return null

        val whiteXy = neutralToXy(prepared, cameraNeutralFromWb(whiteBalanceGains)) ?: return null
        return cameraToPcsForWhite(prepared, whiteXy)
    }

    fun whiteXyForProfile(profile: DcpProfile, metadata: RawMetadata): FloatArray? {
        val prepared = prepareProfile(
            colorMatrix1 = profile.colorMatrix1,
            colorMatrix2 = profile.colorMatrix2,
            forwardMatrix1 = profile.forwardMatrix1,
            forwardMatrix2 = profile.forwardMatrix2,
            calibrationIlluminant1 = profile.calibrationIlluminant1,
            calibrationIlluminant2 = profile.calibrationIlluminant2,
            analogBalance = profile.analogBalance,
            cameraCalibration1 = profile.cameraCalibration1,
            cameraCalibration2 = profile.cameraCalibration2
        ) ?: return null
        return neutralToXy(prepared, cameraNeutralFromWb(metadata.whiteBalanceGains))
    }

    fun hueSatWeightForWhite(illuminant1: Int, illuminant2: Int, whiteXy: FloatArray): Float {
        var temperature1 = illuminantToTemperature(illuminant1)
        var temperature2 = illuminantToTemperature(illuminant2)
        if (temperature1 <= 0f || temperature2 <= 0f || abs(temperature1 - temperature2) < EPSILON) {
            return 1f
        }

        val reverseOrder = temperature1 > temperature2
        if (reverseOrder) {
            val temp = temperature1
            temperature1 = temperature2
            temperature2 = temp
        }

        val whiteTemperature = temperatureForXy(whiteXy)
        val weight = when {
            whiteTemperature <= temperature1 -> 1f
            whiteTemperature >= temperature2 -> 0f
            else -> {
                val inverseWhite = 1f / whiteTemperature
                ((inverseWhite - (1f / temperature2)) / ((1f / temperature1) - (1f / temperature2)))
                    .coerceIn(0f, 1f)
            }
        }
        return if (reverseOrder) 1f - weight else weight
    }

    fun computeXyzD50ToGamut(colorSpace: ColorSpace): FloatArray? {
        val xr = colorSpace.xr
        val yr = colorSpace.yr
        val xg = colorSpace.xg
        val yg = colorSpace.yg
        val xb = colorSpace.xb
        val yb = colorSpace.yb
        val xw = colorSpace.xw
        val yw = colorSpace.yw
        if (listOf(xr, yr, xg, yg, xb, yb, xw, yw).any { !it.isFinite() || abs(it) < EPSILON }) {
            return null
        }

        val scaleMatrix = floatArrayOf(
            xr / yr, xg / yg, xb / yb,
            1f, 1f, 1f,
            (1f - xr - yr) / yr, (1f - xg - yg) / yg, (1f - xb - yb) / yb
        )
        val inverseScale = invertMatrix3x3(scaleMatrix) ?: return null
        val whiteXyz = floatArrayOf(xw / yw, 1f, (1f - xw - yw) / yw)
        val sr = dotRow(inverseScale, 0, whiteXyz)
        val sg = dotRow(inverseScale, 1, whiteXyz)
        val sb = dotRow(inverseScale, 2, whiteXyz)

        val gamutToXyzNative = floatArrayOf(
            scaleMatrix[0] * sr, scaleMatrix[1] * sg, scaleMatrix[2] * sb,
            scaleMatrix[3] * sr, scaleMatrix[4] * sg, scaleMatrix[5] * sb,
            scaleMatrix[6] * sr, scaleMatrix[7] * sg, scaleMatrix[8] * sb
        )

        val isD50WhitePoint = abs(xw - D50_X) < 0.002f && abs(yw - D50_Y) < 0.002f
        val gamutToXyzD50 = if (isD50WhitePoint) {
            gamutToXyzNative
        } else {
            multiplyMatrix3x3(BRADFORD_D65_TO_D50, gamutToXyzNative)
        }
        return invertMatrix3x3(gamutToXyzD50)
    }

    fun multiplyMatrix3x3(left: FloatArray, right: FloatArray): FloatArray {
        val result = FloatArray(9)
        for (row in 0 until 3) {
            for (col in 0 until 3) {
                result[row * 3 + col] =
                    left[row * 3] * right[col] +
                        left[row * 3 + 1] * right[3 + col] +
                        left[row * 3 + 2] * right[6 + col]
            }
        }
        return result
    }

    fun invertMatrix3x3(matrix: FloatArray): FloatArray? {
        if (matrix.size != 9 || matrix.any { !it.isFinite() }) return null
        val det =
            matrix[0] * (matrix[4] * matrix[8] - matrix[5] * matrix[7]) -
                matrix[1] * (matrix[3] * matrix[8] - matrix[5] * matrix[6]) +
                matrix[2] * (matrix[3] * matrix[7] - matrix[4] * matrix[6])
        if (abs(det) < 1e-12f || !det.isFinite()) return null
        val invDet = 1f / det
        return floatArrayOf(
            (matrix[4] * matrix[8] - matrix[5] * matrix[7]) * invDet,
            (matrix[2] * matrix[7] - matrix[1] * matrix[8]) * invDet,
            (matrix[1] * matrix[5] - matrix[2] * matrix[4]) * invDet,
            (matrix[5] * matrix[6] - matrix[3] * matrix[8]) * invDet,
            (matrix[0] * matrix[8] - matrix[2] * matrix[6]) * invDet,
            (matrix[2] * matrix[3] - matrix[0] * matrix[5]) * invDet,
            (matrix[3] * matrix[7] - matrix[4] * matrix[6]) * invDet,
            (matrix[1] * matrix[6] - matrix[0] * matrix[7]) * invDet,
            (matrix[0] * matrix[4] - matrix[1] * matrix[3]) * invDet
        )
    }

    private fun prepareProfile(
        colorMatrix1: FloatArray?,
        colorMatrix2: FloatArray?,
        forwardMatrix1: FloatArray?,
        forwardMatrix2: FloatArray?,
        calibrationIlluminant1: Int,
        calibrationIlluminant2: Int,
        analogBalance: FloatArray?,
        cameraCalibration1: FloatArray?,
        cameraCalibration2: FloatArray?
    ): PreparedProfile? {
        var matrix1 = colorMatrix1.validMatrixOrNull()
        var matrix2 = colorMatrix2.validMatrixOrNull()
        var illuminant1 = calibrationIlluminant1
        var illuminant2 = calibrationIlluminant2
        if (matrix1 == null && matrix2 != null) {
            matrix1 = matrix2
            matrix2 = null
            illuminant1 = illuminant2
        }
        matrix1 ?: return null

        val analog = analogBalance.validVectorOrDefault()
        val calibration1 = cameraCalibration1.validMatrixOrIdentity()
        val calibration2 = cameraCalibration2.validMatrixOrIdentity()
        val analogMatrix = diagonalMatrix(analog)

        var temperature1 = illuminantToTemperature(illuminant1)
        var temperature2 = illuminantToTemperature(illuminant2)
        var preparedColor1 = applyCameraCalibration(normalizeColorMatrix(matrix1), calibration1, analogMatrix)
        var preparedForward1 = forwardMatrix1.validMatrixOrNull()?.let(::normalizeForwardMatrix)
        var preparedCalibration1 = calibration1

        var preparedColor2 = matrix2?.let {
            applyCameraCalibration(normalizeColorMatrix(it), calibration2, analogMatrix)
        }
        var preparedForward2 = forwardMatrix2.validMatrixOrNull()?.let(::normalizeForwardMatrix)
        var preparedCalibration2 = calibration2

        if (preparedColor2 == null || temperature1 <= 0f || temperature2 <= 0f || abs(temperature1 - temperature2) < EPSILON) {
            temperature1 = 5000f
            temperature2 = 5000f
            preparedColor2 = preparedColor1
            preparedForward2 = preparedForward1
            preparedCalibration2 = preparedCalibration1
        } else if (temperature1 > temperature2) {
            val tempTemperature = temperature1
            temperature1 = temperature2
            temperature2 = tempTemperature

            val tempColor = preparedColor1
            preparedColor1 = preparedColor2
            preparedColor2 = tempColor

            val tempForward = preparedForward1
            preparedForward1 = preparedForward2
            preparedForward2 = tempForward

            val tempCalibration = preparedCalibration1
            preparedCalibration1 = preparedCalibration2
            preparedCalibration2 = tempCalibration
        }

        return PreparedProfile(
            temperature1 = temperature1,
            temperature2 = temperature2,
            colorMatrix1 = preparedColor1,
            colorMatrix2 = preparedColor2,
            forwardMatrix1 = preparedForward1,
            forwardMatrix2 = preparedForward2,
            cameraCalibration1 = preparedCalibration1,
            cameraCalibration2 = preparedCalibration2,
            analogBalance = analog
        )
    }

    private fun cameraToPcsForWhite(profile: PreparedProfile, whiteXy: FloatArray): FloatArray? {
        val matrices = findXyzToCamera(profile, whiteXy)
        val cameraWhite = cameraWhiteForWhite(profile, whiteXy) ?: return null

        val pcsToCamera = multiplyMatrix3x3(
            matrices.colorMatrix,
            mapWhiteMatrix(floatArrayOf(D50_X, D50_Y), whiteXy)
        )
        val pcsWhite = multiplyMatrixVector(pcsToCamera, PCS_TO_XYZ)
        val scale = 1f / pcsWhite.maxOrNullValue().coerceAtLeast(EPSILON)
        val scaledPcsToCamera = pcsToCamera.copyOf()
        for (index in scaledPcsToCamera.indices) {
            scaledPcsToCamera[index] *= scale
        }

        val forwardMatrix = matrices.forwardMatrix
        if (forwardMatrix != null) {
            val individualToReference = invertMatrix3x3(
                multiplyMatrix3x3(diagonalMatrix(profile.analogBalance), matrices.cameraCalibration)
            ) ?: return null
            val referenceCameraWhite = multiplyMatrixVector(individualToReference, cameraWhite)
            if (referenceCameraWhite.any { it <= EPSILON || !it.isFinite() }) {
                return null
            }
            val inverseWhite = diagonalMatrix(floatArrayOf(
                1f / referenceCameraWhite[0],
                1f / referenceCameraWhite[1],
                1f / referenceCameraWhite[2]
            ))
            return multiplyMatrix3x3(multiplyMatrix3x3(forwardMatrix, inverseWhite), individualToReference)
        }

        return invertMatrix3x3(scaledPcsToCamera)
    }

    private fun cameraWhiteForWhite(profile: PreparedProfile, whiteXy: FloatArray): FloatArray? {
        val matrices = findXyzToCamera(profile, whiteXy)
        val whiteXyz = xyToXyz(whiteXy) ?: return null
        val cameraWhite = multiplyMatrixVector(matrices.colorMatrix, whiteXyz)
        val whiteScale = 1f / cameraWhite.maxOrNullValue().coerceAtLeast(EPSILON)
        for (index in cameraWhite.indices) {
            cameraWhite[index] = (cameraWhite[index] * whiteScale).coerceIn(0.001f, 1f)
        }
        return cameraWhite
    }

    private fun neutralToXy(profile: PreparedProfile, neutral: FloatArray): FloatArray? {
        var last = floatArrayOf(D50_X, D50_Y)
        repeat(30) { pass ->
            val xyzToCamera = findXyzToCamera(profile, last).colorMatrix
            val cameraToXyz = invertMatrix3x3(xyzToCamera) ?: return null
            val nextXyz = multiplyMatrixVector(cameraToXyz, neutral)
            val next = xyzToXy(nextXyz) ?: return null
            if (abs(next[0] - last[0]) + abs(next[1] - last[1]) < 1e-7f) {
                return next
            }
            if (pass == 29) {
                next[0] = (last[0] + next[0]) * 0.5f
                next[1] = (last[1] + next[1]) * 0.5f
                return next
            }
            last = next
        }
        return last
    }

    private fun findXyzToCamera(profile: PreparedProfile, whiteXy: FloatArray): MatrixForWhite {
        val whiteTemperature = temperatureForXy(whiteXy)
        val weight = when {
            whiteTemperature <= profile.temperature1 -> 1f
            whiteTemperature >= profile.temperature2 -> 0f
            abs(profile.temperature1 - profile.temperature2) < EPSILON -> 1f
            else -> {
                val inverseWhite = 1f / whiteTemperature
                ((inverseWhite - (1f / profile.temperature2)) /
                    ((1f / profile.temperature1) - (1f / profile.temperature2))).coerceIn(0f, 1f)
            }
        }
        return MatrixForWhite(
            colorMatrix = interpolateMatrix(profile.colorMatrix1, profile.colorMatrix2, weight),
            forwardMatrix = interpolateOptionalMatrix(profile.forwardMatrix1, profile.forwardMatrix2, weight),
            cameraCalibration = interpolateMatrix(profile.cameraCalibration1, profile.cameraCalibration2, weight)
        )
    }

    private fun cameraNeutralFromWb(whiteBalanceGains: FloatArray): FloatArray {
        val red = whiteBalanceGains.getOrElse(0) { 1f }.coerceAtLeast(EPSILON)
        val greenEven = whiteBalanceGains.getOrElse(1) { 1f }.coerceAtLeast(EPSILON)
        val greenOdd = whiteBalanceGains.getOrElse(2) { greenEven }.coerceAtLeast(EPSILON)
        val blue = whiteBalanceGains.getOrElse(3) {
            whiteBalanceGains.getOrElse(2) { 1f }
        }.coerceAtLeast(EPSILON)
        val green = ((greenEven + greenOdd) * 0.5f).coerceAtLeast(EPSILON)
        return floatArrayOf(green / red, 1f, green / blue)
    }

    private fun normalizeColorMatrix(matrix: FloatArray): FloatArray {
        val result = matrix.copyOf()
        val coord = multiplyMatrixVector(result, PCS_TO_XYZ)
        val maxCoord = coord.maxOrNullValue()
        if (maxCoord > 0f && (maxCoord < 0.99f || maxCoord > 1.01f)) {
            val scale = 1f / maxCoord
            for (index in result.indices) {
                result[index] *= scale
            }
        }
        for (index in result.indices) {
            result[index] = round(result[index] * 10000f) / 10000f
        }
        return result
    }

    private fun normalizeForwardMatrix(matrix: FloatArray): FloatArray {
        val xyz = floatArrayOf(
            matrix[0] + matrix[1] + matrix[2],
            matrix[3] + matrix[4] + matrix[5],
            matrix[6] + matrix[7] + matrix[8]
        )
        val result = matrix.copyOf()
        for (row in 0 until 3) {
            val scale = if (abs(xyz[row]) > EPSILON) PCS_TO_XYZ[row] / xyz[row] else 1f
            result[row * 3] *= scale
            result[row * 3 + 1] *= scale
            result[row * 3 + 2] *= scale
        }
        return result
    }

    private fun applyCameraCalibration(
        colorMatrix: FloatArray,
        cameraCalibration: FloatArray,
        analogMatrix: FloatArray
    ): FloatArray {
        return multiplyMatrix3x3(multiplyMatrix3x3(analogMatrix, cameraCalibration), colorMatrix)
    }

    private fun mapWhiteMatrix(white1: FloatArray, white2: FloatArray): FloatArray {
        val w1 = multiplyMatrixVector(BRADFORD_LINEAR, xyToXyz(white1) ?: return IDENTITY_3X3)
        val w2 = multiplyMatrixVector(BRADFORD_LINEAR, xyToXyz(white2) ?: return IDENTITY_3X3)
        for (index in 0 until 3) {
            w1[index] = max(w1[index], 0f)
            w2[index] = max(w2[index], 0f)
        }
        val adaptation = diagonalMatrix(floatArrayOf(
            (if (w1[0] > 0f) w2[0] / w1[0] else 10f).coerceIn(0.1f, 10f),
            (if (w1[1] > 0f) w2[1] / w1[1] else 10f).coerceIn(0.1f, 10f),
            (if (w1[2] > 0f) w2[2] / w1[2] else 10f).coerceIn(0.1f, 10f)
        ))
        val inverseBradford = invertMatrix3x3(BRADFORD_LINEAR) ?: return IDENTITY_3X3
        return multiplyMatrix3x3(multiplyMatrix3x3(inverseBradford, adaptation), BRADFORD_LINEAR)
    }

    private fun temperatureForXy(xy: FloatArray): Float {
        val denominator = 1.5 - xy[0] + 6.0 * xy[1]
        if (!denominator.isFinite() || abs(denominator) < 1e-12) {
            return 5000f
        }
        val u = 2.0 * xy[0] / denominator
        val v = 3.0 * xy[1] / denominator

        var lastDistance = 0.0
        for (index in 1 until TEMP_TABLE.size) {
            var du = 1.0
            var dv = TEMP_TABLE[index].slope
            val length = sqrt(1.0 + dv * dv)
            du /= length
            dv /= length

            var uu = u - TEMP_TABLE[index].u
            var vv = v - TEMP_TABLE[index].v
            var distance = -uu * dv + vv * du

            if (distance <= 0.0 || index == TEMP_TABLE.lastIndex) {
                if (distance > 0.0) {
                    distance = 0.0
                }
                val dt = -distance
                val fraction = if (index == 1) 0.0 else dt / (lastDistance + dt)
                val reciprocal = TEMP_TABLE[index - 1].reciprocal * fraction +
                    TEMP_TABLE[index].reciprocal * (1.0 - fraction)
                return (1.0E6 / reciprocal).toFloat().coerceIn(1000f, 100000f)
            }

            lastDistance = distance
        }
        return 5000f
    }

    private fun illuminantToTemperature(illuminant: Int): Float {
        return when (illuminant) {
            3, 17 -> 2850f
            24 -> 3200f
            23 -> 5000f
            1, 4, 9, 18, 20 -> 5500f
            10, 19, 21 -> 6500f
            11, 22 -> 7500f
            12 -> 6400f
            2, 14 -> 4150f
            13 -> 5050f
            15 -> 3525f
            16 -> 2925f
            else -> 0f
        }
    }

    private fun FloatArray?.validMatrixOrNull(): FloatArray? {
        val matrix = this ?: return null
        if (matrix.size != 9 || matrix.any { !it.isFinite() }) return null
        return if (matrix.sumOf { abs(it).toDouble() } > 0.01) matrix.copyOf() else null
    }

    private fun FloatArray?.validMatrixOrIdentity(): FloatArray {
        return validMatrixOrNull() ?: IDENTITY_3X3.copyOf()
    }

    private fun FloatArray?.validVectorOrDefault(): FloatArray {
        val vector = this
        if (vector == null || vector.size < 3 || vector.take(3).any { !it.isFinite() || it <= 0f }) {
            return floatArrayOf(1f, 1f, 1f)
        }
        return vector.copyOf(3)
    }

    private fun diagonalMatrix(values: FloatArray): FloatArray {
        return floatArrayOf(
            values[0], 0f, 0f,
            0f, values[1], 0f,
            0f, 0f, values[2]
        )
    }

    private fun interpolateOptionalMatrix(first: FloatArray?, second: FloatArray?, weight: Float): FloatArray? {
        return when {
            first != null && second != null -> interpolateMatrix(first, second, weight)
            first != null -> first.copyOf()
            second != null -> second.copyOf()
            else -> null
        }
    }

    private fun interpolateMatrix(first: FloatArray, second: FloatArray, weight: Float): FloatArray {
        return FloatArray(9) { index -> first[index] * weight + second[index] * (1f - weight) }
    }

    private fun xyToXyz(xy: FloatArray): FloatArray? {
        val x = xy.getOrNull(0) ?: return null
        val y = xy.getOrNull(1) ?: return null
        if (!x.isFinite() || !y.isFinite() || y <= EPSILON) return null
        return floatArrayOf(x / y, 1f, (1f - x - y) / y)
    }

    private fun xyzToXy(xyz: FloatArray): FloatArray? {
        val sum = xyz[0] + xyz[1] + xyz[2]
        if (sum <= EPSILON || !sum.isFinite() || xyz.any { !it.isFinite() }) return null
        return floatArrayOf(xyz[0] / sum, xyz[1] / sum)
    }

    private fun multiplyMatrixVector(matrix: FloatArray, vector: FloatArray): FloatArray {
        return floatArrayOf(
            matrix[0] * vector[0] + matrix[1] * vector[1] + matrix[2] * vector[2],
            matrix[3] * vector[0] + matrix[4] * vector[1] + matrix[5] * vector[2],
            matrix[6] * vector[0] + matrix[7] * vector[1] + matrix[8] * vector[2]
        )
    }

    private fun dotRow(matrix: FloatArray, row: Int, vector: FloatArray): Float {
        val offset = row * 3
        return matrix[offset] * vector[0] + matrix[offset + 1] * vector[1] + matrix[offset + 2] * vector[2]
    }

    private fun FloatArray.maxOrNullValue(): Float {
        var result = Float.NEGATIVE_INFINITY
        for (value in this) {
            if (value.isFinite() && value > result) {
                result = value
            }
        }
        return if (result.isFinite()) result else 0f
    }

    private data class TempEntry(
        val reciprocal: Double,
        val u: Double,
        val v: Double,
        val slope: Double
    )

    private val TEMP_TABLE = arrayOf(
        TempEntry(0.0, 0.18006, 0.26352, -0.24341),
        TempEntry(10.0, 0.18066, 0.26589, -0.25479),
        TempEntry(20.0, 0.18133, 0.26846, -0.26876),
        TempEntry(30.0, 0.18208, 0.27119, -0.28539),
        TempEntry(40.0, 0.18293, 0.27407, -0.30470),
        TempEntry(50.0, 0.18388, 0.27709, -0.32675),
        TempEntry(60.0, 0.18494, 0.28021, -0.35156),
        TempEntry(70.0, 0.18611, 0.28342, -0.37915),
        TempEntry(80.0, 0.18740, 0.28668, -0.40955),
        TempEntry(90.0, 0.18880, 0.28997, -0.44278),
        TempEntry(100.0, 0.19032, 0.29326, -0.47888),
        TempEntry(125.0, 0.19462, 0.30141, -0.58204),
        TempEntry(150.0, 0.19962, 0.30921, -0.70471),
        TempEntry(175.0, 0.20525, 0.31647, -0.84901),
        TempEntry(200.0, 0.21142, 0.32312, -1.0182),
        TempEntry(225.0, 0.21807, 0.32909, -1.2168),
        TempEntry(250.0, 0.22511, 0.33439, -1.4512),
        TempEntry(275.0, 0.23247, 0.33904, -1.7298),
        TempEntry(300.0, 0.24010, 0.34308, -2.0637),
        TempEntry(325.0, 0.24702, 0.34655, -2.4681),
        TempEntry(350.0, 0.25591, 0.34951, -2.9641),
        TempEntry(375.0, 0.26400, 0.35200, -3.5814),
        TempEntry(400.0, 0.27218, 0.35407, -4.3633),
        TempEntry(425.0, 0.28039, 0.35577, -5.3762),
        TempEntry(450.0, 0.28863, 0.35714, -6.7262),
        TempEntry(475.0, 0.29685, 0.35823, -8.5955),
        TempEntry(500.0, 0.30505, 0.35907, -11.324),
        TempEntry(525.0, 0.31320, 0.35968, -15.628),
        TempEntry(550.0, 0.32129, 0.36011, -23.325),
        TempEntry(575.0, 0.32931, 0.36038, -40.770),
        TempEntry(600.0, 0.33724, 0.36051, -116.45)
    )

    private val BRADFORD_LINEAR = floatArrayOf(
        0.8951f, 0.2664f, -0.1614f,
        -0.7502f, 1.7135f, 0.0367f,
        0.0389f, -0.0685f, 1.0296f
    )

    private val BRADFORD_D65_TO_D50 = floatArrayOf(
        1.0478112f, 0.0228866f, -0.0501270f,
        0.0295424f, 0.9904844f, -0.0170491f,
        -0.0092345f, 0.0150436f, 0.7521316f
    )
}
