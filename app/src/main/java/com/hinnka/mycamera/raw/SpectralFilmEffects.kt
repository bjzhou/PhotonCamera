package com.hinnka.mycamera.raw

import com.google.gson.annotations.SerializedName

data class SpectralRgb(
    @SerializedName("r") val r: Float,
    @SerializedName("g") val g: Float,
    @SerializedName("b") val b: Float,
) {
    internal fun values() = floatArrayOf(r, g, b)

    internal fun bounded(range: ClosedFloatingPointRange<Float>, defaults: SpectralRgb) = SpectralRgb(
        r.spectralBound(range, defaults.r), g.spectralBound(range, defaults.g), b.spectralBound(range, defaults.b),
    )
}

data class SpectralKnee(
    @SerializedName("threshold") val threshold: Float = 0f,
    @SerializedName("limit") val limit: Float = 1f,
    @SerializedName("power") val power: Float = 6f,
) {
    internal fun normalized(): SpectralKnee {
        val start = threshold.spectralBound(0f..0.99f, 0f)
        return SpectralKnee(start, limit.spectralBound((start + 0.01f)..4f, 1f), power.spectralBound(0.1f..16f, 6f))
    }
}

data class SpectralDirMatrix(
    @SerializedName("r") val r: SpectralRgb,
    @SerializedName("g") val g: SpectralRgb,
    @SerializedName("b") val b: SpectralRgb,
) {
    internal fun values() = r.values() + g.values() + b.values()

    internal fun bounded(stock: SpectralDirMatrix): SpectralDirMatrix {
        fun row(value: SpectralRgb, stockRow: SpectralRgb) = SpectralRgb(
            value.r.spectralBound(0f..stockRow.r, stockRow.r),
            value.g.spectralBound(0f..stockRow.g, stockRow.g),
            value.b.spectralBound(0f..stockRow.b, stockRow.b),
        )
        return SpectralDirMatrix(row(r, stock.r), row(g, stock.g), row(b, stock.b))
    }
}

data class SpectralDiffusion(
    @SerializedName("enabled") val enabled: Boolean = false,
    @SerializedName("family") val family: Int = 0,
    @SerializedName("strength") val strength: Float = 0.5f,
    @SerializedName("spatialScale") val spatialScale: Float = 1f,
    @SerializedName("haloWarmth") val haloWarmth: Float = 0f,
    @SerializedName("coreIntensity") val coreIntensity: Float = 1f,
    @SerializedName("coreSize") val coreSize: Float = 1f,
    @SerializedName("haloIntensity") val haloIntensity: Float = 1f,
    @SerializedName("haloSize") val haloSize: Float = 1f,
    @SerializedName("bloomIntensity") val bloomIntensity: Float = 1f,
    @SerializedName("bloomSize") val bloomSize: Float = 1f,
) {
    internal val active get() = enabled && strength > 0f && spatialScale > 0f

    internal fun normalized() = copy(
        family = family.coerceIn(0, 3),
        strength = strength.spectralBound(0f..2f, 0.5f),
        spatialScale = spatialScale.spectralBound(0f..4f, 1f),
        haloWarmth = haloWarmth.spectralBound(-1.5f..1.5f, 0f),
        coreIntensity = coreIntensity.spectralBound(0f..4f, 1f),
        coreSize = coreSize.spectralBound(0.1f..4f, 1f),
        haloIntensity = haloIntensity.spectralBound(0f..4f, 1f),
        haloSize = haloSize.spectralBound(0.1f..4f, 1f),
        bloomIntensity = bloomIntensity.spectralBound(0f..4f, 1f),
        bloomSize = bloomSize.spectralBound(0.1f..4f, 1f),
    )
}

