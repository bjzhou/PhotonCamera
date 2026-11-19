package com.hinnka.mycamera.raw

import android.content.Context
import android.os.SystemClock
import com.hinnka.mycamera.utils.PLog
import java.io.DataInputStream
import java.io.DataOutputStream
import java.io.File
import java.io.FileOutputStream
import java.io.FilterInputStream
import java.io.InputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.security.DigestInputStream
import java.security.MessageDigest
import java.util.zip.GZIPInputStream
import java.util.zip.GZIPOutputStream

internal data class SpectralModelAsset(
    val path: String,
    val sha256: String,
    val compressedBytes: Int,
    val uncompressedBytes: Int,
)

internal class SpectralRuntimeRequest(
    val algorithm: String,
    val upstreamCommit: String,
    val size: Int,
    val inputScale: Float,
    val printInputScale: Float,
    val shared: SpectralModelAsset,
    val film: SpectralModelAsset,
    val paperName: String,
    val paper: SpectralModelAsset?,
    val positive: Boolean,
    stock: String,
    tuning: SpectralFilmTuning,
    val buildSpatialGraph: Boolean,
) {
    private val context = "schema4:$algorithm:$upstreamCommit:ProPhoto RGB:$size:$inputScale:$printInputScale"
    val sharedKey = digest("$context:shared:${shared.sha256}")
    val modelFilmKey = digest("$sharedKey:film:${film.sha256}:positive=$positive")
    val filmOptions = tuning.filmOptions(stock)
    val printOptions = tuning.printOptions()
    val scanOptions = tuning.scanOptions(positive || paper != null)
    val filmDyeOrder = tuning.filmDyeOrder.nativeIndex
    val paperDyeOrder = tuning.printDyeOrder.nativeIndex
    private val stockFilm = filmOptions.contentEquals(SpectralFilmTuning.DEFAULT.filmOptions(stock))
    private val filmVariant = if (stockFilm) "" else ":film=${filmOptions.joinToString()}"
    private val directNegative = if (!positive && paper == null) ":direct-scan" else ""
    private val filmDyeVariant = if (filmDyeOrder == 0) "" else ":film-dyes=$filmDyeOrder"
    private val scanVariant = if (scanOptions.contentEquals(SpectralFilmTuning.DEFAULT.scanOptions(true))) "" else
        ":scan=${scanOptions.joinToString()}"
    val filmKey = digest("$modelFilmKey:film-stage$filmVariant$directNegative" +
        if (paper == null) filmDyeVariant + scanVariant else "")
    val printKey: String? = paper?.let {
        val printVariant = if (printOptions.contentEquals(SpectralFilmTuning.DEFAULT.printOptions())) "" else
            ":print=${printOptions.joinToString()}"
        // A tuned film uses the stock's full density range. DIR does not enter
        // the enlarger's uncorrected midgray reference.
        val printFilmVariant = if (stockFilm) "" else ":full-density-wire:gamma=${tuning.filmGamma}" +
            ":optics=${filmOptions.sliceArray(6..14).joinToString()}"
        val paperDyeVariant = if (paperDyeOrder == 0) "" else ":paper-dyes=$paperDyeOrder"
        digest("$modelFilmKey:print-stage:$paperName:${it.sha256}$printFilmVariant$printVariant$filmDyeVariant$paperDyeVariant$scanVariant")
    }
    val needsGlare = paper != null && tuning.glare.active
    val needsGrain = tuning.grain.active && tuning.grain.sublayers
    val spatialTablesKey = if (buildSpatialGraph) {
        digest("$filmKey:$printKey:stages:glare=$needsGlare:grainLayers=$needsGrain")
    } else null
    val graphKey = spatialTablesKey?.takeIf { tuning.needsSpatialGraph(paper != null) }
}

private fun digest(value: String): String = hex(MessageDigest.getInstance("SHA-256").digest(value.toByteArray(Charsets.UTF_8)))
private fun hex(value: ByteArray): String = value.joinToString("") { "%02x".format(it.toInt() and 0xff) }

/** The only JNI entry point. Calls are serialized by SpektrafilmRuntime. */
internal object SpektrafilmNativeBridge {
    init { System.loadLibrary("my-native-lib") }

