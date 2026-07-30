package com.hinnka.mycamera.utils

import android.os.Build
import com.hinnka.mycamera.BuildConfig
import java.util.Locale

const val OPPO_EXIF_USER_COMMENT = "oplus_13422822400"

internal fun encodeExifAsciiUserComment(value: String): ByteArray {
    val encodingPrefix = byteArrayOf(
        'A'.code.toByte(),
        'S'.code.toByte(),
        'C'.code.toByte(),
        'I'.code.toByte(),
        'I'.code.toByte(),
        0,
        0,
        0,
    )
    return encodingPrefix + value.toByteArray(Charsets.US_ASCII)
}

internal fun selectExifModel(deviceModel: String, buildModel: String): String {
    val isPrintableAscii = deviceModel.isNotEmpty() &&
        deviceModel.all { character -> character.code in 0x20..0x7E }
    return if (isPrintableAscii) deviceModel else buildModel
}

internal fun formatExifLensModel(
    model: String,
    focalLength35mm: Int?,
    aperture: Float?,
): String? {
    val focalLength = focalLength35mm?.takeIf { it > 0 } ?: return null
    val fNumber = aperture?.takeIf { it.isFinite() && it > 0f } ?: return null
    val cameraType = when {
        focalLength <= 18 -> "ultra wide camera"
        focalLength < 40 -> "wide camera"
        focalLength < 150 -> "telephoto camera"
        else -> "ultra telephoto camera"
    }
    return String.format(
        Locale.US,
        "%s %s %dmm f/%.1f",
        model,
        cameraType,
        focalLength,
        fNumber,
    )
}

object DeviceUtil {
    val model: String
        get() {
            return SystemPropertiesUtil.get("ro.vivo.market.name")
                ?: SystemPropertiesUtil.get("ro.vendor.oplus.market.name")
                ?: SystemPropertiesUtil.get("ro.product.marketname")
                ?: SystemPropertiesUtil.get("ro.config.marketing_name")
                ?: SystemPropertiesUtil.get("ro.vendor.product.display")
                ?: SystemPropertiesUtil.get("ro.config.devicename")
                ?: SystemPropertiesUtil.get("ro.product.vendor.model")
                ?: Build.MODEL
        }

    val exifModel: String
        get() = selectExifModel(model, Build.MODEL)

    fun buildExifLensModel(
        focalLength35mm: Int?,
        aperture: Float?,
        model: String = exifModel,
    ): String? = formatExifLensModel(
        model = model,
        focalLength35mm = focalLength35mm,
        aperture = aperture,
    )

    val isQualcomm: Boolean
        get() {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) {
                if (Build.SOC_MANUFACTURER.lowercase().contains("qualcomm")) {
                    return true
                }
            }
            val board = Build.BOARD.lowercase()
            val hardware = Build.HARDWARE.lowercase()
            val platform = SystemPropertiesUtil.get("ro.board.platform")?.lowercase() ?: ""
            return board.contains("qcom") ||
                    hardware.contains("qcom") ||
                    platform.startsWith("msm") ||
                    platform.startsWith("sdm") ||
                    platform.startsWith("sm") ||
                    platform.contains("qcom")
        }

    val isHarmonyOS: Boolean
        get() {
            val list = listOf(
                "ro.product.anco.devicetype",
                "ro.sys.anco.product.software.version",
                "ro.product.os.dist.anco.apiversion",
                "ro.product.os.dist.anco.releasetype"
            )
            return list.any { SystemPropertiesUtil.get(it)?.isNotEmpty() == true }
        }

    val isSamsung: Boolean
        get() {
            return Build.MANUFACTURER.lowercase() == "samsung"
                    || Build.BRAND.lowercase() == "samsung"
        }

    val isGoogle: Boolean
        get() {
            return Build.MANUFACTURER.lowercase() == "google"
                    || Build.BRAND.lowercase() == "google"
        }

    val isHuawei: Boolean
        get() {
            return Build.MANUFACTURER.lowercase() == "huawei"
                    || Build.BRAND.lowercase() == "huawei"
        }

    val isOppo: Boolean
        get() {
            return Build.MANUFACTURER.equals("oppo", ignoreCase = true)
                    || Build.BRAND.equals("oppo", ignoreCase = true)
        }

    val canShowPhantom: Boolean
        get() = BuildConfig.FLAVOR != "google"

}
