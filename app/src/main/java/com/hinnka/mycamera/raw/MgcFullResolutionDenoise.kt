package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.processor.DenoiseStrength
import com.hinnka.mycamera.processor.PhotonSabreLumaTuningNodes
import com.hinnka.mycamera.processor.RawNoiseModel
import com.hinnka.mycamera.processor.RawStackRuntimeDebug
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer

/**
 * Host bridge for the non-AI MGC 9.6.080 V24 full-resolution denoise chain.
 *
 * RGB→YUV, ChromaDenoisePyramidComplete, Pecan luma, YUV→RGB and
 * ComputeDenoiseStrengthMaps execute the mechanically lifted static kernels.
 * The recovered MGC boundary keeps chroma as a sibling stage immediately
 * before RunFullResolutionDenoise/Pecan.
 *
 * This class owns luma/chroma protobuf tuning selection and normalized
 * noise-model preparation. Spatial consumes its propagated correlation/coefficient/strength
 * outputs; classic Sabre consumes its dedicated luma tuning and scales the complete reference
 * NoiseModel by its measured merge factor and post-merge SNR-table reduction. The
 * native bridge converts normalized read/shot/quadratic coefficients exactly once at
 * the Q14 S16 kernel boundary.
 */
internal object MgcFullResolutionDenoise {
    private const val TAG = "MgcFullResolutionDenoise"
    private const val LUMA_TUNING_ASSET =
        "mgc_denoise/luma_denoise_default.binarypb"
    private const val SABRE_LUMA_TUNING_ASSET =
        "mgc_denoise/sabre_luma_denoise.binarypb"
    private const val CHROMA_TUNING_ASSET =
        "mgc_denoise/chroma_denoise.binarypb"

    data class Tuning(
        val strength: FloatArray,
        val revertFactor: FloatArray,
        val outlierDistance: FloatArray,
    )

    /**
     * Merge defaults consume their processor-specific model exactly once before DNG write.
     * User adjustment deliberately ignores Spatial merge diagnostics. When the caller supplies
     * a measured demosaic model it consumes the propagated spectrum/YUV coefficients and applies
     * LSC through the identity base-strength map; otherwise it retains the identity fallback.
     */
    enum class Pass {
        SPATIAL_DEFAULT,
        SABRE_DEFAULT,
        USER_ADJUSTMENT,
    }

    enum class InputLayout {
        CAMERA_RGBA16F,
        NORMALIZED_BAYER16,
    }

    data class NormalizedCameraRgbNoise(
        val read: FloatArray,
        val shot: FloatArray,
    )

    /**
     * Noise model at MGC's white-balanced Y/Cb/Cr boundary after NoiseModel.Scale(2).
     *
     * ChromaDenoisePyramidComplete keeps per-channel read variance, but its generated ABI
     * accepts only one shared shot/quadratic curve. The measured VGN path stores its fitted
     * shared chroma curve here; the ordinary MGC NoiseModel path instead reproduces the
     * original builder's channel-0 slice directly in native code.
     */
    data class PreparedYuvNoiseModel(
        val normalizedRead: FloatArray,
        val normalizedLumaShot: Float,
        val normalizedLumaQuadratic: Float,
        val normalizedChromaShot: Float,
        val normalizedChromaQuadratic: Float,
        val lumaCorrelation: FloatArray,
        val chromaCorrelation: FloatArray,
    )

    private data class TuningPoint(
        val snr: Float,
        val tuning: Tuning,
    )

    @Volatile
    private var initialized = false
    @Volatile
    private var initializationFailed = false
    private var lumaTuningPoints: List<TuningPoint> = emptyList()
    private var sabreLumaTuningPoints: List<TuningPoint> = emptyList()
    private var chromaTuningPoints: List<TuningPoint> = emptyList()

