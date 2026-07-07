package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.net.Uri
import android.os.Bundle
import android.os.SystemClock
import android.util.Log
import java.io.OutputStream
import java.nio.ByteBuffer

object PhotonRawClient {
    private const val TAG = "codex_raw_chain"
    private const val METHOD_BEGIN_RAW_SESSION = "beginRawSession"
    private const val METHOD_RENDER_RAW_SESSION = "renderRawSession"
    private const val METHOD_ABORT_RAW_SESSION = "abortRawSession"
    private const val MIN_HANDOFF_INTERVAL_MS = 500L
    private const val COPY_BUFFER_SIZE = 1024 * 1024

    private const val EXTRA_SCHEMA_VERSION = "schemaVersion"
    private const val EXTRA_SESSION_ID = "sessionId"
    private const val EXTRA_INPUT_URI = "inputUri"
    private const val EXTRA_ACCEPTED = "accepted"
    private const val EXTRA_SOURCE_PACKAGE = "sourcePackage"
    private const val EXTRA_SOURCE = "source"
    private const val EXTRA_SOURCE_URI = "sourceUri"
    private const val EXTRA_DATE_TAKEN = "dateTaken"

    private val knownAuthorities = listOf(
        "com.hinnka.mycamera.debug.mgc.raw",
        "com.hinnka.mycamera.mgc.raw",
        "com.samsung.android.scan3d.debug.mgc.raw",
        "com.samsung.android.scan3d.mgc.raw",
        "com.meitu.meiyancamera.debug.mgc.raw",
        "com.meitu.meiyancamera.mgc.raw",
    )

    @Volatile
    private var appContext: Context? = null

    @Volatile
    private var lastSuccessfulAuthority: String? = null

    @Volatile
    private var lastHandoffAtMs: Long = 0L

    @JvmStatic
    fun initialize(context: Context?) {
        appContext = context?.applicationContext
    }

    @JvmStatic
    fun handoffDngBuffer(dngBuffer: ByteBuffer?): Boolean {
        val context = appContext ?: run {
            Log.d(TAG, "Photon RAW provider unavailable: context not initialized")
            return false
        }
        val source = dngBuffer ?: return false
        if (source.capacity() <= 0) return false

        val now = SystemClock.elapsedRealtime()
        if (now - lastHandoffAtMs < MIN_HANDOFF_INTERVAL_MS) {
            Log.d(TAG, "Skipping RAW handoff due to debounce")
            return false
        }
        lastHandoffAtMs = now

        val readable = source.duplicate().apply {
            clear()
            limit(source.capacity())
        }
        return handoffDng(context, readable, "libgcam_dng", sourceUri = null)
    }

    @JvmStatic
    fun onMgcDngOutputReady(output: Any?, dngBuffer: ByteBuffer?): Boolean {
        val context = appContext ?: run {
            Log.d(TAG, "MGC DNG output ignored: context not initialized")
            return false
        }
        val dngUri = resolveDngUri(output)
        if (dngUri != null) {
            MgcPhotonThumbnailBridge.showLatestDngContent(context, dngUri)
        } else {
            Log.d(TAG, "MGC DNG output URI unavailable")
        }
        val source = dngBuffer ?: return dngUri != null
        if (source.capacity() <= 0) return dngUri != null

        val now = SystemClock.elapsedRealtime()
        if (now - lastHandoffAtMs < MIN_HANDOFF_INTERVAL_MS) {
            Log.d(TAG, "Skipping RAW handoff due to debounce")
            return dngUri != null
        }
        lastHandoffAtMs = now

        val readable = source.duplicate().apply {
            clear()
            limit(source.capacity())
        }
        return handoffDng(context, readable, "libgcam_dng", sourceUri = dngUri) || dngUri != null
    }

