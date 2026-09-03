package com.hinnka.mycamera.stabilization

import android.graphics.Rect
import com.hinnka.mycamera.utils.PLog
import java.io.File

/**
 * Lifecycle wrapper around Photon’s source reconstruction of MGC’s sensor EIS path.
 *
 * MGC 9.6.080 resolves the installed `device_key=blueline` to product profile 7. The original
 * factory selects method 4, 12 strips and a seven-frame look-ahead for that profile. This class
 * owns the recovered gyro queues, motion filtering, look-ahead, crop constraints and rolling-
 * shutter projection as ordinary app source compiled into `libmy-native-lib.so`; it never loads
 * `libgcastartup.so`. Camera2 OIS shifts or API-35 dynamic intrinsics are interpolated on the same
 * rolling-shutter row timestamps and applied only to the real-camera projection.
 */
internal class MgcEisNativeEngine(cacheDirectory: File) {
    companion object {
        private const val TAG = "MgcEisNativeEngine"
        private const val MGC_DEVICE_KEY = "blueline"
        private const val MGC_DEVICE_TYPE = 7
        const val STRIP_COUNT = 12
        const val LOOKAHEAD_FRAME_COUNT = 7
    }

    data class FrameInput(
        val sensorTimestampNs: Long,
        val exposureTimeNs: Long,
        /** Actual Camera2 frame duration; this is never derived from the requested FPS. */
        val frameDurationNs: Long,
        val rollingShutterSkewNs: Long,
        val cropRegion: Rect,
        val activeArray: Rect,
        val preCorrectionActiveArray: Rect,
        val nominalLensIntrinsics: FloatArray?,
        val physicalSensorWidthMm: Float,
        val focalLengthMm: Float,
    )

    sealed interface FrameResult {
        data class Stabilized(
            val sensorTimestampNs: Long,
            val rowHomographies: FloatArray,
            val appliedStrength: Float,
            val tripodMode: Boolean,
        ) : FrameResult

        data class Dropped(val sensorTimestampNs: Long) : FrameResult
    }

    private var handle = 0L
    private var frameWidth = 0
    private var frameHeight = 0
    private var gyroSampleCount = 0L
    private var firstGyroTimestampNs = 0L
    private var lensOffsetCount = 0L
    private var lensIntrinsicsCount = 0L
    private var frameCallCount = 0L
    private val diagnosticTrace = MgcEisDiagnosticTrace(cacheDirectory)

    @Synchronized
    fun start(
        width: Int,
        height: Int,
        frontFacing: Boolean,
        strength: Float,
        lookaheadFrames: Int = DEFAULT_VIDEO_STABILIZATION_LOOKAHEAD,
    ): Boolean {
        if (handle != 0L) {
            return frameWidth == width && frameHeight == height
        }
        if (width <= 0 || height <= 0) return false
        val normalizedLookahead = normalizeStabilizationLookahead(lookaheadFrames)
        return try {
            val created = MgcEisNativeBridge.create(
                width,
                height,
                frontFacing,
                strength,
                normalizedLookahead,
            )
            if (created == 0L) return false
            handle = created
            frameWidth = width
            frameHeight = height
            gyroSampleCount = 0L
            firstGyroTimestampNs = 0L
            lensOffsetCount = 0L
            lensIntrinsicsCount = 0L
            frameCallCount = 0L
            diagnosticTrace.start(width, height, frontFacing, strength)
            PLog.i(
                TAG,
                "Reconstructed MGC EIS started: device=$MGC_DEVICE_KEY, profile=$MGC_DEVICE_TYPE, " +
                    "frame=${width}x$height, " +
                    "strips=$STRIP_COUNT, lookahead=$normalizedLookahead, " +
                    "strength=$strength, front=$frontFacing",
            )
            true
        } catch (error: Throwable) {
            PLog.e(TAG, "Unable to start reconstructed MGC EIS", error)
            false
        }
    }

    @Synchronized
    fun stop() {
        diagnosticTrace.stop()
        val current = handle
        handle = 0L
        frameWidth = 0
        frameHeight = 0
        gyroSampleCount = 0L
        firstGyroTimestampNs = 0L
        lensOffsetCount = 0L
        lensIntrinsicsCount = 0L
        frameCallCount = 0L
        if (current != 0L) {
            runCatching { MgcEisNativeBridge.release(current) }
                .onFailure { PLog.e(TAG, "Unable to release reconstructed MGC EIS", it) }
        }
    }

    @Synchronized
    fun processGyro(x: Float, y: Float, z: Float, timestampNs: Long) {
        val current = handle
        if (current != 0L) {
            gyroSampleCount += 1L
            val accepted = MgcEisNativeBridge.processGyro(current, x, y, z, timestampNs)
            if (accepted) {
                if (firstGyroTimestampNs == 0L) firstGyroTimestampNs = timestampNs
                diagnosticTrace.recordGyro(timestampNs, x, y, z)
            }
            if (gyroSampleCount <= 3L || gyroSampleCount % 500L == 0L) {
                PLog.i(
                    TAG,
                    "MGC processGyro #$gyroSampleCount: ts=$timestampNs, " +
                        "xyz=($x,$y,$z), accepted=$accepted",
                )
            }
        }
    }

