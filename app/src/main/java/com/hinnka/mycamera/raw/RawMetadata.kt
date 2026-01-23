package com.hinnka.mycamera.raw

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.params.ColorSpaceTransform
import android.hardware.camera2.params.RggbChannelVector
import android.util.Log
import android.util.Rational

/**
 * RAW 图像处理所需的元数据
 * 
 * 封装从 CameraCharacteristics 和 CaptureResult 中提取的参数，
 * 用于 GPU 解马赛克和颜色校正
 */
data class RawMetadata(
    val width: Int,
    val height: Int,

    /**
     * CFA（彩色滤波阵列）排列模式
     * 0 = RGGB, 1 = GRBG, 2 = GBRG, 3 = BGGR
     */
    val cfaPattern: Int,

    /**
     * 每个 RGGB 通道的黑电平值（原始量化值，非归一化）
     * 顺序: [R, Gr, Gb, B]
     */
    val blackLevel: FloatArray,

    /**
     * 白电平（传感器饱和值），通常是 1023 (10-bit) 或 4095 (12-bit) 或 65535 (16-bit)
     */
    val whiteLevel: Float,

    /**
     * 白平衡增益（RGGB 4 通道）
     * 顺序: [R, Gr, Gb, B]
     */
    val whiteBalanceGains: FloatArray,

    /**
     * 色彩校正矩阵（CCM）
     * 3x3 矩阵，行优先存储（9 个元素）
     * 用于将相机原始色彩空间转换到 sRGB
     */
    val colorCorrectionMatrix: FloatArray,

    /**
     * 镜头阴影校正图（Gain Map）
     * 这是一个 4xNxM 的数组，N 和 M 是网格尺寸
     */
    val lensShadingMap: FloatArray? = null,
    val lensShadingMapWidth: Int = 0,
    val lensShadingMapHeight: Int = 0,

    /**
     * 数字增益 (Post RAW Boost)
     */
    val postRawSensitivityBoost: Float = 1.0f,
    val baselineExposure: Float = 0.0f
) {
    companion object {
        private const val TAG = "RawMetadata"

        // CFA 模式常量
        const val CFA_RGGB = 0
        const val CFA_GRBG = 1
        const val CFA_GBRG = 2
        const val CFA_BGGR = 3

        /**
         * 从 CameraCharacteristics 和 CaptureResult 创建 RawMetadata
         */
        fun create(
            width: Int,
            height: Int,
            characteristics: CameraCharacteristics,
            captureResult: CaptureResult
        ): RawMetadata {
            // 1. 获取 CFA 排列模式
            val cfaId = characteristics.get(CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT)
                ?: CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB

            // 获取 Active Array 裁切区
            val activeArray = characteristics.get(CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE)

            // 计算起始偏移量
            val xOffset = activeArray?.left ?: 0
            val yOffset = activeArray?.top ?: 0

            // 根据偏移量重新计算 CFA
            // 如果 x 偏移了奇数位，模式会左右翻转 (RGGB -> GRBG)
            // 如果 y 偏移了奇数位，模式会上下翻转 (RGGB -> GBRG)
            var correctedCfa = cfaId

            if (xOffset % 2 == 1) {
                correctedCfa = when (correctedCfa) {
                    CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB -> CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG
                    CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG -> CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB
                    CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG -> CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR
                    CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR -> CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG
                    else -> correctedCfa
                }
            }

            if (yOffset % 2 == 1) {
                correctedCfa = when (correctedCfa) {
                    CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB -> CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG
                    CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG -> CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR
                    CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG -> CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB
                    CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR -> CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG
                    else -> correctedCfa
                }
            }

            val cfaPattern = when (correctedCfa) {
                CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB -> CFA_RGGB
                CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GRBG -> CFA_GRBG
                CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_GBRG -> CFA_GBRG
                CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_BGGR -> CFA_BGGR
                else -> CFA_RGGB // 默认 RGGB
            }

            // 2. 获取白电平
            val whiteLevel = characteristics.get(CameraCharacteristics.SENSOR_INFO_WHITE_LEVEL)?.toFloat()
                ?: 1023f // 默认 10-bit

            // 3. 获取黑电平（优先使用动态黑电平）
            // 注意：动态黑电平和静态黑电平模式都是按 2x2 Bayer 位置存储的
            // 需要根据 CFA 模式重新排列为 [R, Gr, Gb, B] 通道顺序
            val dynamicBlackLevel = captureResult.get(CaptureResult.SENSOR_DYNAMIC_BLACK_LEVEL)
            val staticBlackLevelPattern = characteristics.get(CameraCharacteristics.SENSOR_BLACK_LEVEL_PATTERN)

            // 先获取按 Bayer 位置 (0,0), (1,0), (0,1), (1,1) 顺序的黑电平
            val positionBlackLevel = if (dynamicBlackLevel != null) {
                floatArrayOf(
                    dynamicBlackLevel[0],  // position (0,0)
                    dynamicBlackLevel[1],  // position (1,0)
                    dynamicBlackLevel[2],  // position (0,1)
                    dynamicBlackLevel[3]   // position (1,1)
                )
            } else if (staticBlackLevelPattern != null) {
                floatArrayOf(
                    staticBlackLevelPattern.getOffsetForIndex(0, 0).toFloat(),  // (0,0)
                    staticBlackLevelPattern.getOffsetForIndex(1, 0).toFloat(),  // (1,0)
                    staticBlackLevelPattern.getOffsetForIndex(0, 1).toFloat(),  // (0,1)
                    staticBlackLevelPattern.getOffsetForIndex(1, 1).toFloat()   // (1,1)
                )
            } else {
                // 默认黑电平
                floatArrayOf(64f, 64f, 64f, 64f)
            }

            // 根据 CFA 模式重新排列为 [R, Gr, Gb, B] 通道顺序
            // CFA 模式定义了每个 2x2 位置对应的颜色：
            // RGGB: (0,0)=R,  (1,0)=Gr, (0,1)=Gb, (1,1)=B
            // GRBG: (0,0)=Gr, (1,0)=R,  (0,1)=B,  (1,1)=Gb
            // GBRG: (0,0)=Gb, (1,0)=B,  (0,1)=R,  (1,1)=Gr
            // BGGR: (0,0)=B,  (1,0)=Gb, (0,1)=Gr, (1,1)=R
            val blackLevel = when (cfaPattern) {
                CFA_RGGB -> floatArrayOf(
                    positionBlackLevel[0],  // R at (0,0)
                    positionBlackLevel[1],  // Gr at (1,0)
                    positionBlackLevel[2],  // Gb at (0,1)
                    positionBlackLevel[3]   // B at (1,1)
                )

                CFA_GRBG -> floatArrayOf(
                    positionBlackLevel[1],  // R at (1,0)
                    positionBlackLevel[0],  // Gr at (0,0)
                    positionBlackLevel[3],  // Gb at (1,1)
                    positionBlackLevel[2]   // B at (0,1)
                )

                CFA_GBRG -> floatArrayOf(
                    positionBlackLevel[2],  // R at (0,1)
                    positionBlackLevel[3],  // Gr at (1,1)
                    positionBlackLevel[0],  // Gb at (0,0)
                    positionBlackLevel[1]   // B at (1,0)
                )

                CFA_BGGR -> floatArrayOf(
                    positionBlackLevel[3],  // R at (1,1)
                    positionBlackLevel[2],  // Gr at (0,1)
                    positionBlackLevel[1],  // Gb at (1,0)
                    positionBlackLevel[0]   // B at (0,0)
                )

                else -> positionBlackLevel
            }

            // 4. 获取白平衡增益
            val wbGains = captureResult.get(CaptureResult.COLOR_CORRECTION_GAINS)
            val whiteBalanceGains = if (wbGains != null) {
                // Android 顺序为 [R, G_even, G_odd, B]
                // 无论 CFA 模式如何，G_even 始终定义为与 R 同行的绿像素 (Gr)，G_odd 始终定义为与 B 同行的绿像素 (Gb)
                // 因此顺序始终对应 [R, Gr, Gb, B]
                floatArrayOf(
                    wbGains.red,
                    wbGains.greenEven, // Gr
                    wbGains.greenOdd,  // Gb
                    wbGains.blue
                )
            } else {
                // 默认：无增益调整
                floatArrayOf(1f, 1f, 1f, 1f)
            }

            // 5. 获取色彩校正矩阵
            // 优先使用 ForwardMatrix/ColorMatrix 计算 CCM
            val colorCorrectionMatrix = computeCCMFromCharacteristics(characteristics, captureResult)

            // 6. 获取镜头阴影校正
            val shadingMap = captureResult.get(CaptureResult.STATISTICS_LENS_SHADING_CORRECTION_MAP)
            var lensShadingMap: FloatArray? = null
            var shadingWidth = 0
            var shadingHeight = 0
            if (shadingMap != null) {
                shadingWidth = shadingMap.columnCount
                shadingHeight = shadingMap.rowCount
                lensShadingMap = FloatArray(shadingWidth * shadingHeight * 4)
                shadingMap.copyGainFactors(lensShadingMap, 0)
            }

            // 7. 获取数字增益
            val boost = captureResult.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST) ?: 100
            // Log.d(TAG, "create: boost=$boost")
            val postRawSensitivityBoost = boost / 100.0f

            return RawMetadata(
                width = width,
                height = height,
                cfaPattern = cfaPattern,
                blackLevel = blackLevel,
                whiteLevel = whiteLevel,
                whiteBalanceGains = whiteBalanceGains,
                colorCorrectionMatrix = colorCorrectionMatrix,
                lensShadingMap = lensShadingMap,
                lensShadingMapWidth = shadingWidth,
                lensShadingMapHeight = shadingHeight,
                postRawSensitivityBoost = postRawSensitivityBoost,
                baselineExposure = 0f
            )
        }

        /**
         * 使用 ForwardMatrix/ColorMatrix 计算色彩校正矩阵
         *
         * 此实现与 native-lib.cpp 中的 DNG 解析逻辑完全一致：
         * 1. 优先使用 ForwardMatrix，否则使用 ColorMatrix 的逆矩阵
         * 2. 支持双光源插值（Illuminant1/Illuminant2）
         * 3. 最终 CCM = XYZ_D50_TO_SRGB × interpolate(CamToXYZ1, CamToXYZ2, weight)
         */
        private fun computeCCMFromCharacteristics(
            characteristics: CameraCharacteristics,
            captureResult: CaptureResult
        ): FloatArray {
            // XYZ D50 到 Linear sRGB 的转换矩阵（与 native-lib.cpp 完全一致）
            val XYZ_D50_TO_SRGB = floatArrayOf(
                3.1338561f, -1.6168667f, -0.4906146f,
                -0.9787684f, 1.9161415f, 0.0334540f,
                0.0719453f, -0.2289914f, 1.4052427f
            )

            // 获取参考光源
            val illuminant1 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT1)?.toInt()
            val illuminant2 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT2)?.toInt()

            // 获取矩阵（两组）
            val colorMatrix1 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM1)
            val colorMatrix2 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM2)
            val forwardMatrix1 = characteristics.get(CameraCharacteristics.SENSOR_FORWARD_MATRIX1)
            val forwardMatrix2 = characteristics.get(CameraCharacteristics.SENSOR_FORWARD_MATRIX2)

            // 获取白平衡增益（用于计算插值权重）
            val wbGains = captureResult.get(CaptureResult.COLOR_CORRECTION_GAINS)

            // 1. 计算双光源插值权重
            val weight = calculateInterpolationWeight(illuminant1, illuminant2, wbGains)

            // 2. 获取两个光源下的 Camera -> XYZ(D50) 矩阵
            val m1: FloatArray? = if (forwardMatrix1 != null) {
                extractCCM(forwardMatrix1)
            } else if (colorMatrix1 != null) {
                // 如果没有 ForwardMatrix，使用 ColorMatrix 的逆矩阵
                invertMatrix3x3(extractCCM(colorMatrix1))
            } else {
                null
            }

            val m2: FloatArray? = if (forwardMatrix2 != null) {
                extractCCM(forwardMatrix2)
            } else if (colorMatrix2 != null) {
                invertMatrix3x3(extractCCM(colorMatrix2))
            } else {
                null
            }

            // 3. 插值得到最终的 Camera -> XYZ(D50) 矩阵
            val camToXYZ = when {
                m1 != null && m2 != null -> {
                    // 双矩阵插值
                    FloatArray(9) { i -> m1[i] * weight + m2[i] * (1.0f - weight) }
                }
                m1 != null -> m1
                m2 != null -> m2
                else -> {
                    // Fallback: 单位矩阵
                    Log.d(TAG, "No ForwardMatrix/ColorMatrix available, using identity matrix")
                    floatArrayOf(1f, 0f, 0f, 0f, 1f, 0f, 0f, 0f, 1f)
                }
            }

            // 4. 计算最终 CCM: XYZ_D50_TO_SRGB × CamToXYZ
            val finalCCM = multiplyMatrix3x3(XYZ_D50_TO_SRGB, camToXYZ)

            Log.d(TAG, "Computed CCM from ForwardMatrix/ColorMatrix (weight=$weight):")
            Log.d(TAG, "[${finalCCM[0]}, ${finalCCM[1]}, ${finalCCM[2]}]")
            Log.d(TAG, "[${finalCCM[3]}, ${finalCCM[4]}, ${finalCCM[5]}]")
            Log.d(TAG, "[${finalCCM[6]}, ${finalCCM[7]}, ${finalCCM[8]}]")

            return finalCCM
        }

        /**
         * 计算双光源插值权重（与 native-lib.cpp 逻辑一致）
         *
         * @param illuminant1 参考光源 1 ID
         * @param illuminant2 参考光源 2 ID
         * @param wbGains 白平衡增益
         * @return 插值权重 (0.0 = 完全使用 illuminant2, 1.0 = 完全使用 illuminant1)
         */
        private fun calculateInterpolationWeight(
            illuminant1: Int?,
            illuminant2: Int?,
            wbGains: RggbChannelVector?
        ): Float {
            // 默认使用 Illuminant2 (通常是 D65/Daylight)
            if (illuminant1 == null || illuminant2 == null || illuminant1 == 0 || illuminant2 == 0 || wbGains == null) {
                return 0.0f
            }

            val temp1 = illuminantToTemp(illuminant1)
            val temp2 = illuminantToTemp(illuminant2)

            // 从当前 WB Gains 计算 R/B 比例
            val rGain = wbGains.red
            val bGain = wbGains.blue

            if (bGain <= 0) return 0.0f

            val currentRatio = rGain / bGain

            // 根据色温范围判断插值策略
            // 典型情况: Illuminant1 = StdA (2856K), Illuminant2 = D65 (6504K)
            if (temp1 < 4000 && temp2 > 5000) {
                return when {
                    currentRatio < 0.5f -> 1.0f  // 低色温环境，完全使用 A 光源
                    currentRatio > 0.8f -> 0.0f  // 高色温环境，完全使用 D65
                    else -> (0.8f - currentRatio) / (0.8f - 0.5f)  // 线性插值
                }
            }

            return 0.0f
        }

        /**
         * 光源 ID 转色温（与 native-lib.cpp 的 illuminantToTemp 一致）
         */
        private fun illuminantToTemp(illuminant: Int): Float {
            return when (illuminant) {
                1 -> 2856f    // Daylight
                17 -> 2856f   // Standard Light A
                20 -> 5500f   // D55
                21 -> 5000f   // D50
                11, 22 -> 6504f  // D65
                23 -> 7500f   // D75
                else -> 5000f
            }
        }

        /**
         * 3x3 矩阵求逆
         */
        private fun invertMatrix3x3(m: FloatArray): FloatArray? {
            if (m.size != 9) return null

            // 计算行列式
            val det = m[0] * (m[4] * m[8] - m[5] * m[7]) -
                      m[1] * (m[3] * m[8] - m[5] * m[6]) +
                      m[2] * (m[3] * m[7] - m[4] * m[6])

            if (kotlin.math.abs(det) < 1e-12f) {
                Log.e(TAG, "Matrix is singular, cannot invert")
                return null
            }

            val invDet = 1.0f / det
            return floatArrayOf(
                // 第一行
                (m[4] * m[8] - m[5] * m[7]) * invDet,
                (m[2] * m[7] - m[1] * m[8]) * invDet,
                (m[1] * m[5] - m[2] * m[4]) * invDet,
                // 第二行
                (m[5] * m[6] - m[3] * m[8]) * invDet,
                (m[0] * m[8] - m[2] * m[6]) * invDet,
                (m[2] * m[3] - m[0] * m[5]) * invDet,
                // 第三行
                (m[3] * m[7] - m[4] * m[6]) * invDet,
                (m[1] * m[6] - m[0] * m[7]) * invDet,
                (m[0] * m[4] - m[1] * m[3]) * invDet
            )
        }

        /**
         * 从 ColorSpaceTransform 提取 3x3 浮点矩阵
         */
        private fun extractCCM(transform: ColorSpaceTransform): FloatArray {
            val matrix = FloatArray(9)
            for (row in 0 until 3) {
                for (col in 0 until 3) {
                    val rational: Rational = transform.getElement(col, row)
                    matrix[row * 3 + col] = rational.toFloat()
                }
            }
            return matrix
        }

        /**
         * 3x3 矩阵乘法
         */
        private fun multiplyMatrix3x3(a: FloatArray, b: FloatArray): FloatArray {
            require(a.size == 9 && b.size == 9) { "Both matrices must be 3x3" }

            val result = FloatArray(9)
            for (i in 0 until 3) {
                for (j in 0 until 3) {
                    result[i * 3 + j] =
                        a[i * 3 + 0] * b[0 * 3 + j] +
                        a[i * 3 + 1] * b[1 * 3 + j] +
                        a[i * 3 + 2] * b[2 * 3 + j]
                }
            }
            return result
        }
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as RawMetadata

        if (width != other.width) return false
        if (height != other.height) return false
        if (cfaPattern != other.cfaPattern) return false
        if (!blackLevel.contentEquals(other.blackLevel)) return false
        if (whiteLevel != other.whiteLevel) return false
        if (!whiteBalanceGains.contentEquals(other.whiteBalanceGains)) return false
        if (!colorCorrectionMatrix.contentEquals(other.colorCorrectionMatrix)) return false
        if (baselineExposure != other.baselineExposure) return false

        return true
    }

    override fun hashCode(): Int {
        var result = width
        result = 31 * result + height
        result = 31 * result + cfaPattern
        result = 31 * result + blackLevel.contentHashCode()
        result = 31 * result + whiteLevel.hashCode()
        result = 31 * result + whiteBalanceGains.contentHashCode()
        result = 31 * result + colorCorrectionMatrix.contentHashCode()
        result = 31 * result + (lensShadingMap?.contentHashCode() ?: 0)
        result = 31 * result + lensShadingMapWidth
        result = 31 * result + lensShadingMapHeight
        result = 31 * result + postRawSensitivityBoost.hashCode()
        result = 31 * result + baselineExposure.hashCode()
        return result
    }
}
