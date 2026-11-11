package com.hinnka.mycamera.ml

import android.content.Context
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException
import java.nio.charset.StandardCharsets
import java.nio.file.AtomicMoveNotSupportedException
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.security.MessageDigest
import java.util.concurrent.TimeUnit
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import okhttp3.OkHttpClient
import okhttp3.Request
import org.tensorflow.lite.Interpreter

sealed interface DepthModelDownloadState {
    data object Missing : DepthModelDownloadState

    data class Downloading(
        val progress: Float?,
        val isInstalling: Boolean
    ) : DepthModelDownloadState

    data object Ready : DepthModelDownloadState

    data object Failed : DepthModelDownloadState
}

/**
 * Owns the optional depth model lifecycle.
 *
 * The only accepted model is Depth Anything 3 Small (LiteRT GPU FP16), downloaded from a
 * commit-pinned Hugging Face URL and verified by exact size, SHA-256 and tensor contract
 * before it is installed atomically in app-private storage. Any other model file, the
 * former Depth Anything V2 directory, their delegate caches and per-photo depth caches
 * made by another model are removed.
 */
object DepthModelManager {
    private const val TAG = "DepthModelManager"
    private const val MODEL_DIRECTORY = "ml_models/depth"
    private const val MODEL_FILE_NAME = "depth.tflite"
    private const val MODEL_PART_FILE_NAME = "depth.tflite.part"
    private const val EXPECTED_MODEL_SIZE_BYTES = 55_035_456L
    internal const val OFFICIAL_MODEL_SHA256 =
        "e170369a72ba1bba7486a4d2de555639fccd0595a9bb5b5349f7733ed4aebd1f"
    private const val MODEL_PATH =
        "/litert-community/Depth-Anything-3-Small/resolve/" +
            "5cd25d936e3fde2edef68f53b4123401454ac9c8/da3_small_gpu_fp16.tflite"

    /** Identifies per-photo depth caches made by the official model (see [RelativeDepthMapFile]). */
    internal val OFFICIAL_MODEL_ID: Long = OFFICIAL_MODEL_SHA256.substring(0, 16).toULong(16).toLong()

    /** Depth Anything V2 and imported models lived here before Depth Anything 3. */
    private const val LEGACY_MODEL_DIRECTORY = "ml_models/depth_anything_v2"
    /** no_backup delegate caches of former models: V2 (NNAPI) and imported FP32 models. */
    private val LEGACY_DELEGATE_CACHE_DIRECTORIES = listOf(
        "depth_estimator_delegate_cache",
        "depth_fp32_delegate_cache",
    )
    /** Holds the model id whose per-photo depth caches were last swept. */
    private const val DEPTH_CACHE_MARKER_FILE_NAME = "depth_cache_model"

    private val lock = Any()
    private val verificationLock = Any()
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(5, TimeUnit.MINUTES)
        .build()
    private val _state = MutableStateFlow<DepthModelDownloadState>(DepthModelDownloadState.Missing)
    private var initialized = false
    private var operationJob: Job? = null

    @Volatile
    internal var installationRevision: Long = 0L
        private set

    /** Size and modification time of the installed file whose SHA-256 has been verified. */
    private var verifiedModelStamp: Pair<Long, Long>? = null

    val state: StateFlow<DepthModelDownloadState> = _state.asStateFlow()

    fun observe(context: Context): StateFlow<DepthModelDownloadState> {
        initialize(context.applicationContext)
        return state
    }

    fun isInstalled(context: Context): Boolean {
        initialize(context.applicationContext)
        return installedModelFileOrNull(context.applicationContext) != null
    }

    /** The installed file when its size and header match the official model; cheap enough for UI. */
    fun installedModelFileOrNull(context: Context): File? {
        val modelFile = modelFile(context.applicationContext)
        return modelFile.takeIf(::hasOfficialModelShape)
    }

    /**
     * The installed model after its SHA-256 matched the official model, hashed once per
     * installed file. A mismatching file is removed and the state returns to missing.
     * Must not run on the main thread.
     */
    internal fun requireVerifiedModelFile(context: Context): File {
        val appContext = context.applicationContext
        initialize(appContext)
        // Hashing takes a separate lock so that UI calls of [isInstalled] never wait for it.
        synchronized(verificationLock) {
            val modelFile = installedModelFileOrNull(appContext)
                ?: throw IllegalStateException("The depth model is not installed")
            val stamp = modelFile.length() to modelFile.lastModified()
            if (verifiedModelStamp == stamp) return modelFile
            if (sha256(modelFile) != OFFICIAL_MODEL_SHA256) {
                PLog.w(TAG, "Installed depth model is not the official model; removing it")
                modelFile.deleteIfExistsOrLog()
                verifiedModelStamp = null
                _state.value = DepthModelDownloadState.Missing
                throw IllegalStateException("The installed depth model failed verification")
            }
            verifiedModelStamp = stamp
            return modelFile
        }
    }

