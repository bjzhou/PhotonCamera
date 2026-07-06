package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.utils.BoundedTextLineReader
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import org.json.JSONObject
import java.io.BufferedReader
import java.io.InputStreamReader
import kotlin.math.abs
import kotlin.math.ln
import kotlin.math.pow

data class SpectralFilmLut(
    val stock: String,
    val name: String,
    val type: String,
    val referenceIlluminant: String,
    val viewingIlluminant: String,
    val sourceKey: String,
    val size: Int,
    val values: FloatArray
)

data class FilmStockInfo(
    val type: String,
    val referenceIlluminant: String,
    val viewingIlluminant: String
)

data class FilmDensityWire(
    val dMin: FloatArray,
    val dMax: FloatArray
)

data class SpectralFilmTuning(
    val cDensityGain: Float = 1f,
    val mDensityGain: Float = 1f,
    val yDensityGain: Float = 1f
) {
    fun normalized(): SpectralFilmTuning {
        return SpectralFilmTuning(
            cDensityGain = cDensityGain.coerceIn(MIN_DENSITY_GAIN, MAX_DENSITY_GAIN),
            mDensityGain = mDensityGain.coerceIn(MIN_DENSITY_GAIN, MAX_DENSITY_GAIN),
            yDensityGain = yDensityGain.coerceIn(MIN_DENSITY_GAIN, MAX_DENSITY_GAIN)
        )
    }

    fun cacheKey(): String {
        val t = normalized()
        return "${t.cDensityGain}:${t.mDensityGain}:${t.yDensityGain}"
    }

    fun negativeFilmDensityGainC(): Float = userFacingDensityToNegativeFilmGain(normalized().cDensityGain)

    fun negativeFilmDensityGainM(): Float = userFacingDensityToNegativeFilmGain(normalized().mDensityGain)

    fun negativeFilmDensityGainY(): Float = userFacingDensityToNegativeFilmGain(normalized().yDensityGain)

    companion object {
        const val MIN_DENSITY_GAIN = 0.5f
        const val MAX_DENSITY_GAIN = 1.5f
        val DEFAULT = SpectralFilmTuning()

        private fun userFacingDensityToNegativeFilmGain(gain: Float): Float {
            return 2f - gain
        }
    }
}

data class SpectralFilmSelection(
    val id: String,
    val tuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT
) {
    fun normalized(): SpectralFilmSelection {
        return copy(tuning = tuning.normalized())
    }
}

data class PrintPaperInfo(
    val referenceIlluminant: String,
    val viewingIlluminant: String
)

data class SpectralFilmPrintModel(
    val version: Int,
    val observerCmfs: FloatArray,
    val viewingIlluminants: Map<String, FloatArray>,
    val xyzToProPhoto: Map<String, FloatArray>,
    val films: Map<String, SpectralFilmModelData>,
    val papers: Map<String, SpectralPaperModelData>,
    val combinations: Map<String, Map<String, SpectralPrintCombinationData>>
)

data class SpectralFilmModelData(
    val channelDensity: FloatArray,
    val baseDensity: FloatArray,
    val densityMin: FloatArray,
    val densityMax: FloatArray
)

data class SpectralPaperModelData(
    val viewingIlluminant: String,
    val sensitivity: FloatArray,
    val channelDensity: FloatArray,
    val baseDensity: FloatArray,
    val logExposure: FloatArray,
    val densityCurves: FloatArray
)

data class SpectralPrintCombinationData(
    val printIlluminant: FloatArray,
    val exposureFactor: Float,
    val neutralFilters: FloatArray
)

object FilmStockRegistry {
    private val default = FilmStockInfo(
        type = "negative",
        referenceIlluminant = "D55",
        viewingIlluminant = "D50"
    )

