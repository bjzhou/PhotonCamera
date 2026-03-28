package com.hinnka.mycamera.screencapture

import android.app.PictureInPictureParams
import android.content.BroadcastReceiver
import android.content.Intent
import android.content.IntentFilter
import android.content.res.Configuration
import android.graphics.Bitmap
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.util.Rational
import android.view.PixelCopy
import android.view.WindowManager
import androidx.activity.ComponentActivity
import androidx.activity.compose.BackHandler
import androidx.activity.compose.setContent
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.PictureInPictureAlt
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.FilledTonalIconButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.Text
import androidx.compose.material3.Surface as ComposeSurface
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.viewinterop.AndroidView
import androidx.compose.ui.unit.dp
import androidx.lifecycle.lifecycleScope
import com.hinnka.mycamera.R
import com.hinnka.mycamera.data.ContentRepository
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.ui.camera.CameraGLSurfaceView
import com.hinnka.mycamera.ui.theme.PhotonCameraTheme
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

class ScreenCapturePipActivity : ComponentActivity() {

    private lateinit var controller: ScreenCaptureTestController
    private lateinit var userPreferencesRepository: UserPreferencesRepository
    private var isInPiPMode by mutableStateOf(false)
    private var stopReceiverRegistered = false
    private var hasReleasedCapture = false
    private val stopCheckHandler = Handler(Looper.getMainLooper())
    private val stopCheckRunnable = Runnable {
        val actuallyInPip = isInPictureInPictureMode || ScreenCapturePipState.isInPipMode.value
        PLog.d(TAG, "stop check: finishing=$isFinishing destroyed=$isDestroyed inPip=$actuallyInPip")
        if (!actuallyInPip) {
            handleCaptureClosed()
        }
    }

    private val stopReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: android.content.Context?, intent: Intent?) {
            if (intent?.action == PhantomPipPreviewCoordinator.ACTION_STOP_PHANTOM_PIP_PREVIEW) {
                lifecycleScope.launch {
                    userPreferencesRepository.savePhantomMode(false)
                }
                controller.stopCapture()
                finish()
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        PLog.d(TAG, "onCreate")
        ScreenCapturePipState.setInPipMode(false)
        controller = ScreenCaptureTestController(this)
        userPreferencesRepository = ContentRepository.getInstance(this).userPreferencesRepository
        registerStopReceiver()

        val grant = ScreenCaptureProjectionStore.consume()
        if (grant == null) {
            finish()
            return
        }

        lifecycleScope.launch {
            ScreenCaptureRenderConfigStore.syncFromPreferences(this@ScreenCapturePipActivity)

            setContent {
                PhotonCameraTheme {
                    ComposeSurface(
                        modifier = Modifier.fillMaxSize(),
                        color = Color.Black
                    ) {
                        ScreenCapturePipContent(
                            controller = controller,
                            isInPiPMode = isInPiPMode,
                            onRequestPip = { enterPipIfPossible() }
                        )
                    }
                }
            }

            controller.startCapture(grant.resultCode, grant.data)
        }
    }

    override fun onUserLeaveHint() {
        super.onUserLeaveHint()
        PLog.d(TAG, "onUserLeaveHint")
        enterPipIfPossible()
    }

    override fun onPictureInPictureModeChanged(
        isInPictureInPictureMode: Boolean,
        newConfig: Configuration
    ) {
        super.onPictureInPictureModeChanged(isInPictureInPictureMode, newConfig)
        PLog.d(TAG, "onPictureInPictureModeChanged: $isInPictureInPictureMode")
        ScreenCapturePipState.setInPipMode(isInPictureInPictureMode)
        isInPiPMode = isInPictureInPictureMode
    }

    override fun onStop() {
        super.onStop()
        PLog.d(TAG, "onStop: frameworkInPip=$isInPictureInPictureMode stateInPip=${ScreenCapturePipState.isInPipMode.value}")
        stopCheckHandler.removeCallbacks(stopCheckRunnable)
        stopCheckHandler.postDelayed(stopCheckRunnable, 400L)
    }

    private fun registerStopReceiver() {
        val filter = IntentFilter(PhantomPipPreviewCoordinator.ACTION_STOP_PHANTOM_PIP_PREVIEW)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(stopReceiver, filter, RECEIVER_NOT_EXPORTED)
        } else {
            @Suppress("DEPRECATION")
            registerReceiver(stopReceiver, filter)
        }
        stopReceiverRegistered = true
    }

    override fun onDestroy() {
        PLog.d(TAG, "onDestroy: changingConfigurations=$isChangingConfigurations frameworkInPip=$isInPictureInPictureMode")
        stopCheckHandler.removeCallbacksAndMessages(null)
        if (stopReceiverRegistered) {
            unregisterReceiver(stopReceiver)
            stopReceiverRegistered = false
        }
        if (!isChangingConfigurations) {
            handleCaptureClosed()
        }
        ScreenCapturePipState.setInPipMode(false)
        super.onDestroy()
    }

    private fun handleCaptureClosed() {
        if (hasReleasedCapture) return
        PLog.d(TAG, "handleCaptureClosed")
        hasReleasedCapture = true
        lifecycleScope.launch {
            userPreferencesRepository.savePhantomMode(false)
        }
        controller.release()
        ScreenCapturePipState.setInPipMode(false)
    }

    private fun enterPipIfPossible() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.O) {
            return
        }
        try {
            PLog.d(TAG, "enterPipIfPossible")
            val params = PictureInPictureParams.Builder()
                .setAspectRatio(Rational(3, 4))
                .build()
            enterPictureInPictureMode(params)
        } catch (t: Throwable) {
            PLog.e(TAG, "Failed to enter picture-in-picture", t)
        }
    }

    companion object {
        private const val TAG = "ScreenCapturePip"
    }
}

