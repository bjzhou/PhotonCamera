package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.utils.PLog
import org.json.JSONObject

/** RGBA lattice in blue, green, red order, with red varying fastest. */
data class SpectralLutTable(
    val sourceKey: String,
    val size: Int,
    val values: FloatArray,
)

data class SpectralFilmLut(
    val stock: String,
    val name: String,
    val type: String,
    val referenceIlluminant: String,
    val viewingIlluminant: String,
    val sourceKey: String,
    val filmTable: SpectralLutTable,
    val printTable: SpectralLutTable?,
    val inputScale: Float,
    val printInputScale: Float,
    val tuning: SpectralFilmTuning,
    val graph: SpectralFilmGraph? = null,
    val frameMaximum: Float? = null,
) {
    val size: Int get() = filmTable.size
    val values: FloatArray get() = filmTable.values
}

data class FilmStockInfo(
    val type: String,
    val referenceIlluminant: String,
    val viewingIlluminant: String,
)

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

/** Resolves source models and generates only the selected film/print stages. */
object SpectralFilmProfile {
    private const val TAG = "SpectralFilmProfile"
    private const val MAX_MANIFEST_BYTES = 1024 * 1024
    private val sha256Pattern = Regex("[0-9a-f]{64}")
    private val commitPattern = Regex("[0-9a-f]{40}")

    private data class FilmAsset(
        val type: String,
        val referenceIlluminant: String,
        val viewingIlluminant: String,
        val model: SpectralModelAsset,
    )
    private data class PrintAsset(val model: SpectralModelAsset, val viewingIlluminant: String)
    private data class Manifest(
        val upstreamCommit: String,
        val algorithm: String,
        val size: Int,
        val inputScale: Float,
        val printInputScale: Float,
        val shared: SpectralModelAsset,
        val films: Map<String, FilmAsset>,
        val prints: Map<String, PrintAsset>,
    )

    // All access is serialized, including native model lifetime and disk eviction.
    // Reuse each stage by its optical/development settings, independently of scanner blur.
    private var cachedManifest: Manifest? = null
    private var cachedFilm: SpectralLutTable? = null
    private var cachedPrint: SpectralLutTable? = null
    private var cachedSelection: SpectralFilmLut? = null

    fun loadDefaultLut(context: Context): SpectralFilmLut? = loadCombinedLut(
        context, "kodak_portra_400", "kodak_portra_endura",
    )

    @Synchronized
    fun loadCombinedLut(
        context: Context,
        filmStock: String,
        printPaper: String,
        tuning: SpectralFilmTuning = SpectralFilmTuning.DEFAULT,
        buildSpatialGraph: Boolean = false,
    ): SpectralFilmLut? = try {
        val manifest = cachedManifest ?: loadManifest(context).also { cachedManifest = it }
        val film = requireNotNull(manifest.films[filmStock]) { "Unknown Spektrafilm stock: $filmStock" }
        val normalized = tuning.normalized()
        val positive = film.type == "positive"
        val print = if (!positive && !normalized.scanFilm) {
            requireNotNull(manifest.prints[printPaper]) { "Unknown Spektrafilm print: $printPaper" }
        } else null
        val request = SpectralRuntimeRequest(
            algorithm = manifest.algorithm,
            upstreamCommit = manifest.upstreamCommit,
            size = manifest.size,
            inputScale = manifest.inputScale,
            printInputScale = manifest.printInputScale,
            shared = manifest.shared,
            film = film.model,
            paperName = if (print != null) printPaper else "",
            paper = print?.model,
            positive = positive,
            stock = filmStock,
            tuning = normalized,
            buildSpatialGraph = buildSpatialGraph,
        )
        val selectionKey = "${request.filmKey}:${request.printKey}"
        cachedSelection?.takeIf {
            it.sourceKey == selectionKey && it.tuning == normalized && it.graph?.sourceKey == request.graphKey
        } ?: run {
            // Release the old selection before loading another pair; otherwise its
            // references would keep obsolete LUT arrays alive during generation.
            cachedSelection = null
            if (cachedFilm?.sourceKey != request.filmKey) cachedFilm = null
            if (cachedPrint?.sourceKey != request.printKey) cachedPrint = null
            val stages = SpektrafilmRuntime.load(context, request, cachedFilm, cachedPrint)
            cachedFilm = stages.first
            cachedPrint = stages.second
            SpectralFilmLut(
                stock = filmStock,
                name = if (print != null) "$filmStock + $printPaper" else filmStock,
                type = film.type,
                referenceIlluminant = film.referenceIlluminant,
                viewingIlluminant = print?.viewingIlluminant ?: film.viewingIlluminant,
                sourceKey = selectionKey,
                filmTable = stages.first,
                printTable = stages.second,
                inputScale = manifest.inputScale,
                printInputScale = manifest.printInputScale,
                tuning = normalized,
                graph = stages.third,
            ).also {
                cachedSelection = it
                PLog.d(TAG, "Selected Spektrafilm ${it.name}, spatial=${it.graph != null}, " +
                    "filmSize=${it.size}, printSize=${it.printTable?.size ?: 0}, " +
                    "upstream=${manifest.upstreamCommit}")
            }
        }
    } catch (e: Exception) {
        PLog.e(TAG, "Failed to prepare Spektrafilm stages for $filmStock + $printPaper", e)
        null
    } catch (e: LinkageError) {
        PLog.e(TAG, "Spektrafilm native runtime is unavailable", e)
        null
    }

