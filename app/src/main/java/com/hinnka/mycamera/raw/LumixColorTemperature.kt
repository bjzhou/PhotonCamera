package com.hinnka.mycamera.raw

import java.io.File
import java.io.RandomAccessFile

/** LumixLab libtechorfilter.so: GetCTempInfoForColorCorrection / GetPhotStyleCorrectLUT. */
internal object LumixColorTemperature {
    private val kelvinPoints = doubleArrayOf(3000.0, 5000.0, 6500.0, 7500.0)
    private val coordinatePoints = doubleArrayOf(256.0, 512.0, 618.0, 725.0)

    fun coordinateForKelvin(kelvin: Float?): Int {
        val temperature = kelvin?.takeIf { it.isFinite() && it > 0f }?.toDouble() ?: 5000.0
        val segment = when {
            temperature < kelvinPoints[1] -> 0
            temperature < kelvinPoints[2] -> 1
            else -> 2
        }
        val coordinate = coordinatePoints[segment] +
            (temperature - kelvinPoints[segment]) *
            (coordinatePoints[segment + 1] - coordinatePoints[segment]) /
            (kelvinPoints[segment + 1] - kelvinPoints[segment])
        // Original ConvertInternal uses double, clamps to uint16, then truncates.
        return coordinate.coerceIn(0.0, 65535.0).toInt()
    }

    fun highWeight(kelvin: Float?, asShotCoordinate: Int? = null): Float {
        val coordinate = asShotCoordinate ?: coordinateForKelvin(kelvin)
        return ((coordinate - 256) / 256f).coerceIn(0f, 1f)
    }

    /** Panasonic RW2 IFD0 tag 0x011c is a correction coordinate, not Kelvin. */
    fun readAsShotCoordinate(file: File): Int? = runCatching {
        RandomAccessFile(file, "r").use { input ->
            if (input.length() < 8) return@use null
            val order = input.readUnsignedShort()
            if (order != 0x4949 && order != 0x4d4d) return@use null
            val littleEndian = order == 0x4949
            fun ushort(): Int {
                val value = input.readUnsignedShort()
                return if (littleEndian) ((value and 255) shl 8) or (value ushr 8) else value
            }
            fun uint(): Long {
                val value = input.readInt()
                return (if (littleEndian) Integer.reverseBytes(value) else value).toLong() and 0xffffffffL
            }
            // Ordinary TIFF uses this numeric tag for PlanarConfiguration. Only RW2
            // magic 85 qualifies; never read it as a Panasonic coordinate in a DNG.
            if (ushort() != 85) return@use null
            val offset = uint()
            if (offset < 8 || offset > input.length() - 2) return@use null
            input.seek(offset)
            val count = ushort()
            if (count > 4096 || offset + 2L + count * 12L > input.length()) return@use null
            repeat(count) {
                val entry = input.filePointer
                val tag = ushort()
                val type = ushort()
                val length = uint()
                if (tag == 0x011c && type == 3 && length == 1L) return@use ushort()
                input.seek(entry + 12)
            }
            null
        }
    }.getOrNull()
}
