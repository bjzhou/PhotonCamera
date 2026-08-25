package com.hinnka.mycamera.ml

import android.content.Context
import android.net.Uri
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
import java.util.zip.ZipInputStream
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

sealed interface DepthModelDownloadState {
    data object Missing : DepthModelDownloadState

    data class Downloading(
        val progress: Float?,
        val isInstalling: Boolean
    ) : DepthModelDownloadState

    data object Importing : DepthModelDownloadState

    data object Ready : DepthModelDownloadState

    data object Failed : DepthModelDownloadState
}

/**
 * Owns the optional Depth Anything V2 model lifecycle.
 *
 * The model is kept in app-private storage and is installed atomically only after
 * its TFLite header, exact size, ZIP CRC, and SHA-256 digest have been validated.
 */
object DepthModelManager {
    private const val TAG = "DepthModelManager"
    private const val MODEL_DIRECTORY = "ml_models/depth_anything_v2"
    private const val MODEL_FILE_NAME = "depth_anything_v2.tflite"
    private const val MODEL_ARCHIVE_PART_FILE_NAME = "depth_anything_v2.zip.part"
    private const val MODEL_IMPORT_PART_FILE_NAME = "depth_anything_v2.import.part"
    private const val MODEL_PART_FILE_NAME = "depth_anything_v2.tflite.part"
    private const val EXPECTED_MODEL_SIZE_BYTES = 98_920_480L
    private const val MAX_IMPORT_SIZE_BYTES = 256L * 1024L * 1024L
    internal const val MODEL_SHA256 =
        "69302c7b94a2ebe6f31d5caa78cb72d7e15f5ba72804d0423e699787368a255f"

    const val MODEL_DOWNLOAD_URL =
        "https://qaihub-public-assets.s3.us-west-2.amazonaws.com/qai-hub-models/models/depth_anything_v2/releases/v0.59.0/depth_anything_v2-tflite-float.zip"

    private val lock = Any()
    private val scope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val client = OkHttpClient.Builder()
        .connectTimeout(30, TimeUnit.SECONDS)
        .readTimeout(5, TimeUnit.MINUTES)
        .build()
    private val _state = MutableStateFlow<DepthModelDownloadState>(DepthModelDownloadState.Missing)
    private var initialized = false
    private var operationJob: Job? = null

    val state: StateFlow<DepthModelDownloadState> = _state.asStateFlow()

    fun observe(context: Context): StateFlow<DepthModelDownloadState> {
        initialize(context.applicationContext)
        return state
    }

    fun isInstalled(context: Context): Boolean {
        initialize(context.applicationContext)
        return _state.value is DepthModelDownloadState.Ready
    }

    fun installedModelFileOrNull(context: Context): File? {
        val modelFile = modelFile(context.applicationContext)
        return modelFile.takeIf(::hasValidInstalledModelShape)
    }

    fun requireInstalledModelFile(context: Context): File {
        return installedModelFileOrNull(context)
            ?: throw IllegalStateException("Depth Anything V2 model is not installed")
    }

