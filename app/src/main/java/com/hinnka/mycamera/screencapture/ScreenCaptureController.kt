package com.hinnka.mycamera.screencapture

import android.app.Activity
import android.content.Context
import android.content.Intent
import android.hardware.display.DisplayManager
import android.hardware.display.VirtualDisplay
import android.media.projection.MediaProjection
import android.media.projection.MediaProjectionManager
import android.view.Surface
import com.hinnka.mycamera.R
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.flow.filter
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import kotlinx.coroutines.withTimeoutOrNull

data class ScreenCaptureTestUiState(
    val isCapturing: Boolean = false,
    val hasPreviewSurface: Boolean = false,
    val statusMessageRes: Int = R.string.screen_capture_test_status_idle
)

class ScreenCaptureTestController(
    private val activity: Activity
) {
    private val controllerScope = CoroutineScope(SupervisorJob() + Dispatchers.Main.immediate)
    private val mediaProjectionManager =
        activity.getSystemService(Context.MEDIA_PROJECTION_SERVICE) as MediaProjectionManager

    private val _uiState = MutableStateFlow(ScreenCaptureTestUiState())
    val uiState: StateFlow<ScreenCaptureTestUiState> = _uiState.asStateFlow()

    private var mediaProjection: MediaProjection? = null
    private var virtualDisplay: VirtualDisplay? = null
    private var previewSurface: Surface? = null
    private var previewWidth: Int = 0
    private var previewHeight: Int = 0
    private var previewDensityDpi: Int = activity.resources.displayMetrics.densityDpi

    private val projectionCallback = object : MediaProjection.Callback() {
        override fun onStop() {
            PLog.i(TAG, "MediaProjection stopped by system")
            stopCapture(
                statusMessageRes = R.string.screen_capture_test_status_stopped
            )
        }
    }

    fun createCaptureIntent(): Intent {
        return mediaProjectionManager.createScreenCaptureIntent()
    }

    fun onCapturePermissionDenied() {
        PLog.w(TAG, "Screen capture permission denied")
        _uiState.value = _uiState.value.copy(
            isCapturing = false,
            statusMessageRes = R.string.screen_capture_test_status_permission_denied
        )
    }

    fun onCaptureStarted() {
        _uiState.value = _uiState.value.copy(
            isCapturing = true,
            statusMessageRes = R.string.screen_capture_test_status_running
        )
    }

    fun startCapture(resultCode: Int, data: Intent?) {
        if (data == null) {
            PLog.w(TAG, "Screen capture intent data is null")
            _uiState.value = _uiState.value.copy(
                isCapturing = false,
                statusMessageRes = R.string.screen_capture_test_status_failed
            )
            return
        }

        controllerScope.launch {
            try {
                stopCapture()
                ScreenCaptureForegroundService.start(activity)
                val foregroundReady = withTimeoutOrNull(3_000) {
                    ScreenCaptureForegroundServiceState.isRunning
                        .filter { it }
                        .first()
                } == true
                if (!foregroundReady) {
                    PLog.w(TAG, "Foreground service was not ready in time")
                    stopCapture(
                        statusMessageRes = R.string.screen_capture_test_status_failed
                    )
                    return@launch
                }

                val projection = mediaProjectionManager.getMediaProjection(resultCode, data)
                if (projection == null) {
                    PLog.w(TAG, "MediaProjection is null")
                    _uiState.value = _uiState.value.copy(
                        isCapturing = false,
                        statusMessageRes = R.string.screen_capture_test_status_failed
                    )
                    return@launch
                }
                projection.registerCallback(projectionCallback, null)
                mediaProjection = projection
                PLog.d(TAG, "Screen capture started")
                _uiState.value = _uiState.value.copy(
                    isCapturing = true,
                    statusMessageRes = R.string.screen_capture_test_status_running
                )
                ensureVirtualDisplay()
            } catch (t: Throwable) {
                PLog.e(TAG, "Failed to start screen capture", t)
                stopCapture(
                    statusMessageRes = R.string.screen_capture_test_status_failed
                )
            }
        }
    }

    fun attachPreviewSurface(surface: Surface, width: Int, height: Int, densityDpi: Int) {
        previewSurface = surface
        previewWidth = width
        previewHeight = height
        previewDensityDpi = densityDpi
        _uiState.value = _uiState.value.copy(hasPreviewSurface = true)
        ensureVirtualDisplay()
    }

    fun detachPreviewSurface(surface: Surface?) {
        if (surface != null && previewSurface !== surface) {
            return
        }
        virtualDisplay?.setSurface(null)
        previewSurface = null
        previewWidth = 0
        previewHeight = 0
        _uiState.value = _uiState.value.copy(hasPreviewSurface = false)
    }

    fun stopCapture(statusMessageRes: Int = R.string.screen_capture_test_status_idle) {
        releaseVirtualDisplay()
        mediaProjection?.unregisterCallback(projectionCallback)
        mediaProjection?.stop()
        mediaProjection = null
        ScreenCaptureForegroundService.stop(activity)
        _uiState.value = ScreenCaptureTestUiState(
            isCapturing = false,
            hasPreviewSurface = previewSurface != null,
            statusMessageRes = statusMessageRes
        )
    }

    fun release() {
        controllerScope.cancel()
        stopCapture()
    }

    private fun ensureVirtualDisplay() {
        val projection = mediaProjection ?: return
        val surface = previewSurface ?: return
        if (previewWidth <= 0 || previewHeight <= 0) {
            return
        }

        try {
            val currentVirtualDisplay = virtualDisplay
            if (currentVirtualDisplay == null) {
                virtualDisplay = projection.createVirtualDisplay(
                    VIRTUAL_DISPLAY_NAME,
                    previewWidth,
                    previewHeight,
                    previewDensityDpi,
                    DisplayManager.VIRTUAL_DISPLAY_FLAG_AUTO_MIRROR,
                    surface,
                    null,
                    null
                )
                PLog.d(TAG, "Virtual display created: ${previewWidth}x${previewHeight}")
            } else {
                currentVirtualDisplay.resize(previewWidth, previewHeight, previewDensityDpi)
                currentVirtualDisplay.setSurface(surface)
                PLog.d(TAG, "Virtual display updated: ${previewWidth}x${previewHeight}")
            }
        } catch (t: Throwable) {
            PLog.e(TAG, "Failed to create virtual display", t)
            stopCapture(
                statusMessageRes = R.string.screen_capture_test_status_failed
            )
        }
    }

    private fun releaseVirtualDisplay() {
        virtualDisplay?.release()
        virtualDisplay = null
    }

    companion object {
        private const val TAG = "ScreenCaptureTest"
        private const val VIRTUAL_DISPLAY_NAME = "MyCameraScreenCaptureTest"
    }
}
