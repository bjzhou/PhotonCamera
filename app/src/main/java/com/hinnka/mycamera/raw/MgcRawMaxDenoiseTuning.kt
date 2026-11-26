package com.hinnka.mycamera.raw

/** Per-level adjustments to the interpolated FinishRaw binarypb tuning for observed RAWmax SNR. */
internal object MgcRawMaxDenoiseTuning {
    data class Scales(
        val lumaStrength: FloatArray,
        val chromaStrength: FloatArray,
        val lumaRevert: FloatArray,
    )

    private data class Point(val snr: Float, val scales: Scales)

    // Fine to coarse. Both merge modes use these factors with their own luma assets.
    // The SNR 5 point retains the knee of the shared chroma asset.
    private val points = listOf(
        Point(3.5f, Scales(
            lumaStrength = floatArrayOf(1.4162f, 1.4357f, 2.0043f, 2.3018f, 1.8671f),
            chromaStrength = floatArrayOf(2.38f, 2.24f, 2.12f, 1.8118f, 1.68f),
            lumaRevert = floatArrayOf(0.1633f, 0.34f, 0.7589f, 0.9682f, 1.0f),
        )),
        Point(5f, Scales(
            lumaStrength = floatArrayOf(1.1702f, 1.2216f, 2.0043f, 2.3018f, 1.8671f),
            chromaStrength = floatArrayOf(2.296f, 2.18f, 2.072f, 3.454f, 2.145f),
            lumaRevert = floatArrayOf(0.1633f, 0.34f, 0.7589f, 0.9682f, 1.0f),
        )),
        Point(6f, Scales(
            lumaStrength = floatArrayOf(1.0195f, 1.0959f, 2.0183f, 2.3459f, 1.9453f),
            chromaStrength = floatArrayOf(2.24f, 2.14f, 2.125f, 3.19f, 2.1421f),
            lumaRevert = floatArrayOf(0.1633f, 0.34f, 0.7288f, 0.9473f, 1.0f),
        )),
        Point(9f, Scales(
            lumaStrength = floatArrayOf(1.2986f, 1.4169f, 2.062f, 2.4895f, 2.2329f),
            chromaStrength = floatArrayOf(2.112f, 2.046f, 2.3833f, 2.64f, 2.3375f),
            lumaRevert = floatArrayOf(0.2613f, 0.45f, 0.7481f, 0.9493f, 1.0f),
        )),
        Point(12f, Scales(
            lumaStrength = floatArrayOf(1.2103f, 1.3072f, 1.9028f, 2.3692f, 2.3429f),
            chromaStrength = floatArrayOf(2.024f, 2.0396f, 2.3375f, 2.5208f, 2.3571f),
            lumaRevert = floatArrayOf(0.4654f, 0.71f, 0.939f, 1.0974f, 1.0f),
        )),
        Point(18f, Scales(
            lumaStrength = floatArrayOf(0.9598f, 1.0735f, 1.2888f, 1.7668f, 2.577f),
            chromaStrength = floatArrayOf(1.88f, 2.1905f, 2.2f, 2.7738f, 2.6545f),
            lumaRevert = floatArrayOf(0.5879f, 0.78f, 0.8603f, 0.9878f, 1.0f),
        )),
        Point(36f, Scales(
            lumaStrength = floatArrayOf(0.6528f, 0.8819f, 1.4894f, 1.3173f, 1.5772f),
            chromaStrength = floatArrayOf(1.36f, 1.6f, 1.5125f, 2.0625f, 2.1f),
            lumaRevert = floatArrayOf(0.6438f, 0.98f, 1.0f, 1.1057f, 1.0f),
        )),
    )

    fun atSnr(snr: Float): Scales {
        val clamped = snr.coerceIn(points.first().snr, points.last().snr)
        val upper = points.indexOfFirst { it.snr >= clamped }.coerceAtLeast(1)
        val low = points[upper - 1]
        val high = points[upper]
        val rate = (clamped - low.snr) / (high.snr - low.snr)
        fun mix(a: FloatArray, b: FloatArray) = FloatArray(a.size) { a[it] + (b[it] - a[it]) * rate }
        return Scales(
            mix(low.scales.lumaStrength, high.scales.lumaStrength),
            mix(low.scales.chromaStrength, high.scales.chromaStrength),
            mix(low.scales.lumaRevert, high.scales.lumaRevert),
        )
    }
}
