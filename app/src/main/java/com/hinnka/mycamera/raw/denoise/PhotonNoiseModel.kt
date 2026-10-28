package com.hinnka.mycamera.raw.denoise

import com.hinnka.mycamera.processor.RawNoiseModel
import com.hinnka.mycamera.raw.RawAppliedLensShading
import com.hinnka.mycamera.raw.RawDenoiseHistory
import com.hinnka.mycamera.raw.RawDenoisePipeline
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.raw.RawNoiseProfileLayout
import org.json.JSONArray
import org.json.JSONObject
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sqrt

/**
 * LSC gains contained in the denoiser input (docs/photon-multiscale-denoise.md §3).
 * [gains] is R, Ge, Go, B interleaved; [dngGrid] null means Camera2 whole-image UV.
 */
internal class PhotonLensShading(
    val gains: FloatArray,
    val width: Int,
    val height: Int,
    val dngGrid: FloatArray?,
) {
    init {
        require(width > 0 && height > 0 && gains.size >= width * height * 4)
        require(dngGrid == null || dngGrid.size >= 8)
    }

    companion object {
        fun applied(value: RawAppliedLensShading) = PhotonLensShading(value.gains, value.width, value.height, null)

        fun demosaic(metadata: RawMetadata): PhotonLensShading? {
            val map = metadata.lensShadingMap ?: return null
            val w = metadata.lensShadingMapWidth
            val h = metadata.lensShadingMapHeight
            if (w <= 0 || h <= 0 || map.size < w * h * 4) return null
            return PhotonLensShading(map, w, h, metadata.lensShadingMapGrid?.takeIf { it.size >= 8 })
        }
    }
}

