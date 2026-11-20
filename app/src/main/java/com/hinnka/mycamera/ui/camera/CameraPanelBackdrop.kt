package com.hinnka.mycamera.ui.camera

import android.graphics.Bitmap
import android.os.Build
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.view.PixelCopy
import android.view.Surface
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.unit.IntSize
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.compose.LocalLifecycleOwner
import androidx.lifecycle.compose.currentStateAsState
import com.hinnka.mycamera.ui.components.LiquidGlassBackdrop
import com.hinnka.mycamera.ui.components.LiquidGlassImageFrame
import com.hinnka.mycamera.ui.components.rememberLiquidGlassImageBackdrop
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.delay
import kotlinx.coroutines.isActive
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import kotlin.coroutines.resume
import kotlin.coroutines.suspendCoroutine
import kotlin.math.roundToInt

private const val BackdropLongEdge = 256
private const val BackdropFrameIntervalMillis = 40L

/**
 * Samples the camera's separate SurfaceView for the sheet materials while it is visible.
 * The sampled frames are only drawn inside the panels, leaving the viewfinder itself unchanged.
 */
@Composable
internal fun rememberCameraPanelBackdrop(
    surfaceView: CameraGLSurfaceView?,
    enabled: Boolean,
): LiquidGlassBackdrop {
    val backdrop = rememberLiquidGlassImageBackdrop()
    val rootView = LocalView.current
    val lifecycleState by LocalLifecycleOwner.current.lifecycle.currentStateAsState()
    val captureEnabled = enabled && lifecycleState.isAtLeast(Lifecycle.State.RESUMED) &&
        Build.VERSION.SDK_INT >= Build.VERSION_CODES.S
    val captureMutex = remember { Mutex() }

    LaunchedEffect(backdrop, captureEnabled, surfaceView, rootView) {
        backdrop.imageFrame = null
        if (!captureEnabled || surfaceView == null) return@LaunchedEffect

        val handler = Handler(Looper.getMainLooper())
        val previewLocation = IntArray(2)
        val rootLocation = IntArray(2)
        // Keep ownership until an in-flight PixelCopy finishes, even if this effect is cancelled.
        captureMutex.withLock {
            while (isActive) {
                val startedAt = SystemClock.uptimeMillis()
                val width = surfaceView.width
                val height = surfaceView.height
                val surface = surfaceView.holder.surface
                if (!surfaceView.isAttachedToWindow || !surface.isValid ||
                    width <= 0 || height <= 0
                ) {
                    backdrop.imageFrame = null
                } else {
                    val bitmap = surface.copyBackdropFrame(width, height, handler)
                    if (bitmap != null && surfaceView.isAttachedToWindow && surface.isValid &&
                        surfaceView.width == width && surfaceView.height == height
                    ) {
                        surfaceView.getLocationInWindow(previewLocation)
                        rootView.getLocationInWindow(rootLocation)
                        backdrop.imageFrame = LiquidGlassImageFrame(
                            image = bitmap.asImageBitmap(),
                            positionInRoot = Offset(
                                (previewLocation[0] - rootLocation[0]).toFloat(),
                                (previewLocation[1] - rootLocation[1]).toFloat(),
                            ),
                            size = IntSize(width, height),
                        )
                    } else {
                        bitmap?.recycle()
                        backdrop.imageFrame = null
                    }
                }
                val elapsed = SystemClock.uptimeMillis() - startedAt
                delay((BackdropFrameIntervalMillis - elapsed).coerceAtLeast(1L))
            }
        }
    }
    return backdrop
}

private suspend fun Surface.copyBackdropFrame(
    width: Int,
    height: Int,
    handler: Handler,
): Bitmap? {
    val scale = minOf(1f, BackdropLongEdge.toFloat() / maxOf(width, height))
    val bitmap = Bitmap.createBitmap(
        (width * scale).roundToInt().coerceAtLeast(1),
        (height * scale).roundToInt().coerceAtLeast(1),
        Bitmap.Config.ARGB_8888,
    )
    var delivered = false
    try {
        // Older Android releases copy synchronously before posting the callback.
        val result = withContext(Dispatchers.IO) {
            // The bitmap is still in use by PixelCopy until the callback arrives.
            suspendCoroutine { continuation ->
                PixelCopy.request(this@copyBackdropFrame, bitmap, { continuation.resume(it) }, handler)
            }
        }
        delivered = result == PixelCopy.SUCCESS
        return bitmap.takeIf { delivered }
    } catch (_: IllegalArgumentException) {
        // The surface can disappear between the validity check and the copy request.
        return null
    } finally {
        if (!delivered) bitmap.recycle()
    }
}