    fun download(context: Context) {
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

            _state.value = DepthModelDownloadState.Downloading(
                progress = 0f,
                isInstalling = false
            )
            val newJob = scope.launch(start = CoroutineStart.LAZY) {
                try {
                    downloadAndInstall(appContext)
                    _state.value = DepthModelDownloadState.Ready
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to download or install Depth Anything V2", e)
                    publishFailureOrExistingReady(appContext)
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

    fun importModel(context: Context, source: Uri) {
        val appContext = context.applicationContext
        initialize(appContext)
        synchronized(lock) {
            if (operationJob?.isActive == true) {
                return
            }

            _state.value = DepthModelDownloadState.Importing
            val newJob = scope.launch(start = CoroutineStart.LAZY) {
                try {
                    importAndInstall(appContext, source)
                    _state.value = DepthModelDownloadState.Ready
                } catch (e: Exception) {
                    PLog.e(TAG, "Failed to import or install Depth Anything V2", e)
                    publishFailureOrExistingReady(appContext)
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
            _state.value = if (installedModelFileOrNull(context) != null) {
                DepthModelDownloadState.Ready
            } else {
                DepthModelDownloadState.Missing
            }
            initialized = true
        }
    }

    private fun downloadAndInstall(context: Context) {
        val modelDirectory = modelDirectory(context)
        if (!modelDirectory.isDirectory && !modelDirectory.mkdirs()) {
            throw IOException("Cannot create depth model directory: ${modelDirectory.absolutePath}")
        }

        val archivePartFile = File(modelDirectory, MODEL_ARCHIVE_PART_FILE_NAME)
        val modelPartFile = File(modelDirectory, MODEL_PART_FILE_NAME)
        archivePartFile.deleteIfExistsOrThrow()
        modelPartFile.deleteIfExistsOrThrow()

        try {
            downloadArchive(archivePartFile)
            _state.value = DepthModelDownloadState.Downloading(
                progress = 1f,
                isInstalling = true
            )
            extractModel(archivePartFile, modelPartFile)
            validateModel(modelPartFile)
            installAtomically(modelPartFile, modelFile(context))
            PLog.d(TAG, "Depth Anything V2 installed: ${modelFile(context).absolutePath}")
        } finally {
            archivePartFile.deleteIfExistsOrLog()
            modelPartFile.deleteIfExistsOrLog()
        }
    }

    private fun importAndInstall(context: Context, source: Uri) {
        val modelDirectory = modelDirectory(context)
        if (!modelDirectory.isDirectory && !modelDirectory.mkdirs()) {
            throw IOException("Cannot create depth model directory: ${modelDirectory.absolutePath}")
        }

        val importPartFile = File(modelDirectory, MODEL_IMPORT_PART_FILE_NAME)
        val modelPartFile = File(modelDirectory, MODEL_PART_FILE_NAME)
        importPartFile.deleteIfExistsOrThrow()
        modelPartFile.deleteIfExistsOrThrow()

        try {
            copyImportedSource(context, source, importPartFile)
            when (detectDepthModelImportFormat(importPartFile)) {
                DepthModelImportFormat.TFLITE -> {
                    Files.move(
                        importPartFile.toPath(),
                        modelPartFile.toPath(),
                        StandardCopyOption.REPLACE_EXISTING
                    )
                }
                DepthModelImportFormat.ZIP -> extractModel(importPartFile, modelPartFile)
                null -> throw IOException(
                    "Selected file is neither a TFLite model nor a ZIP archive"
                )
            }
            validateModel(modelPartFile)
            installAtomically(modelPartFile, modelFile(context))
            PLog.d(TAG, "Depth Anything V2 imported successfully")
        } finally {
            importPartFile.deleteIfExistsOrLog()
            modelPartFile.deleteIfExistsOrLog()
        }
    }

    private fun copyImportedSource(context: Context, source: Uri, target: File) {
        val input = context.contentResolver.openInputStream(source)
            ?: throw IOException("Cannot open selected depth model file")
        input.use {
            FileOutputStream(target).use { output ->
                val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                var copiedBytes = 0L
                while (true) {
                    val read = it.read(buffer)
                    if (read < 0) {
                        break
                    }
                    copiedBytes += read
                    if (copiedBytes > MAX_IMPORT_SIZE_BYTES) {
                        throw IOException("Selected depth model file exceeds import size limit")
                    }
                    output.write(buffer, 0, read)
                }
                output.fd.sync()
            }
        }
    }

    private fun downloadArchive(target: File) {
        val request = Request.Builder()
            .url(MODEL_DOWNLOAD_URL)
            .get()
            .build()
        client.newCall(request).execute().use { response ->
            if (!response.isSuccessful) {
                throw IOException("Model download failed with HTTP ${response.code}")
            }
            val body = response.body ?: throw IOException("Model download response has no body")
            val totalBytes = body.contentLength().takeIf { it > 0L }
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
                        output.write(buffer, 0, read)
                        downloadedBytes += read
                        if (downloadedBytes - lastPublishedBytes >= PROGRESS_UPDATE_BYTES) {
                            publishDownloadProgress(downloadedBytes, totalBytes)
                            lastPublishedBytes = downloadedBytes
                        }
                    }
                    output.fd.sync()
                }
            }
            publishDownloadProgress(downloadedBytes, totalBytes)
            if (totalBytes != null && downloadedBytes != totalBytes) {
                throw IOException(
                    "Incomplete model archive: downloaded=$downloadedBytes expected=$totalBytes"
                )
            }
        }
    }

    private fun publishDownloadProgress(downloadedBytes: Long, totalBytes: Long?) {
        _state.value = DepthModelDownloadState.Downloading(
            progress = totalBytes?.let {
                (downloadedBytes.toDouble() / it.toDouble()).toFloat().coerceIn(0f, 1f)
            },
            isInstalling = false
        )
    }

    private fun extractModel(archive: File, target: File) {
        var modelEntryFound = false
        FileInputStream(archive).use { fileInput ->
            ZipInputStream(fileInput).use { zipInput ->
                var entry = zipInput.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory && entry.name.substringAfterLast('/') == MODEL_FILE_NAME) {
                        if (entry.size >= 0L && entry.size != EXPECTED_MODEL_SIZE_BYTES) {
                            throw IOException("Unexpected depth model entry size: ${entry.size}")
                        }
                        FileOutputStream(target).use { output ->
                            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                            var extractedBytes = 0L
                            while (true) {
                                val read = zipInput.read(buffer)
                                if (read < 0) {
                                    break
                                }
                                extractedBytes += read
                                if (extractedBytes > EXPECTED_MODEL_SIZE_BYTES) {
                                    throw IOException("Depth model ZIP entry exceeds expected size")
                                }
                                output.write(buffer, 0, read)
                            }
                            output.fd.sync()
                        }
                        modelEntryFound = true
                        zipInput.closeEntry()
                        break
                    }
                    zipInput.closeEntry()
                    entry = zipInput.nextEntry
                }
            }
        }
        if (!modelEntryFound) {
            throw IOException("Depth model archive does not contain $MODEL_FILE_NAME")
        }
    }

    private fun validateModel(file: File) {
        if (!hasValidInstalledModelShape(file)) {
            throw IOException("Depth model has an invalid size or TFLite header")
        }
        val digest = MessageDigest.getInstance("SHA-256")
        FileInputStream(file).use { input ->
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) {
                    break
                }
                digest.update(buffer, 0, read)
            }
        }
        val actualSha256 = digest.digest().joinToString("") {
            (it.toInt() and 0xFF).toString(16).padStart(2, '0')
        }
        if (actualSha256 != MODEL_SHA256) {
            throw IOException("Depth model checksum mismatch")
        }
    }

    private fun publishFailureOrExistingReady(context: Context) {
        _state.value = if (installedModelFileOrNull(context) != null) {
            DepthModelDownloadState.Ready
        } else {
            DepthModelDownloadState.Failed
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

    private fun hasValidInstalledModelShape(file: File): Boolean {
        if (!file.isFile || file.length() != EXPECTED_MODEL_SIZE_BYTES) {
            return false
        }
        val header = ByteArray(TFLITE_HEADER_SIZE)
        return runCatching {
            FileInputStream(file).use { input ->
                input.read(header) == header.size
            } && header.copyOfRange(4, 8).contentEquals(TFLITE_FILE_IDENTIFIER)
        }.getOrDefault(false)
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
