package com.hinnka.mycamera.gallery

import android.graphics.Bitmap

/** A captured photo whose final files are still owned by the capture processing queue. */
data class ProcessingPhoto(
    val photo: MediaData,
    val thumbnail: Bitmap?,
    val isProcessing: Boolean = true,
    /** The internal image is published; auxiliary capture tasks may still own its files. */
    val isDisplayReady: Boolean = false,
    /** RAW processing is already baked into the image, even if the DNG is still being written. */
    val isRawSource: Boolean = false,
)
