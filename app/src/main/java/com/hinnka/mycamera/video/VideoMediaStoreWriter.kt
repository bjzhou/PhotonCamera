package com.hinnka.mycamera.video

import android.content.ContentValues
import android.content.Context
import android.net.Uri
import android.os.ParcelFileDescriptor
import android.provider.DocumentsContract
import android.provider.MediaStore
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

object VideoMediaStoreWriter {

    private const val TAG = "VideoMediaStoreWriter"

    data class PendingVideo(
        val uri: Uri,
        val descriptor: ParcelFileDescriptor,
        val isMediaStorePending: Boolean
    )

    fun createPendingVideo(
        context: Context,
        dateTakenMs: Long = System.currentTimeMillis(),
        recordingPath: VideoRecordingPath = VideoRecordingPath.DCIM_PHOTON,
        recordingTreeUri: String? = null
    ): PendingVideo? {
        val fileName = buildFileName(dateTakenMs)
        if (recordingPath == VideoRecordingPath.EXTERNAL_TREE) {
            return createTreeVideo(context, recordingTreeUri, fileName)
        }

        val values = ContentValues().apply {
            put(MediaStore.MediaColumns.DISPLAY_NAME, fileName)
            put(MediaStore.MediaColumns.MIME_TYPE, "video/mp4")
            put(MediaStore.MediaColumns.RELATIVE_PATH, recordingPath.relativePath)
            put(MediaStore.MediaColumns.DATE_ADDED, dateTakenMs / 1000)
            put(MediaStore.MediaColumns.DATE_MODIFIED, dateTakenMs / 1000)
            put(MediaStore.MediaColumns.IS_PENDING, 1)
        }

        val uri = context.contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, values)
            ?: return null
        return try {
            val descriptor = context.contentResolver.openFileDescriptor(uri, "rw")
                ?: throw IllegalStateException("Cannot open output descriptor")
            PendingVideo(uri, descriptor, isMediaStorePending = true)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create pending video output", e)
            context.contentResolver.delete(uri, null, null)
            null
        }
    }

    private fun createTreeVideo(
        context: Context,
        treeUriString: String?,
        fileName: String
    ): PendingVideo? {
        if (treeUriString.isNullOrBlank()) {
            PLog.e(TAG, "External video output requested without a tree URI")
            return null
        }
        return try {
            val treeUri = Uri.parse(treeUriString)
            val treeDocumentId = DocumentsContract.getTreeDocumentId(treeUri)
            val parentUri = DocumentsContract.buildDocumentUriUsingTree(treeUri, treeDocumentId)
            val uri = DocumentsContract.createDocument(
                context.contentResolver,
                parentUri,
                "video/mp4",
                fileName
            ) ?: throw IllegalStateException("Cannot create output document")
            val descriptor = context.contentResolver.openFileDescriptor(uri, "rw")
                ?: throw IllegalStateException("Cannot open output descriptor")
            PendingVideo(uri, descriptor, isMediaStorePending = false)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to create external video output", e)
            null
        }
    }

    fun publishPendingVideo(context: Context, pendingVideo: PendingVideo): Uri? {
        if (!pendingVideo.isMediaStorePending) {
            return pendingVideo.uri
        }
        return try {
            val values = ContentValues().apply {
                put(MediaStore.MediaColumns.IS_PENDING, 0)
                put(MediaStore.MediaColumns.DATE_MODIFIED, System.currentTimeMillis() / 1000)
            }
            context.contentResolver.update(pendingVideo.uri, values, null, null)
            pendingVideo.uri
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to publish pending video", e)
            null
        }
    }

    fun discardPendingVideo(context: Context, pendingVideo: PendingVideo) {
        try {
            if (pendingVideo.isMediaStorePending) {
                context.contentResolver.delete(pendingVideo.uri, null, null)
            } else {
                DocumentsContract.deleteDocument(context.contentResolver, pendingVideo.uri)
            }
        } catch (e: Exception) {
            PLog.w(TAG, "Failed to discard pending video: ${e.message}")
        }
    }

    suspend fun publishVideo(
        context: Context,
        sourceFile: File,
        dateTakenMs: Long = System.currentTimeMillis(),
        recordingPath: VideoRecordingPath = VideoRecordingPath.DCIM_PHOTON,
        recordingTreeUri: String? = null
    ): Uri? = withContext(Dispatchers.IO) {
        if (!sourceFile.exists() || sourceFile.length() <= 0L) {
            return@withContext null
        }

        val fileName = buildFileName(dateTakenMs)
        if (recordingPath == VideoRecordingPath.EXTERNAL_TREE) {
            val output = createTreeVideo(context, recordingTreeUri, fileName)
                ?: return@withContext null
            return@withContext try {
                output.descriptor.use { descriptor ->
                    ParcelFileDescriptor.AutoCloseOutputStream(descriptor).use { outputStream ->
                        sourceFile.inputStream().use { input ->
                            input.copyTo(outputStream)
                        }
                    }
                }
                output.uri
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to publish external video", e)
                discardPendingVideo(context, output)
                null
            }
        }

        val values = ContentValues().apply {
            put(MediaStore.MediaColumns.DISPLAY_NAME, fileName)
            put(MediaStore.MediaColumns.MIME_TYPE, "video/mp4")
            put(MediaStore.MediaColumns.RELATIVE_PATH, recordingPath.relativePath)
            put(MediaStore.MediaColumns.DATE_ADDED, dateTakenMs / 1000)
            put(MediaStore.MediaColumns.DATE_MODIFIED, dateTakenMs / 1000)
        }

        val uri = context.contentResolver.insert(MediaStore.Video.Media.EXTERNAL_CONTENT_URI, values)
            ?: return@withContext null

        try {
            context.contentResolver.openOutputStream(uri)?.use { output ->
                sourceFile.inputStream().use { input ->
                    input.copyTo(output)
                }
            } ?: return@withContext null
            uri
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to publish video", e)
            context.contentResolver.delete(uri, null, null)
            null
        }
    }

    private fun buildFileName(dateTakenMs: Long): String {
        return "PhotonCamera_${
            SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date(dateTakenMs))
        }.mp4"
    }
}
