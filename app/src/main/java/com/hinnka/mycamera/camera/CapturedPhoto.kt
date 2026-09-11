package com.hinnka.mycamera.camera

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import com.hinnka.mycamera.model.SafeImage

/** A complete shutter request. The receiver owns and must close every frame. */
data class CapturedPhoto(
    val id: Long,
    val state: CameraState,
    val frames: List<CapturedPhotoFrame>,
)

data class CapturedPhotoFrame(
    val image: SafeImage,
    val captureInfo: CaptureInfo,
    val characteristics: CameraCharacteristics?,
    val captureResult: CaptureResult?,
    val frameMetadata: CapturedFrameMetadata?,
)
