package com.hinnka.mycamera.processor

import android.content.ContentValues
import android.content.Context
import android.graphics.ImageFormat
import android.graphics.Rect
import android.os.Environment
import android.provider.MediaStore
import com.google.gson.GsonBuilder
import com.hinnka.mycamera.utils.DngCaptureDiagnostics
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil
import java.io.File
import java.io.OutputStream
import java.util.Locale
import java.util.zip.Deflater
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

private data class RawBurstManifest(
    val schemaVersion: Int,
    val captureId: String,
    val width: Int,
    val height: Int,
    val sourceBounds: IntArray,
    val sourceWidth: Int,
    val sourceHeight: Int,
    val cfaPattern: Int,
    val whiteLevel: Int,
    val blackLevel: FloatArray,
    val whiteBalanceGains: FloatArray,
    val cameraWhite: FloatArray,
    val noiseProfileSelection: RawBurstNoiseSelection,
    val lensShading: FloatArray?,
    val lensShadingWidth: Int,
    val lensShadingHeight: Int,
    val applyLensShadingCorrection: Boolean,
    val enableHdrFusion: Boolean,
    val mergeMethod: MgcMergeMethod,
    val outputMode: MgcSpatialOutputMode,
    val frames: List<RawBurstFrameManifest>,
) {
    companion object {
        const val SCHEMA_VERSION = 2
    }
}

private data class RawBurstFrameManifest(
    val file: String,
    val sensorTimestampNs: Long,
    val frameNumber: Long,
    val exposureTimeNs: Long,
    val sensitivityIso: Int,
    val minimumSensitivityIso: Int,
    val maximumAnalogSensitivityIso: Int,
    val exposureProduct: Double,
    val desiredExposureProduct: Double?,
    val focusDistanceDiopters: Float?,
    val lensState: Int?,
    val rollingShutterSkewNs: Long?,
    val channelNoiseProfile: FloatArray?,
    val dynamicBlackLevelByCfaPosition: FloatArray?,
    val role: RawBurstFrameRole,
    val shotNoise: FloatArray?,
    val readNoise: FloatArray?,
    val preAlignmentToReference: RawFramePreAlignment?,
)

private data class RawBurstNoiseSelection(
    val kind: Kind,
    val id: String,
    val profile: Profile,
) {
    enum class Kind { CAMERA2, CALIBRATED }

    data class Profile(
        val id: String,
        val shotSlopeA: DoubleArray,
        val shotInterceptB: DoubleArray,
        val readQuadraticC: DoubleArray,
        val readDigitalGainD: DoubleArray,
        val maxAnalogSensitivity: Int?,
        val evaluation: CalibratedRawNoiseProfile.Evaluation,
    )

    companion object {
        fun fromSelection(selection: RawNoiseProfileSelection): RawBurstNoiseSelection {
            val (kind, calibrated) = when (selection) {
                is RawNoiseProfileSelection.Camera2 -> Kind.CAMERA2 to selection.fallbackProfile
                is RawNoiseProfileSelection.Calibrated -> Kind.CALIBRATED to selection.profile
            }
            return RawBurstNoiseSelection(
                kind,
                selection.id,
                Profile(
                    calibrated.id,
                    calibrated.shotSlopeA,
                    calibrated.shotInterceptB,
                    calibrated.readQuadraticC,
                    calibrated.readDigitalGainD,
                    calibrated.maxAnalogSensitivity,
                    calibrated.evaluation,
                ),
            )
        }
    }
}

/** Records full RAW frames before the stacker selects, crops or modifies them. */
internal object RawBurstCapture {
    private const val TAG = "RawBurstCapture"
    private const val PROPERTY = "debug.photon.raw_stack.replay_capture"
    private const val DOWNLOAD_SUBDIRECTORY = "PhotonCamera/raw-stack-replay"

