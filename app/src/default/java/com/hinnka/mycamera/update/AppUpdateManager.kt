package com.hinnka.mycamera.update

import android.content.ActivityNotFoundException
import android.content.Context
import android.content.Intent
import android.content.pm.PackageInfo
import android.net.Uri
import android.os.Environment
import android.provider.Settings
import androidx.core.content.FileProvider
import androidx.core.net.toUri
import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Deferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.async
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.io.File
import java.io.FileOutputStream
import java.net.HttpURLConnection
import java.net.URL
import java.net.URLEncoder
import java.util.concurrent.TimeUnit

data class AppUpdateRelease(
    val versionName: String?,
    val downloadUrl: String,
    val fileName: String
)

object AppUpdateManager {
    private const val TAG = "AppUpdateManager"
    private const val VERSION_CHECK_URL = "https://camera-api.hinnka.me/api/version/check"
    private const val APK_MIME_TYPE = "application/vnd.android.package-archive"
    private const val APK_MAGIC_0 = 'P'.code.toByte()
    private const val APK_MAGIC_1 = 'K'.code.toByte()
    private const val HTTP_RANGE_NOT_SATISFIABLE = 416
    private const val MAX_REDIRECTS = 5

    private val client = OkHttpClient.Builder()
        .connectTimeout(15, TimeUnit.SECONDS)
        .readTimeout(60, TimeUnit.SECONDS)
        .build()
    private val downloadScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)
    private val downloadLock = Any()
    private var activeDownload: Pair<String, Deferred<File>>? = null
    private var activeSilentCheck: Deferred<Unit>? = null
    private val _readyApk = MutableStateFlow<File?>(null)
    val readyApk: StateFlow<File?> = _readyApk.asStateFlow()

    suspend fun checkForUpdate(
        currentVersion: String = BuildConfig.VERSION_NAME,
        flavor: String = BuildConfig.FLAVOR
    ): AppUpdateRelease? =
        withContext(Dispatchers.IO) {
            val encodedVersion = URLEncoder.encode(currentVersion, "UTF-8")
            val encodedFlavor = URLEncoder.encode(flavor, "UTF-8")
            val request = Request.Builder()
                .url("$VERSION_CHECK_URL?current_version=$encodedVersion&flavor=$encodedFlavor")
                .get()
                .build()

            runCatching {
                client.newCall(request).execute().use { response ->
                    if (!response.isSuccessful) {
                        PLog.w(TAG, "Version check failed: code=${response.code} url=${request.url}")
                        return@withContext null
                    }

                    val body = response.body?.string().orEmpty()
                    PLog.d(TAG, "version: $body")
                    val root = JSONObject(body)
                    if (!root.optBoolean("has_update", false)) {
                        PLog.d(TAG, "No update available: current=$currentVersion, flavor=$flavor")
                        return@withContext null
                    }

                    val asset = root.optJSONObject("asset")
                    val assetName = asset?.optString("name").orEmpty()
                    val downloadUrl = asset?.optString("download_url").orEmpty()
                    val isApkAsset = assetName.endsWith(".apk", ignoreCase = true) ||
                        downloadUrl.substringBefore("?").endsWith(".apk", ignoreCase = true)
                    if (downloadUrl.isBlank() || !isApkAsset) {
                        PLog.w(TAG, "Update found but APK asset is missing: flavor=$flavor")
                        return@withContext null
                    }
                    val versionName = root.optString("latest_version")

                    AppUpdateRelease(
                        versionName = versionName,
                        downloadUrl = downloadUrl,
                        fileName = assetName.takeIf { it.endsWith(".apk", ignoreCase = true) }
                            ?: "PhotonCamera-${versionName ?: currentVersion}-update.apk"
                    )
                }
            }.onFailure { error ->
                PLog.e(TAG, "Version check error", error)
            }.getOrNull()
        }

    suspend fun downloadApk(context: Context, release: AppUpdateRelease): File =
        getOrStartDownload(context.applicationContext, release).await()

    fun startSilentUpdate(context: Context) {
        val appContext = context.applicationContext
        synchronized(downloadLock) {
            if (activeSilentCheck?.isActive == true) return
            activeSilentCheck = downloadScope.async {
                runCatching {
                    val release = checkForUpdate() ?: return@async
                    val apkFile = findDownloadedApk(appContext, release)
                        ?: getOrStartDownload(appContext, release).await()
                    _readyApk.value = apkFile
                }.onFailure { error ->
                    PLog.e(TAG, "Silent update failed", error)
                }
            }
        }
    }

    fun findDownloadedApk(context: Context, release: AppUpdateRelease): File? {
        val apkFile = resolveApkFile(context.applicationContext, release)
        return apkFile.takeIf { it.isUsableForRelease(context.applicationContext, release) }
    }

    fun consumeReadyApk(apkFile: File?) {
        if (apkFile == null || _readyApk.value == apkFile) {
            _readyApk.value = null
        }
    }

    fun startInstall(context: Context, apkFile: File): Boolean {
        if (!context.packageManager.canRequestPackageInstalls()) {
            val permissionIntent = Intent(
                Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,
                "package:${context.packageName}".toUri()
            ).apply {
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            return runCatching {
                context.startActivity(permissionIntent)
                false
            }.onFailure { error ->
                PLog.e(TAG, "Failed to open unknown app sources settings", error)
            }.getOrDefault(false)
        }

        val apkUri = FileProvider.getUriForFile(
            context,
            "${context.packageName}.fileprovider",
            apkFile
        )
        val installIntent = Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(apkUri, APK_MIME_TYPE)
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
        }

        return try {
            context.startActivity(installIntent)
            true
        } catch (error: ActivityNotFoundException) {
            PLog.e(TAG, "No installer activity found", error)
            false
        } catch (error: SecurityException) {
            PLog.e(TAG, "Installer launch denied", error)
            false
        }
    }

    private fun String.sanitizeApkFileName(): String {
        val safeName = replace(Regex("[^A-Za-z0-9._-]"), "_")
        return if (safeName.endsWith(".apk", ignoreCase = true)) safeName else "$safeName.apk"
    }

    private fun getOrStartDownload(context: Context, release: AppUpdateRelease): Deferred<File> {
        val key = "${release.downloadUrl}|${release.fileName}"
        synchronized(downloadLock) {
            activeDownload?.let { (activeKey, activeDeferred) ->
                if (activeKey == key && activeDeferred.isActive) return activeDeferred
            }

            val deferred = downloadScope.async {
                runCatching {
                    val apkFile = resolveApkFile(context, release)
                    if (apkFile.isUsableForRelease(context, release)) {
                        PLog.d(TAG, "Reuse downloaded APK: ${apkFile.absolutePath}, size=${apkFile.length()}")
                        return@async apkFile
                    }

                    discardInvalidCachedApk(context, release, apkFile)
                    downloadApkFile(release.downloadUrl, apkFile)
                    if (!apkFile.isUsableForRelease(context, release)) {
                        throw IllegalStateException("Downloaded APK is invalid: ${apkFile.absolutePath}")
                    }
                    PLog.d(TAG, "APK downloaded: ${apkFile.absolutePath}, size=${apkFile.length()}")
                    apkFile
                }.onFailure { error ->
                    PLog.e(TAG, "APK download error", error)
                }.getOrThrow()
            }
            activeDownload = key to deferred
            return deferred
        }
    }

    private fun resolveApkFile(context: Context, release: AppUpdateRelease): File {
        val updateDir = File(
            context.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS)
                ?: File(context.filesDir, Environment.DIRECTORY_DOWNLOADS),
            "updates"
        ).apply { mkdirs() }
        return File(updateDir, release.fileName.sanitizeApkFileName())
    }

    private fun downloadApkFile(downloadUrl: String, apkFile: File) {
        val partFile = File("${apkFile.absolutePath}.part")
        var connection: HttpURLConnection? = null
        try {
            val existingBytes = partFile.takeIf { it.exists() }?.length()?.coerceAtLeast(0L) ?: 0L
            connection = openDownloadConnection(downloadUrl, existingBytes)
            val responseCode = connection.responseCode

            if (responseCode == HTTP_RANGE_NOT_SATISFIABLE && apkFile.isCompleteApk()) {
                partFile.delete()
                return
            }

            val append = existingBytes > 0L && responseCode == HttpURLConnection.HTTP_PARTIAL
            if (responseCode !in listOf(HttpURLConnection.HTTP_OK, HttpURLConnection.HTTP_PARTIAL)) {
                throw IllegalStateException("Download failed: code=$responseCode")
            }
            if (!append && partFile.exists()) {
                partFile.delete()
            }

            connection.inputStream.use { input ->
                FileOutputStream(partFile, append).use { output ->
                    input.copyTo(output)
                }
            }

            if (!partFile.isCompleteApk()) {
                throw IllegalStateException("Downloaded partial file is not a valid APK")
            }
            if (apkFile.exists()) apkFile.delete()
            if (!partFile.renameTo(apkFile)) {
                partFile.copyTo(apkFile, overwrite = true)
                partFile.delete()
            }
        } finally {
            connection?.disconnect()
        }
    }

    private fun openDownloadConnection(downloadUrl: String, existingBytes: Long): HttpURLConnection {
        var url = URL(downloadUrl)
        repeat(MAX_REDIRECTS) {
            val connection = (url.openConnection() as HttpURLConnection).apply {
                instanceFollowRedirects = false
                connectTimeout = 15_000
                readTimeout = 0
                requestMethod = "GET"
                setRequestProperty("Accept", APK_MIME_TYPE)
                if (existingBytes > 0L) {
                    setRequestProperty("Range", "bytes=$existingBytes-")
                }
            }

            val responseCode = connection.responseCode
            if (responseCode in 300..399) {
                val location = connection.getHeaderField("Location")
                connection.disconnect()
                if (location.isNullOrBlank()) {
                    throw IllegalStateException("Download redirect missing location")
                }
                url = URL(url, location)
            } else {
                return connection
            }
        }
        throw IllegalStateException("Too many download redirects")
    }

    private fun File.isCompleteApk(): Boolean {
        if (!exists() || length() < 2L) return false
        return inputStream().use { input ->
            input.read().toByte() == APK_MAGIC_0 && input.read().toByte() == APK_MAGIC_1
        }
    }

    private fun File.isUsableForRelease(context: Context, release: AppUpdateRelease): Boolean {
        if (!isCompleteApk()) {
            PLog.d(TAG, "Cached APK missing or incomplete: $absolutePath")
            return false
        }

        val packageInfo = readArchivePackageInfo(context) ?: run {
            PLog.w(TAG, "Cached APK cannot be parsed: $absolutePath")
            return false
        }

        val expectedVersionName = release.versionName?.normalizedVersionName()
        if (expectedVersionName == null) {
            PLog.w(TAG, "Latest release version is missing, cached APK will not be reused")
            return false
        }

        val actualVersionName = packageInfo.versionName?.normalizedVersionName()
        if (actualVersionName != expectedVersionName) {
            PLog.w(
                TAG,
                "Cached APK version mismatch: expected=$expectedVersionName, actual=$actualVersionName"
            )
            return false
        }

        return true
    }

    @Suppress("DEPRECATION")
    private fun File.readArchivePackageInfo(context: Context): PackageInfo? =
        context.packageManager.getPackageArchiveInfo(absolutePath, 0)

    private fun String.normalizedVersionName(): String =
        trim().removePrefix("v").removePrefix("V")

    private fun discardInvalidCachedApk(context: Context, release: AppUpdateRelease, apkFile: File) {
        if (!apkFile.exists()) return
        if (apkFile.isUsableForRelease(context, release)) return

        runCatching {
            if (apkFile.delete()) {
                PLog.d(TAG, "Deleted invalid cached APK: ${apkFile.absolutePath}")
            }
        }.onFailure { error ->
            PLog.w(TAG, "Failed to delete invalid cached APK: ${apkFile.absolutePath}", error)
        }
    }
}
