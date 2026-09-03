package com.hinnka.mycamera.stabilization

import android.content.Context
import android.graphics.Rect
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureRequest
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.TotalCaptureResult
import android.media.Image
import android.os.Build
import android.os.Handler
import android.os.HandlerThread
import android.util.SizeF
import androidx.annotation.RequiresApi
import com.hinnka.mycamera.utils.PLog
import java.util.ArrayDeque
import java.util.LinkedHashMap
import java.util.concurrent.atomic.AtomicBoolean

const val STABILIZATION_ROW_COUNT = MgcEisNativeEngine.STRIP_COUNT
const val STABILIZATION_LOOKAHEAD_FRAME_COUNT = MgcEisNativeEngine.LOOKAHEAD_FRAME_COUNT
// MGC profile 7 passes 1.0 to setStabilizationStrength. The value is consumed by the packed
// method-4 look-ahead pose blend; the outer full-grid feasibility correction is independent.
const val DEFAULT_VIDEO_STABILIZATION_STRENGTH = 1f
const val DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD = 7
const val MIN_VIDEO_STABILIZATION_LOOKAHEAD = 3
const val MAX_VIDEO_STABILIZATION_LOOKAHEAD = 10

fun normalizeStabilizationStrength(strength: Float): Float =
    if (strength.isFinite()) strength.coerceIn(0f, 1f) else DEFAULT_VIDEO_STABILIZATION_STRENGTH

fun normalizeStabilizationLookahead(lookahead: Int): Int =
    lookahead.coerceIn(MIN_VIDEO_STABILIZATION_LOOKAHEAD, MAX_VIDEO_STABILIZATION_LOOKAHEAD)

enum class StabilizationUseCase(
    internal val defaultStrength: Float,
) {
    VIDEO(DEFAULT_VIDEO_STABILIZATION_STRENGTH),
    PHOTO_PREVIEW(DEFAULT_VIDEO_STABILIZATION_STRENGTH),
}

data class AlgorithmicStabilizationTransform(
    /** SENSOR_TIMESTAMP of the buffered image for which MGC emitted this transform. */
    val timestampNs: Long,
    /** MGC's 12 row-major forward vertex homographies, without inversion or interpolation. */
    val rowHomographies: FloatArray,
    /** SurfaceTexture crop associated with the buffered image, applied before the row mesh. */
    val cropRect: FloatArray,
    val hasPoseCoverage: Boolean,
    /** Applied source-engine correction after the crop feasibility constraint. */
    val appliedStrength: Float,
    val tripodMode: Boolean,
)

data class StabilizationFrame(
    val timestampNs: Long,
    /** Null means MGC explicitly dropped stabilization for this source frame. */
    val transform: AlgorithmicStabilizationTransform?,
    /** Exact Camera2 image whose SENSOR_TIMESTAMP equals [timestampNs]. */
    val image: StabilizationImage,
)

/**
 * Reference-counted view of one Camera2 YUV image shared by preview and recording consumers.
 * The underlying [Image] stays open until every consumer has finished its synchronous GL upload.
 */
class StabilizationImage internal constructor(
    val timestampNs: Long,
    val width: Int,
    val height: Int,
    internal val image: Image,
    private val onClose: () -> Unit,
) : AutoCloseable {
    private val closed = AtomicBoolean(false)

    override fun close() {
        if (closed.compareAndSet(false, true)) onClose()
    }
}

private data class CameraCalibration(
    val cameraId: String,
    val activeArray: Rect,
    val preCorrectionActiveArray: Rect,
    val physicalSizeMm: SizeF,
    val nominalLensIntrinsics: FloatArray?,
    val lensFacing: Int,
    val sensorOrientationDegrees: Int,
    val timestampSource: Int,
    val supportsOisSamples: Boolean,
    val supportsLensIntrinsicsSamples: Boolean,
)

private data class FrameMetadata(
    val timestampNs: Long,
    val exposureTimeNs: Long,
    val rollingShutterSkewNs: Long,
    val cropRegion: Rect,
    val focalLengthMm: Float,
)

private data class GyroSample(
    val timestampNs: Long,
    val x: Float,
    val y: Float,
    val z: Float,
)

private data class DynamicLensIntrinsics(
    val timestampNs: Long,
    val values: FloatArray,
)

@RequiresApi(Build.VERSION_CODES.VANILLA_ICE_CREAM)
private fun readDynamicLensIntrinsics(
    physicalResult: CaptureResult?,
    logicalResult: CaptureResult,
): List<DynamicLensIntrinsics> =
    (physicalResult?.get(CaptureResult.STATISTICS_LENS_INTRINSICS_SAMPLES)
        ?: logicalResult.get(CaptureResult.STATISTICS_LENS_INTRINSICS_SAMPLES))
        .orEmpty()
        .map { sample ->
            DynamicLensIntrinsics(
                timestampNs = sample.timestampNanos,
                values = sample.lensIntrinsics.copyOf(),
            )
        }

private fun isPlausibleDynamicLensIntrinsics(
    sample: DynamicLensIntrinsics,
    calibration: CameraCalibration,
): Boolean {
    val nominal = calibration.nominalLensIntrinsics ?: return false
    val values = sample.values
    if (sample.timestampNs <= 0L || values.size != 5 || values.any { !it.isFinite() }) {
        return false
    }
    val fxRatio = values[0] / nominal[0]
    val fyRatio = values[1] / nominal[1]
    val preWidth = calibration.preCorrectionActiveArray.width().coerceAtLeast(1)
    val preHeight = calibration.preCorrectionActiveArray.height().coerceAtLeast(1)
    return fxRatio in 0.5f..2f && fyRatio in 0.5f..2f &&
        kotlin.math.abs(values[2] - nominal[2]) <= preWidth * 0.25f &&
        kotlin.math.abs(values[3] - nominal[3]) <= preHeight * 0.25f &&
        kotlin.math.abs(values[4] - nominal[4]) <= preWidth * 0.25f
}

