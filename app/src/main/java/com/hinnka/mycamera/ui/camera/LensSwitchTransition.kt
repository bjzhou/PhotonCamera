package com.hinnka.mycamera.ui.camera

import android.graphics.Bitmap
import android.os.Handler
import android.os.Looper
import android.view.PixelCopy
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.LinearOutSlowInEasing
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Box
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.setValue
import androidx.compose.runtime.snapshotFlow
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.graphics.ImageBitmap
import androidx.compose.ui.graphics.asAndroidBitmap
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.ContentScale
import com.hinnka.mycamera.utils.GaussianBlur
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.viewmodel.CameraViewModel
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.CompletableDeferred
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.ensureActive
import kotlinx.coroutines.coroutineScope
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlin.coroutines.resume
import kotlin.coroutines.suspendCoroutine
import kotlin.math.roundToInt

private const val SnapshotMaxLongEdge = 1440
private const val BlurWorkingMaxLongEdge = 320
// Four blended levels are sufficient for the short ramp and halve prefiltering work.
private const val BlurLevelCount = 4
private const val BlurSigma = 5f
private const val BlurEnterDurationMillis = 80
private const val BlurExitDurationMillis = 240

/** Owns the frozen viewfinder independently of camera / SurfaceView recreation. */
internal class LensSwitchTransitionState(
    private val scope: CoroutineScope,
    private val viewModel: CameraViewModel,
) {
    var snapshot by mutableStateOf<ImageBitmap?>(null)
        private set
    var isActive by mutableStateOf(false)
        private set
    val opacity = Animatable(1f)
    var scale by mutableFloatStateOf(1f)
        private set
    val blurProgress = Animatable(0f)
    var blurFrames by mutableStateOf<List<ImageBitmap>>(emptyList())
        private set
    private var snapshotZoom = 1f
    private var job: Job? = null
    private var snapshotAnimationJob: Job? = null
    // 为 true 时，正在进行的切换仍接受排队请求；进入淡出阶段后关闭，新请求重新开始一次过渡。
    private var acceptsQueuedRequest = false
    private data class Request(val cameraId: String, val targetZoom: Float, val onSwitch: () -> Unit)
    private var pendingRequest: Request? = null

    fun switchLens(cameraId: String, targetZoom: Float, onSwitch: () -> Unit) {
        require(targetZoom.isFinite() && targetZoom > 0f)
        // 只保留最新请求。当前切换等待目标镜头首帧期间，新请求排队并沿用同一冻结帧，
        // 待当前镜头真正出帧后再发起，避免连续跨越多个焦段时相机重开请求互相覆盖。
        pendingRequest = Request(cameraId, targetZoom, onSwitch)
        if (acceptsQueuedRequest && job?.isActive == true) {
            // 当前目标镜头出帧后无需等完整快照动画，直接衔接下一次切换。
            snapshotAnimationJob?.cancel()
            return
        }
        job?.cancel()
        if (job != null) {
            // 淡出中的冻结帧已不是当前镜头画面，重新截取。
            clearSnapshot()
        }
        isActive = true
        acceptsQueuedRequest = true
        job = scope.launch {
            try {
                opacity.snapTo(1f)
                if (snapshot == null) {
                    snapshotZoom = viewModel.zoomRatioByMain
                    scale = 1f
                    blurProgress.snapTo(0f)
                    blurFrames = emptyList()
                    val bitmap = viewModel.glSurfaceView?.captureLastFrame()
                    ensureActive()
                    snapshot = bitmap?.asImageBitmap()
                }
                // Let Compose submit the overlay before the camera can release its surface.
                withFrameNanos { }
                withFrameNanos { }
                while (true) {
                    val request = pendingRequest ?: break
                    pendingRequest = null
                    val stateBeforeSwitch = viewModel.state.value
                    if (stateBeforeSwitch.currentCameraId == request.cameraId &&
                        stateBeforeSwitch.isPreviewActive
                    ) {
                        // 排队期间目标镜头已处于工作状态，不会产生新的首帧，直接应用请求。
                        request.onSwitch()
                        continue
                    }
                    val timestampBeforeSwitch = stateBeforeSwitch.previewFirstFrameTimestampNs
                    request.onSwitch()
                    coroutineScope {
                        val animation = launch { animateSnapshotTo(request.targetZoom) }
                        snapshotAnimationJob = animation
                        val readyState = viewModel.state.first {
                            it.currentCameraId == request.cameraId && it.isPreviewActive &&
                                it.previewFirstFrameTimestampNs != null &&
                                it.previewFirstFrameTimestampNs != timestampBeforeSwitch
                        }
                        // Follow the current SurfaceView if preview dimensions change.
                        val rendered = CompletableDeferred<Unit>()
                        val waiter = launch {
                            snapshotFlow { viewModel.glSurfaceView }.collectLatest { preview ->
                                if (preview != null) {
                                    preview.awaitPreviewFrame(readyState.previewFirstFrameTimestampNs!!)
                                    rendered.complete(Unit)
                                }
                            }
                        }
                        try {
                            rendered.await()
                        } finally {
                            waiter.cancel()
                        }
                        if (pendingRequest != null) animation.cancel()
                        animation.join()
                        snapshotAnimationJob = null
                    }
                }
                acceptsQueuedRequest = false
                // Renderer callbacks run before GLSurfaceView swaps buffers.
                withFrameNanos { }
                withFrameNanos { }
                opacity.animateTo(0f, tween(160))
                clearSnapshot()
                isActive = false
            } catch (error: CancellationException) {
                throw error
            } catch (error: Exception) {
                PLog.e("LensSwitchTransition", "Lens preview transition failed", error)
                clearSnapshot()
                isActive = false
                acceptsQueuedRequest = false
                snapshotAnimationJob = null
                pendingRequest = null
            }
        }
    }

    fun cancel() {
        job?.cancel()
        job = null
        snapshotAnimationJob = null
        clearSnapshot()
        isActive = false
        acceptsQueuedRequest = false
        pendingRequest = null
    }

    fun cancelPendingSwitch() {
        pendingRequest = null
    }

    private fun clearSnapshot() {
        snapshot = null
        blurFrames = emptyList()
    }

    private suspend fun animateSnapshotTo(targetZoom: Float) = coroutineScope {
        val bitmap = snapshot ?: return@coroutineScope
        val visibleZoom = snapshotZoom * scale
        if (targetZoom >= visibleZoom) {
            // A frozen wide frame contains the narrower field of view. Retarget from the
            // currently displayed scale so rapid lens changes do not restart the zoom.
            launch { blurProgress.animateTo(0f, tween(BlurExitDurationMillis)) }
            val startScale = scale
            val progress = Animatable(0f)
            progress.animateTo(
                1f,
                tween(resolveZoomStopAnimationDurationMillis(visibleZoom, targetZoom), easing = FastOutSlowInEasing),
            ) {
                // Logarithmic interpolation matches the existing in-lens zoom animation.
                scale = interpolateZoomRatio(startScale, targetZoom / snapshotZoom, value)
            }
            scale = targetZoom / snapshotZoom
        } else {
            // A telephoto frame cannot supply a wider field of view. Increase the Gaussian
            // radius instead; adjacent prefiltered levels blend smoothly on Android 11 too.
            if (blurFrames.isEmpty()) {
                blurFrames = createBlurFrames(bitmap.asAndroidBitmap())
            }
            blurProgress.animateTo(1f, tween(BlurEnterDurationMillis, easing = LinearOutSlowInEasing))
            // Keep maximum blur while switchLens waits for the new preview frame.
        }
    }

}

