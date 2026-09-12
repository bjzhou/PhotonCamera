package com.hinnka.mycamera.gallery

import android.graphics.Bitmap

/** A captured photo whose final files are still owned by the capture processing queue. */
data class ProcessingPhoto(
    val photo: MediaData,
    val thumbnail: Bitmap?,
    val isProcessing: Boolean = true,
)