private fun magnifyDynamicLensIntrinsics(
    values: FloatArray,
    nominal: FloatArray?,
    magnification: Float,
): FloatArray {
    if (magnification <= MIN_EXTERNAL_LENS_MAGNIFICATION ||
        nominal == null || nominal.size != 5 || values.size != 5
    ) {
        return values
    }
    return values.copyOf().also { adjusted ->
        // The native engine applies dynamic fx/fy as ratios against the nominal calibration;
        // the frame's effective focal length already carries the external magnification. Keep
        // those ratios unchanged and magnify only the OIS-induced optical-center/skew deltas.
        adjusted[2] = nominal[2] + (values[2] - nominal[2]) * magnification
        adjusted[3] = nominal[3] + (values[3] - nominal[3]) * magnification
        adjusted[4] = nominal[4] + (values[4] - nominal[4]) * magnification
    }
}

private data class SequencedNativeResult(
    val sequence: Long,
    val result: MgcEisNativeEngine.FrameResult,
)

private data class BufferedStabilizationImage(
    val image: Image,
    val width: Int,
    val height: Int,
    val pendingSessionIds: MutableSet<Long>,
    var acquiredLeaseCount: Int = 0,
)

/**
 * Source reconstruction of MGC's htd frame feeder around Photon's native EIS implementation.
 *
 * Camera metadata, calibrated gyro samples and optional OIS samples are held until they cross the
 * next timestamped image boundary. Reconstructed profile 7 then supplies a seven-frame
 * look-ahead. Preview and recording sessions share the feeder, source image and
 * result stream.
 */
class RealtimeStabilizationCoordinator(context: Context) {
    companion object {
        private const val TAG = "RealtimeStabilization"
        private const val SOURCE_DEAD_TIMEOUT_NS = 1_000_000_000L
        private const val MAX_RESULT_COUNT = 90
        private const val MAX_METADATA_COUNT = 90
        private const val MAX_PENDING_GYRO_COUNT = 4096
        private const val HAL_STABILIZATION_CONFLICT_CONFIRMATION_FRAME_COUNT = 3
        private const val HAL_OPTICAL_CORRECTION_PROBE_FRAME_COUNT = 5
        private const val MIN_OPTICAL_CORRECTION_SAMPLES_PER_FRAME = 2
        private const val MAX_BUFFERED_STABILIZATION_IMAGES =
            STABILIZATION_LOOKAHEAD_FRAME_COUNT + 8
        const val STABILIZATION_IMAGE_READER_MAX_IMAGES =
            MAX_BUFFERED_STABILIZATION_IMAGES + 2
    }