data class SpectralHalation(
    @SerializedName("enabled") val enabled: Boolean = false,
    @SerializedName("scatterAmount") val scatterAmount: Float = 1f,
    @SerializedName("scatterSpatialScale") val scatterSpatialScale: Float = 1f,
    @SerializedName("halationAmount") val halationAmount: Float = 1f,
    @SerializedName("halationSpatialScale") val halationSpatialScale: Float = 1f,
    @SerializedName("scatterCoreUm") val scatterCoreUm: SpectralRgb = SpectralRgb(2.2f, 2f, 1.6f),
    @SerializedName("scatterTailUm") val scatterTailUm: SpectralRgb = SpectralRgb(9.3f, 9.7f, 9.1f),
    @SerializedName("scatterTailWeight") val scatterTailWeight: SpectralRgb = SpectralRgb(0.78f, 0.65f, 0.67f),
    @SerializedName("boostEv") val boostEv: Float = 0f,
    @SerializedName("boostRange") val boostRange: Float = 0.3f,
    @SerializedName("protectEv") val protectEv: Float = 4f,
    @SerializedName("strength") val strength: SpectralRgb? = null,
    @SerializedName("firstSigmaUm") val firstSigmaUm: SpectralRgb? = null,
    @SerializedName("bounces") val bounces: Int = 3,
    @SerializedName("bounceDecay") val bounceDecay: Float = 0.5f,
    @SerializedName("renormalize") val renormalize: Boolean = true,
) {
    internal fun normalized() = copy(
        scatterAmount = scatterAmount.spectralBound(0f..4f, 1f),
        scatterSpatialScale = scatterSpatialScale.spectralBound(0f..4f, 1f),
        halationAmount = halationAmount.spectralBound(0f..4f, 1f),
        halationSpatialScale = halationSpatialScale.spectralBound(0f..4f, 1f),
        scatterCoreUm = scatterCoreUm.bounded(0f..30f, SpectralRgb(2.2f, 2f, 1.6f)),
        scatterTailUm = scatterTailUm.bounded(0f..100f, SpectralRgb(9.3f, 9.7f, 9.1f)),
        scatterTailWeight = scatterTailWeight.bounded(0f..1f, SpectralRgb(0.78f, 0.65f, 0.67f)),
        strength = strength?.bounded(0f..1f, SpectralRgb(0.015f, 0.005f, 0f)),
        firstSigmaUm = firstSigmaUm?.bounded(0f..200f, SpectralRgb(65f, 65f, 65f)),
        bounces = bounces.coerceIn(1, 8),
        bounceDecay = bounceDecay.spectralBound(0f..1f, 0.5f),
        boostEv = boostEv.spectralBound(0f..12f, 0f),
        boostRange = boostRange.spectralBound(0f..1f, 0.3f),
        protectEv = protectEv.spectralBound(0f..12f, 4f),
    )
}

data class SpectralGrain(
    @SerializedName("enabled") val enabled: Boolean = false,
    @SerializedName("sublayers") val sublayers: Boolean = true,
    @SerializedName("particleAreaUm2") val particleAreaUm2: Float = 0.2f,
    @SerializedName("particleScale") val particleScale: SpectralRgb = SpectralRgb(1.6f, 1.6f, 3.2f),
    @SerializedName("particleScaleLayers") val particleScaleLayers: SpectralRgb = SpectralRgb(2f, 1f, 0.5f),
    @SerializedName("densityMin") val densityMin: SpectralRgb = SpectralRgb(0.03f, 0.03f, 0.03f),
    @SerializedName("uniformity") val uniformity: SpectralRgb = SpectralRgb(0.97f, 0.99f, 0.97f),
    @SerializedName("blur") val blur: Float = 0.65f,
    @SerializedName("blurDyeCloudsUm") val blurDyeCloudsUm: Float = 1f,
    @SerializedName("microBlurUm") val microBlurUm: Float = 0.2f,
    @SerializedName("microClumpNm") val microClumpNm: Float = 30f,
    @SerializedName("subLayerCount") val subLayerCount: Int = 1,
) {
    internal val active get() = enabled && particleAreaUm2 > 0f

    internal fun normalized() = copy(
        particleAreaUm2 = particleAreaUm2.spectralBound(0f..4f, 0.2f),
        particleScale = particleScale.bounded(0.01f..8f, SpectralRgb(1.6f, 1.6f, 3.2f)),
        particleScaleLayers = particleScaleLayers.bounded(0.01f..8f, SpectralRgb(2f, 1f, 0.5f)),
        densityMin = densityMin.bounded(0f..1f, SpectralRgb(0.03f, 0.03f, 0.03f)),
        uniformity = uniformity.bounded(0f..1f, SpectralRgb(0.97f, 0.99f, 0.97f)),
        blur = blur.spectralBound(0f..4f, 0.65f),
        blurDyeCloudsUm = blurDyeCloudsUm.spectralBound(0f..8f, 1f),
        microBlurUm = microBlurUm.spectralBound(0f..8f, 0.2f),
        microClumpNm = microClumpNm.spectralBound(0f..200f, 30f),
        subLayerCount = subLayerCount.coerceIn(1, 8),
    )
}

