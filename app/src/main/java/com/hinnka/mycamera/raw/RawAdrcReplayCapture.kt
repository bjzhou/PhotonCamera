package com.hinnka.mycamera.raw

import android.content.ContentValues
import android.content.Context
import android.graphics.Bitmap
import android.graphics.Matrix
import android.graphics.Rect
import android.os.Environment
import android.provider.MediaStore
import com.google.gson.GsonBuilder
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.processor.RawStackRuntimeDebug
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil
import java.io.ByteArrayOutputStream
import java.io.File
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.atomic.AtomicReference
import java.util.zip.Deflater
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

private data class AdrcReplayDiagnostics(
    val drcGain: Float,
    val drcGainDark: Float,
    val ltmPercentage: Float,
    val yRatioMax: Float,
    val sceneDynamicRangeEv: Float,
    val weightedLogAvgLuma: Float,
    val lumaP05: Float,
    val lumaP992: Float,
    val pgtmSize: IntArray,
)

private data class AdrcReplayManifest(
    val schemaVersion: Int,
    val captureId: String,
    val captureType: String,
    val rawAdaptiveExposureMode: String,
    val rawRenderingEngine: String,
    val cameraId: String?,
    val iso: Int,
    val minIso: Int,
    val maxAnalogIso: Int,
    val shutterSpeedNs: Long,
    val aperture: Float,
    val aeMode: Int,
    val exposureCompensationEv: Float,
    val postRawSensitivityBoost: Float,
    val rendererBaselineExposureEv: Float,
    val width: Int,
    val height: Int,
    val rotation: Int,
    val isMirrored: Boolean,
    val viewfinderRotationDegrees: Int,
    val viewfinderMirroredHorizontally: Boolean,
    val statsBounds: IntArray?,
    val maxLinearIntensity: Float?,
    val frameCount: Int,
    val faceRects: List<FloatArray>,
    val colorCorrectionMatrix: FloatArray?,
    val whiteBalanceGains: FloatArray?,
    val cameraWhite: FloatArray?,
    val adrcDiagnostics: AdrcReplayDiagnostics?,
    val dngFile: String?,
    val viewfinderFile: String?,
    val sdrFile: String?,
    val linearInputFile: String?,
    val linearInputWidth: Int?,
    val linearInputHeight: Int?,
) {
    companion object {
        const val SCHEMA_VERSION = 1
    }
}

/**
 * Records capture-time RAW DNG, aligned viewfinder preview, rendered SDR JPEG, and the exact
 * 256x192 linear GPU input fed into Qualcomm ADRC/TMC12 + LTM for deterministic offline replay
 * and tuning against the live viewfinder.
 *
 * Enable via: adb shell setprop debug.photon.adrc.replay_capture true
 */
internal object RawAdrcReplayCapture {
    private const val TAG = "RawAdrcReplayCapture"
    private const val PROPERTY = "debug.photon.adrc.replay_capture"
    private const val DOWNLOAD_SUBDIRECTORY = "PhotonCamera/adrc-replay"

    internal data class PreparedAdrcSnapshot(
        val linearRgba: FloatArray,
        val inputWidth: Int,
        val inputHeight: Int,
        val metadata: RawMetadata,
        val rendererBaselineExposureEv: Float,
        val maxLinearIntensity: Float,
        val statsBounds: Rect?,
        val colorCorrectionMatrix: FloatArray,
        val diagnostics: DngQualcommAdrcPgtm.Diagnostics,
        val pgtmSize: IntArray,
    )

    private val latestPreparedSnapshot = AtomicReference<PreparedAdrcSnapshot?>(null)

    fun isEnabled(): Boolean =
        RawStackRuntimeDebug.enabled && SystemPropertiesUtil.get(PROPERTY) == "true"

    fun recordPreparedAdrcInput(
        linearRgba: FloatArray,
        inputWidth: Int,
        inputHeight: Int,
        metadata: RawMetadata,
        rendererBaselineExposureEv: Float,
        maxLinearIntensity: Float,
        statsBounds: Rect?,
        colorCorrectionMatrix: FloatArray,
        diagnostics: DngQualcommAdrcPgtm.Diagnostics,
        map: DngProfileGainTableMap,
    ) {
        if (!isEnabled()) return
        latestPreparedSnapshot.set(
            PreparedAdrcSnapshot(
                linearRgba = linearRgba.copyOf(),
                inputWidth = inputWidth,
                inputHeight = inputHeight,
                metadata = metadata,
                rendererBaselineExposureEv = rendererBaselineExposureEv,
                maxLinearIntensity = maxLinearIntensity,
                statsBounds = statsBounds?.let(::Rect),
                colorCorrectionMatrix = colorCorrectionMatrix.copyOf(),
                diagnostics = diagnostics,
                pgtmSize = intArrayOf(map.mapPointsH, map.mapPointsV, map.mapPointsN),
            ),
        )
    }

