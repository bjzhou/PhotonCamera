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

sealed interface HfModelState {
    data object Missing : HfModelState

    data class Downloading(
        val progress: Float?,
        val isInstalling: Boolean
    ) : HfModelState

    data object Ready : HfModelState

    data object Failed : HfModelState
}

/**
 * Downloads, verifies and installs one TFLite model hosted on Hugging Face.
 *
 * The model is downloaded from a commit-pinned URL ([path] on huggingface.co or hf-mirror.com),
 * verified by exact size, SHA-256 and tensor contract ([checkContract]), and installed
 * atomically into app-private storage under [directory]. [legacyDirectories] hold earlier
 * models of the same feature and are removed on first use.
 */
open class HfModelInstaller(
    private val tag: String,
    private val directory: String,
    private val fileName: String,
    private val expectedSizeBytes: Long,
    val sha256: String,
    private val path: String,
    private val legacyDirectories: List<String>,
    private val checkContract: (Interpreter) -> Unit,
) {
    private val partFileName = "$fileName.part"

    private val lock = Any()
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val _state = MutableStateFlow<HfModelState>(HfModelState.Missing)
    private var initialized = false
    private var operationJob: Job? = null

    fun observe(context: Context): StateFlow<HfModelState> {
        initialize(context.applicationContext)
        return _state.asStateFlow()
    }

    fun isInstalled(context: Context): Boolean = installedModelFileOrNull(context) != null

    /** The installed model; its SHA-256 was verified at install time and equals [sha256]. */
    fun installedModelFileOrNull(context: Context): File? {
        return modelFile(context.applicationContext).takeIf { it.isFile && it.length() == expectedSizeBytes }
    }

    fun download(context: Context, source: HfModelSource) {
        val appContext = context.applicationContext
        initialize(appContext)
        synchronized(lock) {
            if (installedModelFileOrNull(appContext) != null) {
                _state.value = HfModelState.Ready
                return
            }
            if (operationJob?.isActive == true) return
            HfModelSource.remember(appContext, source)

            _state.value = HfModelState.Downloading(progress = 0f, isInstalling = false)
            val newJob = scope.launch(start = CoroutineStart.LAZY) {
                try {
                    downloadAndInstall(appContext, source)
                    _state.value = HfModelState.Ready
                } catch (e: Exception) {
                    PLog.w(tag, "Failed to download or install $fileName from ${source.host}", e)
                    _state.value = HfModelState.Failed
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
                HfModelState.Ready
            } else {
                HfModelState.Missing
            }
            initialized = true
        }
    }

    private fun removeLegacyModels(context: Context) {
        for (legacy in legacyDirectories) {
            val legacyDirectory = File(context.filesDir, legacy)
            if (legacyDirectory.exists() && !legacyDirectory.deleteRecursively()) {
                PLog.w(tag, "Cannot remove legacy model directory: ${legacyDirectory.absolutePath}")
            }
        }
    }

    private fun downloadAndInstall(context: Context, source: HfModelSource) {
        val directory = File(context.filesDir, directory)
        if (!directory.isDirectory && !directory.mkdirs()) {
            throw IOException("Cannot create model directory: ${directory.absolutePath}")
        }
        val partFile = File(directory, partFileName)
        if (partFile.exists() && !partFile.delete()) {
            throw IOException("Cannot remove stale temporary file: ${partFile.absolutePath}")
        }
        try {
            downloadTo(source.url(path), partFile)
            _state.value = HfModelState.Downloading(progress = 1f, isInstalling = true)
            validate(partFile)
            installAtomically(partFile, modelFile(context))
            PLog.d(tag, "Model installed: ${modelFile(context).absolutePath}")
        } finally {
            if (partFile.exists() && !partFile.delete()) {
                PLog.w(tag, "Cannot remove temporary file: ${partFile.absolutePath}")
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
                        if (downloaded > expectedSizeBytes) {
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
            if (downloaded != expectedSizeBytes) {
                throw IOException("Incomplete model: downloaded=$downloaded expected=$expectedSizeBytes")
            }
        }
    }

    private fun publishProgress(downloaded: Long) {
        _state.value = HfModelState.Downloading(
            progress = (downloaded.toDouble() / expectedSizeBytes).toFloat().coerceIn(0f, 1f),
            isInstalling = false
        )
    }

    private fun validate(file: File) {
        if (file.length() != expectedSizeBytes) {
            throw IOException("Unexpected model size: ${file.length()}")
        }
        if (sha256(file) != sha256) {
            throw IOException("Model checksum mismatch")
        }
        Interpreter(file, Interpreter.Options().setUseXNNPACK(false)).use(checkContract)
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

    private fun modelFile(context: Context): File = File(File(context.filesDir, directory), fileName)

    private companion object {
        const val BUFFER_SIZE = 64 * 1024
        const val PROGRESS_UPDATE_BYTES = 256 * 1024L
        val client: OkHttpClient = OkHttpClient.Builder()
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(5, TimeUnit.MINUTES)
            .build()
    }
}
