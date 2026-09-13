package com.hinnka.mycamera.utils

import android.opengl.GLES30
import android.os.Build
import com.google.gson.Gson
import com.hinnka.mycamera.BuildConfig
import kotlinx.coroutines.asContextElement
import kotlin.coroutines.CoroutineContext

/** One photo's bounded log, independent of PLog's global UI history. */
internal class DngCaptureLog(
    private val captureId: String,
    environment: Map<String, String>,
    private val startedAtMs: Long = System.currentTimeMillis(),
    private val maxLogBytes: Int = 256 * 1024,
) {
    private val facts = LinkedHashMap(environment)
    private val events = ArrayDeque<String>()
    private var logBytes = 0
    private var droppedEvents = 0L
    private var truncatedEvents = 0L
    private val gson = Gson()

    @Synchronized
    fun put(name: String, value: Any?) {
        facts[name] = value?.toString() ?: "unavailable"
    }

    @Synchronized
    fun append(timestampMs: Long, level: String, tag: String, message: String) {
        val boundedMessage = message.take(8192)
        if (boundedMessage.length != message.length) ++truncatedEvents
        val event = gson.toJson(linkedMapOf(
            "timestampMs" to timestampMs,
            "level" to level,
            "tag" to tag.take(128),
            "message" to boundedMessage,
        ))
        val size = event.toByteArray(Charsets.UTF_8).size + 1
        if (size > maxLogBytes) {
            ++droppedEvents
            return
        }
        while (logBytes + size > maxLogBytes && events.isNotEmpty()) {
            logBytes -= events.removeFirst().toByteArray(Charsets.UTF_8).size + 1
            ++droppedEvents
        }
        events.addLast(event)
        logBytes += size
    }

    @Synchronized
    fun makerNote(extraFacts: Map<String, String> = emptyMap()): ByteArray {
        val header = gson.toJson(linkedMapOf(
            "schemaVersion" to 1,
            "captureId" to captureId,
            "startedAtMs" to startedAtMs,
            "snapshotAtMs" to System.currentTimeMillis(),
            "logScope" to "photo-processing-coroutine",
            "droppedEvents" to droppedEvents,
            "truncatedEvents" to truncatedEvents,
            "facts" to (facts + extraFacts),
        ))
        // Self-contained UTF-8 JSON, no TIFF-relative pointers. Native OEM MakerNote formats
        // must not be inferred from the phone's Make/Model for this Photon-owned payload.
        return ("PhotonCamera\u0000" + header.dropLast(1) +
            ",\"events\":[" + events.joinToString(",") + "]}").toByteArray(Charsets.UTF_8)
    }
}

/** Coroutine context propagation keeps concurrent photos and GL/IO thread switches isolated. */
internal object DngCaptureDiagnostics {
    private val active = ThreadLocal<DngCaptureLog?>()

    fun context(photoId: String): CoroutineContext =
        context(DngCaptureLog(photoId, environment()))

    fun context(log: DngCaptureLog): CoroutineContext = active.asContextElement(log)

    fun put(name: String, value: Any?) = active.get()?.put(name, value)

    fun record(timestampMs: Long, level: String, tag: String, message: String) {
        active.get()?.append(timestampMs, level, tag, message)
    }

    /** Call only with a current GL context; capture every photo even when programs are cached. */
    fun recordCurrentGl() {
        if (active.get() == null) return
        put("gpu.vendor", GLES30.glGetString(GLES30.GL_VENDOR))
        put("gpu.renderer", GLES30.glGetString(GLES30.GL_RENDERER))
        put("gpu.version", GLES30.glGetString(GLES30.GL_VERSION))
        put("gpu.glsl", GLES30.glGetString(GLES30.GL_SHADING_LANGUAGE_VERSION))
    }

    fun makerNote(extraFacts: Map<String, String>): ByteArray =
        (active.get() ?: DngCaptureLog("unscoped", environment())).makerNote(extraFacts)

    private fun environment(): Map<String, String> = linkedMapOf(
        "app.versionName" to BuildConfig.VERSION_NAME,
        "app.versionCode" to BuildConfig.VERSION_CODE.toString(),
        "app.buildType" to BuildConfig.BUILD_TYPE,
        "app.flavor" to BuildConfig.FLAVOR,
        "device.manufacturer" to Build.MANUFACTURER,
        "device.model" to Build.MODEL,
        "device.hardware" to Build.HARDWARE,
        "device.buildFingerprint" to Build.FINGERPRINT,
        "device.androidRelease" to Build.VERSION.RELEASE,
        "device.sdkInt" to Build.VERSION.SDK_INT.toString(),
        "device.abis" to Build.SUPPORTED_ABIS.joinToString(","),
    )
}
