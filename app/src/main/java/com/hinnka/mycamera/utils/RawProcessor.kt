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
import com.hinnka.mycamera.processor.GpuLinearRgbSource
import com.hinnka.mycamera.raw.DngProfileGainTableMap
import com.hinnka.mycamera.raw.DngBaselineExposure
import com.hinnka.mycamera.raw.DngProfileToneCurve
import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawDngProfilePreparation
import com.hinnka.mycamera.raw.RawDngProfilePreparationOptions
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.RawProfileToneMapMode
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import com.hinnka.mycamera.raw.toAdobeDefaultMeteringPlan
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

    fun resolveWhiteLevelForMode(
        defaultWhiteLevel: Float,
        whiteLevelMode: String?,
        customWhiteLevel: Float? = null
    ): Float {
        return RawWhiteLevelCorrection.resolveWhiteLevel(defaultWhiteLevel, whiteLevelMode, customWhiteLevel)
    }

    /**
     * The custom LinearRaw DNG writer stores the full buffer as its active image unless the
     * buffer is the physical pixel array with a smaller pre-correction active area. In that
     * exceptional case LibRaw crops the file during unpack, so the original buffer cannot be
     * substituted without applying the same crop first.
     */
    fun canRenderLinearDngBufferDirectly(
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
    ): Boolean {
        val pixelArray = characteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)
        val activeArray = characteristics.get(
            CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE
        )
        val matchesPixelArray = pixelArray?.width == width && pixelArray.height == height
        if (!matchesPixelArray || activeArray == null) return true
        return activeArray.left == 0 && activeArray.top == 0 &&
            activeArray.right == width && activeArray.bottom == height
    }

    /**
     * Builds the metadata that LibRaw would expose after reopening a LinearRaw RGB DNG written
     * by [saveRawBufferToDng]. Pixel-domain fields deliberately follow the serialized DNG rather
     * than the sensor input: normalized black/white levels, no CFA lens-shading opcode, local
     * active area, DNG three-plane noise profile, and the prepared BaselineExposure/PGTM.
     */
    fun buildLinearDngRenderMetadata(
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        baseMetadata: RawMetadata,
        defaultCrop: Rect,
        rotation: Int,
        profilePreparation: RawDngProfilePreparation,
    ): RawMetadata {
        val dngChannelNoise = resolveDngWriterNoiseProfile(captureResult)
        val metadata = buildAdobeDngColorMetadata(
            width = width,
            height = height,
            characteristics = characteristics,
            captureResult = captureResult,
            userExposureCompensation = baseMetadata.exposureBias,
        )
        return metadata.copy(
            width = width,
            height = height,
            blackLevel = floatArrayOf(0f, 0f, 0f, 0f),
            whiteLevel = 65535f,
            lensShadingMap = null,
            lensShadingMapWidth = 0,
            lensShadingMapHeight = 0,
            lensShadingMapGrid = null,
            postRawSensitivityBoost = 1f,
            baselineExposure = DngBaselineExposure.sanitize(profilePreparation.baselineExposureEv),
            shadowScale = 1f,
            noiseProfile = RawMetadata.averageNoiseProfile(dngChannelNoise),
            channelNoiseProfile = dngChannelNoise,
            afRegions = null,
            activeArray = Rect(0, 0, width, height),
            defaultCrop = Rect(defaultCrop),
            aeMode = CaptureResult.CONTROL_AE_MODE_ON,
            exposureCompensation = 0f,
            exposureBias = baseMetadata.exposureBias,
            frameCount = 1,
            rotation = rotation,
            profileGainTableMap = profilePreparation.profileGainTableMap,
        )
    }

    /** Color metadata shared by capture-time metering and the reopened Adobe/default DNG render. */
    private fun buildAdobeDngColorMetadata(
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        userExposureCompensation: Float? = null,
    ): RawMetadata {
        val dngWhiteBalance = resolveDngWriterWhiteBalance(captureResult)
        return RawMetadata.create(
            width = width,
            height = height,
            characteristics = characteristics,
            captureResult = captureResult,
            userExposureCompensation = userExposureCompensation,
            colorSpace = RawRenderingEngine.AdobeCurve.workingColorSpace,
        ).copy(
            whiteBalanceGains = dngWhiteBalance,
            preMul = dngWhiteBalance.copyOf(),
        )
    }

    private fun resolveDngWriterWhiteBalance(captureResult: CaptureResult): FloatArray {
        val neutral = captureResult.get(CaptureResult.SENSOR_NEUTRAL_COLOR_POINT)
            ?.takeIf { it.size >= 3 }
            ?.take(3)
            ?.map { value -> value.numerator.toDouble() / value.denominator.toDouble() }
            ?.takeIf { values -> values.all { it.isFinite() && it > 0.0 } }
        if (neutral != null) {
            val green = neutral[1]
            return floatArrayOf(
                (green / neutral[0]).toFloat(),
                1f,
                1f,
                (green / neutral[2]).toFloat(),
            )
        }

        val gains = captureResult.get(CaptureResult.COLOR_CORRECTION_GAINS)
            ?: return floatArrayOf(1f, 1f, 1f, 1f)
        val green = ((gains.greenEven + gains.greenOdd) * 0.5f)
            .takeIf { it.isFinite() && it > 0f }
            ?: 1f
        return floatArrayOf(
            gains.red.takeIf { it.isFinite() && it > 0f }?.div(green) ?: 1f,
            1f,
            1f,
            gains.blue.takeIf { it.isFinite() && it > 0f }?.div(green) ?: 1f,
        )
    }

    private fun resolveDngWriterNoiseProfile(captureResult: CaptureResult): FloatArray {
        val source = captureResult.get(CaptureResult.SENSOR_NOISE_PROFILE)
            ?.takeIf { it.size >= 3 }
            ?: return floatArrayOf(0f, 0f)

        fun safePair(index: Int): Pair<Float, Float>? {
            val pair = source.getOrNull(index) ?: return null
            val slope = pair.first.takeIf { it.isFinite() && it >= 0.0 }?.toFloat() ?: return null
            val offset = pair.second.takeIf { it.isFinite() && it >= 0.0 }?.toFloat() ?: return null
            return slope to offset
        }

        val red = safePair(0) ?: return floatArrayOf(0f, 0f)
        val green = if (source.size >= 4) {
            val even = safePair(1) ?: return floatArrayOf(0f, 0f)
            val odd = safePair(2) ?: return floatArrayOf(0f, 0f)
            (even.first + odd.first) * 0.5f to (even.second + odd.second) * 0.5f
        } else {
            safePair(1) ?: return floatArrayOf(0f, 0f)
        }
        val blue = safePair(if (source.size >= 4) 3 else 2)
            ?: return floatArrayOf(0f, 0f)
        return floatArrayOf(
            red.first,
            red.second,
            green.first,
            green.second,
            blue.first,
            blue.second,
            0f,
            0f,
        )
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
    suspend fun saveToDng(
        image: SafeImage,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        outputStream: java.io.OutputStream,
        rotation: Int = 0,
        thumbnail: Bitmap? = null,
        blackLevelMode: String? = null,
        customBlackLevel: Float? = null,
        whiteLevelMode: String? = null,
        customWhiteLevel: Float? = null,
        cfaCorrectionMode: String? = null,
        effectiveFocalLengthMm: Float? = null,
        effectiveFocalLength35mm: Int? = null,
        dngProfilePreparationOptions: RawDngProfilePreparationOptions? = null,
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
            customWhiteLevel = customWhiteLevel,
            cfaCorrectionMode = cfaCorrectionMode,
            effectiveFocalLengthMm = effectiveFocalLengthMm,
            effectiveFocalLength35mm = effectiveFocalLength35mm,
            dngProfilePreparationOptions = dngProfilePreparationOptions,
            defaultCrop = resolveCameraRawDefaultCrop(
                width = image.width,
                height = image.height,
                characteristics = characteristics,
                captureResult = captureResult,
            ),
        )
    }

    internal fun resolveCameraRawDefaultCrop(
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
    ): Rect {
        val pixelArray = characteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)
        val preCorrection = characteristics.get(
            CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE
        ) ?: Rect(0, 0, width, height)
        val postCorrection = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)
        val bufferIncludesPixelArray = pixelArray?.width == width && pixelArray.height == height
        val targetWidth = if (bufferIncludesPixelArray) preCorrection.width() else width
        val targetHeight = if (bufferIncludesPixelArray) preCorrection.height() else height
        val scalerCropRegion = captureResult.get(CaptureResult.SCALER_CROP_REGION)
        val zoomRatio = captureResult.get(CaptureResult.CONTROL_ZOOM_RATIO) ?: 1f
        val distortionMode = captureResult.get(CaptureResult.DISTORTION_CORRECTION_MODE)
        val hasDistortionCorrectionControl = characteristics.get(
            CameraCharacteristics.DISTORTION_CORRECTION_AVAILABLE_MODES
        ) != null
        val mapped = RawDngCropMapper.mapToDefaultCrop(
            preCorrectionActiveArray = preCorrection.toRawCropRect(),
            postCorrectionActiveArray = postCorrection?.toRawCropRect(),
            scalerCropRegion = scalerCropRegion?.toRawCropRect(),
            zoomRatio = zoomRatio,
            usePreCorrectionCoordinateSystem = hasDistortionCorrectionControl &&
                distortionMode == CaptureResult.DISTORTION_CORRECTION_MODE_OFF,
            targetWidth = targetWidth,
            targetHeight = targetHeight,
        )
        val defaultCrop = Rect(mapped.left, mapped.top, mapped.right, mapped.bottom)
        PLog.i(
            TAG,
            "RAW_CROP_TRACE stage=CAMERA2_RESULT buffer=${width}x$height " +
                "pixelArray=$pixelArray activePre=$preCorrection activePost=$postCorrection " +
                "scalerCrop=$scalerCropRegion scalerReturned=${scalerCropRegion != null} " +
                "zoomRatio=$zoomRatio distortionMode=$distortionMode " +
                "distortionControl=$hasDistortionCorrectionControl " +
                "coordinateSpace=${if (hasDistortionCorrectionControl && distortionMode == CaptureResult.DISTORTION_CORRECTION_MODE_OFF) "PRE_CORRECTION" else "POST_CORRECTION"} " +
                "dngTarget=${targetWidth}x$targetHeight mappedDefaultCrop=$defaultCrop"
        )
        return defaultCrop
    }

    private fun Rect.toRawCropRect(): RawCropRect = RawCropRect(left, top, right, bottom)

    private suspend fun saveRawImageToDngWithCustomWriter(
        image: SafeImage,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        outputStream: java.io.OutputStream,
        rotation: Int,
        thumbnail: Bitmap?,
        blackLevelMode: String?,
        customBlackLevel: Float?,
        whiteLevelMode: String?,
        customWhiteLevel: Float?,
        cfaCorrectionMode: String?,
        effectiveFocalLengthMm: Float?,
        effectiveFocalLength35mm: Int?,
        dngProfilePreparationOptions: RawDngProfilePreparationOptions?,
        defaultCrop: Rect,
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
            customWhiteLevel = customWhiteLevel,
            cfaCorrectionMode = cfaCorrectionMode,
            effectiveFocalLengthMm = effectiveFocalLengthMm,
            effectiveFocalLength35mm = effectiveFocalLength35mm,
            dngProfilePreparationOptions = dngProfilePreparationOptions,
            defaultCrop = defaultCrop,
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

    suspend fun prepareRawDngProfile(
        rawBuffer: ByteBuffer?,
        gpuLinearRgbSource: GpuLinearRgbSource? = null,
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        cfaPattern: Int = RawMetadata.CFA_RGGB,
        blackLevel: FloatArray = floatArrayOf(0f, 0f, 0f, 0f),
        whiteLevel: Int = 65535,
        valueDomain: RawBufferValueDomain = RawBufferValueDomain.SENSOR,
        blackLevelMode: String? = null,
        customBlackLevel: Float? = null,
        whiteLevelMode: String? = null,
        customWhiteLevel: Float? = null,
        cfaCorrectionMode: String? = null,
        baselineExposureEv: Float? = null,
        imageLayout: SuperResolutionDngWriter.ImageLayout = SuperResolutionDngWriter.ImageLayout.CFA,
        inputRowStepSamples: Int? = null,
        inputColStepSamples: Int? = null,
        options: RawDngProfilePreparationOptions,
        defaultCrop: Rect,
    ): RawDngProfilePreparation? {
        val resolvedCfaPattern = resolveCfaPatternForMode(cfaPattern, cfaCorrectionMode)
        val resolvedBlackLevel = resolveBlackLevelForMode(blackLevel, blackLevelMode, customBlackLevel)
        val resolvedWhiteLevel = resolveWhiteLevelForMode(
            whiteLevel.toFloat(),
            whiteLevelMode,
            customWhiteLevel,
        ).toInt()
        val sourceBaselineExposureEv = DngBaselineExposure.sanitize(
            baselineExposureEv ?: captureResult
                .get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST)
                ?.takeIf { it > 0 }
                ?.let { kotlin.math.log2(it / 100.0).toFloat() }
                ?: 0f
        )
        val inputSamplesPerPixel = inputColStepSamples ?: imageLayout.samplesPerPixel
        val inputRowStrideBytes = (inputRowStepSamples
            ?: width * inputSamplesPerPixel) * Short.SIZE_BYTES
        val statsBlackLevel = if (valueDomain == RawBufferValueDomain.NORMALIZED_SENSOR_RANGE) {
            FloatArray(if (inputSamplesPerPixel >= 3) 3 else 4)
        } else {
            resolvedBlackLevel
        }
        val statsWhiteLevel = if (valueDomain == RawBufferValueDomain.NORMALIZED_SENSOR_RANGE) {
            65535f
        } else {
            resolvedWhiteLevel.toFloat()
        }
        val statsMetadata = buildAdobeDngColorMetadata(
            width = width,
            height = height,
            characteristics = characteristics,
            captureResult = captureResult,
        ).copy(
            width = width,
            height = height,
            cfaPattern = resolvedCfaPattern,
            blackLevel = statsBlackLevel,
            whiteLevel = statsWhiteLevel,
            baselineExposure = sourceBaselineExposureEv,
            defaultCrop = defaultCrop,
        )
        val embeddedDngColorPlan = SuperResolutionDngWriter.resolveEmbeddedRenderPlan(
            characteristics = characteristics,
            metadata = statsMetadata,
            imageLayout = imageLayout,
            profileGainTableMap = null,
            profileToneCurve = null,
        )
        if (embeddedDngColorPlan == null) {
            PLog.e(TAG, "Unable to resolve the DNG color plan for RAW capture-profile preparation")
            return null
        }
        // Metering has one fixed Adobe/default tone pipeline. Reuse only the DNG color solution;
        // layout-specific DNG black-render tags and embedded profile curves must not alter it.
        val meteringRenderPlan = embeddedDngColorPlan.toAdobeDefaultMeteringPlan()
        val captureProfileMetadata = statsMetadata.copy(
            colorCorrectionMatrix = meteringRenderPlan.colorCorrectionMatrix.copyOf(),
            cameraWhite = meteringRenderPlan.cameraWhite.copyOf(),
        )
        val captureProfile = options.captureProfilePreparer?.prepare(
            com.hinnka.mycamera.raw.RawDngCaptureProfileInput(
                rawData = rawBuffer?.duplicate()?.order(ByteOrder.nativeOrder()),
                width = width,
                height = height,
                rowStride = inputRowStrideBytes,
                samplesPerPixel = inputSamplesPerPixel,
                metadata = captureProfileMetadata.copy(profileGainTableMap = null),
                meteringRenderPlan = meteringRenderPlan,
                gpuLinearRgbSource = gpuLinearRgbSource,
            )
        )
        val exposureOffsetEv = captureProfile?.exposureOffsetEv
            ?.takeIf { it.isFinite() }
            ?.coerceIn(
                com.hinnka.mycamera.raw.MeteringSystem.RAW_EXPOSURE_MIN_EV,
                com.hinnka.mycamera.raw.MeteringSystem.RAW_EXPOSURE_MAX_EV,
            )
        val finalBaselineExposureEv = DngBaselineExposure.sanitize(
            sourceBaselineExposureEv + (exposureOffsetEv ?: 0f)
        )
        val profileRequired = options.profileToneMapMode == RawProfileToneMapMode.Photon
        if (profileRequired && captureProfile?.profileGainTableMap == null) {
            PLog.e(
                TAG,
                "GPU RAW profile preparation failed: mode=${options.profileToneMapMode} " +
                    "size=${width}x$height samplesPerPixel=$inputSamplesPerPixel"
            )
            return null
        }
        val profileGainTableMap = captureProfile?.profileGainTableMap?.let { map ->
            if (map.sourceTag == DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2) {
                map
            } else {
                map.copy(sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2)
            }
        }
        return RawDngProfilePreparation(
            baselineExposureEv = finalBaselineExposureEv,
            profileGainTableMap = profileGainTableMap,
        ).also { finalProfile ->
            PLog.i(
                TAG,
                "RAW_VIEWFINDER_BASELINE stage=SHARED_PROFILE_READY " +
                    "enabled=${options.captureProfilePreparer != null} " +
                    "matched=${exposureOffsetEv != null} " +
                    "sourceBaselineEv=$sourceBaselineExposureEv " +
                    "sourceBaselineGain=${DngBaselineExposure.exactGain(sourceBaselineExposureEv)} " +
                    "meteredExposureOffsetEv=${exposureOffsetEv ?: 0f} " +
                    "meteredExposureGain=${DngBaselineExposure.exactGain(exposureOffsetEv ?: 0f)} " +
                    "finalBaselineEv=${finalProfile.baselineExposureEv} " +
                    "finalBaselineGain=${DngBaselineExposure.exactGain(finalProfile.baselineExposureEv)} " +
                    "pgtm=${finalProfile.profileGainTableMap != null} " +
                    "pgtmSource=GPU mode=${options.profileToneMapMode} statsBounds=${options.statsBounds}"
            )
        }
    }

    suspend fun saveRawBufferToDng(
        rawBuffer: ByteBuffer,
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        captureMetadataResult: CaptureResult? = null,
        effectiveFocalLengthMm: Float? = null,
        effectiveFocalLength35mm: Int? = null,
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
        customWhiteLevel: Float? = null,
        cfaCorrectionMode: String? = null,
        baselineExposureEv: Float? = null,
        profileGainTableMap: DngProfileGainTableMap? = null,
        profileName: String? = null,
        profileToneCurve: FloatArray? = null,
        imageLayout: SuperResolutionDngWriter.ImageLayout = SuperResolutionDngWriter.ImageLayout.CFA,
        compression: SuperResolutionDngWriter.Compression = SuperResolutionDngWriter.Compression.UNCOMPRESSED,
        inputRowStepSamples: Int? = null,
        inputColStepSamples: Int? = null,
        dngProfilePreparationOptions: RawDngProfilePreparationOptions? = null,
        defaultCrop: Rect,
        preparedDngProfile: RawDngProfilePreparation? = null,
    ): Boolean {
        val resolvedCfaPattern = resolveCfaPatternForMode(cfaPattern, cfaCorrectionMode)
        val resolvedBlackLevel = resolveBlackLevelForMode(blackLevel, blackLevelMode, customBlackLevel)
        val resolvedWhiteLevel = resolveWhiteLevelForMode(whiteLevel.toFloat(), whiteLevelMode, customWhiteLevel).toInt()
        val hasCfaOverride = RawCfaCorrection.isOverrideMode(cfaCorrectionMode)
        val hasWhiteLevelOverride = RawWhiteLevelCorrection.isOverrideMode(whiteLevelMode)
        val requiresCustomWriter = imageLayout != SuperResolutionDngWriter.ImageLayout.CFA ||
                compression != SuperResolutionDngWriter.Compression.UNCOMPRESSED ||
                dngProfilePreparationOptions != null
        if (hasCfaOverride && resolvedCfaPattern != cfaPattern) {
            PLog.d(TAG, "RAW DNG CFA override mode=$cfaCorrectionMode cfa=$cfaPattern->$resolvedCfaPattern")
        }
        if (resolvedWhiteLevel != whiteLevel) {
            PLog.d(TAG, "RAW DNG white level override mode=$whiteLevelMode white=$whiteLevel->$resolvedWhiteLevel")
        }

        val preparedProfile = preparedDngProfile ?: dngProfilePreparationOptions?.let { options ->
            prepareRawDngProfile(
                rawBuffer = rawBuffer,
                width = width,
                height = height,
                characteristics = characteristics,
                captureResult = captureResult,
                cfaPattern = cfaPattern,
                blackLevel = blackLevel,
                whiteLevel = whiteLevel,
                valueDomain = valueDomain,
                blackLevelMode = blackLevelMode,
                customBlackLevel = customBlackLevel,
                whiteLevelMode = whiteLevelMode,
                customWhiteLevel = customWhiteLevel,
                cfaCorrectionMode = cfaCorrectionMode,
                baselineExposureEv = baselineExposureEv,
                imageLayout = imageLayout,
                inputRowStepSamples = inputRowStepSamples,
                inputColStepSamples = inputColStepSamples,
                options = options,
                defaultCrop = defaultCrop,
            )
        }
        if (dngProfilePreparationOptions != null && preparedProfile == null) return false
        val writtenBaselineExposureEv = preparedProfile?.baselineExposureEv ?: baselineExposureEv
        val writtenProfileGainTableMap = if (dngProfilePreparationOptions != null) {
            preparedProfile?.profileGainTableMap
        } else {
            profileGainTableMap
        }
        val preparedToneMapMode = dngProfilePreparationOptions?.profileToneMapMode
            ?.takeIf { writtenProfileGainTableMap != null }
        val writtenProfileName = if (dngProfilePreparationOptions != null) {
            preparedToneMapMode?.let(::profileNameForToneMapMode)
        } else {
            profileName
        }
        val writtenProfileToneCurve = if (dngProfilePreparationOptions != null) {
            preparedToneMapMode?.let(::profileToneCurveForToneMapMode)
        } else {
            profileToneCurve
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
                captureMetadataResult = captureMetadataResult ?: captureResult,
                effectiveFocalLengthMm = effectiveFocalLengthMm,
                effectiveFocalLength35mm = effectiveFocalLength35mm,
                orientation = orientation,
                cfaPattern = resolvedCfaPattern,
                blackLevel = blackLevel,
                whiteLevel = resolvedWhiteLevel,
                valueDomain = valueDomain,
                blackLevelMode = blackLevelMode,
                customBlackLevel = customBlackLevel,
                whiteLevelMode = whiteLevelMode,
                customWhiteLevel = customWhiteLevel,
                baselineExposureEv = writtenBaselineExposureEv,
                profileGainTableMap = writtenProfileGainTableMap,
                profileName = writtenProfileName,
                profileToneCurve = writtenProfileToneCurve,
                imageLayout = imageLayout,
                compression = compression,
                inputRowStepSamples = inputRowStepSamples,
                inputColStepSamples = inputColStepSamples,
                defaultCrop = defaultCrop,
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

    private fun profileNameForToneMapMode(mode: RawProfileToneMapMode): String {
        require(mode == RawProfileToneMapMode.Photon)
        return DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME
    }

    private fun profileToneCurveForToneMapMode(mode: RawProfileToneMapMode): FloatArray {
        require(mode == RawProfileToneMapMode.Photon)
        return DngProfileToneCurve.photonPgtmToneCurvePoints()
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
