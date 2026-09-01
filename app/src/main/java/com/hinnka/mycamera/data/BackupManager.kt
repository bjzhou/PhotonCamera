package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import android.os.Build
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
        "custom_raw_noise_profiles.json",
        "category_overrides.json",
        "custom_luts",
        "custom_frames",
        "custom_dcps",
        "custom_raw_noise_profiles",
        "custom_fonts",
        "custom_logos"
    )

    // These imported profiles describe a particular camera sensor and must stay with its device.
    private val DEVICE_SPECIFIC_BACKUP_ENTRIES = setOf(
        "custom_dcps.json",
        "custom_raw_noise_profiles.json",
        "custom_dcps",
        "custom_raw_noise_profiles",
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

                    zos.putNextEntry(ZipEntry(BackupDeviceMetadata.ENTRY_NAME))
                    BackupDeviceMetadata.write(currentDeviceIdentity(), zos)
                    zos.closeEntry()

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
                BackupPreferenceSanitizer.writeUserPreferencesWithoutNonPortableKeys(fileToZip, zos)
            if (removedPreferenceCount > 0) {
                PLog.d(
                    TAG,
                    "Removed $removedPreferenceCount non-portable preferences from backup"
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
            val backupDeviceIdentity = BackupDeviceMetadata.read(restoreDir)
            val currentDeviceIdentity = currentDeviceIdentity()
            val isSameDevice = backupDeviceIdentity?.matches(currentDeviceIdentity) == true
            if (!isSameDevice) {
                PLog.i(
                    TAG,
                    "Backup device does not match current device; preserving current " +
                        "hardware-bound preferences. backup=$backupDeviceIdentity, " +
                        "current=$currentDeviceIdentity"
                )
            }
            val preferenceSanitization = BackupPreferenceSanitizer.sanitizeRestoreDirectory(
                restoreDir = restoreDir,
                currentFilesDir = context.filesDir,
                preserveCurrentDeviceSpecificPreferences = !isSameDevice,
            )
            if (preferenceSanitization.removedNonPortablePreferenceCount > 0) {
                PLog.d(
                    TAG,
                    "Removed ${preferenceSanitization.removedNonPortablePreferenceCount} " +
                        "non-portable preferences during restore"
                )
            }
            if (preferenceSanitization.skippedDeviceSpecificPreferenceCount > 0) {
                PLog.d(
                    TAG,
                    "Skipped ${preferenceSanitization.skippedDeviceSpecificPreferenceCount} " +
                        "device-specific preferences during cross-device restore"
                )
            }
            val frameAssetMigration = FrameAssetPathMigrator.migrateRestoredData(
                restoreDir = restoreDir,
                destinationFilesDir = context.filesDir,
            )
            if (frameAssetMigration.migratedReferenceCount > 0) {
                PLog.d(
                    TAG,
                    "Migrated ${frameAssetMigration.migratedReferenceCount} frame asset paths " +
                        "across ${frameAssetMigration.migratedFileCount} restored files"
                )
            }
            if (frameAssetMigration.unresolvedReferenceCount > 0) {
                PLog.w(
                    TAG,
                    "Found ${frameAssetMigration.unresolvedReferenceCount} restored frame asset " +
                        "paths without matching resource files"
                )
            }
            if (frameAssetMigration.invalidTemplateCount > 0) {
                PLog.w(
                    TAG,
                    "Skipped path migration for ${frameAssetMigration.invalidTemplateCount} " +
                        "invalid restored frame templates"
                )
            }
            applyRestoreDirectory(
                restoreDir = restoreDir,
                filesDir = context.filesDir,
                skippedEntries = if (isSameDevice) {
                    emptySet()
                } else {
                    DEVICE_SPECIFIC_BACKUP_ENTRIES
                },
            )

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

    private fun applyRestoreDirectory(
        restoreDir: File,
        filesDir: File,
        skippedEntries: Set<String>,
    ) {
        for (entryName in BACKUP_ENTRIES) {
            if (entryName in skippedEntries) {
                PLog.d(TAG, "Skipped device-specific backup entry during restore: $entryName")
                continue
            }
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
        var supportedDataEntryCount = 0
        ZipInputStream(inputStream).use { zis ->
            var zipEntry: ZipEntry? = zis.nextEntry
            while (zipEntry != null) {
                val entryName = zipEntry.name
                if (isAllowedBackupEntry(entryName)) {
                    if (isBackupDataEntry(entryName)) {
                        supportedDataEntryCount++
                    }
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
        if (supportedDataEntryCount == 0) {
            throw IllegalStateException("Backup zip does not contain supported entries")
        }
    }

    private fun isAllowedBackupEntry(entryName: String): Boolean {
        val normalized = entryName.replace('\\', '/').trimStart('/')
        if (normalized.isEmpty() || normalized.contains("../") || normalized == "..") {
            return false
        }
        if (normalized == BackupDeviceMetadata.ENTRY_NAME) {
            return true
        }
        val topLevelName = normalized.substringBefore('/')
        return BACKUP_ENTRIES.contains(topLevelName)
    }

    private fun isBackupDataEntry(entryName: String): Boolean {
        val normalized = entryName.replace('\\', '/').trimStart('/')
        return BACKUP_ENTRIES.contains(normalized.substringBefore('/'))
    }

    private fun currentDeviceIdentity(): BackupDeviceIdentity {
        return BackupDeviceIdentity(
            manufacturer = Build.MANUFACTURER,
            model = Build.MODEL,
            device = Build.DEVICE,
        )
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