/** Every value the Photon denoiser passes consume; mirrored by tools/photon_denoise/photon_denoise.Params. */
internal class PhotonDenoiseParams(
    val pipeline: RawDenoisePipeline,
    /** §5 noise coordinate the tuning was taken at. */
    val noiseCoordinate: Float,
    val scale: Float,
    val whiteBalance: FloatArray,
    val read: FloatArray,
    val shot: FloatArray,
    val mergeRead: Float,
    val mergeShot: Float,
    /** §2.4 t² per level as (Y, Cb, Cr). */
    val residual: Array<FloatArray>,
    val kappaLuma: Array<FloatArray>,
    val kappaChroma: Array<FloatArray>,
    val levels: Int,
    val lumaLevels: Int,
    val alpha: FloatArray,
    val grain: FloatArray,
    val outlier: FloatArray,
    val gateLuma: FloatArray,
    val gateChroma: FloatArray,
    val bilateralLevels: Int,
    val bilateralLuma: Float,
    val bilateralChroma: Float,
    val lumaStrength: Float,
    val chromaStrength: Float,
    val lensShading: PhotonLensShading?,
    val originX: Int,
    val originY: Int,
    val fullWidth: Int,
    val fullHeight: Int,
) {
    /** §8: residual ratio t_l(s). */
    fun lumaGrain(level: Int): Float {
        val t = grain[level]
        val s = lumaStrength
        return if (s <= 1f) 1f - s * (1f - t) else t * (2f - s)
    }

    /** §8: α_l · max(s, 1)². */
    fun lumaAlpha(level: Int): Float = alpha[level] * max(lumaStrength, 1f).let { it * it }

    /** §8: χ² thresholds scaled by max(s, 1)². */
    fun chromaThresholdScale(): Float = max(chromaStrength, 1f).let { it * it }

    /**
     * §2.4: noise state of this pass's output. Flat-region worst case per level: luma keeps
     * t_l(s)² of its input variance where it is shrunk; chroma detail keeps (1 − min(s, 1))²
     * (gate closed). Levels this pass does not process keep their input ratio.
     */
    fun outputHistory(): RawDenoiseHistory {
        val chromaKept = (1f - min(chromaStrength, 1f)).let { it * it }
        val residualOut = List(max(levels, residual.size)) { level ->
            val input = residual.getOrNull(level) ?: floatArrayOf(1f, 1f, 1f)
            if (level >= levels) return@List input.copyOf()
            val luma = if (level < lumaLevels && lumaStrength > 0f) lumaGrain(level).let { it * it } else 1f
            val chroma = if (chromaStrength > 0f) chromaKept else 1f
            floatArrayOf(input[0] * luma, input[1] * chroma, input[2] * chroma)
        }
        return RawDenoiseHistory(pipeline, mergeRead, mergeShot, residualOut)
    }

    fun toJson(): JSONObject = JSONObject().apply {
        put("pipeline", pipeline.name)
        put("noiseCoordinate", noiseCoordinate.toDouble())
        put("scale", scale.toDouble())
        put("whiteBalance", JSONArray(whiteBalance.map(Float::toDouble)))
        put("read", JSONArray(read.map(Float::toDouble)))
        put("shot", JSONArray(shot.map(Float::toDouble)))
        put("mergeRead", mergeRead.toDouble())
        put("mergeShot", mergeShot.toDouble())
        put("residual", JSONArray(residual.map { row -> JSONArray(row.map(Float::toDouble)) }))
        put("kappaLuma", JSONArray(kappaLuma.map { row -> JSONArray(row.map(Float::toDouble)) }))
        put("kappaChroma", JSONArray(kappaChroma.map { row -> JSONArray(row.map(Float::toDouble)) }))
        put("levels", levels)
        put("lumaLevels", lumaLevels)
        put("alpha", JSONArray(alpha.map(Float::toDouble)))
        put("grain", JSONArray(grain.map(Float::toDouble)))
        put("outlier", JSONArray(outlier.map(Float::toDouble)))
        put("gateLuma", JSONArray(gateLuma.map(Float::toDouble)))
        put("gateChroma", JSONArray(gateChroma.map(Float::toDouble)))
        put("bilateralLevels", bilateralLevels)
        put("bilateralLuma", bilateralLuma.toDouble())
        put("bilateralChroma", bilateralChroma.toDouble())
        put("lumaStrength", lumaStrength.toDouble())
        put("chromaStrength", chromaStrength.toDouble())
        put("originX", originX)
        put("originY", originY)
        put("fullWidth", fullWidth)
        put("fullHeight", fullHeight)
        lensShading?.let { lsc ->
            put("lensShading", JSONObject().apply {
                put("width", lsc.width)
                put("height", lsc.height)
                put("gains", JSONArray(lsc.gains.take(lsc.width * lsc.height * 4).map(Float::toDouble)))
                lsc.dngGrid?.let { put("dngGrid", JSONArray(it.map(Float::toDouble))) }
            })
        }
    }
}

/** §2: RAW profile × white-noise energy of the pyramid. */
internal object PhotonNoiseModel {
    private const val MAX_WORKING_SIGNAL = 32768f
    private const val MAX_SCALE = 4096f
    private const val LSB_FRACTION = 0.25f
    private const val MIN_LEVEL_SIZE = 4

    /**
     * RAW input. [history]: §2.2 merge ratios, §2.4 residual ratios and pipeline of the pixels.
     */
    fun build(
        metadata: RawMetadata,
        width: Int,
        height: Int,
        originX: Int,
        originY: Int,
        fullWidth: Int,
        fullHeight: Int,
        history: RawDenoiseHistory,
        lumaStrength: Float,
        chromaStrength: Float,
        lensShading: PhotonLensShading?,
    ): PhotonDenoiseParams? {
        val noise = profileNoise(metadata) ?: return null
        val gains = metadata.whiteBalanceGains
        val green = if (gains.size >= 4) 0.5f * (gains[1] + gains[2]) else gains.getOrElse(1) { 1f }
        val whiteBalance = floatArrayOf(
            gains.getOrElse(0) { 1f } / green,
            1f,
            (if (gains.size >= 4) gains[3] else gains.getOrElse(2) { 1f }) / green,
        )
        return build(noise.read, noise.shot, whiteBalance, width, height, originX, originY, fullWidth, fullHeight,
            history, lumaStrength, chromaStrength, lensShading)
    }

