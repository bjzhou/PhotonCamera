package com.hinnka.mycamera.lut

import java.io.InputStream
import java.io.OutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.max
import kotlin.math.min
import android.graphics.BitmapFactory
import android.graphics.Color
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.utils.PLog
import kotlin.math.roundToInt

/**
 * LUT 转换器
 *
 * 将 .cube 文件转换为专用的 .plut 格式
 * 参考: scripts/convert_luts.py
 */
object LutConverter {

    private const val MAGIC_PLUT = "PLUT"
    private const val VERSION = 3
    private const val DATA_TYPE_UINT16 = 1

    /**
     * 将 .cube 文件转换为 .plut 格式
     *
     * PLUT 格式:
     * - Magic: 'PLUT' (4 bytes)
     * - Version: 1 (uint32)
     * - Size: Dimension of the 3D LUT, e.g., 32 (uint32)
     * - Data Type: 0 for UINT8 RGB, 1 for FLOAT32 RGB (uint32)
     * - Payload: Raw RGB data
     *
     * @param cubeInputStream .cube 文件输入流
     * @param plutOutputStream .plut 文件输出流
     * @param curve 输入曲线类型，如果不为 SRGB 则进行重采样
     * @return true if conversion succeeded
     */
    fun convertCubeToplut(
        cubeInputStream: InputStream,
        plutOutputStream: OutputStream,
        colorSpace: ColorSpace = ColorSpace.SRGB,
        curve: LutCurve = LutCurve.SRGB
    ): Boolean {
        return try {
            // 解析 .cube 文件
            var cubeData = parseCubeFile(cubeInputStream)

            if (cubeData.size > 65) {
                cubeData = resampleSize(cubeData, 33)
            }

            // 不再进行重采样，而是直接写入原始数据并记录曲线类型
            // 写入 .plut 格式
            writePLutFile(cubeData, plutOutputStream, colorSpace, curve)

            true
        } catch (e: Exception) {
            e.printStackTrace()
            false
        }
    }

    /**
     * 将 .png 文件（HALD 或 Unwrapped Cube 格式）转换为 .plut 格式
     *
     * @param pngInputStream .png 文件输入流
     * @param plutOutputStream .plut 文件输出流
     * @param curve 输入曲线类型
     * @return true if conversion succeeded
     */
    fun convertPngToplut(
        pngInputStream: InputStream,
        plutOutputStream: OutputStream,
        colorSpace: ColorSpace = ColorSpace.SRGB,
        curve: LutCurve = LutCurve.SRGB
    ): Boolean {
        return try {
            val options = BitmapFactory.Options()
            options.inScaled = false
            options.inPremultiplied = false
            options.inPreferredColorSpace = android.graphics.ColorSpace.get(android.graphics.ColorSpace.Named.SRGB)

            val bitmap = BitmapFactory.decodeStream(pngInputStream, null, options) ?: return false
            val width = bitmap.width
            val height = bitmap.height

            val isHaldStr = isHald(width, height)
            val isUnwrappedCubeStr = isUnwrappedCube(width, height)

            val lutSize: Int
            val values: ShortArray

            val pixels = IntArray(width * height)
            bitmap.getPixels(pixels, 0, width, 0, 0, width, height)

            if (isHaldStr) {
                val haldLevel = determineHaldLevel(width) ?: return false
                lutSize = haldLevel * haldLevel
                values = ShortArray(lutSize * lutSize * lutSize * 3)
                
                var dataIndex = 0
                for (bIdx in 0 until lutSize) {
                    for (gIdx in 0 until lutSize) {
                        for (rIdx in 0 until lutSize) {
                            val squareX = bIdx % haldLevel
                            val squareY = bIdx / haldLevel
                            val x = squareX * lutSize + rIdx
                            val y = squareY * lutSize + gIdx
                            
                            val pixel = pixels[y * width + x]
                            val r = Color.red(pixel)
                            val g = Color.green(pixel)
                            val b = Color.blue(pixel)
                            
                            val rNorm = (r / 255f).coerceIn(0f, 1f)
                            val gNorm = (g / 255f).coerceIn(0f, 1f)
                            val bNorm = (b / 255f).coerceIn(0f, 1f)
                            
                            values[dataIndex++] = (rNorm * 65535f + 0.5f).toInt().toShort()
                            values[dataIndex++] = (gNorm * 65535f + 0.5f).toInt().toShort()
                            values[dataIndex++] = (bNorm * 65535f + 0.5f).toInt().toShort()
                        }
                    }
                }
            } else if (isUnwrappedCubeStr) {
                lutSize = determineUnwrappedCubeRoot(width, height) ?: return false
                values = ShortArray(lutSize * lutSize * lutSize * 3)
                
                var dataIndex = 0
                for (bIdx in 0 until lutSize) {
                    for (gIdx in 0 until lutSize) {
                        for (rIdx in 0 until lutSize) {
                            val x = bIdx * lutSize + rIdx
                            val y = gIdx
                            
                            val pixel = pixels[y * width + x]
                            val r = Color.red(pixel)
                            val g = Color.green(pixel)
                            val b = Color.blue(pixel)
                            
                            val rNorm = (r / 255f).coerceIn(0f, 1f)
                            val gNorm = (g / 255f).coerceIn(0f, 1f)
                            val bNorm = (b / 255f).coerceIn(0f, 1f)
                            
                            values[dataIndex++] = (rNorm * 65535f + 0.5f).toInt().toShort()
                            values[dataIndex++] = (gNorm * 65535f + 0.5f).toInt().toShort()
                            values[dataIndex++] = (bNorm * 65535f + 0.5f).toInt().toShort()
                        }
                    }
                }
            } else {
                bitmap.recycle()
                return false
            }

            bitmap.recycle()

            var cubeData = CubeData(lutSize, values)
            if (cubeData.size > 65) {
                cubeData = resampleSize(cubeData, 33)
            }
            writePLutFile(cubeData, plutOutputStream, colorSpace, curve)
            true
        } catch (e: Exception) {
            e.printStackTrace()
            false
        }
    }