@Composable
private fun ScreenCapturePipContent(
    controller: ScreenCaptureTestController,
    isInPiPMode: Boolean,
    onRequestPip: () -> Unit
) {
    val uiState by controller.uiState.collectAsState()
    val renderConfig by ScreenCaptureRenderConfigStore.config.collectAsState()
    var viewportWidth by remember { mutableIntStateOf(0) }
    var viewportHeight by remember { mutableIntStateOf(0) }
    val context = androidx.compose.ui.platform.LocalContext.current
    val windowMetrics = remember {
        context.getSystemService(WindowManager::class.java).currentWindowMetrics
    }
    val captureWidth = remember(windowMetrics) { windowMetrics.bounds.width().coerceAtLeast(1) }
    val captureHeight = remember(windowMetrics) { windowMetrics.bounds.height().coerceAtLeast(1) }
    var previewSurfaceView by remember { mutableStateOf<CameraGLSurfaceView?>(null) }
    var frozenForegroundFrame by remember { mutableStateOf<Bitmap?>(null) }
    var hasEnteredPip by remember { mutableStateOf(isInPiPMode) }
    var shouldCaptureForegroundFrame by remember { mutableStateOf(false) }

    fun replaceFrozenForegroundFrame(bitmap: Bitmap?) {
        val previousBitmap = frozenForegroundFrame
        frozenForegroundFrame = bitmap
        if (previousBitmap != null && previousBitmap !== bitmap && !previousBitmap.isRecycled) {
            previousBitmap.recycle()
        }
    }

    fun requestForegroundPip(trigger: String) {
        PLog.d("ScreenCapturePip", "$trigger, returning to PiP")
        onRequestPip()
    }

    BackHandler(enabled = !isInPiPMode) {
        requestForegroundPip("Back pressed in foreground")
    }

    LaunchedEffect(uiState.isCapturing) {
        if (!uiState.isCapturing) return@LaunchedEffect
        PLog.d("ScreenCapturePip", "capture running, waiting for preview surface before entering PiP")
    }

    LaunchedEffect(uiState.isCapturing, uiState.hasPreviewSurface) {
        if (uiState.isCapturing && uiState.hasPreviewSurface) {
            PLog.d("ScreenCapturePip", "preview surface ready, entering PiP")
            delay(180L)
            onRequestPip()
        }
    }

    LaunchedEffect(isInPiPMode) {
        if (isInPiPMode) {
            hasEnteredPip = true
            shouldCaptureForegroundFrame = false
            replaceFrozenForegroundFrame(null)
            return@LaunchedEffect
        }
        if (hasEnteredPip) {
            shouldCaptureForegroundFrame = true
        }
    }

    LaunchedEffect(shouldCaptureForegroundFrame, previewSurfaceView) {
        val surfaceView = previewSurfaceView ?: return@LaunchedEffect
        if (!shouldCaptureForegroundFrame) return@LaunchedEffect
        shouldCaptureForegroundFrame = false
        captureRenderedFrame(surfaceView) { bitmap ->
            replaceFrozenForegroundFrame(bitmap)
        }
    }

    DisposableEffect(Unit) {
        onDispose {
            controller.detachPreviewSurface(null)
        }
    }

    DisposableEffect(frozenForegroundFrame) {
        val bitmapToRecycle = frozenForegroundFrame
        onDispose {
            bitmapToRecycle?.takeIf { !it.isRecycled }?.recycle()
        }
    }

    val showForegroundFrozenFrame = !isInPiPMode && hasEnteredPip

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
            .onSizeChanged { size ->
                viewportWidth = size.width
                viewportHeight = size.height
            },
        contentAlignment = Alignment.Center
    ) {
        AndroidView(
            factory = { context ->
                CameraGLSurfaceView(context).apply {
                    previewSurfaceView = this
                    onSurfaceReady = { surface ->
                        controller.attachPreviewSurface(
                            surface = surface,
                            width = captureWidth,
                            height = captureHeight,
                            densityDpi = context.resources.displayMetrics.densityDpi
                        )
                    }
                    onSurfaceDestroyed = {
                        controller.detachPreviewSurface(null)
                    }
                }
            },
            update = { glSurfaceView ->
                previewSurfaceView = glSurfaceView
                glSurfaceView.setPreviewSize(captureWidth, captureHeight)
                glSurfaceView.setSensorOrientation(0)
                glSurfaceView.setLensFacing(1)
                glSurfaceView.setDeviceRotation(0)
                glSurfaceView.setCalibrationOffset(0)
                glSurfaceView.setLut(renderConfig.lutConfig)
                glSurfaceView.setLutEnabled(renderConfig.lutConfig != null)
                glSurfaceView.setColorRecipeEnabled(!renderConfig.colorRecipeParams.isDefault())
                // MediaProjection feeds the SurfaceTexture with a vertically flipped source space.
                // Map the user-selected crop from display coordinates into projection coordinates here.
                glSurfaceView.setSourceCrop(renderConfig.crop.flipVertically())
                glSurfaceView.setParams(
                    params = renderConfig.colorRecipeParams,
                    aperture = 0f
                )
                glSurfaceView.getRenderSurface()?.let { surface ->
                    controller.attachPreviewSurface(
                        surface = surface,
                        width = captureWidth,
                        height = captureHeight,
                        densityDpi = glSurfaceView.resources.displayMetrics.densityDpi
                    )
                }
                if (viewportWidth > 0 && viewportHeight > 0) {
                    glSurfaceView.requestRenderFrame()
                }
            },
            modifier = Modifier.fillMaxSize()
        )

        if (showForegroundFrozenFrame) {
            frozenForegroundFrame?.let { bitmap ->
                Image(
                    bitmap = bitmap.asImageBitmap(),
                    contentDescription = null,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.fillMaxSize()
                )
            }
        } else if (!isInPiPMode) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(Color.Black),
                contentAlignment = Alignment.Center
            ) {
                Text(stringResource(R.string.screen_capture_status_running), color = Color.White)
            }
        }

        if (!isInPiPMode) {
            FilledTonalIconButton(
                onClick = { requestForegroundPip("Foreground PiP button tapped") },
                modifier = Modifier
                    .align(Alignment.TopEnd)
                    .padding(top = 48.dp, end = 16.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.PictureInPictureAlt,
                    contentDescription = stringResource(R.string.screen_capture_return_to_pip)
                )
            }
        }
    }
}

private fun captureRenderedFrame(
    surfaceView: CameraGLSurfaceView,
    onCaptured: (Bitmap?) -> Unit
) {
    val width = surfaceView.width
    val height = surfaceView.height
    if (width <= 0 || height <= 0) {
        PLog.w("ScreenCapturePip", "Skip frozen frame capture because surface size is invalid: ${width}x${height}")
        onCaptured(null)
        return
    }

    val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
    try {
        PixelCopy.request(
            surfaceView,
            bitmap,
            { result ->
                if (result == PixelCopy.SUCCESS) {
                    PLog.d("ScreenCapturePip", "Captured frozen frame for PiP foreground restore")
                    onCaptured(bitmap)
                } else {
                    PLog.w("ScreenCapturePip", "Failed to capture frozen frame, PixelCopy result=$result")
                    bitmap.recycle()
                    onCaptured(null)
                }
            },
            Handler(Looper.getMainLooper())
        )
    } catch (t: Throwable) {
        PLog.e("ScreenCapturePip", "Failed to capture frozen frame for PiP foreground restore", t)
        bitmap.recycle()
        onCaptured(null)
    }
}
