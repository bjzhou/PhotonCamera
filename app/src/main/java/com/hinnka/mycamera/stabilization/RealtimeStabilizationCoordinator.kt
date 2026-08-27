package com.hinnka.mycamera.stabilization

import android.content.Context
import android.graphics.Rect
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureResult
import android.os.Handler
import android.os.HandlerThread
import android.util.SizeF
import com.hinnka.mycamera.utils.PLog
import java.util.ArrayDeque
import kotlin.math.acos
import kotlin.math.cos
import kotlin.math.exp
import kotlin.math.max
import kotlin.math.min
import kotlin.math.sin
import kotlin.math.sqrt

const val STABILIZATION_ROW_COUNT = 16

enum class StabilizationUseCase(
    internal val smoothingTimeSeconds: Double,
    internal val cropMarginFraction: Float,
) {
    VIDEO(
        smoothingTimeSeconds = 0.28,
        cropMarginFraction = 0.10f,
    ),
    PHOTO_PREVIEW(
        smoothingTimeSeconds = 0.14,
        cropMarginFraction = 0.07f,
    ),
}

data class AlgorithmicStabilizationTransform(
    /** 16 column-major output-to-input homographies, ready for glUniformMatrix3fv. */
    val rowHomographies: FloatArray,
    /** Crop applied before the homographies, in normalized SurfaceTexture coordinates. */
    val cropRect: FloatArray,
    val hasPoseCoverage: Boolean,
    val appliedStrength: Float,
    val tripodMode: Boolean,
)

private data class CameraCalibration(
    val activeArray: Rect,
    val physicalSizeMm: SizeF?,
    val lensFacing: Int,
    val timestampSource: Int,
)

private data class FrameMetadata(
    val timestampNs: Long,
    val exposureTimeNs: Long,
    val rollingShutterSkewNs: Long,
    val cropRegion: Rect?,
    val zoomRatio: Float,
    val focalLengthMm: Float,
)

private data class PoseSample(
    val timestampNs: Long,
    val orientation: Quaternion,
    val angularSpeedRadPerSecond: Double,
)

private data class ResolvedFrameMotion(
    val centerOrientation: Quaternion,
    val rowOrientations: List<Quaternion>,
    val metadata: FrameMetadata?,
    val calibration: CameraCalibration,
    val tripodMode: Boolean,
)

/**
 * Shared sensor and Camera2 metadata source for the screen-preview and recording renderers.
 *
 * Gyroscope and SENSOR_TIMESTAMP are both expressed against elapsedRealtimeNanos on Android.
 * A renderer owns a lightweight [Session]; the high-rate sensor listener is reference counted so
 * the gyro is only active while at least one algorithmic stabilization path is actually rendering.
 */
class RealtimeStabilizationCoordinator(context: Context) {
    companion object {
        private const val TAG = "RealtimeStabilization"
        private const val MAX_POSE_AGE_NS = 3_000_000_000L
        private const val MAX_METADATA_AGE_NS = 3_000_000_000L
        private const val MAX_GYRO_STEP_NS = 50_000_000L
        private const val METADATA_MATCH_TOLERANCE_NS = 12_000_000L
        private const val TRIPOD_SPEED_THRESHOLD_RAD_S = 0.012
        private const val TRIPOD_HOLD_NS = 800_000_000L
    }