    fun captureIfEnabled(
        context: Context,
        captureId: String,
        captureType: String,
        mediaMetadata: MediaMetadata,
        rawMetadata: RawMetadata,
        dngFile: File?,
        sdrJpegFile: File?,
        viewfinderBitmap: Bitmap?,
        rotation: Int,
        viewfinderRotationDegrees: Int,
        viewfinderMirroredHorizontally: Boolean,
        rendererBaselineExposureEv: Float,
        statsBounds: Rect?,
    ) {
        if (!isEnabled()) return
        val snapshot = latestPreparedSnapshot.getAndSet(null)
        try {
            require(
                captureId.isNotEmpty() && captureId == File(captureId).name &&
                    captureId != "." && captureId != "..",
            )
            val alignedViewfinderPng = viewfinderBitmap
                ?.takeUnless { it.isRecycled }
                ?.let { encodeAlignedViewfinderPng(it, viewfinderRotationDegrees, viewfinderMirroredHorizontally) }

            val dngName = dngFile?.takeIf { it.exists() && it.length() > 0L }?.let { "capture.dng" }
            val vfName = alignedViewfinderPng?.let { "viewfinder.png" }
            val sdrName = sdrJpegFile?.takeIf { it.exists() && it.length() > 0L }?.let { "capture_sdr.jpg" }
            val linearName = snapshot?.let { "linear_input_${it.inputWidth}x${it.inputHeight}.f32le" }

            val effectiveRawMeta = snapshot?.metadata ?: rawMetadata
            val exposureMode = RawAdaptiveExposureMode.resolve(
                usePhotonHdr = mediaMetadata.rawToneMappingParameters.usePhotonHdr,
                useQualcommAdrc = mediaMetadata.rawToneMappingParameters.useQualcommAdrc,
            )
            val bounds = snapshot?.statsBounds ?: statsBounds
            val manifest = AdrcReplayManifest(
                schemaVersion = AdrcReplayManifest.SCHEMA_VERSION,
                captureId = captureId,
                captureType = captureType,
                rawAdaptiveExposureMode = exposureMode.persistedValue,
                rawRenderingEngine = mediaMetadata.rawRenderingEngine.name,
                cameraId = mediaMetadata.cameraId,
                iso = effectiveRawMeta.iso,
                minIso = effectiveRawMeta.minimumSensitivityIso,
                maxAnalogIso = effectiveRawMeta.maxAnalogSensitivity,
                shutterSpeedNs = effectiveRawMeta.shutterSpeed,
                aperture = effectiveRawMeta.aperture,
                aeMode = effectiveRawMeta.aeMode,
                exposureCompensationEv = effectiveRawMeta.exposureCompensation,
                postRawSensitivityBoost = effectiveRawMeta.postRawSensitivityBoost,
                rendererBaselineExposureEv = snapshot?.rendererBaselineExposureEv
                    ?: rendererBaselineExposureEv,
                width = effectiveRawMeta.width,
                height = effectiveRawMeta.height,
                rotation = rotation,
                isMirrored = mediaMetadata.isMirrored,
                viewfinderRotationDegrees = viewfinderRotationDegrees,
                viewfinderMirroredHorizontally = viewfinderMirroredHorizontally,
                statsBounds = bounds?.let { intArrayOf(it.left, it.top, it.right, it.bottom) },
                maxLinearIntensity = snapshot?.maxLinearIntensity,
                frameCount = effectiveRawMeta.frameCount,
                faceRects = effectiveRawMeta.faceRects.map { r ->
                    floatArrayOf(r.left, r.top, r.right, r.bottom)
                },
                colorCorrectionMatrix = snapshot?.colorCorrectionMatrix
                    ?: effectiveRawMeta.colorCorrectionMatrix,
                whiteBalanceGains = effectiveRawMeta.whiteBalanceGains,
                cameraWhite = effectiveRawMeta.cameraWhite,
                adrcDiagnostics = snapshot?.let { s ->
                    AdrcReplayDiagnostics(
                        drcGain = s.diagnostics.drcGain,
                        drcGainDark = s.diagnostics.drcGainDark,
                        ltmPercentage = s.diagnostics.ltmPercentage,
                        yRatioMax = s.diagnostics.yRatioMax,
                        sceneDynamicRangeEv = s.diagnostics.sceneDynamicRangeEv,
                        weightedLogAvgLuma = s.diagnostics.weightedLogAvgLuma,
                        lumaP05 = s.diagnostics.lumaP05,
                        lumaP992 = s.diagnostics.lumaP992,
                        pgtmSize = s.pgtmSize,
                    )
                },
                dngFile = dngName,
                viewfinderFile = vfName,
                sdrFile = sdrName,
                linearInputFile = linearName,
                linearInputWidth = snapshot?.inputWidth,
                linearInputHeight = snapshot?.inputHeight,
            )

            val destination = writeArchive(context, captureId) { archive ->
                archive.putNextEntry(ZipEntry("manifest.json"))
                archive.write(GsonBuilder().setPrettyPrinting().create().toJson(manifest).toByteArray())
                archive.closeEntry()

                if (alignedViewfinderPng != null) {
                    archive.putNextEntry(ZipEntry(vfName!!))
                    archive.write(alignedViewfinderPng)
                    archive.closeEntry()
                }
                if (sdrName != null) {
                    archive.putNextEntry(ZipEntry(sdrName))
                    sdrJpegFile.inputStream().buffered().use { it.copyTo(archive) }
                    archive.closeEntry()
                }
                if (snapshot != null) {
                    archive.putNextEntry(ZipEntry(linearName!!))
                    val bytes = ByteBuffer.allocate(snapshot.linearRgba.size * Float.SIZE_BYTES)
                        .order(ByteOrder.LITTLE_ENDIAN)
                    bytes.asFloatBuffer().put(snapshot.linearRgba)
                    archive.write(bytes.array())
                    archive.closeEntry()
                }
                if (dngName != null) {
                    archive.putNextEntry(ZipEntry(dngName))
                    dngFile.inputStream().buffered().use { it.copyTo(archive) }
                    archive.closeEntry()
                }
            }
            PLog.i(
                TAG,
                "Captured ADRC replay archive at $destination " +
                    "(type=$captureType dng=${dngName != null} vf=${vfName != null} " +
                    "linear=${linearName != null} sdr=${sdrName != null})",
            )
        } catch (error: Exception) {
            PLog.w(TAG, "ADRC replay capture failed for $captureId", error)
        }
    }

