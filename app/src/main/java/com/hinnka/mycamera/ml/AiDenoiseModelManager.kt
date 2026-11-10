package com.hinnka.mycamera.ml

import android.content.Context
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CoroutineStart
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import okhttp3.OkHttpClient
import okhttp3.Request
import org.tensorflow.lite.Interpreter
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.IOException
import java.nio.file.AtomicMoveNotSupportedException
import java.nio.file.Files
import java.nio.file.StandardCopyOption
import java.security.MessageDigest
import java.util.concurrent.TimeUnit

sealed interface AiDenoiseModelState {
    data object Missing : AiDenoiseModelState

    data class Downloading(
        val progress: Float?,
        val isInstalling: Boolean
    ) : AiDenoiseModelState

    data object Ready : AiDenoiseModelState

    data object Failed : AiDenoiseModelState
}

/**
 * Owns the AI denoise model (SCUNet color σ=25, see docs/scunet-tflite.md).
 *
 * The model is downloaded from a commit-pinned Hugging Face URL (directly or via hf-mirror.com), verified by exact size,
 * SHA-256 and tensor contract, and installed atomically into app-private storage.
 */
object AiDenoiseModelManager {
    private const val TAG = "AiDenoiseModelManager"
    private const val MODEL_DIRECTORY = "ml_models/scunet_color_25"
    private const val MODEL_FILE_NAME = "scunet_color_25.tflite"
    private const val MODEL_PART_FILE_NAME = "scunet_color_25.tflite.part"
    private const val EXPECTED_MODEL_SIZE_BYTES = 47_200_352L
    const val MODEL_SHA256 = "8d060b8e58d3224ab14ee2af72c737af30cc3dd68790f26aca20f364734dd10c"

    private const val MODEL_PATH =
        "/Binjia/scunet-color-25-litert/resolve/9454c201ad03a74bbcbb7005232072f01a3b233c/scunet_color_25.tflite"

    /** Model directories of earlier AI denoise models, removed on first use. */
    private val LEGACY_MODEL_DIRECTORIES = listOf("ml_models/nafnet_sidd_w32", "ml_models/scunet_color_real_psnr")

    private val lock = Any()
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(5, TimeUnit.MINUTES)
        .build()
    private val _state = MutableStateFlow<AiDenoiseModelState>(AiDenoiseModelState.Missing)
    private var initialized = false
    private var operationJob: Job? = null

    fun observe(context: Context): StateFlow<AiDenoiseModelState> {
        initialize(context.applicationContext)
        return _state.asStateFlow()
    }

    fun isInstalled(context: Context): Boolean = installedModelFileOrNull(context) != null

    /** The installed model; its SHA-256 was verified at install time and equals [MODEL_SHA256]. */
    fun installedModelFileOrNull(context: Context): File? {
        return modelFile(context.applicationContext).takeIf { it.isFile && it.length() == EXPECTED_MODEL_SIZE_BYTES }
    }

    fun download(context: Context, source: HfModelSource) {
        val appContext = context.applicationContext
        initialize(appContext)
        synchronized(lock) {
            if (installedModelFileOrNull(appContext) != null) {
                _state.value = AiDenoiseModelState.Ready
                return
            }
            if (operationJob?.isActive == true) return
            HfModelSource.remember(appContext, source)

            _state.value = AiDenoiseModelState.Downloading(progress = 0f, isInstalling = false)
            val newJob = scope.launch(start = CoroutineStart.LAZY) {
                try {
                    downloadAndInstall(appContext, source)
                    _state.value = AiDenoiseModelState.Ready
                } catch (e: Exception) {
                    PLog.w(TAG, "Failed to download or install the AI denoise model from ${source.host}", e)
                    _state.value = AiDenoiseModelState.Failed
                }
            }
            operationJob = newJob
            newJob.invokeOnCompletion {
                synchronized(lock) {
                    if (operationJob === newJob) operationJob = null
                }
            }
            newJob.start()
        }
    }

    private fun initialize(context: Context) {
        synchronized(lock) {
            if (initialized) return
            removeLegacyModels(context)
            _state.value = if (installedModelFileOrNull(context) != null) {
                AiDenoiseModelState.Ready
            } else {
                AiDenoiseModelState.Missing
            }
            initialized = true
        }
    }