data class SpectralGlare(
    @SerializedName("enabled") val enabled: Boolean = false,
    @SerializedName("percent") val percent: Float = 0.03f,
    @SerializedName("roughness") val roughness: Float = 0.7f,
    @SerializedName("blur") val blur: Float = 0.5f,
) {
    internal val active get() = enabled && percent > 0f

    internal fun normalized() = copy(
        percent = percent.spectralBound(0f..1f, 0.03f),
        roughness = roughness.spectralBound(0f..1f, 0.7f),
        blur = blur.spectralBound(0f..8f, 0.5f),
    )
}

object SpectralFilmStockDefaults {
    fun dirMatrix(stock: String): SpectralDirMatrix {
        val positive = FilmStockRegistry.get(stock).type == "positive"
        if (!positive) return SpectralDirMatrix(
            SpectralRgb(0.336f, 0.353f, 0.302f),
            SpectralRgb(0.154f, 0.319f, 0.353f),
            SpectralRgb(0.168f, 0.226f, 0.273f),
        )
        return when (stock) {
            "fujifilm_velvia_100" -> SpectralDirMatrix(
                SpectralRgb(0.108f, 0.108f, 0.054f),
                SpectralRgb(0.072f, 0.072f, 0.054f),
                SpectralRgb(0.054f, 0.054f, 0.054f),
            )
            "fujifilm_provia_100f" -> SpectralDirMatrix(
                SpectralRgb(0.156f, 0.156f, 0.078f),
                SpectralRgb(0.104f, 0.104f, 0.078f),
                SpectralRgb(0.078f, 0.078f, 0.078f),
            )
            else -> SpectralDirMatrix(
                SpectralRgb(0.12f, 0.12f, 0.06f),
                SpectralRgb(0.08f, 0.08f, 0.06f),
                SpectralRgb(0.06f, 0.06f, 0.06f),
            )
        }
    }

    fun halation(stock: String, parameters: SpectralHalation = SpectralHalation()): SpectralHalation {
        val sigma = if (stock.startsWith("kodak_vision3_") || stock == "kodak_verita_200d") 50f else 65f
        val weak = stock in weakAntihalation
        return parameters.copy(
            strength = parameters.strength ?: if (weak) SpectralRgb(0.08f, 0.02f, 0f) else SpectralRgb(0.015f, 0.005f, 0f),
            firstSigmaUm = parameters.firstSigmaUm ?: SpectralRgb(sigma, sigma, sigma),
        )
    }

    private val weakAntihalation = setOf(
        "fujifilm_c200", "fujifilm_xtra_400", "kodak_gold_200", "kodak_kodachrome_64", "kodak_ultramax_400",
    )
}

internal fun Float.spectralBound(range: ClosedFloatingPointRange<Float>, default: Float): Float =
    (if (isFinite()) this else default).coerceIn(range)
