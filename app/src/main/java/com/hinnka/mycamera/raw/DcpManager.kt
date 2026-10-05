package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.data.CustomImportManager

class DcpManager(private val context: Context) {
    private val customImportManager = CustomImportManager(context)

    fun getAvailableDcps(): List<DcpInfo> {
        return (getBuiltInDcps() + customImportManager.getCustomDcps()).distinctBy { it.id }
    }

    private fun getBuiltInDcps(): List<DcpInfo> {
        val files = runCatching { context.assets.list(BUILT_IN_DCP_DIR)?.toList().orEmpty() }.getOrDefault(emptyList())
        return files
            .filter { it.endsWith(".dcp", ignoreCase = true) }
            .sorted()
            .map { fileName ->
                val displayName = fileName.substringBeforeLast('.')
                DcpInfo(
                    id = "builtin_dcp_$displayName",
                    nameMap = mapOf("en" to displayName, "zh" to displayName),
                    filePath = "$BUILT_IN_DCP_DIR/$fileName",
                    isBuiltIn = true
                )
            }
    }

    companion object {
        private const val BUILT_IN_DCP_DIR = "dcp"

        /**
         * Oplus（欧加）家族的参考标定 DCP。
         *
         * 该家族的厂商标定（SENSOR_COLOR_TRANSFORM / ForwardMatrix 与 CameraNeutral）口径
         * 不一致，直接用会偏色；这份 Adobe 实测的 profile 才是可用的色彩矫正来源。
         * 与 `oneplus_ace2.json` 使用同一文件，保证家族内色彩口径一致。
         */
        const val OPLUS_REFERENCE_RAW_DCP_ID =
            "builtin_dcp_OPPO Find X8 Ultra back camera 8.67mm f1.8 Adobe Standard"
    }
}
