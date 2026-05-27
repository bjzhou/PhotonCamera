package com.hinnka.mycamera.data

import android.content.Context
import android.net.Uri
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.raw.ColorSpace

class ZipCubeImportManager(context: Context) {
    class Result(val successCount: Int, val failCount: Int)
    
    fun importCubeFilesFromZip(
        uri: Uri,
        category: String,
        colorSpace: ColorSpace,
        curve: TransferCurve
    ): Result {
        return Result(0, 0)
    }
}
