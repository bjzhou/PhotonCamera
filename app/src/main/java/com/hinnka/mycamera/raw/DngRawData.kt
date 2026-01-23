package com.hinnka.mycamera.raw

import java.nio.ByteBuffer

/**
 * DNG RAW 数据容器
 *
 * 从 JNI 层返回，包含解析后的 DNG 文件 RAW 数据和元数据
 *
 * @param rawData RAW 像素数据的 ByteBuffer（注意：使用 native 堆内存，需要手动释放）
 * @param width 图像宽度
 * @param height 图像高度
 * @param rowStride 行跨度（字节）
 * @param whiteLevel 白电平值
 * @param blackLevel 黑电平值数组 [R, Gr, Gb, B]
 * @param whiteBalance 白平衡增益 [R, Gr, Gb, B]
 * @param colorMatrix 色彩校正矩阵 (3x3 = 9个元素，行主序)
 * @param rotation 旋转角度 (0, 90, 180, 270)
 * @param lensShadingMap Lens Shading Map (LSC) 增益表，null表示无LSC数据
 * @param lensShadingMapWidth LSC 表宽度
 * @param lensShadingMapHeight LSC 表高度
 */
data class DngRawData(
    val rawData: ByteBuffer,
    val width: Int,
    val height: Int,
    val rowStride: Int,
    val whiteLevel: Float,
    val blackLevel: FloatArray,
    val whiteBalance: FloatArray,
    val colorMatrix: FloatArray,
    val cfaPattern: Int, // 0=RGGB, 1=GRBG, 2=GBRG, 3=BGGR
    val rotation: Int,
    val baselineExposure: Float,
    val lensShadingMap: FloatArray?,
    val lensShadingMapWidth: Int,
    val lensShadingMapHeight: Int
) : AutoCloseable {

    @Volatile
    private var isClosed = false

    /**
     * 释放 native 堆内存
     *
     * 注意：DNG RAW 数据使用 native malloc 分配内存（约 25MB），
     * 处理完成后必须调用 close() 释放，否则会内存泄漏
     */
    override fun close() {
        if (!isClosed) {
            synchronized(this) {
                if (!isClosed) {
                    freeNativeBuffer(rawData)
                    isClosed = true
                }
            }
        }
    }

    /**
     * Native 方法：释放 ByteBuffer 的 native 内存
     */
    private external fun freeNativeBuffer(buffer: ByteBuffer)

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as DngRawData

        if (rawData != other.rawData) return false
        if (width != other.width) return false
        if (height != other.height) return false
        if (rowStride != other.rowStride) return false
        if (whiteLevel != other.whiteLevel) return false
        if (!blackLevel.contentEquals(other.blackLevel)) return false
        if (!whiteBalance.contentEquals(other.whiteBalance)) return false
        if (!colorMatrix.contentEquals(other.colorMatrix)) return false
        if (cfaPattern != other.cfaPattern) return false
        if (rotation != other.rotation) return false
        if (baselineExposure != other.baselineExposure) return false
        if (lensShadingMap != null) {
            if (other.lensShadingMap == null) return false
            if (!lensShadingMap.contentEquals(other.lensShadingMap)) return false
        } else if (other.lensShadingMap != null) return false
        if (lensShadingMapWidth != other.lensShadingMapWidth) return false
        if (lensShadingMapHeight != other.lensShadingMapHeight) return false

        return true
    }

    override fun hashCode(): Int {
        var result = rawData.hashCode()
        result = 31 * result + width
        result = 31 * result + height
        result = 31 * result + rowStride
        result = 31 * result + whiteLevel.hashCode()
        result = 31 * result + blackLevel.contentHashCode()
        result = 31 * result + whiteBalance.contentHashCode()
        result = 31 * result + colorMatrix.contentHashCode()
        result = 31 * result + cfaPattern
        result = 31 * result + rotation
        result = 31 * result + baselineExposure.hashCode()
        result = 31 * result + (lensShadingMap?.contentHashCode() ?: 0)
        result = 31 * result + lensShadingMapWidth
        result = 31 * result + lensShadingMapHeight
        return result
    }

    protected fun finalize() {
        // 作为保险措施，如果忘记调用 close() 也能清理
        // 但不应该依赖 finalize，应该显式调用 close()
        if (!isClosed) {
            close()
        }
    }
}
