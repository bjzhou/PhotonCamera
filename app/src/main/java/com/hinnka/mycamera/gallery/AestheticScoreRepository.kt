package com.hinnka.mycamera.gallery

import android.content.Context
import android.graphics.Bitmap
import com.hinnka.mycamera.ml.AestheticModelManager
import com.hinnka.mycamera.ml.AestheticScorer
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.io.File
import java.io.IOException

/**
 * Persistent on-device aesthetic scores of gallery photos ([AestheticScorer]).
 *
 * A score is keyed by the photo's thumbnail URI and stored with a signature of the image it was
 * computed from (the thumbnail file's mtime and size for PhotonCamera photos, which are re-rendered
 * after edits; the MediaStore size, date and dimensions for system photos). Scores are computed
 * from the gallery thumbnail, one at a time, most recent request first, so the photos currently on
 * screen are scored before the ones scrolled past. A stored score whose signature no longer matches
 * is recomputed when the photo is requested again. Scores are discarded when the model changes.
 */
object AestheticScoreRepository {
    private const val TAG = "AestheticScores"
    private const val DIRECTORY = "aesthetic_scores"
    private const val FILE_NAME = "scores.tsv"
    private const val HEADER_PREFIX = "# model "
    private const val IDLE_CLOSE_MS = 30_000L
    private const val SAVE_DELAY_MS = 2_000L

    private class Entry(val signature: String, val score: Float)

    private class Request(val photo: MediaData, val loader: suspend () -> Bitmap?) {
        val waiters = mutableListOf<CompletableDeferred<Float?>>()
    }

    @OptIn(ExperimentalCoroutinesApi::class)
    private val dispatcher = Dispatchers.Default.limitedParallelism(1)
    private val scope = CoroutineScope(SupervisorJob() + dispatcher)

    private val lock = Any()
    private val entries = HashMap<String, Entry>() // guarded by lock
    private val verifiedKeys = HashSet<String>() // guarded by lock; signature checked in this process
    private val pending = LinkedHashMap<String, Request>() // guarded by lock; last = most recent
    private var workerJob: Job? = null // guarded by lock

    // Confined to [dispatcher].
    private var loaded = false
    private var scorer: AestheticScorer? = null
    private var closeJob: Job? = null
    private var saveJob: Job? = null

    private val _scores = MutableStateFlow<Map<String, Float>>(emptyMap())

    /** Scores by [keyOf]; loaded from disk on first observation. */
    fun observe(context: Context): StateFlow<Map<String, Float>> {
        val appContext = context.applicationContext
        scope.launch { loadIfNeeded(appContext) }
        return _scores.asStateFlow()
    }

    fun keyOf(photo: MediaData): String = photo.thumbnailUri.toString()

    /** Queues [photo] for scoring unless its stored score was already verified in this process. */
    fun request(context: Context, photo: MediaData, loader: suspend () -> Bitmap?) {
        enqueue(context.applicationContext, photo, loader, waiter = null)
    }

    /** The score of [photo], computed now (ahead of queued photos) unless the stored one is current. */
    suspend fun score(context: Context, photo: MediaData, loader: suspend () -> Bitmap?): Float? {
        val waiter = CompletableDeferred<Float?>()
        enqueue(context.applicationContext, photo, loader, waiter)
        return waiter.await()
    }

    /** Drops a queued request nobody waits for, e.g. when its grid cell is recycled. */
    fun cancel(photo: MediaData) {
        synchronized(lock) {
            val key = keyOf(photo)
            if (pending[key]?.waiters?.isEmpty() == true) pending.remove(key)
        }
    }

    /** Drops every queued request nobody waits for, e.g. when the gallery closes. */
    fun cancelAll() {
        synchronized(lock) {
            pending.values.removeAll { it.waiters.isEmpty() }
        }
    }

    private fun enqueue(
        context: Context,
        photo: MediaData,
        loader: suspend () -> Bitmap?,
        waiter: CompletableDeferred<Float?>?
    ) {
        synchronized(lock) {
            val key = keyOf(photo)
            if (waiter == null && key in verifiedKeys) return
            val request = pending.remove(key) ?: Request(photo, loader)
            waiter?.let(request.waiters::add)
            pending[key] = request
            if (workerJob == null) {
                workerJob = scope.launch { runWorker(context) }
            }
        }
    }