    val stocks = mapOf(
        "fujifilm_c200" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "fujifilm_pro_400h" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "fujifilm_provia_100f" to FilmStockInfo(type = "positive", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "fujifilm_velvia_100" to FilmStockInfo(type = "positive", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "fujifilm_xtra_400" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_ektachrome_100" to FilmStockInfo(type = "positive", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_ektar_100" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_gold_200" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_kodachrome_64" to FilmStockInfo(type = "positive", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_portra_160" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_portra_400" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_portra_800" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_portra_800_push1" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_portra_800_push2" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_ultramax_400" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_verita_200d" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_vision3_200t" to FilmStockInfo(type = "negative", referenceIlluminant = "T", viewingIlluminant = "D50"),
        "kodak_vision3_250d" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50"),
        "kodak_vision3_500t" to FilmStockInfo(type = "negative", referenceIlluminant = "T", viewingIlluminant = "D50"),
        "kodak_vision3_50d" to FilmStockInfo(type = "negative", referenceIlluminant = "D55", viewingIlluminant = "D50")
    )

    fun get(stock: String): FilmStockInfo = stocks[stock] ?: default
}

object FilmDensityWireRegistry {
    private val defaultDMin = floatArrayOf(-0.2f, -0.2f, -0.2f)

    val wires = mapOf(
        "fujifilm_c200" to wire(1.7393f, 1.9257f, 2.2892f),
        "fujifilm_pro_400h" to wire(1.5215f, 1.6171f, 2.0555f),
        "fujifilm_xtra_400" to wire(2.0234f, 2.1502f, 2.6683f),
        "kodak_ektar_100" to wire(1.8008f, 1.7775f, 2.2188f),
        "kodak_gold_200" to wire(1.6538f, 1.5270f, 1.6814f),
        "kodak_portra_160" to wire(1.6281f, 1.6692f, 1.9841f),
        "kodak_portra_400" to wire(1.8590f, 1.7816f, 2.0896f),
        "kodak_portra_800" to wire(1.8386f, 1.7134f, 1.8858f),
        "kodak_portra_800_push1" to wire(2.1669f, 1.9517f, 2.2205f),
        "kodak_portra_800_push2" to wire(2.3529f, 2.0343f, 2.4457f),
        "kodak_ultramax_400" to wire(1.7868f, 1.6910f, 1.9068f),
        "kodak_verita_200d" to wire(1.6719f, 1.6319f, 1.8600f),
        "kodak_vision3_200t" to wire(1.5222f, 1.5838f, 1.8118f),
        "kodak_vision3_250d" to wire(1.5678f, 1.6333f, 1.8032f),
        "kodak_vision3_500t" to wire(1.5709f, 1.5010f, 1.8260f),
        "kodak_vision3_50d" to wire(1.5802f, 1.6924f, 1.9061f)
    )

    fun get(stock: String): FilmDensityWire? = wires[stock]

    private fun wire(cMax: Float, mMax: Float, yMax: Float): FilmDensityWire {
        return FilmDensityWire(
            dMin = defaultDMin.copyOf(),
            dMax = floatArrayOf(cMax, mMax, yMax)
        )
    }
}

object PrintPaperRegistry {
    private val default = PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "D50")

    val papers = mapOf(
        "fujifilm_crystal_archive_typeii" to PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "D50"),
        "kodak_2383" to PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "K75P"),
        "kodak_2393" to PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "K75P"),
        "kodak_ektacolor_edge" to PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "D50"),
        "kodak_endura_premier" to PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "D50"),
        "kodak_portra_endura" to PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "D50"),
        "kodak_supra_endura" to PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "D50"),
        "kodak_ultra_endura" to PrintPaperInfo(referenceIlluminant = "TH-KG3", viewingIlluminant = "D50")
    )

    fun get(paper: String): PrintPaperInfo = papers[paper] ?: default
}

object SpectralPrintModelRegistry {
    private const val TAG = "SpectralPrintModel"
    private const val MODEL_ASSET = "spektrafilm/print_model.json"
    private const val WAVELENGTH_COUNT = 81
    private const val CHANNEL_COUNT = 3

    @Volatile
    private var cached: SpectralFilmPrintModel? = null

    fun load(context: Context): SpectralFilmPrintModel? {
        cached?.let { return it }
        return synchronized(this) {
            cached ?: loadInternal(context)?.also { cached = it }
        }
    }

    private fun loadInternal(context: Context): SpectralFilmPrintModel? {
        return try {
            val jsonText = context.assets.open(MODEL_ASSET).bufferedReader().use { it.readText() }
            val root = JSONObject(jsonText)
            SpectralFilmPrintModel(
                version = root.optInt("version", 1),
                observerCmfs = root.getJSONArray("observerCmfs").toFloatArray2d(WAVELENGTH_COUNT, CHANNEL_COUNT),
                viewingIlluminants = root.getJSONObject("viewingIlluminants").toFloatArrayMap1d(),
                xyzToProPhoto = root.getJSONObject("xyzToProPhoto").toFloatArrayMap2d(CHANNEL_COUNT, CHANNEL_COUNT),
                films = parseFilms(root.getJSONObject("films")),
                papers = parsePapers(root.getJSONObject("papers")),
                combinations = parseCombinations(root.getJSONObject("combinations"))
            )
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load Spektrafilm print model", e)
            null
        }
    }

