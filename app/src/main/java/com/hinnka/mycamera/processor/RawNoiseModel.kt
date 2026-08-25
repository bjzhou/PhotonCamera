package com.hinnka.mycamera.processor

class RawNoiseModel private constructor(
    shotNoise: FloatArray,
    readNoise: FloatArray,
    val hasValidCamera2Profile: Boolean,
    private val cfaPhaseOrdered: Boolean,
) {
    val shotNoise: FloatArray = normalizeChannels(shotNoise)
    val readNoise: FloatArray = normalizeChannels(readNoise)

    val averageShotNoise: Float = average(this.shotNoise)
    val averageReadNoise: Float = average(this.readNoise)
    val greenShotNoise: Float = 0.5f * (this.shotNoise[1] + this.shotNoise[2])
    val greenReadNoise: Float = 0.5f * (this.readNoise[1] + this.readNoise[2])

    /**
     * Camera2/DNG noise-profile coefficients already describe variance in normalized sensor
     * space: variance = S * signal + O. The shader also works in that space, so applying an
     * additional 16-bit normalization here would underestimate noise by several orders of
     * magnitude.
     */
    fun normalizedShotNoiseForShader(cfaPattern: Int = 0): FloatArray =
        canonicalChannels(shotNoise, cfaPattern)

    fun normalizedReadNoiseForShader(cfaPattern: Int = 0): FloatArray =
        canonicalChannels(readNoise, cfaPattern)

    fun canonicalChannelPairs(cfaPattern: Int = 0): FloatArray {
        val shot = normalizedShotNoiseForShader(cfaPattern)
        val read = normalizedReadNoiseForShader(cfaPattern)
        return FloatArray(CHANNEL_COUNT * 2) { index ->
            val channel = index / 2
            if (index % 2 == 0) shot[channel] else read[channel]
        }
    }

    private fun canonicalChannels(values: FloatArray, cfaPattern: Int): FloatArray {
        if (!cfaPhaseOrdered) return values.copyOf()
        val phaseToCanonical = when (cfaPattern.mod(4)) {
            1 -> intArrayOf(1, 0, 3, 2)
            2 -> intArrayOf(2, 3, 0, 1)
            3 -> intArrayOf(3, 2, 1, 0)
            else -> intArrayOf(0, 1, 2, 3)
        }
        return FloatArray(CHANNEL_COUNT).also { canonical ->
            phaseToCanonical.forEachIndexed { phase, channel ->
                canonical[channel] = values[phase]
            }
        }
    }

    companion object {
        private const val CHANNEL_COUNT = 4
        val EMPTY = RawNoiseModel(
            shotNoise = FloatArray(CHANNEL_COUNT),
            readNoise = FloatArray(CHANNEL_COUNT),
            hasValidCamera2Profile = false,
            cfaPhaseOrdered = false,
        )

        fun fromLegacyNoiseModel(noiseModel: FloatArray): RawNoiseModel {
            val s = sanitizeCoefficient(noiseModel.getOrElse(0) { 0f })
            val o = sanitizeCoefficient(noiseModel.getOrElse(1) { 0f })
            if (s <= 0f && o <= 0f) return EMPTY
            return RawNoiseModel(
                shotNoise = FloatArray(CHANNEL_COUNT) { s },
                readNoise = FloatArray(CHANNEL_COUNT) { o },
                hasValidCamera2Profile = false,
                cfaPhaseOrdered = false,
            )
        }

        /**
         * Imports CaptureResult.SENSOR_NOISE_PROFILE using MGC's default semantics.
         *
         * MGC reads exactly four Camera2 pairs in CFA phase order and passes every pair's first
         * component to NoiseModel_FromShotReadNoiseVector as shot noise (S), and every second
         * component as read noise (O). No ISO/profile evaluation is performed on this path.
         */
        fun fromCamera2NoiseProfile(channelPairs: FloatArray): RawNoiseModel {
            if (channelPairs.size < CHANNEL_COUNT * 2) return EMPTY

            fun coefficient(pair: Int, component: Int): Float =
                sanitizeCoefficient(channelPairs.getOrElse(pair * 2 + component) { 0f })
            val shotNoise = FloatArray(CHANNEL_COUNT) { coefficient(it, 0) }
            val readNoise = FloatArray(CHANNEL_COUNT) { coefficient(it, 1) }
            return RawNoiseModel(
                shotNoise = shotNoise,
                readNoise = readNoise,
                // DNG requires S > 0 and O >= 0. Some O channels may legitimately be zero, but
                // an all-zero O vector is the Camera2 default seen on devices without a usable
                // read-noise profile and cannot drive Spatial's read-only propagation pass.
                hasValidCamera2Profile =
                    shotNoise.all { it > 0f } && readNoise.any { it > 0f },
                cfaPhaseOrdered = true,
            )
        }

        /** Imports a canonical DNG NoiseProfile ordered as R, G, B. */
        fun fromDngNoiseProfile(channelPairs: FloatArray): RawNoiseModel {
            if (channelPairs.size < 6) return EMPTY
            fun coefficient(pair: Int, component: Int): Float =
                sanitizeCoefficient(channelPairs.getOrElse(pair * 2 + component) { 0f })
            val shotNoise = floatArrayOf(
                coefficient(0, 0),
                coefficient(1, 0),
                coefficient(1, 0),
                coefficient(2, 0),
            )
            val readNoise = floatArrayOf(
                coefficient(0, 1),
                coefficient(1, 1),
                coefficient(1, 1),
                coefficient(2, 1),
            )
            return RawNoiseModel(
                shotNoise = shotNoise,
                readNoise = readNoise,
                hasValidCamera2Profile = false,
                cfaPhaseOrdered = false,
            )
        }

        /** Imports an evaluated GCam A/B/C/D model in canonical R, Gr, Gb, B order. */
        fun fromCanonicalBayerChannels(
            shotNoise: FloatArray,
            readNoise: FloatArray,
        ): RawNoiseModel {
            if (shotNoise.size != CHANNEL_COUNT || readNoise.size != CHANNEL_COUNT) return EMPTY
            val sanitizedShot = FloatArray(CHANNEL_COUNT) {
                sanitizeCoefficient(shotNoise[it])
            }
            val sanitizedRead = FloatArray(CHANNEL_COUNT) {
                sanitizeCoefficient(readNoise[it])
            }
            if (sanitizedShot.none { it > 0f } && sanitizedRead.none { it > 0f }) return EMPTY
            return RawNoiseModel(
                shotNoise = sanitizedShot,
                readNoise = sanitizedRead,
                hasValidCamera2Profile = false,
                cfaPhaseOrdered = false,
            )
        }

        /**
         * Reproduces MGC's default Bayer NoiseModel -> RGB NoiseModel channel remap.
         *
         * The wrapper at 0x36357DC calls the transform at 0x5E9698C with its optional
         * post-scale disabled. RemapChannels maps [R, Gr, Gb, B] to [R, G, B] with unit
         * weights, then divides every destination NoiseModel coefficient by its accumulated
         * weight. Therefore G is the coefficient mean of Gr and Gb, not the variance of an
         * independently averaged pair of pixels.
         */
        fun bayerNoiseModelToRgb(channels: FloatArray): FloatArray {
            val red = channels.getOrElse(0) { 0f }
            val green1 = channels.getOrElse(1) { 0f }
            val green2 = channels.getOrElse(2) { green1 }
            val blue = channels.getOrElse(3) { 0f }
            return floatArrayOf(
                red,
                0.5f * (green1 + green2),
                blue,
            )
        }

        private fun normalizeChannels(values: FloatArray): FloatArray {
            if (values.isEmpty()) return FloatArray(CHANNEL_COUNT)
            return FloatArray(CHANNEL_COUNT) { index ->
                sanitizeCoefficient(values.getOrElse(index) { values.last() })
            }
        }

        private fun sanitizeCoefficient(value: Float): Float {
            return value.takeIf { it.isFinite() }?.coerceAtLeast(0f) ?: 0f
        }

        private fun average(values: FloatArray): Float {
            if (values.isEmpty()) return 0f
            return values.sum() / values.size.toFloat()
        }
    }
}