    private val sensorManager = context.applicationContext
        .getSystemService(Context.SENSOR_SERVICE) as SensorManager
    private val gyroSensor = sensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE_UNCALIBRATED)
        ?: sensorManager.getDefaultSensor(Sensor.TYPE_GYROSCOPE)
    private val lock = Any()
    private val poses = ArrayDeque<PoseSample>()
    private val frameMetadata = ArrayDeque<FrameMetadata>()

    @Volatile
    private var calibration: CameraCalibration? = null

    private var sensorThread: HandlerThread? = null
    private var activeSessionCount = 0
    private var integratedOrientation = Quaternion.IDENTITY
    private var previousRate = Vec3.ZERO
    private var previousGyroTimestampNs = 0L
    private var stillSinceTimestampNs = 0L
    private var tripodMode = false

    val isGyroscopeAvailable: Boolean
        get() = gyroSensor != null

    val isCurrentCameraSupported: Boolean
        get() {
            val current = calibration
            return isGyroscopeAvailable &&
                current?.lensFacing == CameraCharacteristics.LENS_FACING_BACK &&
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
            CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE
        ) ?: CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN
        return isGyroscopeAvailable &&
            characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE) != null &&
            lensFacing == CameraCharacteristics.LENS_FACING_BACK &&
            timestampSource == CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_REALTIME
    }

    private val sensorListener = object : SensorEventListener {
        override fun onSensorChanged(event: SensorEvent) {
            if (event.values.size < 3) return
            val uncalibrated = event.sensor.type == Sensor.TYPE_GYROSCOPE_UNCALIBRATED &&
                event.values.size >= 6
            val rate = Vec3(
                x = (event.values[0] - if (uncalibrated) event.values[3] else 0f).toDouble(),
                y = (event.values[1] - if (uncalibrated) event.values[4] else 0f).toDouble(),
                z = (event.values[2] - if (uncalibrated) event.values[5] else 0f).toDouble(),
            )
            appendGyro(event.timestamp, rate)
        }

        override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) = Unit
    }

    fun configureCamera(
        characteristics: CameraCharacteristics,
        timingCharacteristics: CameraCharacteristics = characteristics,
    ) {
        val activeArray = characteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE)
        if (activeArray == null) {
            calibration = null
            return
        }
        calibration = CameraCalibration(
            activeArray = Rect(activeArray),
            physicalSizeMm = characteristics.get(CameraCharacteristics.SENSOR_INFO_PHYSICAL_SIZE),
            lensFacing = characteristics.get(CameraCharacteristics.LENS_FACING)
                ?: timingCharacteristics.get(CameraCharacteristics.LENS_FACING)
                ?: CameraCharacteristics.LENS_FACING_BACK,
            timestampSource = timingCharacteristics.get(
                CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE
            ) ?: CameraCharacteristics.SENSOR_INFO_TIMESTAMP_SOURCE_UNKNOWN,
        )
    }

    fun submitCaptureResult(result: CaptureResult) {
        val timestampNs = result.get(CaptureResult.SENSOR_TIMESTAMP) ?: return
        val metadata = FrameMetadata(
            timestampNs = timestampNs,
            exposureTimeNs = result.get(CaptureResult.SENSOR_EXPOSURE_TIME)?.coerceAtLeast(0L) ?: 0L,
            rollingShutterSkewNs = result.get(CaptureResult.SENSOR_ROLLING_SHUTTER_SKEW)
                ?.coerceAtLeast(0L) ?: 0L,
            cropRegion = result.get(CaptureResult.SCALER_CROP_REGION)?.let(::Rect),
            zoomRatio = result.get(CaptureResult.CONTROL_ZOOM_RATIO)?.coerceAtLeast(1f) ?: 1f,
            focalLengthMm = result.get(CaptureResult.LENS_FOCAL_LENGTH)?.coerceAtLeast(0f) ?: 0f,
        )
        synchronized(lock) {
            if (frameMetadata.isNotEmpty() && timestampNs <= frameMetadata.last().timestampNs) {
                frameMetadata.removeAll { it.timestampNs == timestampNs }
            }
            frameMetadata.addLast(metadata)
            val oldestAllowed = timestampNs - MAX_METADATA_AGE_NS
            while (frameMetadata.firstOrNull()?.timestampNs?.let { it < oldestAllowed } == true) {
                frameMetadata.removeFirst()
            }
        }
    }

    fun createSession(useCase: StabilizationUseCase): Session = Session(this, useCase)

    private fun acquireSensor(): Boolean {
        synchronized(lock) {
            activeSessionCount += 1
            if (activeSessionCount > 1) return true
            val sensor = gyroSensor ?: run {
                activeSessionCount = 0
                return false
            }
            poses.clear()
            integratedOrientation = Quaternion.IDENTITY
            previousRate = Vec3.ZERO
            previousGyroTimestampNs = 0L
            stillSinceTimestampNs = 0L
            tripodMode = false
            val thread = HandlerThread("Photon-Stabilization-Gyro").apply { start() }
            val registered = sensorManager.registerListener(
                sensorListener,
                sensor,
                SensorManager.SENSOR_DELAY_FASTEST,
                Handler(thread.looper),
            )
            if (!registered) {
                thread.quitSafely()
                activeSessionCount = 0
                PLog.w(TAG, "Unable to register gyroscope listener")
                return false
            }
            sensorThread = thread
            PLog.i(TAG, "Gyroscope stream started: ${sensor.name}")
            return true
        }
    }

    private fun releaseSensor() {
        synchronized(lock) {
            if (activeSessionCount <= 0) return
            activeSessionCount -= 1
            if (activeSessionCount > 0) return
            sensorManager.unregisterListener(sensorListener)
            sensorThread?.quitSafely()
            sensorThread = null
            poses.clear()
            previousGyroTimestampNs = 0L
            PLog.i(TAG, "Gyroscope stream stopped")
        }
    }

    private fun appendGyro(timestampNs: Long, rate: Vec3) {
        synchronized(lock) {
            if (activeSessionCount <= 0) return
            if (previousGyroTimestampNs == 0L) {
                previousGyroTimestampNs = timestampNs
                previousRate = rate
                poses.addLast(PoseSample(timestampNs, integratedOrientation, rate.length()))
                updateTripodState(timestampNs, rate.length())
                return
            }
            val stepNs = timestampNs - previousGyroTimestampNs
            if (stepNs <= 0L) return
            if (stepNs > MAX_GYRO_STEP_NS) {
                integratedOrientation = Quaternion.IDENTITY
                poses.clear()
            } else {
                val dt = stepNs.toDouble() * 1.0e-9
                val midpointRate = (previousRate + rate) * 0.5
                integratedOrientation = (
                    integratedOrientation * Quaternion.fromRotationVector(midpointRate * dt)
                    ).normalized()
            }
            previousGyroTimestampNs = timestampNs
            previousRate = rate
            val angularSpeed = rate.length()
            poses.addLast(PoseSample(timestampNs, integratedOrientation, angularSpeed))
            updateTripodState(timestampNs, angularSpeed)

            val oldestAllowed = timestampNs - MAX_POSE_AGE_NS
            while (poses.firstOrNull()?.timestampNs?.let { it < oldestAllowed } == true) {
                poses.removeFirst()
            }
        }
    }

    private fun updateTripodState(timestampNs: Long, angularSpeed: Double) {
        if (angularSpeed <= TRIPOD_SPEED_THRESHOLD_RAD_S) {
            if (stillSinceTimestampNs == 0L) stillSinceTimestampNs = timestampNs
            tripodMode = timestampNs - stillSinceTimestampNs >= TRIPOD_HOLD_NS
        } else {
            stillSinceTimestampNs = 0L
            tripodMode = false
        }
    }

    private fun resolveFrameMotion(timestampNs: Long): ResolvedFrameMotion? {
        val currentCalibration = calibration ?: return null
        synchronized(lock) {
            if (poses.size < 2) return null
            val metadata = nearestMetadataLocked(timestampNs)
            val exposureNs = metadata?.exposureTimeNs ?: 0L
            val rollingSkewNs = metadata?.rollingShutterSkewNs ?: 0L
            val activeHeight = currentCalibration.activeArray.height().coerceAtLeast(1)
            val crop = metadata?.cropRegion ?: currentCalibration.activeArray
            val cropStartFraction = (crop.top - currentCalibration.activeArray.top)
                .toDouble() / activeHeight.toDouble()
            val cropHeightFraction = crop.height().toDouble() / activeHeight.toDouble()
            val firstRowCenterNs = timestampNs + exposureNs / 2L +
                (rollingSkewNs * cropStartFraction).toLong()
            val rowSpanNs = (rollingSkewNs * cropHeightFraction).toLong()
            val centerTimestampNs = firstRowCenterNs + rowSpanNs / 2L
            val firstPoseTimestamp = poses.first().timestampNs
            val lastPoseTimestamp = poses.last().timestampNs
            if (centerTimestampNs < firstPoseTimestamp - METADATA_MATCH_TOLERANCE_NS ||
                centerTimestampNs > lastPoseTimestamp + METADATA_MATCH_TOLERANCE_NS
            ) {
                return null
            }

            val center = orientationAtLocked(centerTimestampNs) ?: return null
            val rows = List(STABILIZATION_ROW_COUNT) { index ->
                val fraction = index.toDouble() / (STABILIZATION_ROW_COUNT - 1).toDouble()
                orientationAtLocked(firstRowCenterNs + (rowSpanNs * fraction).toLong()) ?: center
            }
            return ResolvedFrameMotion(
                centerOrientation = center,
                rowOrientations = rows,
                metadata = metadata,
                calibration = currentCalibration,
                tripodMode = tripodMode,
            )
        }
    }

    private fun nearestMetadataLocked(timestampNs: Long): FrameMetadata? {
        var best: FrameMetadata? = null
        var bestDistance = Long.MAX_VALUE
        frameMetadata.forEach { candidate ->
            val distance = absoluteDifference(candidate.timestampNs, timestampNs)
            if (distance < bestDistance) {
                best = candidate
                bestDistance = distance
            }
        }
        return best?.takeIf { bestDistance <= METADATA_MATCH_TOLERANCE_NS }
    }

    private fun orientationAtLocked(timestampNs: Long): Quaternion? {
        if (poses.isEmpty()) return null
        if (timestampNs <= poses.first().timestampNs) return poses.first().orientation
        if (timestampNs >= poses.last().timestampNs) return poses.last().orientation
        var before = poses.first()
        poses.forEach { after ->
            if (after.timestampNs >= timestampNs) {
                val span = after.timestampNs - before.timestampNs
                if (span <= 0L) return before.orientation
                val fraction = (timestampNs - before.timestampNs).toDouble() / span.toDouble()
                return Quaternion.slerp(before.orientation, after.orientation, fraction)
            }
            before = after
        }
        return poses.last().orientation
    }

    class Session internal constructor(
        private val coordinator: RealtimeStabilizationCoordinator,
        private val useCase: StabilizationUseCase,
    ) {
        private var active = false
        private var smoothedOrientation: Quaternion? = null
        private var lastFrameTimestampNs = 0L

        @Synchronized
        fun start(): Boolean {
            if (active) return true
            if (!coordinator.isCurrentCameraSupported) return false
            active = coordinator.acquireSensor()
            smoothedOrientation = null
            lastFrameTimestampNs = 0L
            return active
        }

        @Synchronized
        fun stop() {
            if (!active) return
            active = false
            smoothedOrientation = null
            lastFrameTimestampNs = 0L
            coordinator.releaseSensor()
        }

        @Synchronized
        fun transformForFrame(
            timestampNs: Long,
            baseCropRect: FloatArray,
            textureAxesSwapped: Boolean,
            displayRotationDegrees: Int = 0,
        ): AlgorithmicStabilizationTransform? {
            if (!active || !coordinator.isCurrentCameraSupported ||
                timestampNs <= 0L || baseCropRect.size < 4
            ) {
                return null
            }
            val stabilizedCrop = insetCrop(baseCropRect, useCase.cropMarginFraction)
            val motion = coordinator.resolveFrameMotion(timestampNs)
                ?: return identityTransform(stabilizedCrop, hasCoverage = false)

            val currentSmooth = smoothedOrientation
            val frameDeltaNs = timestampNs - lastFrameTimestampNs
            val nextSmooth = if (currentSmooth == null || frameDeltaNs <= 0L ||
                frameDeltaNs > 500_000_000L
            ) {
                motion.centerOrientation
            } else {
                val timeConstant = if (motion.tripodMode) {
                    max(useCase.smoothingTimeSeconds, 0.72)
                } else {
                    useCase.smoothingTimeSeconds
                }
                val alpha = 1.0 - exp(-frameDeltaNs.toDouble() * 1.0e-9 / timeConstant)
                Quaternion.slerp(currentSmooth, motion.centerOrientation, alpha.coerceIn(0.0, 1.0))
            }
            smoothedOrientation = nextSmooth
            lastFrameTimestampNs = timestampNs

            val focal = resolveNormalizedFocalLength(
                calibration = motion.calibration,
                metadata = motion.metadata,
                axesSwapped = textureAxesSwapped,
            )
            val rowCorrections = motion.rowOrientations.map { rowOrientation ->
                val outputToInput = rowOrientation.inverse() * nextSmooth
                mapDeviceRotationToDisplay(
                    Quaternion.log(outputToInput),
                    displayRotationDegrees,
                )
            }
            val safeStrength = constrainStrength(
                rotations = rowCorrections,
                focalX = focal.first,
                focalY = focal.second,
                stabilizedCrop = stabilizedCrop,
                availableCrop = baseCropRect,
            )
            val matrices = FloatArray(STABILIZATION_ROW_COUNT * 9)
            rowCorrections.forEachIndexed { index, rotationVector ->
                val homography = homographyForRotation(
                    rotationVector = rotationVector * safeStrength.toDouble(),
                    focalX = focal.first,
                    focalY = focal.second,
                )
                homography.writeColumnMajor(matrices, index * 9)
            }
            return AlgorithmicStabilizationTransform(
                rowHomographies = matrices,
                cropRect = stabilizedCrop,
                hasPoseCoverage = true,
                appliedStrength = safeStrength,
                tripodMode = motion.tripodMode,
            )
        }

        private fun constrainStrength(
            rotations: List<Vec3>,
            focalX: Double,
            focalY: Double,
            stabilizedCrop: FloatArray,
            availableCrop: FloatArray,
        ): Float {
            fun safe(strength: Double): Boolean {
                rotations.forEach { rotation ->
                    val h = homographyForRotation(rotation * strength, focalX, focalY)
                    if (!cornersStayInside(h, stabilizedCrop, availableCrop)) return false
                }
                return true
            }

            if (safe(1.0)) return 1f
            var low = 0.0
            var high = 1.0
            repeat(10) {
                val middle = (low + high) * 0.5
                if (safe(middle)) low = middle else high = middle
            }
            return low.toFloat()
        }

        private fun identityTransform(
            crop: FloatArray,
            hasCoverage: Boolean,
        ): AlgorithmicStabilizationTransform {
            val matrices = FloatArray(STABILIZATION_ROW_COUNT * 9)
            repeat(STABILIZATION_ROW_COUNT) { index ->
                Mat3.IDENTITY.writeColumnMajor(matrices, index * 9)
            }
            return AlgorithmicStabilizationTransform(
                rowHomographies = matrices,
                cropRect = crop,
                hasPoseCoverage = hasCoverage,
                appliedStrength = 0f,
                tripodMode = false,
            )
        }
    }
}

