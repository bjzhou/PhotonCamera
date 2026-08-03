package com.hinnka.mycamera.mgc

import android.content.ContentProvider
import android.content.ContentValues
import android.database.Cursor
import android.net.Uri
import android.os.Bundle
import android.os.ParcelFileDescriptor
import com.hinnka.mycamera.gallery.GalleryManager
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.runBlocking
import java.io.File
import java.io.FileNotFoundException
import java.util.UUID

class PhotonRawProvider : ContentProvider() {
    override fun onCreate(): Boolean = true

    override fun call(method: String, arg: String?, extras: Bundle?): Bundle? {
        val appContext = context?.applicationContext ?: return null
        return when (method) {
            PhotonRawContract.METHOD_BEGIN_RAW_SESSION -> beginSession(appContext)
            PhotonRawContract.METHOD_RENDER_RAW_SESSION -> renderSession(appContext, arg, extras)
            PhotonRawContract.METHOD_ABORT_RAW_SESSION -> abortSession(appContext, arg)
            else -> super.call(method, arg, extras)
        }
    }

    override fun openFile(uri: Uri, mode: String): ParcelFileDescriptor {
        val appContext = context?.applicationContext ?: throw FileNotFoundException("Provider unavailable")
        if (!mode.contains("w")) {
            throw FileNotFoundException("RAW sessions are write-only")
        }
        val sessionId = sessionIdFromUri(uri) ?: throw FileNotFoundException("Invalid RAW session URI")
        val file = sessionDngFile(appContext, sessionId, create = true)
        return ParcelFileDescriptor.open(
            file,
            ParcelFileDescriptor.MODE_CREATE or
                ParcelFileDescriptor.MODE_TRUNCATE or
                ParcelFileDescriptor.MODE_WRITE_ONLY
        )
    }

    override fun getType(uri: Uri): String? = "image/x-adobe-dng"

    override fun query(
        uri: Uri,
        projection: Array<out String>?,
        selection: String?,
        selectionArgs: Array<out String>?,
        sortOrder: String?
    ): Cursor? = null

    override fun insert(uri: Uri, values: ContentValues?): Uri? = null

    override fun delete(uri: Uri, selection: String?, selectionArgs: Array<out String>?): Int = 0

    override fun update(
        uri: Uri,
        values: ContentValues?,
        selection: String?,
        selectionArgs: Array<out String>?
    ): Int = 0

    private fun beginSession(context: android.content.Context): Bundle {
        cleanupStaleSessions(context)
        val sessionId = UUID.randomUUID().toString()
        sessionDngFile(context, sessionId, create = true)
        return Bundle().apply {
            putInt(PhotonRawContract.EXTRA_SCHEMA_VERSION, SCHEMA_VERSION)
            putString(PhotonRawContract.EXTRA_SESSION_ID, sessionId)
            putString(PhotonRawContract.EXTRA_INPUT_URI, PhotonRawContract.inputUri(context, sessionId).toString())
        }
    }

    private fun renderSession(
        context: android.content.Context,
        arg: String?,
        extras: Bundle?
    ): Bundle {
        val sessionId = arg?.takeIf { it.isNotBlank() }
            ?: extras?.getString(PhotonRawContract.EXTRA_SESSION_ID)
            ?: return rejected("missing session id")
        if (!isValidSessionId(sessionId)) {
            return rejected("invalid session id")
        }

        val dngFile = sessionDngFile(context, sessionId, create = false)
        if (!dngFile.exists() || dngFile.length() <= 0L) {
            return rejected("missing DNG payload")
        }

        val sourcePackage = extras?.getString(PhotonRawContract.EXTRA_SOURCE_PACKAGE)
        val source = extras?.getString(PhotonRawContract.EXTRA_SOURCE)
        val sourceUri = extras?.getString(PhotonRawContract.EXTRA_SOURCE_URI)
            ?.takeIf { it.isNotBlank() }
            ?.let(Uri::parse)
        val dateTaken = extras?.getLong(PhotonRawContract.EXTRA_DATE_TAKEN, 0L)
            ?.takeIf { it > 0L }
        val rotation = extras?.getInt(PhotonRawContract.EXTRA_ROTATION, 0) ?: 0

        val photoId = runBlocking {
            runCatching {
                GalleryManager.saveMgcRawDngPhoto(
                    context = context,
                    sourceDngFile = dngFile,
                    sourcePackage = sourcePackage,
                    source = source,
                    sourceUri = sourceUri,
                    dateTaken = dateTaken,
                    rotation = rotation
                )
            }.onFailure {
                PLog.e(TAG, "Failed to render MGC RAW session=$sessionId", it)
            }.getOrNull()
        } ?: return rejected("render failed")

        PLog.d(TAG, "MGC RAW rendered photoId=$photoId session=$sessionId source=$source")
        sessionDir(context, sessionId).deleteRecursively()

        return Bundle().apply {
            putInt(PhotonRawContract.EXTRA_SCHEMA_VERSION, SCHEMA_VERSION)
            putBoolean(PhotonRawContract.EXTRA_ACCEPTED, true)
            putString(PhotonRawContract.EXTRA_SESSION_ID, sessionId)
            putString(PhotonRawContract.EXTRA_PHOTO_ID, photoId)
        }
    }

    private fun abortSession(context: android.content.Context, arg: String?): Bundle {
        val sessionId = arg?.takeIf(::isValidSessionId)
        if (sessionId != null) {
            sessionDir(context, sessionId).deleteRecursively()
        }
        return Bundle().apply {
            putInt(PhotonRawContract.EXTRA_SCHEMA_VERSION, SCHEMA_VERSION)
            putBoolean(PhotonRawContract.EXTRA_ACCEPTED, true)
        }
    }

    private fun rejected(reason: String): Bundle {
        PLog.w(TAG, "Reject MGC RAW session: $reason")
        return Bundle().apply {
            putInt(PhotonRawContract.EXTRA_SCHEMA_VERSION, SCHEMA_VERSION)
            putBoolean(PhotonRawContract.EXTRA_ACCEPTED, false)
        }
    }

    private fun sessionIdFromUri(uri: Uri): String? {
        val segments = uri.pathSegments
        if (segments.size != 3) return null
        if (segments[0] != "session") return null
        if (segments[2] != "original.dng") return null
        return segments[1].takeIf(::isValidSessionId)
    }

    private fun sessionDngFile(
        context: android.content.Context,
        sessionId: String,
        create: Boolean
    ): File {
        val dir = sessionDir(context, sessionId)
        if (create && !dir.exists()) {
            dir.mkdirs()
        }
        return File(dir, "incoming.dng")
    }

    private fun sessionDir(context: android.content.Context, sessionId: String): File =
        File(File(context.cacheDir, SESSION_ROOT), sessionId)

    private fun cleanupStaleSessions(context: android.content.Context) {
        val root = File(context.cacheDir, SESSION_ROOT)
        val cutoff = System.currentTimeMillis() - STALE_SESSION_MS
        root.listFiles()?.forEach { dir ->
            if (dir.lastModified() < cutoff) {
                dir.deleteRecursively()
            }
        }
    }

    private fun isValidSessionId(value: String): Boolean =
        value.length in 16..80 && value.all { it.isLetterOrDigit() || it == '-' || it == '_' }

    companion object {
        private const val TAG = "PhotonRawProvider"
        private const val SCHEMA_VERSION = 1
        private const val SESSION_ROOT = "mgc_raw_sessions"
        private const val STALE_SESSION_MS = 24L * 60L * 60L * 1000L
    }
}
