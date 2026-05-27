package com.hinnka.mycamera.ui.components

import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.LocalContext
import androidx.annotation.StringRes

@Composable
fun stringResource(@StringRes id: Int): String {
    val name = FallbackStringDict.idToKeyMap[id]
    if (name != null) {
        val isZh = java.util.Locale.getDefault().language == "zh"
        return if (isZh) {
            FallbackStringDict.zhMap[name] ?: FallbackStringDict.enMap[name] ?: name
        } else {
            FallbackStringDict.enMap[name] ?: name
        }
    }

    val context = LocalContext.current
    return try {
        context.resources.getString(id)
    } catch (e: Exception) {
        val entryName = try {
            context.resources.getResourceEntryName(id)
        } catch (ex: Exception) {
            null
        }
        entryName?.let { name ->
            val isZh = java.util.Locale.getDefault().language == "zh"
            if (isZh) {
                FallbackStringDict.zhMap[name] ?: FallbackStringDict.enMap[name] ?: name
            } else {
                FallbackStringDict.enMap[name] ?: name
            }
        } ?: ""
    }
}

@Composable
fun stringResource(@StringRes id: Int, vararg formatArgs: Any): String {
    val name = FallbackStringDict.idToKeyMap[id]
    if (name != null) {
        val isZh = java.util.Locale.getDefault().language == "zh"
        val rawTemplate = if (isZh) {
            FallbackStringDict.zhMap[name] ?: FallbackStringDict.enMap[name] ?: name
        } else {
            FallbackStringDict.enMap[name] ?: name
        }
        return try {
            String.format(rawTemplate, *formatArgs)
        } catch (ex: Exception) {
            rawTemplate
        }
    }

    val context = LocalContext.current
    return try {
        context.resources.getString(id, *formatArgs)
    } catch (e: Exception) {
        val entryName = try {
            context.resources.getResourceEntryName(id)
        } catch (ex: Exception) {
            null
        }
        entryName?.let { name ->
            val isZh = java.util.Locale.getDefault().language == "zh"
            val rawTemplate = if (isZh) {
                FallbackStringDict.zhMap[name] ?: FallbackStringDict.enMap[name] ?: name
            } else {
                FallbackStringDict.enMap[name] ?: name
            }
            try {
                String.format(rawTemplate, *formatArgs)
            } catch (ex: Exception) {
                rawTemplate
            }
        } ?: ""
    }
}
