package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileInputStream
import java.io.FileOutputStream
import java.io.InputStream
import java.io.OutputStream
import java.util.UUID
import java.util.zip.ZipEntry
import java.util.zip.ZipInputStream
import java.util.zip.ZipOutputStream

/**
 * 备份和恢复管理器
 * 负责将应用的 DataStore 设置文件以及 CustomImportManager 管理的自定义资源文件打包和解包
 */
object BackupManager {
    private const val TAG = "BackupManager"
    private const val BUFFER_SIZE = 64 * 1024

    // 需备份的目录/文件相对路径列表 (相对于 context.filesDir)
    private val BACKUP_ENTRIES = listOf(
        "datastore", // DataStore 默认存放目录
        "custom_luts.json",
        "custom_frames.json",
        "custom_dcps.json",
        "category_overrides.json",
        "custom_luts",
        "custom_frames",
        "custom_dcps",
        "custom_fonts",
        "custom_logos"
    )

    /**
     * 执行备份
     * @param context Context
     * @param outputUri 目标 zip 文件的 URI (通过 SAF 选择)
     * @return 备份是否成功
     */
    suspend fun performBackup(context: Context, outputUri: Uri): Boolean = withContext(Dispatchers.IO) {
        val tempZip = File(context.cacheDir, "backup-${UUID.randomUUID()}.zip")
        try {
            FileOutputStream(tempZip).use { fileOutput ->
                ZipOutputStream(fileOutput).use { zos ->
                    val filesDir = context.filesDir

                    for (entryName in BACKUP_ENTRIES) {
                        val fileOrDir = File(filesDir, entryName)
                        if (fileOrDir.exists()) {
                            zipFile(fileOrDir, fileOrDir.name, zos)
                        } else {
                            PLog.d(TAG, "Skip missing backup entry: $entryName")
                        }
                    }
                    zos.finish()
                    zos.flush()
                    fileOutput.fd.sync()
                }
            }

            validateBackupZip(tempZip)

            val outputStream = context.contentResolver.openOutputStream(outputUri, "wt")
                ?: throw IllegalStateException("Cannot open output stream for URI: $outputUri")
            outputStream.use { output ->
                FileInputStream(tempZip).use { input ->
                    copyStream(input, output)
                }
            }

            context.contentResolver.openInputStream(outputUri)?.use { input ->
                validateBackupZip(input)
            } ?: throw IllegalStateException("Cannot read written backup from URI: $outputUri")

            PLog.d(TAG, "Backup successfully completed to $outputUri, size=${tempZip.length()}")
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Backup failed", e)
            false
        } finally {
            if (tempZip.exists() && !tempZip.delete()) {
                PLog.w(TAG, "Failed to delete temp backup zip: $tempZip")
            }
        }
    }

    private fun zipFile(fileToZip: File, fileName: String, zos: ZipOutputStream) {
        if (fileToZip.isHidden) {
            return
        }
        if (fileToZip.isDirectory) {
            if (fileName.endsWith("/")) {
                zos.putNextEntry(ZipEntry(fileName))
                zos.closeEntry()
            } else {
                zos.putNextEntry(ZipEntry("$fileName/"))
                zos.closeEntry()
            }
            val children = fileToZip.listFiles()
            if (children != null) {
                for (childFile in children) {
                    zipFile(childFile, fileName + "/" + childFile.name, zos)
                }
            }
            return
        }

        val zipEntry = ZipEntry(fileName)
        zos.putNextEntry(zipEntry)
        if (BackupPreferenceSanitizer.isUserPreferencesEntry(fileName)) {
            val removedPreferenceCount =
                BackupPreferenceSanitizer.writeUserPreferencesWithoutUnsafeStorageKeys(fileToZip, zos)
            if (removedPreferenceCount > 0) {
                PLog.d(
                    TAG,
                    "Removed $removedPreferenceCount storage authorization preferences from backup"
                )
            }
        } else {
            FileInputStream(fileToZip).use { fis ->
                copyStream(fis, zos)
            }
        }
        zos.closeEntry()
    }

    /**
     * 执行恢复
     * @param context Context
     * @param inputUri 来源 zip 文件的 URI (通过 SAF 选择)
     * @return 恢复是否成功
     */
    suspend fun performRestore(context: Context, inputUri: Uri): Boolean = withContext(Dispatchers.IO) {
        val tempZip = File(context.cacheDir, "restore-${UUID.randomUUID()}.zip")
        val restoreDir = File(context.cacheDir, "restore-${UUID.randomUUID()}")
        try {
            val inputStream = context.contentResolver.openInputStream(inputUri)
                ?: throw IllegalStateException("Cannot open input stream for URI: $inputUri")
            inputStream.use { input ->
                FileOutputStream(tempZip).use { output ->
                    copyStream(input, output)
                    output.fd.sync()
                }
            }

            validateBackupZip(tempZip)

            if (!restoreDir.mkdirs()) {
                throw IllegalStateException("Cannot create restore staging dir: $restoreDir")
            }

            unzipBackupToDirectory(tempZip, restoreDir)
            val sanitizedRestorePreferenceCount = BackupPreferenceSanitizer.sanitizeRestoreDirectory(restoreDir)
            if (sanitizedRestorePreferenceCount > 0) {
                PLog.d(
                    TAG,
                    "Removed $sanitizedRestorePreferenceCount storage authorization preferences during restore"
                )
            }
            applyRestoreDirectory(restoreDir, context.filesDir)

            PLog.d(TAG, "Restore successfully completed from $inputUri")
            true
        } catch (e: Exception) {
            PLog.e(TAG, "Restore failed", e)
            false
        } finally {
            if (tempZip.exists() && !tempZip.delete()) {
                PLog.w(TAG, "Failed to delete temp restore zip: $tempZip")
            }
            if (restoreDir.exists() && !restoreDir.deleteRecursively()) {
                PLog.w(TAG, "Failed to delete temp restore dir: $restoreDir")
            }
        }
    }