    private fun encodeAlignedViewfinderPng(
        source: Bitmap,
        rotationDegrees: Int,
        mirrorHorizontally: Boolean,
    ): ByteArray? {
        val normalizedRotation = Math.floorMod(rotationDegrees, 360)
        val aligned = if (normalizedRotation != 0 || mirrorHorizontally) {
            val matrix = Matrix()
            if (mirrorHorizontally) {
                matrix.postScale(-1f, 1f)
            }
            if (normalizedRotation != 0) {
                matrix.postRotate(normalizedRotation.toFloat())
            }
            Bitmap.createBitmap(source, 0, 0, source.width, source.height, matrix, true)
        } else {
            source
        }
        return try {
            val out = ByteArrayOutputStream()
            if (aligned.compress(Bitmap.CompressFormat.PNG, 100, out)) {
                out.toByteArray()
            } else {
                null
            }
        } finally {
            if (aligned !== source && !aligned.isRecycled) {
                aligned.recycle()
            }
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
            "Unable to create ADRC replay archive in Downloads"
        }
        var published = false
        try {
            val stream = checkNotNull(resolver.openOutputStream(uri, "w")) {
                "Unable to open ADRC replay archive"
            }
            ZipOutputStream(stream.buffered()).use { archive ->
                archive.setLevel(Deflater.NO_COMPRESSION)
                write(archive)
            }
            val actualName = resolver.query(uri, arrayOf(MediaStore.Downloads.DISPLAY_NAME), null, null, null)
                ?.use { cursor -> if (cursor.moveToFirst()) cursor.getString(0) else null }
                ?: name
            val complete = ContentValues().apply { put(MediaStore.Downloads.IS_PENDING, 0) }
            check(resolver.update(uri, complete, null, null) == 1) {
                "Unable to publish ADRC replay archive"
            }
            published = true
            return "$directory/$actualName"
        } finally {
            if (!published) resolver.delete(uri, null)
        }
    }
}