    external fun generate(
        sharedKey: String,
        filmKey: String,
        sharedData: ByteArray?,
        filmData: ByteArray?,
        paperName: String,
        paperData: ByteArray?,
        positive: Boolean,
        directScan: Boolean,
        buildFilm: Boolean,
        buildPrint: Boolean,
        filmOptions: FloatArray,
        printOptions: FloatArray,
        filmDyeOrder: Int,
        paperDyeOrder: Int,
        scanOptions: FloatArray,
        buildGraph: Boolean,
        needsGlare: Boolean,
        needsGrain: Boolean,
    ): Array<FloatArray>
}

/** Native source models are retained outside Java heap; only the active pair of LUTs is retained by the caller. */
internal object SpektrafilmRuntime {
    const val MAX_MODEL_BYTES = 64 * 1024 * 1024
    private const val TAG = "SpektrafilmRuntime"
    private const val CACHE_DIRECTORY = "spektrafilm-spectral-v1"
    private const val CACHE_MAGIC = 0x53504b33
    private const val CACHE_FORMAT = 1
    private const val CACHE_ENTRIES = 8
    private const val BUFFER_SIZE = 64 * 1024
    private const val FLOATS_PER_BLOCK = BUFFER_SIZE / 4
    private const val MAX_CACHE_FILE_BYTES = 65L * 65 * 65 * 4 * 4 + 64 * 1024
    private var loadedSharedKey: String? = null
    private var loadedFilmKey: String? = null
    private var cachedGraph: SpectralFilmGraph? = null

    @Synchronized
    fun load(
        context: Context,
        request: SpectralRuntimeRequest,
        currentFilm: SpectralLutTable?,
        currentPrint: SpectralLutTable?,
    ): Triple<SpectralLutTable, SpectralLutTable?, SpectralFilmGraph?> {
        val started = SystemClock.elapsedRealtime()
        val directory = File(context.cacheDir, CACHE_DIRECTORY)
        val film = currentFilm?.takeIf { it.sourceKey == request.filmKey }
            ?: readCache(directory, request.filmKey, request.size)
        val print = request.printKey?.let { key ->
            currentPrint?.takeIf { it.sourceKey == key } ?: readCache(directory, key, request.size)
        }
        // In-memory reuse is still an LRU access. In particular, switching
        // papers repeatedly must not evict the continuously used film stage.
        val accessedAt = System.currentTimeMillis()
        film?.let { cacheFile(directory, it.sourceKey).setLastModified(accessedAt) }
        print?.let { cacheFile(directory, it.sourceKey).setLastModified(accessedAt) }
        val buildFilm = film == null
        val buildPrint = request.paper != null && print == null
        // A bypass of the same film and paper can reuse its spatial tables if optics is re-enabled.
        if (request.spatialTablesKey != null && request.spatialTablesKey != cachedGraph?.sourceKey) cachedGraph = null
        val graph = request.graphKey?.let { key -> cachedGraph?.takeIf { it.sourceKey == key } }
        val buildGraph = request.graphKey != null && graph == null
        if (!buildFilm && !buildPrint && !buildGraph) {
            PLog.d(TAG, "Spektrafilm cacheHit, filmKey=${request.filmKey}, printKey=${request.printKey}, " +
                "elapsed=${SystemClock.elapsedRealtime() - started}ms, upstream=${request.upstreamCommit}")
            return Triple(requireNotNull(film), print, graph)
        }

        // These temporary arrays live only through generate(). In particular the
        // shared spectral basis is never stored in a Java-side model cache.
        val generated = try {
            val sharedChanged = loadedSharedKey != request.sharedKey
            val sharedBytes = if (sharedChanged) loadModel(context, request.shared) else null
            val filmBytes = if (sharedChanged || loadedFilmKey != request.modelFilmKey) {
                loadModel(context, request.film)
            } else null
            val paperBytes = if (buildPrint || buildGraph) request.paper?.let { loadModel(context, it) } else null
            val result = SpektrafilmNativeBridge.generate(
                request.sharedKey, request.modelFilmKey, sharedBytes, filmBytes,
                request.paperName, paperBytes, request.positive, request.paper == null, buildFilm, buildPrint,
                request.filmOptions, request.printOptions,
                request.filmDyeOrder, request.paperDyeOrder,
                request.scanOptions, buildGraph, request.needsGlare, request.needsGrain,
            )
            require(result.size == if (buildGraph) 9 else 2) { "Invalid native Spektrafilm stage count" }
            validateGenerated(result[0], request.size, buildFilm)
            validateGenerated(result[1], request.size, buildPrint)
            loadedSharedKey = request.sharedKey
            loadedFilmKey = request.modelFilmKey
            result
        } catch (failure: Throwable) {
            // Native also invalidates models on failure. Never subsequently pass
            // null payloads based on a partially completed model installation.
            loadedSharedKey = null
            loadedFilmKey = null
            throw failure
        }
        val filmResult = film ?: SpectralLutTable(request.filmKey, request.size, generated[0]).also {
            writeCache(directory, it)
        }
        val printResult = print ?: request.printKey?.let { key ->
            SpectralLutTable(key, request.size, generated[1]).also { writeCache(directory, it) }
        }
        val graphResult = if (buildGraph) SpectralFilmGraph(
            requireNotNull(request.graphKey), request.size, generated,
        ).also { cachedGraph = it } else graph
        PLog.d(TAG, "Spektrafilm generated, film=$buildFilm, print=$buildPrint, spatial=$buildGraph, " +
            "filmKey=${request.filmKey}, printKey=${request.printKey}, " +
            "elapsed=${SystemClock.elapsedRealtime() - started}ms, upstream=${request.upstreamCommit}")
        return Triple(filmResult, printResult, graphResult)
    }

