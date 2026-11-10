package com.hinnka.mycamera.lut

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream

/**
 * Reference images used by AI color match, kept so they can be reused on other photos.
 *
 * Every newly picked reference is copied (downscaled to [MAX_EDGE]) into the app's private
 * directory as its own record; picking an image again adds another record. Records are listed
 * newest first and can be deleted. Deleting a record never affects photos already matched with
 * it, since each match is stored as that photo's own LUT ([PhotoColorMatch]).
 */
object ColorMatchReferenceStore {
    private const val TAG = "ColorMatchReferenceStore"
    private const val DIR = "color_match_references"
    private const val EXTENSION = ".jpg"
    private const val JPEG_QUALITY = 95

    /** Longest edge stored; AI color match never reads the reference at a larger size. */
    const val MAX_EDGE = 2048

    data class Reference(val id: String, val file: File)

    /** Where an AI color match takes its reference from. */
    sealed interface Source {
        /** A newly picked image; it becomes a new record when the match runs. */
        data class NewImage(val uri: Uri) : Source

        data class Saved(val reference: Reference) : Source
    }

    private val _references = MutableStateFlow<List<Reference>>(emptyList())
    private val mutex = Mutex()
    @Volatile
    private var loaded = false

    /** Saved references, newest first. Call [load] to populate it. */
    val references: StateFlow<List<Reference>> = _references.asStateFlow()

    suspend fun load(context: Context) {
        if (loaded) return
        mutex.withLock {
            if (loaded) return
            _references.value = withContext(Dispatchers.IO) { scan(context) }
            loaded = true
        }
    }

    /** Copies the image at [uri] into a new record, or returns null when it cannot be decoded. */
    suspend fun add(context: Context, uri: Uri): Reference? = withContext(Dispatchers.IO) {
        load(context)
        val bitmap = GalleryManager.loadBitmap(context, uri, MAX_EDGE) ?: run {
            PLog.e(TAG, "Failed to decode reference image: $uri")
            return@withContext null
        }
        try {
            mutex.withLock {
                val id = newId(context)
                val target = file(context, id)
                val temp = File(target.parentFile, "${target.name}.tmp")
                val written = FileOutputStream(temp).use { output ->
                    bitmap.compress(Bitmap.CompressFormat.JPEG, JPEG_QUALITY, output)
                }
                if (!written || !temp.renameTo(target)) {
                    temp.delete()
                    PLog.e(TAG, "Failed to save reference image $id")
                    return@withLock null
                }
                Reference(id, target).also { reference ->
                    _references.value = listOf(reference) + _references.value
                }
            }
        } finally {
            bitmap.recycle()
        }
    }

    suspend fun delete(context: Context, id: String) = withContext(Dispatchers.IO) {
        mutex.withLock {
            val file = file(context, id)
            if (file.exists() && !file.delete()) {
                PLog.w(TAG, "Cannot delete reference image: ${file.absolutePath}")
                return@withLock
            }
            _references.value = _references.value.filterNot { it.id == id }
        }
    }

    private fun scan(context: Context): List<Reference> =
        dir(context).listFiles { file -> file.isFile && file.name.endsWith(EXTENSION) }
            .orEmpty()
            .mapNotNull { file ->
                val id = file.name.removeSuffix(EXTENSION)
                id.toLongOrNull()?.let { Reference(id, file) }
            }
            .sortedByDescending { it.id.toLong() }

    /** Ids are creation timestamps, so they also give the list order. */
    private fun newId(context: Context): String {
        var id = System.currentTimeMillis()
        while (file(context, id.toString()).exists()) id++
        return id.toString()
    }

    private fun dir(context: Context): File = File(context.filesDir, DIR).apply { mkdirs() }

    private fun file(context: Context, id: String): File = File(dir(context), "$id$EXTENSION")
}