    private fun parseFilms(obj: JSONObject): Map<String, SpectralFilmModelData> {
        val result = mutableMapOf<String, SpectralFilmModelData>()
        obj.keys().forEach { key ->
            val film = obj.getJSONObject(key)
            result[key] = SpectralFilmModelData(
                channelDensity = film.getJSONArray("channelDensity").toFloatArray2d(WAVELENGTH_COUNT, CHANNEL_COUNT),
                baseDensity = film.getJSONArray("baseDensity").toFloatArray1d(),
                densityMin = film.getJSONArray("densityMin").toFloatArray1d(),
                densityMax = film.getJSONArray("densityMax").toFloatArray1d()
            )
        }
        return result
    }

    private fun parsePapers(obj: JSONObject): Map<String, SpectralPaperModelData> {
        val result = mutableMapOf<String, SpectralPaperModelData>()
        obj.keys().forEach { key ->
            val paper = obj.getJSONObject(key)
            result[key] = SpectralPaperModelData(
                viewingIlluminant = paper.getString("viewingIlluminant"),
                sensitivity = paper.getJSONArray("sensitivity").toFloatArray2d(WAVELENGTH_COUNT, CHANNEL_COUNT),
                channelDensity = paper.getJSONArray("channelDensity").toFloatArray2d(WAVELENGTH_COUNT, CHANNEL_COUNT),
                baseDensity = paper.getJSONArray("baseDensity").toFloatArray1d(),
                logExposure = paper.getJSONArray("logExposure").toFloatArray1d(),
                densityCurves = paper.getJSONArray("densityCurves").toFloatArray2d(paper.getJSONArray("logExposure").length(), CHANNEL_COUNT)
            )
        }
        return result
    }

    private fun parseCombinations(obj: JSONObject): Map<String, Map<String, SpectralPrintCombinationData>> {
        val result = mutableMapOf<String, Map<String, SpectralPrintCombinationData>>()
        obj.keys().forEach { filmKey ->
            val paperMap = mutableMapOf<String, SpectralPrintCombinationData>()
            val papers = obj.getJSONObject(filmKey)
            papers.keys().forEach { paperKey ->
                val combo = papers.getJSONObject(paperKey)
                paperMap[paperKey] = SpectralPrintCombinationData(
                    printIlluminant = combo.getJSONArray("printIlluminant").toFloatArray1d(),
                    exposureFactor = combo.getJSONArray("exposureFactor").firstNumber().toFloat(),
                    neutralFilters = combo.getJSONArray("neutralFilters").toFloatArray1d()
                )
            }
            result[filmKey] = paperMap
        }
        return result
    }

    private fun JSONObject.toFloatArrayMap1d(): Map<String, FloatArray> {
        val result = mutableMapOf<String, FloatArray>()
        keys().forEach { key -> result[key] = getJSONArray(key).toFloatArray1d() }
        return result
    }

    private fun JSONObject.toFloatArrayMap2d(rows: Int, cols: Int): Map<String, FloatArray> {
        val result = mutableMapOf<String, FloatArray>()
        keys().forEach { key -> result[key] = getJSONArray(key).toFloatArray2d(rows, cols) }
        return result
    }

    private fun JSONArray.toFloatArray1d(): FloatArray {
        val result = FloatArray(length())
        for (i in 0 until length()) {
            result[i] = optDouble(i, 0.0).toFloat()
        }
        return result
    }

    private fun JSONArray.toFloatArray2d(rows: Int, cols: Int): FloatArray {
        val result = FloatArray(rows * cols)
        for (row in 0 until rows) {
            val rowArray = getJSONArray(row)
            for (col in 0 until cols) {
                result[row * cols + col] = rowArray.optDouble(col, 0.0).toFloat()
            }
        }
        return result
    }

    private fun JSONArray.firstNumber(): Double {
        var current: Any = this
        while (current is JSONArray) {
            current = current.get(0)
        }
        return (current as Number).toDouble()
    }
}

object SpectralFilmProfile {
    private const val TAG = "SpectralFilmProfile"
    private const val LUT_SIZE = 17
    private const val RAW_SPECTRAL_FILM_INPUT_SCALE = 2.88f
    private const val PREVIEW_EXPOSURE_ANCHOR_SRGB = 0.5f

    private const val DEFAULT_FILM_ASSET = "spektrafilm/profiles/kodak_portra_400_film.cube"

