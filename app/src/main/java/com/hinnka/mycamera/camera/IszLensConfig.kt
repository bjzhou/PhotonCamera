package com.hinnka.mycamera.camera

import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawWhiteLevelCorrection
import com.google.gson.JsonArray
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import java.util.Locale
import kotlin.math.abs
import kotlin.math.roundToInt

data class IszLensConfig(
    val baseCameraId: String,
    val iszZoomRatio: Float,
    val isMacro: Boolean = false,
    val rawBlackBorderCrop: RawBlackBorderCrop = RawBlackBorderCrop(),
    val vendorCaptureProfileId: String? = null,
    val rawBlackBorderCropUsesLegacyPortraitCoordinates: Boolean = false,
) {
    val virtualCameraId: String
        get() = createVirtualCameraId(baseCameraId, iszZoomRatio, vendorCaptureProfileId)

    fun toJsonObject(): JsonObject {
        return JsonObject().apply {
            addProperty(KEY_BASE_CAMERA_ID, baseCameraId)
            addProperty(KEY_ISZ_ZOOM_RATIO, iszZoomRatio)
            addProperty(KEY_IS_MACRO, isMacro)
            sanitizeVendorCaptureProfileId(vendorCaptureProfileId)?.let {
                addProperty(KEY_VENDOR_CAPTURE_PROFILE_ID, it)
            }
            val sanitizedCrop = sanitizeRawBlackBorderCrop(rawBlackBorderCrop)
            if (rawBlackBorderCropUsesLegacyPortraitCoordinates) {
                addProperty(KEY_RAW_BLACK_BORDER_CROP_LEFT_PX, sanitizedCrop.leftPx)
                addProperty(KEY_RAW_BLACK_BORDER_CROP_TOP_PX, sanitizedCrop.topPx)
                addProperty(KEY_RAW_BLACK_BORDER_CROP_RIGHT_PX, sanitizedCrop.rightPx)
                addProperty(KEY_RAW_BLACK_BORDER_CROP_BOTTOM_PX, sanitizedCrop.bottomPx)
            } else {
                addProperty(KEY_RAW_BLACK_BORDER_CROP_SENSOR_LEFT_PX, sanitizedCrop.leftPx)
                addProperty(KEY_RAW_BLACK_BORDER_CROP_SENSOR_TOP_PX, sanitizedCrop.topPx)
                addProperty(KEY_RAW_BLACK_BORDER_CROP_SENSOR_RIGHT_PX, sanitizedCrop.rightPx)
                addProperty(KEY_RAW_BLACK_BORDER_CROP_SENSOR_BOTTOM_PX, sanitizedCrop.bottomPx)
            }
        }
    }

    fun migrateLegacyPortraitCrop(sensorRotation: Int): IszLensConfig {
        if (!rawBlackBorderCropUsesLegacyPortraitCoordinates) return this
        return copy(
            rawBlackBorderCrop = portraitCropToSensor(rawBlackBorderCrop, sensorRotation),
            rawBlackBorderCropUsesLegacyPortraitCoordinates = false,
        )
    }

    fun rawBlackBorderCropForPortraitDisplay(sensorRotation: Int): RawBlackBorderCrop {
        return if (rawBlackBorderCropUsesLegacyPortraitCoordinates) {
            rawBlackBorderCrop
        } else {
            sensorCropToPortrait(rawBlackBorderCrop, sensorRotation)
        }
    }

    companion object {
        private const val KEY_BASE_CAMERA_ID = "base_camera_id"
        private const val KEY_ISZ_ZOOM_RATIO = "isz_zoom_ratio"
        private const val KEY_IS_MACRO = "is_macro"
        private const val KEY_VENDOR_CAPTURE_PROFILE_ID = "vendor_capture_profile_id"
        private const val KEY_RAW_BLACK_BORDER_CROP_PX = "raw_black_border_crop_px"
        private const val KEY_RAW_BLACK_BORDER_CROP_LEFT_PX = "raw_black_border_crop_left_px"
        private const val KEY_RAW_BLACK_BORDER_CROP_TOP_PX = "raw_black_border_crop_top_px"
        private const val KEY_RAW_BLACK_BORDER_CROP_RIGHT_PX = "raw_black_border_crop_right_px"
        private const val KEY_RAW_BLACK_BORDER_CROP_BOTTOM_PX = "raw_black_border_crop_bottom_px"
        private const val KEY_RAW_BLACK_BORDER_CROP_SENSOR_LEFT_PX =
            "raw_black_border_crop_sensor_left_px"
        private const val KEY_RAW_BLACK_BORDER_CROP_SENSOR_TOP_PX =
            "raw_black_border_crop_sensor_top_px"
        private const val KEY_RAW_BLACK_BORDER_CROP_SENSOR_RIGHT_PX =
            "raw_black_border_crop_sensor_right_px"
        private const val KEY_RAW_BLACK_BORDER_CROP_SENSOR_BOTTOM_PX =
            "raw_black_border_crop_sensor_bottom_px"
        private const val MAX_RAW_BLACK_BORDER_CROP_PX = 4096
        private const val VIRTUAL_CAMERA_ID_PREFIX = "isz"

        fun createVirtualCameraId(
            baseCameraId: String,
            iszZoomRatio: Float,
            vendorCaptureProfileId: String? = null
        ): String {
            val baseId = "$VIRTUAL_CAMERA_ID_PREFIX:$baseCameraId:${formatRatioForId(iszZoomRatio)}"
            val profileId = sanitizeVendorCaptureProfileId(vendorCaptureProfileId) ?: return baseId
            return "$baseId:$profileId"
        }

        fun isVirtualCameraId(cameraId: String?): Boolean {
            return cameraId?.startsWith("$VIRTUAL_CAMERA_ID_PREFIX:") == true
        }

        /**
         * Resolves the real Camera2 device ID represented by a persisted lens ID.
         *
         * ISZ IDs are application-level identities and must never be passed to Camera2. The
         * corresponding configuration is authoritative because Camera2 IDs are opaque strings
         * and therefore cannot be safely reconstructed by splitting the virtual ID.
         */
        fun resolveCamera2DeviceId(
            cameraId: String?,
            configs: List<IszLensConfig>,
        ): String? {
            val normalizedCameraId = cameraId?.trim()?.takeIf { it.isNotEmpty() } ?: return null
            if (!isVirtualCameraId(normalizedCameraId)) return normalizedCameraId

            return configs
                .firstOrNull { it.virtualCameraId == normalizedCameraId }
                ?.baseCameraId
                ?.trim()
                ?.takeIf { it.isNotEmpty() && !isVirtualCameraId(it) }
        }

        fun deserializeList(value: String?): List<IszLensConfig> {
            if (value.isNullOrBlank()) return emptyList()
            val array = runCatching {
                JsonParser.parseString(value)
                    .takeIf { it.isJsonArray }
                    ?.asJsonArray
            }.getOrNull() ?: return emptyList()
            return buildList {
                for (index in 0 until array.size()) {
                    val obj = array[index].takeIf { it.isJsonObject }?.asJsonObject ?: continue
                    val baseCameraId = obj.stringOrDefault(KEY_BASE_CAMERA_ID).trim()
                    val iszZoomRatio = obj.doubleOrDefault(KEY_ISZ_ZOOM_RATIO, 0.0).toFloat()
                    val isMacro = obj.booleanOrDefault(KEY_IS_MACRO, false)
                    val vendorCaptureProfileId = sanitizeVendorCaptureProfileId(
                        obj.stringOrDefault(KEY_VENDOR_CAPTURE_PROFILE_ID)
                    )
                    val hasSensorCropCoordinates =
                        obj.has(KEY_RAW_BLACK_BORDER_CROP_SENSOR_LEFT_PX) ||
                            obj.has(KEY_RAW_BLACK_BORDER_CROP_SENSOR_TOP_PX) ||
                            obj.has(KEY_RAW_BLACK_BORDER_CROP_SENSOR_RIGHT_PX) ||
                            obj.has(KEY_RAW_BLACK_BORDER_CROP_SENSOR_BOTTOM_PX)
                    val legacyLeftCropPx = obj.intOrDefault(KEY_RAW_BLACK_BORDER_CROP_PX, 0)
                    val rawBlackBorderCrop = sanitizeRawBlackBorderCrop(
                        RawBlackBorderCrop(
                            leftPx = if (hasSensorCropCoordinates) {
                                obj.intOrDefault(KEY_RAW_BLACK_BORDER_CROP_SENSOR_LEFT_PX, 0)
                            } else {
                                obj.intOrDefault(KEY_RAW_BLACK_BORDER_CROP_LEFT_PX, legacyLeftCropPx)
                            },
                            topPx = obj.intOrDefault(
                                if (hasSensorCropCoordinates) {
                                    KEY_RAW_BLACK_BORDER_CROP_SENSOR_TOP_PX
                                } else {
                                    KEY_RAW_BLACK_BORDER_CROP_TOP_PX
                                },
                                0,
                            ),
                            rightPx = obj.intOrDefault(
                                if (hasSensorCropCoordinates) {
                                    KEY_RAW_BLACK_BORDER_CROP_SENSOR_RIGHT_PX
                                } else {
                                    KEY_RAW_BLACK_BORDER_CROP_RIGHT_PX
                                },
                                0,
                            ),
                            bottomPx = obj.intOrDefault(
                                if (hasSensorCropCoordinates) {
                                    KEY_RAW_BLACK_BORDER_CROP_SENSOR_BOTTOM_PX
                                } else {
                                    KEY_RAW_BLACK_BORDER_CROP_BOTTOM_PX
                                },
                                0,
                            ),
                        )
                    )
                    if (baseCameraId.isNotEmpty() && iszZoomRatio >= 1f) {
                        add(
                            IszLensConfig(
                                baseCameraId = baseCameraId,
                                iszZoomRatio = iszZoomRatio,
                                isMacro = isMacro,
                                rawBlackBorderCrop = rawBlackBorderCrop,
                                vendorCaptureProfileId = vendorCaptureProfileId,
                                rawBlackBorderCropUsesLegacyPortraitCoordinates =
                                    !hasSensorCropCoordinates,
                            )
                        )
                    }
                }
            }.distinctBy { it.virtualCameraId }
        }

        fun serializeList(configs: List<IszLensConfig>): String {
            return JsonArray().apply {
                configs
                    .filter { it.baseCameraId.isNotBlank() && it.iszZoomRatio >= 1f }
                    .distinctBy { it.virtualCameraId }
                    .forEach { add(it.toJsonObject()) }
            }.toString()
        }

        fun displayRatioLabel(ratio: Float): String {
            val rounded = ratio.roundToInt()
            return if (abs(ratio - rounded) < 0.05f) {
                "${rounded}x"
            } else {
                String.format(Locale.US, "%.1fx", ratio)
            }
        }

        private fun formatRatioForId(ratio: Float): String {
            return displayRatioLabel(ratio).dropLast(1)
        }

        fun sanitizeVendorCaptureProfileId(value: String?): String? {
            val trimmed = value?.trim()?.takeIf { it.isNotEmpty() } ?: return null
            return trimmed
                .map { char ->
                    if (char.isLetterOrDigit() || char == '_' || char == '-' || char == '.') {
                        char
                    } else {
                        '_'
                    }
                }
                .joinToString(separator = "")
                .take(160)
                .takeIf { it.isNotBlank() }
        }

        fun sanitizeRawBlackBorderCropPx(value: Int): Int {
            return value.coerceIn(0, MAX_RAW_BLACK_BORDER_CROP_PX)
        }

        fun sanitizeRawBlackBorderCrop(crop: RawBlackBorderCrop): RawBlackBorderCrop {
            return RawBlackBorderCrop(
                leftPx = sanitizeRawBlackBorderCropPx(crop.leftPx),
                topPx = sanitizeRawBlackBorderCropPx(crop.topPx),
                rightPx = sanitizeRawBlackBorderCropPx(crop.rightPx),
                bottomPx = sanitizeRawBlackBorderCropPx(crop.bottomPx)
            )
        }

        fun portraitCropToSensor(
            portraitCrop: RawBlackBorderCrop,
            sensorRotation: Int,
        ): RawBlackBorderCrop = rotateCropEdges(portraitCrop, sensorRotation)

        fun sensorCropToPortrait(
            sensorCrop: RawBlackBorderCrop,
            sensorRotation: Int,
        ): RawBlackBorderCrop = rotateCropEdges(sensorCrop, -sensorRotation)

        private fun rotateCropEdges(crop: RawBlackBorderCrop, rotation: Int): RawBlackBorderCrop {
            val sanitized = sanitizeRawBlackBorderCrop(crop)
            return when (Math.floorMod(rotation, 360)) {
                90 -> RawBlackBorderCrop(
                    leftPx = sanitized.topPx,
                    topPx = sanitized.rightPx,
                    rightPx = sanitized.bottomPx,
                    bottomPx = sanitized.leftPx,
                )

                180 -> RawBlackBorderCrop(
                    leftPx = sanitized.rightPx,
                    topPx = sanitized.bottomPx,
                    rightPx = sanitized.leftPx,
                    bottomPx = sanitized.topPx,
                )

                270 -> RawBlackBorderCrop(
                    leftPx = sanitized.bottomPx,
                    topPx = sanitized.leftPx,
                    rightPx = sanitized.topPx,
                    bottomPx = sanitized.rightPx,
                )

                else -> sanitized
            }
        }

        private fun JsonObject.stringOrDefault(key: String, defaultValue: String = ""): String {
            return runCatching { get(key)?.takeUnless { it.isJsonNull }?.asString }
                .getOrNull()
                ?: defaultValue
        }

        private fun JsonObject.doubleOrDefault(key: String, defaultValue: Double): Double {
            return runCatching { get(key)?.takeUnless { it.isJsonNull }?.asDouble }
                .getOrNull()
                ?: defaultValue
        }

        private fun JsonObject.booleanOrDefault(key: String, defaultValue: Boolean): Boolean {
            return runCatching { get(key)?.takeUnless { it.isJsonNull }?.asBoolean }
                .getOrNull()
                ?: defaultValue
        }

        private fun JsonObject.intOrDefault(key: String, defaultValue: Int): Int {
            return runCatching { get(key)?.takeUnless { it.isJsonNull }?.asInt }
                .getOrNull()
                ?: defaultValue
        }
    }
}