    private fun isHald(width: Int, height: Int): Boolean {
        if (width != height || width < 1) return false
        val levelFloat = Math.cbrt(width.toDouble())
        val levelRound = levelFloat.roundToInt()
        return levelRound * levelRound * levelRound == width && levelRound >= 1
    }

    private fun determineHaldLevel(width: Int): Int? {
        if (width < 1) return null
        val levelFloat = Math.cbrt(width.toDouble())
        val levelRound = levelFloat.roundToInt()
        return if (levelRound * levelRound * levelRound == width && levelRound >= 1) {
            levelRound
        } else {
            null
        }
    }

    private fun isUnwrappedCube(width: Int, height: Int): Boolean {
        if (width <= height || height < 1) return false
        val size = width.toDouble() * height
        val root = Math.cbrt(size).roundToInt()
        return width % root == 0 && height == root && root * root * root == width * height
    }

    private fun determineUnwrappedCubeRoot(width: Int, height: Int): Int? {
        if (width <= height || height < 1) return null
        val size = width.toDouble() * height
        val root = Math.cbrt(size).roundToInt()
        return if (width % root == 0 && height == root && root * root * root == width * height) {
            root
        } else {
            null
        }
    }

    private fun resampleLut(cubeData: CubeData, curve: LutCurve): CubeData {
        val size = cubeData.size
        // 尝试使用 Native 优化
        val nativeData = try {
            LutProcessor.resampleLutNative(cubeData.data, size, curve.ordinal)
        } catch (e: Throwable) {
            null
        }

        if (nativeData != null) {
            return CubeData(size, nativeData)
        }

        val newData = ShortArray(size * size * size * 3)
        val step = 1.0f / (size - 1)

        for (bIdx in 0 until size) {
            for (gIdx in 0 until size) {
                for (rIdx in 0 until size) {
                    val r = rIdx * step
                    val g = gIdx * step
                    val b = bIdx * step

                    // 1. 将 sRGB 输入转换为线性空间 (因为相机预览是 sRGB 的，但 LUT 可能期望 Log)
                    val rLin = LutCurve.SRGB.toLinear(r)
                    val gLin = LutCurve.SRGB.toLinear(g)
                    val bLin = LutCurve.SRGB.toLinear(b)

                    // 2. 将线性空间转换为目标 Log 曲线空间
                    val rLog = curve.fromLinear(rLin)
                    val gLog = curve.fromLinear(gLin)
                    val bLog = curve.fromLinear(bLin)

                    // 3. 在原始 LUT 中进行三线性插值采样
                    val interpolated = trilinearSample(cubeData, rLog, gLog, bLog)

                    val index = ((bIdx * size + gIdx) * size + rIdx) * 3
                    newData[index] = interpolated[0]
                    newData[index + 1] = interpolated[1]
                    newData[index + 2] = interpolated[2]
                }
            }
        }
        return CubeData(size, newData)
    }

