package com.hinnka.mycamera.processor

/**
 * Photon-owned controls for the core RAW imaging chain.
 *
 * The model is intentionally organized by processing domain. It is capture-scoped, persisted,
 * embedded in RAW metadata, and hidden from the settings UI until a dedicated tuning surface is
 * introduced. Runtime processors must consume these domain fields directly rather than importing
 * a third-party patch vocabulary.
 */
data class PhotonCoreImagingTuning(
    val fusion: PhotonFusionTuning = PhotonFusionTuning.DEFAULT,
    val denoise: PhotonDenoiseTuning = PhotonDenoiseTuning.DEFAULT,
    val sharpen: PhotonSharpenTuning = PhotonSharpenTuning.DEFAULT,
    /** Controls the standalone low-frequency dehaze pipeline. */
    val dehaze: PhotonDehazeTuning = PhotonDehazeTuning.DEFAULT,
) {
    fun normalized(): PhotonCoreImagingTuning = copy(
        fusion = fusion.normalized(),
        denoise = denoise.normalized(),
        sharpen = sharpen.normalized(),
        dehaze = dehaze.normalized(),
    )

    fun toCustomProperties(): Map<String, String> {
        val tuning = normalized()
        return buildMap {
            tuning.fusion.mergeGradientThreshold?.let {
                put(FUSION_GRADIENT_THRESHOLD_PROPERTY, it.toString())
            }
            put(FUSION_FALLBACK_SIGNAL_PROPERTY, tuning.fusion.missingReferenceSignal.toString())
            put(FUSION_CORRELATION_SCALE_PROPERTY, tuning.fusion.noiseCorrelationScale.toString())
            put(DENOISE_LUMA_SCALE_PROPERTY, tuning.denoise.lumaStrengthScale.toPersistedString())
            put(
                DENOISE_REVERT_SCALE_PROPERTY,
                tuning.denoise.detailReconstructionScale.toPersistedString(),
            )
            put(
                DENOISE_OUTLIER_SCALE_PROPERTY,
                tuning.denoise.outlierRejectionScale.toPersistedString(),
            )
            put(
                DENOISE_CHROMA_SCALE_PROPERTY,
                tuning.denoise.chromaStrengthScale.toPersistedString(),
            )
            put(
                DENOISE_RESPONSE_OFFSET_PROPERTY,
                tuning.denoise.frequencyResponse.responseOffset.toString(),
            )
            put(
                DENOISE_RESPONSE_COSINE_OFFSET_PROPERTY,
                tuning.denoise.frequencyResponse.cosineOffset.toString(),
            )
            tuning.denoise.sabreLumaNodes.toPersistedString()?.let {
                put(DENOISE_SABRE_NODES_PROPERTY, it)
            }
            put(
                SHARPEN_FREQUENCY_SCALE_PROPERTY,
                tuning.sharpen.snrInterpolationScale.toPersistedString(),
            )
            put(DEHAZE_ENABLED_PROPERTY, tuning.dehaze.enabled.toString())
            put(DEHAZE_STRENGTH_PROPERTY, tuning.dehaze.strength.toString())
            put(
                DEHAZE_DYNAMIC_HIGHLIGHT_STRENGTH_PROPERTY,
                tuning.dehaze.dynamicHighlightStrength.toString(),
            )
        }
    }

    fun toPersistedString(): String = toCustomProperties()
        .entries
        .sortedBy(Map.Entry<String, String>::key)
        .joinToString("\n") { (key, value) -> "$key=$value" }

    companion object {
        const val FUSION_GRADIENT_THRESHOLD_PROPERTY = "photonFusionGradientThreshold"
        const val FUSION_FALLBACK_SIGNAL_PROPERTY = "photonFusionMissingReferenceSignal"
        const val FUSION_CORRELATION_SCALE_PROPERTY = "photonFusionNoiseCorrelationScale"
        const val DENOISE_LUMA_SCALE_PROPERTY = "photonDenoiseLumaStrengthScale"
        const val DENOISE_REVERT_SCALE_PROPERTY = "photonDenoiseDetailReconstructionScale"
        const val DENOISE_OUTLIER_SCALE_PROPERTY = "photonDenoiseOutlierRejectionScale"
        const val DENOISE_CHROMA_SCALE_PROPERTY = "photonDenoiseChromaStrengthScale"
        const val DENOISE_RESPONSE_OFFSET_PROPERTY = "photonDenoiseResponseOffset"
        const val DENOISE_RESPONSE_COSINE_OFFSET_PROPERTY = "photonDenoiseResponseCosineOffset"
        const val DENOISE_SABRE_NODES_PROPERTY = "photonDenoiseSabreLumaNodes"
        const val SHARPEN_FREQUENCY_SCALE_PROPERTY = "photonSharpenSnrFrequencyScale"
        const val DEHAZE_ENABLED_PROPERTY = "photonDehazeEnabled"
        const val DEHAZE_STRENGTH_PROPERTY = "photonDehazeStrength"
        const val DEHAZE_DYNAMIC_HIGHLIGHT_STRENGTH_PROPERTY =
            "photonDehazeDynamicHighlightStrength"

        val DEFAULT = PhotonCoreImagingTuning()

        fun fromPersistedString(value: String?): PhotonCoreImagingTuning {
            if (value.isNullOrBlank()) return DEFAULT
            val properties = value.lineSequence().mapNotNull { line ->
                val separator = line.indexOf('=')
                if (separator <= 0) null else line.substring(0, separator) to
                    line.substring(separator + 1)
            }.toMap()
            return fromCustomProperties(properties)
        }

        fun fromCustomProperties(properties: Map<String, String>): PhotonCoreImagingTuning {
            val hasPhotonProperties = properties.keys.any { it.startsWith("photon") }
            if (!hasPhotonProperties) return DEFAULT
            return PhotonCoreImagingTuning(
                fusion = PhotonFusionTuning(
                    mergeGradientThreshold = properties[FUSION_GRADIENT_THRESHOLD_PROPERTY]
                        ?.toFloatOrNull(),
                    missingReferenceSignal = properties[FUSION_FALLBACK_SIGNAL_PROPERTY]
                        ?.toFloatOrNull() ?: PhotonFusionTuning.DEFAULT_MISSING_REFERENCE_SIGNAL,
                    noiseCorrelationScale = properties[FUSION_CORRELATION_SCALE_PROPERTY]
                        ?.toFloatOrNull() ?: 1f,
                ),
                denoise = PhotonDenoiseTuning(
                    lumaStrengthScale = PhotonPyramidScales.fromPersistedString(
                        properties[DENOISE_LUMA_SCALE_PROPERTY],
                    ),
                    detailReconstructionScale = PhotonPyramidScales.fromPersistedString(
                        properties[DENOISE_REVERT_SCALE_PROPERTY],
                    ),
                    outlierRejectionScale = PhotonPyramidScales.fromPersistedString(
                        properties[DENOISE_OUTLIER_SCALE_PROPERTY],
                    ),
                    chromaStrengthScale = PhotonPyramidScales.fromPersistedString(
                        properties[DENOISE_CHROMA_SCALE_PROPERTY],
                    ),
                    frequencyResponse = PhotonDenoiseFrequencyResponse(
                        responseOffset = properties[DENOISE_RESPONSE_OFFSET_PROPERTY]
                            ?.toFloatOrNull() ?: 1f,
                        cosineOffset = properties[DENOISE_RESPONSE_COSINE_OFFSET_PROPERTY]
                            ?.toFloatOrNull() ?: -1f,
                    ),
                    sabreLumaNodes = PhotonSabreLumaTuningNodes.fromPersistedString(
                        properties[DENOISE_SABRE_NODES_PROPERTY],
                    ),
                ),
                sharpen = PhotonSharpenTuning(
                    snrInterpolationScale = PhotonFrequencyScales.fromPersistedString(
                        properties[SHARPEN_FREQUENCY_SCALE_PROPERTY],
                    ),
                ),
                dehaze = PhotonDehazeTuning(
                    enabled = properties[DEHAZE_ENABLED_PROPERTY]
                        ?.toBooleanStrictOrNull() ?: PhotonDehazeTuning.DEFAULT.enabled,
                    strength = properties[DEHAZE_STRENGTH_PROPERTY]
                        ?.toFloatOrNull() ?: PhotonDehazeTuning.DEFAULT.strength,
                    dynamicHighlightStrength =
                        properties[DEHAZE_DYNAMIC_HIGHLIGHT_STRENGTH_PROPERTY]
                            ?.toFloatOrNull()
                            ?: PhotonDehazeTuning.DEFAULT.dynamicHighlightStrength,
                ),
            ).normalized()
        }

    }
}

