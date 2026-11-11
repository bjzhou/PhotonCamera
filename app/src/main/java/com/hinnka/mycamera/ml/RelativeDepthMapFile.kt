package com.hinnka.mycamera.ml

import android.util.AtomicFile
import java.io.BufferedInputStream
import java.io.BufferedOutputStream
import java.io.DataInputStream
import java.io.DataOutputStream
import java.io.File
import java.io.IOException

/**
 * Versioned, lossless cache for normalized relative depth. The header records the depth
 * model that produced it; a cache of another model or format version is not read.
 */
object RelativeDepthMapFile {
    private const val MAGIC = 0x50484450 // "PHDP"
    private const val VERSION = 2
    private const val MAX_PIXEL_COUNT = 16_777_216L

    /** Whether [file] is a cache of this format made by [modelId]; reads the header only. */
    fun isFromModel(file: File, modelId: Long): Boolean {
        return try {
            DataInputStream(BufferedInputStream(AtomicFile(file).openRead(), HEADER_BYTES)).use { input ->
                input.readInt() == MAGIC && input.readInt() == VERSION && input.readLong() == modelId
            }
        } catch (_: IOException) {
            false
        }
    }

    @Throws(IOException::class)
    fun read(file: File, modelId: Long): RelativeDepthMap {
        val atomicFile = AtomicFile(file)
        DataInputStream(BufferedInputStream(atomicFile.openRead())).use { input ->
            val magic = input.readInt()
            val version = input.readInt()
            if (magic != MAGIC || version != VERSION) {
                throw IOException("Unsupported depth cache header")
            }
            if (input.readLong() != modelId) {
                throw IOException("Depth cache was made by another depth model")
            }
            val width = input.readInt()
            val height = input.readInt()
            val pixelCount = width.toLong() * height.toLong()
            if (width <= 0 || height <= 0 || pixelCount > MAX_PIXEL_COUNT) {
                throw IOException("Invalid depth cache dimensions: ${width}x$height")
            }

            val values = FloatArray(pixelCount.toInt())
            for (index in values.indices) {
                val value = input.readFloat()
                if (!value.isFinite() || value !in 0.0f..1.0f) {
                    throw IOException("Invalid depth value at index $index")
                }
                values[index] = value
            }
            return RelativeDepthMap(width, height, values)
        }
    }

    @Throws(IOException::class)
    fun write(file: File, depthMap: RelativeDepthMap, modelId: Long) {
        file.parentFile?.mkdirs()
        val atomicFile = AtomicFile(file)
        val output = atomicFile.startWrite()
        val data = DataOutputStream(BufferedOutputStream(output))
        try {
            data.writeInt(MAGIC)
            data.writeInt(VERSION)
            data.writeLong(modelId)
            data.writeInt(depthMap.width)
            data.writeInt(depthMap.height)
            for (value in depthMap.values) {
                if (!value.isFinite()) throw IOException("Cannot cache non-finite depth")
                data.writeFloat(value.coerceIn(0.0f, 1.0f))
            }
            data.flush()
            atomicFile.finishWrite(output)
        } catch (error: Throwable) {
            atomicFile.failWrite(output)
            throw error
        }
    }

    private const val HEADER_BYTES = 16
}