    fun captureIfEnabled(
        context: Context,
        captureId: String,
        frames: List<RawStackFrame>,
        sourceBounds: Rect,
        cfaPattern: Int,
        whiteLevel: Int,
        blackLevel: FloatArray,
        whiteBalanceGains: FloatArray,
        cameraWhite: FloatArray,
        noiseProfileSelection: RawNoiseProfileSelection,
        lensShading: FloatArray?,
        lensShadingWidth: Int,
        lensShadingHeight: Int,
        applyLensShadingCorrection: Boolean,
        enableHdrFusion: Boolean,
        mergeMethod: MgcMergeMethod,
        outputMode: MgcSpatialOutputMode,
    ) {
        if (!RawStackRuntimeDebug.enabled || SystemPropertiesUtil.get(PROPERTY) != "true") return
        try {
            require(captureId.isNotEmpty() && captureId == File(captureId).name &&
                captureId != "." && captureId != ".." && frames.isNotEmpty())
            val sourceWidth = frames.first().image.width
            val sourceHeight = frames.first().image.height
            require(!sourceBounds.isEmpty && Rect(0, 0, sourceWidth, sourceHeight).contains(sourceBounds))
            val row = ByteArray(sourceWidth * Short.SIZE_BYTES)
            val destination = writeArchive(context, captureId) { archive ->
                val manifestFrames = frames.mapIndexed { index, frame ->
                    val file = String.format(Locale.ROOT, "frame-%03d.u16le", index)
                    require(frame.image.width == sourceWidth && frame.image.height == sourceHeight)
                    archive.putNextEntry(ZipEntry(file))
                    writeFrame(archive, frame, row)
                    archive.closeEntry()
                    frameManifest(frame, file, noiseProfileSelection, cfaPattern)
                }
                val manifest = RawBurstManifest(
                    schemaVersion = RawBurstManifest.SCHEMA_VERSION,
                    captureId = captureId,
                    width = sourceBounds.width(),
                    height = sourceBounds.height(),
                    sourceBounds = intArrayOf(
                        sourceBounds.left, sourceBounds.top, sourceBounds.right, sourceBounds.bottom,
                    ),
                    sourceWidth = sourceWidth,
                    sourceHeight = sourceHeight,
                    cfaPattern = cfaPattern,
                    whiteLevel = whiteLevel,
                    blackLevel = blackLevel,
                    whiteBalanceGains = whiteBalanceGains,
                    cameraWhite = cameraWhite,
                    noiseProfileSelection = RawBurstNoiseSelection.fromSelection(noiseProfileSelection),
                    lensShading = lensShading,
                    lensShadingWidth = lensShadingWidth,
                    lensShadingHeight = lensShadingHeight,
                    applyLensShadingCorrection = applyLensShadingCorrection,
                    enableHdrFusion = enableHdrFusion,
                    mergeMethod = mergeMethod,
                    outputMode = outputMode,
                    frames = manifestFrames,
                )
                archive.putNextEntry(ZipEntry("manifest.json"))
                archive.write(GsonBuilder().setPrettyPrinting().create().toJson(manifest).toByteArray())
                archive.closeEntry()
            }
            DngCaptureDiagnostics.put("merge.replayCapturePath", destination)
            PLog.i(TAG, "Captured ${frames.size} full RAW frames at $destination")
        } catch (error: Exception) {
            DngCaptureDiagnostics.put("merge.replayCaptureError", error.message)
            PLog.w(TAG, "RAW stack replay capture failed for $captureId", error)
        }
    }