    @Volatile
    private var cachedDefault: SpectralFilmLut? = null

    @Volatile
    private var cachedCombined: SpectralFilmLut? = null
    private var cachedCombinedFilmKey: String? = null
    private var cachedCombinedPrintKey: String? = null
    private var cachedCombinedTuningKey: String? = null

    @Volatile
    private var cachedPreviewConfig: LutConfig? = null
    private var cachedPreviewFilmKey: String? = null
    private var cachedPreviewPrintKey: String? = null
    private var cachedPreviewTuningKey: String? = null

    fun loadDefaultLut(context: Context): SpectralFilmLut? {
        cachedDefault?.let { return it }
        return synchronized(this) {
            cachedDefault ?: loadCombinedLutInternal(
                context,
                "kodak_portra_400",
                "kodak_portra_endura",
                DEFAULT_FILM_ASSET
            )?.also { cachedDefault = it }
        }
    }

    fun loadCombinedLut(
        context: Context,
        filmStock: String,
        printPaper: String,
        tuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT
    ): SpectralFilmLut? {
        val tuningKey = tuning.cacheKey()
        if (cachedCombinedFilmKey == filmStock && cachedCombinedPrintKey == printPaper && cachedCombinedTuningKey == tuningKey) {
            cachedCombined?.let { return it }
        }
        return synchronized(this) {
            if (cachedCombinedFilmKey == filmStock && cachedCombinedPrintKey == printPaper && cachedCombinedTuningKey == tuningKey) {
                cachedCombined?.let { return it }
            }
            val filmAsset = "spektrafilm/profiles/${filmStock}_film.cube"
            val lut = loadCombinedLutInternal(context, filmStock, printPaper, filmAsset, tuning.normalized())
            if (lut != null) {
                cachedCombined = lut
                cachedCombinedFilmKey = filmStock
                cachedCombinedPrintKey = printPaper
                cachedCombinedTuningKey = tuningKey
            }
            lut
        }
    }

    private fun loadCombinedLutInternal(
        context: Context,
        filmStock: String,
        printPaper: String,
        filmAssetPath: String,
        tuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT
    ): SpectralFilmLut? {
        val startTime = System.currentTimeMillis()
        val filmInfo = FilmStockRegistry.get(filmStock)
        val printInfo = PrintPaperRegistry.get(printPaper)

        if (filmInfo.type == "positive") {
            val positiveData = loadRawCube(context, filmAssetPath) ?: return null
            val positiveValues = packRgbLut(positiveData)
            val elapsed = System.currentTimeMillis() - startTime
            PLog.d(
                TAG,
                "Loaded positive film 1-LUT ($filmStock) from film asset without print paper ($printPaper ignored) in ${elapsed}ms"
            )
            return SpectralFilmLut(
                stock = filmStock,
                name = filmStock,
                type = filmInfo.type,
                referenceIlluminant = filmInfo.referenceIlluminant,
                viewingIlluminant = filmInfo.viewingIlluminant,
                sourceKey = "$filmStock:${filmInfo.type}:${filmInfo.referenceIlluminant}:${filmInfo.viewingIlluminant}",
                size = LUT_SIZE,
                values = positiveValues
            )
        }

        val filmData = loadRawCube(context, filmAssetPath) ?: return null
        val printModel = SpectralPrintModelRegistry.load(context) ?: return null
        val densityWire = FilmDensityWireRegistry.get(filmStock)

        val combinedValues = combineWithDynamicPrint(filmStock, printPaper, filmData, printModel, densityWire, tuning)
            ?: return null
        val elapsed = System.currentTimeMillis() - startTime
        PLog.d(
            TAG,
            "Dynamically combined film ($filmStock/${filmInfo.referenceIlluminant}) and " +
                "print ($printPaper/${printInfo.referenceIlluminant}) using Spektrafilm print model " +
                "with ${if (densityWire != null) "cmy_film wire" else "film density range fallback"} in ${elapsed}ms"
        )

        return SpectralFilmLut(
            stock = filmStock,
            name = "$filmStock + $printPaper",
            type = filmInfo.type,
            referenceIlluminant = filmInfo.referenceIlluminant,
            viewingIlluminant = printInfo.viewingIlluminant,
            sourceKey = "$filmStock:$printPaper:${filmInfo.type}:${filmInfo.referenceIlluminant}:${printInfo.referenceIlluminant}:${printInfo.viewingIlluminant}:wire=${densityWire?.dMax?.joinToString() ?: "fallback"}:tuning=${tuning.cacheKey()}",
            size = LUT_SIZE,
            values = combinedValues
        )
    }

