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

    /**
     * Oplus（欧加）家族厂牌：oppo / realme / oneplus / oplus。
     *
     * RAW 色彩流程按品牌级统一处理：本家族共用 Oplus 相机 HAL 与同一套 sensor 标定数据，
     * 其 ForwardMatrix 与 ColorMatrix / CameraNeutral 标定口径不一致；厂商自家相机只写
     * ColorMatrix、不写 ForwardMatrix。故本家族沿用与 OPPO 完全相同的取舍。
     *
     * 判据须与 native 侧 `isOplusRawColorCameraMake` 保持同步。
     */
    internal val OPLUS_FAMILY_MANUFACTURERS = setOf("oppo", "realme", "oneplus", "oplus")

    /** 按给定厂牌字符串判定，语义同 [isOplusFamily]；供按设备配置推断厂牌的调用方使用。 */
    fun isOplusFamilyManufacturer(manufacturer: String?): Boolean {
        val normalized = manufacturer?.trim()?.lowercase()
        if (normalized.isNullOrEmpty()) {
            return false
        }
        return OPLUS_FAMILY_MANUFACTURERS.any { family ->
            normalized == family || normalized.startsWith("$family ")
        }
    }

    /** 是否属于 Oplus 家族，见 [OPLUS_FAMILY_MANUFACTURERS]。 */
    val isOplusFamily: Boolean
        get() {
            return isOplusFamilyManufacturer(Build.MANUFACTURER)
                    || isOplusFamilyManufacturer(Build.BRAND)
        }

    val isOppo: Boolean
        get() {
            return Build.MANUFACTURER.equals("oppo", ignoreCase = true)
                    || Build.BRAND.equals("oppo", ignoreCase = true)
        }

    val canShowPhantom: Boolean
        get() = BuildConfig.FLAVOR != "google"

}
