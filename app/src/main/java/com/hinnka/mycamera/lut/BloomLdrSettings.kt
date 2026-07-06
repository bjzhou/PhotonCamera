package com.hinnka.mycamera.lut

internal object BloomLdrSettings {
    const val MAX_MIP_DIMENSION = 512
    const val MIP_COUNT = 10

    private const val HIGHLIGHT_THRESHOLD = 0.9f
    private const val HIGHLIGHT_THRESHOLD_SOFTNESS = 0.2f
    private const val MAX_COMPOSITE_STRENGTH = 0.8f

    fun thresholdPrecomputations(): FloatArray {
        val knee = HIGHLIGHT_THRESHOLD * HIGHLIGHT_THRESHOLD_SOFTNESS.coerceIn(0f, 1f)
        return floatArrayOf(
            HIGHLIGHT_THRESHOLD,
            HIGHLIGHT_THRESHOLD - knee,
            2.0f * knee,
            0.25f / (knee + 0.00001f)
        )
    }

    fun mipAddWeight(sourceMip: Int, mipCount: Int, bloom: Float): Float {
        if (mipCount <= 1) return 1f
        val radius = smooth01(bloom.coerceIn(0f, 1f))
        val mipPosition = sourceMip.toFloat() / (mipCount - 1).toFloat()
        val localDamping = 0.45f + mipPosition * 0.75f
        val radiusBoost = 0.7f + radius * 0.8f
        return (localDamping * radiusBoost).coerceIn(0.25f, 1.5f)
    }

    fun compositeMipLowerIndex(mipCount: Int, bloom: Float): Int {
        return compositeMipPosition(mipCount, bloom).toInt()
    }

    fun compositeMipUpperIndex(mipCount: Int, bloom: Float): Int {
        val lower = compositeMipLowerIndex(mipCount, bloom)
        val maxMip = (mipCount - 1).coerceAtLeast(0)
        return (lower + 1).coerceAtMost(maxMip)
    }

    fun compositeMipBlend(mipCount: Int, bloom: Float): Float {
        val position = compositeMipPosition(mipCount, bloom)
        return (position - position.toInt().toFloat()).coerceIn(0f, 1f)
    }

    fun compositeStrength(bloom: Float): Float {
        val strength = bloom.coerceIn(0f, 1f)
        return (strength * strength * MAX_COMPOSITE_STRENGTH).coerceIn(0f, 1f)
    }

    private fun compositeMipPosition(mipCount: Int, bloom: Float): Float {
        val maxMip = (mipCount - 1).coerceAtLeast(0)
        if (maxMip == 0) return 0f
        val maxSelectableMip = minOf(maxMip, 5)
        val radius = smooth01(bloom.coerceIn(0f, 1f))
        return radius * maxSelectableMip.toFloat()
    }

    private fun smooth01(value: Float): Float {
        return value * value * (3f - 2f * value)
    }
}
