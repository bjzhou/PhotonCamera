package com.hinnka.mycamera.processor

/** Local defaults for Photon's RAW imaging chain, shared by capture and reprocessing. */
object PhotonCoreImagingTuning {
    val fusion: PhotonFusionTuning = PhotonFusionTuning.DEFAULT
    val denoise: PhotonDenoiseTuning = PhotonDenoiseTuning.DEFAULT
    /** Local SNR/contrast curves for the original MGC final sharpening kernel. */
    val sharpen: PhotonSharpenTuning = PhotonSharpenTuning.DEFAULT
    /** Dehaze + DHA baked into HDRNet's ProfileGainTableMap output. */
    val dehaze: PhotonDehazeTuning = PhotonDehazeTuning.DEFAULT
}

/** Controls frame admission and propagated noise behavior in multi-frame fusion. */
data class PhotonFusionTuning(
    /**
     * AGC lib_sabre_denoise_control_key: -1 disables weak-texture broadening of the
     * Sabre fusion kernel. Null restores the original SNR-adaptive threshold.
     */
    val mergeGradientThreshold: Float? = -1f,
    /** Normalized green signal used only when reference-frame measurement is unavailable. */
    val missingReferenceSignal: Float = DEFAULT_MISSING_REFERENCE_SIGNAL,
    /**
     * Scales Sabre's 128-bin spectrum before noise-pyramid propagation. The
     * separable 2D noise energy scales quadratically; zero means zero modeled
     * noise energy. Spatial preserves its measured spectrum without this override.
     */
    val noiseCorrelationScale: Float = 1f,
) {
    fun normalized(): PhotonFusionTuning = copy(
        mergeGradientThreshold = mergeGradientThreshold
            ?.takeIf(Float::isFinite)
            ?.coerceIn(-32f, 32f),
        missingReferenceSignal = missingReferenceSignal
            .takeIf(Float::isFinite)
            ?.coerceIn(0f, 1f)
            ?: DEFAULT_MISSING_REFERENCE_SIGNAL,
        noiseCorrelationScale = noiseCorrelationScale
            .takeIf(Float::isFinite)
            ?.coerceIn(0f, 8f)
            ?: 1f,
    )

    companion object {
        const val DEFAULT_MISSING_REFERENCE_SIGNAL = 0.18f
        val DEFAULT = PhotonFusionTuning()
    }
}

/** Fixed five-level pyramid multiplier with structural equality. */
data class PhotonPyramidScales(
    val level1: Float = 1f,
    val level2: Float = 1f,
    val level3: Float = 1f,
    val level4: Float = 1f,
    val level5: Float = 1f,
) {
    fun toFloatArray(): FloatArray = floatArrayOf(level1, level2, level3, level4, level5)

    fun normalized(): PhotonPyramidScales = map { value ->
        value.takeIf(Float::isFinite)?.coerceIn(0f, MAX_SCALE) ?: 1f
    }

    private fun map(transform: (Float) -> Float): PhotonPyramidScales = PhotonPyramidScales(
        transform(level1),
        transform(level2),
        transform(level3),
        transform(level4),
        transform(level5),
    )

    companion object {
        private const val MAX_SCALE = 16f
        val IDENTITY = PhotonPyramidScales()

        fun uniform(value: Float): PhotonPyramidScales = PhotonPyramidScales(
            level1 = value,
            level2 = value,
            level3 = value,
            level4 = value,
            level5 = value,
        ).normalized()
    }
}

/** Direct controls for the full-resolution luma/chroma denoise stage. */
data class PhotonDenoiseTuning(
    val lumaStrengthScale: PhotonPyramidScales = PhotonPyramidScales.IDENTITY,
    /** Multiplies the luma revert-factor field: higher values restore the source more strongly. */
    val detailReconstructionScale: PhotonPyramidScales = PhotonPyramidScales.IDENTITY,
    val outlierRejectionScale: PhotonPyramidScales = PhotonPyramidScales.IDENTITY,
    val chromaStrengthScale: PhotonPyramidScales = PhotonPyramidScales.IDENTITY,
    val frequencyResponse: PhotonDenoiseFrequencyResponse = PhotonDenoiseFrequencyResponse.DEFAULT,
    /** Optional absolute Sabre luma strength nodes at SNR 5/20/40, before interpolation. */
    val sabreLumaNodes: PhotonSabreLumaTuningNodes = PhotonSabreLumaTuningNodes.DEFAULT,
    /** Independent absolute protobuf fields, also overridden before SNR interpolation. */
    val sabreLumaRevertNodes: PhotonSabreLumaTuningNodes = PhotonSabreLumaTuningNodes.DEFAULT,
    val sabreLumaOutlierNodes: PhotonSabreLumaTuningNodes = PhotonSabreLumaTuningNodes.DEFAULT,
    /** Initial value of a default 128-bin spectrum; never a multiplier for measured spectra. */
    val noiseSpectrumSeed: Float = DEFAULT_SPECTRUM_SEED,
    /**
     * GCam raw_finish_tuning chroma_median_filter_type of the low-frequency branch:
     * 0 none (GCam's default), 1 dual_5_point, 2 dual_3_point (the type GCam's sensor
     * tunings enable most often).
     */
    val chromaMedianFilterType: Int = CHROMA_MEDIAN_DUAL_3_POINT,
) {
    fun normalized(): PhotonDenoiseTuning = copy(
        lumaStrengthScale = lumaStrengthScale.normalized(),
        detailReconstructionScale = detailReconstructionScale.normalized(),
        outlierRejectionScale = outlierRejectionScale.normalized(),
        chromaStrengthScale = chromaStrengthScale.normalized(),
        frequencyResponse = frequencyResponse.normalized(),
        sabreLumaNodes = sabreLumaNodes.normalized(),
        sabreLumaRevertNodes = sabreLumaRevertNodes.normalized(allowNegative = true),
        sabreLumaOutlierNodes = sabreLumaOutlierNodes.normalized(allowNegative = true),
        noiseSpectrumSeed = noiseSpectrumSeed.takeIf(Float::isFinite)
            ?.coerceIn(0f, 8f) ?: DEFAULT_SPECTRUM_SEED,
        chromaMedianFilterType = chromaMedianFilterType.coerceIn(
            CHROMA_MEDIAN_NONE,
            CHROMA_MEDIAN_DUAL_3_POINT,
        ),
    )

    companion object {
        const val DEFAULT_SPECTRUM_SEED = 1f
        const val CHROMA_MEDIAN_NONE = 0
        const val CHROMA_MEDIAN_DUAL_5_POINT = 1
        const val CHROMA_MEDIAN_DUAL_3_POINT = 2
        val DEFAULT = PhotonDenoiseTuning()
    }
}