private fun resolveNormalizedFocalLength(
    calibration: CameraCalibration,
    metadata: FrameMetadata?,
    axesSwapped: Boolean,
): Pair<Double, Double> {
    val physical = calibration.physicalSizeMm
    val focalMm = metadata?.focalLengthMm?.toDouble()?.takeIf { it > 0.0 }
    if (physical == null || focalMm == null || physical.width <= 0f || physical.height <= 0f) {
        return 1.20 to 1.20
    }

    val active = calibration.activeArray
    val crop = metadata.cropRegion ?: active
    val zoom = metadata.zoomRatio.toDouble().coerceAtLeast(1.0)
    val effectiveWidth = min(crop.width().toDouble(), active.width().toDouble() / zoom).coerceAtLeast(1.0)
    val effectiveHeight = min(crop.height().toDouble(), active.height().toDouble() / zoom).coerceAtLeast(1.0)
    val horizontal = focalMm / physical.width.toDouble() * active.width().toDouble() / effectiveWidth
    val vertical = focalMm / physical.height.toDouble() * active.height().toDouble() / effectiveHeight
    return if (axesSwapped) vertical to horizontal else horizontal to vertical
}

private fun mapDeviceRotationToDisplay(rotation: Vec3, displayRotationDegrees: Int): Vec3 {
    val normalizedRotation = ((displayRotationDegrees % 360) + 360) % 360
    val radians = Math.toRadians(normalizedRotation.toDouble())
    val c = cos(radians)
    val s = sin(radians)
    val screenRight = Vec3(c, -s, 0.0)
    val screenDown = Vec3(-s, -c, 0.0)
    val sceneForward = Vec3(0.0, 0.0, -1.0)
    return Vec3(
        rotation.dot(screenRight),
        rotation.dot(screenDown),
        rotation.dot(sceneForward),
    )
}

