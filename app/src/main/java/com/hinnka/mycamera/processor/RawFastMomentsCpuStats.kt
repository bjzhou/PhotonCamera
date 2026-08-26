package com.hinnka.mycamera.processor

import android.graphics.Rect
import com.hinnka.mycamera.raw.RawDefaultCropOverride
import com.hinnka.mycamera.raw.RawClassicAeSplitAlgorithm
import com.hinnka.mycamera.raw.RawSceneClassicAeMeteringFrame
import com.hinnka.mycamera.raw.RawSceneExposureMath
import com.hinnka.mycamera.raw.RawSceneFastMomentsMeteringFrame
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
        val canBuildMeteringRgb =
            bounds.width() >= RawSceneExposureMath.INPUT_WIDTH * 4 &&
                bounds.height() >= RawSceneExposureMath.INPUT_HEIGHT * 4
        val meteringRawSums = if (canBuildMeteringRgb) {
            DoubleArray(
                RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT * 4,
            )
        } else {
            null
        }
        val meteringCounts = if (canBuildMeteringRgb) {
            IntArray(
                RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT * 4,
            )
        } else {
            null
        }
        val meteringXBySourceX = if (canBuildMeteringRgb) {
            buildMeteringBinMap(bounds.width(), RawSceneExposureMath.INPUT_WIDTH)
        } else {
            null
        }
        val meteringYBySourceY = if (canBuildMeteringRgb) {
            buildMeteringBinMap(bounds.height(), RawSceneExposureMath.INPUT_HEIGHT)
        } else {
            null
        }
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
                        if (meteringRawSums != null && meteringCounts != null &&
                            meteringXBySourceX != null && meteringYBySourceY != null
                        ) {
                            val meteringX = meteringXBySourceX[x - bounds.left]
                            val meteringY = meteringYBySourceY[y - bounds.top]
                            val meteringOffset = (
                                meteringY * RawSceneExposureMath.INPUT_WIDTH + meteringX
                                ) * 4 + channel
                            meteringRawSums[meteringOffset] += raw.toDouble()
                            meteringCounts[meteringOffset]++
                        }
                    }
                }
            }
        }
        val baseFrameSensorRgb = if (meteringRawSums != null && meteringCounts != null) {
            buildBaseFrameSensorRgb(
                rawSums = meteringRawSums,
                counts = meteringCounts,
                blackLevel = black,
                whiteLevel = whiteLevel,
            )
        } else {
            null
        }
        val classicAe = buildClassicAeMeteringFrame(
            source = source,
            sourceBase = sourceBase,
            rowStride = plane.rowStride,
            bounds = bounds,
            cfaPattern = cfaPattern,
            cfaPhaseOriginX = cfaPhaseOriginX,
            cfaPhaseOriginY = cfaPhaseOriginY,
            blackLevel = black,
            whiteLevel = whiteLevel,
        )
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
            baseFrameMetering = baseFrameSensorRgb?.let { sensorRgb ->
                RawSceneFastMomentsMeteringFrame(
                    sensorRgb = sensorRgb,
                    classicAe = classicAe,
                )
            },
        ).also {
            PLog.i(
                TAG,
                "Fast Moments reference statistics size=${statsWidth}x$statsHeight " +
                    "source=${width}x$height physical=$coordinateBounds bounds=$bounds " +
                    "frame=${frame.frameNumber} baseRgb=${if (baseFrameSensorRgb != null) {
                        "${RawSceneExposureMath.INPUT_WIDTH}x${RawSceneExposureMath.INPUT_HEIGHT}"
                    } else {
                        "unavailable"
                    }} classicAe=${classicAe?.let { "${it.width}x${it.height}" } ?: "unavailable"}",
            )
        }
    }

    /**
     * Portable transcription of RawToLoResRgb + ResampleBayerToRgb used by MGC's Classic path.
     * Each complete CFA period is one RGB sample. A destination box is split at its local mean
     * RGB sum; the two means and the exact 8-bit population ratio form SplitHdrImage.
     */
    private fun buildClassicAeMeteringFrame(
        source: java.nio.ByteBuffer,
        sourceBase: Int,
        rowStride: Int,
        bounds: Rect,
        cfaPattern: Int,
        cfaPhaseOriginX: Int,
        cfaPhaseOriginY: Int,
        blackLevel: FloatArray,
        whiteLevel: Int,
    ): RawSceneClassicAeMeteringFrame? {
        val colorBlockSize = when (cfaPattern) {
            in 0..3 -> 1
            in 4..7 -> 2
            in 8..11 -> 4
            else -> return null
        }
        val cfaPeriod = colorBlockSize * 2
        val sampleWidth = bounds.width() / cfaPeriod
        val sampleHeight = bounds.height() / cfaPeriod
        if (sampleWidth <= 0 || sampleHeight <= 0) return null
        val outputSize = RawClassicAeSplitAlgorithm.outputSize(bounds, cfaPattern) ?: return null
        val outputWidth = outputSize.width
        val outputHeight = outputSize.height

        val rgbBlack = floatArrayOf(
            blackLevel[0],
            0.5f * (blackLevel[1] + blackLevel[2]),
            blackLevel[3],
        )
        val sensorRange = whiteLevel.toFloat() - rgbBlack.maxOrNull()!!
        if (!sensorRange.isFinite() || sensorRange <= 0f) return null
        val inverseSensorRange = 1f / sensorRange
        val loResSize = RawClassicAeSplitAlgorithm.loResSize(bounds, cfaPattern) ?: return null
        val loResRgb = FloatArray(loResSize.width * loResSize.height * 3)
        val cfaRgb = FloatArray(3)
        val brightRgb = FloatArray(outputWidth * outputHeight * 3)
        val darkRgb = FloatArray(brightRgb.size)
        val brightMask = ByteArray(outputWidth * outputHeight)
        var clippedCfaSampleCount = 0

        fun readCfaSample(sampleX: Int, sampleY: Int) {
            val rawLeft = bounds.left + sampleX * cfaPeriod
            val rawTop = bounds.top + sampleY * cfaPeriod
            var redSum = 0f
            var greenEvenSum = 0f
            var greenOddSum = 0f
            var blueSum = 0f
            var redCount = 0
            var greenEvenCount = 0
            var greenOddCount = 0
            var blueCount = 0
            var clipped = false
            for (dy in 0 until cfaPeriod) {
                val rawY = rawTop + dy
                val rowOffset = sourceBase + rawY * rowStride
                for (dx in 0 until cfaPeriod) {
                    val rawX = rawLeft + dx
                    val blockColumn = ((rawX - cfaPhaseOriginX) / colorBlockSize) and 1
                    val blockRow = ((rawY - cfaPhaseOriginY) / colorBlockSize) and 1
                    val phase = (blockRow shl 1) or blockColumn
                    val channel = canonicalChannelAtPhase(cfaPattern, phase)
                    val raw = (
                        source.getShort(rowOffset + rawX * RAW_BYTES_PER_PIXEL).toInt() and 0xffff
                        ).toFloat()
                    if (raw >= whiteLevel.toFloat()) clipped = true
                    when (channel) {
                        0 -> {
                            redSum += raw
                            redCount++
                        }
                        1 -> {
                            greenEvenSum += raw
                            greenEvenCount++
                        }
                        2 -> {
                            greenOddSum += raw
                            greenOddCount++
                        }
                        else -> {
                            blueSum += raw
                            blueCount++
                        }
                    }
                }
            }
            cfaRgb[0] = redSum / maxOf(redCount, 1).toFloat()
            cfaRgb[1] =
                (greenEvenSum + greenOddSum) /
                maxOf(greenEvenCount + greenOddCount, 1).toFloat()
            cfaRgb[2] = blueSum / maxOf(blueCount, 1).toFloat()
            if (clipped) clippedCfaSampleCount++
        }

        // RawToLoResRgb counts clipped complete CFA periods, then box-resamples them to a
        // <=180-edge RGB image. Black subtraction and LSC happen only after the 40-wide split.
        for (loResY in 0 until loResSize.height) {
            val startSampleY = loResY * sampleHeight / loResSize.height
            val endSampleY = maxOf(
                startSampleY + 1,
                (loResY + 1) * sampleHeight / loResSize.height,
            ).coerceAtMost(sampleHeight)
            for (loResX in 0 until loResSize.width) {
                val startSampleX = loResX * sampleWidth / loResSize.width
                val endSampleX = maxOf(
                    startSampleX + 1,
                    (loResX + 1) * sampleWidth / loResSize.width,
                ).coerceAtMost(sampleWidth)
                var red = 0f
                var green = 0f
                var blue = 0f
                var sampleCount = 0
                for (sampleY in startSampleY until endSampleY) {
                    for (sampleX in startSampleX until endSampleX) {
                        readCfaSample(sampleX, sampleY)
                        red += cfaRgb[0]
                        green += cfaRgb[1]
                        blue += cfaRgb[2]
                        sampleCount++
                    }
                }
                if (sampleCount <= 0) return null
                val inverseCount = 1f / sampleCount.toFloat()
                red *= inverseCount
                green *= inverseCount
                blue *= inverseCount
                val offset = (loResY * loResSize.width + loResX) * 3
                loResRgb[offset] = red
                loResRgb[offset + 1] = green
                loResRgb[offset + 2] = blue
            }
        }

        // SplitHdrImage then partitions only the <=180-edge RGB samples into its 40-wide image.
        for (outputY in 0 until outputHeight) {
            val startSampleY = outputY * loResSize.height / outputHeight
            val endSampleY = maxOf(
                startSampleY + 1,
                (outputY + 1) * loResSize.height / outputHeight,
            ).coerceAtMost(loResSize.height)
            for (outputX in 0 until outputWidth) {
                val startSampleX = outputX * loResSize.width / outputWidth
                val endSampleX = maxOf(
                    startSampleX + 1,
                    (outputX + 1) * loResSize.width / outputWidth,
                ).coerceAtMost(loResSize.width)
                var sampleCount = 0
                var meanRed = 0f
                var meanGreen = 0f
                var meanBlue = 0f
                for (sampleY in startSampleY until endSampleY) {
                    for (sampleX in startSampleX until endSampleX) {
                        val offset = (sampleY * loResSize.width + sampleX) * 3
                        meanRed += loResRgb[offset]
                        meanGreen += loResRgb[offset + 1]
                        meanBlue += loResRgb[offset + 2]
                        sampleCount++
                    }
                }
                if (sampleCount <= 0) return null
                val inverseCount = 1f / sampleCount.toFloat()
                meanRed *= inverseCount
                meanGreen *= inverseCount
                meanBlue *= inverseCount
                val meanSum = meanRed + meanGreen + meanBlue
                var brightRed = 0f
                var brightGreen = 0f
                var brightBlue = 0f
                var darkRed = 0f
                var darkGreen = 0f
                var darkBlue = 0f
                var brightCount = 0
                for (sampleY in startSampleY until endSampleY) {
                    for (sampleX in startSampleX until endSampleX) {
                        val offset = (sampleY * loResSize.width + sampleX) * 3
                        val isBright = loResRgb[offset] + loResRgb[offset + 1] +
                            loResRgb[offset + 2] > meanSum
                        if (isBright) {
                            brightRed += loResRgb[offset]
                            brightGreen += loResRgb[offset + 1]
                            brightBlue += loResRgb[offset + 2]
                            brightCount++
                        } else {
                            darkRed += loResRgb[offset]
                            darkGreen += loResRgb[offset + 1]
                            darkBlue += loResRgb[offset + 2]
                        }
                    }
                }
                val darkCount = sampleCount - brightCount
                val outputPixel = outputY * outputWidth + outputX
                val outputOffset = outputPixel * 3
                for (channel in 0..2) {
                    var bright = when (channel) {
                        0 -> brightRed
                        1 -> brightGreen
                        else -> brightBlue
                    } / maxOf(brightCount, 1).toFloat()
                    var dark = when (channel) {
                        0 -> darkRed
                        1 -> darkGreen
                        else -> darkBlue
                    } / maxOf(darkCount, 1).toFloat()
                    val black = rgbBlack[channel]
                    if (bright > black || dark > 2f * black) {
                        bright = (bright - black).coerceAtLeast(0f)
                        dark = (dark - black).coerceAtLeast(0f)
                    } else {
                        val merged = (0.5f * (bright + dark) - black).coerceAtLeast(0f)
                        bright = merged
                        dark = merged
                    }
                    brightRgb[outputOffset + channel] = bright * inverseSensorRange
                    darkRgb[outputOffset + channel] = dark * inverseSensorRange
                }
                brightMask[outputPixel] =
                    (255 * brightCount / sampleCount).coerceIn(0, 255).toByte()
            }
        }
        return RawSceneClassicAeMeteringFrame(
            width = outputWidth,
            height = outputHeight,
            brightRgb = brightRgb,
            darkRgb = darkRgb,
            brightMask = brightMask,
            clippedFraction = clippedCfaSampleCount.toFloat() /
                (sampleWidth * sampleHeight).toFloat(),
        )
    }

    private fun buildBaseFrameSensorRgb(
        rawSums: DoubleArray,
        counts: IntArray,
        blackLevel: FloatArray,
        whiteLevel: Int,
    ): FloatArray? {
        val pixelCount = RawSceneExposureMath.INPUT_WIDTH * RawSceneExposureMath.INPUT_HEIGHT
        if (rawSums.size != pixelCount * 4 || counts.size != rawSums.size) return null
        val rgbBlack = floatArrayOf(
            blackLevel[0],
            0.5f * (blackLevel[1] + blackLevel[2]),
            blackLevel[3],
        )
        val sensorRange = whiteLevel.toFloat() - rgbBlack.maxOrNull()!!
        if (!sensorRange.isFinite() || sensorRange <= 0f) return null
        val inverseSensorRange = 1f / sensorRange
        val output = FloatArray(pixelCount * 3)
        for (pixel in 0 until pixelCount) {
            val rawOffset = pixel * 4
            val redCount = counts[rawOffset]
            val greenCount = counts[rawOffset + 1] + counts[rawOffset + 2]
            val blueCount = counts[rawOffset + 3]
            if (redCount <= 0 || greenCount <= 0 || blueCount <= 0) return null
            val red = rawSums[rawOffset] / redCount.toDouble()
            val green = (rawSums[rawOffset + 1] + rawSums[rawOffset + 2]) /
                greenCount.toDouble()
            val blue = rawSums[rawOffset + 3] / blueCount.toDouble()
            val outputOffset = pixel * 3
            output[outputOffset] = (
                (red - rgbBlack[0].toDouble()) * inverseSensorRange
                ).coerceAtLeast(0.0).toFloat()
            output[outputOffset + 1] = (
                (green - rgbBlack[1].toDouble()) * inverseSensorRange
                ).coerceAtLeast(0.0).toFloat()
            output[outputOffset + 2] = (
                (blue - rgbBlack[2].toDouble()) * inverseSensorRange
                ).coerceAtLeast(0.0).toFloat()
        }
        return output.takeIf { values -> values.all(Float::isFinite) }
    }

    /** Matches RawToLoResRgb's floor(i * source / destination) box boundaries exactly. */
    private fun buildMeteringBinMap(sourceLength: Int, destinationLength: Int): IntArray {
        val bins = IntArray(sourceLength)
        for (destination in 0 until destinationLength) {
            val start = destination * sourceLength / destinationLength
            val end = (destination + 1) * sourceLength / destinationLength
            for (source in start until end) bins[source] = destination
        }
        return bins
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