    private val sensorManager = context.applicationContext
        .getSystemService(Context.SENSOR_SERVICE) as SensorManager
    // MGC's EIS path requests Android sensor type 4: the calibrated gyroscope.
    private val gyroSensor = sensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE)
    private val nativeEngine = MgcEisNativeEngine(context.applicationContext.cacheDir)
    private val lock = Any()
    private val pendingGyroSamples = ArrayDeque<GyroSample>()
    private val frameMetadata = LinkedHashMap<Long, FrameMetadata>()
    private val frameBoundaries = ArrayList<Long>()
    private val nativeResults = ArrayDeque<SequencedNativeResult>()
    private val bufferedImages = LinkedHashMap<Long, BufferedStabilizationImage>()
    private val activeSessions = LinkedHashMap<Long, (() -> Unit)?>()

    @Volatile
    private var calibration: CameraCalibration? = null

    @Volatile
    private var externalLensStabilizationConfig = ExternalLensStabilizationConfig.Disabled

    @Volatile
    private var gyroSourceReady = false

    @Volatile
    private var halStabilizationConflictDetected = false

    private var activeSessionCount = 0
    private var nextSessionId = 1L
    private var sensorThread: HandlerThread? = null
    private var nativeFrameWidth = 0
    private var nativeFrameHeight = 0
    private var nativeStrength = 0f
    private var nativeLookaheadFrames = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD
    private var gyroFeedBoundaryNs = 0L
    private var lastProcessedGyroTimestampNs = 0L
    private var lastOpticalCorrectionTimestampNs = 0L
    private var latestMetadataTimestampNs = 0L
    private var lastFrameBoundaryNs = 0L
    private var resultSequence = 0L
    private var boundaryCount = 0L
    private var nativeFrameAttemptCount = 0L
    private var captureResultCount = 0L
    private var consecutiveHalStabilizationConflictCount = 0
    private var rawGyroCallbackCount = 0L
    private var opticalCorrectionSourceActive = false
    private var dynamicLensIntrinsicsSourceActive = false
    private var lastLoggedBoundaryCount = -1L
    private var lastLoggedGateBoundaryCount = -1L

    var onEnhancedStabilizationUnavailable: (() -> Unit)? = null

    val isGyroscopeAvailable: Boolean
        get() = gyroSensor != null

    /**
     * Keep legacy OIS telemetry enabled as a runtime probe even when static metadata claims that
     * OIS is unavailable. Some HALs ignore an OFF request while omitting OIS from the mode list;
     * without this probe EIS+ would discard the only correction stream it could potentially fuse.
     */
    val shouldRequestOisSamples: Boolean
        get() = calibration?.supportsLensIntrinsicsSamples != true

    /** True after this acquisition has received its first monotonic calibrated gyro sample. */
    val isPoseSourceReady: Boolean
        get() = gyroSourceReady

    fun setExternalLensStabilizationConfig(config: ExternalLensStabilizationConfig) {
        val normalized = config.normalized()
        if (externalLensStabilizationConfig == normalized) return
        externalLensStabilizationConfig = normalized
        PLog.i(
            TAG,
            if (normalized.isEnabled) {
                "MGC external lens stabilization enabled: " +
                    "camera=${normalized.physicalCameraId}, " +
                    "magnification=${normalized.magnification}x"
            } else {
                "MGC external lens stabilization disabled"
            },
        )
    }

    val isCurrentCameraSupported: Boolean
        get() {
            val current = calibration
            return !halStabilizationConflictDetected &&
                isGyroscopeAvailable && current != null &&
                current.lensFacing == CameraCharacteristics.LENS_FACING_BACK &&
                current.timestampSource ==
                CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_REALTIME
        }

    fun isCameraSupported(
        characteristics: CameraCharacteristics,
        timingCharacteristics: CameraCharacteristics = characteristics,
    ): Boolean {
        val lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING)
            ?: timingCharacteristics.get(CameraCharacteristics.LENS_FACING)
        val timestampSource = timingCharacteristics.get(
            CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE,
        ) ?: CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN
        val activeArray = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)
        val physicalSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)
        return isGyroscopeAvailable && activeArray != null && physicalSize != null &&
            lensFacing == CameraCharacteristics.LENS_FACING_BACK &&
            timestampSource == CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_REALTIME
    }

    private val sensorListener = object : SensorEventListener {
        override fun onSensorChanged(event: SensorEvent) {
            rawGyroCallbackCount += 1L
            if (rawGyroCallbackCount <= 3L || rawGyroCallbackCount % 500L == 0L) {
                PLog.i(
                    TAG,
                    "MGC raw gyro callback #$rawGyroCallbackCount: " +
                        "sensorType=${event.sensor.type}, values=${event.values.size}, " +
                        "ts=${event.timestamp}",
                )
            }
            if (event.values.size < 3) return
            val mapped = remapMgcGyro(
                x = event.values[0],
                y = event.values[1],
                z = event.values[2],
                calibration = calibration,
            )
            synchronized(lock) {
                if (activeSessionCount <= 0) return
                val previousTimestampNs = pendingGyroSamples.lastOrNull()?.timestampNs
                    ?: lastProcessedGyroTimestampNs
                if (event.timestamp <= previousTimestampNs) return
                pendingGyroSamples.addLast(
                    GyroSample(event.timestamp, mapped.first, mapped.second, mapped.third),
                )
                gyroSourceReady = true
                while (pendingGyroSamples.size > MAX_PENDING_GYRO_COUNT) {
                    pendingGyroSamples.removeFirst()
                }
                feedGyroThroughBoundaryLocked()
                drainFramesLocked(lastFrameBoundaryNs)
            }
        }

        override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) = Unit
    }

    fun configureCamera(
        cameraId: String,
        characteristics: CameraCharacteristics,
        timingCharacteristics: CameraCharacteristics = characteristics,
    ) {
        synchronized(lock) {
            halStabilizationConflictDetected = false
            consecutiveHalStabilizationConflictCount = 0
        }
        val activeArray = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)
        val physicalSize = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE)
        if (activeArray == null || physicalSize == null) {
            calibration = null
            return
        }
        val nominalLensIntrinsics = characteristics.get(
            CameraCharacteristics.LENS_INTRINSIC_CALIBRATION,
        )?.takeIf { values ->
            values.size == 5 && values.all(Float::isFinite) &&
                values[0] > 0f && values[1] > 0f
        }?.copyOf()
        val resultKeyNames = buildSet {
            characteristics.availableCaptureResultKeys.mapTo(this) { it.name }
            timingCharacteristics.availableCaptureResultKeys.mapTo(this) { it.name }
        }
        val requestKeyNames = timingCharacteristics.availableCaptureRequestKeys
            .mapTo(hashSetOf()) { it.name }
        val availableOisDataModes = timingCharacteristics.get(
            CameraCharacteristics.STATISTICS_INFO_AVAILABLE_OIS_DATA_MODES,
        ) ?: characteristics.get(
            CameraCharacteristics.STATISTICS_INFO_AVAILABLE_OIS_DATA_MODES,
        ) ?: intArrayOf()
        val supportsOisSamples =
            resultKeyNames.contains(CaptureResult.STATISTICS_OIS_SAMPLES.name) &&
                requestKeyNames.contains(CaptureRequest.STATISTICS_OIS_DATA_MODE.name) &&
                availableOisDataModes.contains(CaptureRequest.STATISTICS_OIS_DATA_MODE_ON)
        val supportsLensIntrinsicsSamples = Build.VERSION.SDK_INT >= Build.VERSION_CODES.VANILLA_ICE_CREAM &&
            nominalLensIntrinsics != null &&
            resultKeyNames.contains(CaptureResult.STATISTICS_LENS_INTRINSICS_SAMPLES.name)
        calibration = CameraCalibration(
            cameraId = cameraId,
            activeArray = Rect(activeArray),
            preCorrectionActiveArray = Rect(
                characteristics.get(
                    CameraCharacteristics.SENSOR_INFO_PRE_CORRECTION_ACTIVE_ARRAY_SIZE,
                ) ?: activeArray,
            ),
            physicalSizeMm = physicalSize,
            nominalLensIntrinsics = nominalLensIntrinsics,
            lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING)
                ?: timingCharacteristics.get(CameraCharacteristics.LENS_FACING)
                ?: CameraCharacteristics.LENS_FACING_BACK,
            sensorOrientationDegrees = characteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)
                ?: timingCharacteristics.get(CameraCharacteristics.SENSOR_ORIENTATION)
                ?: 0,
            timestampSource = timingCharacteristics.get(
                CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE,
            ) ?: CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN,
            supportsOisSamples = supportsOisSamples,
            supportsLensIntrinsicsSamples = supportsLensIntrinsicsSamples,
        )
        PLog.i(
            TAG,
            "MGC camera calibration: camera=$cameraId, active=$activeArray, physical=$physicalSize, " +
                "orientation=${calibration?.sensorOrientationDegrees}, " +
                "facing=${calibration?.lensFacing}, timestampSource=${calibration?.timestampSource}, " +
                "oisSamples=$supportsOisSamples, " +
                "lensIntrinsicsSamples=$supportsLensIntrinsicsSamples, " +
                "externalMagnification=" +
                externalLensStabilizationConfig.magnificationFor(cameraId),
        )
    }

    fun submitCaptureResult(
        result: CaptureResult,
        request: CaptureRequest? = null,
        outputPhysicalCameraId: String? = null,
    ) {
        val totalResult = result as? TotalCaptureResult
        val resultPhysicalCameraId = outputPhysicalCameraId
            ?: totalResult?.get(CaptureResult.LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID)
        val physicalResult = resultPhysicalCameraId?.let {
            totalResult?.physicalCameraResults?.get(it)
        }
        fun <T> value(key: CaptureResult.Key<T>): T? =
            physicalResult?.get(key) ?: result.get(key)

        val currentCalibration = calibration ?: return
        val stabilizationCameraId = resultPhysicalCameraId ?: currentCalibration.cameraId
        val externalMagnification = externalLensStabilizationConfig
            .magnificationFor(stabilizationCameraId)
        val timestampNs = value(CaptureResult.SENSOR_TIMESTAMP) ?: return
        val reportedFocalLengthMm = value(CaptureResult.LENS_FOCAL_LENGTH)
            ?.coerceAtLeast(0f) ?: 0f
        val metadata = FrameMetadata(
            timestampNs = timestampNs,
            exposureTimeNs = value(CaptureResult.SENSOR_EXPOSURE_TIME)?.coerceAtLeast(0L) ?: 0L,
            rollingShutterSkewNs = value(CaptureResult.SENSOR_ROLLING_SHUTTER_SKEW)
                ?.coerceAtLeast(0L) ?: 0L,
            cropRegion = value(CaptureResult.SCALER_CROP_REGION)?.let(::Rect)
                ?: Rect(currentCalibration.activeArray),
            focalLengthMm = reportedFocalLengthMm * externalMagnification,
        )
        val oisSamples = value(CaptureResult.STATISTICS_OIS_SAMPLES).orEmpty()
        val dynamicLensIntrinsics = if (
            currentCalibration.supportsLensIntrinsicsSamples &&
            Build.VERSION.SDK_INT >= Build.VERSION_CODES.VANILLA_ICE_CREAM
        ) {
            readDynamicLensIntrinsics(physicalResult, result)
        } else {
            emptyList()
        }
        synchronized(lock) {
            captureResultCount += 1L
            val requestedVideoStabilization = request?.get(
                CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE,
            )
            val actualVideoStabilization = value(
                CaptureResult.CONTROL_VIDEO_STABILIZATION_MODE,
            )
            val requestedOpticalStabilization = request?.get(
                CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE,
            )
            val actualOpticalStabilization = value(
                CaptureResult.LENS_OPTICAL_STABILIZATION_MODE,
            )
            val requestedOisDataMode = request?.get(
                CaptureRequest.STATISTICS_OIS_DATA_MODE,
            )
            var acceptedOpticalCorrectionSamples = 0
            // API-35 intrinsics already include every OIS/focus/zoom contribution. Once that
            // source is advertised, never stack or alternate legacy OIS shifts on top of it.
            if (currentCalibration.supportsLensIntrinsicsSamples) {
                dynamicLensIntrinsics.sortedBy(DynamicLensIntrinsics::timestampNs).forEach { sample ->
                    if (!isPlausibleDynamicLensIntrinsics(sample, currentCalibration) ||
                        (lastOpticalCorrectionTimestampNs > 0L &&
                            sample.timestampNs <= lastOpticalCorrectionTimestampNs)
                    ) {
                        return@forEach
                    }
                    if (nativeEngine.processLensIntrinsics(
                            intrinsics = magnifyDynamicLensIntrinsics(
                                values = sample.values,
                                nominal = currentCalibration.nominalLensIntrinsics,
                                magnification = externalMagnification,
                            ),
                            timestampNs = sample.timestampNs,
                            cameraType = 0,
                        )
                    ) {
                        lastOpticalCorrectionTimestampNs = sample.timestampNs
                        opticalCorrectionSourceActive = true
                        dynamicLensIntrinsicsSourceActive = true
                        acceptedOpticalCorrectionSamples += 1
                    }
                }
            } else {
                oisSamples.forEach { sample ->
                    if (!sample.xshift.isFinite() || !sample.yshift.isFinite() ||
                        sample.timestamp <= 0L ||
                        kotlin.math.abs(sample.xshift) >
                        currentCalibration.preCorrectionActiveArray.width() * 0.25f ||
                        kotlin.math.abs(sample.yshift) >
                        currentCalibration.preCorrectionActiveArray.height() * 0.25f ||
                        (lastOpticalCorrectionTimestampNs > 0L &&
                            sample.timestamp <= lastOpticalCorrectionTimestampNs)
                    ) {
                        return@forEach
                    }
                    if (nativeEngine.processLensOffset(
                            xShiftPixels = sample.xshift * externalMagnification,
                            yShiftPixels = sample.yshift * externalMagnification,
                            timestampNs = sample.timestamp,
                            cameraType = 0,
                        )
                    ) {
                        lastOpticalCorrectionTimestampNs = sample.timestamp
                        opticalCorrectionSourceActive = true
                        acceptedOpticalCorrectionSamples += 1
                    }
                }
            }
            val opticalCorrectionAccepted = acceptedOpticalCorrectionSamples >=
                MIN_OPTICAL_CORRECTION_SAMPLES_PER_FRAME
            if (activeSessionCount > 0 &&
                (captureResultCount <= 3L || captureResultCount % 30L == 0L)
            ) {
                PLog.i(
                    TAG,
                    "MGC CaptureResult #$captureResultCount: ts=$timestampNs, " +
                        "camera=$stabilizationCameraId, " +
                        "reportedFocal=$reportedFocalLengthMm, " +
                        "externalMagnification=$externalMagnification, " +
                        "effectiveFocal=${metadata.focalLengthMm}, " +
                        "requestedVideoStabilization=" +
                        requestedVideoStabilization +
                        ", requestedOpticalStabilization=" +
                        requestedOpticalStabilization +
                        ", requestedOisDataMode=" +
                        requestedOisDataMode +
                        ", actualVideoStabilization=" +
                        actualVideoStabilization +
                        ", actualOpticalStabilization=" +
                        actualOpticalStabilization +
                        ", oisSamples=${oisSamples.size}" +
                        ", lensIntrinsicsSamples=${dynamicLensIntrinsics.size}" +
                        ", opticalCorrectionAccepted=$opticalCorrectionAccepted" +
                        ", acceptedCorrectionSamples=$acceptedOpticalCorrectionSamples",
                )
            }
            if (detectHalStabilizationConflictLocked(
                    actualVideoMode = actualVideoStabilization,
                    requestedOpticalMode = requestedOpticalStabilization,
                    actualOpticalMode = actualOpticalStabilization,
                    opticalCorrectionAccepted = opticalCorrectionAccepted,
                )
            ) {
                disableEnhancedStabilizationLocked(
                    requestedVideoMode = requestedVideoStabilization,
                    actualVideoMode = actualVideoStabilization,
                    requestedOpticalMode = requestedOpticalStabilization,
                    actualOpticalMode = actualOpticalStabilization,
                )
                return@synchronized
            }
            frameMetadata[timestampNs] = metadata
            latestMetadataTimestampNs = maxOf(latestMetadataTimestampNs, timestampNs)
            trimOldest(frameMetadata, MAX_METADATA_COUNT)
            drainFramesLocked(lastFrameBoundaryNs)
        }
    }

    fun createSession(
        useCase: StabilizationUseCase,
        strength: Float = useCase.defaultStrength,
        frameWidth: Int = 1920,
        frameHeight: Int = 1080,
        lookaheadFrames: Int = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD,
        onFrameAvailable: (() -> Unit)? = null,
    ): Session = Session(
        coordinator = this,
        sessionId = synchronized(lock) { nextSessionId++ },
        strength = normalizeStabilizationStrength(strength),
        frameWidth = frameWidth,
        frameHeight = frameHeight,
        lookaheadFrames = normalizeStabilizationLookahead(lookaheadFrames),
        onFrameAvailable = onFrameAvailable,
    )

    /**
     * Accepts every ImageReader image in FIFO order. This is the only EIS frame-boundary source:
     * SurfaceTexture callbacks are presentation signals and must never advance the native feeder.
     */
    fun submitStabilizationImage(image: Image) {
        val timestampNs = image.timestamp
        synchronized(lock) {
            if (activeSessionCount <= 0 || timestampNs <= 0L ||
                image.width != nativeFrameWidth || image.height != nativeFrameHeight
            ) {
                image.close()
                return
            }
            bufferedImages.remove(timestampNs)?.image?.close()
            bufferedImages[timestampNs] = BufferedStabilizationImage(
                image = image,
                width = image.width,
                height = image.height,
                pendingSessionIds = activeSessions.keys.toMutableSet(),
            )
            trimBufferedImagesLocked()
            onFrameBoundaryLocked(timestampNs)
        }
    }

    private fun acquire(
        sessionId: Long,
        onFrameAvailable: (() -> Unit)?,
        frameWidth: Int,
        frameHeight: Int,
        strength: Float,
        lookaheadFrames: Int,
    ): Long? = synchronized(lock) {
        if (!isCurrentCameraSupported) return null
        val normalizedLookahead = normalizeStabilizationLookahead(lookaheadFrames)
        val sameConfig = activeSessions.isNotEmpty() &&
            nativeFrameWidth == frameWidth &&
            nativeFrameHeight == frameHeight &&
            nativeLookaheadFrames == normalizedLookahead &&
            kotlin.math.abs(nativeStrength - strength) <= 0.0001f

        if (sameConfig) {
            activeSessions[sessionId] = onFrameAvailable
            activeSessionCount = activeSessions.size
            return resultSequence
        }

        if (activeSessions.isNotEmpty()) {
            PLog.i(
                TAG,
                "MGC EIS reconfiguring from ${nativeFrameWidth}x${nativeFrameHeight}@$nativeStrength,lookahead=$nativeLookaheadFrames " +
                    "to ${frameWidth}x${frameHeight}@$strength,lookahead=$normalizedLookahead",
            )
            nativeEngine.stop()
            resetFeederLocked()
            nativeFrameWidth = 0
            nativeFrameHeight = 0
            nativeStrength = 0f
            nativeLookaheadFrames = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD
            activeSessions.clear()
            activeSessionCount = 0
        }

        val currentCalibration = calibration ?: return null
        val sensor = gyroSensor ?: return null
        if (!nativeEngine.start(
                width = frameWidth,
                height = frameHeight,
                frontFacing = currentCalibration.lensFacing ==
                    CameraCharacteristics.LENS_FACING_FRONT,
                strength = strength,
                lookaheadFrames = normalizedLookahead,
            )
        ) {
            return null
        }

        resetFeederLocked()
        nativeFrameWidth = frameWidth
        nativeFrameHeight = frameHeight
        nativeStrength = strength
        nativeLookaheadFrames = normalizedLookahead
        if (sensorThread == null) {
            val thread = HandlerThread("Photon-MGC-EIS-Gyro").apply { start() }
            val registered = sensorManager.registerListener(
                sensorListener,
                sensor,
                SensorManager.SENSOR_DELAY_FASTEST,
                0,
                Handler(thread.looper),
            )
            if (!registered) {
                thread.quitSafely()
                nativeEngine.stop()
                nativeFrameWidth = 0
                nativeFrameHeight = 0
                nativeStrength = 0f
                nativeLookaheadFrames = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD
                PLog.e(TAG, "Unable to register MGC calibrated gyroscope stream")
                return null
            }
            sensorThread = thread
        }
        activeSessions[sessionId] = onFrameAvailable
        activeSessionCount = activeSessions.size
        PLog.i(TAG, "MGC htd feeder started with gyro=${sensor.name}")
        resultSequence
    }

    private fun release(sessionId: Long) {
        synchronized(lock) {
            if (!activeSessions.containsKey(sessionId)) return
            activeSessions.remove(sessionId)
            bufferedImages.values.forEach { it.pendingSessionIds.remove(sessionId) }
            closeFullyConsumedImagesLocked()
            activeSessionCount = activeSessions.size
            if (activeSessionCount > 0) return
            sensorManager.unregisterListener(sensorListener)
            sensorThread?.quitSafely()
            sensorThread = null
            nativeEngine.stop()
            nativeFrameWidth = 0
            nativeFrameHeight = 0
            nativeStrength = 0f
            nativeLookaheadFrames = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD
            resetFeederLocked()
            PLog.i(TAG, "MGC htd feeder stopped")
        }
    }

    private fun resetFeederLocked() {
        pendingGyroSamples.clear()
        frameMetadata.clear()
        frameBoundaries.clear()
        nativeResults.clear()
        bufferedImages.values.forEach { it.image.close() }
        bufferedImages.clear()
        activeSessions.clear()
        gyroFeedBoundaryNs = 0L
        lastProcessedGyroTimestampNs = 0L
        lastOpticalCorrectionTimestampNs = 0L
        latestMetadataTimestampNs = 0L
        lastFrameBoundaryNs = 0L
        resultSequence = 0L
        boundaryCount = 0L
        nativeFrameAttemptCount = 0L
        captureResultCount = 0L
        consecutiveHalStabilizationConflictCount = 0
        rawGyroCallbackCount = 0L
        gyroSourceReady = false
        opticalCorrectionSourceActive = false
        dynamicLensIntrinsicsSourceActive = false
        lastLoggedBoundaryCount = -1L
        lastLoggedGateBoundaryCount = -1L
    }

    private fun detectHalStabilizationConflictLocked(
        actualVideoMode: Int?,
        requestedOpticalMode: Int?,
        actualOpticalMode: Int?,
        opticalCorrectionAccepted: Boolean,
    ): Boolean {
        if (halStabilizationConflictDetected || activeSessionCount <= 0) {
            consecutiveHalStabilizationConflictCount = 0
            return false
        }
        val videoConflict = actualVideoMode != null &&
            actualVideoMode != CaptureRequest.CONTROL_VIDEO_STABILIZATION_MODE_OFF
        val opticalStabilizationActive = if (actualOpticalMode != null) {
            actualOpticalMode != CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_OFF
        } else {
            requestedOpticalMode == CaptureRequest.LENS_OPTICAL_STABILIZATION_MODE_ON
        }
        val opticalConflict = opticalStabilizationActive &&
            !opticalCorrectionAccepted
        if (!videoConflict && !opticalConflict) {
            consecutiveHalStabilizationConflictCount = 0
            return false
        }
        consecutiveHalStabilizationConflictCount += 1
        val confirmationFrameCount = if (videoConflict) {
            HAL_STABILIZATION_CONFLICT_CONFIRMATION_FRAME_COUNT
        } else {
            // Give a hidden/forced OIS implementation enough completed requests to start
            // returning telemetry. Five frames remain below profile 7's first delayed output.
            HAL_OPTICAL_CORRECTION_PROBE_FRAME_COUNT
        }
        return consecutiveHalStabilizationConflictCount >= confirmationFrameCount
    }

    private fun disableEnhancedStabilizationLocked(
        requestedVideoMode: Int?,
        actualVideoMode: Int?,
        requestedOpticalMode: Int?,
        actualOpticalMode: Int?,
    ) {
        halStabilizationConflictDetected = true
        val frameReadyCallbacks = activeSessions.values.toList()
        PLog.e(
            TAG,
            "Disabling MGC EIS: Camera HAL stabilization conflicts with EIS+ for " +
                "$consecutiveHalStabilizationConflictCount consecutive results " +
                "(videoRequested=$requestedVideoMode, videoActual=$actualVideoMode, " +
                "opticalRequested=$requestedOpticalMode, opticalActual=$actualOpticalMode, " +
                "opticalCorrectionActive=$opticalCorrectionSourceActive, " +
                "dynamicIntrinsics=$dynamicLensIntrinsicsSourceActive)",
        )
        sensorManager.unregisterListener(sensorListener)
        sensorThread?.quitSafely()
        sensorThread = null
        nativeEngine.stop()
        nativeFrameWidth = 0
        nativeFrameHeight = 0
        nativeStrength = 0f
        nativeLookaheadFrames = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD
        activeSessionCount = 0
        resetFeederLocked()
        frameReadyCallbacks.forEach { callback ->
            try {
                callback?.invoke()
            } catch (error: RuntimeException) {
                PLog.w(TAG, "MGC fallback callback failed: ${error.message}")
            }
        }
        try {
            onEnhancedStabilizationUnavailable?.invoke()
        } catch (error: RuntimeException) {
            PLog.w(TAG, "MGC unavailable callback failed: ${error.message}")
        }
    }

    private fun onFrameBoundaryLocked(timestampNs: Long) {
        if (activeSessionCount <= 0 || timestampNs <= 0L ||
            timestampNs <= lastFrameBoundaryNs
        ) {
            return
        }
        lastFrameBoundaryNs = timestampNs
        boundaryCount += 1L
        gyroFeedBoundaryNs = timestampNs
        val initialSourceTimestampNs = timestampNs - 1L
        if (lastProcessedGyroTimestampNs == 0L) {
            lastProcessedGyroTimestampNs = initialSourceTimestampNs
        }
        feedGyroThroughBoundaryLocked()
        frameBoundaries.add(timestampNs)
        drainFramesLocked(timestampNs)
    }

    private fun feedGyroThroughBoundaryLocked() {
        while (pendingGyroSamples.isNotEmpty()) {
            val sample = pendingGyroSamples.removeFirst()
            nativeEngine.processGyro(sample.x, sample.y, sample.z, sample.timestampNs)
            lastProcessedGyroTimestampNs = sample.timestampNs
        }
    }

    /** Literal control flow of htd.e(long), including its one-second dead-source escape. */
    private fun drainFramesLocked(currentBoundaryNs: Long) {
        if (currentBoundaryNs <= 0L || frameBoundaries.size <= 1) return
        val gyroDead = currentBoundaryNs >= lastProcessedGyroTimestampNs + SOURCE_DEAD_TIMEOUT_NS
        val opticalCorrectionDead = !opticalCorrectionSourceActive ||
            currentBoundaryNs >=
            lastOpticalCorrectionTimestampNs + SOURCE_DEAD_TIMEOUT_NS
        val metadataDead = currentBoundaryNs >= latestMetadataTimestampNs + SOURCE_DEAD_TIMEOUT_NS
        if ((boundaryCount <= 3L || boundaryCount % 15L == 0L) &&
            lastLoggedBoundaryCount != boundaryCount
        ) {
            lastLoggedBoundaryCount = boundaryCount
            PLog.i(
                TAG,
                "MGC feeder state: boundary#$boundaryCount=$currentBoundaryNs, " +
                    "queuedBoundaries=${frameBoundaries.size}, metadata=${frameMetadata.size}, " +
                    "pendingGyro=${pendingGyroSamples.size}, " +
                    "gyroLagMs=${timestampLagMs(currentBoundaryNs, lastProcessedGyroTimestampNs)}" +
                    "(dead=$gyroDead), " +
                    "opticalCorrectionLagMs=${timestampLagMs(currentBoundaryNs, lastOpticalCorrectionTimestampNs)}" +
                    "(dead=$opticalCorrectionDead,dynamic=$dynamicLensIntrinsicsSourceActive), " +
                    "metadataLagMs=${timestampLagMs(currentBoundaryNs, latestMetadataTimestampNs)}" +
                    "(dead=$metadataDead), attempts=$nativeFrameAttemptCount, " +
                    "results=$resultSequence",
            )
        }
        while (frameBoundaries.size > 1) {
            val nextBoundaryNs = frameBoundaries[1]
            if (!gyroDead && lastProcessedGyroTimestampNs < nextBoundaryNs) {
                logGateLocked("gyro", nextBoundaryNs)
                break
            }
            if (!opticalCorrectionDead && lastOpticalCorrectionTimestampNs < nextBoundaryNs) {
                logGateLocked("opticalCorrection", nextBoundaryNs)
                break
            }
            if (!metadataDead && latestMetadataTimestampNs < nextBoundaryNs) {
                logGateLocked("metadata", nextBoundaryNs)
                break
            }

            val frameTimestampNs = frameBoundaries.removeAt(0)
            val metadata = frameMetadata.remove(frameTimestampNs)
            if (metadata == null) {
                val nearestMetadataTimestampNs = frameMetadata.keys.minByOrNull {
                    absoluteTimestampDifference(it, frameTimestampNs)
                }
                PLog.w(
                    TAG,
                    "MGC has no exact metadata for boundary=$frameTimestampNs; " +
                        "nearest=$nearestMetadataTimestampNs, " +
                        "deltaNs=${nearestMetadataTimestampNs?.minus(frameTimestampNs)}",
                )
                appendNativeResultLocked(
                    MgcEisNativeEngine.FrameResult.Dropped(frameTimestampNs),
                )
                continue
            }
            val currentCalibration = calibration ?: continue
            nativeFrameAttemptCount += 1L
            if (nativeFrameAttemptCount <= 3L || nativeFrameAttemptCount % 30L == 0L) {
                PLog.i(
                    TAG,
                    "Calling MGC native processFrame #$nativeFrameAttemptCount for " +
                        "sensorTs=${metadata.timestampNs}",
                )
            }
            val result = nativeEngine.processFrame(
                MgcEisNativeEngine.FrameInput(
                    sensorTimestampNs = metadata.timestampNs,
                    exposureTimeNs = metadata.exposureTimeNs,
                    rollingShutterSkewNs = metadata.rollingShutterSkewNs,
                    cropRegion = metadata.cropRegion,
                    activeArray = currentCalibration.activeArray,
                    preCorrectionActiveArray = currentCalibration.preCorrectionActiveArray,
                    nominalLensIntrinsics = currentCalibration.nominalLensIntrinsics,
                    physicalSensorWidthMm = currentCalibration.physicalSizeMm.width,
                    focalLengthMm = metadata.focalLengthMm,
                ),
            )
            if (nativeFrameAttemptCount <= 3L || nativeFrameAttemptCount % 30L == 0L) {
                PLog.i(
                    TAG,
                    "MGC native processFrame #$nativeFrameAttemptCount returned " +
                        (result?.javaClass?.simpleName ?: "pending"),
                )
            }
            if (result != null) appendNativeResultLocked(result)
        }
    }

    private fun logGateLocked(source: String, nextBoundaryNs: Long) {
        if ((boundaryCount <= 3L || boundaryCount % 15L == 0L) &&
            lastLoggedGateBoundaryCount != boundaryCount
        ) {
            lastLoggedGateBoundaryCount = boundaryCount
            PLog.i(TAG, "MGC feeder waiting for $source to cross nextBoundary=$nextBoundaryNs")
        }
    }

    private fun appendNativeResultLocked(result: MgcEisNativeEngine.FrameResult) {
        resultSequence += 1L
        nativeResults.addLast(SequencedNativeResult(resultSequence, result))
        while (nativeResults.size > MAX_RESULT_COUNT) nativeResults.removeFirst()
        activeSessions.values.forEach { callback ->
            try {
                callback?.invoke()
            } catch (error: RuntimeException) {
                PLog.w(TAG, "MGC frame-ready callback failed: ${error.message}")
            }
        }
    }

    private fun nextNativeResult(afterSequence: Long): SequencedNativeResult? =
        synchronized(lock) { nativeResults.firstOrNull { it.sequence > afterSequence } }

    private fun pendingNativeResultCount(afterSequence: Long): Int = synchronized(lock) {
        nativeResults.count { it.sequence > afterSequence }
    }

    private fun currentResultSequence(): Long = synchronized(lock) { resultSequence }

    private fun acquireImageForSession(
        sessionId: Long,
        timestampNs: Long,
    ): StabilizationImage? = synchronized(lock) {
        val buffered = bufferedImages[timestampNs] ?: return@synchronized null
        if (!buffered.pendingSessionIds.remove(sessionId)) return@synchronized null
        buffered.acquiredLeaseCount += 1
        StabilizationImage(
            timestampNs = timestampNs,
            // A camera-session teardown may revoke an ImageReader image while
            // a delayed native result is still queued. Its dimensions were
            // captured while the image was valid; the renderer then handles a
            // revoked plane as a dropped frame rather than crashing the GL thread.
            width = buffered.width,
            height = buffered.height,
            image = buffered.image,
            onClose = { releaseImageLease(timestampNs) },
        )
    }

    private fun releaseImageLease(timestampNs: Long) {
        synchronized(lock) {
            val buffered = bufferedImages[timestampNs] ?: return
            buffered.acquiredLeaseCount = (buffered.acquiredLeaseCount - 1).coerceAtLeast(0)
            closeFullyConsumedImagesLocked()
        }
    }

    private fun trimBufferedImagesLocked() {
        while (bufferedImages.size > MAX_BUFFERED_STABILIZATION_IMAGES) {
            val oldestEntry = bufferedImages.entries.firstOrNull {
                it.value.acquiredLeaseCount == 0
            } ?: return
            val oldestTimestamp = oldestEntry.key
            val oldest = bufferedImages.remove(oldestTimestamp) ?: continue
            oldest.image.close()
            PLog.w(
                TAG,
                "MGC YUV queue overflow; dropping source image $oldestTimestamp " +
                    "before native result, queued=${bufferedImages.size}",
            )
        }
    }

    private fun closeFullyConsumedImagesLocked() {
        val iterator = bufferedImages.entries.iterator()
        while (iterator.hasNext()) {
            val entry = iterator.next()
            val buffered = entry.value
            if (buffered.pendingSessionIds.isEmpty() && buffered.acquiredLeaseCount == 0) {
                iterator.remove()
                buffered.image.close()
            }
        }
    }

    class Session internal constructor(
        private val coordinator: RealtimeStabilizationCoordinator,
        private val sessionId: Long,
        private val strength: Float,
        private val frameWidth: Int,
        private val frameHeight: Int,
        private val lookaheadFrames: Int,
        private val onFrameAvailable: (() -> Unit)?,
    ) {
        @Volatile
        private var active = false
        private var lastConsumedSequence = 0L

        val isPoseSourceReady: Boolean
            get() = active && coordinator.isPoseSourceReady

        val isOperational: Boolean
            get() = active && coordinator.isSessionActive(sessionId)

        @Synchronized
        fun start(): Boolean {
            if (active && coordinator.isSessionActive(sessionId)) return true
            active = false
            lastConsumedSequence = 0L
            val startSequence = coordinator.acquire(
                sessionId = sessionId,
                onFrameAvailable = onFrameAvailable,
                frameWidth = frameWidth,
                frameHeight = frameHeight,
                strength = strength,
                lookaheadFrames = lookaheadFrames,
            )
            active = startSequence != null
            // Registration and the result cursor are captured under the same coordinator lock:
            // no image can include this session and then have its result skipped by a start race.
            lastConsumedSequence = startSequence ?: 0L
            return active
        }

        @Synchronized
        fun stop() {
            if (!active) return
            active = false
            lastConsumedSequence = 0L
            coordinator.release(sessionId)
        }

        @Synchronized
        fun dequeueFrame(): StabilizationFrame? {
            if (!active) return null
            while (true) {
                val next = coordinator.nextNativeResult(lastConsumedSequence) ?: return null
                lastConsumedSequence = next.sequence
                val timestampNs = when (val result = next.result) {
                    is MgcEisNativeEngine.FrameResult.Stabilized -> result.sensorTimestampNs
                    is MgcEisNativeEngine.FrameResult.Dropped -> result.sensorTimestampNs
                }
                val image = coordinator.acquireImageForSession(sessionId, timestampNs)
                if (image == null) {
                    if (next.sequence <= 3L || next.sequence % 30L == 0L) {
                        PLog.i(
                            TAG,
                            "MGC session skipped unbuffered result sequence=${next.sequence}, " +
                                "timestamp=$timestampNs",
                        )
                    }
                    continue
                }
                if (next.sequence <= 3L || next.sequence % 30L == 0L) {
                    PLog.i(
                        TAG,
                        "MGC session matched result sequence=${next.sequence}, " +
                            "latest=${coordinator.currentResultSequence()}, " +
                            "timestamp=$timestampNs",
                    )
                }
                return when (val result = next.result) {
                    is MgcEisNativeEngine.FrameResult.Dropped ->
                        StabilizationFrame(timestampNs, null, image)
                    is MgcEisNativeEngine.FrameResult.Stabilized -> StabilizationFrame(
                        timestampNs = timestampNs,
                        transform = AlgorithmicStabilizationTransform(
                            timestampNs = timestampNs,
                            rowHomographies = result.rowHomographies,
                            cropRect = floatArrayOf(0f, 0f, 1f, 1f),
                            hasPoseCoverage = true,
                            appliedStrength = result.appliedStrength,
                            tripodMode = result.tripodMode,
                        ),
                        image = image,
                    )
                }
            }
        }

        /**
         * Number of native results not yet consumed by this session.
         *
         * GLSurfaceView collapses repeated requestRender() calls into one draw. The preview
         * renderer uses this authoritative cursor distance after each draw to request the next
         * draw until every timestamped result has been presented exactly once.
         */
        @Synchronized
        fun pendingResultCount(): Int = if (active) {
            coordinator.pendingNativeResultCount(lastConsumedSequence)
        } else {
            0
        }
    }

    private fun isSessionActive(sessionId: Long): Boolean = synchronized(lock) {
        !halStabilizationConflictDetected && activeSessions.containsKey(sessionId)
    }
}