private fun homographyForRotation(
    rotationVector: Vec3,
    focalX: Double,
    focalY: Double,
): Mat3 {
    val safeFocalX = focalX.coerceIn(0.25, 20.0)
    val safeFocalY = focalY.coerceIn(0.25, 20.0)
    val intrinsics = Mat3(
        doubleArrayOf(
            safeFocalX, 0.0, 0.5,
            0.0, safeFocalY, 0.5,
            0.0, 0.0, 1.0,
        )
    )
    val rotation = Quaternion.fromRotationVector(rotationVector).toMatrix3()
    return intrinsics * rotation * intrinsics.inverse()
}

private fun cornersStayInside(
    homography: Mat3,
    sourceCrop: FloatArray,
    bounds: FloatArray,
): Boolean {
    val corners = arrayOf(
        Vec2(sourceCrop[0].toDouble(), sourceCrop[1].toDouble()),
        Vec2(sourceCrop[2].toDouble(), sourceCrop[1].toDouble()),
        Vec2(sourceCrop[0].toDouble(), sourceCrop[3].toDouble()),
        Vec2(sourceCrop[2].toDouble(), sourceCrop[3].toDouble()),
    )
    return corners.all { corner ->
        val point = homography.transform(corner) ?: return@all false
        point.x >= bounds[0] && point.x <= bounds[2] &&
            point.y >= bounds[1] && point.y <= bounds[3]
    }
}

