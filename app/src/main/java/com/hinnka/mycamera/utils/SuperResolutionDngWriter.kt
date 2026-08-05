package com.hinnka.mycamera.utils

import android.graphics.Bitmap
import android.graphics.Rect
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CameraMetadata
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.params.ColorSpaceTransform
import android.hardware.camera2.params.LensShadingMap
import android.os.Build
import android.os.SystemClock
import com.hinnka.mycamera.camera.CaptureInfo
import com.hinnka.mycamera.raw.DngProfileGainTableMap
import com.hinnka.mycamera.raw.DngProfileToneCurve
import com.hinnka.mycamera.raw.DngCameraRawProfileXmp
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.DcpDefaultBlackRender
import com.hinnka.mycamera.raw.DcpProfile
import com.hinnka.mycamera.raw.DcpProfileParser
import com.hinnka.mycamera.raw.DcpRenderPlan
import com.hinnka.mycamera.raw.DcpToneCurve
import com.hinnka.mycamera.raw.DngWarpRectilinear
import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import java.io.ByteArrayOutputStream
import java.io.FileOutputStream
import java.io.OutputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.channels.Channels
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import kotlin.math.ln
import kotlin.math.pow
import kotlin.math.roundToInt
import kotlin.math.roundToLong
import kotlin.math.sqrt

/**
 * Converts AOSP DngCreator's normalized Camera2 distortion vector into the six DNG 1.3
 * WarpRectilinear coefficients.
 *
 * normalizeLensDistortion scales element zero as well as the higher-order terms. That first
 * element is the zoom-out needed to keep the corrected frame inside the available RAW source;
 * replacing it with 1.0 makes the edge of the warp sample outside the image.
 */
internal fun camera2DistortionToDngWarpCoefficients(
    normalizedDistortion: DoubleArray,
    maxRadius: Double,
    focal: Double,
): DoubleArray {
    require(normalizedDistortion.size == 6)
    require(maxRadius.isFinite() && maxRadius > 0.0)
    require(focal.isFinite() && focal > 0.0)
    val radiusOverFocal = maxRadius / focal
    val radiusOverFocalSquared = radiusOverFocal * radiusOverFocal
    return doubleArrayOf(
        normalizedDistortion[0],
        normalizedDistortion[1] * radiusOverFocalSquared,
        normalizedDistortion[2] * radiusOverFocalSquared * radiusOverFocalSquared,
        normalizedDistortion[3] * radiusOverFocalSquared * radiusOverFocalSquared *
            radiusOverFocalSquared,
        normalizedDistortion[4] * radiusOverFocal,
        normalizedDistortion[5] * radiusOverFocal,
    )
}

object SuperResolutionDngWriter {
    private const val TAG = "SuperResolutionDngWriter"

    enum class ImageLayout(
        val photometricInterpretation: Int,
        val samplesPerPixel: Int,
    ) {
        CFA(32803, 1),
        LINEAR_RAW_RGB(34892, 3),
    }

    enum class Compression(val tagValue: Int) {
        UNCOMPRESSED(1),
        JPEG_LOSSLESS(7),
    }

