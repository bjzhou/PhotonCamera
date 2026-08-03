package com.hinnka.mycamera.ui.components

import android.content.ContentValues
import android.content.Context
import android.os.Environment
import android.provider.MediaStore
import android.widget.Toast
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Clear
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import com.hinnka.mycamera.R
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.ui.icons.AppIcons
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale

/**
 * 日志查看器弹窗
 */
@Composable
fun LogViewerDialog(
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()
    val logs = remember { PLog.getAllLogs() }
    val logStats = remember { PLog.getLogStats() }
    val downloadSuccessMessage = stringResource(R.string.log_download_success)
    val downloadFailedMessage = stringResource(R.string.log_download_failed)

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(
            usePlatformDefaultWidth = false,
            dismissOnBackPress = true,
            dismissOnClickOutside = true
        )
    ) {
        Surface(
            modifier = modifier
                .fillMaxWidth(0.95f)
                .fillMaxHeight(0.9f),
            shape = RoundedCornerShape(16.dp),
            color = Color(0xFF2B2F3A)
        ) {
            Column(
                modifier = Modifier.fillMaxSize()
            ) {
                // 标题栏
                LogViewerHeader(
                    logCount = logs.size,
                    onDownload = {
                        val formattedLogs = PLog.getFormattedLogs()
                        coroutineScope.launch {
                            val fileName = withContext(Dispatchers.IO) {
                                downloadLogs(context, formattedLogs).getOrNull()
                            }
                            val message = if (fileName != null) {
                                downloadSuccessMessage.format(fileName)
                            } else {
                                downloadFailedMessage
                            }
                            Toast.makeText(context, message, Toast.LENGTH_SHORT).show()
                        }
                    },
                    onClear = {
                        PLog.clearLogs()
                        Toast.makeText(context, "日志已清空", Toast.LENGTH_SHORT).show()
                        onDismiss()
                    },
                    onDismiss = onDismiss
                )

                // 统计信息
                LogStatsBar(logStats)

                HorizontalDivider(
                    color = Color.White.copy(alpha = 0.1f),
                    modifier = Modifier.padding(horizontal = 16.dp)
                )

                // 日志内容区域
                if (logs.isEmpty()) {
                    EmptyLogsView()
                } else {
                    LogContentView(logs = logs, context = context)
                }
            }
        }
    }
}

/**
 * 日志查看器头部
 */
@Composable
private fun LogViewerHeader(
    logCount: Int,
    onDownload: () -> Unit,
    onClear: () -> Unit,
    onDismiss: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(16.dp),
        horizontalArrangement = Arrangement.SpaceBetween,
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column {
            Text(
                text = "日志查看器",
                color = Color.White,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold
            )
            Text(
                text = "共 $logCount 条日志",
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 12.sp
            )
        }

        Row(
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            // 下载日志按钮
            IconButton(
                onClick = onDownload,
                colors = IconButtonDefaults.iconButtonColors(
                    containerColor = Color(0xFF4CAF50).copy(alpha = 0.2f)
                )
            ) {
                Icon(
                    imageVector = AppIcons.Download,
                    contentDescription = stringResource(R.string.log_download),
                    tint = Color(0xFF4CAF50)
                )
            }

            // 清空按钮
            IconButton(
                onClick = onClear,
                colors = IconButtonDefaults.iconButtonColors(
                    containerColor = Color(0xFFF44336).copy(alpha = 0.2f)
                )
            ) {
                Icon(
                    imageVector = Icons.Default.Clear,
                    contentDescription = "清空日志",
                    tint = Color(0xFFF44336)
                )
            }

            // 关闭按钮
            TextButton(onClick = onDismiss) {
                Text(
                    text = "关闭",
                    color = Color.White,
                    fontSize = 14.sp
                )
            }
        }
    }
}

/**
 * 日志统计栏
 */
@Composable
private fun LogStatsBar(logStats: Map<PLog.LogLevel, Int>) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 12.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        LogLevelChip("V", logStats[PLog.LogLevel.VERBOSE] ?: 0, Color(0xFF9E9E9E))
        LogLevelChip("D", logStats[PLog.LogLevel.DEBUG] ?: 0, Color(0xFF2196F3))
        LogLevelChip("I", logStats[PLog.LogLevel.INFO] ?: 0, Color(0xFF4CAF50))
        LogLevelChip("W", logStats[PLog.LogLevel.WARNING] ?: 0, Color(0xFFFF9800))
        LogLevelChip("E", logStats[PLog.LogLevel.ERROR] ?: 0, Color(0xFFF44336))
    }
}

/**
 * 日志等级标签
 */
@Composable
private fun RowScope.LogLevelChip(
    level: String,
    count: Int,
    color: Color
) {
    Surface(
        modifier = Modifier.weight(1f),
        shape = RoundedCornerShape(8.dp),
        color = color.copy(alpha = 0.2f)
    ) {
        Row(
            modifier = Modifier.padding(vertical = 6.dp, horizontal = 8.dp),
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = level,
                color = color,
                fontSize = 12.sp,
                fontWeight = FontWeight.Bold
            )
            Spacer(modifier = Modifier.width(4.dp))
            Text(
                text = count.toString(),
                color = Color.White,
                fontSize = 11.sp
            )
        }
    }
}

