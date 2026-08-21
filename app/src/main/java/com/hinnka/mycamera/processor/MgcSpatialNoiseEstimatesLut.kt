package com.hinnka.mycamera.processor

/** Linear-domain noise-estimate LUT consumed by MGC Spatial guide and rejection shaders. */
internal object MgcSpatialNoiseEstimatesLut {
    const val WIDTH = 10
    const val ROWS = 2
    const val CHANNELS = 4

    fun create(
        referenceShotNoise: FloatArray,
        referenceReadNoise: FloatArray,
        currentShotNoise: FloatArray,
        currentReadNoise: FloatArray,
    ): FloatArray {
        require(referenceShotNoise.size >= CHANNELS)
        require(referenceReadNoise.size >= CHANNELS)
        require(currentShotNoise.size >= CHANNELS)
        require(currentReadNoise.size >= CHANNELS)

        return FloatArray(WIDTH * ROWS * CHANNELS).also { values ->
            writeRow(values, 0, referenceShotNoise, referenceReadNoise)
            writeRow(values, 1, currentShotNoise, currentReadNoise)
        }
    }

    private fun writeRow(
        destination: FloatArray,
        row: Int,
        shotNoise: FloatArray,
        readNoise: FloatArray,
    ) {
        for (x in 0 until WIDTH) {
            // MGC addresses this LUT with 0.9 * signal + 0.05. Consequently its ten texel
            // centers represent the inclusive signal endpoints x / 9, not (x + 0.5) / 10.
            val signal = x.toFloat() / (WIDTH - 1).toFloat()
            val offset = (row * WIDTH + x) * CHANNELS
            destination[offset] = variance(signal, shotNoise[0], readNoise[0])
            destination[offset + 1] = 0.25f * (
                variance(signal, shotNoise[1], readNoise[1]) +
                    variance(signal, shotNoise[2], readNoise[2])
                )
            destination[offset + 2] = variance(signal, shotNoise[3], readNoise[3])
            destination[offset + 3] = 0f
        }
    }

    private fun variance(signal: Float, shotNoise: Float, readNoise: Float): Float =
        shotNoise * signal + readNoise
}