    /** Builds the same embedded color/tone plan that [write] serializes into the DNG IFD. */
    fun resolveEmbeddedRenderPlan(
        characteristics: CameraCharacteristics,
        metadata: RawMetadata,
        imageLayout: ImageLayout,
        profileGainTableMap: DngProfileGainTableMap?,
        profileToneCurve: FloatArray?,
    ): DcpRenderPlan? {
        val colorMatrix1 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM1)
            ?.let(::colorTransformToDngMatrix)
            ?.map(Double::toFloat)
            ?.toFloatArray()
        val colorMatrix2 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM2)
            ?.let(::colorTransformToDngMatrix)
            ?.map(Double::toFloat)
            ?.toFloatArray()
        val forwardMatrix1 = if (DeviceUtil.isOppo) {
            null
        } else {
            characteristics.get(CameraCharacteristics.SENSOR_FORWARD_MATRIX1)
                ?.takeIf(::isUsableColorTransform)
                ?.let(::colorTransformToExactDngMatrix)
                ?.map(Double::toFloat)
                ?.toFloatArray()
        }
        val forwardMatrix2 = if (DeviceUtil.isOppo) {
            null
        } else {
            characteristics.get(CameraCharacteristics.SENSOR_FORWARD_MATRIX2)
                ?.takeIf(::isUsableColorTransform)
                ?.let(::colorTransformToExactDngMatrix)
                ?.map(Double::toFloat)
                ?.toFloatArray()
        }
        val illuminant2 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT2)
            ?.toInt()
            ?.takeIf { colorMatrix2 != null }
            ?: 0
        val calibration1 = characteristics.get(CameraCharacteristics.SENSOR_CALIBRATION_TRANSFORM1)
            ?.let(::colorTransformToExactDngMatrix)
            ?.map(Double::toFloat)
            ?.toFloatArray()
        val calibration2 = characteristics.get(CameraCharacteristics.SENSOR_CALIBRATION_TRANSFORM2)
            ?.takeIf { illuminant2 != 0 }
            ?.let(::colorTransformToExactDngMatrix)
            ?.map(Double::toFloat)
            ?.toFloatArray()
        val toneCurve = profileToneCurve
            ?.takeIf { profileGainTableMap != null && it.size >= 4 }
            ?.let(::DcpToneCurve)
            ?.takeIf { it.isValid }
        val profile = DcpProfile(
            profileName = "Embedded",
            calibrationIlluminant1 = characteristics.get(
                CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT1
            ) ?: 21,
            calibrationIlluminant2 = illuminant2,
            baselineExposureOffset = 0f,
            defaultBlackRender = if (
                profileGainTableMap != null || imageLayout == ImageLayout.LINEAR_RAW_RGB
            ) {
                DcpDefaultBlackRender.None
            } else {
                DcpDefaultBlackRender.Auto
            },
            supportsOverrange = false,
            colorMatrix1 = colorMatrix1,
            colorMatrix2 = colorMatrix2,
            forwardMatrix1 = forwardMatrix1,
            forwardMatrix2 = forwardMatrix2,
            hueSatDeltas1 = null,
            hueSatDeltas2 = null,
            lookTable = null,
            toneCurve = toneCurve,
            analogBalance = floatArrayOf(1f, 1f, 1f),
            cameraCalibration1 = calibration1,
            cameraCalibration2 = calibration2,
        )
        return DcpProfileParser.resolveRenderPlan(
            profile = profile,
            metadata = metadata,
            workingColorSpace = ColorSpace.ProPhoto,
        )
    }

    private const val TYPE_BYTE = 1
    private const val TYPE_ASCII = 2
    private const val TYPE_SHORT = 3
    private const val TYPE_LONG = 4
    private const val TYPE_RATIONAL = 5
    private const val TYPE_UNDEFINED = 7
    private const val TYPE_SRATIONAL = 10
    private const val TYPE_FLOAT = 11
    private const val TYPE_DOUBLE = 12
    private const val MAX_TIFF_SHORT = 65_535
    private const val DNG_MATRIX_ROUNDING = 10_000.0
    private val DNG_PCS_TO_XYZ = doubleArrayOf(0.9642957, 1.0, 0.8251046)

    private const val TAG_NEW_SUBFILE_TYPE = 254
    private const val TAG_IMAGE_WIDTH = 256
    private const val TAG_IMAGE_LENGTH = 257
    private const val TAG_BITS_PER_SAMPLE = 258
    private const val TAG_COMPRESSION = 259
    private const val TAG_PHOTOMETRIC_INTERPRETATION = 262
    private const val TAG_MAKE = 271
    private const val TAG_MODEL = 272
    private const val TAG_STRIP_OFFSETS = 273
    private const val TAG_ORIENTATION = 274
    private const val TAG_SAMPLES_PER_PIXEL = 277
    private const val TAG_ROWS_PER_STRIP = 278
    private const val TAG_STRIP_BYTE_COUNTS = 279
    private const val TAG_PLANAR_CONFIGURATION = 284
    private const val TAG_SOFTWARE = 305
    private const val TAG_DATETIME = 306
    private const val TAG_SUB_IFDS = 330
    private const val TAG_XMP = DngCameraRawProfileXmp.TAG_XMP
    private const val TAG_EXIF_IFD_POINTER = 34665
    private const val TAG_EXPOSURE_TIME = 33434
    private const val TAG_F_NUMBER = 33437
    private const val TAG_ISO_SPEED_RATINGS = 34855
    private const val TAG_DATETIME_ORIGINAL = 36867
    private const val TAG_DATETIME_DIGITIZED = 36868
    private const val TAG_APERTURE_VALUE = 37378
    private const val TAG_FOCAL_LENGTH = 37386
    private const val TAG_USER_COMMENT = 37510
    private const val TAG_WHITE_BALANCE = 41987
    private const val TAG_FOCAL_LENGTH_IN_35MM_FILM = 41989
    private const val TAG_LENS_MODEL = 42036
    private const val TAG_CFA_REPEAT_PATTERN_DIM = 33421
    private const val TAG_CFA_PATTERN = 33422
    private const val TAG_DNG_VERSION = 50706
    private const val TAG_DNG_BACKWARD_VERSION = 50707
    private const val TAG_UNIQUE_CAMERA_MODEL = 50708
    private const val TAG_CFA_PLANE_COLOR = 50710
    private const val TAG_CFA_LAYOUT = 50711
    private const val TAG_BLACK_LEVEL_REPEAT_DIM = 50713
    private const val TAG_BLACK_LEVEL = 50714
    private const val TAG_WHITE_LEVEL = 50717
    private const val TAG_DEFAULT_SCALE = 50718
    private const val TAG_DEFAULT_CROP_ORIGIN = 50719
    private const val TAG_DEFAULT_CROP_SIZE = 50720
    private const val TAG_COLOR_MATRIX_1 = 50721
    private const val TAG_COLOR_MATRIX_2 = 50722
    private const val TAG_CAMERA_CALIBRATION_1 = 50723
    private const val TAG_CAMERA_CALIBRATION_2 = 50724
    private const val TAG_PROFILE_TONE_CURVE = 50940
    private const val TAG_FORWARD_MATRIX_1 = 50964
    private const val TAG_FORWARD_MATRIX_2 = 50965
    private const val TAG_AS_SHOT_NEUTRAL = 50728
    private const val TAG_BASELINE_EXPOSURE = 50730
    private const val TAG_CALIBRATION_ILLUMINANT_1 = 50778
    private const val TAG_CALIBRATION_ILLUMINANT_2 = 50779
    private const val TAG_ACTIVE_AREA = 50829
    private const val TAG_OPCODE_LIST_2 = 51009
    private const val TAG_OPCODE_LIST_3 = 51022
    private const val TAG_NOISE_PROFILE = 51041
    private const val TAG_DEFAULT_BLACK_RENDER = 51110
    private const val TAG_PROFILE_GAIN_TABLE_MAP_2 = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2
    private const val PREVIEW_MAX_EDGE = 512
    init {
        runCatching { System.loadLibrary("my-native-lib") }
    }

    private external fun encodeLosslessJpegNative(
        rawBuffer: ByteBuffer,
        width: Int,
        height: Int,
        samplesPerPixel: Int,
        bitsPerSample: Int,
        rowStep: Int,
        colStep: Int,
    ): ByteArray?

    fun write(
        outputStream: OutputStream,
        rawBuffer: ByteBuffer,
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        captureMetadataResult: CaptureResult = captureResult,
        effectiveFocalLengthMm: Float? = null,
        effectiveFocalLength35mm: Int? = null,
        captureInfo: CaptureInfo,
        orientation: Int,
        cfaPattern: Int,
        blackLevel: FloatArray,
        whiteLevel: Int,
        valueDomain: RawProcessor.RawBufferValueDomain,
        blackLevelMode: String? = null,
        customBlackLevel: Float? = null,
        whiteLevelMode: String? = null,
        customWhiteLevel: Float? = null,
        baselineExposureEv: Float? = null,
        profileGainTableMap: DngProfileGainTableMap? = null,
        profileName: String? = null,
        profileToneCurve: FloatArray? = null,
        imageLayout: ImageLayout = ImageLayout.CFA,
        compression: Compression = Compression.UNCOMPRESSED,
        inputRowStepSamples: Int? = null,
        inputColStepSamples: Int? = null,
        pixelsIncludeLensShadingCorrection: Boolean = false,
        defaultCrop: Rect,
    ): Boolean {
        if (width <= 0 || height <= 0) return false

        return runCatching {
            val input = rawBuffer.duplicate().order(ByteOrder.nativeOrder())
            input.rewind()
            val samplesPerPixel = imageLayout.samplesPerPixel

            val resolvedBlackLevel = RawProcessor.resolveBlackLevelForMode(
                defaultBlackLevel = blackLevel,
                blackLevelMode = blackLevelMode,
                customBlackLevel = customBlackLevel
            )
            val hasBlackLevelOverride = blackLevelMode != null && !blackLevel.contentEquals(resolvedBlackLevel)
            val resolvedWhiteLevel = RawWhiteLevelCorrection.resolveWhiteLevel(
                defaultWhiteLevel = whiteLevel.toFloat(),
                mode = whiteLevelMode,
                customWhiteLevel = customWhiteLevel
            ).toInt()

            val encodedBlackLevel = if (valueDomain == RawProcessor.RawBufferValueDomain.NORMALIZED_SENSOR_RANGE) {
                if (hasBlackLevelOverride) {
                    FloatArray(blackLevel.size) { i ->
                        val defaultBL = blackLevel[i]
                        val correctedBL = resolvedBlackLevel.getOrElse(i) { resolvedBlackLevel.firstOrNull() ?: defaultBL }
                        val defaultWL = whiteLevel.toFloat()
                        if (defaultWL > defaultBL) {
                            ((correctedBL - defaultBL) / (defaultWL - defaultBL) * 65535f).coerceIn(0f, 65535f)
                        } else {
                            0f
                        }
                    }
                } else {
                    floatArrayOf(0f, 0f, 0f, 0f)
                }
            } else {
                if (hasBlackLevelOverride) {
                    resolvedBlackLevel
                } else {
                    blackLevel
                }
            }

            val encodedWhiteLevel = if (valueDomain == RawProcessor.RawBufferValueDomain.NORMALIZED_SENSOR_RANGE) {
                65535
            } else {
                resolvedWhiteLevel
            }

            val uncompressedByteCount = width.toLong() * height.toLong() * samplesPerPixel.toLong() * 2L
            require(uncompressedByteCount <= Int.MAX_VALUE) {
                "DNG image is too large for classic TIFF: ${width}x${height} samples=$samplesPerPixel"
            }
            val rowStepSamples = inputRowStepSamples ?: width * samplesPerPixel
            val colStepSamples = inputColStepSamples ?: samplesPerPixel
            require(rowStepSamples >= width * colStepSamples) {
                "Invalid DNG input stride: rowStep=$rowStepSamples colStep=$colStepSamples width=$width"
            }
            if (compression == Compression.UNCOMPRESSED) {
                require(rowStepSamples == width * samplesPerPixel && colStepSamples == samplesPerPixel) {
                    "Uncompressed DNG input must be tightly packed"
                }
            }
            val imageBytes = if (compression == Compression.JPEG_LOSSLESS) {
                encodeLosslessJpegNative(
                    input,
                    width,
                    height,
                    samplesPerPixel,
                    16,
                    rowStepSamples,
                    colStepSamples,
                ) ?: throw IllegalStateException("DNG SDK lossless JPEG encoder failed")
            } else {
                null
            }
            val imageByteCount = imageBytes?.size?.toLong() ?: uncompressedByteCount

            val writtenProfileGainTableMap = profileGainTableMap
                ?.takeIf { it.isValid }
                ?.let { map ->
                    if (map.sourceTag == DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2) {
                        map
                    } else {
                        map.copy(sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2)
                    }
                }
            val directories = buildEntries(
                width = width,
                height = height,
                characteristics = characteristics,
                captureResult = captureResult,
                captureMetadataResult = captureMetadataResult,
                effectiveFocalLengthMm = effectiveFocalLengthMm,
                effectiveFocalLength35mm = effectiveFocalLength35mm,
                captureInfo = captureInfo,
                orientation = orientation,
                cfaPattern = cfaPattern,
                blackLevel = encodedBlackLevel,
                whiteLevel = encodedWhiteLevel,
                imageByteCount = imageByteCount,
                baselineExposureEv = baselineExposureEv,
                profileGainTableMap = writtenProfileGainTableMap,
                profileName = profileName,
                profileToneCurve = profileToneCurve,
                imageLayout = imageLayout,
                compression = compression,
                valueDomain = valueDomain,
                pixelsIncludeLensShadingCorrection = pixelsIncludeLensShadingCorrection,
                defaultCrop = defaultCrop,
            )
            val header = buildHeader(
                primaryEntries = directories.primaryEntries,
                exifEntries = directories.exifEntries,
            )
            outputStream.write(header)
            if (imageBytes != null) {
                outputStream.write(imageBytes)
            } else {
                writeRawImage(outputStream, input, imageByteCount.toInt())
            }
            outputStream.flush()
            PLog.i(
                TAG,
                "Wrote super-resolution DNG ${width}x${height} " +
                    "layout=$imageLayout compression=$compression " +
                    "rowStepSamples=$rowStepSamples colStepSamples=$colStepSamples " +
                    "blackLevel=${encodedBlackLevel.joinToString()} whiteLevel=$encodedWhiteLevel " +
                    "lscInPixels=$pixelsIncludeLensShadingCorrection " +
                    "baselineExposureEv=$baselineExposureEv " +
                    "ifdLayout=raw-ifd0 preview=none " +
                    "defaultBlackRender=${if (writtenProfileGainTableMap != null) "none" else "default"} " +
                    "profileToneCurvePoints=${profileToneCurve?.size?.div(2) ?: 0} " +
                    "cameraRawLook=${if (writtenProfileGainTableMap != null) "pgtm=100,toneCurve=100" else "none"} " +
                    "profileGainTable=${writtenProfileGainTableMap?.let {
                        "tag=${it.sourceTag} ${it.mapPointsH}x${it.mapPointsV}x${it.mapPointsN} gamma=${it.gamma}"
                    } ?: "none"}"
            )
            true
        }.onFailure {
            PLog.w(TAG, "Failed to write super-resolution DNG ${width}x${height}", it)
        }.getOrDefault(false)
    }

    private fun buildEntries(
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        captureMetadataResult: CaptureResult,
        effectiveFocalLengthMm: Float?,
        effectiveFocalLength35mm: Int?,
        captureInfo: CaptureInfo,
        orientation: Int,
        cfaPattern: Int,
        blackLevel: FloatArray,
        whiteLevel: Int,
        imageByteCount: Long,
        baselineExposureEv: Float?,
        profileGainTableMap: DngProfileGainTableMap?,
        profileName: String?,
        profileToneCurve: FloatArray?,
        imageLayout: ImageLayout,
        compression: Compression,
        valueDomain: RawProcessor.RawBufferValueDomain,
        pixelsIncludeLensShadingCorrection: Boolean,
        defaultCrop: Rect,
    ): TiffDirectories {
        // The custom writer is used when the fused RAW dimensions no longer
        // match the camera sensor. The fused buffer already lives in its final
        // Bayer pixel grid, so DefaultScale must stay 1:1. Scaling it back to
        // the physical sensor size makes RAW decoders downsample the >1x DNG
        // before demosaic, which looks blurrier than the original 1x frame.
        val defaultScaleX = 1.0
        val defaultScaleY = 1.0
        val cameraModel = buildCameraModel(characteristics)
        val geometry = resolveDngGeometry(width, height, characteristics, defaultCrop)
        PLog.i(
            TAG,
            "RAW_CROP_TRACE stage=DNG_WRITE buffer=${width}x$height " +
                "activeArea=${geometry.activeArea.contentToString()} " +
                "defaultCropOrigin=${geometry.defaultCropLeft},${geometry.defaultCropTop} " +
                "defaultCropSize=${geometry.defaultCropWidth}x${geometry.defaultCropHeight} " +
                "sourceOrigin=${geometry.sourceOriginX},${geometry.sourceOriginY} " +
                "sourceSize=${geometry.sourceWidth}x${geometry.sourceHeight} " +
                "includesPixelArray=${geometry.bufferIncludesPixelArray} " +
                "scale=${geometry.scaleX},${geometry.scaleY}"
        )
        val illuminant1 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT1) ?: 21
        val illuminant2 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT2)?.toInt()
        val colorMatrix1 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM1)
        val colorMatrix2 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM2)
        val forwardMatrix1 = if (DeviceUtil.isOppo) {
            null
        } else {
            characteristics.get(CameraCharacteristics.SENSOR_FORWARD_MATRIX1)
                ?.takeIf(::isUsableColorTransform)
        }
        val forwardMatrix2 = if (DeviceUtil.isOppo) {
            null
        } else {
            characteristics.get(CameraCharacteristics.SENSOR_FORWARD_MATRIX2)
                ?.takeIf(::isUsableColorTransform)
        }
        val calibrationMatrix1 = characteristics.get(CameraCharacteristics.SENSOR_CALIBRATION_TRANSFORM1)
        val calibrationMatrix2 = characteristics.get(CameraCharacteristics.SENSOR_CALIBRATION_TRANSFORM2)
        val noiseProfile = buildNoiseProfile(captureResult)
        val dateTime = SimpleDateFormat("yyyy:MM:dd HH:mm:ss", Locale.US).format(
            captureMetadataResult.get(CaptureResult.SENSOR_TIMESTAMP)?.let { timestampNs ->
                Date(System.currentTimeMillis() - SystemClock.elapsedRealtime() + timestampNs / 1_000_000L)
            } ?: Date()
        )
        val exposureTimeSeconds = captureMetadataResult.get(CaptureResult.SENSOR_EXPOSURE_TIME)
            ?.takeIf { it > 0L }
            ?.let { it.toDouble() / 1_000_000_000.0 }
        val iso = captureMetadataResult.get(CaptureResult.SENSOR_SENSITIVITY)?.takeIf { it > 0 }
        val aperture = captureMetadataResult.get(CaptureResult.LENS_APERTURE)?.takeIf { it > 0f }
            ?: characteristics.get(CameraCharacteristics.LENS_INFO_AVAILABLE_APERTURES)
                ?.firstOrNull()
                ?.takeIf { it > 0f }
        val physicalFocalLength = captureMetadataResult.get(CaptureResult.LENS_FOCAL_LENGTH)
            ?.takeIf { it > 0f }
        val focalLength = effectiveFocalLengthMm?.takeIf { it > 0f } ?: physicalFocalLength
        val focalLength35mm = effectiveFocalLength35mm?.takeIf { it > 0 }
            ?: calculate35mmEquivalent(characteristics, physicalFocalLength)
        val lensModel = DeviceUtil.buildExifLensModel(
            focalLength35mm = focalLength35mm,
            aperture = aperture,
            model = captureInfo.model,
        )
        val exifWhiteBalance = captureMetadataResult.get(CaptureResult.CONTROL_AWB_MODE)?.let { awbMode ->
            if (awbMode == CameraMetadata.CONTROL_AWB_MODE_AUTO) 0 else 1
        }
        val isCfa = imageLayout == ImageLayout.CFA
        val samplesPerPixel = imageLayout.samplesPerPixel
        val opcodeList2 = if (isCfa && !pixelsIncludeLensShadingCorrection) {
            buildOpcodeList2(
                captureResult = captureResult,
                cfaPattern = cfaPattern,
                geometry = geometry,
            )
        } else {
            null
        }
        val opcodeList3 = if (isCfa) buildOpcodeList3(captureResult, geometry) else null
        val resolvedBaselineExposureEv = baselineExposureEv ?: captureResult
            .get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST)
            ?.takeIf { it > 0 }
            ?.let { kotlin.math.log2(it / 100.0).toFloat() }
            ?: 0f
        val blackLevelRepeatDim = RawCfaCorrection.repeatPatternDim(cfaPattern)
        val encodedBlackLevels = if (isCfa) {
            blackLevelByCfaPosition(cfaPattern, blackLevel)
        } else {
            val red = blackLevel.getOrElse(0) { 0f }
            val green = if (blackLevel.size >= 3) {
                (blackLevel[1] + blackLevel[2]) * 0.5f
            } else {
                blackLevel.getOrElse(1) { red }
            }
            val blue = blackLevel.getOrElse(3) {
                blackLevel.getOrElse(2) { green }
            }
            listOf(red, green, blue)
        }
        val profileLookName = profileName?.takeIf { it.isNotBlank() }
            ?: DngProfileToneCurve.PHOTON_PGTM_PROFILE_NAME
        val cameraRawProfileXmp = profileGainTableMap?.let {
            DngCameraRawProfileXmp.build(
                profileLookName = profileLookName,
            )
        }

        val exifEntries = buildList {
            exposureTimeSeconds?.let { add(rationalArray(TAG_EXPOSURE_TIME, listOf(it))) }
            aperture?.let {
                add(rationalArray(TAG_F_NUMBER, listOf(it.toDouble())))
                add(rationalArray(TAG_APERTURE_VALUE, listOf(apexAperture(it).toDouble())))
            }
            iso?.let { add(short(TAG_ISO_SPEED_RATINGS, it.coerceIn(1, MAX_TIFF_SHORT))) }
            add(ascii(TAG_DATETIME_ORIGINAL, dateTime))
            add(ascii(TAG_DATETIME_DIGITIZED, dateTime))
            focalLength?.let { add(rationalArray(TAG_FOCAL_LENGTH, listOf(it.toDouble()))) }
            if (DeviceUtil.isOppo) {
                add(undefined(TAG_USER_COMMENT, encodeExifAsciiUserComment(OPPO_EXIF_USER_COMMENT)))
            }
            exifWhiteBalance?.let { add(short(TAG_WHITE_BALANCE, it)) }
            focalLength35mm?.let {
                add(short(TAG_FOCAL_LENGTH_IN_35MM_FILM, it.coerceIn(1, MAX_TIFF_SHORT)))
            }
            lensModel?.let { add(ascii(TAG_LENS_MODEL, it)) }
        }.sortedBy { it.tag }

        val primaryEntries = buildList {
            add(long(TAG_NEW_SUBFILE_TYPE, 0))
            add(long(TAG_IMAGE_WIDTH, width.toLong()))
            add(long(TAG_IMAGE_LENGTH, height.toLong()))
            add(shortArray(TAG_BITS_PER_SAMPLE, IntArray(samplesPerPixel) { 16 }))
            add(short(TAG_COMPRESSION, compression.tagValue))
            add(short(TAG_PHOTOMETRIC_INTERPRETATION, imageLayout.photometricInterpretation))
            add(ascii(TAG_MAKE, captureInfo.make))
            add(ascii(TAG_MODEL, captureInfo.model))
            add(long(TAG_STRIP_OFFSETS, 0))
            add(short(TAG_ORIENTATION, orientation))
            add(short(TAG_SAMPLES_PER_PIXEL, samplesPerPixel))
            add(long(TAG_ROWS_PER_STRIP, height.toLong()))
            add(long(TAG_STRIP_BYTE_COUNTS, imageByteCount))
            add(short(TAG_PLANAR_CONFIGURATION, 1))
            cameraRawProfileXmp?.let { add(byteArray(TAG_XMP, it)) }
            add(ascii(TAG_SOFTWARE, "PhotonCamera"))
            add(ascii(TAG_DATETIME, dateTime))
            if (exifEntries.isNotEmpty()) {
                add(long(TAG_EXIF_IFD_POINTER, 0))
            }
            if (isCfa) {
                add(shortArray(TAG_CFA_REPEAT_PATTERN_DIM, RawCfaCorrection.repeatPatternDim(cfaPattern)))
                add(byteArray(TAG_CFA_PATTERN, RawCfaCorrection.cfaPatternBytes(cfaPattern)))
            }
            add(byteArray(TAG_DNG_VERSION, when {
                profileGainTableMap != null -> byteArrayOf(1, 7, 0, 0)
                !isCfa -> byteArrayOf(1, 6, 0, 0)
                else -> byteArrayOf(1, 4, 0, 0)
            }))
            add(byteArray(TAG_DNG_BACKWARD_VERSION, when {
                profileGainTableMap != null -> byteArrayOf(1, 3, 0, 0)
                isCfa -> byteArrayOf(1, 1, 0, 0)
                else -> byteArrayOf(1, 3, 0, 0)
            }))
            add(ascii(TAG_UNIQUE_CAMERA_MODEL, cameraModel))
            if (isCfa) {
                add(byteArray(TAG_CFA_PLANE_COLOR, byteArrayOf(0, 1, 2)))
                add(short(TAG_CFA_LAYOUT, 1))
                add(shortArray(TAG_BLACK_LEVEL_REPEAT_DIM, blackLevelRepeatDim))
            }
            add(rationalArray(TAG_BLACK_LEVEL, encodedBlackLevels.map { it.toDouble() }))
            if (samplesPerPixel == 1) {
                add(long(TAG_WHITE_LEVEL, whiteLevel.coerceAtLeast(1).toLong()))
            } else {
                add(longArray(TAG_WHITE_LEVEL, LongArray(samplesPerPixel) { whiteLevel.coerceAtLeast(1).toLong() }))
            }
            add(rationalArray(TAG_DEFAULT_SCALE, listOf(defaultScaleX, defaultScaleY)))
            add(rationalArray(TAG_DEFAULT_CROP_ORIGIN, listOf(geometry.defaultCropLeft, geometry.defaultCropTop)))
            add(rationalArray(TAG_DEFAULT_CROP_SIZE, listOf(geometry.defaultCropWidth, geometry.defaultCropHeight)))
            colorMatrix1?.let { add(sRationalArray(TAG_COLOR_MATRIX_1, colorTransformToDngMatrix(it))) }
            colorMatrix2?.let { add(sRationalArray(TAG_COLOR_MATRIX_2, colorTransformToDngMatrix(it))) }
            calibrationMatrix1?.let { add(sRationalArray(TAG_CAMERA_CALIBRATION_1, colorTransformToExactDngMatrix(it))) }
            if (illuminant2 != null) {
                calibrationMatrix2?.let { add(sRationalArray(TAG_CAMERA_CALIBRATION_2, colorTransformToExactDngMatrix(it))) }
            }
            forwardMatrix1?.let {
                add(sRationalArray(TAG_FORWARD_MATRIX_1, colorTransformToExactDngMatrix(it)))
            }
            if (illuminant2 != null && colorMatrix2 != null) {
                forwardMatrix2?.let {
                    add(sRationalArray(TAG_FORWARD_MATRIX_2, colorTransformToExactDngMatrix(it)))
                }
            }
            add(rationalArray(TAG_AS_SHOT_NEUTRAL, asShotNeutral(captureResult)))
            if (profileGainTableMap != null) {
                add(long(TAG_DEFAULT_BLACK_RENDER, 1))
            } else if (!isCfa) {
                add(long(TAG_DEFAULT_BLACK_RENDER, 1))
            }
            add(sRationalArray(TAG_BASELINE_EXPOSURE, listOf(resolvedBaselineExposureEv.toDouble())))
            if (profileGainTableMap != null) {
                add(floatArray(TAG_PROFILE_TONE_CURVE, profileToneCurve?.takeIf { it.size >= 4 }
                    ?: DngProfileToneCurve.photonPgtmToneCurvePoints()))
            }
            add(short(TAG_CALIBRATION_ILLUMINANT_1, illuminant1))
            if (illuminant2 != null && colorMatrix2 != null) {
                add(short(TAG_CALIBRATION_ILLUMINANT_2, illuminant2))
            }
            add(longArray(TAG_ACTIVE_AREA, geometry.activeArea))
            opcodeList2?.let { add(undefined(TAG_OPCODE_LIST_2, it)) }
            opcodeList3?.let { add(undefined(TAG_OPCODE_LIST_3, it)) }
            noiseProfile?.let { add(doubleArray(TAG_NOISE_PROFILE, it)) }
            profileGainTableMap?.let {
                add(undefined(TAG_PROFILE_GAIN_TABLE_MAP_2, it.encodeProfileGainTableMap2(ByteOrder.LITTLE_ENDIAN)))
            }
        }.sortedBy { it.tag }

        return TiffDirectories(
            primaryEntries = primaryEntries,
            exifEntries = exifEntries,
        ).also {
            PLog.i(
                TAG,
                "DNG focal metadata: physical=${physicalFocalLength ?: "none"}mm " +
                    "recorded=${effectiveFocalLengthMm ?: "none"}mm " +
                    "encoded=${focalLength ?: "none"}mm " +
                    "equivalent35mm=${focalLength35mm ?: "none"}mm"
            )
        }
    }

    private fun encodeDirectoryEntries(
        entries: List<TiffEntry>,
        dataBaseOffset: Int,
    ): Pair<List<EncodedEntry>, ByteArray> {
        val dataArea = ByteArrayOutputStream()
        val encodedEntries = entries.map { entry ->
            if (entry.value.size <= 4) {
                EncodedEntry(entry, inlineValue(entry.value))
            } else {
                if ((dataArea.size() and 1) != 0) dataArea.write(0)
                val offset = dataBaseOffset + dataArea.size()
                dataArea.write(entry.value)
                EncodedEntry(entry, uintBytes(offset.toLong()))
            }
        }
        if ((dataArea.size() and 1) != 0) dataArea.write(0)
        return encodedEntries to dataArea.toByteArray()
    }

    private fun buildHeader(
        primaryEntries: List<TiffEntry>,
        exifEntries: List<TiffEntry>,
    ): ByteArray = buildHeader(
        primaryEntries = primaryEntries,
        exifEntries = exifEntries,
        rawEntries = emptyList(),
        previewByteCount = 0,
    )

    private fun buildHeader(
        primaryEntries: List<TiffEntry>,
        exifEntries: List<TiffEntry>,
        rawEntries: List<TiffEntry>,
        previewByteCount: Int,
    ): ByteArray {
        require(previewByteCount >= 0)
        require(rawEntries.isNotEmpty() || previewByteCount == 0) {
            "Preview image requires a RAW SubIFD"
        }
        val primaryEntryCount = primaryEntries.size
        val primaryDataBaseOffset = 8 + 2 + primaryEntryCount * 12 + 4
        val (encodedPrimaryEntries, primaryData) = encodeDirectoryEntries(
            entries = primaryEntries,
            dataBaseOffset = primaryDataBaseOffset,
        )

        val exifIfdOffset = if (exifEntries.isNotEmpty()) {
            primaryDataBaseOffset + primaryData.size
        } else {
            0
        }
        val exifDataBaseOffset = if (exifEntries.isNotEmpty()) {
            exifIfdOffset + 2 + exifEntries.size * 12 + 4
        } else {
            primaryDataBaseOffset + primaryData.size
        }
        val (encodedExifEntries, exifData) = encodeDirectoryEntries(
            entries = exifEntries,
            dataBaseOffset = exifDataBaseOffset,
        )
        val rawIfdOffset = if (rawEntries.isNotEmpty()) {
            exifDataBaseOffset + exifData.size
        } else {
            0
        }
        val rawDataBaseOffset = if (rawEntries.isNotEmpty()) {
            rawIfdOffset + 2 + rawEntries.size * 12 + 4
        } else {
            exifDataBaseOffset + exifData.size
        }
        val (encodedRawEntries, rawIfdData) = encodeDirectoryEntries(
            entries = rawEntries,
            dataBaseOffset = rawDataBaseOffset,
        )
        val previewOffset = rawDataBaseOffset + rawIfdData.size
        val previewPadding = if ((previewByteCount and 1) != 0) 1 else 0
        val rawOffset = previewOffset + previewByteCount + previewPadding
        val headerEndOffset = if (rawEntries.isNotEmpty()) previewOffset else rawOffset
        val out = ByteArrayOutputStream(headerEndOffset)
        out.write(byteArrayOf('I'.code.toByte(), 'I'.code.toByte()))
        out.write(ushortBytes(42))
        out.write(uintBytes(8))
        out.write(ushortBytes(primaryEntryCount))
        for (encoded in encodedPrimaryEntries) {
            out.write(ushortBytes(encoded.entry.tag))
            out.write(ushortBytes(encoded.entry.type))
            out.write(uintBytes(encoded.entry.count))
            val value = when (encoded.entry.tag) {
                TAG_STRIP_OFFSETS -> uintBytes(
                    if (rawEntries.isNotEmpty()) previewOffset.toLong() else rawOffset.toLong()
                )
                TAG_EXIF_IFD_POINTER -> uintBytes(exifIfdOffset.toLong())
                TAG_SUB_IFDS -> uintBytes(rawIfdOffset.toLong())
                else -> encoded.valueOrOffset
            }
            out.write(value)
        }
        out.write(uintBytes(0))
        out.write(primaryData)

        if (exifEntries.isNotEmpty()) {
            check(out.size() == exifIfdOffset) {
                "ExifIFD offset mismatch: expected=$exifIfdOffset actual=${out.size()}"
            }
            out.write(ushortBytes(exifEntries.size))
            for (encoded in encodedExifEntries) {
                out.write(ushortBytes(encoded.entry.tag))
                out.write(ushortBytes(encoded.entry.type))
                out.write(uintBytes(encoded.entry.count))
                out.write(encoded.valueOrOffset)
            }
            out.write(uintBytes(0))
            out.write(exifData)
        }

        if (rawEntries.isNotEmpty()) {
            check(out.size() == rawIfdOffset) {
                "RAW SubIFD offset mismatch: expected=$rawIfdOffset actual=${out.size()}"
            }
            out.write(ushortBytes(rawEntries.size))
            for (encoded in encodedRawEntries) {
                out.write(ushortBytes(encoded.entry.tag))
                out.write(ushortBytes(encoded.entry.type))
                out.write(uintBytes(encoded.entry.count))
                val value = if (encoded.entry.tag == TAG_STRIP_OFFSETS) {
                    uintBytes(rawOffset.toLong())
                } else {
                    encoded.valueOrOffset
                }
                out.write(value)
            }
            out.write(uintBytes(0))
            out.write(rawIfdData)
        }
        check(out.size() == headerEndOffset) {
            "DNG header offset mismatch: expected=$headerEndOffset actual=${out.size()}"
        }
        return out.toByteArray()
    }

    private fun buildPreview(
        source: Bitmap?,
        rawBuffer: ByteBuffer,
        rawWidth: Int,
        rawHeight: Int,
        imageLayout: ImageLayout,
        rowStepSamples: Int,
        colStepSamples: Int,
        blackLevel: FloatArray,
        whiteLevel: Int,
    ): DngPreview {
        if (source == null || source.isRecycled || source.width <= 0 || source.height <= 0) {
            return buildRawPreview(
                rawBuffer = rawBuffer,
                rawWidth = rawWidth,
                rawHeight = rawHeight,
                imageLayout = imageLayout,
                rowStepSamples = rowStepSamples,
                colStepSamples = colStepSamples,
                blackLevel = blackLevel,
                whiteLevel = whiteLevel,
            )
        }
        val scale = minOf(
            PREVIEW_MAX_EDGE.toFloat() / source.width.toFloat(),
            PREVIEW_MAX_EDGE.toFloat() / source.height.toFloat(),
            1f,
        )
        val width = (source.width * scale).roundToInt().coerceAtLeast(1)
        val height = (source.height * scale).roundToInt().coerceAtLeast(1)
        val sizedBitmap = if (width == source.width && height == source.height) {
            source
        } else {
            Bitmap.createScaledBitmap(source, width, height, true)
        }
        val readableBitmap = if (sizedBitmap.config == Bitmap.Config.HARDWARE) {
            requireNotNull(sizedBitmap.copy(Bitmap.Config.ARGB_8888, false)) {
                "Unable to copy hardware DNG preview bitmap"
            }
        } else {
            sizedBitmap
        }
        return try {
            val pixels = IntArray(width * height)
            readableBitmap.getPixels(pixels, 0, width, 0, 0, width, height)
            val rgb = ByteArray(pixels.size * 3)
            var outputIndex = 0
            for (pixel in pixels) {
                rgb[outputIndex++] = ((pixel ushr 16) and 0xFF).toByte()
                rgb[outputIndex++] = ((pixel ushr 8) and 0xFF).toByte()
                rgb[outputIndex++] = (pixel and 0xFF).toByte()
            }
            DngPreview(width = width, height = height, bytes = rgb, source = "bitmap")
        } finally {
            if (readableBitmap !== sizedBitmap) readableBitmap.recycle()
            if (sizedBitmap !== source) sizedBitmap.recycle()
        }
    }

    private fun buildRawPreview(
        rawBuffer: ByteBuffer,
        rawWidth: Int,
        rawHeight: Int,
        imageLayout: ImageLayout,
        rowStepSamples: Int,
        colStepSamples: Int,
        blackLevel: FloatArray,
        whiteLevel: Int,
    ): DngPreview {
        require(rawWidth > 0 && rawHeight > 0)
        val samplesPerPixel = imageLayout.samplesPerPixel
        val lastSampleIndex = (rawHeight - 1).toLong() * rowStepSamples.toLong() +
            (rawWidth - 1).toLong() * colStepSamples.toLong() +
            (samplesPerPixel - 1).toLong()
        require(lastSampleIndex >= 0L && (lastSampleIndex + 1L) * 2L <= rawBuffer.capacity().toLong()) {
            "RAW preview source exceeds input buffer"
        }
        val scale = minOf(
            PREVIEW_MAX_EDGE.toFloat() / rawWidth.toFloat(),
            PREVIEW_MAX_EDGE.toFloat() / rawHeight.toFloat(),
            1f,
        )
        val width = (rawWidth * scale).roundToInt().coerceAtLeast(1)
        val height = (rawHeight * scale).roundToInt().coerceAtLeast(1)
        val input = rawBuffer.duplicate().order(ByteOrder.nativeOrder())
        val rgb = ByteArray(width * height * 3)
        var outputIndex = 0
        for (previewY in 0 until height) {
            val sourceY = (((previewY + 0.5f) * rawHeight) / height)
                .toInt()
                .coerceIn(0, rawHeight - 1)
            for (previewX in 0 until width) {
                val sourceX = (((previewX + 0.5f) * rawWidth) / width)
                    .toInt()
                    .coerceIn(0, rawWidth - 1)
                val sampleOffset = sourceY * rowStepSamples + sourceX * colStepSamples
                if (samplesPerPixel == 1) {
                    val gray = previewSample(
                        input = input,
                        sampleIndex = sampleOffset,
                        blackLevel = blackLevel.firstOrNull() ?: 0f,
                        whiteLevel = whiteLevel,
                    )
                    rgb[outputIndex++] = gray
                    rgb[outputIndex++] = gray
                    rgb[outputIndex++] = gray
                } else {
                    repeat(3) { channel ->
                        rgb[outputIndex++] = previewSample(
                            input = input,
                            sampleIndex = sampleOffset + channel,
                            blackLevel = blackLevel.getOrElse(channel) { blackLevel.firstOrNull() ?: 0f },
                            whiteLevel = whiteLevel,
                        )
                    }
                }
            }
        }
        return DngPreview(width = width, height = height, bytes = rgb, source = "raw")
    }

    private fun previewSample(
        input: ByteBuffer,
        sampleIndex: Int,
        blackLevel: Float,
        whiteLevel: Int,
    ): Byte {
        val raw = input.getShort(sampleIndex * 2).toInt() and 0xFFFF
        val range = (whiteLevel.toFloat() - blackLevel).coerceAtLeast(1f)
        val linear = ((raw.toFloat() - blackLevel) / range).coerceIn(0f, 1f)
        val encoded = if (linear <= 0.0031308f) {
            linear * 12.92f
        } else {
            1.055f * linear.toDouble().pow(1.0 / 2.4).toFloat() - 0.055f
        }
        return (encoded.coerceIn(0f, 1f) * 255f).roundToInt().toByte()
    }

    private fun writeRawImage(outputStream: OutputStream, rawBuffer: ByteBuffer, byteCount: Int) {
        val imageBytes = rawBuffer.duplicate()
        imageBytes.position(0)
        imageBytes.limit(byteCount.coerceAtMost(imageBytes.capacity()))

        if (ByteOrder.nativeOrder() == ByteOrder.LITTLE_ENDIAN) {
            if (outputStream is FileOutputStream) {
                outputStream.channel.writeFully(imageBytes)
                return
            }
            Channels.newChannel(outputStream).writeFully(imageBytes)
            return
        }

        val shorts = rawBuffer.order(ByteOrder.nativeOrder()).asShortBuffer()
        val chunk = ByteArray(1024 * 1024)
        var remainingShorts = byteCount / 2
        while (remainingShorts > 0) {
            val shortsThisChunk = minOf(remainingShorts, chunk.size / 2)
            var out = 0
            repeat(shortsThisChunk) {
                val value = shorts.get().toInt() and 0xFFFF
                chunk[out++] = (value and 0xFF).toByte()
                chunk[out++] = ((value ushr 8) and 0xFF).toByte()
            }
            outputStream.write(chunk, 0, shortsThisChunk * 2)
            remainingShorts -= shortsThisChunk
        }
    }

    private fun java.nio.channels.WritableByteChannel.writeFully(buffer: ByteBuffer) {
        while (buffer.hasRemaining()) {
            write(buffer)
        }
    }

    private fun buildCameraModel(characteristics: CameraCharacteristics): String {
        val hardwareLevel = characteristics.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL)
        return listOfNotNull(
            Build.MANUFACTURER.takeIf { it.isNotBlank() },
            Build.MODEL.takeIf { it.isNotBlank() },
            hardwareLevel?.let { "Camera2-$it" }
        ).joinToString(" ").ifBlank { "Photon Camera" }
    }

    private fun apexAperture(fNumber: Float): Float {
        if (fNumber <= 0f) return 0f
        return (2.0 * ln(fNumber.toDouble()) / ln(2.0)).toFloat()
    }

    private fun calculate35mmEquivalent(
        characteristics: CameraCharacteristics,
        physicalFocalLength: Float?,
    ): Int? {
        val fl = physicalFocalLength?.takeIf { it > 0f } ?: return null
        val sensorSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE) ?: return null
        val sensorDiagonal = sqrt(
            sensorSize.width.toDouble() * sensorSize.width.toDouble() +
                sensorSize.height.toDouble() * sensorSize.height.toDouble()
        )
        if (sensorDiagonal <= 0.0) return null
        val fullFrameDiagonal = 43.2666
        return (fl * fullFrameDiagonal / sensorDiagonal).roundToInt().takeIf { it > 0 }
    }

    private fun blackLevelByCfaPosition(cfaPattern: Int, blackLevel: FloatArray): List<Float> {
        fun channel(index: Int): Float = blackLevel.getOrElse(index) { blackLevel.firstOrNull() ?: 0f }
        val dim = RawCfaCorrection.repeatPatternDim(cfaPattern)
        return buildList(dim[0] * dim[1]) {
            for (y in 0 until dim[0]) {
                for (x in 0 until dim[1]) {
                    add(channel(RawCfaCorrection.channelIndexForPixel(cfaPattern, x, y)))
                }
            }
        }
    }

    private fun buildOpcodeList2(
        captureResult: CaptureResult,
        cfaPattern: Int,
        geometry: DngGeometry,
    ): ByteArray? {
        val lensShadingMap = captureResult.get(CaptureResult.STATISTICS_LENS_SHADING_CORRECTION_MAP)
        val dim = RawCfaCorrection.repeatPatternDim(cfaPattern)
        val encodedOpcodes = mutableListOf<ByteArray>()
        if (lensShadingMap != null && lensShadingMap.columnCount > 0 && lensShadingMap.rowCount > 0) {
            for (top in 0 until dim[0]) {
                for (left in 0 until dim[1]) {
                    val channel = RawCfaCorrection.camera2LensShadingChannelIndexForPixel(cfaPattern, left, top)
                    encodedOpcodes += buildGainMapOpcode(
                        lensShadingMap, channel, top, left, dim[0], dim[1], geometry.width, geometry.height
                    )
                }
            }
        }
        buildBadPixelOpcode(captureResult, cfaPattern, geometry)?.let(encodedOpcodes::add)
        if (encodedOpcodes.isEmpty()) return null
        val opcodes = ByteArrayOutputStream()
        opcodes.write(beUInt(encodedOpcodes.size.toLong()))
        encodedOpcodes.forEach(opcodes::write)
        return opcodes.toByteArray()
    }

    private fun buildBadPixelOpcode(
        captureResult: CaptureResult,
        cfaPattern: Int,
        geometry: DngGeometry,
    ): ByteArray? {
        if (cfaPattern !in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR) return null
        // A Camera2 hot-pixel map addresses physical sensor samples. It cannot be
        // represented as isolated CFA points after spatial resampling.
        if (geometry.scaleX != 1.0 || geometry.scaleY != 1.0) {
            PLog.d(TAG, "Skipping FixBadPixelsList for resampled DNG geometry")
            return null
        }
        val points = captureResult.get(CaptureResult.STATISTICS_HOT_PIXEL_MAP)
            ?.mapNotNull { point ->
                val x = ((point.x - geometry.sourceOriginX) * geometry.scaleX).roundToInt()
                val y = ((point.y - geometry.sourceOriginY) * geometry.scaleY).roundToInt()
                if (x in 0 until geometry.width && y in 0 until geometry.height) x to y else null
            }
            ?.distinct()
            .orEmpty()
        if (points.isEmpty()) return null
        val payload = ByteArrayOutputStream()
        payload.write(beUInt(dngSdkBayerPhase(cfaPattern).toLong()))
        payload.write(beUInt(points.size.toLong()))
        payload.write(beUInt(0))
        points.forEach { (x, y) ->
            payload.write(beUInt(y.toLong()))
            payload.write(beUInt(x.toLong()))
        }
        PLog.d(
            TAG,
            "Writing DNG FixBadPixelsList: phase=${dngSdkBayerPhase(cfaPattern)} points=${points.size}"
        )
        return buildOpcode(id = 5, flags = 1, payload = payload.toByteArray())
    }

    /** DNG SDK Bayer phase order is GRBG=0, RGGB=1, BGGR=2, GBRG=3. */
    private fun dngSdkBayerPhase(cfaPattern: Int): Int = when (cfaPattern) {
        RawMetadata.CFA_GRBG -> 0
        RawMetadata.CFA_RGGB -> 1
        RawMetadata.CFA_BGGR -> 2
        RawMetadata.CFA_GBRG -> 3
        else -> error("Unsupported Bayer CFA pattern: $cfaPattern")
    }

    private fun buildGainMapOpcode(
        lensShadingMap: LensShadingMap,
        channel: Int,
        top: Int,
        left: Int,
        rowPitch: Int,
        colPitch: Int,
        width: Int,
        height: Int,
    ): ByteArray {
        val payload = ByteArrayOutputStream()
        payload.write(beInt(top))
        payload.write(beInt(left))
        payload.write(beInt(height))
        payload.write(beInt(width))
        payload.write(beUInt(0))
        payload.write(beUInt(1))
        payload.write(beUInt(rowPitch.toLong()))
        payload.write(beUInt(colPitch.toLong()))
        payload.write(beUInt(lensShadingMap.rowCount.toLong()))
        payload.write(beUInt(lensShadingMap.columnCount.toLong()))
        payload.write(beDouble(if (lensShadingMap.rowCount > 1) 1.0 / (lensShadingMap.rowCount - 1).toDouble() else 1.0))
        payload.write(beDouble(if (lensShadingMap.columnCount > 1) 1.0 / (lensShadingMap.columnCount - 1).toDouble() else 1.0))
        payload.write(beDouble(0.0))
        payload.write(beDouble(0.0))
        payload.write(beUInt(1))

        for (row in 0 until lensShadingMap.rowCount) {
            for (col in 0 until lensShadingMap.columnCount) {
                payload.write(beFloat(lensShadingMap.getGainFactor(channel, col, row)))
            }
        }

        val opcode = ByteArrayOutputStream()
        opcode.write(beUInt(9))
        opcode.write(beUInt(0x01030000L))
        opcode.write(beUInt(0))
        opcode.write(beUInt(payload.size().toLong()))
        opcode.write(payload.toByteArray())
        return opcode.toByteArray()
    }

    private fun buildOpcodeList3(captureResult: CaptureResult, geometry: DngGeometry): ByteArray? {
        if (kotlin.math.abs(geometry.scaleX - geometry.scaleY) > 1e-9) {
            PLog.w(TAG, "Skipping WarpRectilinear for non-uniformly scaled DNG geometry")
            return null
        }
        val intrinsics = captureResult.get(CaptureResult.LENS_INTRINSIC_CALIBRATION)
            ?.takeIf { it.size == 5 }
            ?: return null
        val distortion = captureResult.get(CaptureResult.LENS_DISTORTION)
            ?.takeIf { it.size == 5 }
            ?: return null
        val focal = intrinsics[0].takeIf { it.isFinite() && it > 0f } ?: return null
        // Camera2 intrinsic coordinates are relative to the pre-correction active array.
        val cx = intrinsics[2]
        val cy = intrinsics[3]
        val normalizedDistortion = doubleArrayOf(
            1.0,
            distortion[0].toDouble(),
            distortion[1].toDouble(),
            distortion[2].toDouble(),
            distortion[3].toDouble(),
            distortion[4].toDouble(),
        )
        val normalizeCx = if (geometry.bufferIncludesPixelArray) cx + geometry.sourceOriginX else cx
        val normalizeCy = if (geometry.bufferIncludesPixelArray) cy + geometry.sourceOriginY else cy
        val xMin = if (geometry.bufferIncludesPixelArray) geometry.sourceOriginX else 0
        val yMin = if (geometry.bufferIncludesPixelArray) geometry.sourceOriginY else 0
        if (!normalizeLensDistortion(
                normalizedDistortion,
                normalizeCx.toDouble(),
                normalizeCy.toDouble(),
                focal.toDouble(),
                geometry.sourceWidth,
                geometry.sourceHeight,
                xMin,
                yMin,
            )
        ) {
            PLog.w(TAG, "Skipping WarpRectilinear because no source-covered normalization exists")
            return null
        }

        val maxX = maxOf(geometry.sourceWidth - cx, cx).toDouble()
        val maxY = maxOf(geometry.sourceHeight - cy, cy).toDouble()
        val maxRadius = sqrt(maxX * maxX + maxY * maxY)
        if (!maxRadius.isFinite() || maxRadius <= 0.0) return null
        val coefficients = camera2DistortionToDngWarpCoefficients(
            normalizedDistortion = normalizedDistortion,
            maxRadius = maxRadius,
            focal = focal.toDouble(),
        )
        if (coefficients.any { !it.isFinite() }) return null
        val stage3Width = if (geometry.bufferIncludesPixelArray) {
            geometry.sourceWidth
        } else {
            geometry.width
        }
        val stage3Height = if (geometry.bufferIncludesPixelArray) {
            geometry.sourceHeight
        } else {
            geometry.height
        }
        val centerH = (cx / geometry.sourceWidth).toDouble().coerceIn(0.0, 1.0)
        val centerV = (cy / geometry.sourceHeight).toDouble().coerceIn(0.0, 1.0)
        val parameters = FloatArray(8) { index ->
            when {
                index < 6 -> coefficients[index].toFloat()
                index == 6 -> centerH.toFloat()
                else -> centerV.toFloat()
            }
        }
        val cropRight = (geometry.defaultCropLeft + geometry.defaultCropWidth).roundToInt()
        val cropBottom = (geometry.defaultCropTop + geometry.defaultCropHeight).roundToInt()
        if (!DngWarpRectilinear.hasSourceCoverage(
                parameters = parameters,
                width = stage3Width,
                height = stage3Height,
                left = geometry.defaultCropLeft.roundToInt(),
                top = geometry.defaultCropTop.roundToInt(),
                right = cropRight,
                bottom = cropBottom,
            )
        ) {
            PLog.w(
                TAG,
                "Skipping WarpRectilinear because DefaultCrop lacks source coverage: " +
                    "stage3=${stage3Width}x$stage3Height " +
                    "crop=${geometry.defaultCropLeft},${geometry.defaultCropTop}," +
                    "$cropRight,$cropBottom coefficients=${coefficients.contentToString()}",
            )
            return null
        }
        val payload = ByteArrayOutputStream()
        payload.write(beUInt(1))
        coefficients.forEach { payload.write(beDouble(it)) }
        payload.write(beDouble(centerH))
        payload.write(beDouble(centerV))
        val opcode = buildOpcode(id = 1, flags = 1, payload = payload.toByteArray())
        return ByteArrayOutputStream().apply {
            write(beUInt(1))
            write(opcode)
        }.toByteArray()
    }

    /** Mirrors AOSP DngCreator normalizeLensDistortion exactly. */
    private fun normalizeLensDistortion(
        distortion: DoubleArray,
        cx: Double,
        cy: Double,
        focal: Double,
        preCorrectionWidth: Int,
        preCorrectionHeight: Int,
        xMin: Int,
        yMin: Int,
    ): Boolean {
        val scale = findPostCorrectionScale(
            distortion,
            cx,
            cy,
            focal,
            preCorrectionWidth,
            preCorrectionHeight,
            xMin,
            yMin,
        ) ?: return false
        val scalePowers = intArrayOf(1, 3, 5, 7, 2, 2)
        distortion.indices.forEach { index ->
            distortion[index] *= Math.pow(scale, scalePowers[index].toDouble())
        }
        PLog.d(TAG, "DNG WarpRectilinear post-correction scale=$scale")
        return true
    }

    private fun findPostCorrectionScale(
        distortion: DoubleArray,
        cx: Double,
        cy: Double,
        focal: Double,
        width: Int,
        height: Int,
        xMin: Int,
        yMin: Int,
    ): Double? {
        var scale = 1.0
        while (scale > 0.5) {
            if (scaledBoxWithinPreCorrectionArray(
                    scale, distortion, cx, cy, focal, width, height, xMin, yMin
                )
            ) return scale
            scale -= 0.002
        }
        PLog.w(TAG, "Unable to find DngCreator-compatible post-correction scale; retaining original distortion")
        return null
    }

    private fun scaledBoxWithinPreCorrectionArray(
        scale: Double,
        distortion: DoubleArray,
        cx: Double,
        cy: Double,
        focal: Double,
        width: Int,
        height: Int,
        xMin: Int,
        yMin: Int,
    ): Boolean {
        val left = cx * (1.0 - scale)
        val right = (width - 1) * scale + cx * (1.0 - scale)
        val top = cy * (1.0 - scale)
        val bottom = (height - 1) * scale + cy * (1.0 - scale)
        val points = arrayOf(
            left to top, cx to top, right to top,
            left to cy, right to cy,
            left to bottom, cx to bottom, right to bottom,
        )
        return points.all { (x, y) ->
            undistortedPointWithinPreCorrectionArray(
                x, y, distortion, cx, cy, focal, width, height, xMin, yMin
            )
        }
    }

    private fun undistortedPointWithinPreCorrectionArray(
        x: Double,
        y: Double,
        distortion: DoubleArray,
        cx: Double,
        cy: Double,
        focal: Double,
        width: Int,
        height: Int,
        xMin: Int,
        yMin: Int,
    ): Boolean {
        val xp = (x - cx) / focal
        val yp = (y - cy) / focal
        val x2 = xp * xp
        val y2 = yp * yp
        val r2 = x2 + y2
        val twiceXy = 2.0 * xp * yp
        val radial = distortion[0] +
            ((distortion[3] * r2 + distortion[2]) * r2 + distortion[1]) * r2
        val mappedX = (xp * radial + distortion[4] * twiceXy +
            distortion[5] * (r2 + 2.0 * x2)) * focal + cx
        val mappedY = (yp * radial + distortion[4] * (r2 + 2.0 * y2) +
            distortion[5] * twiceXy) * focal + cy
        return mappedX >= xMin && mappedY >= yMin &&
            mappedX < xMin + width && mappedY < yMin + height
    }

    private fun buildOpcode(id: Int, flags: Int, payload: ByteArray): ByteArray =
        ByteArrayOutputStream().apply {
            write(beUInt(id.toLong()))
            write(beUInt(0x01030000L))
            write(beUInt(flags.toLong()))
            write(beUInt(payload.size.toLong()))
            write(payload)
        }.toByteArray()

    private fun asShotNeutral(captureResult: CaptureResult): List<Double> {
        val neutralColorPoint = captureResult.get(CaptureResult.SENSOR_NEUTRAL_COLOR_POINT)
        if (neutralColorPoint != null && neutralColorPoint.size >= 3) {
            val neutral = neutralColorPoint.take(3).map { value ->
                value.numerator.toDouble() / value.denominator.toDouble()
            }
            if (neutral.all { it.isFinite() && it > 0.0 }) {
                return neutral
            }
            PLog.w(TAG, "Ignoring invalid SENSOR_NEUTRAL_COLOR_POINT: ${neutral.joinToString()}")
        }

        val gains = captureResult.get(CaptureResult.COLOR_CORRECTION_GAINS)
        if (gains == null) {
            PLog.w(TAG, "Missing SENSOR_NEUTRAL_COLOR_POINT and COLOR_CORRECTION_GAINS; using unity AsShotNeutral")
            return listOf(1.0, 1.0, 1.0)
        }
        val green = ((gains.greenEven + gains.greenOdd) * 0.5f).takeIf { it > 0f } ?: 1f
        val r = gains.red.takeIf { it > 0f } ?: green
        val b = gains.blue.takeIf { it > 0f } ?: green
        PLog.w(TAG, "Missing SENSOR_NEUTRAL_COLOR_POINT; deriving AsShotNeutral from COLOR_CORRECTION_GAINS")
        return listOf((green / r).toDouble(), 1.0, (green / b).toDouble())
    }

    private data class DngGeometry(
        val width: Int,
        val height: Int,
        val activeArea: LongArray,
        val defaultCropLeft: Double,
        val defaultCropTop: Double,
        val defaultCropWidth: Double,
        val defaultCropHeight: Double,
        val sourceOriginX: Int,
        val sourceOriginY: Int,
        val sourceWidth: Int,
        val sourceHeight: Int,
        val bufferIncludesPixelArray: Boolean,
        val scaleX: Double,
        val scaleY: Double,
    )

    private fun resolveDngGeometry(
        width: Int,
        height: Int,
        characteristics: CameraCharacteristics,
        defaultCrop: Rect,
    ): DngGeometry {
        val pre = characteristics.get(CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE)
        val pixel = characteristics.get(CameraCharacteristics.SENSOR_INFO_PIXEL_ARRAY_SIZE)
        val preWidth = pre?.width()?.takeIf { it > 0 } ?: width
        val preHeight = pre?.height()?.takeIf { it > 0 } ?: height
        val matchesPixelArray = pixel != null && pixel.width == width && pixel.height == height
        val matchesPreCorrection = preWidth == width && preHeight == height
        val scaleX = if (matchesPixelArray) 1.0 else width.toDouble() / preWidth.toDouble()
        val scaleY = if (matchesPixelArray) 1.0 else height.toDouble() / preHeight.toDouble()
        val activeArea = if (matchesPixelArray && pre != null) {
            longArrayOf(pre.top.toLong(), pre.left.toLong(), pre.bottom.toLong(), pre.right.toLong())
        } else {
            longArrayOf(0L, 0L, height.toLong(), width.toLong())
        }
        require(defaultCrop.left >= 0 && defaultCrop.top >= 0 &&
            defaultCrop.right <= width && defaultCrop.bottom <= height &&
            !defaultCrop.isEmpty
        ) { "DefaultCrop must be contained in the DNG buffer" }
        if (!matchesPixelArray && !matchesPreCorrection) {
            PLog.d(TAG, "Mapping derived DNG ${width}x${height} from pre-correction ${preWidth}x${preHeight}")
        }
        return DngGeometry(
            width = width,
            height = height,
            activeArea = activeArea,
            defaultCropLeft = defaultCrop.left.toDouble(),
            defaultCropTop = defaultCrop.top.toDouble(),
            defaultCropWidth = defaultCrop.width().toDouble(),
            defaultCropHeight = defaultCrop.height().toDouble(),
            sourceOriginX = pre?.left ?: 0,
            sourceOriginY = pre?.top ?: 0,
            sourceWidth = preWidth,
            sourceHeight = preHeight,
            bufferIncludesPixelArray = matchesPixelArray,
            scaleX = scaleX,
            scaleY = scaleY,
        )
    }

    private fun buildNoiseProfile(captureResult: CaptureResult): List<Double>? {
        val profile = captureResult.get(CaptureResult.SENSOR_NOISE_PROFILE)
            ?.takeIf { it.size >= 3 }
            ?: return null
        fun safePair(index: Int): Pair<Double, Double>? {
            val pair = profile.getOrNull(index) ?: return null
            val slope = pair.first.takeIf { it.isFinite() && it >= 0.0 } ?: return null
            val offset = pair.second.takeIf { it.isFinite() && it >= 0.0 } ?: return null
            return slope to offset
        }
        val red = safePair(0) ?: return null
        val green = when {
            profile.size >= 4 -> {
                val even = safePair(1) ?: return null
                val odd = safePair(2) ?: return null
                ((even.first + odd.first) * 0.5) to ((even.second + odd.second) * 0.5)
            }

            else -> safePair(1) ?: return null
        }
        val blue = safePair(if (profile.size >= 4) 3 else 2) ?: return null
        return listOf(
            red.first,
            red.second,
            green.first,
            green.second,
            blue.first,
            blue.second
        )
    }

    private fun colorTransformToDngMatrix(transform: ColorSpaceTransform): List<Double> {
        val values = ArrayList<Double>(9)
        for (row in 0 until 3) {
            for (col in 0 until 3) {
                values.add(transform.getElement(col, row).toDouble())
            }
        }
        return normalizeDngColorMatrix(values)
    }

    private fun colorTransformToExactDngMatrix(transform: ColorSpaceTransform): List<Double> =
        buildList(9) {
            for (row in 0 until 3) {
                for (col in 0 until 3) add(transform.getElement(col, row).toDouble())
            }
        }

    private fun isUsableColorTransform(transform: ColorSpaceTransform): Boolean {
        var signal = 0.0
        for (row in 0 until 3) {
            for (col in 0 until 3) {
                val value = transform.getElement(col, row).toDouble()
                if (!value.isFinite()) return false
                signal += kotlin.math.abs(value)
            }
        }
        return signal > 0.01
    }

    private fun normalizeDngColorMatrix(values: List<Double>): List<Double> {
        if (values.size != 9) return values
        val coords = DoubleArray(3) { row ->
            values[row * 3] * DNG_PCS_TO_XYZ[0] +
                values[row * 3 + 1] * DNG_PCS_TO_XYZ[1] +
                values[row * 3 + 2] * DNG_PCS_TO_XYZ[2]
        }
        val maxCoord = coords.maxOrNull() ?: return values
        val scale = if (maxCoord.isFinite() && maxCoord > 0.0 &&
            (maxCoord < 0.99 || maxCoord > 1.01)
        ) {
            1.0 / maxCoord
        } else {
            1.0
        }
        return values.map { value ->
            ((value * scale) * DNG_MATRIX_ROUNDING).roundToInt() / DNG_MATRIX_ROUNDING
        }
    }

    private fun byteArray(tag: Int, values: ByteArray): TiffEntry =
        TiffEntry(tag, TYPE_BYTE, values.size.toLong(), values)

    private fun undefined(tag: Int, values: ByteArray): TiffEntry =
        TiffEntry(tag, TYPE_UNDEFINED, values.size.toLong(), values)

    private fun ascii(tag: Int, value: String): TiffEntry {
        val bytes = (value + "\u0000").toByteArray(Charsets.US_ASCII)
        return TiffEntry(tag, TYPE_ASCII, bytes.size.toLong(), bytes)
    }

    private fun short(tag: Int, value: Int): TiffEntry =
        TiffEntry(tag, TYPE_SHORT, 1, ushortBytes(value))

    private fun shortArray(tag: Int, values: IntArray): TiffEntry =
        TiffEntry(tag, TYPE_SHORT, values.size.toLong(), ByteArrayOutputStream().apply {
            values.forEach { write(ushortBytes(it)) }
        }.toByteArray())

    private fun long(tag: Int, value: Long): TiffEntry =
        TiffEntry(tag, TYPE_LONG, 1, uintBytes(value))

    private fun longArray(tag: Int, values: LongArray): TiffEntry =
        TiffEntry(tag, TYPE_LONG, values.size.toLong(), ByteArrayOutputStream().apply {
            values.forEach { write(uintBytes(it)) }
        }.toByteArray())

    private fun rationalArray(tag: Int, values: List<Double>): TiffEntry =
        TiffEntry(tag, TYPE_RATIONAL, values.size.toLong(), ByteArrayOutputStream().apply {
            values.forEach { value ->
                val rational = toUnsignedRational(value)
                write(uintBytes(rational.first))
                write(uintBytes(rational.second))
            }
        }.toByteArray())

    private fun sRationalArray(tag: Int, values: List<Double>): TiffEntry =
        TiffEntry(tag, TYPE_SRATIONAL, values.size.toLong(), ByteArrayOutputStream().apply {
            values.forEach { value ->
                val rational = toSignedRational(value)
                write(intBytes(rational.first))
                write(intBytes(rational.second))
            }
        }.toByteArray())

    private fun floatArray(tag: Int, values: FloatArray): TiffEntry =
        TiffEntry(tag, TYPE_FLOAT, values.size.toLong(), ByteArrayOutputStream().apply {
            values.forEach { value ->
                write(floatBytes(value.takeIf { it.isFinite() } ?: 0f))
            }
        }.toByteArray())

    private fun doubleArray(tag: Int, values: List<Double>): TiffEntry =
        TiffEntry(tag, TYPE_DOUBLE, values.size.toLong(), ByteArrayOutputStream().apply {
            values.forEach { value ->
                write(doubleBytes(value.takeIf { it.isFinite() && it >= 0.0 } ?: 0.0))
            }
        }.toByteArray())

    private fun toUnsignedRational(value: Double): Pair<Long, Long> {
        val safe = value.takeIf { it.isFinite() && it >= 0.0 } ?: 0.0
        val denominator = if (safe >= 4096.0) 1L else 1_000_000L
        val numerator = (safe * denominator).roundToLong().coerceAtLeast(0L)
        return numerator to denominator
    }

    private fun toSignedRational(value: Double): Pair<Int, Int> {
        val safe = value.takeIf { it.isFinite() } ?: 0.0
        val denominator = 1_000_000
        val numerator = (safe * denominator).roundToInt()
        return numerator to denominator
    }

    private fun inlineValue(value: ByteArray): ByteArray =
        ByteArray(4).also { value.copyInto(it, endIndex = value.size.coerceAtMost(4)) }

    private fun ushortBytes(value: Int): ByteArray =
        ByteBuffer.allocate(2).order(ByteOrder.LITTLE_ENDIAN).putShort((value and 0xFFFF).toShort()).array()

    private fun uintBytes(value: Long): ByteArray =
        ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt((value and 0xFFFFFFFFL).toInt()).array()

    private fun intBytes(value: Int): ByteArray =
        ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(value).array()

    private fun floatBytes(value: Float): ByteArray =
        ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(value).array()

    private fun doubleBytes(value: Double): ByteArray =
        ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(value).array()

    private fun beUInt(value: Long): ByteArray =
        ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt((value and 0xFFFFFFFFL).toInt()).array()

    private fun beInt(value: Int): ByteArray =
        ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putInt(value).array()

    private fun beFloat(value: Float): ByteArray =
        ByteBuffer.allocate(4).order(ByteOrder.BIG_ENDIAN).putFloat(value).array()

    private fun beDouble(value: Double): ByteArray =
        ByteBuffer.allocate(8).order(ByteOrder.BIG_ENDIAN).putDouble(value).array()

    private data class TiffEntry(
        val tag: Int,
        val type: Int,
        val count: Long,
        val value: ByteArray,
    )

    private data class TiffDirectories(
        val primaryEntries: List<TiffEntry>,
        val exifEntries: List<TiffEntry>,
    )

    private data class DngPreview(
        val width: Int,
        val height: Int,
        val bytes: ByteArray,
        val source: String,
    )

    private data class EncodedEntry(
        val entry: TiffEntry,
        val valueOrOffset: ByteArray,
    )
}
