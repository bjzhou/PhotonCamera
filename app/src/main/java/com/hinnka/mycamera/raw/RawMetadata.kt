package com.hinnka.mycamera.raw

import android.R
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.params.ColorSpaceTransform
import android.hardware.camera2.params.MeteringRectangle
import android.hardware.camera2.params.RggbChannelVector
import android.util.Log
import android.util.Rational
import com.hinnka.mycamera.utils.PLog
import kotlin.collections.contentToString

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
    val baselineExposure: Float = 0.0f,
    val noiseProfile: FloatArray = floatArrayOf(0f, 0f),
    val afRegions: Array<MeteringRectangle>? = null,
    val activeArray: android.graphics.Rect? = null,
    val aeMode: Int = CaptureResult.CONTROL_AE_MODE_ON,
    val exposureCompensation: Float = 0f,
    val exposureBias: Float = 0f,
    val iso: Int = 100,
    val shutterSpeed: Long = 0L,
    val aperture: Float = 0f,
    val droMode: MeteringSystem.DROMode = MeteringSystem.DROMode.OFF
) {
    companion object {
        private const val TAG = "RawMetadata"

        // CFA 模式常量
        const val CFA_RGGB = 0
        const val CFA_GRBG = 1
        const val CFA_GBRG = 2
        const val CFA_BGGR = 3
        const val CFA_LINEAR_RGB = -1

        /**
         * 从 CameraCharacteristics 和 CaptureResult 创建 RawMetadata
         */
        fun create(
            width: Int,
            height: Int,
            characteristics: CameraCharacteristics,
            captureResult: CaptureResult,
            userExposureCompensation: Float? = null,
            droMode: MeteringSystem.DROMode = MeteringSystem.DROMode.OFF,
            colorSpace: ColorSpace = ColorSpace.BT2020
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
            val colorCorrectionMatrix = computeCCMFromCharacteristics(characteristics, captureResult, colorSpace)

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

            // 8. 获取噪声模型
            val noiseProfile = extractNoiseProfile(captureResult)

            // 9. 获取 AE 模式和曝光补偿
            val aeMode = captureResult.get(CaptureResult.CONTROL_AE_MODE) ?: CaptureResult.CONTROL_AE_MODE_ON
            val evComp = captureResult.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION) ?: 0
            val evStep = characteristics.get(CameraCharacteristics.CONTROL_AE_COMPENSATION_STEP) ?: Rational(1, 3)
            val exposureCompensation = evComp * evStep.toFloat()

            // 10. 获取 ISO 和快门
            val iso = captureResult.get(CaptureResult.SENSOR_SENSITIVITY) ?: 100
            val shutterSpeed = captureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME) ?: 0L
            val aperture = captureResult.get(CaptureResult.LENS_APERTURE) ?: 0f

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
                baselineExposure = 0f,
                noiseProfile = noiseProfile,
                afRegions = captureResult.get(CaptureResult.CONTROL_AF_REGIONS),
                activeArray = activeArray,
                aeMode = aeMode,
                exposureCompensation = exposureCompensation,
                exposureBias = userExposureCompensation ?: exposureCompensation,
                iso = iso,
                shutterSpeed = shutterSpeed,
                aperture = aperture,
                droMode = droMode
            )
        }

        private fun extractNoiseProfile(captureResult: CaptureResult): FloatArray {
            val noiseProfile = captureResult.get(CaptureResult.SENSOR_NOISE_PROFILE)
            return if (noiseProfile != null && noiseProfile.isNotEmpty()) {
                // SENSOR_NOISE_PROFILE is an array of pairs (S, O) for each CFA channel
                // We will average them to get a single global model for the structure tensor / robustness
                var sumS = 0.0
                var sumO = 0.0
                for (pair in noiseProfile) {
                    sumS += pair.first
                    sumO += pair.second
                }
                val count = noiseProfile.size.toDouble()
                floatArrayOf((sumS / count).toFloat(), (sumO / count).toFloat())
            } else {
                // Default fallback
                floatArrayOf(0.0f, 0.0f)
            }
        }

        /**
         * 使用 ForwardMatrix/ColorMatrix 计算色彩校正矩阵
         *
         * 1. 优先使用 ForwardMatrix，否则使用 ColorMatrix 的逆矩阵
         * 2. 支持双光源插值（Illuminant1/Illuminant2）
         * 3. 最终 CCM = XYZ_D50_TO_SRGB × interpolate(CamToXYZ1, CamToXYZ2, weight)
         */
        private fun computeCCMFromCharacteristics(
            characteristics: CameraCharacteristics,
            captureResult: CaptureResult,
            colorSpace: ColorSpace = ColorSpace.BT2020
        ): FloatArray {
            // XYZ D50 到 Linear sRGB 的转换矩阵
            val XYZ_D50_TO_SRGB = floatArrayOf(
                3.1338561f, -1.6168667f, -0.4906146f,
                -0.9787684f, 1.9161415f, 0.0334540f,
                0.0719453f, -0.2289914f, 1.4052427f
            )

            // 动态计算目标色域矩阵
            val targetPrimaries = colorSpace.primaries
            val targetWhitePoint = colorSpace.whitePoint

            // 计算 XYZ(D50) -> Target Gamut 的转换矩阵
            val targetTransform = computeXYZD50ToGamut(targetPrimaries, targetWhitePoint)
                ?: XYZ_D50_TO_SRGB // 如果计算失败则回退到 sRGB

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
            val m1: FloatArray? = computeCamToXYZ(forwardMatrix1, colorMatrix1, illuminant1)
            val m2: FloatArray? = computeCamToXYZ(forwardMatrix2, colorMatrix2, illuminant2)

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

            // 4. 计算最终 CCM: targetTransform × CamToXYZ
            val finalCCM = multiplyMatrix3x3(targetTransform, camToXYZ)

            PLog.d(TAG, "targetTransform = ${targetTransform.contentToString()} finalCCM = ${finalCCM.contentToString()}")

            return finalCCM
        }

        /**
         * 计算双光源插值权重
         * 基于 WB Gains 的 R/B 比例在两个参考光源之间进行线性插值
         *
         * @return 插值权重 (1.0 = 完全使用 illuminant1, 0.0 = 完全使用 illuminant2)
         */
        private fun calculateInterpolationWeight(
            illuminant1: Int?,
            illuminant2: Int?,
            wbGains: RggbChannelVector?
        ): Float {
            if (illuminant1 == null || illuminant2 == null || illuminant1 == 0 || illuminant2 == 0 || wbGains == null) {
                return 0.0f // 默认使用第二个矩阵 (通常是 D65)
            }

            val t1 = illuminantToTemp(illuminant1)
            val t2 = illuminantToTemp(illuminant2)
            if (kotlin.math.abs(t1 - t2) < 100f) return 1.0f

            // 增益比率反映了环境色温：
            // A 光源 (2856K): 红色富余，故 R Gain 较小；蓝色匮乏，故 B Gain 较大。R/B 比例小 (约 0.4~0.6)。
            // D65 光源 (6504K): 蓝色富余，故 B Gain 较小；红色匮乏，故 R Gain 较大。R/B 比例大 (约 1.2~1.8)。
            val currentRatio = wbGains.red / wbGains.blue

            // 通用的 Gain Ratio 基准值 (对应标准光源下的典型 WB Gain 比例)
            val ratioWarm = 0.5f   // 对应 2856K (Standard A)
            val ratioCool = 1.6f   // 对应 6504K (D65)

            // 根据光源色温计算其在 R/B 比例轴上的预期位置
            fun getTargetRatio(temp: Float): Float {
                return when {
                    temp <= 2856f -> ratioWarm
                    temp >= 6504f -> ratioCool
                    else -> ratioWarm + (ratioCool - ratioWarm) * (temp - 2856f) / (6504f - 2856f)
                }
            }

            val r1 = getTargetRatio(t1)
            val r2 = getTargetRatio(t2)

            // 线性插值公式: weight * r1 + (1.0 - weight) * r2 = currentRatio
            val diff = r1 - r2
            if (kotlin.math.abs(diff) < 0.01f) return 0.5f

            val weight = (currentRatio - r2) / diff
            return weight.coerceIn(0.0f, 1.0f)
        }

        /**
         * 计算从相机空间到 XYZ(D50) 的转换矩阵
         */
        private fun computeCamToXYZ(
            forwardMatrix: ColorSpaceTransform?,
            colorMatrix: ColorSpaceTransform?,
            illuminant: Int?
        ): FloatArray? {
            if (forwardMatrix != null) {
                return extractCCM(forwardMatrix)
            }
            if (colorMatrix != null) {
                val xyzToCam = extractCCM(colorMatrix)

                // 1. 确定参考光源的 XYZ 白点
                val ill = illuminant ?: 21 // 默认 D65
                val (lx, ly, lz) = getIlluminantWhitePoint(ill)

                // 2. 计算相机对该光源的响应 (Camera Neutral)
                val cameraNeutral = FloatArray(3)
                for (i in 0 until 3) {
                    cameraNeutral[i] = xyzToCam[i * 3 + 0] * lx +
                                       xyzToCam[i * 3 + 1] * ly +
                                       xyzToCam[i * 3 + 2] * lz
                }

                // 3. 构造中间矩阵：为了让作用于已 WB 像素的矩阵生效，需在求逆前补偿白平衡
                val referenceMatrix = xyzToCam.copyOf()
                for (row in 0 until 3) {
                    val cn = if (kotlin.math.abs(cameraNeutral[row]) > 0.001f) cameraNeutral[row] else 1.0f
                    referenceMatrix[row * 3 + 0] /= cn
                    referenceMatrix[row * 3 + 1] /= cn
                    referenceMatrix[row * 3 + 2] /= cn
                }

                // 4. 求逆：从 Camera (White Balanced) -> XYZ (Illuminant Relative)
                val m = invertMatrix3x3(referenceMatrix) ?: return null

                // 5. 应用色度适应 (Chromatic Adaptation) 映射到 D50
                val adapt = getChromaticAdaptationMatrix(ill)
                return multiplyMatrix3x3(adapt, m)
            }
            return null
        }

        private fun getIlluminantWhitePoint(ill: Int): Triple<Float, Float, Float> {
            return if (ill == 17) { // Standard Light A
                Triple(1.0985f, 1.0000f, 0.3558f)
            } else { // Assume D65
                Triple(0.9504f, 1.0000f, 1.0888f)
            }
        }

        private fun getChromaticAdaptationMatrix(ill: Int): FloatArray {
            return if (ill == 17) { // A to D50 (Bradford Transform)
                floatArrayOf(
                    0.8924f, -0.0157f,  0.0529f,
                   -0.1111f,  1.0505f, -0.0151f,
                    0.0522f, -0.0077f,  2.2396f
                )
            } else { // D65 to D50 (Bradford Transform)
                floatArrayOf(
                    1.0478f,  0.0229f, -0.0501f,
                    0.0295f,  0.9905f, -0.0170f,
                   -0.0092f,  0.0150f,  0.7521f
                )
            }
        }

        /**
         * 光源 ID 转色温（遵循 DNG/Exif 标准 ID）
         */
        private fun illuminantToTemp(illuminant: Int): Float {
            return when (illuminant) {
                1 -> 5500f      // Daylight
                2 -> 4000f      // Fluorescent
                3 -> 3200f      // Tungsten (Incandescent)
                4 -> 3400f      // Flash
                9 -> 6500f      // Fine Weather
                10 -> 7500f     // Cloudy Weather
                11 -> 8000f     // Shade
                12 -> 6500f     // Daylight Fluorescent (D 5700 – 7100K)
                13 -> 5000f     // Day White Fluorescent (N 4600 – 5400K)
                14 -> 4200f     // Cool White Fluorescent (W 3900 – 4500K)
                15 -> 3500f     // White Fluorescent (WW 3200 – 3700K)
                17 -> 2856f     // Standard Light A
                18 -> 4874f     // Standard Light B
                19 -> 6774f     // Standard Light C
                20 -> 5500f     // D55
                21 -> 6504f     // D65
                22 -> 7505f     // D75
                23 -> 5000f     // D50
                24 -> 3200f     // ISO Studio Tungsten
                else -> 5000f
            }
        }

        /**
         * 根据三原色 xy 坐标和白点 xy 坐标，动态计算 XYZ(D50) 到该色域空间的转换矩阵
         */
        private fun computeXYZD50ToGamut(primaries: FloatArray, whitePoint: FloatArray): FloatArray? {
            if (primaries.size != 6 || whitePoint.size != 2) return null

            val xr = primaries[0]; val yr = primaries[1]
            val xg = primaries[2]; val yg = primaries[3]
            val xb = primaries[4]; val yb = primaries[5]
            val xw = whitePoint[0]; val yw = whitePoint[1]

            // 1. 实现 RGB -> XYZ (D65) 的推导过程
            // 构造系数矩阵 S
            val mS = floatArrayOf(
                xr / yr, xg / yg, xb / yb,
                1f, 1f, 1f,
                (1 - xr - yr) / yr, (1 - xg - yg) / yg, (1 - xb - yb) / yb
            )
            val invS = invertMatrix3x3(mS) ?: return null

            // 计算白点的 XYZ
            val Xw = xw / yw
            val Yw = 1f
            val Zw = (1 - xw - yw) / yw

            // 计算缩放分量 (sR, sG, sB)
            val sR = invS[0] * Xw + invS[1] * Yw + invS[2] * Zw
            val sG = invS[3] * Xw + invS[4] * Yw + invS[5] * Zw
            val sB = invS[6] * Xw + invS[7] * Yw + invS[8] * Zw

            // 得到 Gamut -> XYZ (D65) 矩阵
            val gamutToXYZD65 = floatArrayOf(
                mS[0] * sR, mS[1] * sG, mS[2] * sB,
                mS[3] * sR, mS[4] * sG, mS[5] * sB,
                mS[6] * sR, mS[7] * sG, mS[8] * sB
            )

            // 2. 色彩适应：从 XYZ(D65) 转换到 XYZ(D50) 基准
            // 使用标准 Bradford 矩阵
            val BRADFORD_D65_TO_D50 = floatArrayOf(
                1.0478112f, 0.0228866f, -0.0501270f,
                0.0295424f, 0.9904844f, -0.0170491f,
                -0.0092345f, 0.0150436f, 0.7521316f
            )

            val gamutToXYZD50 = multiplyMatrix3x3(BRADFORD_D65_TO_D50, gamutToXYZD65)

            // 3. 求逆：得到最终的 XYZ(D50) -> Gamut 转换矩阵
            return invertMatrix3x3(gamutToXYZD50)
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
        if (iso != other.iso) return false
        if (shutterSpeed != other.shutterSpeed) return false

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
        result = 31 * result + iso
        result = 31 * result + shutterSpeed.hashCode()
        return result
    }
}
