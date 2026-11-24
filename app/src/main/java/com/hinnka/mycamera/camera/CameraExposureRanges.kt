package com.hinnka.mycamera.camera

import android.hardware.camera2.CameraCharacteristics
import android.util.Range
import com.hinnka.mycamera.utils.PLog

internal data class CameraExposureRanges(
    val iso: Range<Int>?,
    val shutter: Range<Long>?,
)

private const val TAG = "CameraExposureRanges"
private const val QUALCOMM_EXPOSURE_TIME_RANGE = "org.codeaurora.qcamera3.iso_exp_priority.exposure_time_range"

internal fun CameraCharacteristics.readExposureRanges(
    cameraId: String,
    allowVendorExtension: Boolean,
): CameraExposureRanges {
    val iso = readMetadataOrNull(CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE, cameraId)
    val shutter = readMetadataOrNull(CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE, cameraId)
    val supportsManualSensor = readMetadataOrNull(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES, cameraId)
        ?.contains(CameraCharacteristics.REQUEST_AVAILABLE_CAPABILITIES_MANUAL_SENSOR) == true
    if (!allowVendorExtension || !supportsManualSensor || iso == null || shutter == null) {
        return CameraExposureRanges(iso, shutter)
    }

    val vendorKeys = readExposureVendorKeys(cameraId)
    val vendorIsoKeys = vendorKeys.filter { it.name.endsWith(".sensor.info.sensitivityRange") }
    val vendorShutterKeys = vendorKeys.filter {
        it.name.endsWith(".sensor.info.exposureTimeRange") || it.name == QUALCOMM_EXPOSURE_TIME_RANGE
    }
    return CameraExposureRanges(
        iso = extendExposureRange(iso, vendorIsoKeys, cameraId) { value ->
            val levels = value as? IntArray
            levels?.takeIf { it.size == 2 && it[0] > 0 && it[0] <= it[1] }
                ?.let { Range(it[0], it[1]) }
        },
        shutter = extendExposureRange(shutter, vendorShutterKeys, cameraId) { value ->
            val timesNs = value as? LongArray
            timesNs?.takeIf { it.size == 2 && it[0] > 0 && it[0] <= it[1] }
                ?.let { Range(it[0], it[1]) }
        },
    )
}

private fun CameraCharacteristics.readExposureVendorKeys(cameraId: String): List<CameraCharacteristics.Key<*>> {
    // Android can decode unrelated metadata while enumerating keys. Keep optional discovery isolated.
    return try {
        keys.filterNot { it.name.startsWith("android.") }
    } catch (error: RuntimeException) {
        PLog.w(TAG, "Unable to enumerate vendor exposure keys for camera $cameraId", error)
        emptyList()
    } catch (error: AssertionError) {
        PLog.w(TAG, "Unable to enumerate vendor exposure keys for camera $cameraId", error)
        emptyList()
    }
}

private fun <T : Comparable<T>> CameraCharacteristics.extendExposureRange(
    standard: Range<T>,
    vendorKeys: List<CameraCharacteristics.Key<*>>,
    cameraId: String,
    decodeRange: (Any?) -> Range<T>?,
): Range<T> {
    val vendor = vendorKeys.mapNotNull { key ->
        val range = decodeRange(readMetadataOrNull(key, cameraId)) ?: return@mapNotNull null
        if (range.lower <= standard.upper && range.upper > standard.upper) key to range else null
    }.minByOrNull { (_, range) -> range.upper } ?: return standard

    val extended = Range(standard.lower, vendor.second.upper)
    PLog.i(TAG, "Camera $cameraId: ${vendor.first.name} reports ${vendor.second}, extending $standard to $extended")
    return extended
}
