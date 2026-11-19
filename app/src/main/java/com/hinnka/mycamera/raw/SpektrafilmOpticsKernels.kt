package com.hinnka.mycamera.raw

import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.log2
import kotlin.math.pow
import kotlin.math.roundToInt
import kotlin.math.sqrt

/** Optical kernels expressed in the native film sampling grid, before any display transform. */
internal object SpektrafilmOpticsKernels {
    data class Gaussian(
        val stride: Int,
        val weights: FloatArray,
        val amplitude: SpectralRgb,
    ) {
        val radius: Int get() = weights.size / 3 - 1
        val support: Int get() = stride * radius + 2 * (stride - 1)
    }

    data class Mixture(
        val direct: SpectralRgb,
        val lobes: List<Gaussian>,
        val wholeSampleReflection: Boolean = false,
    ) {
        val support: Int get() = lobes.maxOfOrNull(Gaussian::support) ?: 0
        val identity: Boolean get() = lobes.isEmpty() && abs(direct.r - 1f) < 1e-6f &&
            abs(direct.g - 1f) < 1e-6f && abs(direct.b - 1f) < 1e-6f
    }

    private data class Lobe(val sigma: SpectralRgb, val amplitude: SpectralRgb)
    private data class Footprint(val stride: Int, val sigma: Double, val radius: Int)
    private data class DiffusionKey(val params: SpectralDiffusion, val pixelSizeUm: Float, val shortEdge: Int)