private fun remapMgcGyro(
    x: Float,
    y: Float,
    z: Float,
    calibration: CameraCalibration?,
): Triple<Float, Float, Float> {
    calibration ?: return Triple(x, y, z)
    val orientation = Math.floorMod(calibration.sensorOrientationDegrees, 360)
    val frontFacing = calibration.lensFacing == CameraCharacteristics.LENS_FACING_FRONT
    return when {
        (frontFacing && orientation == 90) || (!frontFacing && orientation == 270) ->
            Triple(-x, -y, z)
        frontFacing && orientation == 0 -> Triple(y, -x, z)
        else -> Triple(x, y, z)
    }
}

internal fun remapMgcGyroForTest(
    x: Double,
    y: Double,
    z: Double,
    sensorOrientationDegrees: Int,
    frontFacing: Boolean,
): Triple<Double, Double, Double> {
    val calibration = CameraCalibration(
        cameraId = "test",
        activeArray = Rect(0, 0, 1, 1),
        preCorrectionActiveArray = Rect(0, 0, 1, 1),
        physicalSizeMm = SizeF(1f, 1f),
        nominalLensIntrinsics = null,
        lensFacing = if (frontFacing) {
            CameraCharacteristics.LENS_FACING_FRONT
        } else {
            CameraCharacteristics.LENS_FACING_BACK
        },
        sensorOrientationDegrees = sensorOrientationDegrees,
        timestampSource = CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_REALTIME,
        supportsOisSamples = false,
        supportsLensIntrinsicsSamples = false,
    )
    return remapMgcGyro(x.toFloat(), y.toFloat(), z.toFloat(), calibration).let {
        Triple(it.first.toDouble(), it.second.toDouble(), it.third.toDouble())
    }
}

private fun timestampLagMs(currentTimestampNs: Long, sourceTimestampNs: Long): String =
    if (sourceTimestampNs <= 0L) {
        "unset"
    } else {
        ((currentTimestampNs - sourceTimestampNs) / 1_000_000.0).toString()
    }

private fun absoluteTimestampDifference(first: Long, second: Long): Long =
    if (first >= second) first - second else second - first

private fun <K, V> trimOldest(map: LinkedHashMap<K, V>, maximumSize: Int) {
    while (map.size > maximumSize) {
        val oldest = map.keys.firstOrNull() ?: return
        map.remove(oldest)
    }
}
