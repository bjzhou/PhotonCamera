package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.util.AtomicFile
import android.util.Log
import java.io.File
import java.io.FileOutputStream

/**
 * Persists the last complete Photon look inside MGC's own private app storage.
 */
internal object MgcPhotonLookStore {
    private const val TAG = "codex_lut_chain"
    private const val CACHE_FILE_NAME = "photon_look_snapshot_v1.bin"

    @Volatile
    private var lastPersistedSignature: String? = null

    @Synchronized
    fun write(context: Context, record: PhotonLookCacheRecord): Boolean {
        val atomicFile = atomicFile(context)
        if (lastPersistedSignature == record.signature && atomicFile.baseFile.isFile) {
            return true
        }
        val encoded = runCatching {
            PhotonLookCacheCodec.encode(record)
        }.onFailure {
            Log.e(TAG, "failed to encode Photon look cache", it)
        }.getOrNull() ?: return false

        var output: FileOutputStream? = null
        return try {
            val opened = atomicFile.startWrite()
            output = opened
            opened.write(encoded)
            opened.flush()
            atomicFile.finishWrite(opened)
            lastPersistedSignature = record.signature
            Log.d(
                TAG,
                "persisted Photon look in MGC signature=${record.signature} " +
                    "lut=${record.lutId ?: "none"} bytes=${record.lutPayload?.size ?: 0}",
            )
            true
        } catch (error: Throwable) {
            runCatching { output?.let(atomicFile::failWrite) }
            Log.e(TAG, "failed to persist Photon look in MGC", error)
            false
        }
    }

    @Synchronized
    fun read(context: Context): PhotonLookCacheRecord? {
        val atomicFile = atomicFile(context)
        if (!atomicFile.baseFile.isFile) return null
        return runCatching {
            val encoded = atomicFile.openRead().use { it.readBytes() }
            PhotonLookCacheCodec.decode(encoded)
        }.onSuccess {
            lastPersistedSignature = it.signature
        }.onFailure {
            Log.e(TAG, "failed to restore persisted Photon look", it)
        }.getOrNull()
    }

    private fun atomicFile(context: Context): AtomicFile {
        return AtomicFile(File(context.noBackupFilesDir, CACHE_FILE_NAME))
    }
}