    private fun writeArchive(
        context: Context,
        captureId: String,
        write: (ZipOutputStream) -> Unit,
    ): String {
        val name = "$captureId.zip"
        val directory = "${Environment.DIRECTORY_DOWNLOADS}/$DOWNLOAD_SUBDIRECTORY"
        val resolver = context.contentResolver
        val values = ContentValues().apply {
            put(MediaStore.Downloads.DISPLAY_NAME, name)
            put(MediaStore.Downloads.MIME_TYPE, "application/zip")
            put(MediaStore.Downloads.RELATIVE_PATH, directory)
            put(MediaStore.Downloads.IS_PENDING, 1)
        }
        val uri = checkNotNull(resolver.insert(MediaStore.Downloads.EXTERNAL_CONTENT_URI, values)) {
            "Unable to create RAW burst archive in Downloads"
        }
        var published = false
        try {
            val stream = checkNotNull(resolver.openOutputStream(uri, "w")) {
                "Unable to open RAW burst archive"
            }
            ZipOutputStream(stream.buffered()).use { archive ->
                archive.setLevel(Deflater.NO_COMPRESSION)
                write(archive)
            }
            val actualName = resolver.query(uri, arrayOf(MediaStore.Downloads.DISPLAY_NAME), null, null, null)
                ?.use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else null }
                ?: name
            val complete = ContentValues().apply { put(MediaStore.Downloads.IS_PENDING, 0) }
            check(resolver.update(uri, complete, null, null) == 1) { "Unable to publish RAW burst archive" }
            published = true
            return "$directory/$actualName"
        } finally {
            if (!published) resolver.delete(uri, null, null)
        }
    }

    private fun writeFrame(output: OutputStream, frame: RawStackFrame, row: ByteArray) {
        val image = frame.image
        require(image.format == ImageFormat.RAW_SENSOR)
        val plane = image.planes.single()
        val rowStride = plane.rowStride
        require(plane.pixelStride == Short.SIZE_BYTES && rowStride >= row.size &&
            rowStride % Short.SIZE_BYTES == 0)
        val buffer = plane.buffer.duplicate()
        val first = buffer.position().toLong()
        val end = first + (image.height - 1L) * rowStride + row.size
        require(end <= buffer.limit()) { "RAW replay frame exceeds source plane" }
        // Android RAW_SENSOR (including the unpacked RAW10 representation) is little endian.
        repeat(image.height) { y ->
            buffer.position((first + y.toLong() * rowStride).toInt())
            buffer.get(row)
            output.write(row)
        }
    }

    private fun frameManifest(
        frame: RawStackFrame,
        file: String,
        selection: RawNoiseProfileSelection,
        cfaPattern: Int,
    ): RawBurstFrameManifest {
        val noise = RawNoiseModelResolver.resolve(
            selection = selection,
            sensitivity = frame.sensitivityIso,
            minimumSensitivityIso = frame.minimumSensitivityIso,
            maximumAnalogSensitivityIso = frame.maximumAnalogSensitivityIso,
            perFrameCamera2Profile = frame.channelNoiseProfile,
            cfaPattern = cfaPattern,
        ).let { if (it.source == RawNoiseModelSource.UNAVAILABLE) null else it.model }
        return RawBurstFrameManifest(
            file = file,
            sensorTimestampNs = frame.sensorTimestampNs,
            frameNumber = frame.frameNumber,
            exposureTimeNs = frame.exposureTimeNs,
            sensitivityIso = frame.sensitivityIso,
            minimumSensitivityIso = frame.minimumSensitivityIso,
            maximumAnalogSensitivityIso = frame.maximumAnalogSensitivityIso,
            // Zero preserves the invalid-exposure branch without a nonstandard JSON number.
            exposureProduct = frame.exposureProduct.takeIf(Double::isFinite) ?: 0.0,
            desiredExposureProduct = frame.desiredExposureProduct?.takeIf(Double::isFinite),
            focusDistanceDiopters = frame.focusDistanceDiopters.takeIf(Float::isFinite),
            lensState = frame.lensState,
            rollingShutterSkewNs = frame.rollingShutterSkewNs,
            channelNoiseProfile = frame.channelNoiseProfile?.map { value ->
                value.takeIf(Float::isFinite) ?: 0f
            }?.toFloatArray(),
            dynamicBlackLevelByCfaPosition = frame.dynamicBlackLevelByCfaPosition
                ?.takeIf { it.all(Float::isFinite) },
            role = frame.role,
            shotNoise = noise?.normalizedShotNoiseForShader(cfaPattern),
            readNoise = noise?.normalizedReadNoiseForShader(cfaPattern),
            preAlignmentToReference = frame.preAlignmentToReference?.takeIf { it.isUsable },
        )
    }
}