/** Controls frame admission and propagated noise behavior in multi-frame fusion. */
data class PhotonFusionTuning(
    /** Null keeps the SNR-adaptive merge threshold; a value directly overrides it. */
    val mergeGradientThreshold: Float? = null,
    /** Normalized green signal used only when reference-frame measurement is unavailable. */
    val missingReferenceSignal: Float = DEFAULT_MISSING_REFERENCE_SIGNAL,
    /** Scales the 128-bin correlation spectrum before demosaic/noise-pyramid propagation. */
    val noiseCorrelationScale: Float = 1f,
) {
    fun normalized(): PhotonFusionTuning = copy(
        mergeGradientThreshold = mergeGradientThreshold
            ?.takeIf(Float::isFinite)
            ?.coerceIn(0f, 32f),
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

/** Fixed five-level pyramid multiplier with structural equality and stable serialization. */
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

    fun toPersistedString(): String = toFloatArray().joinToString(",")

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

        fun fromPersistedString(value: String?): PhotonPyramidScales {
            val values = value?.split(',')?.map(String::toFloatOrNull) ?: return IDENTITY
            if (values.size != 5 || values.any { it == null }) return IDENTITY
            return PhotonPyramidScales(
                values[0]!!,
                values[1]!!,
                values[2]!!,
                values[3]!!,
                values[4]!!,
            ).normalized()
        }
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
) {
    fun normalized(): PhotonDenoiseTuning = copy(
        lumaStrengthScale = lumaStrengthScale.normalized(),
        detailReconstructionScale = detailReconstructionScale.normalized(),
        outlierRejectionScale = outlierRejectionScale.normalized(),
        chromaStrengthScale = chromaStrengthScale.normalized(),
        frequencyResponse = frequencyResponse.normalized(),
        sabreLumaNodes = sabreLumaNodes.normalized(),
    )

    companion object {
        val DEFAULT = PhotonDenoiseTuning()
    }
}

/** Constants in the denoise pyramid response `(responseOffset-cos²)+(cos+cosineOffset)²`. */
data class PhotonDenoiseFrequencyResponse(
    val responseOffset: Float = 1f,
    val cosineOffset: Float = -1f,
) {
    fun normalized(): PhotonDenoiseFrequencyResponse = copy(
        responseOffset = responseOffset.takeIf(Float::isFinite)?.coerceIn(-32f, 32f) ?: 1f,
        cosineOffset = cosineOffset.takeIf(Float::isFinite)?.coerceIn(-32f, 32f) ?: -1f,
    )

    companion object {
        val DEFAULT = PhotonDenoiseFrequencyResponse()
    }
}

/** Optional absolute strength overrides for one five-level Sabre tuning node. */
data class PhotonPyramidOverrides(
    val level1: Float? = null,
    val level2: Float? = null,
    val level3: Float? = null,
    val level4: Float? = null,
    val level5: Float? = null,
) {
    fun toList(): List<Float?> = listOf(level1, level2, level3, level4, level5)

    fun normalized(): PhotonPyramidOverrides {
        val values = toList().map { value ->
            value?.takeIf(Float::isFinite)?.coerceIn(0f, 32f)
        }
        return PhotonPyramidOverrides(values[0], values[1], values[2], values[3], values[4])
    }

    fun toPersistedString(): String = toList().joinToString(",") { it?.toString().orEmpty() }

    companion object {
        fun fromPersistedString(value: String): PhotonPyramidOverrides? {
            val tokens = value.split(',')
            if (tokens.size != 5) return null
            val parsed = tokens.map { token ->
                if (token.isEmpty()) null else token.toFloatOrNull() ?: return null
            }
            return PhotonPyramidOverrides(
                parsed[0],
                parsed[1],
                parsed[2],
                parsed[3],
                parsed[4],
            ).normalized()
        }
    }
}

data class PhotonSabreLumaTuningNodes(
    val snr5: PhotonPyramidOverrides = PhotonPyramidOverrides(),
    val snr20: PhotonPyramidOverrides = PhotonPyramidOverrides(),
    val snr40: PhotonPyramidOverrides = PhotonPyramidOverrides(),
) {
    fun normalized(): PhotonSabreLumaTuningNodes = copy(
        snr5 = snr5.normalized(),
        snr20 = snr20.normalized(),
        snr40 = snr40.normalized(),
    )

    fun valuesForSnr(snr: Float): List<Float?>? = when (snr) {
        SNR_5 -> snr5.toList()
        SNR_20 -> snr20.toList()
        SNR_40 -> snr40.toList()
        else -> null
    }

    fun toPersistedString(): String? {
        val tuning = normalized()
        if (tuning == DEFAULT) return null
        return listOf(tuning.snr5, tuning.snr20, tuning.snr40)
            .joinToString(";") { it.toPersistedString() }
    }

    companion object {
        const val SNR_5 = 5f
        const val SNR_20 = 20f
        const val SNR_40 = 40f
        val DEFAULT = PhotonSabreLumaTuningNodes()

        fun fromPersistedString(value: String?): PhotonSabreLumaTuningNodes {
            val rows = value?.split(';') ?: return DEFAULT
            if (rows.size != 3) return DEFAULT
            return PhotonSabreLumaTuningNodes(
                snr5 = PhotonPyramidOverrides.fromPersistedString(rows[0]) ?: return DEFAULT,
                snr20 = PhotonPyramidOverrides.fromPersistedString(rows[1]) ?: return DEFAULT,
                snr40 = PhotonPyramidOverrides.fromPersistedString(rows[2]) ?: return DEFAULT,
            ).normalized()
        }
    }
}

data class PhotonFrequencyScales(
    val low: Float = 1f,
    val medium: Float = 1f,
    val high: Float = 1f,
) {
    fun toFloatArray(): FloatArray = floatArrayOf(low, medium, high)

    fun normalized(): PhotonFrequencyScales = copy(
        low = normalizeScale(low),
        medium = normalizeScale(medium),
        high = normalizeScale(high),
    )

    fun toPersistedString(): String = "$low,$medium,$high"

    companion object {
        val IDENTITY = PhotonFrequencyScales()

        fun fromPersistedString(value: String?): PhotonFrequencyScales {
            val values = value?.split(',')?.map(String::toFloatOrNull) ?: return IDENTITY
            if (values.size != 3 || values.any { it == null }) return IDENTITY
            return PhotonFrequencyScales(values[0]!!, values[1]!!, values[2]!!).normalized()
        }

        private fun normalizeScale(value: Float): Float =
            value.takeIf(Float::isFinite)?.coerceIn(0f, 16f) ?: 1f
    }
}

data class PhotonSharpenTuning(
    /** Scales the SNR interpolation amount independently for low/mid/high frequency groups. */
    val snrInterpolationScale: PhotonFrequencyScales = PhotonFrequencyScales.IDENTITY,
) {
    fun normalized(): PhotonSharpenTuning = copy(
        snrInterpolationScale = snrInterpolationScale.normalized(),
    )

    companion object {
        val DEFAULT = PhotonSharpenTuning()
    }
}

/**
 * Controls for the standalone low-frequency dehaze pipeline.
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