data class RawBlackBorderCrop(
    val leftPx: Int = 0,
    val topPx: Int = 0,
    val rightPx: Int = 0,
    val bottomPx: Int = 0
) {
    val hasCrop: Boolean
        get() = leftPx > 0 || topPx > 0 || rightPx > 0 || bottomPx > 0

    /**
     * Maps native RAW crop margins onto a uniformly resampled output pixel grid.
     *
     * ISZ lens settings are recorded against the camera's native RAW dimensions. RAWmax may
     * produce a larger RAW grid, so keeping the native pixel counts would leave part of the
     * configured black border in the rendered image.
     */
    internal fun scaledForOutput(outputScale: Float): RawBlackBorderCrop {
        if (!hasCrop || !outputScale.isFinite() || outputScale <= 0f || outputScale == 1f) {
            return this
        }

        fun scaleMargin(value: Int): Int {
            return (value.coerceAtLeast(0).toFloat() * outputScale)
                .roundToInt()
                .coerceAtLeast(0)
        }

        return RawBlackBorderCrop(
            leftPx = scaleMargin(leftPx),
            topPx = scaleMargin(topPx),
            rightPx = scaleMargin(rightPx),
            bottomPx = scaleMargin(bottomPx)
        )
    }
}

/**
 * RAW DNG 元数据校正参数，会以 ISZ 虚拟镜头 ID 为键持久化。
 *
 * ISZ 镜头和其基础物理镜头共用同一枚传感器，但其输出的 RAW 元数据可能不同，
 * 因此不能复用基础镜头的校正值。
 */
data class IszRawDngMetadataCorrections(
    val blackLevelMode: String = RawCfaCorrection.MODE_DEFAULT,
    val customBlackLevel: Float = 0f,
    val whiteLevelMode: String = RawWhiteLevelCorrection.MODE_DEFAULT,
    val customWhiteLevel: Float = 0f,
    val cfaCorrectionMode: String = RawCfaCorrection.MODE_DEFAULT
)
