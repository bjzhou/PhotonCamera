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
    }
}