    fun download(context: Context, source: HfModelSource) {
        val appContext = context.applicationContext
        initialize(appContext)
        synchronized(lock) {
            if (installedModelFileOrNull(appContext) != null) {
                _state.value = DepthModelDownloadState.Ready
                return
            }
            if (operationJob?.isActive == true) {
                return
            }
            HfModelSource.remember(appContext, source)

            _state.value = DepthModelDownloadState.Downloading(
                progress = 0f,
                isInstalling = false
            )
            val newJob = scope.launch(start = CoroutineStart.LAZY) {
                try {
                    downloadAndInstall(appContext, source)
                    _state.value = DepthModelDownloadState.Ready
                } catch (e: Exception) {
                    PLog.w(TAG, "Failed to download or install the default depth model from ${source.host}", e)
                    _state.value = DepthModelDownloadState.Failed
                }
            }
            operationJob = newJob
            newJob.invokeOnCompletion {
                synchronized(lock) {
                    if (operationJob === newJob) {
                        operationJob = null
                    }
                }
            }
            newJob.start()
        }
    }

    private fun initialize(context: Context) {
        synchronized(lock) {
            if (initialized) {
                return
            }
            removeLegacyModels(context)
            _state.value = if (installedModelFileOrNull(context) != null) {
                DepthModelDownloadState.Ready
            } else {
                DepthModelDownloadState.Missing
            }
            initialized = true
        }
        scope.launch { purgeForeignDepthCaches(context) }
    }

    /**
     * Only the downloaded Depth Anything 3 model is accepted: the former V2 / imported model
     * directory, any installed file of another size, leftover temporary files and the delegate
     * caches of former models are removed.
     */
    private fun removeLegacyModels(context: Context) {
        val legacyDirectory = File(context.filesDir, LEGACY_MODEL_DIRECTORY)
        if (legacyDirectory.exists() && !legacyDirectory.deleteRecursively()) {
            PLog.w(TAG, "Cannot remove legacy depth model directory: ${legacyDirectory.absolutePath}")
        }
        val installed = modelFile(context)
        if (installed.exists() && !hasOfficialModelShape(installed)) {
            PLog.d(TAG, "Removing a depth model that is not the official model")
            installed.deleteIfExistsOrLog()
        }
        modelDirectory(context).listFiles()?.forEach { file ->
            if (file.name != MODEL_FILE_NAME && file.name != MODEL_PART_FILE_NAME) {
                if (!file.deleteRecursively()) PLog.w(TAG, "Cannot remove ${file.absolutePath}")
            }
        }
        for (name in LEGACY_DELEGATE_CACHE_DIRECTORIES) {
            val directory = File(context.noBackupFilesDir, name)
            if (directory.exists() && !directory.deleteRecursively()) {
                PLog.w(TAG, "Cannot remove legacy delegate cache: ${directory.absolutePath}")
            }
        }
    }

    /**
     * Removes per-photo depth caches made by any other model once per official model id;
     * caches read later are still checked against the model id on every read.
     */
    private fun purgeForeignDepthCaches(context: Context) {
        val marker = File(context.noBackupFilesDir, DEPTH_CACHE_MARKER_FILE_NAME)
        val modelId = OFFICIAL_MODEL_ID.toString()
        try {
            if (marker.isFile && marker.readText() == modelId) return
            val removed = GalleryManager.removeDepthCaches(context) { file ->
                !RelativeDepthMapFile.isFromModel(file, OFFICIAL_MODEL_ID)
            }
            marker.writeText(modelId)
            PLog.d(TAG, "Removed $removed depth caches of former depth models")
        } catch (e: Exception) {
            PLog.w(TAG, "Cannot remove depth caches of former depth models", e)
        }
    }

    private fun downloadAndInstall(context: Context, source: HfModelSource) {
        val modelDirectory = modelDirectory(context)
        if (!modelDirectory.isDirectory && !modelDirectory.mkdirs()) {
            throw IOException("Cannot create depth model directory: ${modelDirectory.absolutePath}")
        }

        val modelPartFile = File(modelDirectory, MODEL_PART_FILE_NAME)
        modelPartFile.deleteIfExistsOrThrow()

        try {
            downloadModel(source.url(MODEL_PATH), modelPartFile)
            _state.value = DepthModelDownloadState.Downloading(
                progress = 1f,
                isInstalling = true
            )
            validateOfficialModel(modelPartFile)
            installAtomically(modelPartFile, modelFile(context))
            synchronized(verificationLock) {
                verifiedModelStamp = modelFile(context).let { it.length() to it.lastModified() }
            }
            publishInstallation()
            PLog.d(TAG, "Default depth model installed: ${modelFile(context).absolutePath}")
        } finally {
            modelPartFile.deleteIfExistsOrLog()
        }
    }