    @Synchronized
    fun ensureInitialized(context: Context): Boolean {
        if (initialized) return true
        if (initializationFailed) return false
        return runCatching {
            val assets = context.applicationContext.assets
            val lumaTuningBytes =
                assets.open(LUMA_TUNING_ASSET).use { it.readBytes() }
            val sabreLumaTuningBytes =
                assets.open(SABRE_LUMA_TUNING_ASSET).use { it.readBytes() }
            val chromaTuningBytes =
                assets.open(CHROMA_TUNING_ASSET).use { it.readBytes() }
            lumaTuningPoints = parseTuning(lumaTuningBytes)
            sabreLumaTuningPoints = parseTuning(sabreLumaTuningBytes)
            chromaTuningPoints = parseTuning(chromaTuningBytes)
            check(lumaTuningPoints.size >= 2) {
                "MGC luma tuning contains fewer than two SNR points"
            }
            check(sabreLumaTuningPoints.size >= 2) {
                "MGC Sabre luma tuning contains fewer than two SNR points"
            }
            check(chromaTuningPoints.size >= 2) {
                "MGC chroma tuning contains fewer than two SNR points"
            }
            initialized = true
            PLog.i(
                TAG,
                "MGC RunFullResolutionDenoise static kernels ready: " +
                    "lumaSnr=${lumaTuningPoints.map { it.snr }} " +
                    "sabreLumaSnr=${sabreLumaTuningPoints.map { it.snr }} " +
                    "chromaSnr=${chromaTuningPoints.map { it.snr }}",
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
        outputScale: Float = 1f,
        inputLayout: InputLayout = InputLayout.CAMERA_RGBA16F,
        applyLensShadingInBayerAot: Boolean = false,
        metadata: RawMetadata,
        preparedYuvNoiseModel: PreparedYuvNoiseModel? = null,
        applyLensShadingToDenoiseStrength: Boolean = false,
        tuningSnr: Float,
        pass: Pass,
        lumaStrengthScale: Float,
        chromaStrengthScale: Float,
    ): Boolean {
        val finiteLumaScale = DenoiseStrength.clamp(lumaStrengthScale)
        val finiteChromaScale = DenoiseStrength.clamp(chromaStrengthScale)
        val lumaEnabled = finiteLumaScale > 0f
        val chromaEnabled = finiteChromaScale > 0f
        if (!initialized || !rgba16f.isDirect || width <= 0 || height <= 0 ||
            !outputScale.isFinite() || outputScale <= 0f ||
            (!lumaEnabled && !chromaEnabled)
        ) {
            return false
        }
        val useSpatialModel = pass == Pass.SPATIAL_DEFAULT
        val useSabreModel = pass == Pass.SABRE_DEFAULT
        if (preparedYuvNoiseModel != null &&
            (inputLayout != InputLayout.CAMERA_RGBA16F ||
                !validPreparedYuvNoise(preparedYuvNoiseModel))
        ) {
            PLog.e(
                TAG,
                "MGC denoise rejected malformed prepared VGN YUV model: " +
                    "read=${preparedYuvNoiseModel.normalizedRead.contentToString()} " +
                    "lumaShot=${preparedYuvNoiseModel.normalizedLumaShot} " +
                    "lumaQuadratic=${preparedYuvNoiseModel.normalizedLumaQuadratic} " +
                    "chromaShot=${preparedYuvNoiseModel.normalizedChromaShot} " +
                    "chromaQuadratic=${preparedYuvNoiseModel.normalizedChromaQuadratic}",
            )
            return false
        }
        val spatialCorrelation = if (useSpatialModel) {
            metadata.mgcDenoiseCorrelation
        } else null
        val coreTuning = metadata.coreImagingTuning.normalized()
        val lumaCorrelation = applyFusionCorrelationScale(
            correlation = preparedYuvNoiseModel?.lumaCorrelation ?: spatialCorrelation,
            scale = coreTuning.fusion.noiseCorrelationScale,
            enabled = useSabreModel,
        )
        val chromaCorrelation = applyFusionCorrelationScale(
            correlation = preparedYuvNoiseModel?.chromaCorrelation ?: spatialCorrelation,
            scale = coreTuning.fusion.noiseCorrelationScale,
            enabled = useSabreModel,
        )
        if (useSpatialModel &&
            (!validCorrelation(lumaCorrelation) || !validCorrelation(chromaCorrelation))
        ) {
            PLog.e(
                TAG,
                "MGC denoise rejected missing/malformed Spatial Y/C correlation spectrum",
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
        val sabreNoiseModelScale: Float
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
            sabreNoiseModelScale = 1f
        } else {
            val resolvedNoise = resolveUserAdjustmentCameraRgbNoise(metadata)
            if (resolvedNoise == null) {
                PLog.w(TAG, "MGC denoise skipped: RAW noise profile is unavailable")
                return false
            }
            sabreNoiseModelScale = if (useSabreModel) {
                metadata.mgcSabreNoiseModelScale?.takeIf {
                    it.isFinite() && it > 0f
                } ?: run {
                    PLog.e(TAG, "MGC Sabre denoise rejected missing NoiseModel scale")
                    return false
                }
            } else {
                1f
            }
            // Sabre first obtains the merged NoiseModel produced from its accumulated frame
            // weights. MergeRaw then passes the reciprocal SNR-table reduction as an equivalent
            // sample count to NoiseModel::Average() at libgcastartup.so+0x5e97a84. The metadata
            // scale contains both stages and is applied uniformly to read and shot coefficients.
            // The physical camera model has no quadratic term.
            rgbShot = FloatArray(3) { channel ->
                resolvedNoise.shot[channel] * sabreNoiseModelScale
            }
            rgbRead = FloatArray(3) { channel ->
                resolvedNoise.read[channel] * sabreNoiseModelScale
            }
        }
        val useLensShadingForStrength =
            (useSpatialModel || useSabreModel || applyLensShadingToDenoiseStrength) &&
                hasValidLensShadingMap(metadata)
        val rgbWhiteBalance = normalizedRgbWhiteBalance(metadata.whiteBalanceGains)
        val selectedLumaTuningPoints = if (useSabreModel) {
            sabreLumaTuningPoints.map { point ->
                point.copy(
                    tuning = applySabreLumaNodeOverrides(
                        tuning = point.tuning,
                        snr = point.snr,
                        nodes = coreTuning.denoise.sabreLumaNodes,
                    ),
                )
            }
        } else {
            lumaTuningPoints
        }
        val lumaTuning = applyCoreDenoiseScales(
            tuning = interpolateTuning(tuningSnr, selectedLumaTuningPoints),
            globalStrengthScale = finiteLumaScale,
            strengthLevelScales = coreTuning.denoise.lumaStrengthScale.toFloatArray(),
            revertLevelScales = coreTuning.denoise.detailReconstructionScale.toFloatArray(),
            outlierLevelScales = coreTuning.denoise.outlierRejectionScale.toFloatArray(),
        )
        val chromaTuning = applyCoreDenoiseScales(
            tuning = interpolateTuning(tuningSnr, chromaTuningPoints),
            globalStrengthScale = finiteChromaScale,
            strengthLevelScales = coreTuning.denoise.chromaStrengthScale.toFloatArray(),
            revertLevelScales = FloatArray(5) { 1f },
            outlierLevelScales = FloatArray(5) { 1f },
        )
        // MGC process_raw enables MeasureMoire only for a standard Bayer
        // capture at exact 1x output. The AOT consumes RawToYuv's Y plane, so
        // this remains valid when the current handoff already contains RGB.
        val measureMoireEnabled = chromaEnabled &&
            metadata.cfaPattern in RawMetadata.CFA_RGGB..RawMetadata.CFA_BGGR &&
            outputScale == 1f
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
            measureMoireEnabled = measureMoireEnabled,
            applyLensShadingInBayerAot = applyLensShadingInBayerAot,
            lensShading = metadata.lensShadingMap.takeIf { useLensShadingForStrength },
            lensWidth = if (useLensShadingForStrength) metadata.lensShadingMapWidth else 0,
            lensHeight = if (useLensShadingForStrength) metadata.lensShadingMapHeight else 0,
            normalizedRgbShot = rgbShot,
            normalizedRgbRead = rgbRead,
            normalizedRgbWhiteBalance = rgbWhiteBalance,
            preparedNormalizedYuvRead = preparedYuvNoiseModel?.normalizedRead,
            preparedNormalizedLumaShot = preparedYuvNoiseModel?.normalizedLumaShot ?: 0f,
            preparedNormalizedLumaQuadratic =
                preparedYuvNoiseModel?.normalizedLumaQuadratic ?: 0f,
            preparedNormalizedChromaShot = preparedYuvNoiseModel?.normalizedChromaShot ?: 0f,
            preparedNormalizedChromaQuadratic =
                preparedYuvNoiseModel?.normalizedChromaQuadratic ?: 0f,
            lumaCorrelation = lumaCorrelation,
            chromaCorrelation = chromaCorrelation,
            denoiseResponseOffset = coreTuning.denoise.frequencyResponse.responseOffset,
            denoiseResponseCosineOffset = coreTuning.denoise.frequencyResponse.cosineOffset,
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
            diagnosticsEnabled = RawStackRuntimeDebug.mgcFullResolutionDenoiseDiagnosticsEnabled,
        )
        rgba16f.position(0)
        if (result != 0) {
            PLog.e(
                TAG,
                "MGC static denoise kernel failed: " +
                    "result=0x${result.toString(16)} size=${width}x$height " +
                    "origin=($globalOriginX,$globalOriginY) " +
                    "input=$inputLayout " +
                    "luma=$lumaEnabled chroma=$chromaEnabled " +
                    "measureMoire=$measureMoireEnabled outputScale=$outputScale",
            )
            return false
        }
        PLog.d(
            TAG,
            "MGC static denoise complete: size=${width}x$height " +
                "origin=($globalOriginX,$globalOriginY) input=$inputLayout " +
                "snr=$tuningSnr pass=$pass " +
                "luma=$lumaEnabled($finiteLumaScale) " +
                "chroma=$chromaEnabled($finiteChromaScale) " +
                "measureMoire=$measureMoireEnabled outputScale=$outputScale " +
                "rgbShot=${rgbShot.contentToString()} " +
                "rgbRead=${rgbRead.contentToString()} " +
                "sabreNoiseModelScale=$sabreNoiseModelScale " +
                "rgbWb=${rgbWhiteBalance.contentToString()} " +
                "tuningInterpolation=linear " +
                "lumaScales=${coreTuning.denoise.lumaStrengthScale} " +
                "detailReconstructionScales=${coreTuning.denoise.detailReconstructionScale} " +
                "outlierRejectionScales=${coreTuning.denoise.outlierRejectionScale} " +
                "chromaScales=${coreTuning.denoise.chromaStrengthScale} " +
                "frequencyResponse=${coreTuning.denoise.frequencyResponse} " +
                "noiseCorrelationScale=${coreTuning.fusion.noiseCorrelationScale} " +
                "lumaStrength=${lumaTuning.strength.contentToString()} " +
                "lumaOutlier=${lumaTuning.outlierDistance.contentToString()} " +
                "lumaRevert=${lumaTuning.revertFactor.contentToString()} " +
                "chromaStrength=${chromaTuning.strength.contentToString()} " +
                "chromaOutlier=${chromaTuning.outlierDistance.contentToString()} " +
                "preparedYuvRead=${preparedYuvNoiseModel?.normalizedRead?.contentToString()} " +
                "preparedLumaShot=${preparedYuvNoiseModel?.normalizedLumaShot} " +
                "preparedLumaQuadratic=${preparedYuvNoiseModel?.normalizedLumaQuadratic} " +
                "preparedChromaShot=${preparedYuvNoiseModel?.normalizedChromaShot} " +
                "preparedChromaQuadratic=${preparedYuvNoiseModel?.normalizedChromaQuadratic} " +
                "strengthMap=${spatialStrengthMap?.let {
                    "${it.width}x${it.height}"
                } ?: "identity"} " +
                "lsc=${if (useLensShadingForStrength) {
                    "${metadata.lensShadingMapWidth}x${metadata.lensShadingMapHeight}"
                } else {
                    "identity"
                }} " +
                "lumaCorrelation=${if (lumaCorrelation == null) "identity" else "propagated"} " +
                "chromaCorrelation=${if (chromaCorrelation == null) {
                    "identity"
                } else {
                    "propagated"
                }}",
        )
        return true
    }

    private fun validPreparedYuvNoise(model: PreparedYuvNoiseModel): Boolean =
        validRgbNoise(model.normalizedRead) &&
            model.normalizedLumaShot.isFinite() && model.normalizedLumaShot >= 0f &&
            model.normalizedLumaQuadratic.isFinite() &&
            model.normalizedLumaQuadratic >= 0f &&
            model.normalizedChromaShot.isFinite() && model.normalizedChromaShot >= 0f &&
            model.normalizedChromaQuadratic.isFinite() &&
            model.normalizedChromaQuadratic >= 0f &&
            validCorrelation(model.lumaCorrelation) &&
            validCorrelation(model.chromaCorrelation) &&
            (model.normalizedRead.any { it > 0f } ||
                model.normalizedLumaShot > 0f || model.normalizedLumaQuadratic > 0f ||
                model.normalizedChromaShot > 0f || model.normalizedChromaQuadratic > 0f)

    private fun validCorrelation(correlation: FloatArray?): Boolean =
        correlation?.let { values ->
            values.size == 128 && values.all { it.isFinite() && it >= 0f }
        } == true

    internal fun resolveUserAdjustmentCameraRgbNoise(
        metadata: RawMetadata,
    ): NormalizedCameraRgbNoise? {
        val rawNoise = when (metadata.noiseProfileLayout) {
            RawNoiseProfileLayout.CAMERA2_CFA ->
                RawNoiseModel.fromCamera2NoiseProfile(metadata.channelNoiseProfile)
            RawNoiseProfileLayout.DNG_RGB ->
                RawNoiseModel.fromDngNoiseProfile(metadata.channelNoiseProfile)
            RawNoiseProfileLayout.CANONICAL_BAYER -> {
                if (metadata.channelNoiseProfile.size < 8) return null
                RawNoiseModel.fromCanonicalBayerChannels(
                    shotNoise = FloatArray(4) { metadata.channelNoiseProfile[it * 2] },
                    readNoise = FloatArray(4) { metadata.channelNoiseProfile[it * 2 + 1] },
                )
            }
            RawNoiseProfileLayout.NONE -> RawNoiseModel.EMPTY
        }
        val bayerShot = rawNoise.normalizedShotNoiseForShader(metadata.cfaPattern)
        val bayerRead = rawNoise.normalizedReadNoiseForShader(metadata.cfaPattern)
        if (bayerShot.none { it > 0f } && bayerRead.none { it > 0f }) return null
        return NormalizedCameraRgbNoise(
            read = RawNoiseModel.bayerNoiseModelToRgb(bayerRead),
            shot = RawNoiseModel.bayerNoiseModelToRgb(bayerShot),
        )
    }

    private fun hasValidLensShadingMap(metadata: RawMetadata): Boolean {
        val map = metadata.lensShadingMap ?: return false
        val expectedSize = metadata.lensShadingMapWidth.toLong() *
            metadata.lensShadingMapHeight.toLong() * 4L
        return metadata.lensShadingMapWidth > 0 && metadata.lensShadingMapHeight > 0 &&
            expectedSize in 1L..Int.MAX_VALUE.toLong() && map.size == expectedSize.toInt() &&
            map.all { it.isFinite() && it > 0f }
    }

    internal fun applyLumaStrengthScales(
        tuning: Tuning,
        globalScale: Float,
        levelScales: FloatArray,
    ): Tuning = applyCoreDenoiseScales(
        tuning = tuning,
        globalStrengthScale = globalScale,
        strengthLevelScales = levelScales,
        revertLevelScales = FloatArray(tuning.strength.size) { 1f },
        outlierLevelScales = FloatArray(tuning.strength.size) { 1f },
    )

    /**
     * Applies Photon controls to the three independent denoise protobuf fields:
     * strength, revert factor (detail reconstruction), and outlier distance.
     */
    internal fun applyCoreDenoiseScales(
        tuning: Tuning,
        globalStrengthScale: Float,
        strengthLevelScales: FloatArray,
        revertLevelScales: FloatArray,
        outlierLevelScales: FloatArray,
    ): Tuning {
        val levelCount = tuning.strength.size
        require(tuning.revertFactor.size == levelCount && tuning.outlierDistance.size == levelCount)
        require(
            strengthLevelScales.size == levelCount &&
                revertLevelScales.size == levelCount &&
                outlierLevelScales.size == levelCount,
        ) { "Denoise control count does not match the tuning level count" }
        require(
            globalStrengthScale.isFinite() &&
                strengthLevelScales.all(Float::isFinite) &&
                revertLevelScales.all(Float::isFinite) &&
                outlierLevelScales.all(Float::isFinite),
        ) { "Denoise control is not finite" }
        return Tuning(
            strength = FloatArray(levelCount) { index ->
                tuning.strength[index] * globalStrengthScale * strengthLevelScales[index]
            },
            revertFactor = FloatArray(levelCount) { index ->
                tuning.revertFactor[index] * revertLevelScales[index]
            },
            outlierDistance = FloatArray(levelCount) { index ->
                tuning.outlierDistance[index] * outlierLevelScales[index]
            },
        )
    }

    internal fun applySabreLumaNodeOverrides(
        tuning: Tuning,
        snr: Float,
        nodes: PhotonSabreLumaTuningNodes,
    ): Tuning {
        val row = nodes.normalized().valuesForSnr(snr) ?: return tuning.copyArrays()
        require(row.size == tuning.strength.size)
        return tuning.copy(
            strength = FloatArray(tuning.strength.size) { index ->
                row[index] ?: tuning.strength[index]
            },
            revertFactor = tuning.revertFactor.copyOf(),
            outlierDistance = tuning.outlierDistance.copyOf(),
        )
    }

    internal fun applyFusionCorrelationScale(
        correlation: FloatArray?,
        scale: Float,
        enabled: Boolean,
    ): FloatArray? {
        if (!enabled) return correlation
        require(scale.isFinite() && scale >= 0f)
        if (correlation == null && scale == 1f) return null
        return FloatArray(128) { index -> (correlation?.get(index) ?: 1f) * scale }
    }

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

    /** Exact upper-bound clamp and linear SNR interpolation from libgcastartup.so+0x33ec5d4. */
    private fun interpolateTuning(
        snr: Float,
        points: List<TuningPoint>,
    ): Tuning {
        val finiteSnr = snr.takeIf { it.isFinite() && it >= 0f }
            ?: points.first().snr
        val upperIndex = points.indexOfFirst { it.snr >= finiteSnr }
        if (upperIndex < 0) return points.last().tuning.copyArrays()
        if (upperIndex == 0) return points.first().tuning.copyArrays()
        val lower = points[upperIndex - 1]
        val upper = points[upperIndex]
        val amount = (
            (finiteSnr - lower.snr) /
                (upper.snr - lower.snr)
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
            var snr: Float? = null
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
                        val snrMessage = point.readMessage()
                        while (snrMessage.hasRemaining()) {
                            val (snrField, snrWire) = snrMessage.readTag()
                            if (snrField == 1 && snrWire == 5) {
                                snr = snrMessage.readFixed32Float()
                            } else {
                                snrMessage.skip(snrWire)
                            }
                        }
                    }

                    else -> point.skip(pointWire)
                }
            }
            require(strength.size == 5 && revert.size == 5 && outlier.size == 5)
            val pointSnr = requireNotNull(snr)
            result += TuningPoint(
                snr = pointSnr,
                tuning = Tuning(
                    strength.toFloatArray(),
                    revert.toFloatArray(),
                    outlier.toFloatArray(),
                ),
            )
        }
        return result.sortedBy(TuningPoint::snr)
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
        measureMoireEnabled: Boolean,
        applyLensShadingInBayerAot: Boolean,
        lensShading: FloatArray?,
        lensWidth: Int,
        lensHeight: Int,
        normalizedRgbShot: FloatArray,
        normalizedRgbRead: FloatArray,
        normalizedRgbWhiteBalance: FloatArray,
        preparedNormalizedYuvRead: FloatArray?,
        preparedNormalizedLumaShot: Float,
        preparedNormalizedLumaQuadratic: Float,
        preparedNormalizedChromaShot: Float,
        preparedNormalizedChromaQuadratic: Float,
        lumaCorrelation: FloatArray?,
        chromaCorrelation: FloatArray?,
        denoiseResponseOffset: Float,
        denoiseResponseCosineOffset: Float,
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
        diagnosticsEnabled: Boolean,
    ): Int
}