internal enum class RawNoiseModelSource {
    GCAM_CALIBRATED,
    CAMERA2_PER_FRAME,
    CAMERA2_BASE_FRAME,
    PIXEL3_FALLBACK,
    UNAVAILABLE,
}

internal data class ResolvedRawNoiseModel(
    val model: RawNoiseModel,
    val source: RawNoiseModelSource,
)

/** Resolves the selected source, with Pixel 3 as the default for unusable Camera2 profiles. */
internal object RawNoiseModelResolver {
    fun resolve(
        selection: RawNoiseProfileSelection,
        sensitivity: Int,
        minimumSensitivityIso: Int = 0,
        maximumAnalogSensitivityIso: Int = 0,
        perFrameCamera2Profile: FloatArray?,
        baseFrameCamera2Model: RawNoiseModel,
    ): ResolvedRawNoiseModel {
        when (selection) {
            is RawNoiseProfileSelection.Calibrated -> {
                val model = selection.profile.evaluate(
                    sensitivity = sensitivity,
                    minimumSensitivityIso = minimumSensitivityIso,
                    maximumAnalogSensitivityIso = maximumAnalogSensitivityIso,
                )
                    ?: return ResolvedRawNoiseModel(
                        RawNoiseModel.EMPTY,
                        RawNoiseModelSource.UNAVAILABLE,
                    )
                return ResolvedRawNoiseModel(model, RawNoiseModelSource.GCAM_CALIBRATED)
            }
            RawNoiseProfileSelection.Camera2 -> Unit
        }
        perFrameCamera2Profile
            ?.let(RawNoiseModel::fromCamera2NoiseProfile)
            ?.takeIf { it.hasValidCamera2Profile }
            ?.let { model ->
                return ResolvedRawNoiseModel(model, RawNoiseModelSource.CAMERA2_PER_FRAME)
            }
        if (baseFrameCamera2Model.hasValidCamera2Profile) {
            return ResolvedRawNoiseModel(
                baseFrameCamera2Model,
                RawNoiseModelSource.CAMERA2_BASE_FRAME,
            )
        }
        val fallback = CalibratedRawNoiseProfile.MGC_GOOGLE_BLUELINE_REAR
            .evaluate(
                sensitivity = sensitivity,
                minimumSensitivityIso = minimumSensitivityIso,
                maximumAnalogSensitivityIso = maximumAnalogSensitivityIso,
            )
            ?: return ResolvedRawNoiseModel(
                RawNoiseModel.EMPTY,
                RawNoiseModelSource.UNAVAILABLE,
            )
        return ResolvedRawNoiseModel(fallback, RawNoiseModelSource.PIXEL3_FALLBACK)
    }
}
