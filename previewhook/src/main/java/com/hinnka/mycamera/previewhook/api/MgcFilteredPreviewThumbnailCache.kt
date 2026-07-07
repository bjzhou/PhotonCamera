package com.hinnka.mycamera.previewhook.api

import android.graphics.Bitmap
import android.os.SystemClock
import android.util.Log
import java.nio.ByteBuffer

object MgcFilteredPreviewThumbnailCache {
    private const val TAG = "codex_raw_chain"
    private const val THUMBNAIL_EDGE = 512
    private const val MAX_READ_EDGE = 1024
    private const val CAPTURE_INTERVAL_MS = 350L
    private const val FRESH_WINDOW_MS = 3_000L

    @Volatile
    private var latestBitmap: Bitmap? = null

    @Volatile
    private var latestCapturedAtMs: Long = 0L

    @Volatile
    private var displayRotationDegrees: Int = 0

    private var lastCaptureAttemptMs: Long = 0L
    private var loggedFirstCapture: Boolean = false

    @JvmStatic
    fun setDisplayRotationDegrees(degrees: Int) {
        displayRotationDegrees = normalizeRotation(degrees)
    }

    @JvmStatic
    fun currentDisplayRotationDegrees(): Int = displayRotationDegrees

    @JvmStatic
    fun latestFreshBitmap(): Bitmap? {
        val bitmap = latestBitmap ?: return null
        val ageMs = SystemClock.elapsedRealtime() - latestCapturedAtMs
        return if (ageMs <= FRESH_WINDOW_MS && !bitmap.isRecycled) bitmap else null
    }

    @JvmStatic
    @Synchronized
    fun markCaptureAttempt(width: Int, height: Int): Boolean {
        if (width <= 0 || height <= 0) return false
        val now = SystemClock.elapsedRealtime()
        if (now - lastCaptureAttemptMs < CAPTURE_INTERVAL_MS) return false
        lastCaptureAttemptMs = now
        return true
    }

    @JvmStatic
    @Synchronized
    fun cacheRgbaFrame(width: Int, height: Int, buffer: ByteBuffer, rotationDegrees: Int = displayRotationDegrees) {
        if (width <= 0 || height <= 0) return
        runCatching {
            buffer.position(0)
            val readEdge = minOf(width, height, MAX_READ_EDGE)
            val left = (width - readEdge) / 2
            val bottom = (height - readEdge) / 2
            val pixels = mirrorHorizontally(
                rotateSquarePixels(
                    rgbaBufferToArgbPixels(buffer, width, readEdge, left, bottom),
                    readEdge,
                    normalizeRotation(rotationDegrees),
                ),
                readEdge,
            )
            val source = Bitmap.createBitmap(pixels, readEdge, readEdge, Bitmap.Config.ARGB_8888)
            val scaled = if (readEdge == THUMBNAIL_EDGE) {
                source
            } else {
                Bitmap.createScaledBitmap(source, THUMBNAIL_EDGE, THUMBNAIL_EDGE, true).also {
                    source.recycle()
                }
            }
            latestBitmap = scaled
            latestCapturedAtMs = SystemClock.elapsedRealtime()
            if (!loggedFirstCapture) {
                loggedFirstCapture = true
                Log.d(
                    TAG,
                    "cached filtered preview thumbnail read=${readEdge}x$readEdge frame=${width}x$height rotation=${normalizeRotation(rotationDegrees)}",
                )
            }
        }.onFailure {
            Log.d(TAG, "filtered preview thumbnail capture failed: ${it.message}")
        }
    }

    private fun rgbaBufferToArgbPixels(
        buffer: ByteBuffer,
        bufferWidth: Int,
        edge: Int,
        left: Int,
        bottom: Int,
    ): IntArray {
        val pixels = IntArray(edge * edge)
        for (y in 0 until edge) {
            val srcY = bottom + edge - 1 - y
            var src = ((srcY * bufferWidth) + left) * 4
            var dst = y * edge
            for (x in 0 until edge) {
                val r = buffer.get(src).toInt() and 0xFF
                val g = buffer.get(src + 1).toInt() and 0xFF
                val b = buffer.get(src + 2).toInt() and 0xFF
                pixels[dst] = (0xFF shl 24) or (r shl 16) or (g shl 8) or b
                src += 4
                dst += 1
            }
        }
        return pixels
    }

    private fun rotateSquarePixels(pixels: IntArray, edge: Int, degrees: Int): IntArray {
        return when (normalizeRotation(degrees)) {
            0 -> pixels
            90 -> rotateClockwise(pixels, edge)
            180 -> rotateHalfTurn(pixels, edge)
            270 -> rotateCounterClockwise(pixels, edge)
            else -> pixels
        }
    }

    private fun rotateClockwise(pixels: IntArray, edge: Int): IntArray {
        val rotated = IntArray(pixels.size)
        for (y in 0 until edge) {
            for (x in 0 until edge) {
                rotated[(x * edge) + (edge - 1 - y)] = pixels[(y * edge) + x]
            }
        }
        return rotated
    }

    private fun rotateHalfTurn(pixels: IntArray, edge: Int): IntArray {
        val rotated = IntArray(pixels.size)
        for (index in pixels.indices) {
            rotated[pixels.lastIndex - index] = pixels[index]
        }
        return rotated
    }

    private fun rotateCounterClockwise(pixels: IntArray, edge: Int): IntArray {
        val rotated = IntArray(pixels.size)
        for (y in 0 until edge) {
            for (x in 0 until edge) {
                rotated[((edge - 1 - x) * edge) + y] = pixels[(y * edge) + x]
            }
        }
        return rotated
    }

    private fun mirrorHorizontally(pixels: IntArray, edge: Int): IntArray {
        val mirrored = IntArray(pixels.size)
        for (y in 0 until edge) {
            val row = y * edge
            for (x in 0 until edge) {
                mirrored[row + (edge - 1 - x)] = pixels[row + x]
            }
        }
        return mirrored
    }

    private fun normalizeRotation(degrees: Int): Int {
        val normalized = ((degrees % 360) + 360) % 360
        return when (normalized) {
            in 45 until 135 -> 90
            in 135 until 225 -> 180
            in 225 until 315 -> 270
            else -> 0
        }
    }
}