    private fun handoffDng(
        context: Context,
        dngBuffer: ByteBuffer,
        source: String,
        sourceUri: Uri?
    ): Boolean {
        for (authority in orderedAuthorities()) {
            val session = beginSession(context, authority) ?: continue
            val written = runCatching {
                context.contentResolver.openOutputStream(session.inputUri, "wt")?.use { output ->
                    copyBufferToStream(dngBuffer.duplicate(), output)
                } ?: false
            }.getOrElse {
                Log.d(TAG, "RAW handoff write failed authority=$authority: ${it.message}")
                false
            }
            if (!written) {
                abortSession(context, authority, session.sessionId)
                continue
            }

            val accepted = renderSession(context, authority, session.sessionId, source, sourceUri)
            if (accepted) {
                lastSuccessfulAuthority = authority
                Log.d(
                    TAG,
                    "RAW DNG handed to Photon authority=$authority sourceUri=$sourceUri bytes=${dngBuffer.capacity()}"
                )
                return true
            }
            abortSession(context, authority, session.sessionId)
        }

        Log.d(TAG, "Photon RAW provider unavailable")
        return false
    }

    private fun beginSession(context: Context, authority: String): RawSession? {
        val bundle = runCatching {
            context.contentResolver.call(rawUri(authority), METHOD_BEGIN_RAW_SESSION, null, null)
        }.getOrElse {
            Log.d(TAG, "RAW begin failed authority=$authority: ${it.message}")
            null
        } ?: return null

        if (bundle.getInt(EXTRA_SCHEMA_VERSION, 0) <= 0) return null
        val sessionId = bundle.getString(EXTRA_SESSION_ID)?.takeIf { it.isNotBlank() } ?: return null
        val inputUri = bundle.getString(EXTRA_INPUT_URI)?.let(Uri::parse) ?: return null
        return RawSession(sessionId, inputUri)
    }

    private fun renderSession(
        context: Context,
        authority: String,
        sessionId: String,
        source: String,
        sourceUri: Uri?
    ): Boolean {
        val extras = Bundle().apply {
            putString(EXTRA_SESSION_ID, sessionId)
            putString(EXTRA_SOURCE_PACKAGE, context.packageName)
            putString(EXTRA_SOURCE, source)
            sourceUri?.let { putString(EXTRA_SOURCE_URI, it.toString()) }
            putLong(EXTRA_DATE_TAKEN, System.currentTimeMillis())
        }
        val bundle = runCatching {
            context.contentResolver.call(rawUri(authority), METHOD_RENDER_RAW_SESSION, sessionId, extras)
        }.getOrElse {
            Log.d(TAG, "RAW render failed authority=$authority: ${it.message}")
            null
        } ?: return false
        return bundle.getBoolean(EXTRA_ACCEPTED, false)
    }

    private fun abortSession(context: Context, authority: String, sessionId: String) {
        runCatching {
            context.contentResolver.call(rawUri(authority), METHOD_ABORT_RAW_SESSION, sessionId, null)
        }
    }

    private fun copyBufferToStream(buffer: ByteBuffer, output: OutputStream): Boolean {
        val chunk = ByteArray(COPY_BUFFER_SIZE)
        while (buffer.hasRemaining()) {
            val count = minOf(buffer.remaining(), chunk.size)
            buffer.get(chunk, 0, count)
            output.write(chunk, 0, count)
        }
        output.flush()
        return true
    }

    private fun orderedAuthorities(): List<String> {
        val first = lastSuccessfulAuthority
        return if (first == null) {
            knownAuthorities
        } else {
            listOf(first) + knownAuthorities.filterNot { it == first }
        }
    }

    private fun rawUri(authority: String): Uri = Uri.parse("content://$authority/raw")

    private fun resolveDngUri(output: Any?): Uri? {
        if (output == null) return null
        return runCatching {
            val storage = output.javaClass.getField("b").get(output)
            storage?.javaClass?.getMethod("b")?.invoke(storage) as? Uri
        }.getOrElse {
            Log.d(TAG, "Failed to resolve MGC DNG URI: ${it.message}")
            null
        }
    }

    private data class RawSession(
        val sessionId: String,
        val inputUri: Uri,
    )
}