    /**
     * §9 Bitmap input: linear sRGB with the nominal profile of the BITMAP table, no white
     * balance, no LSC, no merge.
     */
    fun buildBitmap(width: Int, height: Int, lumaStrength: Float, chromaStrength: Float): PhotonDenoiseParams = build(
        read = FloatArray(3) { PhotonDenoiseTuning.BITMAP_READ },
        shot = FloatArray(3) { PhotonDenoiseTuning.BITMAP_SHOT },
        whiteBalance = floatArrayOf(1f, 1f, 1f),
        width = width,
        height = height,
        originX = 0,
        originY = 0,
        fullWidth = width,
        fullHeight = height,
        history = RawDenoiseHistory.singleFrame(RawDenoisePipeline.BITMAP),
        lumaStrength = lumaStrength,
        chromaStrength = chromaStrength,
        lensShading = null,
    )

    /** Normalized camera-RGB read / shot coefficients of the RAW noise profile (§2.1 r_c, s_c). */
    class ProfileNoise(val read: FloatArray, val shot: FloatArray)

    fun profileNoise(metadata: RawMetadata): ProfileNoise? {
        val rawNoise = when (metadata.noiseProfileLayout) {
            RawNoiseProfileLayout.CAMERA2_CFA -> RawNoiseModel.fromCamera2NoiseProfile(metadata.channelNoiseProfile)
            RawNoiseProfileLayout.DNG_RGB -> RawNoiseModel.fromDngNoiseProfile(metadata.channelNoiseProfile)
            RawNoiseProfileLayout.CANONICAL_BAYER -> {
                if (metadata.channelNoiseProfile.size < 8) return null
                RawNoiseModel.fromCanonicalBayerChannels(
                    shotNoise = FloatArray(4) { metadata.channelNoiseProfile[it * 2] },
                    readNoise = FloatArray(4) { metadata.channelNoiseProfile[it * 2 + 1] },
                )
            }
            RawNoiseProfileLayout.NONE -> RawNoiseModel.EMPTY
        }
        val bayerShot = rawNoise.normalizedShotNoiseForShader(metadata.cfaPattern)
        val bayerRead = rawNoise.normalizedReadNoiseForShader(metadata.cfaPattern)
        if (bayerShot.none { it > 0f } && bayerRead.none { it > 0f }) return null
        return ProfileNoise(
            read = RawNoiseModel.bayerNoiseModelToRgb(bayerRead),
            shot = RawNoiseModel.bayerNoiseModelToRgb(bayerShot),
        )
    }

    /** Recorded history of a RAW source, else a single frame of the demosaic that produced it. */
    fun historyOf(metadata: RawMetadata): RawDenoiseHistory = metadata.denoiseHistory
        ?: RawDenoiseHistory.singleFrame(
            if (RawMetadata.isQuadBayer(metadata.cfaPattern)) RawDenoisePipeline.QUAD else RawDenoisePipeline.VGN,
        )

    /** §5: n = √(m · v_Y(0.18)) / 0.18, v_Y the luma point variance without K. */
    fun noiseCoordinate(read: FloatArray, shot: FloatArray, whiteBalance: FloatArray, history: RawDenoiseHistory): Float {
        val luma = floatArrayOf(0.25f, 0.5f, 0.25f)
        var variance = 0.0
        for (c in 0..2) {
            val a = luma[c] * whiteBalance[c]
            variance += a * a * (history.mergeRead * read[c] + history.mergeShot * shot[c] * 0.18f / whiteBalance[c])
        }
        return (sqrt(variance) / 0.18).toFloat()
    }