    private fun validateGenerated(values: FloatArray, size: Int, built: Boolean) {
        require(values.size == if (built) size * size * size * 4 else 0) { "Invalid native Spektrafilm stage length" }
        require(values.all { it.isFinite() }) { "Non-finite native Spektrafilm stage value" }
        for (index in 3 until values.size step 4) {
            require(values[index] == 1f) { "Invalid native Spektrafilm stage alpha" }
            require(values[index - 3] in 0f..1f && values[index - 2] in 0f..1f && values[index - 1] in 0f..1f) {
                "Out-of-domain Spektrafilm stage RGB value"
            }
        }
    }

    private class CountedInput(input: InputStream, private val limit: Int) : FilterInputStream(input) {
        var count = 0
            private set
        override fun read(): Int = super.read().also { if (it != -1) add(1) }
        override fun read(bytes: ByteArray, offset: Int, length: Int): Int =
            `in`.read(bytes, offset, length).also { if (it > 0) add(it) }
        private fun add(amount: Int) {
            require(amount <= limit - count) { "Spektrafilm compressed model exceeds declared length" }
            count += amount
        }
    }

    private fun loadModel(context: Context, asset: SpectralModelAsset): ByteArray {
        require(asset.uncompressedBytes in 1..MAX_MODEL_BYTES && asset.compressedBytes in 1..MAX_MODEL_BYTES)
        val bytes = ByteArray(asset.uncompressedBytes)
        val hash = MessageDigest.getInstance("SHA-256")
        CountedInput(context.assets.open("spektrafilm/${asset.path}"), asset.compressedBytes).use { counted ->
            DigestInputStream(counted, hash).use { compressed ->
                GZIPInputStream(compressed, BUFFER_SIZE).use { input ->
                    var offset = 0
                    while (offset < bytes.size) {
                        val read = input.read(bytes, offset, bytes.size - offset)
                        require(read > 0) { "Truncated Spektrafilm source model: ${asset.path}" }
                        offset += read
                    }
                    require(input.read() == -1) { "Excess Spektrafilm source model payload: ${asset.path}" }
                    // Gzip validates CRC on EOF. Hash the complete compressed
                    // asset as well, including any bytes after its last member.
                    val tail = ByteArray(BUFFER_SIZE)
                    while (compressed.read(tail) != -1) { /* update digest and bounded byte count */ }
                    require(counted.count == asset.compressedBytes) { "Truncated compressed model: ${asset.path}" }
                }
            }
        }
        require(hex(hash.digest()) == asset.sha256) { "Spektrafilm source checksum mismatch: ${asset.path}" }
        return bytes
    }