    private fun loadRawCube(context: Context, assetPath: String): FloatArray? {
        return try {
            val totalSize = LUT_SIZE * LUT_SIZE * LUT_SIZE * 3
            val values = FloatArray(totalSize)
            var dst = 0

            context.assets.open(assetPath).use { inputStream ->
                BufferedReader(InputStreamReader(inputStream)).use { reader ->
                    BoundedTextLineReader.forEachLine(reader) { line ->
                        val trimmed = line.trim()
                        if (trimmed.isEmpty() || trimmed.startsWith("#") ||
                            trimmed.startsWith("TITLE") || trimmed.startsWith("LUT_3D_SIZE") ||
                            trimmed.startsWith("DOMAIN_MIN") || trimmed.startsWith("DOMAIN_MAX")
                        ) {
                            return@forEachLine
                        }
                        val parts = trimmed.split("\\s+".toRegex())
                        if (parts.size >= 3 && dst < totalSize) {
                            values[dst++] = parts[0].toFloat()
                            values[dst++] = parts[1].toFloat()
                            values[dst++] = parts[2].toFloat()
                        }
                    }
                }
            }
            if (dst == totalSize) {
                values
            } else {
                PLog.e(TAG, "Cube file $assetPath has incorrect size: $dst elements, expected $totalSize")
                null
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to load raw cube from $assetPath", e)
            null
        }
    }

    private fun packRgbLut(rgbData: FloatArray): FloatArray {
        val totalSize = LUT_SIZE * LUT_SIZE * LUT_SIZE * 4
        val result = FloatArray(totalSize)
        for (i in 0 until (LUT_SIZE * LUT_SIZE * LUT_SIZE)) {
            val dstOffset = i * 4
            result[dstOffset] = rgbData[i * 3]
            result[dstOffset + 1] = rgbData[i * 3 + 1]
            result[dstOffset + 2] = rgbData[i * 3 + 2]
            result[dstOffset + 3] = 1f
        }
        return result
    }

    private fun combineWithDynamicPrint(
        filmStock: String,
        printPaper: String,
        filmData: FloatArray,
        model: SpectralFilmPrintModel,
        densityWire: FilmDensityWire?,
        tuning: SpectralFilmTuning
    ): FloatArray? {
        val filmModel = model.films[filmStock]
        val paperModel = model.papers[printPaper]
        val combo = model.combinations[filmStock]?.get(printPaper)
        if (filmModel == null || paperModel == null || combo == null) {
            PLog.e(TAG, "Missing Spektrafilm print model data for $filmStock + $printPaper")
            return null
        }
        val viewingIlluminant = model.viewingIlluminants[paperModel.viewingIlluminant]
        val xyzToProPhoto = model.xyzToProPhoto[paperModel.viewingIlluminant]
        if (viewingIlluminant == null || xyzToProPhoto == null) {
            PLog.e(TAG, "Missing viewing illuminant ${paperModel.viewingIlluminant} for $printPaper")
            return null
        }

        val totalSize = LUT_SIZE * LUT_SIZE * LUT_SIZE * 4
        val combined = FloatArray(totalSize)
        val wavelengths = viewingIlluminant.size
        val paperSensitivity = FloatArray(wavelengths * 3)
        for (i in paperSensitivity.indices) {
            paperSensitivity[i] = paperModel.sensitivity[i]
        }
        val scanNormalization = computeScanNormalization(viewingIlluminant, model.observerCmfs, wavelengths)
        val dMinFilm = densityWire?.dMin ?: filmModel.densityMin
        val dMaxFilm = densityWire?.dMax ?: filmModel.densityMax
        if (densityWire == null) {
            PLog.w(TAG, "Missing cmy_film density wire for $filmStock; falling back to film profile density range")
        }
        val dRange0 = dMaxFilm[0] - dMinFilm[0]
        val dRange1 = dMaxFilm[1] - dMinFilm[1]
        val dRange2 = dMaxFilm[2] - dMinFilm[2]
        val cNegativeFilmGain = tuning.negativeFilmDensityGainC()
        val mNegativeFilmGain = tuning.negativeFilmDensityGainM()
        val yNegativeFilmGain = tuning.negativeFilmDensityGainY()

        val filmSpectralDensity = FloatArray(wavelengths)
        val printDensity = FloatArray(3)
        val paperSpectralDensity = FloatArray(wavelengths)

        for (i in 0 until (LUT_SIZE * LUT_SIZE * LUT_SIZE)) {
            val cDensity = dMinFilm[0] + filmData[i * 3] * dRange0 * cNegativeFilmGain
            val mDensity = dMinFilm[1] + filmData[i * 3 + 1] * dRange1 * mNegativeFilmGain
            val yDensity = dMinFilm[2] + filmData[i * 3 + 2] * dRange2 * yNegativeFilmGain

            for (w in 0 until wavelengths) {
                val base = w * 3
                filmSpectralDensity[w] = filmModel.baseDensity[w] +
                    cDensity * filmModel.channelDensity[base] +
                    mDensity * filmModel.channelDensity[base + 1] +
                    yDensity * filmModel.channelDensity[base + 2]
            }

            for (ch in 0..2) {
                var raw = 0f
                for (w in 0 until wavelengths) {
                    raw += pow10(-filmSpectralDensity[w]) *
                        combo.printIlluminant[w] *
                        paperSensitivity[w * 3 + ch]
                }
                val logRaw = log10((raw * combo.exposureFactor).coerceAtLeast(1e-10f))
                printDensity[ch] = interpolateDensity(logRaw, paperModel.logExposure, paperModel.densityCurves, ch)
            }

            for (w in 0 until wavelengths) {
                val base = w * 3
                paperSpectralDensity[w] = paperModel.baseDensity[w] +
                    printDensity[0] * paperModel.channelDensity[base] +
                    printDensity[1] * paperModel.channelDensity[base + 1] +
                    printDensity[2] * paperModel.channelDensity[base + 2]
            }

            var x = 0f
            var y = 0f
            var z = 0f
            for (w in 0 until wavelengths) {
                val light = pow10(-paperSpectralDensity[w]) * viewingIlluminant[w]
                val cmfBase = w * 3
                x += light * model.observerCmfs[cmfBase]
                y += light * model.observerCmfs[cmfBase + 1]
                z += light * model.observerCmfs[cmfBase + 2]
            }
            x /= scanNormalization
            y /= scanNormalization
            z /= scanNormalization

            val rLinear = xyzToProPhoto[0] * x + xyzToProPhoto[1] * y + xyzToProPhoto[2] * z
            val gLinear = xyzToProPhoto[3] * x + xyzToProPhoto[4] * y + xyzToProPhoto[5] * z
            val bLinear = xyzToProPhoto[6] * x + xyzToProPhoto[7] * y + xyzToProPhoto[8] * z

            val dstOffset = i * 4
            combined[dstOffset] = encodeProPhoto(rLinear)
            combined[dstOffset + 1] = encodeProPhoto(gLinear)
            combined[dstOffset + 2] = encodeProPhoto(bLinear)
            combined[dstOffset + 3] = 1f
        }
        return combined
    }

    private fun computeScanNormalization(
        illuminant: FloatArray,
        observerCmfs: FloatArray,
        wavelengths: Int
    ): Float {
        var normalization = 0f
        for (w in 0 until wavelengths) {
            normalization += illuminant[w] * observerCmfs[w * 3 + 1]
        }
        return normalization.coerceAtLeast(1e-10f)
    }

    private fun interpolateDensity(
        logRaw: Float,
        logExposure: FloatArray,
        densityCurves: FloatArray,
        channel: Int
    ): Float {
        if (logRaw <= logExposure.first()) return densityCurves[channel]
        val lastIndex = logExposure.lastIndex
        if (logRaw >= logExposure[lastIndex]) return densityCurves[lastIndex * 3 + channel]
        var high = 1
        while (high < logExposure.size && logRaw > logExposure[high]) {
            high++
        }
        val low = high - 1
        val t = ((logRaw - logExposure[low]) / (logExposure[high] - logExposure[low])).coerceIn(0f, 1f)
        val y0 = densityCurves[low * 3 + channel]
        val y1 = densityCurves[high * 3 + channel]
        return y0 * (1f - t) + y1 * t
    }

    private fun pow10(value: Float): Float = 10.0.pow(value.toDouble()).toFloat()

    private fun log10(value: Float): Float = (ln(value.toDouble()) / LN_10).toFloat()

    private fun encodeProPhoto(value: Float): Float {
        val clamped = value.coerceAtLeast(0f)
        val encoded = if (clamped < 0.001953125f) {
            clamped * 16f
        } else {
            clamped.toDouble().pow(1.0 / 1.8).toFloat()
        }
        return encoded.coerceIn(0f, 1f)
    }

    private const val LN_10 = 2.302585092994046
}
