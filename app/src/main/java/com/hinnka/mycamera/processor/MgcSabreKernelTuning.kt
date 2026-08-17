package com.hinnka.mycamera.processor

import kotlin.math.sqrt

/**
 * Exact MGC 9.6.080 SabreKernelParams generator.
 *
 * Recovered from libgcastartup.so:
 * - tuning construction: 0x3882c20
 * - runtime SNR/stack-size interpolation: 0x38831f4
 * - covariance uniform conversion: 0x34929fc
 */
internal object MgcSabreKernelTuning {
    data class Parameters(
        val directionalScale: Float,
        val isotropicScale: Float,
        val gradientThreshold: Float,
        val gradientTransition: Float,
        val anisotropyScale: Float,
        val coherenceScale: Float,
        val demosaicBlendStart: Float = 3f,
        val demosaicBlendEnd: Float = 4f,
        val covarianceMinR: Float = 0.3671880066f,
        val covarianceMaxR: Float = 24.8149185f,
        val covarianceMinG: Float = 0.3671880066f,
        val covarianceMaxG: Float = 26.0516777f,
        val covarianceMinB: Float = -6.9755706787f,
        val covarianceMaxB: Float = 7.0265216827f,
    ) {
        val covarianceParameters1: FloatArray
            get() = floatArrayOf(
                coherenceScale / directionalScale,
                1f / (directionalScale * anisotropyScale),
                gradientThreshold,
                1f / directionalScale,
            )

        val covarianceParameters2: FloatArray
            get() = floatArrayOf(
                1f / (directionalScale * isotropicScale),
                1f / gradientTransition,
                0f,
                0f,
            )
    }

    fun build(referenceSnr: Float, frameCount: Int): Parameters {
        val finiteSnr = referenceSnr.takeIf { it.isFinite() }?.coerceAtLeast(0f) ?: 0f
        val effectiveSnr = finiteSnr * sqrt(frameCount.coerceAtLeast(0).toFloat() / 12f)
        return Parameters(
            directionalScale = interpolate(
                effectiveSnr,
                7.2f to 0.33f,
                14.4f to 0.25f,
            ),
            isotropicScale = interpolate(
                effectiveSnr,
                5.4f to 4.2f,
                11f to 4f,
                27f to 3f,
            ),
            gradientThreshold = interpolate(
                effectiveSnr,
                0.9f to 0.01f,
                1f to 0.0012f,
                3.6f to 0.0012f,
                12.6f to 0.001f,
                27f to 0.001f,
            ),
            gradientTransition = interpolate(
                effectiveSnr,
                0.9f to 0.028f,
                2.7f to 0.025f,
                10.8f to 0.015f,
                27f to 0.009f,
            ),
            anisotropyScale = interpolate(effectiveSnr, 16f to 3f),
            coherenceScale = interpolate(effectiveSnr, 16f to 1.5f),
        )
    }

    internal fun effectiveSnr(referenceSnr: Float, frameCount: Int): Float =
        referenceSnr * sqrt(frameCount.toFloat() / 12f)

    private fun interpolate(x: Float, vararg points: Pair<Float, Float>): Float {
        require(points.isNotEmpty())
        if (x <= points.first().first) return points.first().second
        for (index in 1 until points.size) {
            val upper = points[index]
            if (x <= upper.first) {
                val lower = points[index - 1]
                val amount = (x - lower.first) / (upper.first - lower.first)
                return lower.second + amount * (upper.second - lower.second)
            }
        }
        return points.last().second
    }
}
