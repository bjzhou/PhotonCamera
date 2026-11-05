package com.hinnka.mycamera.data

import android.content.Context
import android.media.MediaExtractor
import android.media.MediaFormat
import android.net.Uri
import android.provider.OpenableColumns
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.ShutterSoundPlayer
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.NonCancellable
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.io.File
import java.util.UUID
import kotlin.coroutines.coroutineContext

/** Owns imported files; preferences store portable names relative to the backed-up directory. */
class CaptureSoundRepository(
    private val context: Context,
    private val preferences: UserPreferencesRepository,
) {
    companion object {
        private const val DIRECTORY = "capture_sounds"
        private const val MAX_FILE_BYTES = 10 * 1024 * 1024

        fun resolve(context: Context, fileName: String?): File? {
            if (fileName == null) return null
            require(fileName.isNotBlank() && fileName != "." && fileName != ".." &&
                '/' !in fileName && '\\' !in fileName) { "Invalid capture sound name" }
            return File(File(context.filesDir, DIRECTORY), fileName)
        }

        fun displayName(fileName: String): String = fileName.substringAfter('_')
    }

    private val mutex = Mutex()

    suspend fun import(isBurst: Boolean, uri: Uri) = mutex.withLock {
        withContext(Dispatchers.IO) {
            val directory = File(context.filesDir, DIRECTORY)
            check(directory.isDirectory || directory.mkdirs()) { "Cannot create sound directory" }
            val name = context.contentResolver.query(
                uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null
            )?.use { cursor ->
                if (cursor.moveToFirst()) cursor.getString(0) else null
            } ?: uri.lastPathSegment.orEmpty()
            val safeName = name.map { if (it == '/' || it == '\\' || it.isISOControl()) '_' else it }
                .joinToString("").take(40).ifBlank { "audio" }
            val file = File(directory, "${UUID.randomUUID()}_$safeName")
            var committed = false
            try {
                context.contentResolver.openInputStream(uri)?.use { input ->
                    file.outputStream().use { output ->
                        val buffer = ByteArray(8192)
                        var total = 0
                        while (true) {
                            coroutineContext.ensureActive()
                            val count = input.read(buffer)
                            if (count < 0) break
                            total += count
                            require(total <= MAX_FILE_BYTES) { "Audio file exceeds size limit" }
                            output.write(buffer, 0, count)
                        }
                    }
                } ?: error("Cannot open selected audio")
                validateFormat(file)
                check(ShutterSoundPlayer.validate(file)) { "SoundPool cannot decode selected audio" }
                // File ownership and the preference update must commit together, even on cancellation.
                withContext(NonCancellable) {
                    val previous = currentFileName(isBurst)
                    preferences.update { if (isBurst) burstSoundFileName = file.name else shutterSoundFileName = file.name }
                    committed = true
                    deletePrevious(previous)
                }
            } finally {
                if (!committed) file.delete()
            }
        }
    }

    suspend fun reset(isBurst: Boolean) = mutex.withLock {
        withContext(Dispatchers.IO + NonCancellable) {
            val previous = currentFileName(isBurst)
            preferences.update { if (isBurst) burstSoundFileName = null else shutterSoundFileName = null }
            deletePrevious(previous)
        }
    }

    private suspend fun currentFileName(isBurst: Boolean): String? {
        val current = preferences.userPreferences.first()
        return if (isBurst) current.burstSoundFileName else current.shutterSoundFileName
    }

    private suspend fun deletePrevious(fileName: String?) {
        // A restored configuration may reference the same clip for both capture modes.
        val current = preferences.userPreferences.first()
        if (fileName == current.shutterSoundFileName || fileName == current.burstSoundFileName) return
        runCatching {
            resolve(context, fileName)?.let { file ->
                if (file.exists() && !file.delete()) PLog.w("CaptureSoundRepository", "Cannot delete ${file.name}")
            }
        }.onFailure { PLog.w("CaptureSoundRepository", "Cannot remove previous sound", it) }
    }

    private fun validateFormat(file: File) {
        val extractor = MediaExtractor()
        try {
            extractor.setDataSource(file.absolutePath)
            require(extractor.trackCount == 1) { "Expected a single audio track" }
            val format = extractor.getTrackFormat(0)
            require(format.getString(MediaFormat.KEY_MIME)?.startsWith("audio/") == true)
            val durationUs = format.getLong(MediaFormat.KEY_DURATION)
            val sampleRate = format.getInteger(MediaFormat.KEY_SAMPLE_RATE)
            val channels = format.getInteger(MediaFormat.KEY_CHANNEL_COUNT)
            // SoundPool truncates decoded samples above 1 MB. These limits keep PCM below 576 KB.
            require(durationUs in 1..3_000_000L && sampleRate in 1..48_000 && channels in 1..2) {
                "Unsupported audio parameters: duration=$durationUs, rate=$sampleRate, channels=$channels"
            }
        } finally {
            extractor.release()
        }
    }
}