    private fun loadManifest(context: Context): Manifest {
        val bytes = context.assets.open("spektrafilm/manifest.json").use { input ->
            val buffer = ByteArray(MAX_MANIFEST_BYTES + 1)
            var count = 0
            while (count < buffer.size) {
                val read = input.read(buffer, count, buffer.size - count)
                if (read < 0) break
                count += read
            }
            require(count <= MAX_MANIFEST_BYTES) { "Spektrafilm manifest exceeds size limit" }
            buffer.copyOf(count)
        }
        val root = JSONObject(bytes.toString(Charsets.UTF_8))
        require(root.getDouble("schemaVersion") == 4.0) { "Unsupported Spektrafilm model schema" }
        require(root.getString("encoding") == "gzip-named-packed-le" &&
            root.getString("runtimeAlgorithm") == "spectral-v1" && root.getBoolean("lutMode")) {
            "Unsupported Spektrafilm model/runtime contract"
        }
        require(root.getString("inputColorSpace") == "ProPhoto RGB" &&
            root.getString("outputColorSpace") == "ProPhoto RGB") { "Invalid Spektrafilm color contract" }
        val size = root.getInt("lutSize")
        require(size == 65 && root.getDouble("lutSize") == 65.0) { "Invalid Spektrafilm runtime lattice size" }
        val inputScale = root.getDouble("inputScale").toFloat()
        val printInputScale = root.getDouble("printInputScale").toFloat()
        require(inputScale == 2.88f && printInputScale == 1.5f) { "Invalid Spektrafilm input domains" }
        val commit = root.getString("upstreamCommit")
        require(commitPattern.matches(commit)) { "Invalid Spektrafilm upstream commit" }
        val filmObjects = root.getJSONObject("films")
        require(filmObjects.keys().asSequence().toSet() == FilmStockRegistry.stocks.keys) {
            "Spektrafilm model stock coverage differs from the UI registry"
        }
        val films = FilmStockRegistry.stocks.mapValues { (stock, expected) ->
            val obj = filmObjects.getJSONObject(stock)
            val type = obj.getString("type")
            val reference = obj.getString("referenceIlluminant")
            val viewing = obj.getString("viewingIlluminant")
            require(type == expected.type && reference == expected.referenceIlluminant &&
                viewing == expected.viewingIlluminant) { "Invalid Spektrafilm film metadata: $stock" }
            FilmAsset(type, reference, viewing, parseModelAsset(obj.getJSONObject("model")))
        }
        val printObjects = root.getJSONObject("prints")
        require(printObjects.keys().asSequence().toSet() == PrintPaperRegistry.papers.keys) {
            "Spektrafilm model print coverage differs from the UI registry"
        }
        val prints = PrintPaperRegistry.papers.mapValues { (paper, expected) ->
            val obj = printObjects.getJSONObject(paper)
            val viewing = obj.getString("viewingIlluminant")
            require(viewing == expected.viewingIlluminant) { "Invalid print illuminant: $paper" }
            PrintAsset(parseModelAsset(obj.getJSONObject("model")), viewing)
        }
        return Manifest(commit, root.getString("runtimeAlgorithm"), size, inputScale,
            printInputScale, parseModelAsset(root.getJSONObject("shared")), films, prints)
    }

    private fun parseModelAsset(obj: JSONObject): SpectralModelAsset {
        val path = obj.getString("path")
        require(path.startsWith("model/") && path.endsWith(".spkm") &&
            path.split('/').all { it.isNotEmpty() && it != "." && it != ".." && '\\' !in it }) {
            "Invalid Spektrafilm model path: $path"
        }
        val sha256 = obj.getString("sha256")
        require(sha256Pattern.matches(sha256)) { "Invalid Spektrafilm model digest: $path" }
        fun length(field: String): Int {
            val size = obj.getLong(field)
            require(size in 1..SpektrafilmRuntime.MAX_MODEL_BYTES.toLong() &&
                obj.getDouble(field) == size.toDouble()) { "Invalid Spektrafilm model $field: $path" }
            return size.toInt()
        }
        return SpectralModelAsset(path, sha256, length("bytes"), length("uncompressedBytes"))
    }
}
