package com.hinnka.mycamera.lut

import java.io.InputStream
import java.io.OutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.max
import kotlin.math.min

/**
 * LUT 转换器
 *
 * 将 .cube 文件转换为专用的 .plut 格式
 * 参考: scripts/convert_luts.py
 */
object LutConverter {

    private const val MAGIC_PLUT = "PLUT"
    private const val VERSION = 1
    private const val DATA_TYPE_UINT8 = 0

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
     * @return true if conversion succeeded
     */
    fun convertCubeToplut(
        cubeInputStream: InputStream,
        plutOutputStream: OutputStream
    ): Boolean {
        return try {
            // 解析 .cube 文件
            val cubeData = parseCubeFile(cubeInputStream)

            // 写入 .plut 格式
            writePLutFile(cubeData, plutOutputStream)

            true
        } catch (e: Exception) {
            e.printStackTrace()
            false
        }
    }

    /**
     * 解析 .cube 文件
     */
    private fun parseCubeFile(inputStream: InputStream): CubeData {
        val lines = try {
            inputStream.bufferedReader(Charsets.UTF_8).readLines()
        } catch (e: Exception) {
            // 尝试 latin-1 编码
            inputStream.bufferedReader(Charsets.ISO_8859_1).readLines()
        }

        var size = 0
        var domainMin = floatArrayOf(0f, 0f, 0f)
        var domainMax = floatArrayOf(1f, 1f, 1f)
        val data = mutableListOf<Byte>()

        for (line in lines) {
            val trimmed = line.trim()

            // 跳过空行和注释
            if (trimmed.isEmpty() || trimmed.startsWith('#')) {
                continue
            }

            when {
                trimmed.startsWith("LUT_3D_SIZE") -> {
                    size = trimmed.split("\\s+".toRegex())[1].toInt()
                }
                trimmed.startsWith("DOMAIN_MIN") -> {
                    val values = trimmed.split("\\s+".toRegex()).drop(1)
                    domainMin = floatArrayOf(
                        values[0].toFloat(),
                        values[1].toFloat(),
                        values[2].toFloat()
                    )
                }
                trimmed.startsWith("DOMAIN_MAX") -> {
                    val values = trimmed.split("\\s+".toRegex()).drop(1)
                    domainMax = floatArrayOf(
                        values[0].toFloat(),
                        values[1].toFloat(),
                        values[2].toFloat()
                    )
                }
                else -> {
                    // 尝试解析 RGB 数据
                    val parts = trimmed.split("\\s+".toRegex())
                    if (parts.size == 3) {
                        try {
                            val rgb = floatArrayOf(
                                parts[0].toFloat(),
                                parts[1].toFloat(),
                                parts[2].toFloat()
                            )

                            // 归一化到 [0, 1] 并转换为 uint8
                            for (i in 0..2) {
                                var value = (rgb[i] - domainMin[i]) / (domainMax[i] - domainMin[i])
                                value = max(0f, min(1f, value))
                                // 转换为 0-255
                                data.add((value * 255f + 0.5f).toInt().toByte())
                            }
                        } catch (e: NumberFormatException) {
                            // 忽略无法解析的行
                        }
                    }
                }
            }
        }

        if (size == 0) {
            throw IllegalArgumentException("Could not find LUT_3D_SIZE in .cube file")
        }

        val expectedCount = size * size * size * 3
        if (data.size != expectedCount) {
            // 补齐或截断数据
            if (data.size < expectedCount) {
                repeat(expectedCount - data.size) {
                    data.add(0)
                }
            } else {
                while (data.size > expectedCount) {
                    data.removeAt(data.lastIndex)
                }
            }
        }

        return CubeData(size, data.toByteArray())
    }

    /**
     * 写入 .plut 文件
     */
    private fun writePLutFile(cubeData: CubeData, outputStream: OutputStream) {
        val buffer = ByteBuffer.allocate(16 + cubeData.data.size)
            .order(ByteOrder.LITTLE_ENDIAN)

        // Magic
        buffer.put(MAGIC_PLUT.toByteArray(Charsets.US_ASCII))

        // Version
        buffer.putInt(VERSION)

        // Size
        buffer.putInt(cubeData.size)

        // Data Type (0 = UINT8)
        buffer.putInt(DATA_TYPE_UINT8)

        // Data
        buffer.put(cubeData.data)

        outputStream.write(buffer.array())
        outputStream.flush()
    }

    /**
     * .cube 数据
     */
    private data class CubeData(
        val size: Int,
        val data: ByteArray
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