    private fun downloadModel(url: String, target: File) {
        val request = Request.Builder()
            .url(url)
            .get()
            .build()
        client.newCall(request).execute().use { response ->
            if (!response.isSuccessful) {
                throw IOException("Model download failed with HTTP ${response.code}")
            }
            val body = response.body ?: throw IOException("Model download response has no body")
            val totalBytes = EXPECTED_MODEL_SIZE_BYTES
            var downloadedBytes = 0L
            var lastPublishedBytes = 0L

            body.byteStream().use { input ->
                FileOutputStream(target).use { output ->
                    val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                    while (true) {
                        val read = input.read(buffer)
                        if (read < 0) {
                            break
                        }
                        downloadedBytes += read
                        if (downloadedBytes > totalBytes) {
                            throw IOException("Model download exceeds the expected size")
                        }
                        output.write(buffer, 0, read)
                        if (downloadedBytes - lastPublishedBytes >= PROGRESS_UPDATE_BYTES) {
                            publishDownloadProgress(downloadedBytes, totalBytes)
                            lastPublishedBytes = downloadedBytes
                        }
                    }
                    output.fd.sync()
                }
            }
            publishDownloadProgress(downloadedBytes, totalBytes)
            if (downloadedBytes != totalBytes) {
                throw IOException(
                    "Incomplete model: downloaded=$downloadedBytes expected=$totalBytes"
                )
            }
        }
    }

    private fun publishDownloadProgress(downloadedBytes: Long, totalBytes: Long) {
        _state.value = DepthModelDownloadState.Downloading(
            progress = (downloadedBytes.toDouble() / totalBytes.toDouble()).toFloat().coerceIn(0f, 1f),
            isInstalling = false
        )
    }

    private fun validateOfficialModel(file: File) {
        if (!hasTfliteHeader(file) || file.length() != EXPECTED_MODEL_SIZE_BYTES) {
            throw IOException("Default depth model has an invalid size or TFLite header")
        }
        if (sha256(file) != OFFICIAL_MODEL_SHA256) {
            throw IOException("Depth model checksum mismatch")
        }
        try {
            Interpreter(file).use(::inspectDepthModelContract)
        } catch (e: Exception) {
            throw IOException("TFLite model is incompatible with the depth pipeline", e)
        }
    }

    private fun publishInstallation() {
        synchronized(lock) {
            installationRevision += 1L
        }
    }

    private fun installAtomically(source: File, destination: File) {
        try {
            Files.move(
                source.toPath(),
                destination.toPath(),
                StandardCopyOption.ATOMIC_MOVE,
                StandardCopyOption.REPLACE_EXISTING
            )
        } catch (_: AtomicMoveNotSupportedException) {
            Files.move(
                source.toPath(),
                destination.toPath(),
                StandardCopyOption.REPLACE_EXISTING
            )
        }
    }

    private fun hasOfficialModelShape(file: File): Boolean {
        return file.isFile && file.length() == EXPECTED_MODEL_SIZE_BYTES && hasTfliteHeader(file)
    }

    private fun hasTfliteHeader(file: File): Boolean {
        val header = ByteArray(TFLITE_HEADER_SIZE)
        return runCatching {
            FileInputStream(file).use { input ->
                input.read(header) == header.size
            } && header.copyOfRange(4, 8).contentEquals(TFLITE_FILE_IDENTIFIER)
        }.getOrDefault(false)
    }

    private fun sha256(file: File): String {
        val digest = MessageDigest.getInstance("SHA-256")
        FileInputStream(file).use { input ->
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                digest.update(buffer, 0, read)
            }
        }
        return digest.digest().joinToString("") {
            (it.toInt() and 0xFF).toString(16).padStart(2, '0')
        }
    }

    private fun modelDirectory(context: Context): File = File(context.filesDir, MODEL_DIRECTORY)

    private fun modelFile(context: Context): File = File(modelDirectory(context), MODEL_FILE_NAME)

    private fun File.deleteIfExistsOrThrow() {
        if (exists() && !delete()) {
            throw IOException("Cannot remove stale temporary file: $absolutePath")
        }
    }

    private fun File.deleteIfExistsOrLog() {
        if (exists() && !delete()) {
            PLog.w(TAG, "Cannot remove temporary file: $absolutePath")
        }
    }

    private const val DEFAULT_BUFFER_SIZE = 64 * 1024
    private const val PROGRESS_UPDATE_BYTES = 256 * 1024L
    private const val TFLITE_HEADER_SIZE = 8
    private val TFLITE_FILE_IDENTIFIER =
        "TFL3".toByteArray(StandardCharsets.US_ASCII)
}
