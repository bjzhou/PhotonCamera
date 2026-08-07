package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.processor.RawNoiseModel
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import kotlin.math.ln

/**
 * Host bridge for the non-AI MGC 9.6.080 V24 full-resolution denoise chain.
 *
 * RGB→YUV, ChromaDenoisePyramidComplete, Pecan luma, YUV→RGB and
 * ComputeDenoiseStrengthMaps execute the mechanically lifted static kernels.
 * The recovered MGC boundary keeps chroma as a sibling stage immediately
 * before RunFullResolutionDenoise/Pecan.
 *
 * This class owns luma/chroma protobuf tuning selection and normalized
 * noise-model preparation. Multi-frame correlation and coefficients come
 * from the Spatial noise-model kernel's exact outputs and diagnostics. The
 * native bridge converts normalized read/shot/quadratic coefficients exactly once at
 * the Q14 S16 kernel boundary.
 */
internal object MgcFullResolutionDenoise {
    private const val TAG = "MgcFullResolutionDenoise"
    private const val LUMA_TUNING_ASSET =
        "mgc_denoise/luma_denoise_default.binarypb"
    private const val CHROMA_TUNING_ASSET =
        "mgc_denoise/chroma_denoise.binarypb"

    data class Tuning(
        val strength: FloatArray,
        val revertFactor: FloatArray,
        val outlierDistance: FloatArray,
    )

    /**
     * Spatial defaults consume the merge-propagated noise model exactly once before DNG write.
     * User adjustment deliberately ignores every Spatial-only input and uses an identity
     * correlation spectrum plus the slider-scaled protobuf strength.
     */
    enum class Pass {
        SPATIAL_DEFAULT,
        USER_ADJUSTMENT,
    }

    enum class InputLayout {
        CAMERA_RGBA16F,
        NORMALIZED_BAYER16,
    }

    private data class TuningPoint(
        val gain: Float,
        val tuning: Tuning,
    )

    @Volatile
    private var initialized = false
    @Volatile
    private var initializationFailed = false
    private var lumaTuningPoints: List<TuningPoint> = emptyList()
    private var chromaTuningPoints: List<TuningPoint> = emptyList()

    @Synchronized
    fun ensureInitialized(context: Context): Boolean {
        if (initialized) return true
        if (initializationFailed) return false
        return runCatching {
            val assets = context.applicationContext.assets
            val lumaTuningBytes =
                assets.open(LUMA_TUNING_ASSET).use { it.readBytes() }
            val chromaTuningBytes =
                assets.open(CHROMA_TUNING_ASSET).use { it.readBytes() }
            lumaTuningPoints = parseTuning(lumaTuningBytes)
            chromaTuningPoints = parseTuning(chromaTuningBytes)
            check(lumaTuningPoints.size >= 2) {
                "MGC luma tuning contains fewer than two gain points"
            }
            check(chromaTuningPoints.size >= 2) {
                "MGC chroma tuning contains fewer than two gain points"
            }
            initialized = true
            PLog.i(
                TAG,
                "MGC RunFullResolutionDenoise static kernels ready: " +
                    "lumaGains=${lumaTuningPoints.map { it.gain }} " +
                    "chromaGains=${chromaTuningPoints.map { it.gain }}",
            )
            true
        }.onFailure { error ->
            initializationFailed = true
            PLog.e(TAG, "Unable to initialize MGC RunFullResolutionDenoise", error)
        }.getOrDefault(false)
    }

