package com.hinnka.mycamera.ui.camera

import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.sp
import com.hinnka.mycamera.camera.CameraInfo
import com.hinnka.mycamera.camera.LensType
import kotlin.math.abs

internal data class ZoomStopItem(
    val zoomRatio: Float,
    val cameraIds: List<String> = emptyList(),
    val isLensStop: Boolean = false,
    val isCustomLensStop: Boolean = false
) {
    val hasVariantBadge: Boolean
        get() = cameraIds.size > 1

    val variantCount: Int
        get() = cameraIds.size

    fun containsCamera(cameraId: String): Boolean {
        return cameraIds.contains(cameraId)
    }

    fun selectedVariantIndex(cameraId: String): Int? {
        val index = cameraIds.indexOf(cameraId)
        return if (index >= 0) index + 1 else null
    }

    fun targetCameraId(currentCameraId: String): String? {
        if (cameraIds.isEmpty()) return null
        val currentIndex = cameraIds.indexOf(currentCameraId)
        return if (currentIndex >= 0 && cameraIds.size > 1) {
            cameraIds[(currentIndex + 1) % cameraIds.size]
        } else {
            cameraIds.first()
        }
    }
}

internal fun buildZoomStopItems(
    stops: List<Float>,
    availableCameras: List<CameraInfo>,
    currentCamera: CameraInfo?
): List<ZoomStopItem> {
    val zoomableLensCameras = availableCameras
        .filter { camera ->
            val isMatchingFacing = if (currentCamera?.lensType == LensType.FRONT) {
                camera.lensType == LensType.FRONT
            } else {
                camera.lensType != LensType.FRONT && camera.lensType != LensType.BACK_MACRO
            }
            camera.displayIntrinsicZoomRatio > 0f && isMatchingFacing
        }
        .sortedWith(
            compareBy<CameraInfo>(
                { it.displayIntrinsicZoomRatio },
                { it.cameraId }
            )
        )

    return stops.map { stop ->
        val matchingLensCameras = zoomableLensCameras.filter {
            abs(it.displayIntrinsicZoomRatio - stop) <= 0.01f
        }
        if (matchingLensCameras.isEmpty()) {
            ZoomStopItem(zoomRatio = stop)
        } else {
            ZoomStopItem(
                zoomRatio = stop,
                cameraIds = matchingLensCameras.map { it.cameraId },
                isLensStop = true,
                isCustomLensStop = matchingLensCameras.any { it.isCustomLensId }
            )
        }
    }
}

@Composable
internal fun ZoomStopVariantBadge(
    text: String,
    isSelected: Boolean,
    activeColor: Color,
    inactiveColor: Color,
    itemSize: Dp,
    modifier: Modifier = Modifier
) {
    val fontSize = (itemSize.value * 0.26f).coerceIn(7f, 9f).sp
    Text(
        text = text,
        modifier = modifier,
        color = if (isSelected) activeColor else inactiveColor,
        fontSize = fontSize,
        fontWeight = FontWeight.Bold,
        textAlign = TextAlign.Center,
        maxLines = 1,
        softWrap = false,
        overflow = TextOverflow.Clip
    )
}
