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
     * §9 nominal Bitmap noise profile (r_bm, s_bm), applied to all three channels of linear
     * sRGB and scaled by s². Pre-tuning value: a 1/255 standard deviation at mid grey, split
     * evenly between read and shot terms; the BITMAP table's PSNR optimisation replaces it.
     */
    const val BITMAP_READ = 0.5f / (255f * 255f)
    const val BITMAP_SHOT = 0.5f / (255f * 255f * 0.18f)

    private val DEFAULT_NODE = Node(
        n = 1f,
        alpha = floatArrayOf(1f, 1f, 1f, 1.2f, 1.2f, 1.2f, 1.2f),
        grain = floatArrayOf(0.30f, 0.20f, 0.15f, 0.10f, 0.10f, 0.10f, 0.10f),
        outlier = floatArrayOf(2.5f, 2.5f, 2.5f, 2.5f, 2.5f, 2.5f, 2.5f),
        gateLuma = floatArrayOf(16.919f, 27.877f),
        gateChroma = floatArrayOf(5.991f, 13.816f),
        bilateralLevels = 3,
        bilateralLuma = 4f,
        bilateralChroma = 4f,
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