    /**
     * Runs MGC RunFullResolutionDenoise in place. CAMERA_RGBA16F is the
     * existing camera-RGB boundary. NORMALIZED_BAYER16 consumes one unsigned
     * normalized Bayer plane from the beginning of the buffer and overwrites
     * it with RGBA16F after MGC's own BayerRawToYuv path.
     */
    fun denoise(
        rgba16f: ByteBuffer,
        width: Int,
        height: Int,
        globalOriginX: Int,
        globalOriginY: Int,
        fullWidth: Int,
        fullHeight: Int,
        inputLayout: InputLayout = InputLayout.CAMERA_RGBA16F,
        applyLensShadingInBayerAot: Boolean = false,
        metadata: RawMetadata,
        preparedNormalizedYuvRead: FloatArray? = null,
        preparedNormalizedYuvShot: FloatArray? = null,
        preparedNormalizedYuvQuadratic: FloatArray? = null,
        tuningGain: Float,
        pass: Pass,
        lumaStrengthScale: Float,
        chromaStrengthScale: Float,
    ): Boolean {
        val finiteLumaScale = lumaStrengthScale
            .takeIf { it.isFinite() }
            ?.coerceAtLeast(0f)
            ?: 0f
        val finiteChromaScale = chromaStrengthScale
            .takeIf { it.isFinite() }
            ?.coerceAtLeast(0f)
            ?: 0f
        val lumaEnabled = finiteLumaScale > 0f
        val chromaEnabled = finiteChromaScale > 0f
        if (!initialized || !rgba16f.isDirect || width <= 0 || height <= 0 ||
            (!lumaEnabled && !chromaEnabled)
        ) {
            return false
        }
        val useSpatialModel = pass == Pass.SPATIAL_DEFAULT
        val hasPreparedYuvNoise =
            preparedNormalizedYuvRead != null || preparedNormalizedYuvShot != null ||
                preparedNormalizedYuvQuadratic != null
        if (hasPreparedYuvNoise &&
            (pass != Pass.SPATIAL_DEFAULT || inputLayout != InputLayout.CAMERA_RGBA16F ||
                preparedNormalizedYuvRead == null || preparedNormalizedYuvShot == null ||
                preparedNormalizedYuvQuadratic == null ||
                !validRgbNoise(preparedNormalizedYuvRead) ||
                !validRgbNoise(preparedNormalizedYuvShot) ||
                !validRgbNoise(preparedNormalizedYuvQuadratic) ||
                (preparedNormalizedYuvRead.none { it > 0f } &&
                    preparedNormalizedYuvShot.none { it > 0f } &&
                    preparedNormalizedYuvQuadratic.none { it > 0f }))
        ) {
            PLog.e(
                TAG,
                "MGC denoise rejected malformed prepared VGN YUV model: " +
                    "read=${preparedNormalizedYuvRead?.contentToString()} " +
                    "shot=${preparedNormalizedYuvShot?.contentToString()} " +
                    "quadratic=${preparedNormalizedYuvQuadratic?.contentToString()}",
            )
            return false
        }
        val correlation = if (useSpatialModel) {
            metadata.mgcDenoiseCorrelation
        } else {
            null
        }
        if (useSpatialModel &&
            (correlation == null ||
                correlation.size != 128 ||
                correlation.any { !it.isFinite() })
        ) {
            PLog.e(
                TAG,
                "MGC denoise rejected missing/malformed Spatial correlation spectrum",
            )
            return false
        }
        val spatialStrengthMap = metadata.mgcSpatialStrengthMap.takeIf {
            useSpatialModel
        }
        if (useSpatialModel && spatialStrengthMap?.let {
                it.width == (fullWidth + 3) / 4 &&
                    it.height == (fullHeight + 3) / 4 &&
                    it.q8.size == it.width * it.height
            } != true
        ) {
            PLog.e(
                TAG,
                "MGC denoise rejected Spatial strength map: " +
                    "full=${fullWidth}x$fullHeight map=${spatialStrengthMap?.let {
                        "${it.width}x${it.height}/${it.q8.size}"
                    } ?: "none"}",
            )
            return false
        }

        val rgbRead: FloatArray
        val rgbShot: FloatArray
        if (useSpatialModel) {
            rgbRead = metadata.mgcDenoiseReadNoise?.copyOf()
                ?: run {
                    PLog.e(TAG, "MGC denoise rejected missing Spatial read coefficients")
                    return false
                }
            rgbShot = metadata.mgcDenoiseShotNoise?.copyOf()
                ?: run {
                    PLog.e(TAG, "MGC denoise rejected missing Spatial shot coefficients")
                    return false
                }
            if (!validRgbNoise(rgbRead) || !validRgbNoise(rgbShot) ||
                (rgbRead.none { it > 0f } && rgbShot.none { it > 0f })
            ) {
                PLog.e(
                    TAG,
                    "MGC denoise rejected malformed Spatial noise coefficients: " +
                        "read=${rgbRead.contentToString()} shot=${rgbShot.contentToString()}",
                )
                return false
            }
        } else {
            val rawNoise = when (metadata.noiseProfileLayout) {
                RawNoiseProfileLayout.CAMERA2_CFA ->
                    RawNoiseModel.fromCamera2NoiseProfile(metadata.channelNoiseProfile)
                RawNoiseProfileLayout.DNG_RGB ->
                    RawNoiseModel.fromDngNoiseProfile(metadata.channelNoiseProfile)
                RawNoiseProfileLayout.NONE -> RawNoiseModel.EMPTY
            }
            val shot = rawNoise.normalizedShotNoiseForShader(metadata.cfaPattern)
            val read = rawNoise.normalizedReadNoiseForShader(metadata.cfaPattern)
            if (shot.none { it > 0f } && read.none { it > 0f }) {
                PLog.w(TAG, "MGC denoise skipped: RAW noise profile is unavailable")
                return false
            }
            rgbShot = RawNoiseModel.bayerNoiseModelToRgb(shot)
            rgbRead = RawNoiseModel.bayerNoiseModelToRgb(read)
        }
        val rgbWhiteBalance = normalizedRgbWhiteBalance(metadata.whiteBalanceGains)
        val lumaTuning = interpolateTuning(tuningGain, lumaTuningPoints)
            .withStrengthScale(finiteLumaScale)
        val chromaTuning = interpolateTuning(tuningGain, chromaTuningPoints)
            .withStrengthScale(finiteChromaScale)
        rgba16f.clear()
        val result = nativeDenoiseRgba16f(
            rgbaBuffer = rgba16f,
            width = width,
            height = height,
            globalOriginX = globalOriginX,
            globalOriginY = globalOriginY,
            fullWidth = fullWidth,
            fullHeight = fullHeight,
            inputIsBayer = inputLayout == InputLayout.NORMALIZED_BAYER16,
            cfaPattern = metadata.cfaPattern,
            applyLensShadingInBayerAot = applyLensShadingInBayerAot,
            lensShading = metadata.lensShadingMap.takeIf { useSpatialModel },
            lensWidth = if (useSpatialModel) metadata.lensShadingMapWidth else 0,
            lensHeight = if (useSpatialModel) metadata.lensShadingMapHeight else 0,
            normalizedRgbShot = rgbShot,
            normalizedRgbRead = rgbRead,
            normalizedRgbWhiteBalance = rgbWhiteBalance,
            preparedNormalizedYuvShot = preparedNormalizedYuvShot,
            preparedNormalizedYuvRead = preparedNormalizedYuvRead,
            preparedNormalizedYuvQuadratic = preparedNormalizedYuvQuadratic,
            correlation = correlation,
            spatialStrengthQ8 = spatialStrengthMap?.q8,
            spatialStrengthWidth = spatialStrengthMap?.width ?: 0,
            spatialStrengthHeight = spatialStrengthMap?.height ?: 0,
            lumaEnabled = lumaEnabled,
            chromaEnabled = chromaEnabled,
            lumaStrength = lumaTuning.strength,
            lumaOutlierDistance = lumaTuning.outlierDistance,
            lumaRevertFactor = lumaTuning.revertFactor,
            chromaStrength = chromaTuning.strength,
            chromaOutlierThreshold = chromaTuning.outlierDistance,
        )
        rgba16f.position(0)
        if (result != 0) {
            PLog.e(
                TAG,
                "MGC static denoise kernel failed: " +
                    "result=0x${result.toString(16)} size=${width}x$height " +
                    "origin=($globalOriginX,$globalOriginY) " +
                    "input=$inputLayout " +
                    "luma=$lumaEnabled chroma=$chromaEnabled",
            )
            return false
        }
        PLog.d(
            TAG,
            "MGC static denoise complete: size=${width}x$height " +
                "origin=($globalOriginX,$globalOriginY) input=$inputLayout " +
                "gain=$tuningGain pass=$pass " +
                "luma=$lumaEnabled($finiteLumaScale) " +
                "chroma=$chromaEnabled($finiteChromaScale) " +
                "rgbShot=${rgbShot.contentToString()} " +
                "rgbRead=${rgbRead.contentToString()} " +
                "rgbWb=${rgbWhiteBalance.contentToString()} " +
                "preparedYuvShot=${preparedNormalizedYuvShot?.contentToString()} " +
                "preparedYuvRead=${preparedNormalizedYuvRead?.contentToString()} " +
                "preparedYuvQuadratic=" +
                    "${preparedNormalizedYuvQuadratic?.contentToString()} " +
                "strengthMap=${spatialStrengthMap?.let {
                    "${it.width}x${it.height}"
                } ?: "identity"} " +
                "lsc=${if (useSpatialModel) {
                    "${metadata.lensShadingMapWidth}x${metadata.lensShadingMapHeight}"
                } else {
                    "disabled-for-user-adjustment"
                }} " +
                "correlation=${if (correlation == null) "single-frame-identity" else "propagated"}",
        )
        return true
    }

    private fun Tuning.withStrengthScale(scale: Float): Tuning = copy(
        strength = FloatArray(strength.size) { index -> strength[index] * scale },
        revertFactor = revertFactor.copyOf(),
        outlierDistance = outlierDistance.copyOf(),
    )

    private fun validRgbNoise(values: FloatArray): Boolean =
        values.size == 3 && values.all { it.isFinite() && it >= 0f }

    /**
     * MGC's BayerRawToYuv/RgbRawToYuv boundary applies channel gains before
     * denoising. Spatial/VGN exports un-white-balanced camera RGB for Linear
     * DNG, so the native bridge enters that same working domain and removes
     * the gains again after YUV -> RGB.
     */
    private fun normalizedRgbWhiteBalance(gains: FloatArray): FloatArray {
        fun safeGain(index: Int, fallback: Float): Float {
            val value = gains.getOrElse(index) { fallback }
            return value.takeIf { it.isFinite() && it > 0f } ?: fallback
        }
        val greenEven = safeGain(1, 1f)
        val greenOdd = safeGain(2, greenEven)
        val green = (0.5f * (greenEven + greenOdd))
            .takeIf { it.isFinite() && it > 0f }
            ?: 1f
        return floatArrayOf(
            (safeGain(0, green) / green).coerceIn(1e-3f, 64f),
            1f,
            (safeGain(3, green) / green).coerceIn(1e-3f, 64f),
        )
    }

    private fun interpolateTuning(
        gain: Float,
        points: List<TuningPoint>,
    ): Tuning {
        val finiteGain = gain.takeIf { it.isFinite() && it > 0f }
            ?: points.first().gain
        val upperIndex = points.indexOfFirst { it.gain >= finiteGain }
        if (upperIndex < 0) return points.last().tuning.copyArrays()
        if (upperIndex == 0) return points.first().tuning.copyArrays()
        val lower = points[upperIndex - 1]
        val upper = points[upperIndex]
        val logLower = ln(lower.gain)
        val amount = (
            (ln(finiteGain) - logLower) /
                (ln(upper.gain) - logLower)
            ).coerceIn(0f, 1f)
        fun interpolate(
            first: FloatArray,
            second: FloatArray,
        ): FloatArray = FloatArray(5) { index ->
            first[index] + (second[index] - first[index]) * amount
        }
        return Tuning(
            strength = interpolate(
                lower.tuning.strength,
                upper.tuning.strength,
            ),
            revertFactor = interpolate(
                lower.tuning.revertFactor,
                upper.tuning.revertFactor,
            ),
            outlierDistance = interpolate(
                lower.tuning.outlierDistance,
                upper.tuning.outlierDistance,
            ),
        )
    }

    private fun Tuning.copyArrays(): Tuning = Tuning(
        strength.copyOf(),
        revertFactor.copyOf(),
        outlierDistance.copyOf(),
    )

    private class ProtoReader(
        private val bytes: ByteArray,
        private var position: Int = 0,
        private val limit: Int = bytes.size,
    ) {
        fun hasRemaining(): Boolean = position < limit

        fun readTag(): Pair<Int, Int> {
            val tag = readVarint().toInt()
            return (tag ushr 3) to (tag and 7)
        }

        fun readMessage(): ProtoReader {
            val length = readVarint().toInt()
            require(length >= 0 && position + length <= limit)
            val child = ProtoReader(bytes, position, position + length)
            position += length
            return child
        }

        fun readFixed32Float(): Float {
            require(position + 4 <= limit)
            val bits =
                (bytes[position].toInt() and 0xff) or
                    ((bytes[position + 1].toInt() and 0xff) shl 8) or
                    ((bytes[position + 2].toInt() and 0xff) shl 16) or
                    ((bytes[position + 3].toInt() and 0xff) shl 24)
            position += 4
            return Float.fromBits(bits)
        }

        fun skip(wireType: Int) {
            when (wireType) {
                0 -> readVarint()
                1 -> position += 8
                2 -> position += readVarint().toInt()
                5 -> position += 4
                else -> error("Unsupported protobuf wire type $wireType")
            }
            require(position <= limit)
        }

        private fun readVarint(): Long {
            var result = 0L
            var shift = 0
            while (shift < 64) {
                require(position < limit)
                val value = bytes[position++].toInt() and 0xff
                result = result or ((value and 0x7f).toLong() shl shift)
                if (value and 0x80 == 0) return result
                shift += 7
            }
            error("Malformed protobuf varint")
        }
    }

    private fun parseTuning(bytes: ByteArray): List<TuningPoint> {
        val result = ArrayList<TuningPoint>()
        val root = ProtoReader(bytes)
        while (root.hasRemaining()) {
            val (field, wire) = root.readTag()
            if (field != 1 || wire != 2) {
                root.skip(wire)
                continue
            }
            val point = root.readMessage()
            val strength = ArrayList<Float>(5)
            val revert = ArrayList<Float>(5)
            val outlier = ArrayList<Float>(5)
            var gain: Float? = null
            while (point.hasRemaining()) {
                val (pointField, pointWire) = point.readTag()
                when {
                    pointField == 1 && pointWire == 2 -> {
                        val level = point.readMessage()
                        var levelStrength = 0f
                        var levelRevert = 0f
                        var levelOutlier = 0f
                        while (level.hasRemaining()) {
                            val (levelField, levelWire) = level.readTag()
                            if (levelWire != 5) {
                                level.skip(levelWire)
                                continue
                            }
                            when (levelField) {
                                1 -> levelStrength = level.readFixed32Float()
                                2 -> levelRevert = level.readFixed32Float()
                                3 -> levelOutlier = level.readFixed32Float()
                                else -> level.skip(levelWire)
                            }
                        }
                        strength += levelStrength
                        revert += levelRevert
                        outlier += levelOutlier
                    }

                    pointField == 2 && pointWire == 2 -> {
                        val gainMessage = point.readMessage()
                        while (gainMessage.hasRemaining()) {
                            val (gainField, gainWire) = gainMessage.readTag()
                            if (gainField == 1 && gainWire == 5) {
                                gain = gainMessage.readFixed32Float()
                            } else {
                                gainMessage.skip(gainWire)
                            }
                        }
                    }

                    else -> point.skip(pointWire)
                }
            }
            require(strength.size == 5 && revert.size == 5 && outlier.size == 5)
            val pointGain = requireNotNull(gain)
            result += TuningPoint(
                gain = pointGain,
                tuning = Tuning(
                    strength.toFloatArray(),
                    revert.toFloatArray(),
                    outlier.toFloatArray(),
                ),
            )
        }
        return result.sortedBy(TuningPoint::gain)
    }

    private external fun nativeDenoiseRgba16f(
        rgbaBuffer: ByteBuffer,
        width: Int,
        height: Int,
        globalOriginX: Int,
        globalOriginY: Int,
        fullWidth: Int,
        fullHeight: Int,
        inputIsBayer: Boolean,
        cfaPattern: Int,
        applyLensShadingInBayerAot: Boolean,
        lensShading: FloatArray?,
        lensWidth: Int,
        lensHeight: Int,
        normalizedRgbShot: FloatArray,
        normalizedRgbRead: FloatArray,
        normalizedRgbWhiteBalance: FloatArray,
        preparedNormalizedYuvShot: FloatArray?,
        preparedNormalizedYuvRead: FloatArray?,
        preparedNormalizedYuvQuadratic: FloatArray?,
        correlation: FloatArray?,
        spatialStrengthQ8: ShortArray?,
        spatialStrengthWidth: Int,
        spatialStrengthHeight: Int,
        lumaEnabled: Boolean,
        chromaEnabled: Boolean,
        lumaStrength: FloatArray,
        lumaOutlierDistance: FloatArray,
        lumaRevertFactor: FloatArray,
        chromaStrength: FloatArray,
        chromaOutlierThreshold: FloatArray,
    ): Int
}
