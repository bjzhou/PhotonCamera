package com.hinnka.mycamera.raw

import kotlin.math.PI
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.sqrt

/** Noise measured on the merged, demosaiced pixels in FinishRaw's linear YUV domain. */
internal data class MgcRawStackNoiseObservation(
    val snr: Float,
    val luma: MgcLumaNoiseModel.Q14LumaNoise,
    val chroma: MgcChromaNoiseModel.Q14ChromaNoise,
    val tileCount: Int,
) {
    /** Tile signal and noise before the relative merge multiplier and lens shading. */
    data class Tile(
        val signal: Float,
        val variance: FloatArray,
        val differenceVariance: FloatArray,
    )

    private data class Sample(val signal: Double, val variance: Double, val lag: Double)
    private data class Fit(val read: Double, val shot: Double, val lag: Double) {
        fun varianceAt(signal: Double): Double = read + shot * signal
    }

    companion object {
        private const val WHITE = 16383.0
        private const val MIN_VARIANCE = 1.0 / (WHITE * WHITE)
        private const val MIN_TILES = 12
        private const val BIN_COUNT = 20

        fun fit(tiles: List<Tile>): MgcRawStackNoiseObservation? {
            if (tiles.size < MIN_TILES) return null
            val bins = List(BIN_COUNT) { ArrayList<Tile>() }
            for (tile in tiles) {
                // Half-stop bins keep scene brightness separate from the low-noise quantile.
                val bin = (2.0 * (ln(tile.signal.toDouble()) / ln(2.0)) + BIN_COUNT)
                    .toInt().coerceIn(0, BIN_COUNT - 1)
                bins[bin] += tile
            }
            val supportedBins = bins.filter { it.size >= MIN_TILES }.ifEmpty { listOf(tiles) }
            // Index the frame-wide curve at the shadow-side quartile so bright surfaces
            // cannot move a mixed-brightness frame into a weaker setting.
            val signals = tiles.map(Tile::signal).sorted()
            val reference = signals[signals.size / 4].toDouble()
            val y = fitChannel(supportedBins, 0)
            val cb = fitChannel(supportedBins, 1)
            val cr = fitChannel(supportedBins, 2)
            val snr = reference / sqrt(max(MIN_VARIANCE, y.varianceAt(reference)))

            // FinishRaw's threshold convention scales normalized read by 4 and shot by 2.
            val luma = MgcLumaNoiseModel.Q14LumaNoise(
                read = (y.read * 4.0 * WHITE * WHITE).toFloat(),
                shot = (y.shot * 2.0 * WHITE).toFloat(),
                quadratic = 0f,
                correlation = spectrum(y.lag),
            )
            // Its chroma filter uses a shared polynomial and per-channel distance scales.
            // Match those scales to the measured U/V variance ratio at the reference signal.
            val u = max(MIN_VARIANCE, cb.varianceAt(reference))
            val v = max(MIN_VARIANCE, cr.varianceAt(reference))
            val sharedRead = max(MIN_VARIANCE, (cb.read + cr.read) * 0.5) * 4.0 * WHITE * WHITE
            val chroma = MgcChromaNoiseModel.Q14ChromaNoise(
                read = floatArrayOf(
                    sharedRead.toFloat(),
                    (sharedRead * (2.0 * u / (u + v))).toFloat(),
                    (sharedRead * (2.0 * v / (u + v))).toFloat(),
                ),
                sharedShot = ((cb.shot + cr.shot) * WHITE).toFloat(),
                sharedQuadratic = 0f,
                correlation = spectrum((cb.lag * u + cr.lag * v) / (u + v)),
            )
            return MgcRawStackNoiseObservation(snr.toFloat(), luma, chroma, tiles.size)
        }

        private fun fitChannel(bins: List<List<Tile>>, channel: Int): Fit {
            val samples = bins.map { bin ->
                val ordered = bin.sortedBy { it.variance[channel] }
                val low = ordered[ordered.size * 3 / 10]
                // The 30th percentile of 8×8 flat-tile variance falls below its expectation.
                val variance = max(MIN_VARIANCE, low.variance[channel] * 1.12)
                val localLag = ordered.subList(ordered.size / 5, ordered.size * 2 / 5)
                    .map { tile ->
                        1.0 - tile.differenceVariance[channel] /
                            max(MIN_VARIANCE, tile.variance[channel].toDouble())
                    }.sorted()
                Sample(low.signal.toDouble(), variance, localLag[localLag.size / 2].coerceIn(0.0, 0.85))
            }
            val lag = samples.map(Sample::lag).sorted()[samples.size / 2]
            if (samples.size == 1) return Fit(samples.single().variance, 0.0, lag)

            // Coefficients are nonnegative. Relative-error weights keep bright tiles from
            // dominating the intercept. Reweight the residuals once to limit textured bins.
            var fit = linearFit(samples, lag) { 1.0 }
            repeat(2) {
                val previous = fit
                fit = linearFit(samples, lag) { sample ->
                    val residual = abs(previous.varianceAt(sample.signal) / sample.variance - 1.0)
                    minOf(1.0, 0.25 / max(0.25, residual))
                }
            }
            return fit
        }

        private fun linearFit(samples: List<Sample>, lag: Double, reliability: (Sample) -> Double): Fit {
            var w = 0.0
            var x = 0.0
            var xx = 0.0
            var y = 0.0
            var xy = 0.0
            for (sample in samples) {
                val weight = reliability(sample) / (sample.variance * sample.variance)
                w += weight
                x += weight * sample.signal
                xx += weight * sample.signal * sample.signal
                y += weight * sample.variance
                xy += weight * sample.signal * sample.variance
            }
            val determinant = w * xx - x * x
            if (determinant <= 1e-6 * w * xx) return Fit(y / w, 0.0, lag)
            val shot = (w * xy - x * y) / determinant
            val read = (y - shot * x) / w
            return when {
                shot <= 0.0 -> Fit(y / w, 0.0, lag)
                read <= MIN_VARIANCE -> Fit(MIN_VARIANCE, max(0.0, (xy - MIN_VARIANCE * x) / xx), lag)
                else -> Fit(read, shot, lag)
            }
        }

        /** Unit-mean separable spectrum shaped by the measured adjacent-difference energy. */
        private fun spectrum(lag: Double): FloatArray {
            val result = FloatArray(128) { i ->
                val angle = (i + 0.5) * 2.0 * PI / 128.0 - PI
                ((1.0 - lag * lag) / (1.0 + lag * lag - 2.0 * lag * cos(angle))).toFloat()
            }
            val mean = result.average().toFloat()
            return FloatArray(result.size) { result[it] / mean }
        }
    }
}
