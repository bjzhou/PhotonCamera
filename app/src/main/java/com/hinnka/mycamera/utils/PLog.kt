package com.hinnka.mycamera.utils

import android.os.Build
import android.util.Log
import java.text.SimpleDateFormat
import java.util.*
import java.util.concurrent.ConcurrentLinkedQueue

/**
 * 日志管理工具
 * 用于收集和管理应用日志
 */
object PLog {
    private const val TAG = "LogManager"
    private const val MAX_LOG_SIZE = 500 // 最多保存500条日志

    // 使用线程安全的队列存储日志
    private val logQueue = ConcurrentLinkedQueue<LogEntry>()

    // 日志等级
    enum class LogLevel {
        VERBOSE, DEBUG, INFO, WARNING, ERROR
    }

    // 日志条目
    data class LogEntry(
        val timestamp: Long,
        val level: LogLevel,
        val tag: String,
        val message: String,
        val throwable: Throwable? = null
    ) {
        fun getFormattedTime(): String {
            val sdf = SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.getDefault())
            return sdf.format(Date(timestamp))
        }

        fun getFormattedLog(): String {
            val levelStr = when (level) {
                LogLevel.VERBOSE -> "V"
                LogLevel.DEBUG -> "D"
                LogLevel.INFO -> "I"
                LogLevel.WARNING -> "W"
                LogLevel.ERROR -> "E"
            }

            val throwableStr = throwable?.let { "\n${Log.getStackTraceString(it)}" } ?: ""
            return "${getFormattedTime()} $levelStr/$tag: $message$throwableStr"
        }
    }

    /**
     * 记录 VERBOSE 级别日志
     */
    fun v(tag: String, message: String) {
        addLog(LogLevel.VERBOSE, tag, message)
        Log.v("PLog_$tag", message)
    }

    /**
     * 记录 DEBUG 级别日志
     */
    fun d(tag: String, message: String) {
        addLog(LogLevel.DEBUG, tag, message)
        Log.d("PLog_$tag", message)
    }

    /**
     * 记录 INFO 级别日志
     */
    fun i(tag: String, message: String) {
        addLog(LogLevel.INFO, tag, message)
        Log.i("PLog_$tag", message)
    }

    /**
     * 记录 WARNING 级别日志
     */
    fun w(tag: String, message: String, throwable: Throwable? = null) {
        addLog(LogLevel.WARNING, tag, message, throwable)
        if (throwable != null) {
            Log.w("PLog_$tag", message, throwable)
        } else {
            Log.w("PLog_$tag", message)
        }
    }

    /**
     * 记录 ERROR 级别日志
     */
    fun e(tag: String, message: String, throwable: Throwable? = null) {
        addLog(LogLevel.ERROR, tag, message, throwable)
        if (throwable != null) {
            Log.e("PLog_$tag", message, throwable)
        } else {
            Log.e("PLog_$tag", message)
        }
    }

    /**
     * 添加日志到队列
     */
    private fun addLog(level: LogLevel, tag: String, message: String, throwable: Throwable? = null) {
        val entry = LogEntry(
            timestamp = System.currentTimeMillis(),
            level = level,
            tag = tag,
            message = message,
            throwable = throwable
        )

        logQueue.offer(entry)

        // 如果超过最大数量，移除最早的日志
        while (logQueue.size > MAX_LOG_SIZE) {
            logQueue.poll()
        }
    }

    /**
     * 获取所有日志
     */
    fun getAllLogs(): List<LogEntry> {
        return logQueue.reversed()
    }

    /**
     * 获取格式化的所有日志文本
     */
    fun getFormattedLogs(): String {
        if (logQueue.isEmpty()) {
            return "暂无日志记录"
        }

        return buildString {
            appendLine("=== MyCamera 日志记录 ===")
            appendLine("导出时间: ${SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).format(Date())}")
            appendLine("日志总数: ${logQueue.size}")
            appendLine("厂商: ${Build.MANUFACTURER}")
            appendLine("型号: ${Build.MODEL}")
            appendLine("Android 版本: ${Build.VERSION.RELEASE}")
            appendLine("=".repeat(50))
            appendLine()

            getAllLogs().forEach { entry ->
                appendLine(entry.getFormattedLog())
            }
        }
    }

    /**
     * 清空所有日志
     */
    fun clearLogs() {
        logQueue.clear()
        Log.i(TAG, "日志已清空")
    }

    /**
     * 获取指定等级的日志
     */
    fun getLogsByLevel(level: LogLevel): List<LogEntry> {
        return logQueue.filter { it.level == level }
    }

    /**
     * 获取指定标签的日志
     */
    fun getLogsByTag(tag: String): List<LogEntry> {
        return logQueue.filter { it.tag == tag }
    }

    /**
     * 获取日志统计信息
     */
    fun getLogStats(): Map<LogLevel, Int> {
        return LogLevel.entries.associateWith { level ->
            logQueue.count { it.level == level }
        }
    }
}