private fun insetCrop(crop: FloatArray, marginFraction: Float): FloatArray {
    val margin = marginFraction.coerceIn(0f, 0.24f)
    val widthInset = (crop[2] - crop[0]) * margin
    val heightInset = (crop[3] - crop[1]) * margin
    return floatArrayOf(
        crop[0] + widthInset,
        crop[1] + heightInset,
        crop[2] - widthInset,
        crop[3] - heightInset,
    )
}

private data class Vec2(val x: Double, val y: Double)

private data class Vec3(val x: Double, val y: Double, val z: Double) {
    operator fun plus(other: Vec3) = Vec3(x + other.x, y + other.y, z + other.z)
    operator fun times(scale: Double) = Vec3(x * scale, y * scale, z * scale)
    fun dot(other: Vec3): Double = x * other.x + y * other.y + z * other.z
    fun length(): Double = sqrt(dot(this))

    companion object {
        val ZERO = Vec3(0.0, 0.0, 0.0)
    }
}

private data class Quaternion(
    val w: Double,
    val x: Double,
    val y: Double,
    val z: Double,
) {
    operator fun times(other: Quaternion): Quaternion = Quaternion(
        w = w * other.w - x * other.x - y * other.y - z * other.z,
        x = w * other.x + x * other.w + y * other.z - z * other.y,
        y = w * other.y - x * other.z + y * other.w + z * other.x,
        z = w * other.z + x * other.y - y * other.x + z * other.w,
    )

    fun normalized(): Quaternion {
        val magnitude = sqrt(w * w + x * x + y * y + z * z)
        return if (magnitude <= 1.0e-12) IDENTITY else Quaternion(
            w / magnitude,
            x / magnitude,
            y / magnitude,
            z / magnitude,
        )
    }

    fun inverse(): Quaternion = Quaternion(w, -x, -y, -z).normalized()

    fun toMatrix3(): Mat3 {
        val q = normalized()
        val xx = q.x * q.x
        val yy = q.y * q.y
        val zz = q.z * q.z
        val xy = q.x * q.y
        val xz = q.x * q.z
        val yz = q.y * q.z
        val wx = q.w * q.x
        val wy = q.w * q.y
        val wz = q.w * q.z
        return Mat3(
            doubleArrayOf(
                1.0 - 2.0 * (yy + zz), 2.0 * (xy - wz), 2.0 * (xz + wy),
                2.0 * (xy + wz), 1.0 - 2.0 * (xx + zz), 2.0 * (yz - wx),
                2.0 * (xz - wy), 2.0 * (yz + wx), 1.0 - 2.0 * (xx + yy),
            )
        )
    }

    companion object {
        val IDENTITY = Quaternion(1.0, 0.0, 0.0, 0.0)

        fun fromRotationVector(vector: Vec3): Quaternion {
            val angle = vector.length()
            if (angle <= 1.0e-12) return IDENTITY
            val half = angle * 0.5
            val scale = sin(half) / angle
            return Quaternion(cos(half), vector.x * scale, vector.y * scale, vector.z * scale)
                .normalized()
        }

        fun log(value: Quaternion): Vec3 {
            val q = value.normalized().let { if (it.w < 0.0) Quaternion(-it.w, -it.x, -it.y, -it.z) else it }
            val vectorLength = sqrt(q.x * q.x + q.y * q.y + q.z * q.z)
            if (vectorLength <= 1.0e-12) return Vec3.ZERO
            val angle = 2.0 * kotlin.math.atan2(vectorLength, q.w.coerceIn(-1.0, 1.0))
            val scale = angle / vectorLength
            return Vec3(q.x * scale, q.y * scale, q.z * scale)
        }

        fun slerp(from: Quaternion, to: Quaternion, amount: Double): Quaternion {
            val a = from.normalized()
            var b = to.normalized()
            var dot = a.w * b.w + a.x * b.x + a.y * b.y + a.z * b.z
            if (dot < 0.0) {
                b = Quaternion(-b.w, -b.x, -b.y, -b.z)
                dot = -dot
            }
            val t = amount.coerceIn(0.0, 1.0)
            if (dot > 0.9995) {
                return Quaternion(
                    a.w + (b.w - a.w) * t,
                    a.x + (b.x - a.x) * t,
                    a.y + (b.y - a.y) * t,
                    a.z + (b.z - a.z) * t,
                ).normalized()
            }
            val theta = acos(dot.coerceIn(-1.0, 1.0))
            val denominator = sin(theta)
            val fromWeight = sin((1.0 - t) * theta) / denominator
            val toWeight = sin(t * theta) / denominator
            return Quaternion(
                a.w * fromWeight + b.w * toWeight,
                a.x * fromWeight + b.x * toWeight,
                a.y * fromWeight + b.y * toWeight,
                a.z * fromWeight + b.z * toWeight,
            ).normalized()
        }
    }
}

