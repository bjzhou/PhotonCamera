package com.hinnka.mycamera.camera

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.SurfaceTexture
import android.hardware.camera2.CameraCaptureSession
import android.hardware.camera2.CameraDevice
import android.hardware.camera2.CameraManager
import android.hardware.camera2.CaptureRequest
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import android.util.Size
import android.view.Surface
import com.hinnka.mycamera.utils.PLog
import java.util.concurrent.atomic.AtomicInteger

/**
 * Keeps the non-active rear lens warm using a repeating preview stream sized for the active mode.
 *
 * This intentionally uses only Android's declared concurrent-camera combinations. It never
 * attempts to open an unsupported camera pair, which could disconnect the active viewfinder.
 * Lens transitions/animations and zoom handoff are deliberately out of scope.
 */
internal class BackgroundUltraWideReady(context: Context) {
    companion object {
        private const val TAG = "BackgroundUltraWideReady"
    }

    private val appContext = context.applicationContext
    private val cameraManager =
        appContext.getSystemService(Context.CAMERA_SERVICE) as CameraManager
    private val thread = HandlerThread("BackgroundUltraWideReady").apply { start() }
    private val handler = Handler(thread.looper)
    private val generation = AtomicInteger(0)

    @Volatile private var standbyDevice: CameraDevice? = null
    @Volatile private var standbySession: CameraCaptureSession? = null
    @Volatile private var standbyTexture: SurfaceTexture? = null
    @Volatile private var standbySurface: Surface? = null
    @Volatile private var standbyCameraId: String? = null
    @Volatile private var activeCameraId: String? = null
    private var pendingCameraTransfer: PendingCameraTransfer? = null
    private var transferredStateCallback: CameraDevice.StateCallback? = null
    @Volatile private var transferredDevice: CameraDevice? = null

    private data class PendingCameraTransfer(
        val cameraId: String,
        val session: CameraCaptureSession,
        val stateCallback: CameraDevice.StateCallback,
        val onReady: (CameraDevice?) -> Unit
    )

    /** True only when the standby device and its warm-up stream are both ready for hand-off. */
    fun isReadyFor(cameraId: String): Boolean =
        standbyCameraId == cameraId && standbyDevice != null && standbySession != null

    /**
     * Close the warm-up session, then transfer the already-open device to the controller.
     * Returns false only when no hand-off was scheduled.
     */
    fun consumeReadyCamera(
        cameraId: String,
        stateCallback: CameraDevice.StateCallback,
        onReady: (CameraDevice?) -> Unit
    ): Boolean {
        if (!isReadyFor(cameraId)) return false
        return handler.post {
            if (standbyCameraId != cameraId || standbyDevice == null || standbySession == null ||
                pendingCameraTransfer != null
            ) {
                onReady(null)
                return@post
            }
            val session = standbySession ?: run {
                onReady(null)
                return@post
            }
            pendingCameraTransfer = PendingCameraTransfer(
                cameraId = cameraId,
                session = session,
                stateCallback = stateCallback,
                onReady = onReady
            )
            try {
                session.stopRepeating()
            } catch (_: Exception) {
                // Closing the session below is the authoritative teardown operation.
            }
            try {
                session.close()
            } catch (error: Exception) {
                pendingCameraTransfer = null
                PLog.w(TAG, "Unable to detach warmed session for $cameraId: ${error.message}")
                onReady(null)
                releaseLocked()
            }
        }
    }

