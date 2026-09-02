package com.hinnka.mycamera.stabilization

import com.hinnka.mycamera.BuildConfig
import com.hinnka.mycamera.utils.PLog
import java.io.File
import java.util.Locale
import java.util.concurrent.Executors

/**
 * Debug-only, bounded native-input trace for differential EIS reconstruction.
 *
 * This has no image payload and is deliberately outside the stabilizer's timing path: it retains
 * only the exact Java-to-Native call sequence in memory, then writes one immutable snapshot from
 * a background thread.  The snapshot can be replayed by the isolated original-MGC oracle; it is
 * never read by, packaged with, or executed by the camera pipeline.
 */
internal class MgcEisDiagnosticTrace(
    private val cacheDirectory: File,
) {
    companion object {
        private const val TAG = "MgcEisTrace"
        private const val MAX_FRAME_CALLS = 180
        private const val MAX_GYRO_SAMPLES = 8_192
    }

    private val writer = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "Photon-MGC-EIS-Trace").apply { isDaemon = true }
    }
    private val entries = ArrayList<String>(MAX_FRAME_CALLS + MAX_GYRO_SAMPLES)

    private var active = false
    private var snapshotQueued = false
    private var gyroCount = 0
    private var frameCount = 0

    @Synchronized
    fun start(width: Int, height: Int, frontFacing: Boolean, strength: Float) {
        entries.clear()
        active = BuildConfig.DEBUG
        snapshotQueued = false
        gyroCount = 0
        frameCount = 0
        if (!active) return
        entries += listOf(
            "HEADER",
            width.toString(),
            height.toString(),
            frontFacing.toString(),
            strength.toString(),
        ).joinToString(",")
    }

    @Synchronized
    fun recordGyro(timestampNs: Long, x: Float, y: Float, z: Float) {
        if (!active || snapshotQueued || gyroCount >= MAX_GYRO_SAMPLES) return
        entries += listOf("G", timestampNs, x, y, z).joinToString(",")
        gyroCount += 1
    }

    @Synchronized
    fun recordFrame(
        input: MgcEisNativeEngine.FrameInput,
        firstRowCenterTimestampNs: Long,
        croppedRollingShutterSkewNs: Long,
        inverseFocalLength: Float,
        activeWidth: Int,
        activeHeight: Int,
        resultTimestampNs: Long,
        matrices: FloatArray,
    ) {
        if (!active || snapshotQueued || frameCount >= MAX_FRAME_CALLS) return
        val fields = ArrayList<String>(20 + matrices.size)
        fields += "F"
        fields += input.sensorTimestampNs.toString()
        fields += firstRowCenterTimestampNs.toString()
        fields += input.exposureTimeNs.toString()
        fields += croppedRollingShutterSkewNs.toString()
        fields += inverseFocalLength.toString()
        fields += activeWidth.toString()
        fields += activeHeight.toString()
        fields += input.cropRegion.width().toString()
        fields += input.cropRegion.height().toString()
        fields += resultTimestampNs.toString()
        if (resultTimestampNs >= 0L) {
            matrices.forEach { fields += it.toString() }
        }
        entries += fields.joinToString(",")
        frameCount += 1
        if (frameCount == MAX_FRAME_CALLS) queueSnapshotLocked()
    }

    @Synchronized
    fun stop() {
        if (active && !snapshotQueued && frameCount > 0) queueSnapshotLocked()
        active = false
    }

    @Synchronized
    private fun queueSnapshotLocked() {
        if (snapshotQueued) return
        snapshotQueued = true
        val content = entries.joinToString(separator = "\n", postfix = "\n")
        val savedGyroCount = gyroCount
        val savedFrameCount = frameCount
        writer.execute {
            try {
                val directory = File(cacheDirectory, "mgc-eis-traces").apply { mkdirs() }
                val file = File(directory, "mgc-eis-${System.currentTimeMillis()}.csv")
                file.writeText(content, Charsets.UTF_8)
                PLog.i(
                    TAG,
                    String.format(
                        Locale.US,
                        "Saved differential trace: %s (gyro=%d, frames=%d)",
                        file.absolutePath,
                        savedGyroCount,
                        savedFrameCount,
                    ),
                )
            } catch (error: Throwable) {
                PLog.e(TAG, "Unable to save MGC differential trace", error)
            }
        }
    }
}
