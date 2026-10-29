package com.hinnka.mycamera.raw.denoise

import com.hinnka.mycamera.raw.RawDenoisePipeline
import kotlin.math.ln

/**
 * Tuning of the Photon denoiser (docs/photon-multiscale-denoise.md §5, §6.4, §7.4, §9).
 *
 * One table per pipeline; each table holds nodes ordered by the noise coordinate
 * n = √(m · v_Y(0.18)) / 0.18 (§5) and is interpolated linearly in ln n, clamped at the ends.
 * A node has the shape of tools/photon_denoise/tune.py's output. Every table currently holds the
 * single pre-tuning node [DEFAULT_NODE] (α = 1 is the MMSE estimate under the model; grain,
 * outlier and gates follow the design's stated intent); tune.py's per-node results replace them.
 */
internal object PhotonDenoiseTuning {
    const val LUMA_LEVELS = 5
    const val MIN_CHROMA_LEVELS = 5
    const val MAX_LEVELS = 7

    class Node(
        /** Noise coordinate n of §5. */
        val n: Float,
        /** Luma Wiener over-subtraction α_l per level. */
        val alpha: FloatArray,
        /** Luma residual noise ratio t_l per level (grain kept to avoid a plastic look). */
        val grain: FloatArray,
        /** Huber outlier distance d_l in units of σ. */
        val outlier: FloatArray,
        /** Luma significance gate of the chroma detail (χ²₉ quantiles). */
        val gateLuma: FloatArray,
        /** Chroma Mahalanobis gate (χ²₂ quantiles). */
        val gateChroma: FloatArray,
        /** Coarsest chroma levels receiving the luma-guided joint bilateral (§7.3). */
        val bilateralLevels: Int,
        val bilateralLuma: Float,
        val bilateralChroma: Float,
    ) {
        init {
            require(alpha.size == MAX_LEVELS && grain.size == MAX_LEVELS && outlier.size == MAX_LEVELS)
            require(gateLuma.size == 2 && gateChroma.size == 2)
        }
    }

    /**
     * §9 Bitmap blind denoise: an ISP-processed image has no usable noise model, so the denoiser
     * runs on the sRGB-encoded values with a constant reference noise of one 8-bit code value
     * (read term only); the §5.1 per-image estimate, uncapped, sets the amount per level and
     * luma bin relative to it.
     */
    const val BITMAP_READ = 1f / (255f * 255f)
    const val BITMAP_SHOT = 0f

    private val DEFAULT_NODE = Node(
        n = 1f,
        alpha = floatArrayOf(1f, 1f, 1f, 1.2f, 1.2f, 1.2f, 1.2f),
        grain = floatArrayOf(0f, 0f, 0f, 0f, 0f, 0f, 0f),
        outlier = floatArrayOf(2.5f, 2.5f, 2.5f, 2.5f, 2.5f, 2.5f, 2.5f),
        gateLuma = floatArrayOf(16.919f, 27.877f),
        gateChroma = floatArrayOf(5.991f, 13.816f),
        bilateralLevels = 3,
        bilateralLuma = 4f,
        bilateralChroma = 4f,
    )

    /**
     * §5.1 per-level table over image SNR (MGC's tuning nodes 5 / 20 / 40), luma and chroma rows
     * L0–L4 (deeper levels use L4), linear in ln SNR between nodes and clamped at the ends.
     */
    class SnrTable(
        val snr: FloatArray,
        val luma: Array<FloatArray>,
        val chroma: Array<FloatArray>,
    ) {
        init {
            require(snr.size == SNR_NODES && snr[0] < snr[1] && snr[1] < snr[2])
            require(luma.size == SNR_TABLE_LEVELS && luma.all { it.size == SNR_NODES })
            require(chroma.size == SNR_TABLE_LEVELS && chroma.all { it.size == SNR_NODES })
        }

        fun luma(level: Int, snr: Float): Float = at(luma[minOf(level, SNR_TABLE_LEVELS - 1)], snr)
        fun chroma(level: Int, snr: Float): Float = at(chroma[minOf(level, SNR_TABLE_LEVELS - 1)], snr)

        private fun at(row: FloatArray, snr: Float): Float {
            val x = ln(snr.coerceAtLeast(1e-6f))
            val nodes = FloatArray(SNR_NODES) { ln(this.snr[it]) }
            if (x <= nodes[0]) return row[0]
            if (x >= nodes[SNR_NODES - 1]) return row[SNR_NODES - 1]
            val upper = (1 until SNR_NODES).first { x < nodes[it] }
            val f = (x - nodes[upper - 1]) / (nodes[upper] - nodes[upper - 1])
            return row[upper - 1] + f * (row[upper] - row[upper - 1])
        }
    }

    private const val SNR_TABLE_LEVELS = 5
    private const val SNR_NODES = 3

    private fun rows(vararg values: Float) = Array(SNR_TABLE_LEVELS) { level ->
        FloatArray(SNR_NODES) { values[level * SNR_NODES + it] }
    }

    /**
     * §5.1 cap of the per-image strength estimate of a RAW source. Blind estimation takes fine
     * texture as noise; the error matters where texture and noise are of similar size, i.e. at
     * high SNR, so the cap tightens with the image SNR. Node 40 keeps 1793243503594 (ISO 100,
     * SNR 91) as textured as the measured table did; nodes 5 / 20 stay above the estimates of the
     * 10x merges 1793253607706 / 1793253630461 (ISO 9100, SNR 12–16), whose coarse chroma reaches
     * 7–13.
     */
    val ESTIMATE_CAP = SnrTable(
        snr = floatArrayOf(5f, 20f, 40f),
        luma = rows(
            2f, 1.5f, 0.75f,
            4f, 3f, 1.25f,
            8f, 6f, 2.5f,
            16f, 12f, 5f,
            24f, 18f, 6f,
        ),
        chroma = rows(
            1f, 1f, 1f,
            1f, 1f, 1f,
            4f, 3f, 0.75f,
            12f, 8f, 1.5f,
            24f, 16f, 2f,
        ),
    )

    private val TABLES: Map<RawDenoisePipeline, List<Node>> =
        RawDenoisePipeline.entries.associateWith { listOf(DEFAULT_NODE) }

    /** Tuning of [pipeline] at noise coordinate [n]. */
    fun at(pipeline: RawDenoisePipeline, n: Float): Node {
        val nodes = TABLES.getValue(pipeline)
        if (nodes.size == 1 || n <= nodes.first().n) return nodes.first()
        if (n >= nodes.last().n) return nodes.last()
        val upper = nodes.indexOfFirst { it.n >= n }
        val a = nodes[upper - 1]
        val b = nodes[upper]
        val f = ((ln(n) - ln(a.n)) / (ln(b.n) - ln(a.n)))
        fun mix(x: FloatArray, y: FloatArray) = FloatArray(x.size) { x[it] + f * (y[it] - x[it]) }
        return Node(
            n = n,
            alpha = mix(a.alpha, b.alpha),
            grain = mix(a.grain, b.grain),
            outlier = mix(a.outlier, b.outlier),
            gateLuma = mix(a.gateLuma, b.gateLuma),
            gateChroma = mix(a.gateChroma, b.gateChroma),
            bilateralLevels = if (f < 0.5f) a.bilateralLevels else b.bilateralLevels,
            bilateralLuma = a.bilateralLuma + f * (b.bilateralLuma - a.bilateralLuma),
            bilateralChroma = a.bilateralChroma + f * (b.bilateralChroma - a.bilateralChroma),
        )
    }
}
