package com.hinnka.mycamera.lut

import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.utils.PLog
import java.io.ByteArrayOutputStream
import java.io.InputStream
import java.io.OutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.zip.Inflater
import javax.xml.parsers.DocumentBuilderFactory

object XmpLutParser {

    private const val BTT_RGB_TABLE = 1
    private const val RGB_TABLE_VERSION = 1
    private const val MAGIC_PLUT = 0x54554C50 // 'PLUT' in Little Endian

    private val DECODE_TABLE = IntArray(256) { -1 }.apply {
        val encodeTable = "0123456789" +
                "abcdefghij" +
                "klmnopqrst" +
                "uvwxyzABCD" +
                "EFGHIJKLMN" +
                "OPQRSTUVWX" +
                "YZ.-:+=^!/" +
                "*?`'|()[]{" +
                "}@%$#"
        for (i in encodeTable.indices) {
            this[encodeTable[i].code] = i
        }
    }

    fun parse(inputStream: InputStream, outputStream: OutputStream, colorSpace: ColorSpace = ColorSpace.SRGB, curve: LutCurve = LutCurve.SRGB): Boolean {
        val factory = DocumentBuilderFactory.newInstance()
        factory.isNamespaceAware = true
        val builder = factory.newDocumentBuilder()
        val doc = builder.parse(inputStream)

        val crsNs = "http://ns.adobe.com/camera-raw-settings/1.0/"
        val descriptions = doc.getElementsByTagNameNS("http://www.w3.org/1999/02/22-rdf-syntax-ns#", "Description")

        var rgbTableId: String? = null
        var tableDataEncoded: String? = null
        var lutTitle = ""

        for (i in 0 until descriptions.length) {
            val desc = descriptions.item(i) as org.w3c.dom.Element

            if (desc.hasAttributeNS(crsNs, "RGBTable")) {
                rgbTableId = desc.getAttributeNS(crsNs, "RGBTable")
            }

            if (lutTitle.isEmpty() && desc.hasAttributeNS(crsNs, "LookName")) {
                lutTitle = desc.getAttributeNS(crsNs, "LookName")
            }
        }

        if (rgbTableId == null) {
            // Try searching for any Table_ attribute if RGBTable is missing
            val attrs = descriptions.item(0).attributes
            for (j in 0 until attrs.length) {
                val attr = attrs.item(j)
                if (attr.nodeName.startsWith("crs:Table_")) {
                    tableDataEncoded = attr.nodeValue
                    break
                }
            }
        } else {
            val tableName = "Table_$rgbTableId"
            for (i in 0 until descriptions.length) {
                val desc = descriptions.item(i) as org.w3c.dom.Element
                if (desc.hasAttributeNS(crsNs, tableName)) {
                    tableDataEncoded = desc.getAttributeNS(crsNs, tableName)
                    break
                }
            }
        }

        if (tableDataEncoded == null) {
            return false
        }

        val decodedData = decodeBase85(tableDataEncoded)
        val decompressedData = decompress(decodedData)
        var lutData = parseLutData(decompressedData)

        if (lutData.divisions > 65) {
            lutData = resampleSize(lutData, 33)
        }

        return writePlutFile(outputStream, lutData, colorSpace, curve)
    }

    private fun resampleLut(lutData: LutData, curve: LutCurve): LutData {
        val size = lutData.divisions
        // 尝试使用 Native 优化
        val nativeData = try {
            LutProcessor.resampleLutNative(lutData.samples, size, curve.ordinal)
        } catch (e: Throwable) {
            null
        }

        if (nativeData != null) {
            return LutData(size, nativeData)
        }

        val newData = ShortArray(size * size * size * 3)
        val step = 1.0f / (size - 1)

        for (bIdx in 0 until size) {
            for (gIdx in 0 until size) {
                for (rIdx in 0 until size) {
                    val r = rIdx * step
                    val g = gIdx * step
                    val b = bIdx * step

                    val rLin = LutCurve.SRGB.toLinear(r)
                    val gLin = LutCurve.SRGB.toLinear(g)
                    val bLin = LutCurve.SRGB.toLinear(b)

                    val rLog = curve.fromLinear(rLin)
                    val gLog = curve.fromLinear(gLin)
                    val bLog = curve.fromLinear(bLin)

                    val interpolated = trilinearSample(lutData, rLog, gLog, bLog)

                    val index = ((bIdx * size + gIdx) * size + rIdx) * 3
                    newData[index] = interpolated[0]
                    newData[index + 1] = interpolated[1]
                    newData[index + 2] = interpolated[2]
                }
            }
        }
        return LutData(size, newData)
    }