    private fun unzipBackupToDirectory(zipFile: File, targetDir: File) {
        FileInputStream(zipFile).use { fileInput ->
            ZipInputStream(fileInput).use { zis ->
                var zipEntry: ZipEntry? = zis.nextEntry
                while (zipEntry != null) {
                    val entryName = zipEntry.name
                    if (!isAllowedBackupEntry(entryName)) {
                        PLog.w(TAG, "Skip unknown backup entry: $entryName")
                        zis.closeEntry()
                        zipEntry = zis.nextEntry
                        continue
                    }

                    val newFile = File(targetDir, entryName)
                    assertInsideDirectory(targetDir, newFile, entryName)

                    if (zipEntry.isDirectory) {
                        if (!newFile.isDirectory && !newFile.mkdirs()) {
                            throw IllegalStateException("Failed to create directory: $newFile")
                        }
                    } else {
                        val parent = newFile.parentFile
                        if (parent != null && !parent.isDirectory && !parent.mkdirs()) {
                            throw IllegalStateException("Failed to create parent directory for: $newFile")
                        }
                        FileOutputStream(newFile).use { fos ->
                            copyStream(zis, fos)
                        }
                    }
                    zis.closeEntry()
                    zipEntry = zis.nextEntry
                }
            }
        }
    }

    private fun applyRestoreDirectory(restoreDir: File, filesDir: File) {
        for (entryName in BACKUP_ENTRIES) {
            val stagedEntry = File(restoreDir, entryName)
            if (!stagedEntry.exists()) {
                continue
            }
            val targetEntry = File(filesDir, entryName)
            copyFileTree(stagedEntry, targetEntry, filesDir)
        }
    }

    private fun copyFileTree(source: File, target: File, rootDir: File) {
        assertInsideDirectory(rootDir, target, target.name)
        if (source.isDirectory) {
            if (!target.isDirectory && !target.mkdirs()) {
                throw IllegalStateException("Failed to create target directory: $target")
            }
            source.listFiles()?.forEach { child ->
                copyFileTree(child, File(target, child.name), rootDir)
            }
        } else {
            val parent = target.parentFile
            if (parent != null && !parent.isDirectory && !parent.mkdirs()) {
                throw IllegalStateException("Failed to create parent directory for: $target")
            }
            source.copyTo(target, overwrite = true)
        }
    }

    private fun validateBackupZip(zipFile: File) {
        if (!zipFile.isFile || zipFile.length() <= 0L) {
            throw IllegalStateException("Backup zip is empty: $zipFile")
        }
        FileInputStream(zipFile).use { input ->
            validateBackupZip(input)
        }
    }

    private fun validateBackupZip(inputStream: InputStream) {
        var allowedEntryCount = 0
        ZipInputStream(inputStream).use { zis ->
            var zipEntry: ZipEntry? = zis.nextEntry
            while (zipEntry != null) {
                val entryName = zipEntry.name
                if (isAllowedBackupEntry(entryName)) {
                    allowedEntryCount++
                    val bytes = ByteArray(BUFFER_SIZE)
                    while (zis.read(bytes) >= 0) {
                        // Drain the entry so truncated zip files fail before restore.
                    }
                } else {
                    PLog.w(TAG, "Found unknown backup entry during validation: $entryName")
                }
                zis.closeEntry()
                zipEntry = zis.nextEntry
            }
        }
        if (allowedEntryCount == 0) {
            throw IllegalStateException("Backup zip does not contain supported entries")
        }
    }

    private fun isAllowedBackupEntry(entryName: String): Boolean {
        val normalized = entryName.replace('\\', '/').trimStart('/')
        if (normalized.isEmpty() || normalized.contains("../") || normalized == "..") {
            return false
        }
        val topLevelName = normalized.substringBefore('/')
        return BACKUP_ENTRIES.contains(topLevelName)
    }

    private fun assertInsideDirectory(rootDir: File, target: File, entryName: String) {
        val rootPath = rootDir.canonicalPath
        val targetPath = target.canonicalPath
        if (targetPath != rootPath && !targetPath.startsWith(rootPath + File.separator)) {
            throw IllegalStateException("Entry escapes target directory: $entryName")
        }
    }

    private fun copyStream(input: InputStream, output: OutputStream) {
        val buffer = ByteArray(BUFFER_SIZE)
        var length: Int
        while (input.read(buffer).also { length = it } >= 0) {
            output.write(buffer, 0, length)
        }
    }
}