    private fun cacheFile(directory: File, key: String) = File(directory, "$key.lut.gz")

    private fun readCache(directory: File, key: String, size: Int): SpectralLutTable? {
        val file = cacheFile(directory, key)
        if (!file.isFile) return null
        return try {
            require(file.length() in 1..MAX_CACHE_FILE_BYTES) { "Invalid LUT cache file size" }
            val values = FloatArray(size * size * size * 4)
            DataInputStream(GZIPInputStream(file.inputStream(), BUFFER_SIZE).buffered(BUFFER_SIZE)).use { input ->
                require(input.readInt() == CACHE_MAGIC && input.readInt() == CACHE_FORMAT) { "Unsupported LUT cache header" }
                require(input.readUTF() == key && input.readInt() == size && input.readInt() == values.size) {
                    "LUT cache identity or size mismatch"
                }
                val block = ByteArray(BUFFER_SIZE)
                val floats = ByteBuffer.wrap(block).order(ByteOrder.LITTLE_ENDIAN).asFloatBuffer()
                var offset = 0
                while (offset < values.size) {
                    val count = minOf(FLOATS_PER_BLOCK, values.size - offset)
                    input.readFully(block, 0, count * 4)
                    floats.position(0)
                    floats.get(values, offset, count)
                    offset += count
                }
                require(input.read() == -1) { "Excess LUT cache payload" }
            }
            validateGenerated(values, size, true)
            file.setLastModified(System.currentTimeMillis())
            SpectralLutTable(key, size, values)
        } catch (failure: Exception) {
            file.delete()
            PLog.w(TAG, "Discarded invalid Spektrafilm cache key=$key: ${failure.message}")
            null
        }
    }

    private fun writeCache(directory: File, table: SpectralLutTable) {
        var temporary: File? = null
        try {
            check(directory.isDirectory || directory.mkdirs()) { "Cannot create LUT cache directory" }
            temporary = File.createTempFile("stage-", ".tmp", directory)
            FileOutputStream(temporary).use { raw ->
                GZIPOutputStream(raw, BUFFER_SIZE).use { gzip ->
                    val output = DataOutputStream(gzip.buffered(BUFFER_SIZE))
                    output.writeInt(CACHE_MAGIC)
                    output.writeInt(CACHE_FORMAT)
                    output.writeUTF(table.sourceKey)
                    output.writeInt(table.size)
                    output.writeInt(table.values.size)
                    val block = ByteArray(BUFFER_SIZE)
                    val floats = ByteBuffer.wrap(block).order(ByteOrder.LITTLE_ENDIAN).asFloatBuffer()
                    var offset = 0
                    while (offset < table.values.size) {
                        val count = minOf(FLOATS_PER_BLOCK, table.values.size - offset)
                        floats.position(0)
                        floats.put(table.values, offset, count)
                        output.write(block, 0, count * 4)
                        offset += count
                    }
                    output.flush()
                    gzip.finish()
                    gzip.flush()
                    raw.fd.sync()
                }
            }
            check(temporary.renameTo(cacheFile(directory, table.sourceKey))) { "Cannot atomically install LUT cache" }
            pruneCache(directory)
        } catch (failure: Exception) {
            // Cache availability is optional: a verified generated stage remains
            // usable when Android has evicted cache storage or disk space is low.
            PLog.w(TAG, "Cannot persist Spektrafilm LUT key=${table.sourceKey}: ${failure.message}")
        } finally {
            temporary?.delete()
        }
    }

    private fun pruneCache(directory: File) {
        val files = directory.listFiles().orEmpty()
        files.filter { it.name.endsWith(".tmp") }.forEach { it.delete() }
        val tables = files.filter { it.name.endsWith(".lut.gz") }.sortedByDescending { it.lastModified() }
        var retainedBytes = 0L
        tables.forEachIndexed { index, file ->
            if (index >= CACHE_ENTRIES || retainedBytes + file.length() > CACHE_ENTRIES * MAX_CACHE_FILE_BYTES) {
                file.delete()
            } else {
                retainedBytes += file.length()
            }
        }
    }
}
