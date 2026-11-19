package com.hinnka.mycamera.raw

import com.google.gson.Gson
import com.google.gson.JsonObject
import com.google.gson.JsonParseException
import com.google.gson.annotations.SerializedName

enum class SpectralDyeOrder(internal val nativeIndex: Int) {
    @SerializedName("CMY") CMY(0),
    @SerializedName("CYM") CYM(1),
    @SerializedName("MCY") MCY(2),
    @SerializedName("MYC") MYC(3),
    @SerializedName("YCM") YCM(4),
    @SerializedName("YMC") YMC(5),
}

data class SpectralFilmTuning(
    @SerializedName("cameraExposureEv") val cameraExposureEv: Float = 0f,
    @SerializedName("filmGamma") val filmGamma: Float = 1f,
    @SerializedName("filmDyeOrder") val filmDyeOrder: SpectralDyeOrder = SpectralDyeOrder.CMY,
    @SerializedName("dirEnabled") val dirEnabled: Boolean = true,
    @SerializedName("dirAmount") val dirAmount: Float = 1f,
    @SerializedName("dirSameLayer") val dirSameLayer: Float = 1f,
    @SerializedName("dirInterLayer") val dirInterLayer: Float = 1f,
    @SerializedName("spectralAdaptationWindow") val spectralAdaptationWindow: Boolean = true,
    @SerializedName("spectralAdaptationSurface") val spectralAdaptationSurface: Boolean = false,
    @SerializedName("spectralBlur") val spectralBlur: Float = 0f,
    @SerializedName("inputGamutCompression") val inputGamutCompression: Boolean = true,
    @SerializedName("scanFilm") val scanFilm: Boolean = false,
    @SerializedName("printExposure") val printExposure: Float = 1f,
    @SerializedName("printDyeOrder") val printDyeOrder: SpectralDyeOrder = SpectralDyeOrder.CMY,
    @SerializedName("printExposureCompensation") val printExposureCompensation: Boolean = true,
    @SerializedName("printNormalizeExposure") val printNormalizeExposure: Boolean = true,
    @SerializedName("printYellowShift") val printYellowShift: Float = 0f,
    @SerializedName("printMagentaShift") val printMagentaShift: Float = 0f,
    @SerializedName("preflashExposure") val preflashExposure: Float = 0f,
    @SerializedName("preflashYellowShift") val preflashYellowShift: Float = 0f,
    @SerializedName("preflashMagentaShift") val preflashMagentaShift: Float = 0f,
    @SerializedName("printChemistryEnabled") val printChemistryEnabled: Boolean = false,
    @SerializedName("printGamma") val printGamma: Float = 1f,
    @SerializedName("printGammaFast") val printGammaFast: Float = 1f,
    @SerializedName("printGammaSlow") val printGammaSlow: Float = 1f,
    @SerializedName("printGammaRed") val printGammaRed: Float = 1f,
    @SerializedName("printGammaGreen") val printGammaGreen: Float = 1f,
    @SerializedName("printGammaBlue") val printGammaBlue: Float = 1f,
    @SerializedName("printDeveloperExhaustion") val printDeveloperExhaustion: Float = 0f,
    @SerializedName("scannerLensBlur") val scannerLensBlur: Float = 0f,
    @SerializedName("scannerUnsharpSigma") val scannerUnsharpSigma: Float = 0.7f,
    @SerializedName("scannerUnsharpAmount") val scannerUnsharpAmount: Float = 0f,
    @SerializedName("filmFormatMm") val filmFormatMm: Float = 35f,
    @SerializedName("cameraLensBlurUm") val cameraLensBlurUm: Float = 0f,
    @SerializedName("cameraDiffusion") val cameraDiffusion: SpectralDiffusion = SpectralDiffusion(),
    @SerializedName("enlargerDiffusion") val enlargerDiffusion: SpectralDiffusion = SpectralDiffusion(),
    @SerializedName("halation") val halation: SpectralHalation = SpectralHalation(),
    @SerializedName("grain") val grain: SpectralGrain = SpectralGrain(),
    @SerializedName("glare") val glare: SpectralGlare = SpectralGlare(),
    @SerializedName("dirMatrix") val dirMatrix: SpectralDirMatrix? = null,
    @SerializedName("dirDiffusionUm") val dirDiffusionUm: Float = 0f,
    @SerializedName("dirTailUm") val dirTailUm: Float = 200f,
    @SerializedName("dirTailWeight") val dirTailWeight: Float = 0.06f,
    @SerializedName("scanWhiteCorrection") val scanWhiteCorrection: Boolean = false,
    @SerializedName("scanWhiteLevel") val scanWhiteLevel: Float = 0.98f,
    @SerializedName("scanBlackCorrection") val scanBlackCorrection: Boolean = false,
    @SerializedName("scanBlackLevel") val scanBlackLevel: Float = 0.01f,
    @SerializedName("spectralMethod") val spectralMethod: Int = 0,
    @SerializedName("inputGamutMethod") val inputGamutMethod: Int = 0,
    @SerializedName("outputGamutMethod") val outputGamutMethod: Int = 0,
    @SerializedName("inputGamutKnee") val inputGamutKnee: SpectralKnee = SpectralKnee(),
    @SerializedName("outputGamutKnee") val outputGamutKnee: SpectralKnee = SpectralKnee(),
) {
    fun normalized(): SpectralFilmTuning = copy(
        cameraExposureEv = cameraExposureEv.bounded(-5f, 5f, 0f),
        filmGamma = filmGamma.bounded(0.1f, 3f, 1f),
        dirAmount = dirAmount.bounded(0f, 1f, 1f),
        dirSameLayer = dirSameLayer.bounded(0f, 1f, 1f),
        dirInterLayer = dirInterLayer.bounded(0f, 1f, 1f),
        spectralBlur = spectralBlur.bounded(0f, 5f, 0f),
        printExposure = printExposure.bounded(0f, 4f, 1f),
        printYellowShift = printYellowShift.bounded(-200f, 200f, 0f),
        printMagentaShift = printMagentaShift.bounded(-200f, 200f, 0f),
        preflashExposure = preflashExposure.bounded(0f, 1f, 0f),
        preflashYellowShift = preflashYellowShift.bounded(-200f, 200f, 0f),
        preflashMagentaShift = preflashMagentaShift.bounded(-200f, 200f, 0f),
        printGamma = printGamma.bounded(0.5f, 2f, 1f),
        printGammaFast = printGammaFast.bounded(0.5f, 2f, 1f),
        printGammaSlow = printGammaSlow.bounded(0.5f, 2f, 1f),
        printGammaRed = printGammaRed.bounded(0.5f, 2f, 1f),
        printGammaGreen = printGammaGreen.bounded(0.5f, 2f, 1f),
        printGammaBlue = printGammaBlue.bounded(0.5f, 2f, 1f),
        printDeveloperExhaustion = printDeveloperExhaustion.bounded(0f, 1f, 0f),
        scannerLensBlur = scannerLensBlur.bounded(0f, 8f, 0f),
        scannerUnsharpSigma = scannerUnsharpSigma.bounded(0f, 8f, 0.7f),
        scannerUnsharpAmount = scannerUnsharpAmount.bounded(0f, 3f, 0f),
        filmFormatMm = filmFormatMm.spectralBound(8f..120f, 35f),
        cameraLensBlurUm = cameraLensBlurUm.spectralBound(0f..30f, 0f),
        cameraDiffusion = cameraDiffusion.normalized(),
        enlargerDiffusion = enlargerDiffusion.normalized(),
        halation = halation.normalized(),
        grain = grain.normalized(),
        glare = glare.normalized(),
        dirDiffusionUm = dirDiffusionUm.spectralBound(0f..40f, 0f),
        dirTailUm = dirTailUm.spectralBound(0f..400f, 200f),
        dirTailWeight = dirTailWeight.spectralBound(0f..1f, 0.06f),
        scanWhiteLevel = scanWhiteLevel.spectralBound(0f..1f, 0.98f),
        scanBlackLevel = scanBlackLevel.spectralBound(0f..1f, 0.01f),
        spectralMethod = spectralMethod.coerceIn(0, 1),
        inputGamutMethod = inputGamutMethod.coerceIn(0, 1),
        outputGamutMethod = outputGamutMethod.coerceIn(0, 5),
        inputGamutKnee = inputGamutKnee.normalized(),
        outputGamutKnee = outputGamutKnee.normalized(),
    )

    fun encodeParameters(): String? {
        val tuning = normalized()
        return if (tuning == DEFAULT) null else gson.toJson(tuning)
    }

    internal val hasDir: Boolean
        get() = dirEnabled && dirAmount > 0f && (dirSameLayer > 0f || dirInterLayer > 0f)

    internal fun needsSpatialGraph(print: Boolean): Boolean =
        cameraLensBlurUm > 0f || cameraDiffusion.active || halation.enabled || grain.active ||
            halation.boostEv > 0f || (hasDir && dirDiffusionUm > 0f) ||
            (print && (enlargerDiffusion.active || glare.active)) ||
            outputGamutMethod == 1 || outputGamutMethod == 3

    internal fun filmOptions(stock: String): FloatArray {
        val matrix = dirMatrix?.takeIf { hasDir }?.bounded(SpectralFilmStockDefaults.dirMatrix(stock))
        return floatArrayOf(
            cameraExposureEv, filmGamma, hasDir.flag,
            if (hasDir) dirAmount else 0f,
            if (hasDir) dirSameLayer else 0f,
            if (hasDir) dirInterLayer else 0f,
            spectralAdaptationWindow.flag, spectralAdaptationSurface.flag, spectralBlur, inputGamutCompression.flag,
            spectralMethod.toFloat(),
            inputGamutMethod.toFloat(), inputGamutKnee.threshold, inputGamutKnee.limit, inputGamutKnee.power,
            (matrix != null).flag,
        ) + (matrix?.values() ?: FloatArray(9))
    }

    internal fun scanOptions(correctionAvailable: Boolean): FloatArray {
        val white = correctionAvailable && scanWhiteCorrection
        val black = correctionAvailable && scanBlackCorrection
        return floatArrayOf(
            white.flag, if (white) scanWhiteLevel else 0.98f,
            black.flag, if (black) scanBlackLevel else 0.01f,
            outputGamutMethod.toFloat(), outputGamutKnee.threshold, outputGamutKnee.limit, outputGamutKnee.power,
        ) + if (white || black) grain.densityMin.values() else DEFAULT.grain.densityMin.values()
    }

    internal fun printOptions(): FloatArray = floatArrayOf(
        printExposure, if (printExposureCompensation) cameraExposureEv else 0f, printNormalizeExposure.flag,
        printMagentaShift, printYellowShift, preflashExposure,
        if (preflashExposure > 0f) preflashMagentaShift else 0f,
        if (preflashExposure > 0f) preflashYellowShift else 0f,
        if (printChemistryEnabled) printGamma else 1f,
        if (printChemistryEnabled) printGammaFast else 1f,
        if (printChemistryEnabled) printGammaSlow else 1f,
        if (printChemistryEnabled) printGammaRed else 1f,
        if (printChemistryEnabled) printGammaGreen else 1f,
        if (printChemistryEnabled) printGammaBlue else 1f,
        if (printChemistryEnabled) printDeveloperExhaustion else 0f,
    )

    companion object {
        val DEFAULT = SpectralFilmTuning()
        private val gson = Gson()

        fun decodeParameters(value: String?): SpectralFilmTuning {
            if (value == null) return DEFAULT
            val tuning = try {
                val parameters = gson.fromJson(value, JsonObject::class.java) ?: return DEFAULT
                parameters.removeNullFields()
                for (key in listOf("filmDyeOrder", "printDyeOrder")) {
                    val dyeOrder = parameters.get(key)
                    if (dyeOrder != null && (!dyeOrder.isJsonPrimitive ||
                            SpectralDyeOrder.entries.none { order -> order.name == dyeOrder.asString })) {
                        parameters.remove(key)
                    }
                }
                gson.fromJson(parameters, SpectralFilmTuning::class.java)
            } catch (_: JsonParseException) {
                null
            }
            return tuning?.normalized() ?: DEFAULT
        }

        private fun Float.bounded(min: Float, max: Float, default: Float): Float =
            if (isFinite()) coerceIn(min, max) else default

        private fun JsonObject.removeNullFields() {
            val iterator = entrySet().iterator()
            while (iterator.hasNext()) {
                val field = iterator.next().value
                if (field.isJsonNull) iterator.remove()
                else if (field.isJsonObject) field.asJsonObject.removeNullFields()
            }
        }

        private val Boolean.flag: Float get() = if (this) 1f else 0f
    }
}