    @Synchronized
    fun processLensOffset(
        xShiftPixels: Float,
        yShiftPixels: Float,
        timestampNs: Long,
        cameraType: Int,
    ): Boolean {
        val current = handle
        if (current != 0L) {
            lensOffsetCount += 1L
            val accepted = MgcEisNativeBridge.processLensOffset(
                current,
                xShiftPixels,
                yShiftPixels,
                timestampNs,
                cameraType,
            )
            if (lensOffsetCount <= 3L || lensOffsetCount % 100L == 0L) {
                PLog.i(
                    TAG,
                    "MGC processLensOffset #$lensOffsetCount: ts=$timestampNs, " +
                        "xy=($xShiftPixels,$yShiftPixels), camera=$cameraType, " +
                        "accepted=$accepted",
                )
            }
            return accepted
        }
        return false
    }

    @Synchronized
    fun processLensIntrinsics(
        intrinsics: FloatArray,
        timestampNs: Long,
        cameraType: Int,
    ): Boolean {
        val current = handle
        if (current == 0L || intrinsics.size != 5 ||
            intrinsics.any { !it.isFinite() } || intrinsics[0] <= 0f || intrinsics[1] <= 0f
        ) {
            return false
        }
        lensIntrinsicsCount += 1L
        val accepted = MgcEisNativeBridge.processLensIntrinsics(
            current,
            intrinsics[0],
            intrinsics[1],
            intrinsics[2],
            intrinsics[3],
            intrinsics[4],
            timestampNs,
            cameraType,
        )
        if (lensIntrinsicsCount <= 3L || lensIntrinsicsCount % 100L == 0L) {
            PLog.i(
                TAG,
                "MGC processLensIntrinsics #$lensIntrinsicsCount: ts=$timestampNs, " +
                    "K=${intrinsics.contentToString()}, camera=$cameraType, accepted=$accepted",
            )
        }
        return accepted
    }

    @Synchronized
    fun processFrame(input: FrameInput): FrameResult? {
        val current = handle
        if (current == 0L) return null
        val activeWidth = input.activeArray.width().coerceAtLeast(1)
        val activeHeight = input.activeArray.height().coerceAtLeast(1)
        val crop = input.cropRegion
        if (crop.width() <= 0 || crop.height() <= 0 ||
            input.focalLengthMm <= 0f || input.physicalSensorWidthMm <= 0f
        ) {
            return FrameResult.Dropped(input.sensorTimestampNs)
        }

        // htd.m902...: timestamp of the centre of the first row in the scaler crop.
        val firstRowCenterTimestampNs = input.sensorTimestampNs + input.exposureTimeNs / 2L +
            input.rollingShutterSkewNs * crop.top.toLong() / activeHeight.toLong()
        val croppedRollingShutterSkewNs =
            input.rollingShutterSkewNs * crop.height().toLong() / activeHeight.toLong()
        val inverseFocalLength = crop.width().toFloat() / activeWidth.toFloat() *
            (input.physicalSensorWidthMm / input.focalLengthMm)

        // htd's one-second dead-source escape can submit a startup backlog before the first
        // calibrated gyro event arrives. Those images do not have a reconstructable pose and
        // must be reported as dropped instead of entering the seven-frame motion filter as a
        // fabricated identity pose.
        if (firstGyroTimestampNs == 0L || firstGyroTimestampNs > firstRowCenterTimestampNs) {
            return FrameResult.Dropped(input.sensorTimestampNs)
        }

        frameCallCount += 1L
        val shouldLog = frameCallCount <= 3L || frameCallCount % 30L == 0L
        if (shouldLog) {
            PLog.i(
                TAG,
                "MGC processFrame entry #$frameCallCount: sensorTs=${input.sensorTimestampNs}, " +
                    "firstRowTs=$firstRowCenterTimestampNs, exposure=${input.exposureTimeNs}, " +
                    "frameDuration=${input.frameDurationNs}, " +
                    "rolling=$croppedRollingShutterSkewNs, active=${activeWidth}x$activeHeight, " +
                    "crop=$crop, focal=${input.focalLengthMm}, " +
                    "inverseFocal=$inverseFocalLength, gyro=$gyroSampleCount, " +
                    "ois=$lensOffsetCount, lensIntrinsics=$lensIntrinsicsCount",
            )
        }
        val matrices = FloatArray(STRIP_COUNT * 9)
        val state = FloatArray(2)
        val resultTimestampNs = MgcEisNativeBridge.processFrame(
            current,
            input.sensorTimestampNs,
            firstRowCenterTimestampNs,
            input.exposureTimeNs,
            input.frameDurationNs,
            croppedRollingShutterSkewNs,
            inverseFocalLength,
            activeWidth,
            activeHeight,
            crop.width(),
            crop.height(),
            input.preCorrectionActiveArray.width().coerceAtLeast(1),
            input.preCorrectionActiveArray.height().coerceAtLeast(1),
            input.nominalLensIntrinsics,
            matrices,
            state,
        )
        diagnosticTrace.recordFrame(
            input = input,
            firstRowCenterTimestampNs = firstRowCenterTimestampNs,
            croppedRollingShutterSkewNs = croppedRollingShutterSkewNs,
            inverseFocalLength = inverseFocalLength,
            activeWidth = activeWidth,
            activeHeight = activeHeight,
            resultTimestampNs = resultTimestampNs,
            matrices = matrices,
        )
        if (shouldLog) {
            PLog.i(
                TAG,
                    "MGC processFrame exit #$frameCallCount: outputSourceTs=$resultTimestampNs",
            )
        }
        return when {
            resultTimestampNs == -1L -> null
            resultTimestampNs < -1L -> FrameResult.Dropped(-resultTimestampNs)
            else -> FrameResult.Stabilized(
                    sensorTimestampNs = resultTimestampNs,
                    rowHomographies = matrices,
                    appliedStrength = state[0],
                    tripodMode = state[1] != 0f,
                )
        }
    }
}