    private fun removeLegacyModels(context: Context) {
        for (path in LEGACY_MODEL_DIRECTORIES) {
            val directory = File(context.filesDir, path)
            if (directory.exists() && !directory.deleteRecursively()) {
                PLog.w(TAG, "Cannot remove legacy model directory: ${directory.absolutePath}")
            }
        }
    }

    private fun downloadAndInstall(context: Context, source: HfModelSource) {
        val directory = File(context.filesDir, MODEL_DIRECTORY)
        if (!directory.isDirectory && !directory.mkdirs()) {
            throw IOException("Cannot create model directory: ${directory.absolutePath}")
        }
        val partFile = File(directory, MODEL_PART_FILE_NAME)
        if (partFile.exists() && !partFile.delete()) {
            throw IOException("Cannot remove stale temporary file: ${partFile.absolutePath}")
        }
        try {
            downloadTo(source.url(MODEL_PATH), partFile)
            _state.value = AiDenoiseModelState.Downloading(progress = 1f, isInstalling = true)
            validate(partFile)
            installAtomically(partFile, modelFile(context))
            PLog.d(TAG, "AI denoise model installed: ${modelFile(context).absolutePath}")
        } finally {
            if (partFile.exists() && !partFile.delete()) {
                PLog.w(TAG, "Cannot remove temporary file: ${partFile.absolutePath}")
            }
        }
    }

    private fun downloadTo(url: String, target: File) {
        val request = Request.Builder().url(url).get().build()
        client.newCall(request).execute().use { response ->
            if (!response.isSuccessful) {
                throw IOException("Model download failed with HTTP ${response.code}")
            }
            val body = response.body ?: throw IOException("Model download response has no body")
            var downloaded = 0L
            var lastPublished = 0L
            body.byteStream().use { input ->
                FileOutputStream(target).use { output ->
                    val buffer = ByteArray(BUFFER_SIZE)
                    while (true) {
                        val read = input.read(buffer)
                        if (read < 0) break
                        downloaded += read
                        if (downloaded > EXPECTED_MODEL_SIZE_BYTES) {
                            throw IOException("Model download exceeds the expected size")
                        }
                        output.write(buffer, 0, read)
                        if (downloaded - lastPublished >= PROGRESS_UPDATE_BYTES) {
                            publishProgress(downloaded)
                            lastPublished = downloaded
                        }
                    }
                    output.fd.sync()
                }
            }
            publishProgress(downloaded)
            if (downloaded != EXPECTED_MODEL_SIZE_BYTES) {
                throw IOException("Incomplete model: downloaded=$downloaded expected=$EXPECTED_MODEL_SIZE_BYTES")
            }
        }
    }

    private fun publishProgress(downloaded: Long) {
        _state.value = AiDenoiseModelState.Downloading(
            progress = (downloaded.toDouble() / EXPECTED_MODEL_SIZE_BYTES).toFloat().coerceIn(0f, 1f),
            isInstalling = false
        )
    }

    private fun validate(file: File) {
        if (file.length() != EXPECTED_MODEL_SIZE_BYTES) {
            throw IOException("Unexpected model size: ${file.length()}")
        }
        if (sha256(file) != MODEL_SHA256) {
            throw IOException("Model checksum mismatch")
        }
        Interpreter(file, Interpreter.Options().setUseXNNPACK(false)).use(AiDenoiser::checkContract)
    }

    private fun installAtomically(source: File, destination: File) {
        try {
            Files.move(
                source.toPath(), destination.toPath(),
                StandardCopyOption.ATOMIC_MOVE, StandardCopyOption.REPLACE_EXISTING
            )
        } catch (_: AtomicMoveNotSupportedException) {
            Files.move(source.toPath(), destination.toPath(), StandardCopyOption.REPLACE_EXISTING)
        }
    }

    private fun sha256(file: File): String {
        val digest = MessageDigest.getInstance("SHA-256")
        FileInputStream(file).use { input ->
            val buffer = ByteArray(BUFFER_SIZE)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                digest.update(buffer, 0, read)
            }
        }
        return digest.digest().joinToString("") { (it.toInt() and 0xFF).toString(16).padStart(2, '0') }
    }

    private fun modelFile(context: Context): File = File(File(context.filesDir, MODEL_DIRECTORY), MODEL_FILE_NAME)

    private const val BUFFER_SIZE = 64 * 1024
    private const val PROGRESS_UPDATE_BYTES = 256 * 1024L
}