    private fun trilinearSample(cubeData: CubeData, r: Float, g: Float, b: Float): ShortArray {
        val size = cubeData.size
        val data = cubeData.data

        // 映射到索引空间
        val x = (r * (size - 1)).coerceIn(0f, size - 1.0001f)
        val y = (g * (size - 1)).coerceIn(0f, size - 1.0001f)
        val z = (b * (size - 1)).coerceIn(0f, size - 1.0001f)

        val x0 = x.toInt()
        val x1 = x0 + 1
        val y0 = y.toInt()
        val y1 = y0 + 1
        val z0 = z.toInt()
        val z1 = z0 + 1

        val dx = x - x0
        val dy = y - y0
        val dz = z - z0

        val result = ShortArray(3)
        for (c in 0..2) {
            val v000 = data[((z0 * size + y0) * size + x0) * 3 + c].toInt() and 0xFFFF
            val v100 = data[((z0 * size + y0) * size + x1) * 3 + c].toInt() and 0xFFFF
            val v010 = data[((z0 * size + y1) * size + x0) * 3 + c].toInt() and 0xFFFF
            val v110 = data[((z0 * size + y1) * size + x1) * 3 + c].toInt() and 0xFFFF
            val v001 = data[((z1 * size + y0) * size + x0) * 3 + c].toInt() and 0xFFFF
            val v101 = data[((z1 * size + y0) * size + x1) * 3 + c].toInt() and 0xFFFF
            val v011 = data[((z1 * size + y1) * size + x0) * 3 + c].toInt() and 0xFFFF
            val v111 = data[((z1 * size + y1) * size + x1) * 3 + c].toInt() and 0xFFFF

            val v00 = v000 * (1 - dx) + v100 * dx
            val v10 = v010 * (1 - dx) + v110 * dx
            val v01 = v001 * (1 - dx) + v101 * dx
            val v11 = v011 * (1 - dx) + v111 * dx

            val v0 = v00 * (1 - dy) + v10 * dy
            val v1 = v01 * (1 - dy) + v11 * dy

            val v = v0 * (1 - dz) + v1 * dz
            result[c] = (v + 0.5f).toInt().toShort()
        }
        return result
    }

    private fun resampleSize(cubeData: CubeData, targetSize: Int): CubeData {
        PLog.d("resampleSize", "${cubeData.size} $targetSize")
        val nativeData = try {
            LutProcessor.resampleSizeNative(cubeData.data, cubeData.size, targetSize)
        } catch (e: Throwable) {
            PLog.e("resampleSize", "error", e)
            null
        }

        if (nativeData != null) {
            PLog.d("resampleSize", "complete")
            return CubeData(targetSize, nativeData)
        }

        val newData = ShortArray(targetSize * targetSize * targetSize * 3)
        val step = 1.0f / (targetSize - 1)

        for (bIdx in 0 until targetSize) {
            for (gIdx in 0 until targetSize) {
                for (rIdx in 0 until targetSize) {
                    val r = rIdx * step
                    val g = gIdx * step
                    val b = bIdx * step

                    val interpolated = trilinearSample(cubeData, r, g, b)

                    val index = ((bIdx * targetSize + gIdx) * targetSize + rIdx) * 3
                    newData[index] = interpolated[0]
                    newData[index + 1] = interpolated[1]
                    newData[index + 2] = interpolated[2]
                }
            }
        }
        return CubeData(targetSize, newData)
    }