    private fun trilinearSample(lutData: LutData, r: Float, g: Float, b: Float): ShortArray {
        val size = lutData.divisions
        val data = lutData.samples

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

    private fun resampleSize(lutData: LutData, targetSize: Int): LutData {
        val nativeData = try {
            LutProcessor.resampleSizeNative(lutData.samples, lutData.divisions, targetSize)
        } catch (e: Throwable) {
            null
        }

        if (nativeData != null) {
            return LutData(targetSize, nativeData)
        }

        val newData = ShortArray(targetSize * targetSize * targetSize * 3)
        val step = 1.0f / (targetSize - 1)

        for (bIdx in 0 until targetSize) {
            for (gIdx in 0 until targetSize) {
                for (rIdx in 0 until targetSize) {
                    val r = rIdx * step
                    val g = gIdx * step
                    val b = bIdx * step

                    val interpolated = trilinearSample(lutData, r, g, b)

                    val index = ((bIdx * targetSize + gIdx) * targetSize + rIdx) * 3
                    newData[index] = interpolated[0]
                    newData[index + 1] = interpolated[1]
                    newData[index + 2] = interpolated[2]
                }
            }
        }
        return LutData(targetSize, newData)
    }

    private fun decodeBase85(input: String): ByteArray {
        val out = ByteArrayOutputStream()
        var phase = 0
        var value = 0L

        for (c in input) {
            if (c.code > 255) continue
            val d = DECODE_TABLE[c.code]
            if (d == -1) continue

            phase++
            when (phase) {
                1 -> value = d.toLong()
                2 -> value += d.toLong() * 85
                3 -> value += d.toLong() * 85 * 85
                4 -> value += d.toLong() * 85 * 85 * 85
                5 -> {
                    value += d.toLong() * 85 * 85 * 85 * 85
                    out.write((value and 0xFF).toInt())
                    out.write(((value shr 8) and 0xFF).toInt())
                    out.write(((value shr 16) and 0xFF).toInt())
                    out.write(((value shr 24) and 0xFF).toInt())
                    phase = 0
                }
            }
        }

        if (phase > 1) {
            out.write((value and 0xFF).toInt())
            if (phase > 2) {
                out.write(((value shr 8) and 0xFF).toInt())
                if (phase > 3) {
                    out.write(((value shr 16) and 0xFF).toInt())
                }
            }
        }

        return out.toByteArray()
    }

    private fun decompress(data: ByteArray): ByteArray {
        val buffer = ByteBuffer.wrap(data).order(ByteOrder.LITTLE_ENDIAN)
        val uncompressedSize = buffer.int

        val inflater = Inflater()
        inflater.setInput(data, 4, data.size - 4)

        val result = ByteArray(uncompressedSize)
        val count = inflater.inflate(result)
        inflater.end()

        if (count != uncompressedSize) {
            PLog.w("XmpLutParser", "Decompress size mismatch: expected $uncompressedSize, got $count")
        }

        return result
    }

    private fun parseLutData(data: ByteArray): LutData {
        val buffer = ByteBuffer.wrap(data).order(ByteOrder.LITTLE_ENDIAN)

        val btt = buffer.int
        if (btt != BTT_RGB_TABLE) {
            throw IllegalArgumentException("Not an RGB table: $btt")
        }

        val version = buffer.int
        if (version != RGB_TABLE_VERSION) {
            throw IllegalArgumentException("Unsupported RGB table version: $version")
        }

        val dimensions = buffer.int
        val divisions = buffer.int

        if (dimensions != 3) {
            throw IllegalArgumentException("Only 3D LUTs are supported, got $dimensions")
        }

        val nopValue = IntArray(divisions)
        val step = 65535.0 / (divisions - 1.0)
        for (i in 0 until divisions) {
            nopValue[i] = (i * step + 0.5).toInt()
        }

        val size = divisions * divisions * divisions
        val samples = ShortArray(size * 3)

        for (rd in 0 until divisions) {
            for (gd in 0 until divisions) {
                for (bd in 0 until divisions) {
                    val rf_res = buffer.short.toInt()
                    val gf_res = buffer.short.toInt()
                    val bf_res = buffer.short.toInt()

                    val rf = (rf_res + nopValue[rd]).coerceIn(0, 65535)
                    val gf = (gf_res + nopValue[gd]).coerceIn(0, 65535)
                    val bf = (bf_res + nopValue[bd]).coerceIn(0, 65535)

                    val index = ((bd * divisions + gd) * divisions + rd) * 3
                    samples[index] = rf.toShort()
                    samples[index + 1] = gf.toShort()
                    samples[index + 2] = bf.toShort()
                }
            }
        }

        return LutData(divisions, samples)
    }

    private fun writePlutFile(outputStream: OutputStream, lut: LutData, colorSpace: ColorSpace, curve: LutCurve): Boolean {
        val size = lut.divisions
        val count = size * size * size * 3
        val expectedSizeInBytes = count * 2 // 16-bit
        val buffer = ByteBuffer.allocate(24 + expectedSizeInBytes).order(ByteOrder.LITTLE_ENDIAN)

        buffer.putInt(MAGIC_PLUT)
        buffer.putInt(3) // version
        buffer.putInt(size)
        buffer.putInt(1) // dataType: 1 = UINT16
        buffer.putInt(curve.ordinal)
        buffer.putInt(colorSpace.ordinal)

        for (s in lut.samples) {
            buffer.putShort(s)
        }

        outputStream.write(buffer.array())
        outputStream.flush()
        return true
    }

    class LutData(val divisions: Int, val samples: ShortArray)
}
