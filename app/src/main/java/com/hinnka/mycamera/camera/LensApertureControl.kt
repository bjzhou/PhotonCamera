package com.hinnka.mycamera.camera

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureRequest
import android.hardware.camera2.CaptureResult
import android.os.Build
import com.hinnka.mycamera.utils.PLog

internal fun CaptureResult.readPhysicalAperture(cameraId: String? = null): Float? =
    readMetadataOrNull(CaptureResult.LENS_APERTURE, cameraId)?.takeIf { it.isFinite() && it > 0f }

internal data class LensApertureCapabilities(
    val fixedAperture: Float? = null,
    val control: LensApertureControl? = null,
)

internal class LensApertureControl private constructor(
    val apertures: List<Float>,
    private val writesStandardAperture: Boolean,
    private val xiaomi: XiaomiApertureKeys? = null,
) {
    val requiresManualExposure: Boolean
        get() = xiaomi == null

    fun applyTo(builder: CaptureRequest.Builder, aperture: Float?) {
        if (writesStandardAperture && aperture != null) {
            builder.set(CaptureRequest.LENS_APERTURE, aperture)
        }
        xiaomi?.let { keys ->
            if (keys.hasClientName) builder.set(XIAOMI_CLIENT_NAME, XIAOMI_CAMERA_CLIENT)
            keys.mode.set(builder, if (aperture == null) XIAOMI_APERTURE_AUTO else XIAOMI_APERTURE_MANUAL)
            if (keys.hasFrameAperture) builder.set(XIAOMI_FRAME_APERTURE, aperture ?: keys.autoFrameAperture)
            if (keys.hasInitialAperture) builder.set(XIAOMI_INIT_APERTURE, aperture)
        }
    }

    fun clearFrom(builder: CaptureRequest.Builder, defaultAperture: Float?) {
        if (writesStandardAperture) {
            builder.set(CaptureRequest.LENS_APERTURE, defaultAperture)
        }
        xiaomi?.let { keys ->
            if (keys.hasFrameAperture) builder.set(XIAOMI_FRAME_APERTURE, null)
            if (keys.hasInitialAperture) builder.set(XIAOMI_INIT_APERTURE, null)
            keys.mode.set(builder, null)
            if (keys.hasClientName) builder.set(XIAOMI_CLIENT_NAME, null)
        }
    }

    private data class XiaomiApertureKeys(
        val mode: XiaomiApertureMode,
        val hasFrameAperture: Boolean,
        val hasInitialAperture: Boolean,
        val hasClientName: Boolean,
        val autoFrameAperture: Float?,
    )

    private enum class XiaomiApertureMode {
        BYTE,
        INT;

        fun set(builder: CaptureRequest.Builder, value: Int?) {
            when (this) {
                BYTE -> builder.set(XIAOMI_APERTURE_MODE_BYTE, value?.toByte())
                INT -> builder.set(XIAOMI_APERTURE_MODE_INT, value)
            }
        }
    }

    companion object {
        private const val TAG = "LensApertureControl"
        private const val XIAOMI_APERTURE_AUTO = 0
        private const val XIAOMI_APERTURE_MANUAL = 1
        private const val XIAOMI_CAMERA_CLIENT = "com.android.camera"
        private val XIAOMI_14_ULTRA_MODELS = listOf("Xiaomi 14 Ultra", "24030PN60G", "24030PN60C", "24031PN0DC")
        private val XIAOMI_AVAILABLE_APERTURES = CameraCharacteristics.Key(
            "com.xiaomi.lens.info.availableApertures", Array<Float>::class.java,
        )
        private val XIAOMI_INIT_APERTURE = CaptureRequest.Key(
            "com.xiaomi.sessionparams.initAperture", Float::class.javaObjectType,
        )
        private val XIAOMI_FRAME_APERTURE = CaptureRequest.Key(
            "com.xiaomi.lens.aperture", Float::class.javaObjectType,
        )
        private val XIAOMI_APERTURE_MODE_BYTE = CaptureRequest.Key(
            "com.xiaomi.lens.apertureMode", Byte::class.javaObjectType,
        )
        private val XIAOMI_APERTURE_MODE_INT = CaptureRequest.Key(
            "com.xiaomi.lens.apertureMode", Int::class.javaObjectType,
        )
        private val XIAOMI_CLIENT_NAME = CaptureRequest.Key(
            "com.xiaomi.sessionparams.clientName", String::class.java,
        )

        fun readCapabilities(
            openCameraId: String,
            characteristics: CameraCharacteristics?,
            logicalCharacteristics: CameraCharacteristics?,
            requestBuilder: CaptureRequest.Builder,
            supportsStandardControl: Boolean,
        ): LensApertureCapabilities {
            if (characteristics == null) return LensApertureCapabilities()
            val standardApertures = characteristics
                .readMetadataOrNull(CameraCharacteristics.LENS_INFO_AVAILABLE_APERTURES)
                ?.asIterable()
                .validApertures()

            if (Build.BRAND.equals("xiaomi", ignoreCase = true) ||
                Build.MANUFACTURER.equals("xiaomi", ignoreCase = true)
            ) {
                val vendorApertures = characteristics.readXiaomiApertures().ifEmpty {
                    // Some HALs expose the primary lens's vendor metadata only on the logical ID.
                    logicalCharacteristics
                        ?.takeIf { characteristics.sharesPrimaryLensWith(it) }
                        ?.readXiaomiApertures().orEmpty()
                }
                if (vendorApertures.size > 1) {
                    readXiaomiControl(openCameraId, requestBuilder, vendorApertures)?.let {
                        return LensApertureCapabilities(control = it)
                    }
                    if (standardApertures.size <= 1) return LensApertureCapabilities()
                }
            }

            return LensApertureCapabilities(
                fixedAperture = standardApertures.singleOrNull(),
                control = if (supportsStandardControl && standardApertures.size > 1) {
                    LensApertureControl(standardApertures, writesStandardAperture = true)
                } else {
                    null
                },
            )
        }

        private fun readXiaomiControl(
            openCameraId: String,
            builder: CaptureRequest.Builder,
            apertures: List<Float>,
        ): LensApertureControl? {
            val firstAperture = apertures.first()
            val is14UltraMainCamera = (openCameraId == "0" || openCameraId == "2") &&
                (Build.DEVICE.equals("aurora", ignoreCase = true) ||
                    XIAOMI_14_ULTRA_MODELS.any { Build.MODEL.equals(it, ignoreCase = true) })
            val hasFrameAperture = builder.supportsApertureKey(XIAOMI_FRAME_APERTURE, firstAperture)
            val mode = when {
                builder.supportsApertureKey(XIAOMI_APERTURE_MODE_BYTE, XIAOMI_APERTURE_MANUAL.toByte()) ->
                    XiaomiApertureMode.BYTE
                builder.supportsApertureKey(XIAOMI_APERTURE_MODE_INT, XIAOMI_APERTURE_MANUAL) ->
                    XiaomiApertureMode.INT
                else -> return null
            }
            val hasClientName = builder.supportsApertureKey(XIAOMI_CLIENT_NAME, XIAOMI_CAMERA_CLIENT)
            // mcpro24fps 043de drives the iris on ID 0 with the per-frame Float key,
            // Byte mode and client name. Auto is mode 0 with an explicit Float 0.
            val use14UltraFrameAperture = is14UltraMainCamera && openCameraId == "0" &&
                hasFrameAperture && mode == XiaomiApertureMode.BYTE && hasClientName
            val hasInitialAperture = !use14UltraFrameAperture && (is14UltraMainCamera || !hasFrameAperture) &&
                builder.supportsApertureKey(XIAOMI_INIT_APERTURE, firstAperture)
            if (!hasFrameAperture && !hasInitialAperture) return null

            val writesStandardAperture = !use14UltraFrameAperture && (is14UltraMainCamera || hasInitialAperture) &&
                builder.supportsApertureKey(CaptureRequest.LENS_APERTURE, firstAperture)
            val autoFrameAperture = if (use14UltraFrameAperture) 0.0f else null
            PLog.i(TAG, "Xiaomi aperture request: camera=$openCameraId, mode=$mode, " +
                "frame=$hasFrameAperture, init=$hasInitialAperture, standard=$writesStandardAperture, " +
                "clientName=$hasClientName, autoFrame=$autoFrameAperture")
            return LensApertureControl(
                apertures, writesStandardAperture,
                XiaomiApertureKeys(mode, hasFrameAperture, hasInitialAperture, hasClientName, autoFrameAperture),
            )
        }

        private fun Iterable<Float>?.validApertures(): List<Float> =
            this?.filter { it.isFinite() && it > 0f }?.distinct()?.sorted().orEmpty()

        private fun CameraCharacteristics.readXiaomiApertures(): List<Float> = try {
            readMetadataOrNull(XIAOMI_AVAILABLE_APERTURES)?.asIterable().validApertures()
        } catch (e: RuntimeException) {
            PLog.d(TAG, "Xiaomi aperture characteristics unavailable: ${e.message}")
            emptyList()
        }

        private fun CameraCharacteristics.sharesPrimaryLensWith(logical: CameraCharacteristics): Boolean {
            val focalLength = readMetadataOrNull(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
                ?.singleOrNull() ?: return false
            return focalLength == logical
                .readMetadataOrNull(CameraCharacteristics.LENS_INFO_AVAILABLE_FOCAL_LENGTHS)
                ?.singleOrNull()
        }
    }
}

private fun <T> CaptureRequest.Builder.supportsApertureKey(key: CaptureRequest.Key<T>, value: T): Boolean =
    try {
        // A defined but unset tag can be read even if its vendor type cannot marshal this value.
        val original = get(key)
        set(key, value)
        set(key, original)
        true
    } catch (e: RuntimeException) {
        PLog.d("LensApertureControl", "Aperture request key ${key.name} unavailable: ${e.message}")
        false
    }
