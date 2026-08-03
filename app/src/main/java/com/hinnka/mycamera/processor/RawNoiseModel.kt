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

        fun fromCamera2NoiseProfile(channelPairs: FloatArray): RawNoiseModel {
            if (channelPairs.size < 2) return EMPTY
            if (channelPairs.size == 2) return fromLegacyNoiseModel(channelPairs)

            val pairCount = channelPairs.size / 2
            fun coefficient(pair: Int, component: Int): Float =
                sanitizeCoefficient(channelPairs.getOrElse(pair * 2 + component) { 0f })

            // Camera2 supplies four CFA-position pairs. A DNG normally supplies canonical
            // R/G/B pairs and native parsing may append an empty fourth pair.
            val hasFourthPair = pairCount >= CHANNEL_COUNT &&
                (coefficient(3, 0) > 0f || coefficient(3, 1) > 0f)
            val cfaPhaseOrdered = hasFourthPair
            val shotNoise = if (hasFourthPair) {
                FloatArray(CHANNEL_COUNT) { coefficient(it, 0) }
            } else if (pairCount >= 3) {
                floatArrayOf(
                    coefficient(0, 0),
                    coefficient(1, 0),
                    coefficient(1, 0),
                    coefficient(2, 0),
                )
            } else {
                FloatArray(CHANNEL_COUNT) { coefficient(it.coerceAtMost(pairCount - 1), 0) }
            }
            val readNoise = if (hasFourthPair) {
                FloatArray(CHANNEL_COUNT) { coefficient(it, 1) }
            } else if (pairCount >= 3) {
                floatArrayOf(
                    coefficient(0, 1),
                    coefficient(1, 1),
                    coefficient(1, 1),
                    coefficient(2, 1),
                )
            } else {
                FloatArray(CHANNEL_COUNT) { coefficient(it.coerceAtMost(pairCount - 1), 1) }
            }
            return RawNoiseModel(
                shotNoise = shotNoise,
                readNoise = readNoise,
                hasValidCamera2Profile = shotNoise.any { it > 0f } || readNoise.any { it > 0f },
                cfaPhaseOrdered = cfaPhaseOrdered,
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
