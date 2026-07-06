package com.hinnka.mycamera.utils

import android.graphics.*
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.DngCreator
import android.media.ExifInterface
import android.media.Image
import android.util.Log
import android.util.Size
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.raw.DngProfileGainTableMap
import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import java.io.File
import java.io.FileInputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.ShortBuffer

/**
 * RAW 图像处理器
 *
 * 用于处理 Camera2 RAW_SENSOR 格式的图像数据
 * 使用 GPU 加速的解马赛克算法处理 RAW 数据
 */
object RawProcessor {

    private const val TAG = "RawProcessor"

    enum class RawBufferValueDomain {
        SENSOR,
        NORMALIZED_SENSOR_RANGE,
    }

    fun resolveBlackLevelForMode(
        defaultBlackLevel: FloatArray,
        blackLevelMode: String?,
        customBlackLevel: Float?,
    ): FloatArray {
        val overrideBlackLevel = when (blackLevelMode) {
            "0" -> 0f
            "16" -> 16f
            "64" -> 64f
            "256" -> 256f
            "512" -> 512f
            "Custom" -> customBlackLevel ?: 0f
            else -> null
        }
        return overrideBlackLevel?.let { level ->
            FloatArray(defaultBlackLevel.size.coerceAtLeast(4)) { level }
        } ?: defaultBlackLevel.copyOf()
    }

    fun resolveCfaPatternForMode(defaultCfaPattern: Int, cfaCorrectionMode: String?): Int {
        return RawCfaCorrection.resolveCfaPattern(defaultCfaPattern, cfaCorrectionMode)
    }

    fun resolveWhiteLevelForMode(defaultWhiteLevel: Float, whiteLevelMode: String?): Float {
        return RawWhiteLevelCorrection.resolveWhiteLevel(defaultWhiteLevel, whiteLevelMode)
    }

    /**
     * 检查图像是否为 RAW 格式
     */
    fun isRawImage(image: SafeImage): Boolean {
        return image.format == ImageFormat.RAW_SENSOR ||
                image.format == ImageFormat.RAW_PRIVATE ||
                image.format == ImageFormat.RAW10 ||
                image.format == ImageFormat.RAW12
    }

    fun processAndToBitmap(
        file: File,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int
    ): Bitmap? {
        val source = ImageDecoder.createSource(file)
        return processAndToBitmap(source, aspectRatio, cropRegion, rotation)
    }

    fun processAndToBitmap(
        source: ImageDecoder.Source,
        aspectRatio: AspectRatio?,
        cropRegion: Rect?,
        rotation: Int
    ): Bitmap? {
        return try {
            var decodedBitmap = ImageDecoder.decodeBitmap(source) { decoder, info, _ ->
                decoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.EXTENDED_SRGB))
                decoder.allocator = ImageDecoder.ALLOCATOR_SOFTWARE
            }

            PLog.d(TAG, "DNG decoded: ${decodedBitmap.width}x${decodedBitmap.height} ${decodedBitmap.config}")

            // Step 3: 处理旋转
            if (rotation != 0) {
                val matrix = Matrix()
                matrix.postRotate(rotation.toFloat())
                val rotatedBitmap = Bitmap.createBitmap(
                    decodedBitmap, 0, 0,
                    decodedBitmap.width, decodedBitmap.height,
                    matrix, true
                )
                if (rotatedBitmap != decodedBitmap) {
                    decodedBitmap.recycle()
                }
                decodedBitmap = rotatedBitmap
            }

            // Step 4: 裁切到目标宽高比
            val rect =
                BitmapUtils.calculateProcessedRect(decodedBitmap.width, decodedBitmap.height, aspectRatio, cropRegion)
            Log.d(TAG, "processAndToBitmap: $rect")
            val croppedBitmap = Bitmap.createBitmap(decodedBitmap, rect.left, rect.top, rect.width(), rect.height())
            if (croppedBitmap != decodedBitmap) {
                decodedBitmap.recycle()
            }

            croppedBitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Fallback RAW processing also failed", e)
            null
        }
    }

    /**
     * 将 RAW 图像保存为 DNG 文件
     *
     * @param image RAW_SENSOR 格式的 Image
     * @param characteristics 相机特性
     * @param captureResult 拍摄结果
     * @param outputStream 输出流
     * @param rotation 旋转角度 (0, 90, 180, 270)
     */
    fun saveToDng(
        image: SafeImage,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        outputStream: java.io.OutputStream,
        rotation: Int = 0,
        thumbnail: Bitmap? = null,
        blackLevelMode: String? = null,
        customBlackLevel: Float? = null,
        whiteLevelMode: String? = null,
        cfaCorrectionMode: String? = null,
    ): Boolean {
        if (!isRawImage(image)) {
            throw IllegalArgumentException("Image is not RAW format: ${image.format}")
        }

        return saveRawImageToDngWithCustomWriter(
            image = image,
            characteristics = characteristics,
            captureResult = captureResult,
            outputStream = outputStream,
            rotation = rotation,
            thumbnail = thumbnail,
            blackLevelMode = blackLevelMode,
            customBlackLevel = customBlackLevel,
            whiteLevelMode = whiteLevelMode,
            cfaCorrectionMode = cfaCorrectionMode
        )
    }

    private fun saveRawImageToDngWithCustomWriter(
        image: SafeImage,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        outputStream: java.io.OutputStream,
        rotation: Int,
        thumbnail: Bitmap?,
        blackLevelMode: String?,
        customBlackLevel: Float?,
        whiteLevelMode: String?,
        cfaCorrectionMode: String?,
    ): Boolean {
        if (image.format != ImageFormat.RAW_SENSOR) {
            PLog.w(TAG, "Custom DNG writer requires RAW_SENSOR input, got format=${image.format}")
            return false
        }

        val rawBuffer = copyRawSensorImageToContiguousBuffer(image) ?: return false
        val rawMetadata = RawMetadata.create(
            width = image.width,
            height = image.height,
            characteristics = characteristics,
            captureResult = captureResult
        )

        PLog.i(TAG, "Writing RAW_SENSOR DNG with custom writer")
        return saveRawBufferToDng(
            rawBuffer = rawBuffer,
            width = image.width,
            height = image.height,
            characteristics = characteristics,
            captureResult = captureResult,
            outputStream = outputStream,
            rotation = rotation,
            thumbnail = thumbnail,
            cfaPattern = rawMetadata.cfaPattern,
            blackLevel = rawMetadata.blackLevel,
            whiteLevel = rawMetadata.whiteLevel.toInt(),
            valueDomain = RawBufferValueDomain.SENSOR,
            customWriter = true,
            blackLevelMode = blackLevelMode,
            customBlackLevel = customBlackLevel,
            whiteLevelMode = whiteLevelMode,
            cfaCorrectionMode = cfaCorrectionMode
        )
    }

    private fun copyRawSensorImageToContiguousBuffer(image: SafeImage): ByteBuffer? {
        val plane = image.planes.firstOrNull() ?: return null
        val rowStride = plane.rowStride
        val pixelStride = runCatching { plane.pixelStride }.getOrDefault(2).takeIf { it > 0 } ?: 2
        val width = image.width
        val height = image.height
        val rowBytes = width * 2

        if (pixelStride != 2 || rowStride < rowBytes) {
            PLog.w(TAG, "Unsupported RAW_SENSOR plane stride row=$rowStride pixel=$pixelStride size=${width}x${height}")
            return null
        }

        val source = plane.buffer.duplicate()
        val output = ByteBuffer.allocateDirect(rowBytes * height).order(ByteOrder.nativeOrder())
        for (row in 0 until height) {
            val rowOffset = row * rowStride
            val rowEnd = rowOffset + rowBytes
            if (rowEnd > source.capacity()) {
                PLog.w(TAG, "RAW_SENSOR plane too small row=$row rowEnd=$rowEnd capacity=${source.capacity()}")
                return null
            }
            source.limit(rowEnd)
            source.position(rowOffset)
            output.put(source)
        }
        output.rewind()
        return output
    }

    fun saveRawBufferToDng(
        rawBuffer: ByteBuffer,
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        outputStream: java.io.OutputStream,
        rotation: Int = 0,
        thumbnail: Bitmap? = null,
        cfaPattern: Int = RawMetadata.CFA_RGGB,
        blackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
        whiteLevel: Int = 65535,
        valueDomain: RawBufferValueDomain = RawBufferValueDomain.SENSOR,
        customWriter: Boolean = false,
        blackLevelMode: String? = null,
        customBlackLevel: Float? = null,
        whiteLevelMode: String? = null,
        cfaCorrectionMode: String? = null,
        baselineExposureEv: Float = 0f,
        profileGainTableMap: DngProfileGainTableMap? = null,
        imageLayout: SuperResolutionDngWriter.ImageLayout = SuperResolutionDngWriter.ImageLayout.CFA,
        compression: SuperResolutionDngWriter.Compression = SuperResolutionDngWriter.Compression.UNCOMPRESSED,
        inputRowStepSamples: Int? = null,
        inputColStepSamples: Int? = null,
    ): Boolean {
        val resolvedCfaPattern = resolveCfaPatternForMode(cfaPattern, cfaCorrectionMode)
        val resolvedWhiteLevel = resolveWhiteLevelForMode(whiteLevel.toFloat(), whiteLevelMode).toInt()
        val hasCfaOverride = RawCfaCorrection.isOverrideMode(cfaCorrectionMode)
        val hasWhiteLevelOverride = RawWhiteLevelCorrection.isOverrideMode(whiteLevelMode)
        val requiresCustomWriter = imageLayout != SuperResolutionDngWriter.ImageLayout.CFA ||
                compression != SuperResolutionDngWriter.Compression.UNCOMPRESSED
        if (hasCfaOverride && resolvedCfaPattern != cfaPattern) {
            PLog.d(TAG, "RAW DNG CFA override mode=$cfaCorrectionMode cfa=$cfaPattern->$resolvedCfaPattern")
        }
        if (resolvedWhiteLevel != whiteLevel) {
            PLog.d(TAG, "RAW DNG white level override mode=$whiteLevelMode white=$whiteLevel->$resolvedWhiteLevel")
        }

        val orientation = when (rotation) {
            90 -> ExifInterface.ORIENTATION_ROTATE_90
            180 -> ExifInterface.ORIENTATION_ROTATE_180
            270 -> ExifInterface.ORIENTATION_ROTATE_270
            else -> ExifInterface.ORIENTATION_NORMAL
        }
        if (customWriter || requiresCustomWriter || hasCfaOverride || hasWhiteLevelOverride || !canDngCreatorWriteBuffer(width, height, characteristics)) {
            PLog.i(TAG, "Writing stacked RAW DNG with custom writer: ${width}x${height} layout=$imageLayout compression=$compression")
            return SuperResolutionDngWriter.write(
                outputStream = outputStream,
                rawBuffer = rawBuffer,
                width = width,
                height = height,
                characteristics = characteristics,
                captureResult = captureResult,
                orientation = orientation,
                cfaPattern = resolvedCfaPattern,
                blackLevel = blackLevel,
                whiteLevel = resolvedWhiteLevel,
                valueDomain = valueDomain,
                blackLevelMode = blackLevelMode,
                customBlackLevel = customBlackLevel,
                whiteLevelMode = whiteLevelMode,
                baselineExposureEv = baselineExposureEv,
                profileGainTableMap = profileGainTableMap,
                imageLayout = imageLayout,
                compression = compression,
                inputRowStepSamples = inputRowStepSamples,
                inputColStepSamples = inputColStepSamples,
            )
        }

        val dngCreator = DngCreator(characteristics, captureResult)
        return try {
            dngCreator.setOrientation(orientation)
//            buildDngThumbnail(thumbnail)?.let {
//                dngCreator.setThumbnail(it)
//                PLog.d(TAG, "Embedded stacked DNG thumbnail written: ${it.width}x${it.height}")
//            }

            val dngInputBuffer = rawBuffer.duplicate().order(ByteOrder.nativeOrder())
            if (valueDomain == RawBufferValueDomain.NORMALIZED_SENSOR_RANGE) {
                denormalizeNormalizedRawBufferInPlace(
                    rawBuffer = dngInputBuffer,
                    width = width,
                    height = height,
                    cfaPattern = resolvedCfaPattern,
                    blackLevel = blackLevel,
                    whiteLevel = resolvedWhiteLevel
                )
            }
            dngInputBuffer.rewind()
            dngCreator.writeByteBuffer(outputStream, Size(width, height), dngInputBuffer, 0)
            true
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to save stacked RAW buffer as DNG, ignoring", e)
            false
        } finally {
            dngCreator.close()
        }
    }

    internal fun denormalizeNormalizedRawBufferInPlace(
        rawBuffer: ByteBuffer,
        width: Int,
        height: Int,
        cfaPattern: Int,
        blackLevel: FloatArray,
        whiteLevel: Int,
    ) {
        val output = rawBuffer.order(ByteOrder.nativeOrder()).asShortBuffer()
        var index = 0
        for (y in 0 until height) {
            for (x in 0 until width) {
                val channelIndex = RawCfaCorrection.channelIndexForPixel(cfaPattern, x, y)
                val encoded = output.get(index).toInt() and 0xFFFF
                val channelBlackLevel = blackLevel.getOrElse(channelIndex) { 0f }
                val channelWhiteLevel = whiteLevel.coerceAtLeast(channelBlackLevel.toInt() + 1)
                val sensorValue = ((encoded / 65535f) * (channelWhiteLevel - channelBlackLevel) + channelBlackLevel)
                    .toInt()
                    .coerceIn(0, channelWhiteLevel)
                output.put(index, sensorValue.toShort())
                index++
            }
        }
    }

    private fun canDngCreatorWriteBuffer(
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
    ): Boolean {
        val pixelArraySize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)
        if (pixelArraySize?.width == width && pixelArraySize.height == height) {
            return true
        }
        val preCorrectionSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE)
        if (preCorrectionSize?.width() == width && preCorrectionSize.height() == height) {
            return true
        }
        return false
    }

    private fun buildDngThumbnail(source: Bitmap?): Bitmap? {
        if (source == null || source.isRecycled) {
            return null
        }

        val maxEdge = 256
        val width = source.width.coerceAtLeast(1)
        val height = source.height.coerceAtLeast(1)
        val scale = minOf(maxEdge.toFloat() / width, maxEdge.toFloat() / height, 1f)
        val targetWidth = (width * scale).toInt().coerceAtLeast(1)
        val targetHeight = (height * scale).toInt().coerceAtLeast(1)

        return if (targetWidth == width && targetHeight == height) {
            source
        } else {
            Bitmap.createScaledBitmap(source, targetWidth, targetHeight, true)
        }
    }
}