    /**
     * 解析 .cube 文件
     * 优化版本：单遍流式处理避免内存溢出
     */
    private fun parseCubeFile(inputStream: InputStream): CubeData {
        var size = 0
        var domainMin = floatArrayOf(0f, 0f, 0f)
        var domainMax = floatArrayOf(1f, 1f, 1f)
        var data: ShortArray? = null
        var dataIndex = 0

        // 临时存储 RGB 数据（只在找到 size 之前使用）
        val tempDataList = mutableListOf<FloatArray>()
        
        // 预分配数组以备解析单行数字使用
        val floatValues = FloatArray(3)

        fun parseFloats(line: String, startIndex: Int = 0): Boolean {
            var count = 0
            var i = startIndex
            val len = line.length
            while (i < len && count < 3) {
                while (i < len && line[i].isWhitespace()) {
                    i++
                }
                if (i >= len) break
                val start = i
                while (i < len && !line[i].isWhitespace()) {
                    i++
                }
                try {
                    floatValues[count++] = line.substring(start, i).toFloat()
                } catch (e: NumberFormatException) {
                    return false
                }
            }
            return count == 3
        }

        inputStream.bufferedReader(Charsets.UTF_8).use { reader ->
            reader.forEachLine { line ->
                val trimmed = line.trim()

                // 跳过空行和注释
                if (trimmed.isEmpty() || trimmed.startsWith('#')) {
                    return@forEachLine
                }

                when {
                    trimmed.startsWith("LUT_3D_SIZE") -> {
                        val spaceIdx = trimmed.indexOfFirst { it.isWhitespace() }
                        if (spaceIdx != -1) {
                            try {
                                size = trimmed.substring(spaceIdx).trim().toInt()
                                // 找到 size 后，立即分配数组并写入已缓存的数据
                                data = ShortArray(size * size * size * 3)

                                // 将临时数据写入数组
                                for (rgb in tempDataList) {
                                    for (i in 0..2) {
                                        var value = (rgb[i] - domainMin[i]) / (domainMax[i] - domainMin[i])
                                        value = max(0f, min(1f, value))
                                        data[dataIndex++] = (value * 65535f + 0.5f).toInt().toShort()
                                    }
                                }
                                tempDataList.clear()  // 释放临时列表内存
                            } catch (e: NumberFormatException) {
                                // ignore
                            }
                        }
                    }

                    trimmed.startsWith("DOMAIN_MIN") -> {
                        val spaceIdx = trimmed.indexOfFirst { it.isWhitespace() }
                        if (spaceIdx != -1 && parseFloats(trimmed, spaceIdx)) {
                            domainMin = floatArrayOf(floatValues[0], floatValues[1], floatValues[2])
                        }
                    }

                    trimmed.startsWith("DOMAIN_MAX") -> {
                        val spaceIdx = trimmed.indexOfFirst { it.isWhitespace() }
                        if (spaceIdx != -1 && parseFloats(trimmed, spaceIdx)) {
                            domainMax = floatArrayOf(floatValues[0], floatValues[1], floatValues[2])
                        }
                    }

                    !trimmed.startsWith("TITLE") && !trimmed.startsWith("LUT_1D_SIZE") -> {
                        // 尝试解析 RGB 数据
                        if (parseFloats(trimmed)) {
                            if (data != null && dataIndex < data!!.size) {
                                // 已经分配了数组，直接写入
                                for (i in 0..2) {
                                    var value = (floatValues[i] - domainMin[i]) / (domainMax[i] - domainMin[i])
                                    value = max(0f, min(1f, value))
                                    data!![dataIndex++] = (value * 65535f + 0.5f).toInt().toShort()
                                }
                            } else {
                                // 还未分配数组，暂存数据
                                tempDataList.add(floatArrayOf(floatValues[0], floatValues[1], floatValues[2]))
                            }
                        }
                    }
                }
            }
        }

        if (size == 0) {
            throw IllegalArgumentException("Could not find LUT_3D_SIZE in .cube file")
        }

        return CubeData(size, data!!)
    }

    /**
     * 写入 .plut 文件
     */
    private fun writePLutFile(cubeData: CubeData, outputStream: OutputStream, colorSpace: ColorSpace, curve: LutCurve) {
        val buffer = ByteBuffer.allocate(24 + cubeData.data.size * 2)
            .order(ByteOrder.LITTLE_ENDIAN)

        // Magic
        buffer.put(MAGIC_PLUT.toByteArray(Charsets.US_ASCII))

        // Version
        buffer.putInt(VERSION)

        // Size
        buffer.putInt(cubeData.size)

        // Data Type (1 = UINT16)
        buffer.putInt(DATA_TYPE_UINT16)

        // Curve Type
        buffer.putInt(curve.ordinal)
        
        // Color Space
        buffer.putInt(colorSpace.ordinal)

        // Data
        val shortBuffer = buffer.asShortBuffer()
        shortBuffer.put(cubeData.data)

        outputStream.write(buffer.array())
        outputStream.flush()
    }

    /**
     * .cube 数据
     */
    private data class CubeData(
        val size: Int,
        val data: ShortArray
    ) {
        override fun equals(other: Any?): Boolean {
            if (this === other) return true
            if (javaClass != other?.javaClass) return false

            other as CubeData

            if (size != other.size) return false
            if (!data.contentEquals(other.data)) return false

            return true
        }

        override fun hashCode(): Int {
            var result = size
            result = 31 * result + data.contentHashCode()
            return result
        }
    }
}
