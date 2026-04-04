package com.hinnka.mycamera.utils

import android.os.Build
import com.hinnka.mycamera.BuildConfig

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

    val canShowPhantom: Boolean
        get() = BuildConfig.FLAVOR != "google"

    val defaultGpuAcceleration: Boolean
        get() = true
}