/**
 * 空日志视图
 */
@Composable
private fun EmptyLogsView() {
    Box(
        modifier = Modifier.fillMaxSize(),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = "📋",
                fontSize = 48.sp
            )
            Text(
                text = "暂无日志记录",
                color = Color.White.copy(alpha = 0.6f),
                fontSize = 16.sp
            )
            Text(
                text = "应用运行时的日志将显示在这里",
                color = Color.White.copy(alpha = 0.4f),
                fontSize = 12.sp
            )
        }
    }
}

/**
 * 日志内容视图
 */
@Composable
private fun LogContentView(
    logs: List<PLog.LogEntry>,
    context: Context
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp)
    ) {
        Surface(
            modifier = Modifier.fillMaxSize(),
            shape = RoundedCornerShape(8.dp),
            color = Color(0xFF1E1E1E)
        ) {
            val verticalScrollState = rememberScrollState()
            val horizontalScrollState = rememberScrollState()

            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .verticalScroll(verticalScrollState)
                    .horizontalScroll(horizontalScrollState)
                    .padding(12.dp)
            ) {
                logs.forEach { logEntry ->
                    LogEntryItem(logEntry = logEntry, context = context)
                }
            }
        }
    }
}

/**
 * 单条日志项
 */
@Composable
private fun LogEntryItem(
    logEntry: PLog.LogEntry,
    context: Context
) {
    val levelColor = when (logEntry.level) {
        PLog.LogLevel.VERBOSE -> Color(0xFF9E9E9E)
        PLog.LogLevel.DEBUG -> Color(0xFF2196F3)
        PLog.LogLevel.INFO -> Color(0xFF4CAF50)
        PLog.LogLevel.WARNING -> Color(0xFFFF9800)
        PLog.LogLevel.ERROR -> Color(0xFFF44336)
    }

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(bottom = 8.dp)
    ) {
        Row(
            verticalAlignment = Alignment.Top,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            // 时间戳
            Text(
                text = logEntry.getFormattedTime(),
                color = Color(0xFF888888),
                fontSize = 10.sp,
                fontFamily = FontFamily.Monospace
            )

            // 等级
            Text(
                text = when (logEntry.level) {
                    PLog.LogLevel.VERBOSE -> "V"
                    PLog.LogLevel.DEBUG -> "D"
                    PLog.LogLevel.INFO -> "I"
                    PLog.LogLevel.WARNING -> "W"
                    PLog.LogLevel.ERROR -> "E"
                },
                color = levelColor,
                fontSize = 10.sp,
                fontWeight = FontWeight.Bold,
                fontFamily = FontFamily.Monospace
            )

            // 标签
            Text(
                text = logEntry.tag,
                color = Color(0xFF00BCD4),
                fontSize = 10.sp,
                fontWeight = FontWeight.Medium,
                fontFamily = FontFamily.Monospace
            )
        }

        // 消息
        Text(
            text = logEntry.message,
            color = Color.White,
            fontSize = 11.sp,
            fontFamily = FontFamily.Monospace,
            modifier = Modifier.padding(start = 4.dp, top = 2.dp)
        )

        // 异常堆栈
        logEntry.throwable?.let { throwable ->
            Text(
                text = android.util.Log.getStackTraceString(throwable),
                color = Color(0xFFFF5252),
                fontSize = 10.sp,
                fontFamily = FontFamily.Monospace,
                modifier = Modifier.padding(start = 4.dp, top = 4.dp)
            )
        }

        // 分隔线
        HorizontalDivider(
            color = Color.White.copy(alpha = 0.05f),
            modifier = Modifier.padding(top = 8.dp)
        )
    }
}

/**
 * 将日志直接保存到系统下载目录。
 */
private fun downloadLogs(context: Context, text: String): Result<String> = runCatching {
    val fileName = "Photon_logs_${
        SimpleDateFormat("yyyyMMdd_HHmmss", Locale.US).format(Date())
    }.txt"
    val resolver = context.contentResolver
    val values = ContentValues().apply {
        put(MediaStore.Downloads.DISPLAY_NAME, fileName)
        put(MediaStore.Downloads.MIME_TYPE, "text/plain")
        put(MediaStore.Downloads.RELATIVE_PATH, Environment.DIRECTORY_DOWNLOADS)
        put(MediaStore.Downloads.IS_PENDING, 1)
    }
    val uri = checkNotNull(
        resolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, values)
    ) { "Unable to create log file in Downloads" }

    try {
        checkNotNull(resolver.openOutputStream(uri, "w")) {
            "Unable to open log file for writing"
        }.bufferedWriter(Charsets.UTF_8).use { writer ->
            writer.write(text)
        }
        values.clear()
        values.put(MediaStore.Downloads.IS_PENDING, 0)
        resolver.update(uri, values, null, null)
        fileName
    } catch (error: Throwable) {
        resolver.delete(uri, null, null)
        throw error
    }
}
