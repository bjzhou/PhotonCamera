package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.graphics.Gainmap
import android.os.Build
import androidx.annotation.RequiresApi
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.OutputStream

object UltraHdrWriter {
    private const val TAG = "UltraHdrWriter"

    data class Request(
        val bitmap: Bitmap,
        val outputStream: OutputStream,
        val quality: Int = 95,
        val gainmap: Gainmap? = null,
        val preferUltraHdr: Boolean = true,
    )

    fun writeJpeg(request: Request): Boolean {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE && request.gainmap != null) {
            request.bitmap.gainmap = request.gainmap
        }
        return request.bitmap.compress(Bitmap.CompressFormat.JPEG, request.quality, request.outputStream)
    }

    suspend fun hasGainmap(loadedPreviewBitmap: Bitmap?): Boolean = withContext(Dispatchers.IO) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.UPSIDE_DOWN_CAKE) {
            loadedPreviewBitmap?.hasGainmap() ?: false
        } else {
            false
        }
    }
}
