package com.hinnka.mycamera.raw

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.params.ColorSpaceTransform
import android.hardware.camera2.params.RggbChannelVector
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
    val colorCorrectionMatrix: FloatArray
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
            val cfaPatternRaw = characteristics.get(CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT)
                ?: CameraCharacteristics.SENSOR_INFO_COLOR_FILTER_ARRANGEMENT_RGGB
            val cfaPattern = when (cfaPatternRaw) {
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
                floatArrayOf(
                    wbGains.red,
                    wbGains.greenEven,
                    wbGains.greenOdd,
                    wbGains.blue
                )
            } else {
                // 默认：无增益调整
                floatArrayOf(1f, 1f, 1f, 1f)
            }
            
            // 5. 获取色彩校正矩阵
            val ccmTransform = captureResult.get(CaptureResult.COLOR_CORRECTION_TRANSFORM)
            val colorCorrectionMatrix = if (ccmTransform != null) {
                extractCCM(ccmTransform)
            } else {
                // 默认：单位矩阵
                floatArrayOf(
                    1f, 0f, 0f,
                    0f, 1f, 0f,
                    0f, 0f, 1f
                )
            }
            
            return RawMetadata(
                width = width,
                height = height,
                cfaPattern = cfaPattern,
                blackLevel = blackLevel,
                whiteLevel = whiteLevel,
                whiteBalanceGains = whiteBalanceGains,
                colorCorrectionMatrix = colorCorrectionMatrix
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
        return result
    }
}
