package com.hinnka.mycamera.update

import android.content.Context
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import java.io.File

data class AppUpdateRelease(
    val versionName: String?,
    val downloadUrl: String,
    val fileName: String
)

object AppUpdateManager {
    val readyApk: StateFlow<File?> = MutableStateFlow(null)

    suspend fun checkForUpdate(currentVersion: String = ""): AppUpdateRelease? = null

    fun startSilentUpdate(context: Context) = Unit

    suspend fun downloadApk(context: Context, release: AppUpdateRelease): File {
        throw UnsupportedOperationException("App updates are disabled for the Google flavor.")
    }

    fun consumeReadyApk(apkFile: File?) = Unit

    fun startInstall(context: Context, apkFile: File): Boolean = false
}
