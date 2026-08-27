package com.hinnka.mycamera.processor

import android.graphics.Rect
import com.hinnka.mycamera.raw.RawDefaultCropOverride
import com.hinnka.mycamera.raw.RawSceneExposureMath
import com.hinnka.mycamera.raw.RawSceneFastMomentsRawStats
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteOrder

/** Builds the Fast Moments Bayer maximum surface over the same crop consumed by HDRNet. */
internal object RawFastMomentsCpuStats {
    private const val TAG = "RawFastMomentsCpuStats"
    private const val RAW_BYTES_PER_PIXEL = 2

    fun build(
        frame: RawStackFrame,
        width: Int,
        height: Int,
        cfaPattern: Int,
        canonicalBlackLevel: FloatArray,
        whiteLevel: Int,
        processingBounds: Rect?,
        cfaPhaseOriginX: Int = 0,
        cfaPhaseOriginY: Int = 0,
        coordinateBounds: Rect = Rect(0, 0, width, height),
    ): RawSceneFastMomentsRawStats? {
        val bounds = RawDefaultCropOverride.alignToBayerPhase(
            crop = processingBounds ?: Rect(0, 0, width, height),
            width = width,
            height = height,
            phaseOriginX = cfaPhaseOriginX,
            phaseOriginY = cfaPhaseOriginY,
        ) ?: return null
        if (coordinateBounds.isEmpty || !coordinateBounds.contains(bounds)) return null
        val plane = frame.image.planes.firstOrNull() ?: return null
        if (plane.pixelStride != RAW_BYTES_PER_PIXEL ||
            plane.rowStride < width * RAW_BYTES_PER_PIXEL
        ) {
            PLog.e(
                TAG,
                "Unsupported reference RAW layout row=${plane.rowStride} " +
                    "pixel=${plane.pixelStride} size=${width}x$height",
            )
            return null
        }
        val source = plane.buffer.duplicate().order(ByteOrder.nativeOrder())
        val sourceBase = source.position()
        val requiredEnd = sourceBase.toLong() +
            (bounds.bottom - 1L) * plane.rowStride +
            bounds.right.toLong() * RAW_BYTES_PER_PIXEL
        if (requiredEnd > source.limit().toLong()) {
            PLog.e(TAG, "Truncated reference RAW required=$requiredEnd limit=${source.limit()}")
            return null
        }

        val downsample = RawSceneExposureMath.FAST_MOMENTS_RAW_STATS_DOWNSAMPLE
        val statsWidth = (bounds.width() + downsample - 1) / downsample
        val statsHeight = (bounds.height() + downsample - 1) / downsample
        val channelMax = FloatArray(statsWidth * statsHeight * 4)
        val black = resolvedBlackLevel(
            frame = frame,
            cfaPattern = cfaPattern,
            canonicalBlackLevel = canonicalBlackLevel,
            whiteLevel = whiteLevel,
        )
        for (statsY in 0 until statsHeight) {
            val startY = bounds.top + statsY * downsample
            val endY = minOf(startY + downsample, bounds.bottom)
            for (statsX in 0 until statsWidth) {
                val startX = bounds.left + statsX * downsample
                val endX = minOf(startX + downsample, bounds.right)
                val outputOffset = (statsY * statsWidth + statsX) * 4
                for (y in startY until endY) {
                    val rowOffset = sourceBase + y * plane.rowStride
                    for (x in startX until endX) {
                        val phase = (((y - cfaPhaseOriginY) and 1) shl 1) or
                            ((x - cfaPhaseOriginX) and 1)
                        val channel = canonicalChannelAtPhase(cfaPattern, phase)
                        val raw = source.getShort(rowOffset + x * RAW_BYTES_PER_PIXEL)
                            .toInt() and 0xffff
                        val normalized = (raw.toFloat() - black[channel]).coerceAtLeast(0f) /
                            (whiteLevel - black[channel]).coerceAtLeast(1f)
                        val index = outputOffset + channel
                        if (normalized > channelMax[index]) channelMax[index] = normalized
                    }
                }
            }
        }
        return RawSceneFastMomentsRawStats(
            width = statsWidth,
            height = statsHeight,
            sourceWidth = bounds.width(),
            sourceHeight = bounds.height(),
            channelMax = channelMax,
            sensorNormalized = true,
            sourceBounds = floatArrayOf(
                (bounds.left - coordinateBounds.left).toFloat() / coordinateBounds.width(),
                (bounds.top - coordinateBounds.top).toFloat() / coordinateBounds.height(),
                (bounds.right - coordinateBounds.left).toFloat() / coordinateBounds.width(),
                (bounds.bottom - coordinateBounds.top).toFloat() / coordinateBounds.height(),
            ),
            sourceRotationDegrees = 0,
        ).also {
            PLog.i(
                TAG,
                "Fast Moments reference statistics size=${statsWidth}x$statsHeight " +
                    "source=${width}x$height physical=$coordinateBounds bounds=$bounds " +
                    "frame=${frame.frameNumber}",
            )
        }
    }

    private fun resolvedBlackLevel(
        frame: RawStackFrame,
        cfaPattern: Int,
        canonicalBlackLevel: FloatArray,
        whiteLevel: Int,
    ): FloatArray {
        val fallback = FloatArray(4) { channel ->
            canonicalBlackLevel.getOrElse(channel) { 0f }
        }
        val positional = frame.dynamicBlackLevelByCfaPosition?.takeIf { values ->
            values.size >= 4 && values.take(4).all {
                it.isFinite() && it >= 0f && it < whiteLevel
            }
        } ?: return fallback
        return fallback.also { canonical ->
            for (phase in 0 until 4) {
                canonical[canonicalChannelAtPhase(cfaPattern, phase)] = positional[phase]
            }
        }
    }

    private fun canonicalChannelAtPhase(cfaPattern: Int, phase: Int): Int {
        val phaseToCanonical = when (cfaPattern.mod(4)) {
            1 -> intArrayOf(1, 0, 3, 2)
            2 -> intArrayOf(2, 3, 0, 1)
            3 -> intArrayOf(3, 2, 1, 0)
            else -> intArrayOf(0, 1, 2, 3)
        }
        return phaseToCanonical[phase.coerceIn(0, 3)]
    }
}
