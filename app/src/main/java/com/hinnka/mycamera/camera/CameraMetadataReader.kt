package com.hinnka.mycamera.camera

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.os.SystemClock
import com.hinnka.mycamera.utils.PLog
import java.nio.BufferUnderflowException
import java.util.WeakHashMap

private val metadataCameraIds = WeakHashMap<CameraCharacteristics, String>()

internal fun CameraCharacteristics.associateMetadataCameraId(cameraId: String) {
    synchronized(metadataCameraIds) { metadataCameraIds[this] = cameraId }
}

/** Decode a device-supplied field. A malformed value is unavailable, never repaired or cached. */
internal fun <T> CameraCharacteristics.readMetadataOrNull(
    key: CameraCharacteristics.Key<T>,
    cameraId: String? = null,
): T? = decodeCameraMetadata(
    read = { get(key) },
    onMalformed = {
        val sourceCameraId = cameraId ?: synchronized(metadataCameraIds) { metadataCameraIds[this] }
        MetadataDecodeLog.report("characteristics", key.name, sourceCameraId, null, it)
    },
)

internal fun <T> CaptureResult.readMetadataOrNull(
    key: CaptureResult.Key<T>,
    cameraId: String? = null,
): T? = decodeCameraMetadata(
    read = { get(key) },
    onMalformed = { MetadataDecodeLog.report("result", key.name, cameraId, frameNumber, it) },
)

/** RAW processing must reject corrupt color data instead of treating it as absent/unity gains.
 * The processing boundary handles this as a failed image, not an uncaught framework Error.
 */
internal fun <T> CaptureResult.readMetadataOrThrow(key: CaptureResult.Key<T>): T? = decodeCameraMetadata(
    read = { get(key) },
    onMalformed = {
        MetadataDecodeLog.report("result", key.name, null, frameNumber, it)
        throw MalformedCaptureMetadataException(key.name, frameNumber, it)
    },
)

internal class MalformedCaptureMetadataException(key: String, frame: Long, cause: Throwable) :
    IllegalStateException("Cannot process capture frame $frame: malformed $key", cause)

/** Keep the catch boundary around get() only; unrelated application errors must still propagate. */
internal fun <T> decodeCameraMetadata(read: () -> T, onMalformed: (Throwable) -> Unit): T? {
    return try {
        read()
    } catch (error: RuntimeException) {
        if (!isMalformedCameraMetadata(error)) throw error
        onMalformed(error)
        null
    } catch (error: AssertionError) {
        if (!isMalformedCameraMetadata(error)) throw error
        onMalformed(error)
        null
    }
}

private fun isMalformedCameraMetadata(error: Throwable): Boolean {
    // Range's constructor failure is wrapped by reflection and then by AssertionError.
    // RGGB's short buffer and invalid float failures escape directly from its marshaler.
    var current: Throwable? = error
    var marshalerFailure = false
    var invalidValue = false
    repeat(8) {
        val cause = current ?: return marshalerFailure && invalidValue
        marshalerFailure = marshalerFailure || cause.stackTrace.any {
            it.className.startsWith("android.hardware.camera2.marshal.impl.MarshalQueryable") &&
                it.methodName == "unmarshal"
        }
        invalidValue = invalidValue || cause is BufferUnderflowException || cause is IllegalArgumentException
        current = cause.cause
    }
    return marshalerFailure && invalidValue
}

private object MetadataDecodeLog {
    private const val REPORT_INTERVAL_MS = 60_000L
    private const val MAX_ENTRIES = 128
    private val reportedAt = LinkedHashMap<String, Long>()

    fun report(source: String, key: String, cameraId: String?, frame: Long?, error: Throwable) {
        val identity = "$source/$cameraId/$key"
        val now = SystemClock.elapsedRealtime()
        synchronized(reportedAt) {
            val previous = reportedAt[identity]
            if (previous != null && now - previous < REPORT_INTERVAL_MS) return
            if (reportedAt.size >= MAX_ENTRIES && identity !in reportedAt) {
                reportedAt.remove(reportedAt.keys.first())
            }
            reportedAt[identity] = now
        }
        PLog.w(
            "CameraMetadataReader",
            "Malformed Camera2 $source: cameraId=${cameraId ?: "unknown"}, key=$key, " +
                "frame=$frame; field unavailable",
            error,
        )
    }
}
