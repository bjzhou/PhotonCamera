package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.io.FileOutputStream
import java.util.zip.ZipInputStream

class ZipCubeImportManager(private val context: Context) {

    companion object {
        private const val TAG = "ZipCubeImportManager"
    }

    data class Result(
        val successCount: Int,
        val failCount: Int
    )

    private val customImportManager = ContentRepository.getInstance(context).getCustomImportManager()

    fun importCubeFilesFromZip(
        uri: Uri,
        category: String? = null,
        colorSpace: ColorSpace = ColorSpace.SRGB,
        curve: TransferCurve = TransferCurve.SRGB
    ): Result {
        var successCount = 0
        var failCount = 0
        val tempDir = File(context.cacheDir, "zip_cube_import").apply { mkdirs() }

        return try {
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                ZipInputStream(inputStream).use { zipInputStream ->
                    var entry = zipInputStream.nextEntry
                    while (entry != null) {
                        val entryName = entry.name.substringAfterLast('/')
                        if (!entry.isDirectory && entryName.endsWith(".cube", ignoreCase = true)) {
                            val tempFile = File(tempDir, "${System.nanoTime()}_$entryName")
                            try {
                                FileOutputStream(tempFile).use { outputStream ->
                                    zipInputStream.copyTo(outputStream)
                                }
                                val lutId = customImportManager.importLut(
                                    Uri.fromFile(tempFile),
                                    displayName = entryName.substringBeforeLast('.'),
                                    category = category,
                                    colorSpace = colorSpace,
                                    curve = curve
                                )
                                if (lutId != null) {
                                    successCount++
                                } else {
                                    failCount++
                                }
                            } catch (e: Exception) {
                                failCount++
                                PLog.e(TAG, "Failed to import cube entry: ${entry.name}", e)
                            } finally {
                                tempFile.delete()
                            }
                        }
                        zipInputStream.closeEntry()
                        entry = zipInputStream.nextEntry
                    }
                }
            } ?: run {
                failCount++
            }
            Result(successCount, failCount)
        } catch (e: Exception) {
            PLog.e(TAG, "Failed to import zip cube file", e)
            Result(successCount, failCount + 1)
        }
    }

}