@Composable
internal fun LensSwitchTransitionOverlay(state: LensSwitchTransitionState, modifier: Modifier = Modifier) {
    state.snapshot?.let { bitmap ->
        Box(modifier.clipToBounds().graphicsLayer { alpha = state.opacity.value }) {
            Box(Modifier.matchParentSize().graphicsLayer {
                scaleX = state.scale
                scaleY = state.scale
            }) {
                val level = state.blurProgress.value * state.blurFrames.size
                val lower = level.toInt().coerceIn(0, state.blurFrames.size)
                Image(
                    bitmap = if (lower == 0) bitmap else state.blurFrames[lower - 1],
                    contentDescription = null,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.matchParentSize(),
                )
                if (lower < state.blurFrames.size && level > lower) {
                    Image(
                        bitmap = state.blurFrames[lower],
                        contentDescription = null,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.matchParentSize().graphicsLayer { alpha = level - lower },
                    )
                }
            }
        }
    }
}

private suspend fun CameraGLSurfaceView.captureLastFrame(): Bitmap? {
    if (width <= 0 || height <= 0 || !holder.surface.isValid) return null
    val scale = minOf(1f, SnapshotMaxLongEdge.toFloat() / maxOf(width, height))
    val bitmap = Bitmap.createBitmap(
        (width * scale).roundToInt().coerceAtLeast(1),
        (height * scale).roundToInt().coerceAtLeast(1),
        Bitmap.Config.ARGB_8888,
    )
    var retained = false
    try {
        // PixelCopy captures the last presented, fully graded frame. Wait for its callback
        // even on cancellation: recycling the destination while the copy runs is unsafe.
        val result = suspendCoroutine<Int> { continuation ->
            PixelCopy.request(this, bitmap, { continuation.resume(it) }, Handler(Looper.getMainLooper()))
        }
        if (result != PixelCopy.SUCCESS) {
            PLog.w("LensSwitchTransition", "Last preview frame unavailable: PixelCopy=$result")
            return null
        }
        retained = true
        return bitmap
    } catch (error: CancellationException) {
        throw error
    } catch (error: Exception) {
        PLog.e("LensSwitchTransition", "Failed to capture last preview frame", error)
        return null
    } finally {
        // Displayed ImageBitmaps are left to GC because Compose may still reference them.
        if (!retained) bitmap.recycle()
    }
}

private suspend fun createBlurFrames(source: Bitmap): List<ImageBitmap> = withContext(Dispatchers.Default) {
    val workingScale = minOf(1f, BlurWorkingMaxLongEdge.toFloat() / maxOf(source.width, source.height))
    val working = Bitmap.createScaledBitmap(
        source,
        (source.width * workingScale).roundToInt().coerceAtLeast(1),
        (source.height * workingScale).roundToInt().coerceAtLeast(1),
        true,
    )
    val frames = mutableListOf<Bitmap>()
    try {
        repeat(BlurLevelCount) { index ->
            ensureActive()
            val frame = working.copy(Bitmap.Config.ARGB_8888, true)
            frames += frame
            val sigma = BlurSigma * (index + 1) / BlurLevelCount
            GaussianBlur.blur(frame, sigma, sigma)
        }
        frames.map(Bitmap::asImageBitmap)
    } catch (error: Exception) {
        frames.forEach(Bitmap::recycle)
        throw error
    } finally {
        if (working !== source) working.recycle()
    }
}