    private suspend fun runWorker(context: Context) {
        closeJob?.cancel()
        closeJob = null
        loadIfNeeded(context)
        while (true) {
            val next = synchronized(lock) {
                val last = pending.entries.lastOrNull()
                if (last == null) {
                    workerJob = null
                    null
                } else {
                    pending.remove(last.key)
                    last.key to last.value
                }
            } ?: break
            val (key, request) = next
            val score = try {
                process(context, key, request)
            } catch (e: CancellationException) {
                request.waiters.forEach { it.complete(null) }
                throw e
            } catch (e: Exception) {
                PLog.w(TAG, "Failed to score ${request.photo.id}", e)
                null
            }
            request.waiters.forEach { it.complete(score) }
        }
        closeJob = scope.launch {
            delay(IDLE_CLOSE_MS)
            scorer?.close()
            scorer = null
        }
    }

    private suspend fun process(context: Context, key: String, request: Request): Float? {
        val photo = request.photo
        if (!photo.isImage || !AestheticModelManager.isInstalled(context)) return null
        val signature = signatureOf(photo) ?: return null
        synchronized(lock) {
            val stored = entries[key]
            if (stored != null && stored.signature == signature) {
                verifiedKeys += key
                return stored.score
            }
        }
        val bitmap = request.loader() ?: return null
        val model = scorer ?: AestheticScorer.open(context).also { scorer = it }
        val score = model.score(bitmap)
        synchronized(lock) {
            entries[key] = Entry(signature, score)
            verifiedKeys += key
        }
        publish()
        scheduleSave(context)
        return score
    }

    private fun signatureOf(photo: MediaData): String? {
        val uri = photo.thumbnailUri
        if (uri.scheme == "file") {
            val file = File(uri.path ?: return null)
            return if (file.isFile) "f:${file.lastModified()}:${file.length()}" else null
        }
        return "m:${photo.size}:${photo.dateAdded}:${photo.width}x${photo.height}"
    }

    private fun publish() {
        _scores.value = synchronized(lock) { entries.mapValues { it.value.score } }
    }

    private fun scheduleSave(context: Context) {
        saveJob?.cancel()
        saveJob = scope.launch {
            delay(SAVE_DELAY_MS)
            save(context)
        }
    }

    private suspend fun loadIfNeeded(context: Context) {
        if (loaded) return
        loaded = true
        val stored = withContext(Dispatchers.IO) { read(context) }
        synchronized(lock) {
            stored.forEach { (key, entry) -> entries.putIfAbsent(key, entry) }
        }
        publish()
    }

    private fun read(context: Context): Map<String, Entry> {
        val file = storeFile(context)
        if (!file.isFile) return emptyMap()
        return try {
            val lines = file.readLines()
            if (lines.firstOrNull() != HEADER_PREFIX + AestheticModelManager.sha256) {
                PLog.d(TAG, "Discarding scores of another model")
                return emptyMap()
            }
            lines.drop(1).mapNotNull { line ->
                val parts = line.split('\t')
                val score = parts.getOrNull(2)?.toFloatOrNull()
                if (parts.size == 3 && score != null && score.isFinite()) parts[0] to Entry(parts[1], score) else null
            }.toMap()
        } catch (e: IOException) {
            PLog.w(TAG, "Cannot read aesthetic scores", e)
            emptyMap()
        }
    }

    private suspend fun save(context: Context) {
        val snapshot = synchronized(lock) { entries.map { (key, entry) -> Triple(key, entry.signature, entry.score) } }
        withContext(Dispatchers.IO) {
            val file = storeFile(context)
            try {
                file.parentFile?.mkdirs()
                val temp = File(file.parentFile, "$FILE_NAME.tmp")
                temp.bufferedWriter().use { writer ->
                    writer.append(HEADER_PREFIX).append(AestheticModelManager.sha256).append('\n')
                    for ((key, signature, score) in snapshot) {
                        writer.append(key).append('\t').append(signature).append('\t').append(score.toString()).append('\n')
                    }
                }
                if (!temp.renameTo(file)) throw IOException("Cannot replace ${file.absolutePath}")
            } catch (e: IOException) {
                PLog.w(TAG, "Cannot save aesthetic scores", e)
            }
        }
    }

    private fun storeFile(context: Context) = File(File(context.filesDir, DIRECTORY), FILE_NAME)
}