    private fun build(
        read: FloatArray,
        shot: FloatArray,
        whiteBalance: FloatArray,
        width: Int,
        height: Int,
        originX: Int,
        originY: Int,
        fullWidth: Int,
        fullHeight: Int,
        history: RawDenoiseHistory,
        lumaStrength: Float,
        chromaStrength: Float,
        lensShading: PhotonLensShading?,
    ): PhotonDenoiseParams {
        val mergeRead = history.mergeRead
        val mergeShot = history.mergeShot
        val scale = min(MAX_SCALE, MAX_WORKING_SIGNAL / whiteBalance.max())
        val sizeLimit = generateSequence(min(width, height)) { (it + 1) / 2 }
            .takeWhile { it >= MIN_LEVEL_SIZE }.count() - 1
        val maxLevels = min(PhotonDenoiseTuning.MAX_LEVELS, sizeLimit).coerceAtLeast(1)
        val unit = FloatArray(PhotonNoisePropagation.SPECTRUM_SIZE) { 1f }
        val chromaTable = PhotonNoisePropagation.propagate(unit, unit, PhotonNoisePropagation.CHROMA_TAPS, maxLevels)
        val lumaTable = PhotonNoisePropagation.propagate(unit, unit, PhotonNoisePropagation.LUMA_TAPS, maxLevels)
        val levels = chromaLevels(chromaTable, read, shot, mergeRead, mergeShot, whiteBalance, scale, maxLevels)
        fun rows(table: PhotonNoisePropagation.Table) = Array(levels) { l ->
            FloatArray(4) { phase -> table.kappaLaplacian[l][phase].toFloat() }
        }
        val n = noiseCoordinate(read, shot, whiteBalance, history)
        val tuning = PhotonDenoiseTuning.at(history.pipeline, n)
        return PhotonDenoiseParams(
            pipeline = history.pipeline,
            noiseCoordinate = n,
            scale = scale,
            whiteBalance = whiteBalance,
            read = read.copyOf(),
            shot = shot.copyOf(),
            mergeRead = mergeRead,
            mergeShot = mergeShot,
            residual = Array(levels) { history.residualAt(it) },
            kappaLuma = rows(lumaTable),
            kappaChroma = rows(chromaTable),
            levels = levels,
            lumaLevels = min(PhotonDenoiseTuning.LUMA_LEVELS, levels),
            alpha = tuning.alpha.copyOf(levels),
            grain = tuning.grain.copyOf(levels),
            outlier = tuning.outlier.copyOf(levels),
            gateLuma = tuning.gateLuma.copyOf(),
            gateChroma = tuning.gateChroma.copyOf(),
            bilateralLevels = tuning.bilateralLevels,
            bilateralLuma = tuning.bilateralLuma,
            bilateralChroma = tuning.bilateralChroma,
            lumaStrength = lumaStrength,
            chromaStrength = chromaStrength,
            lensShading = lensShading,
            originX = originX,
            originY = originY,
            fullWidth = fullWidth,
            fullHeight = fullHeight,
        )
    }

    /** §4.2: deepest chroma level whose mid-grey noise still exceeds a quarter of a 16-bit LSB. */
    private fun chromaLevels(
        table: PhotonNoisePropagation.Table,
        read: FloatArray,
        shot: FloatArray,
        mergeRead: Float,
        mergeShot: Float,
        whiteBalance: FloatArray,
        scale: Float,
        maxLevels: Int,
    ): Int {
        // Mid-grey Cb variance of independent source noise in the working domain.
        val mu = FloatArray(3) { 0.18f / whiteBalance[it] }
        val cb = floatArrayOf(0f, -1f, 1f)
        var variance = 0.0
        for (c in 0..2) {
            val a = scale * cb[c] * whiteBalance[c]
            variance += a * a * (mergeRead * read[c] + mergeShot * shot[c] * mu[c])
        }
        val threshold = LSB_FRACTION * scale / 65535f
        var levels = PhotonDenoiseTuning.MIN_CHROMA_LEVELS
        while (levels < maxLevels) {
            val kappa = table.kappaLaplacian[levels].average()
            if (sqrt(kappa * variance) < threshold) break
            levels++
        }
        return min(levels, maxLevels)
    }
}