/** Constants in the denoise pyramid response `(responseOffset-cos²)+(cos+cosineOffset)²`. */
data class PhotonDenoiseFrequencyResponse(
    val responseOffset: Float = DEFAULT_RESPONSE_OFFSET,
    val cosineOffset: Float = -1f,
) {
    fun normalized(): PhotonDenoiseFrequencyResponse = copy(
        responseOffset = responseOffset.takeIf(Float::isFinite)?.coerceIn(-32f, 32f)
            ?: DEFAULT_RESPONSE_OFFSET,
        cosineOffset = cosineOffset.takeIf(Float::isFinite)?.coerceIn(-32f, 32f) ?: -1f,
    )

    companion object {
        const val DEFAULT_RESPONSE_OFFSET = 1f
        val DEFAULT = PhotonDenoiseFrequencyResponse()
    }
}

/** Absolute field overrides. Null preserves the asset; signed revert/outlier values are literal. */
data class PhotonPyramidOverrides(
    val level1: Float? = null,
    val level2: Float? = null,
    val level3: Float? = null,
    val level4: Float? = null,
    val level5: Float? = null,
) {
    fun toList(): List<Float?> = listOf(level1, level2, level3, level4, level5)

    fun normalized(allowNegative: Boolean = false): PhotonPyramidOverrides {
        val values = toList().map { value ->
            value?.takeIf(Float::isFinite)?.coerceIn(if (allowNegative) -32f else 0f, 32f)
        }
        return PhotonPyramidOverrides(values[0], values[1], values[2], values[3], values[4])
    }
}

/** SNR nodes for one independent luma protobuf field (strength, revert, or outlier). */
data class PhotonSabreLumaTuningNodes(
    val snr5: PhotonPyramidOverrides = PhotonPyramidOverrides(),
    val snr20: PhotonPyramidOverrides = PhotonPyramidOverrides(),
    val snr40: PhotonPyramidOverrides = PhotonPyramidOverrides(),
) {
    fun normalized(allowNegative: Boolean = false): PhotonSabreLumaTuningNodes = copy(
        snr5 = snr5.normalized(allowNegative),
        snr20 = snr20.normalized(allowNegative),
        snr40 = snr40.normalized(allowNegative),
    )

    fun valuesForSnr(snr: Float): List<Float?>? = when (snr) {
        SNR_5 -> snr5.toList()
        SNR_20 -> snr20.toList()
        SNR_40 -> snr40.toList()
        else -> null
    }

    companion object {
        const val SNR_5 = 5f
        const val SNR_20 = 20f
        const val SNR_40 = 40f
        val DEFAULT = PhotonSabreLumaTuningNodes()
    }
}

/**
 * Controls for Dehaze + DHA applied to HDRNet output and baked into its PGTM.
 *
 * [strength] scales the two estimated atmospheric haze points before curve construction.
 * [dynamicHighlightStrength] controls how much of the histogram-derived highlight scale is used;
 * zero preserves the original white scale and one applies the complete dynamic adjustment.
 */
data class PhotonDehazeTuning(
    val enabled: Boolean = true,
    val strength: Float = 1f,
    val dynamicHighlightStrength: Float = 1f,
) {
    fun normalized(): PhotonDehazeTuning = copy(
        strength = strength
            .takeIf(Float::isFinite)
            ?.coerceIn(0f, 4f)
            ?: 1f,
        dynamicHighlightStrength = dynamicHighlightStrength
            .takeIf(Float::isFinite)
            ?.coerceIn(0f, 1f)
            ?: 1f,
    )

    val isActive: Boolean
        get() = normalized().let {
            it.enabled && (it.strength > 0f || it.dynamicHighlightStrength > 0f)
        }

    companion object {
        val DEFAULT = PhotonDehazeTuning()
        val DISABLED = PhotonDehazeTuning(enabled = false)
    }
}