    // Camera and enlarger each reuse their frame's plan across support queries and working windows.
    private val diffusionPlans = object : LinkedHashMap<DiffusionKey, Mixture>(2, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<DiffusionKey, Mixture>?) = size > 2
    }

    fun gaussian(sigma: SpectralRgb): Mixture = mixture(ZERO, listOf(Lobe(sigma, ONE)))

    fun gaussianWithExponential(sigma: Float, decay: Float, tailWeight: Float): Mixture = mixture(
        ZERO,
        listOf(Lobe(scalar(sigma), scalar(1f - tailWeight))) +
            exponential(scalar(decay), scalar(tailWeight)),
    )

    fun scatter(params: SpectralHalation, pixelSizeUm: Float): Mixture {
        if (!params.enabled || params.scatterAmount <= 0f || params.scatterSpatialScale <= 0f) return IDENTITY
        val scale = params.scatterSpatialScale / pixelSizeUm
        val core = scale(params.scatterCoreUm, scale)
        val tail = scale(params.scatterTailUm, scale)
        if (!core.anyPositive() && !tail.anyPositive()) return IDENTITY
        val tailAmplitude = scale(params.scatterTailWeight, params.scatterAmount)
        return mixture(
            scalar(1f - params.scatterAmount),
            listOf(Lobe(core, subtract(scalar(params.scatterAmount), tailAmplitude))) + exponential(tail, tailAmplitude),
        )
    }

    fun halation(params: SpectralHalation, pixelSizeUm: Float): Mixture {
        if (!params.enabled || params.halationAmount <= 0f || params.halationSpatialScale <= 0f) return IDENTITY
        val strength = scale(requireNotNull(params.strength), params.halationAmount)
        val first = scale(requireNotNull(params.firstSigmaUm), params.halationSpatialScale / pixelSizeUm)
        if (!strength.anyPositive() || !first.anyPositive()) return IDENTITY
        val direct = if (params.renormalize) {
            SpectralRgb(1f / (1f + strength.r), 1f / (1f + strength.g), 1f / (1f + strength.b))
        } else ONE
        val amplitude = multiply(strength, direct)
        val decay = FloatArray(params.bounces) { params.bounceDecay.pow(it) }
        val total = decay.sum()
        return mixture(direct, decay.mapIndexed { bounce, value ->
            Lobe(scale(first, sqrt(bounce + 1f)), scale(amplitude, value / total))
        })
    }

    fun diffusion(params: SpectralDiffusion, pixelSizeUm: Float, frameWidth: Int, frameHeight: Int): Mixture {
        if (!params.active) return IDENTITY
        val shortEdge = minOf(frameWidth, frameHeight)
        val key = DiffusionKey(params, pixelSizeUm, shortEdge)
        return synchronized(diffusionPlans) {
            diffusionPlans[key] ?: buildDiffusion(params, pixelSizeUm, shortEdge).also { plan ->
                if (!plan.identity) diffusionPlans[key] = plan
            }
        }
    }

    private fun buildDiffusion(params: SpectralDiffusion, pixelSizeUm: Float, shortEdge: Int): Mixture {
        val family = families[params.family]
        val amount = (scatterFraction(params.strength) * family.gain).coerceIn(0f, 0.99f)
        val groupScales = floatArrayOf(params.coreSize, params.haloSize, params.bloomSize)
        val groupWeights = floatArrayOf(
            family.groups[0].weight * params.coreIntensity,
            family.groups[1].weight * params.haloIntensity,
            family.groups[2].weight * params.bloomIntensity,
        )
        if (groupWeights.sum() == 0f) family.groups.forEachIndexed { index, group ->
            groupScales[index] = 1f
            groupWeights[index] = group.weight
        }
        val weightSum = groupWeights.sum()
        val expansion = params.spatialScale / pixelSizeUm
        val warmth = (family.warmth + params.haloWarmth).coerceIn(-1.5f, 1.5f)
        val lobes = family.groups.flatMapIndexed { index, group ->
            val lambdas = FloatArray(group.components) { i ->
                val fraction = i.toFloat() / (group.components - 1)
                group.lambda * groupScales[index] * expansion * group.spread.pow(2f * fraction - 1f)
            }
            val componentWeights = if (index == 2) {
                FloatArray(group.components) { lambdas[it].pow(2f - group.alpha) }
            } else FloatArray(group.components) { 1f }
            val targetEnergy = amount * groupWeights[index] / weightSum
            val channelWeights = Array(3) { channel ->
                val weights = if (index == 1) {
                    FloatArray(group.components) { i ->
                        val gradient = 2f * i / (group.components - 1) - 1f
                        (1f + warmth * WARMTH_AXIS[channel] * gradient).coerceAtLeast(0f)
                    }
                } else componentWeights
                val sum = weights.sum()
                FloatArray(group.components) { weights[it] * targetEnergy / sum }
            }
            lambdas.flatMapIndexed { i, lambda ->
                val weight = SpectralRgb(channelWeights[0][i], channelWeights[1][i], channelWeights[2][i])
                exponential(scalar(lambda), weight)
            }
        }
        val bloom = family.groups[2]
        val maxLambda = bloom.lambda * groupScales[2] * bloom.spread * expansion
        val maxRadius = minOf(
            ceil(maxOf(8f * maxLambda, 5f)).toInt(),
            (shortEdge / 2 - 1).coerceAtLeast(1),
        )
        return mixture(scalar(1f - amount), lobes, maxRadius, wholeSampleReflection = true)
    }

    private fun exponential(decay: SpectralRgb, amplitude: SpectralRgb): List<Lobe> =
        exponentialWeights.mapIndexed { i, weight ->
            Lobe(scale(decay, exponentialSigmas[i]), scale(amplitude, weight))
        }

    private fun mixture(
        initial: SpectralRgb,
        lobes: List<Lobe>,
        maxRadius: Int = Int.MAX_VALUE,
        wholeSampleReflection: Boolean = false,
    ): Mixture {
        val direct = initial.channels()
        val result = mutableListOf<Gaussian>()
        for (lobe in lobes) {
            val sigmas = lobe.sigma.channels()
            val amplitudes = lobe.amplitude.channels()
            val filters = amplitudes.indices.mapNotNull { channel ->
                if (amplitudes[channel] == 0f) return@mapNotNull null
                val footprint = footprint(sigmas[channel], maxRadius)
                if (footprint.radius == 0) {
                    direct[channel] += amplitudes[channel]
                    null
                } else channel to footprint
            }.groupBy { it.second.stride }
            for ((stride, filtered) in filters) {
                val radius = filtered.maxOf { it.second.radius }
                val weights = FloatArray((radius + 1) * 3)
                val amplitude = FloatArray(3)
                for ((channel, shape) in filtered) {
                    val taps = DoubleArray(shape.radius + 1) { offset -> exp(-0.5 * (offset / shape.sigma).pow(2)) }
                    val sum = 2.0 * taps.sum() - taps[0]
                    taps.forEachIndexed { offset, weight -> weights[offset * 3 + channel] = (weight / sum).toFloat() }
                    amplitude[channel] = amplitudes[channel]
                }
                result += Gaussian(stride, weights, amplitude.rgb())
            }
        }
        return Mixture(direct.rgb(), result, wholeSampleReflection)
    }

    private fun footprint(sigma: Float, maxRadius: Int): Footprint {
        var stride = 1
        val radiusNative = (3f * sigma).roundToInt().coerceAtMost(maxRadius)
        while (radiusNative > MAX_RADIUS.toLong() * stride ||
            (sigma / stride > 5f && radiusNative / (2 * stride) >= 8)
        ) stride *= 2
        // Account for blur already introduced by box reduction and tent reconstruction.
        val boxVariance = (stride.toDouble() * stride - 1) / 12
        val tentVariance = if (stride > 1) stride.toDouble() * stride / 6 + 1.0 / 12 else 0.0
        val coarseSigma = sqrt((sigma.toDouble() * sigma - boxVariance - tentVariance).coerceAtLeast(0.0)) / stride
        val maxCoarseRadius = (maxRadius - 2 * (stride - 1)) / stride
        val radius = (3 * coarseSigma).roundToInt().coerceAtMost(maxCoarseRadius)
        check(radius <= MAX_RADIUS) { "Spektrafilm Gaussian kernel exceeds $MAX_RADIUS taps per side" }
        return Footprint(stride, coarseSigma, radius)
    }

    private fun scatterFraction(strength: Float): Float {
        val stop = (log2(strength) + 3f).coerceIn(0f, 4f)
        val lower = stop.toInt()
        val upper = minOf(lower + 1, SCATTER_FRACTIONS.lastIndex)
        return SCATTER_FRACTIONS[lower] + (SCATTER_FRACTIONS[upper] - SCATTER_FRACTIONS[lower]) * (stop - lower)
    }

    private data class Family(val gain: Float, val warmth: Float, val groups: List<Group>)
    private data class Group(val lambda: Float, val spread: Float, val components: Int, val weight: Float, val alpha: Float = 0f)

    private val families = listOf(
        Family(0.65f, 0f, listOf(Group(10f, 1.5f, 2, 0.60f), Group(50f, 2f, 3, 0.30f), Group(260f, 2.5f, 4, 0.10f, 3.2f))),
        Family(0.75f, 0.65f, listOf(Group(16f, 1.5f, 2, 0.40f), Group(95f, 2f, 3, 0.47f), Group(380f, 2.5f, 4, 0.13f, 3.5f))),
        Family(1.05f, 0.40f, listOf(Group(14f, 1.5f, 2, 0.28f), Group(150f, 2f, 3, 0.42f), Group(650f, 2.5f, 4, 0.30f, 2.9f))),
        Family(1.00f, 0.85f, listOf(Group(20f, 1.5f, 2, 0.22f), Group(200f, 2f, 3, 0.30f), Group(1000f, 2.5f, 4, 0.48f, 2.5f))),
    )

    internal const val MAX_RADIUS = 15
    internal val ZERO = scalar(0f)
    internal val ONE = scalar(1f)
    private val IDENTITY = Mixture(ONE, emptyList())
    private val WARMTH_AXIS = floatArrayOf(1.30f, 0.15f, -1.45f)
    private val SCATTER_FRACTIONS = floatArrayOf(0.10f, 0.20f, 0.35f, 0.55f, 0.75f)

    // Upstream's three-Gaussian approximation of an isotropic exponential PSF.
    private val exponentialWeights = floatArrayOf(0.1633f, 0.6496f, 0.1870f).let { weights ->
        val sum = weights.sum()
        weights.map { it / sum }
    }
    private val exponentialSigmas = floatArrayOf(0.5360f, 1.5236f, 2.7684f)

    internal fun scalar(value: Float) = SpectralRgb(value, value, value)
    private fun scale(rgb: SpectralRgb, scale: Float) = SpectralRgb(rgb.r * scale, rgb.g * scale, rgb.b * scale)
    private fun multiply(a: SpectralRgb, b: SpectralRgb) = SpectralRgb(a.r * b.r, a.g * b.g, a.b * b.b)
    private fun subtract(a: SpectralRgb, b: SpectralRgb) = SpectralRgb(a.r - b.r, a.g - b.g, a.b - b.b)
    private fun SpectralRgb.channels() = floatArrayOf(r, g, b)
    private fun FloatArray.rgb() = SpectralRgb(this[0], this[1], this[2])
    private fun SpectralRgb.anyPositive() = r > 0f || g > 0f || b > 0f
}