private class Mat3(private val values: DoubleArray) {
    init {
        require(values.size == 9)
    }

    operator fun times(other: Mat3): Mat3 {
        val out = DoubleArray(9)
        for (row in 0..2) {
            for (column in 0..2) {
                out[row * 3 + column] = (0..2).sumOf { index ->
                    values[row * 3 + index] * other.values[index * 3 + column]
                }
            }
        }
        return Mat3(out)
    }

    fun inverse(): Mat3 {
        val a = values[0]
        val b = values[1]
        val c = values[2]
        val d = values[3]
        val e = values[4]
        val f = values[5]
        val g = values[6]
        val h = values[7]
        val i = values[8]
        val determinant = a * (e * i - f * h) - b * (d * i - f * g) + c * (d * h - e * g)
        if (kotlin.math.abs(determinant) <= 1.0e-12) return IDENTITY
        val reciprocal = 1.0 / determinant
        return Mat3(
            doubleArrayOf(
                (e * i - f * h) * reciprocal,
                (c * h - b * i) * reciprocal,
                (b * f - c * e) * reciprocal,
                (f * g - d * i) * reciprocal,
                (a * i - c * g) * reciprocal,
                (c * d - a * f) * reciprocal,
                (d * h - e * g) * reciprocal,
                (b * g - a * h) * reciprocal,
                (a * e - b * d) * reciprocal,
            )
        )
    }

    fun transform(point: Vec2): Vec2? {
        val denominator = values[6] * point.x + values[7] * point.y + values[8]
        if (kotlin.math.abs(denominator) <= 1.0e-9) return null
        return Vec2(
            x = (values[0] * point.x + values[1] * point.y + values[2]) / denominator,
            y = (values[3] * point.x + values[4] * point.y + values[5]) / denominator,
        )
    }

    fun writeColumnMajor(destination: FloatArray, offset: Int) {
        for (row in 0..2) {
            for (column in 0..2) {
                destination[offset + column * 3 + row] = values[row * 3 + column].toFloat()
            }
        }
    }

    companion object {
        val IDENTITY = Mat3(
            doubleArrayOf(
                1.0, 0.0, 0.0,
                0.0, 1.0, 0.0,
                0.0, 0.0, 1.0,
            )
        )
    }
}

private fun absoluteDifference(a: Long, b: Long): Long {
    return if (a >= b) a - b else b - a
}