    fun update(
        cameras: List<CameraInfo>,
        currentCameraId: String,
        activeOpenCameraId: String?,
        requestedSize: Size? = null
    ) {
        handler.post {
            // Prefer the exact selected lens. Logical cameras commonly share the same open ID,
            // so matching logicalCameraId first can select the wrong lens for standby.
            val active = cameras.firstOrNull { it.cameraId == currentCameraId }
                ?: cameras.firstOrNull { it.getOpenCameraId() == activeOpenCameraId }
            val ultraWide = cameras.firstOrNull { it.lensType == LensType.BACK_ULTRA_WIDE }
            val main = cameras.firstOrNull { it.lensType == LensType.BACK_MAIN }
            val standby = if (active?.lensType == LensType.BACK_ULTRA_WIDE) main else ultraWide
            val activeId = activeOpenCameraId ?: active?.getOpenCameraId()

            if (active == null || standby == null || activeId.isNullOrBlank()) {
                releaseLocked()
                return@post
            }
            val standbyId = try {
                standby.getOpenCameraId()
            } catch (_: RuntimeException) {
                standby.logicalCameraId ?: standby.cameraId
            }
            if (standbyId == activeId) {
                // Same logical camera requires a physical OutputConfiguration on the active
                // session; do not open the same CameraDevice twice.
                releaseLocked()
                return@post
            }
            val concurrentPairSupported = Build.VERSION.SDK_INT >= Build.VERSION_CODES.R &&
                try {
                    cameraManager.concurrentCameraIds.any { ids ->
                        ids.contains(activeId) && ids.contains(standbyId)
                    }
                } catch (error: Exception) {
                    PLog.w(TAG, "Unable to query concurrent camera combinations: ${error.message}")
                    false
                }
            if (!concurrentPairSupported) {
                releaseLocked()
                PLog.d(TAG, "Background lens warm-up skipped: camera pair is not declared concurrent")
                return@post
            }
            if (standbyCameraId == standbyId && standbyDevice != null && standbySession != null &&
                activeCameraId == activeId
            ) {
                return@post
            }

            releaseLocked()
            activeCameraId = activeId
            val token = generation.incrementAndGet()
            try {
                @Suppress("DEPRECATION")
                val map = cameraManager.getCameraCharacteristics(standbyId)
                    .get(android.hardware.camera2.CameraCharacteristics.SCALER_STREAM_CONFIGURATION_MAP)
                val sizes = map?.getOutputSizes(SurfaceTexture::class.java).orEmpty()
                val targetSize = requestedSize ?: Size(640, 480)
                // Prefer the selected photo viewfinder/video input dimensions when the standby
                // camera advertises them. Camera output sizes may be returned landscape-first,
                // so compare both orientations when choosing the closest supported size.
                val chosenSize = sizes.minByOrNull { size ->
                    minOf(
                        kotlin.math.abs(size.width - targetSize.width) +
                            kotlin.math.abs(size.height - targetSize.height),
                        kotlin.math.abs(size.width - targetSize.height) +
                            kotlin.math.abs(size.height - targetSize.width)
                    )
                } ?: Size(640, 480)
                val texture = SurfaceTexture(0).apply {
                    setDefaultBufferSize(chosenSize.width, chosenSize.height)
                }
                val surface = Surface(texture)
                standbyTexture = texture
                standbySurface = surface
                standbyCameraId = standbyId

                @SuppressLint("MissingPermission")
                cameraManager.openCamera(standbyId, object : CameraDevice.StateCallback() {
                    override fun onOpened(camera: CameraDevice) {
                        if (generation.get() != token || activeCameraId != activeId) {
                            camera.close()
                            return
                        }
                        standbyDevice = camera
                        try {
                            camera.createCaptureSession(
                                listOf(surface),
                                object : CameraCaptureSession.StateCallback() {
                                    override fun onConfigured(session: CameraCaptureSession) {
                                        if (generation.get() != token || standbyDevice !== camera) {
                                            session.close()
                                            return
                                        }
                                        try {
                                            val request = camera.createCaptureRequest(CameraDevice.TEMPLATE_PREVIEW)
                                                .apply { addTarget(surface) }
                                                .build()
                                            session.setRepeatingRequest(request, null, handler)
                                            standbySession = session
                                            PLog.i(TAG, "Ultra-wide standby stream ready: cameraId=$standbyId, size=${chosenSize.width}x${chosenSize.height}")
                                        } catch (error: Exception) {
                                            PLog.w(TAG, "Could not start standby repeating stream: ${error.message}")
                                            session.close()
                                            camera.close()
                                            releaseResourcesForToken(token)
                                        }
                                    }

                                    override fun onConfigureFailed(session: CameraCaptureSession) {
                                        session.close()
                                        camera.close()
                                        releaseResourcesForToken(token)
                                        PLog.w(TAG, "Standby session configuration failed for $standbyId")
                                    }

                                    override fun onClosed(session: CameraCaptureSession) {
                                        if (standbySession === session) standbySession = null
                                        val pending = pendingCameraTransfer ?: return
                                        if (pending.session !== session || pending.cameraId != standbyCameraId) return
                                        val device = standbyDevice ?: run {
                                            pendingCameraTransfer = null
                                            pending.onReady(null)
                                            return
                                        }

                                        // Detach the warm-up outputs before configuring the real
                                        // viewfinder/encoder/capture outputs on this same device.
                                        pendingCameraTransfer = null
                                        standbyDevice = null
                                        standbyCameraId = null
                                        activeCameraId = null
                                        releaseStandbyOutputLocked()
                                        transferredDevice = device
                                        transferredStateCallback = pending.stateCallback
                                        PLog.i(TAG, "Handing warmed camera $standbyId to the active camera pipeline")
                                        pending.onReady(device)
                                    }
                                },
                                handler
                            )
                        } catch (error: Exception) {
                            PLog.w(TAG, "Could not configure standby camera $standbyId: ${error.message}")
                            camera.close()
                            releaseResourcesForToken(token)
                        }
                    }

                    override fun onDisconnected(camera: CameraDevice) {
                        if (transferredDevice === camera) {
                            transferredStateCallback?.onDisconnected(camera)
                            return
                        }
                        camera.close()
                        releaseResourcesForToken(token)
                        PLog.w(TAG, "Standby camera disconnected: $standbyId")
                    }

                    override fun onError(camera: CameraDevice, error: Int) {
                        if (transferredDevice === camera) {
                            transferredStateCallback?.onError(camera, error)
                            return
                        }
                        camera.close()
                        releaseResourcesForToken(token)
                        PLog.w(TAG, "Standby camera error: id=$standbyId, code=$error")
                    }

                    override fun onClosed(camera: CameraDevice) {
                        if (transferredDevice === camera) {
                            val owner = transferredStateCallback
                            transferredDevice = null
                            transferredStateCallback = null
                            owner?.onClosed(camera)
                        } else {
                            releaseResourcesForToken(token)
                        }
                    }
                }, handler)
            } catch (error: Exception) {
                PLog.w(TAG, "Background lens warm-up failed safely: ${error.message}")
                releaseLocked()
            }
        }
    }

    fun stop() {
        handler.post { releaseLocked() }
    }

    private fun releaseResourcesForToken(token: Int) {
        if (generation.get() != token) return
        releaseLocked()
    }

    private fun releaseStandbyOutputLocked() {
        try { standbySurface?.release() } catch (_: Exception) {}
        standbySurface = null
        try { standbyTexture?.release() } catch (_: Exception) {}
        standbyTexture = null
    }

    private fun releaseLocked() {
        generation.incrementAndGet()
        val pending = pendingCameraTransfer
        pendingCameraTransfer = null
        try { standbySession?.stopRepeating() } catch (_: Exception) {}
        try { standbySession?.close() } catch (_: Exception) {}
        standbySession = null
        try { standbyDevice?.close() } catch (_: Exception) {}
        standbyDevice = null
        releaseStandbyOutputLocked()
        standbyCameraId = null
        activeCameraId = null
        pending?.onReady?.invoke(null)
    }
}
