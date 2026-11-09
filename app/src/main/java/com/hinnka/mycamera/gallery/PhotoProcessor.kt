package com.hinnka.mycamera.gallery

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Gainmap
import android.graphics.Matrix
import android.graphics.Rect
import android.os.Build
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.data.UserPreferencesRepository
import com.hinnka.mycamera.frame.FrameManager
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.frame.FrameTemplate
import com.hinnka.mycamera.hdr.GainmapResult
import com.hinnka.mycamera.hdr.GainmapSourceSet
import com.hinnka.mycamera.hdr.HdrBuffer
import com.hinnka.mycamera.hdr.HdrBufferEncoding
import com.hinnka.mycamera.hdr.LuminanceGainMap
import com.hinnka.mycamera.hdr.LuminanceGainMapEncoding
import com.hinnka.mycamera.hdr.RawGainmapMath
import com.hinnka.mycamera.hdr.SourceKind
import com.hinnka.mycamera.lut.ColorCorrectionPipelineResolver
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.processor.DepthBokehProcessor
import com.hinnka.mycamera.processor.BokehStyle
import com.hinnka.mycamera.raw.RawOutputScaling
import com.hinnka.mycamera.raw.RawDigitalZoomResampling
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.RawHdrRenderResult
import com.hinnka.mycamera.raw.RawMetadata
import com.hinnka.mycamera.raw.RawPhotonHdrMetadata
import com.hinnka.mycamera.raw.RawMgcTuningSnr
import com.hinnka.mycamera.raw.RawNoiseProfileManager
import com.hinnka.mycamera.raw.SpectralFilmTuning
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.raw.fotufilm.FotufilmDocumentStorage
import com.hinnka.mycamera.utils.PLog
import android.net.Uri
import com.hinnka.mycamera.processor.DenoiseStrength
import com.hinnka.mycamera.raw.MgcBitmapNoiseModel
import kotlinx.coroutines.flow.firstOrNull
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.sync.Mutex
import kotlinx.coroutines.sync.withLock
import kotlinx.coroutines.withContext
import java.io.File
import java.util.zip.CRC32
import kotlin.math.abs
import kotlin.math.roundToInt

private const val RAW_HDR_REFERENCE_ASPECT_TOLERANCE = 0.0015f
private const val PHOTON_DENOISE_PREFIX = "photon_denoise_"
private const val PHOTON_DENOISE_MAX_ENTRIES = 2

/**
 * 照片处理器
 *
 * 集中管理照片的 LUT、旋转、亮度和边框应用逻辑
 */
class PhotoProcessor(
    private val lutManager: LutManager,
    private val lutImageProcessor: LutImageProcessor,
    private val frameManager: FrameManager,
    private val frameRenderer: FrameRenderer,
    private val depthBokehProcessor: DepthBokehProcessor,
    private val userPreferencesRepository: UserPreferencesRepository,
) {
    private val colorCorrectionPipelineResolver = ColorCorrectionPipelineResolver(lutManager)
    private val photonDenoiseBaseMutex = Mutex()
    private val photonDenoiseSourceCrc = java.util.concurrent.ConcurrentHashMap<String, Long>()

    data class HdrFrameOutput(
        val bitmap: Bitmap,
        val gainmapResult: GainmapResult?,
    )

    private data class ResolvedFrame(
        val template: FrameTemplate,
        val metadata: MediaMetadata,
    )

    private suspend fun resolveRawLensShadingCorrectionEnabled(metadata: MediaMetadata): Boolean {
        return metadata.rawLensShadingCorrectionEnabled
            ?: if (metadata.isImported) {
                // Imported DNG files default to consuming their embedded residual/complete map,
                // while an explicit photo-level edit is still honored above.
                true
            } else {
                userPreferencesRepository.latest().rawLensShadingCorrectionEnabled
            }
    }

    /**
     * 非 RAW 照片的降噪基底（对应 RAW 烘焙进 original.jpg 的降噪）：对 [source] 全分辨率跑一次
     * Bitmap 降噪（LutImageProcessor.applyBitmapDenoise）并持久化，预览/导出直接加载基底并以 0 强度走 LUT。
     *
     * 每个条目以源文件内容与强度为 key，最多保留 [PHOTON_DENOISE_MAX_ENTRIES] 个、按最近使用淘汰：
     * 已保存的强度与编辑中（未保存）的强度各占一个条目，互不覆盖。真正开始重建前调用 [onBuild]。
     * 两个强度都为 0 时无需基底，返回 false；否则返回是否新建了条目。
     */
    suspend fun updatePhotonDenoiseBase(
        context: Context,
        photoId: String,
        source: File,
        noiseReduction: Float,
        chromaNoiseReduction: Float,
        sensorIso: Int?,
        onBuild: () -> Unit = {},
    ): Boolean {
        val luma = DenoiseStrength.clamp(noiseReduction)
        val chroma = DenoiseStrength.clamp(chromaNoiseReduction)
        if (luma <= 0f && chroma <= 0f) return false
        val dir = GalleryManager.getPhotonDenoiseDir(context, photoId)
        photonDenoiseBaseMutex.withLock {
            val key = withContext(Dispatchers.IO) { photonDenoiseKey(source, luma, chroma, sensorIso) }
            if (withContext(Dispatchers.IO) { findPhotonDenoiseEntry(dir, key)?.touch() } != null) return false
            onBuild()
            val input = GalleryManager.loadBitmap(context, Uri.fromFile(source)) ?: return false
            val denoised = try {
                lutImageProcessor.applyBitmapDenoise(input, luma, chroma, sensorIso)
            } catch (e: Throwable) {
                input.recycle()
                throw e
            }
            input.recycle()
            if (denoised === input) return false
            val written = withContext(Dispatchers.IO) {
                val entry = PhotonDenoiseEntry.of(dir, key)
                val tmp = File(dir, "${entry.image.name}.tmp")
                try {
                    tmp.outputStream().use { denoised.compress(Bitmap.CompressFormat.JPEG, 95, it) }
                } finally {
                    denoised.recycle()
                }
                entry.keyFile.delete()
                (tmp.renameTo(entry.image) || run { tmp.delete(); false }).also {
                    if (it) {
                        entry.keyFile.writeText(key)
                        prunePhotonDenoiseEntries(dir)
                    }
                }
            }
            if (written) PLog.d("PhotoProcessor", "Photon denoise base rebuilt: $photoId luma=$luma chroma=$chroma")
            return written
        }
    }

    /**
     * 加载 [source] 在给定强度下的降噪基底，没有时返回 null（不降噪）。只读取：基底只在
     * 编辑页降噪滑块松手时由 [updatePhotonDenoiseBase] 生成，其他入口从不跑降噪。
     */
    suspend fun loadPhotonDenoiseBase(
        context: Context,
        photoId: String,
        source: File,
        noiseReduction: Float,
        chromaNoiseReduction: Float,
        sensorIso: Int?,
        maxEdge: Int? = null,
    ): Bitmap? {
        val luma = DenoiseStrength.clamp(noiseReduction)
        val chroma = DenoiseStrength.clamp(chromaNoiseReduction)
        if (luma <= 0f && chroma <= 0f) return null
        val dir = GalleryManager.getPhotonDenoiseDir(context, photoId)
        return photonDenoiseBaseMutex.withLock {
            withContext(Dispatchers.IO) {
                findPhotonDenoiseEntry(dir, photonDenoiseKey(source, luma, chroma, sensorIso))?.touch()?.let {
                    GalleryManager.loadBitmap(context, Uri.fromFile(it.image), maxEdge)
                }
            }
        }
    }

    private class PhotonDenoiseEntry(val image: File, val keyFile: File) {
        fun touch() = apply { image.setLastModified(System.currentTimeMillis()) }

        companion object {
            fun of(dir: File, key: String): PhotonDenoiseEntry {
                val stem = "$PHOTON_DENOISE_PREFIX${Integer.toHexString(key.hashCode())}"
                return PhotonDenoiseEntry(File(dir, "$stem.jpg"), File(dir, "$stem.key"))
            }
        }
    }

    private fun findPhotonDenoiseEntry(dir: File, key: String): PhotonDenoiseEntry? =
        PhotonDenoiseEntry.of(dir, key).takeIf {
            it.image.exists() && it.keyFile.exists() && it.keyFile.readText() == key
        }

    private fun prunePhotonDenoiseEntries(dir: File) {
        val files = dir.listFiles { file -> file.name.startsWith(PHOTON_DENOISE_PREFIX) } ?: return
        val stems = files.groupBy { it.nameWithoutExtension }
        stems.entries
            .sortedByDescending { (_, group) -> group.firstOrNull { it.extension == "jpg" }?.lastModified() ?: 0L }
            .drop(PHOTON_DENOISE_MAX_ENTRIES)
            .forEach { (_, group) -> group.forEach(File::delete) }
        // 旧版单槽基底
        File(dir, "photon_denoise.jpg").delete()
        File(dir, "photon_denoise.key").delete()
    }

    /**
     * 源文件以内容 CRC32 标识（按路径、修改时间、大小缓存）：bokeh.jpg 等派生文件会被原样重写，
     * 只看修改时间会让内容未变的基底失效。
     */
    private fun photonDenoiseKey(source: File, luma: Float, chroma: Float, sensorIso: Int?): String {
        val stamp = "${source.absolutePath}|${source.lastModified()}|${source.length()}"
        val crc = photonDenoiseSourceCrc[stamp] ?: CRC32().run {
            source.inputStream().use { input ->
                val buffer = ByteArray(1 shl 16)
                while (true) {
                    val read = input.read(buffer)
                    if (read < 0) break
                    update(buffer, 0, read)
                }
            }
            value
        }.also {
            if (photonDenoiseSourceCrc.size > 64) photonDenoiseSourceCrc.clear()
            photonDenoiseSourceCrc[stamp] = it
        }
        // The noise model signature retires bases built by another denoiser or calibration.
        val model = MgcBitmapNoiseModel.cacheSignature(sensorIso)
        return "v3|${source.name}|${source.length()}|$crc|$luma|$chroma|$model"
    }

    private fun resolveNoiseReduction(metadata: MediaMetadata, fallback: Float): Float {
        return metadata.noiseReduction ?: (if (metadata.isImported) 0f else fallback)
    }

    private fun resolveChromaNoiseReduction(metadata: MediaMetadata, fallback: Float): Float {
        return metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else fallback)
    }

    suspend fun prepareUltraHdrSource(
        context: Context,
        photoId: String,
        metadata: MediaMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): GainmapSourceSet? {
        if (!metadata.manualHdrEffectEnabled) {
            return null
        }

        var source: GainmapSourceSet? = null

        val dngFile = GalleryManager.getDngFile(context, photoId)
        if (dngFile.exists()) {
            source = processDngForUltraHdr(
                context = context,
                photoId = photoId,
                dngPath = dngFile.absolutePath,
                metadata = metadata,
                sharpening = sharpening,
                noiseReduction = noiseReduction,
                chromaNoiseReduction = chromaNoiseReduction
            )
        }

        if (source == null) {
            if (GalleryManager.getOriginalImageFile(context, photoId) != null) {
                if (EmbeddedGainmapReusePolicy.canReuse(metadata)) {
                    val bitmap = GalleryManager.loadBitmap(context, photoId, preserveHdr = true)
                    if (bitmap != null) {
                        source = GainmapSourceSet(
                            sdrBase = bitmap,
                            sourceKind = SourceKind.SDR_BITMAP,
                            confidence = 1.0f,
                            displayHdrSdrRatio = readDisplayHdrSdrRatio()
                        )
                    }
                } else if (metadata.hasEmbeddedGainmap) {
                    PLog.d("PhotoProcessor", "Skip embedded gainmap reuse after edits: $photoId")
                }
            }
        }

        // If source was generated from DNG, and we have an AI denoised base, replace the sdrBase.
        // The AI base is persisted in ai_denoise.jpg so exports and HDR gainmaps never rerun the slow model.
        if (source != null && metadata.hasAiDenoisedBase) {
            val aiFile = GalleryManager.getAiDenoiseFile(context, photoId)
            if (aiFile.exists()) {
                val bitmap = BitmapFactory.decodeFile(aiFile.absolutePath)
                if (bitmap != null) {
                    val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)

                    var lutLuminanceGainBitmap: Bitmap? = null
                    val sdrBitmap = processBitmap(
                        context = context,
                        photoId = photoId,
                        input = bitmap,
                        metadata = metadata,
                        sharpening = finalSharpening,
                        useComputationalAperture = true,
                        applyFrameWatermark = false,
                        onLutLuminanceGainMap = { lutLuminanceGainBitmap = it },
                        lutLuminanceGainDownsample = RawGainmapMath.DOWNSAMPLE,
                    )
                    lutLuminanceGainBitmap = lutLuminanceGainBitmap?.let {
                        applyPostEditGeometry(it, metadata, "ai_lut_luminance_gain")
                    }
                    lutLuminanceGainBitmap = lutLuminanceGainBitmap?.let {
                        alignLutLuminanceGainMapToSdr(sdrBitmap, it)
                    }
                    val previousSdrBase = source.sdrBase
                    val previousLutLuminanceGainMap = source.lutLuminanceGainMap?.bitmap
                    source = source.copy(
                        sdrBase = sdrBitmap,
                        lutLuminanceGainMap = lutLuminanceGainBitmap?.let {
                            LuminanceGainMap(it, LuminanceGainMapEncoding.LINEAR_RATIO)
                        },
                    )
                    if (previousLutLuminanceGainMap?.isRecycled == false) {
                        previousLutLuminanceGainMap.recycle()
                    }
                    if (!previousSdrBase.isRecycled) previousSdrBase.recycle()
                }
            }
        }

        if (source != null) {
            return source
        }


        val fallbackFile = if (metadata.hasAiDenoisedBase) {
            GalleryManager.getAiDenoiseFile(context, photoId).takeIf { it.exists() }
        } else {
            GalleryManager.getOriginalImageFile(context, photoId)
        }
        val sdrBitmap = fallbackFile?.let { file ->
            processBitmapSource(context, photoId, file, metadata, sharpening, applyFrameWatermark = false) {
                if (metadata.hasAiDenoisedBase) BitmapFactory.decodeFile(file.absolutePath)
                else GalleryManager.loadOriginalBitmap(context, photoId)
            }
        }
        if (sdrBitmap != null) {
            return GainmapSourceSet(
                sdrBase = sdrBitmap,
                hdrReference = null,
                sourceKind = SourceKind.SDR_BITMAP,
                confidence = 0.35f,
                displayHdrSdrRatio = readDisplayHdrSdrRatio()
            )
        }

        return null
    }

    /**
     * Builds the SDR-backed HDR source from an in-memory capture result that has
     * already received computational bokeh. This keeps detail-HDR generation and
     * export on the same pixels without running the full-resolution bokeh pass again.
     */
    suspend fun prepareUltraHdrSourceFromProcessedSdr(
        context: Context,
        photoId: String,
        processedSdr: Bitmap,
        metadata: MediaMetadata,
        sharpening: Float = 0f,
    ): GainmapSourceSet? {
        if (!metadata.manualHdrEffectEnabled) return null

        val sdrBase = processBitmap(
            context = context,
            photoId = photoId,
            input = processedSdr,
            metadata = metadata,
            sharpening = sharpening,
            useComputationalAperture = false,
            applyFrameWatermark = false,
        )
        return GainmapSourceSet(
            sdrBase = sdrBase,
            hdrReference = null,
            sourceKind = SourceKind.SDR_BITMAP,
            confidence = 0.35f,
            displayHdrSdrRatio = readDisplayHdrSdrRatio(),
        )
    }

    private fun readDisplayHdrSdrRatio(): Float = GalleryManager.hdrSdrRatio

    suspend fun prepareUltraHdrSourceFromRawResult(
        context: Context,
        photoId: String?,
        rawResult: RawHdrRenderResult,
        metadata: MediaMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f,
        applyMirror: Boolean = false,
        preparedSdrBitmap: Bitmap? = null,
    ): GainmapSourceSet? = withContext(Dispatchers.IO) {
        val displayHdrSdrRatio = readDisplayHdrSdrRatio()

        val colorCorrection = resolveColorCorrection(metadata)

        var sdrBitmap = preparedSdrBitmap ?: rawResult.sdrBitmap
        var hdrReferenceBitmap = normalizeRawHdrReferenceForGainmap(
            rawResult = rawResult,
            sdrBitmap = rawResult.sdrBitmap,
            hdrReferenceBitmap = rawResult.hdrReferenceBitmap
        )

        if (applyMirror && metadata.isMirrored) {
            if (preparedSdrBitmap == null) {
                sdrBitmap = BitmapUtils.flipHorizontal(sdrBitmap)
            }
            hdrReferenceBitmap = hdrReferenceBitmap?.let { BitmapUtils.flipHorizontal(it) }
        }

        metadata.computationalAperture?.let { aperture ->
            if (preparedSdrBitmap == null) {
                sdrBitmap = depthBokehProcessor.applyHighQualityBokeh(
                    context,
                    photoId,
                    sdrBitmap,
                    metadata.focusPointX,
                    metadata.focusPointY,
                    aperture,
                    BokehStyle.fromPersistedName(metadata.computationalBokehStyle),
                )
                photoId?.let { id -> GalleryManager.saveBokehPhoto(context, id, sdrBitmap) }
            }
            hdrReferenceBitmap = hdrReferenceBitmap?.let {
                depthBokehProcessor.applyHighQualityBokeh(
                    context,
                    photoId,
                    it,
                    metadata.focusPointX,
                    metadata.focusPointY,
                    aperture,
                    BokehStyle.fromPersistedName(metadata.computationalBokehStyle),
                )
            }
        }

        val lutStackResult = lutImageProcessor.applyLutStackWithLuminanceGain(
            sdrBitmap,
            colorCorrection.baselineLayer,
            colorCorrection.creativeLayer,
            luminanceGainDownsample = RawGainmapMath.DOWNSAMPLE,
        )
        sdrBitmap = lutStackResult.bitmap
        var lutLuminanceGainBitmap = lutStackResult.luminanceGainMap

        hdrReferenceBitmap = hdrReferenceBitmap?.let { alignHdrReferenceSizeToSdr(sdrBitmap, it, "raw_pre_crop") }
        lutLuminanceGainBitmap = lutLuminanceGainBitmap?.let {
            applyPostEditGeometry(it, metadata, "raw_lut_luminance_gain")
        }
        sdrBitmap = applyPostEditGeometry(sdrBitmap, metadata, "raw_sdr")
        hdrReferenceBitmap = hdrReferenceBitmap?.let { applyPostEditGeometry(it, metadata, "raw_hdr") }
        hdrReferenceBitmap = hdrReferenceBitmap?.let { alignHdrReferenceSizeToSdr(sdrBitmap, it, "raw_post_crop") }
        lutLuminanceGainBitmap = lutLuminanceGainBitmap?.let {
            alignLutLuminanceGainMapToSdr(sdrBitmap, it)
        }

        GainmapSourceSet(
            sdrBase = sdrBitmap,
            lutLuminanceGainMap = lutLuminanceGainBitmap?.let {
                LuminanceGainMap(it, LuminanceGainMapEncoding.LINEAR_RATIO)
            },
            hdrReference = hdrReferenceBitmap?.let {
                HdrBuffer(
                    bitmap = it,
                    encoding = HdrBufferEncoding.LINEAR_SRGB,
                    description = "raw_linear_srgb_selected_engine_highlight_reference",
                )
            },
            sourceKind = SourceKind.RAW,
            confidence = 0.8f,
            displayHdrSdrRatio = displayHdrSdrRatio
        )
    }

    private fun normalizeRawHdrReferenceForGainmap(
        rawResult: RawHdrRenderResult,
        sdrBitmap: Bitmap,
        hdrReferenceBitmap: Bitmap?,
    ): Bitmap? {
        val hdr = hdrReferenceBitmap ?: return null
        if (hdr.width == sdrBitmap.width && hdr.height == sdrBitmap.height) {
            return hdr
        }

        val cropped = cropFullRawHdrReferenceToOutput(rawResult, hdr)
        val aligned = cropped?.let { candidate ->
            alignHdrReferenceSizeToSdr(sdrBitmap, candidate, "raw_output_bounds").also { aligned ->
                if (aligned !== candidate && candidate !== hdr && !candidate.isRecycled) {
                    candidate.recycle()
                }
            }
        } ?: alignHdrReferenceSizeToSdr(sdrBitmap, hdr, "raw_size_fallback")

        PLog.w(
            "PhotoProcessor",
            "RAW HDR reference size normalized for gainmap: " +
                "sdr=${sdrBitmap.width}x${sdrBitmap.height}, " +
                "hdr=${hdr.width}x${hdr.height}, " +
                "raw=${rawResult.rawInputWidth}x${rawResult.rawInputHeight}, " +
                "bounds=${rawResult.outputSourceBounds}, " +
                "effectiveDefaultCrop=${rawResult.effectiveDefaultCrop}, " +
                "result=${aligned.width}x${aligned.height}"
        )
        return aligned
    }

    private fun cropFullRawHdrReferenceToOutput(
        rawResult: RawHdrRenderResult,
        hdrReferenceBitmap: Bitmap,
    ): Bitmap? {
        val rawWidth = rawResult.rawInputWidth.takeIf { it > 0 } ?: return null
        val rawHeight = rawResult.rawInputHeight.takeIf { it > 0 } ?: return null
        if (hdrReferenceBitmap.width != rawWidth || hdrReferenceBitmap.height != rawHeight) {
            return null
        }
        val sourceBounds = rawResult.outputSourceBounds ?: return null
        val safeBounds = Rect(sourceBounds)
        if (!safeBounds.intersect(Rect(0, 0, rawWidth, rawHeight)) || safeBounds.isEmpty) {
            return null
        }
        val cropped = Bitmap.createBitmap(
            hdrReferenceBitmap,
            safeBounds.left,
            safeBounds.top,
            safeBounds.width(),
            safeBounds.height()
        )
        val rotated = rotateBitmapForRawOutput(cropped, rawResult.outputRotation)
        if (rotated !== cropped && !cropped.isRecycled) {
            cropped.recycle()
        }
        return rotated
    }

    private fun rotateBitmapForRawOutput(input: Bitmap, rotation: Int): Bitmap {
        val normalized = ((rotation % 360) + 360) % 360
        if (normalized == 0) return input
        val matrix = Matrix().apply { postRotate(normalized.toFloat()) }
        return Bitmap.createBitmap(input, 0, 0, input.width, input.height, matrix, true)
    }

    private fun alignHdrReferenceSizeToSdr(
        sdrBitmap: Bitmap,
        hdrReferenceBitmap: Bitmap,
        label: String,
    ): Bitmap {
        val aspectAligned = cropHdrReferenceToSdrAspect(sdrBitmap, hdrReferenceBitmap, label)
        if (aspectAligned.width == sdrBitmap.width && aspectAligned.height == sdrBitmap.height) {
            return aspectAligned
        }
        PLog.w(
            "PhotoProcessor",
            "Scaling RAW HDR reference for gainmap ($label): " +
                "hdr=${aspectAligned.width}x${aspectAligned.height}, " +
                "sdr=${sdrBitmap.width}x${sdrBitmap.height}"
        )
        val scaled = Bitmap.createScaledBitmap(aspectAligned, sdrBitmap.width, sdrBitmap.height, true)
        if (aspectAligned !== hdrReferenceBitmap && !aspectAligned.isRecycled) {
            aspectAligned.recycle()
        }
        return scaled
    }

    private fun alignLutLuminanceGainMapToSdr(sdrBitmap: Bitmap, gainMap: Bitmap): Bitmap {
        val targetWidth = ((sdrBitmap.width + RawGainmapMath.DOWNSAMPLE - 1) /
            RawGainmapMath.DOWNSAMPLE).coerceAtLeast(1)
        val targetHeight = ((sdrBitmap.height + RawGainmapMath.DOWNSAMPLE - 1) /
            RawGainmapMath.DOWNSAMPLE).coerceAtLeast(1)
        if (gainMap.width == targetWidth && gainMap.height == targetHeight) return gainMap

        PLog.d(
            "PhotoProcessor",
            "Align LUT luminance sidecar ${gainMap.width}x${gainMap.height} -> " +
                "${targetWidth}x$targetHeight"
        )
        val aligned = Bitmap.createScaledBitmap(gainMap, targetWidth, targetHeight, true)
        if (aligned !== gainMap && !gainMap.isRecycled) gainMap.recycle()
        return aligned
    }

    private fun cropHdrReferenceToSdrAspect(
        sdrBitmap: Bitmap,
        hdrReferenceBitmap: Bitmap,
        label: String,
    ): Bitmap {
        if (sdrBitmap.width <= 0 || sdrBitmap.height <= 0 ||
            hdrReferenceBitmap.width <= 0 || hdrReferenceBitmap.height <= 0
        ) {
            return hdrReferenceBitmap
        }

        val targetAspect = sdrBitmap.width.toFloat() / sdrBitmap.height.toFloat()
        val sourceAspect = hdrReferenceBitmap.width.toFloat() / hdrReferenceBitmap.height.toFloat()
        val aspectError = abs(sourceAspect - targetAspect) / targetAspect
        if (aspectError <= RAW_HDR_REFERENCE_ASPECT_TOLERANCE) {
            return hdrReferenceBitmap
        }

        val cropWidth: Int
        val cropHeight: Int
        if (sourceAspect > targetAspect) {
            cropHeight = hdrReferenceBitmap.height
            cropWidth = (cropHeight * targetAspect).roundToInt()
                .coerceIn(1, hdrReferenceBitmap.width)
        } else {
            cropWidth = hdrReferenceBitmap.width
            cropHeight = (cropWidth / targetAspect).roundToInt()
                .coerceIn(1, hdrReferenceBitmap.height)
        }

        if (cropWidth == hdrReferenceBitmap.width && cropHeight == hdrReferenceBitmap.height) {
            return hdrReferenceBitmap
        }

        val left = (hdrReferenceBitmap.width - cropWidth).coerceAtLeast(0) / 2
        val top = (hdrReferenceBitmap.height - cropHeight).coerceAtLeast(0) / 2
        PLog.w(
            "PhotoProcessor",
            "Cropping RAW HDR reference to SDR aspect ($label): " +
                "hdr=${hdrReferenceBitmap.width}x${hdrReferenceBitmap.height}, " +
                "sdr=${sdrBitmap.width}x${sdrBitmap.height}, " +
                "crop=${left},${top},${cropWidth}x${cropHeight}"
        )
        return Bitmap.createBitmap(hdrReferenceBitmap, left, top, cropWidth, cropHeight)
    }

    suspend fun process(
        context: Context, photoId: String, metadata: MediaMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f,
        onRawMetadata: ((RawMetadata) -> Unit)? = null
    ): Bitmap? {
        val dngFile = GalleryManager.getDngFile(context, photoId)

        if (metadata.hasAiDenoisedBase) {
            val aiFile = GalleryManager.getAiDenoiseFile(context, photoId)
            if (aiFile.exists()) {
                return processBitmapSource(context, photoId, aiFile, metadata, sharpening) {
                    GalleryManager.loadBitmap(context, Uri.fromFile(aiFile))
                }
            }
            return null
        }

        if (dngFile.exists()) {
            return processDng(
                context,
                photoId,
                dngFile.absolutePath,
                metadata,
                sharpening,
                noiseReduction,
                chromaNoiseReduction,
                onRawMetadata
            )
        } else {
            val originalFile = GalleryManager.getOriginalImageFile(context, photoId) ?: return null
            return processBitmapSource(context, photoId, originalFile, metadata, sharpening) {
                GalleryManager.loadOriginalBitmap(context, photoId)
            }
        }
    }

    /**
     * [processBitmap] of a non-RAW source file (original or AI base): the Photon denoise base of the
     * saved strengths replaces it when one exists, otherwise the photo renders without denoise.
     * With a computational aperture the preview's base is that of bokeh.jpg, so the export uses it
     * as is instead of re-running the bokeh pass on the undenoised source.
     */
    private suspend fun processBitmapSource(
        context: Context,
        photoId: String,
        source: File,
        metadata: MediaMetadata,
        sharpening: Float,
        applyFrameWatermark: Boolean = true,
        loadSource: () -> Bitmap?,
    ): Bitmap? {
        val bokehFile = GalleryManager.getBokehFile(context, photoId)
        val bokehBaked = (metadata.computationalAperture ?: 0f) > 0f && bokehFile.exists()
        val base = loadPhotonDenoiseBase(
            context = context,
            photoId = photoId,
            source = if (bokehBaked) bokehFile else source,
            noiseReduction = resolveNoiseReduction(metadata, 0f),
            chromaNoiseReduction = resolveChromaNoiseReduction(metadata, 0f),
            sensorIso = metadata.iso,
        )
        return processBitmap(
            context = context,
            photoId = photoId,
            input = base ?: loadSource() ?: return null,
            metadata = metadata,
            sharpening = sharpening,
            useComputationalAperture = base == null || !bokehBaked,
            applyFrameWatermark = applyFrameWatermark,
        )
    }

    private suspend fun processDngForUltraHdr(
        context: Context,
        photoId: String?,
        dngPath: String,
        metadata: MediaMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): GainmapSourceSet? = withContext(Dispatchers.IO) {
        val rawSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val rawNoiseReduction = resolveNoiseReduction(metadata, noiseReduction)
        val rawChromaNoiseReduction = resolveChromaNoiseReduction(metadata, chromaNoiseReduction)
        val rawResult = RawDemosaicProcessor.getInstance().processForHdrSources(
            context = context,
            dngFilePath = dngPath,
            includeHdrReference = true,
            photonHdrRatio = RawPhotonHdrMetadata.read(metadata.customProperties),
            photonSourceToShortGain = RawPhotonHdrMetadata.readFinalShortGain(metadata.customProperties),
            photonHdrNetPostExposureEv = RawPhotonHdrMetadata.readPostExposureEv(metadata.customProperties),
            photonHdrNetInputExposureEv = RawPhotonHdrMetadata.readInputExposureEv(metadata.customProperties),
            aspectRatio = resolveRawAspectRatio(metadata),
            cropRegion = metadata.cropRegion,
            rotation = metadata.rotation,
            exposureBias = metadata.exposureBias ?: 0f,
            rawExposureCompensation = metadata.rawExposureCompensation ?: 0f,
            rawHighlightsAdjustment = metadata.rawHighlightsAdjustment ?: 0f,
            rawShadowsAdjustment = metadata.rawShadowsAdjustment ?: 0f,
            rawBlackPointCorrection = metadata.rawBlackPointCorrection ?: 0f,
            rawWhitePointCorrection = metadata.rawWhitePointCorrection ?: 0f,
            applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(metadata),
            mgcTuningSnr = RawMgcTuningSnr.read(metadata.customProperties),
            rawBlackLevelMode = metadata.rawBlackLevelMode,
            rawCustomBlackLevel = metadata.rawCustomBlackLevel,
            rawWhiteLevelMode = metadata.rawWhiteLevelMode,
            rawCustomWhiteLevel = metadata.rawCustomWhiteLevel,
            sharpeningValue = rawSharpening,
            denoiseValue = rawNoiseReduction,
            chromaDenoiseValue = rawChromaNoiseReduction,
            rawDcpId = metadata.rawDcpId,
            rawEmbeddedDngProfileId = metadata.rawEmbeddedDngProfileId,
            rawNoiseProfileId = resolveRawNoiseProfileId(metadata),
            rawHncsProfileId = metadata.rawHncsProfileId,
            rawHncsRenderIntent = metadata.rawHncsRenderIntent,
            rawHncsFilmCurveMode = metadata.rawHncsFilmCurveMode,
            rawRenderingEngine = metadata.rawRenderingEngine,
            rawToneMappingParameters = metadata.rawToneMappingParameters,
            rawCfaCorrectionMode = metadata.rawCfaCorrectionMode,
            rawBlackBorderCrop = metadata.rawBlackBorderCrop,
            rawOutputScale = RawOutputScaling.read(metadata.customProperties),
            rawOutputUpscaleMode = metadata.rawOutputUpscaleMode,
            rawPhysicalOutputSize = RawDigitalZoomResampling.readPhysicalSize(metadata.customProperties),
            spectralFilmStock = metadata.spectralFilmStock,
            spectralFilmPrint = metadata.spectralFilmPrint,
            spectralFilmTuning = SpectralFilmTuning(
                cDensityGain = metadata.spectralFilmCDensityGain,
                mDensityGain = metadata.spectralFilmMDensityGain,
                yDensityGain = metadata.spectralFilmYDensityGain
            ),
            fotufilmDocument = FotufilmDocumentStorage.decode(metadata.fotufilmDocument, "photo metadata")
        ) ?: return@withContext null
        prepareUltraHdrSourceFromRawResult(
            context = context,
            photoId = photoId,
            rawResult = rawResult,
            metadata = metadata,
            sharpening = rawSharpening,
            noiseReduction = noiseReduction,
            chromaNoiseReduction = chromaNoiseReduction,
            applyMirror = true
        )
    }

    /**
     * @param dngPath dng 文件路径
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun processDng(
        context: Context,
        photoId: String?,
        dngPath: String,
        metadata: MediaMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f,
        onRawMetadata: ((RawMetadata) -> Unit)? = null
    ): Bitmap? = withContext(Dispatchers.IO) {
        var result: Bitmap?

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = resolveNoiseReduction(metadata, noiseReduction)
        val finalChromaNoiseReduction = resolveChromaNoiseReduction(metadata, chromaNoiseReduction)

        // 1. 应用 LUT
        val colorCorrection = resolveColorCorrection(metadata)
        val cropRegion = metadata.cropRegion

        val bitmap = RawDemosaicProcessor.getInstance().process(
            context,
            dngPath,
            resolveRawAspectRatio(metadata),
            cropRegion,
            metadata.rotation,
            metadata.exposureBias ?: 0f,
            rawExposureCompensation = metadata.rawExposureCompensation ?: 0f,
            rawHighlightsAdjustment = metadata.rawHighlightsAdjustment ?: 0f,
            rawShadowsAdjustment = metadata.rawShadowsAdjustment ?: 0f,
            rawBlackPointCorrection = metadata.rawBlackPointCorrection ?: 0f,
            rawWhitePointCorrection = metadata.rawWhitePointCorrection ?: 0f,
            applyLensShadingCorrection = resolveRawLensShadingCorrectionEnabled(metadata),
            mgcTuningSnr = RawMgcTuningSnr.read(metadata.customProperties),
            rawBlackLevelMode = metadata.rawBlackLevelMode,
            rawCustomBlackLevel = metadata.rawCustomBlackLevel,
            rawWhiteLevelMode = metadata.rawWhiteLevelMode,
            rawCustomWhiteLevel = metadata.rawCustomWhiteLevel,
            sharpeningValue = finalSharpening,
            denoiseValue = finalNoiseReduction,
            chromaDenoiseValue = finalChromaNoiseReduction,
            rawDcpId = metadata.rawDcpId,
            rawEmbeddedDngProfileId = metadata.rawEmbeddedDngProfileId,
            rawNoiseProfileId = resolveRawNoiseProfileId(metadata),
            rawHncsProfileId = metadata.rawHncsProfileId,
            rawHncsRenderIntent = metadata.rawHncsRenderIntent,
            rawHncsFilmCurveMode = metadata.rawHncsFilmCurveMode,
            rawRenderingEngine = metadata.rawRenderingEngine,
            rawToneMappingParameters = metadata.rawToneMappingParameters,
            rawCfaCorrectionMode = metadata.rawCfaCorrectionMode,
            rawBlackBorderCrop = metadata.rawBlackBorderCrop,
            rawOutputScale = RawOutputScaling.read(metadata.customProperties),
            rawOutputUpscaleMode = metadata.rawOutputUpscaleMode,
            rawPhysicalOutputSize = RawDigitalZoomResampling.readPhysicalSize(metadata.customProperties),
            spectralFilmStock = metadata.spectralFilmStock,
            spectralFilmPrint = metadata.spectralFilmPrint,
            spectralFilmTuning = SpectralFilmTuning(
                cDensityGain = metadata.spectralFilmCDensityGain,
                mDensityGain = metadata.spectralFilmMDensityGain,
                yDensityGain = metadata.spectralFilmYDensityGain
            ),
            fotufilmDocument = FotufilmDocumentStorage.decode(metadata.fotufilmDocument, "photo metadata"),
            onMetadata = onRawMetadata
        )

        result = bitmap?.let {
            var b = it

            metadata.computationalAperture?.let { aperture ->
                b = depthBokehProcessor.applyHighQualityBokeh(
                    context, photoId, b,
                    metadata.focusPointX, metadata.focusPointY, aperture,
                    BokehStyle.fromPersistedName(metadata.computationalBokehStyle)
                )
                photoId?.let { photoId -> GalleryManager.saveBokehPhoto(context, photoId, b) }
            }

            lutImageProcessor.applyLutStack(
                b,
                colorCorrection.baselineLayer,
                colorCorrection.creativeLayer
            )
        }

        result ?: return@withContext null

        result = applyPostEditGeometry(result, metadata, "dng")
        result = applyFrame(result, metadata)

        result
    }

    /**
     * @param input 输入 Bitmap
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param sharpening 锐化强度
     * @return 处理后的 Bitmap
     *
     * 不做降噪：非 RAW 照片的降噪只来自滑块松手时生成的降噪基底（[loadPhotonDenoiseBase]），
     * 由调用方作为 [input] 传入；RAW 的降噪在 RAW 开发中完成。
     */
    suspend fun processBitmap(
        context: Context,
        photoId: String?,
        input: Bitmap,
        metadata: MediaMetadata,
        sharpening: Float = 0f,
        useComputationalAperture: Boolean = false,
        applyFrameWatermark: Boolean = true,
        onLutLuminanceGainMap: ((Bitmap?) -> Unit)? = null,
        lutLuminanceGainDownsample: Int = 1,
    ): Bitmap = withContext(Dispatchers.IO) {
        var result = input

        val colorCorrection = resolveColorCorrection(metadata)

        if (useComputationalAperture) {
            metadata.computationalAperture?.let { aperture ->
                result = depthBokehProcessor.applyHighQualityBokeh(
                    context, photoId, result,
                    metadata.focusPointX, metadata.focusPointY, aperture,
                    BokehStyle.fromPersistedName(metadata.computationalBokehStyle)
                )
                photoId?.let { photoId -> GalleryManager.saveBokehPhoto(context, photoId, result) }
            }
        }

        // 1. 应用 LUT
        if (onLutLuminanceGainMap != null) {
            val lutStackResult = lutImageProcessor.applyLutStackWithLuminanceGain(
                result,
                colorCorrection.baselineLayer,
                colorCorrection.creativeLayer,
                luminanceGainDownsample = lutLuminanceGainDownsample,
            )
            result = lutStackResult.bitmap
            onLutLuminanceGainMap(lutStackResult.luminanceGainMap)
        } else {
            result = lutImageProcessor.applyLutStack(
                result,
                colorCorrection.baselineLayer,
                colorCorrection.creativeLayer
            )
        }

        result = applyPostEditGeometry(result, metadata, "bitmap")
        if (applyFrameWatermark) {
            result = applyFrame(result, metadata)
        }

        result
    }

    suspend fun applyFrameForHdrOutput(
        input: Bitmap,
        metadata: MediaMetadata,
        gainmapResult: GainmapResult?,
    ): HdrFrameOutput = withContext(Dispatchers.IO) {
        val resolvedFrame = resolveFrame(input, metadata) ?: return@withContext HdrFrameOutput(input, gainmapResult)
        val framedBitmap = frameRenderer.render(input, resolvedFrame.template, resolvedFrame.metadata)
        if (framedBitmap === input) {
            return@withContext HdrFrameOutput(input, gainmapResult)
        }

        val framedGainmapResult = frameGainmapResult(
            input = input,
            template = resolvedFrame.template,
            metadata = resolvedFrame.metadata,
            framedSdr = framedBitmap,
            gainmapResult = gainmapResult
        )
        HdrFrameOutput(framedBitmap, framedGainmapResult)
    }


    private fun applyPostEditGeometry(
        input: Bitmap,
        metadata: MediaMetadata,
        label: String = "bitmap"
    ): Bitmap {
        val rotated = BitmapUtils.rotate(
            input,
            PostEditGeometry.normalizeRotation(metadata.postRotationDegrees).toFloat()
        )
        val transformed = if (metadata.postMirrorHorizontal) {
            BitmapUtils.flipHorizontal(rotated)
        } else {
            rotated
        }
        val straightened = BitmapUtils.rotate(
            transformed,
            PostEditGeometry.normalizeStraightenDegrees(metadata.postStraightenDegrees)
        )
        return applyCrop(straightened, metadata, label)
    }

    private suspend fun resolveRawNoiseProfileId(metadata: MediaMetadata): String =
        userPreferencesRepository.userPreferences.firstOrNull()
            ?.rawNoiseProfileIdForLens(metadata.cameraId)
            ?: RawNoiseProfileManager.DEFAULT_PROFILE_ID

    private fun applyCrop(input: Bitmap, metadata: MediaMetadata, label: String = "bitmap"): Bitmap {
        val cropRegion = metadata.postCropRegion ?: return input
        if (cropRegion.width() <= 0 || cropRegion.height() <= 0) return input

        val baseWidth = metadata.width.takeIf { it > 0 } ?: input.width
        val baseHeight = metadata.height.takeIf { it > 0 } ?: input.height
        val (sourceWidth, sourceHeight) = PostEditGeometry.editedDimensions(
            baseWidth,
            baseHeight,
            metadata.postRotationDegrees,
            metadata.postStraightenDegrees
        )
        val mappedCropRegion = mapPostCropRegionToInput(cropRegion, sourceWidth, sourceHeight, input.width, input.height)
        if (mappedCropRegion.isEmpty) return input

        val safeLeft = mappedCropRegion.left
        val safeTop = mappedCropRegion.top
        val safeRight = mappedCropRegion.right
        val safeBottom = mappedCropRegion.bottom

        val safeWidth = safeRight - safeLeft
        val safeHeight = safeBottom - safeTop

        if (safeWidth <= 0 || safeHeight <= 0 || (safeWidth == input.width && safeHeight == input.height)) {
            return input
        }

        val cropped = Bitmap.createBitmap(input, safeLeft, safeTop, safeWidth, safeHeight)
        if (input != cropped && !input.isRecycled) {
            // NOTE: processBitmap assigns 'result', so we can recycle the old one if it is not the original source
            // Wait, input might be the original bitmap passed to processBitmap?
            // If it is the original, we should NOT recycle it because it may still be needed/managed outside.
        }
        return cropped
    }

    private fun mapPostCropRegionToInput(
        cropRegion: android.graphics.Rect,
        sourceWidth: Int,
        sourceHeight: Int,
        inputWidth: Int,
        inputHeight: Int
    ): android.graphics.Rect {
        val scaleX = inputWidth.toFloat() / sourceWidth.toFloat()
        val scaleY = inputHeight.toFloat() / sourceHeight.toFloat()

        return android.graphics.Rect(
            (cropRegion.left * scaleX).roundToInt().coerceIn(0, inputWidth),
            (cropRegion.top * scaleY).roundToInt().coerceIn(0, inputHeight),
            (cropRegion.right * scaleX).roundToInt().coerceIn(0, inputWidth),
            (cropRegion.bottom * scaleY).roundToInt().coerceIn(0, inputHeight)
        )
    }

    private fun resolveRawAspectRatio(metadata: MediaMetadata): AspectRatio? {
        val storedRatio = metadata.ratio ?: return null
        val metadataAspect = metadata.width.takeIf { it > 0 }?.let { width ->
            metadata.height.takeIf { it > 0 }?.let { height ->
                width.toFloat() / height.toFloat()
            }
        } ?: return storedRatio
        val metadataIsLandscape = metadata.width >= metadata.height
        val storedAspect = storedRatio.getValue(metadataIsLandscape)

        if (abs(storedAspect - metadataAspect) <= 0.01f) {
            return storedRatio
        }

        return AspectRatio.entries.minBy { ratio ->
            abs(ratio.getValue(metadataIsLandscape) - metadataAspect)
        }
    }

    private suspend fun resolveColorCorrection(metadata: MediaMetadata) =
        colorCorrectionPipelineResolver.resolveFromMetadata(metadata)

    private suspend fun applyFrame(
        input: Bitmap,
        metadata: MediaMetadata,
    ): Bitmap {
        val resolvedFrame = resolveFrame(input, metadata) ?: return input
        return frameRenderer.render(input, resolvedFrame.template, resolvedFrame.metadata)
    }

    private suspend fun resolveFrame(
        input: Bitmap,
        metadata: MediaMetadata,
    ): ResolvedFrame? {
        val frameId = metadata.frameId ?: return null
        val template = frameManager.loadTemplate(frameId) ?: return null
        val customProperties = frameManager.loadCustomProperties(frameId)
        val finalMetadata = metadata.copy(
            deviceModel = metadata.deviceModel ?: Build.MODEL,
            brand = metadata.brand ?: Build.MANUFACTURER.replaceFirstChar { it.uppercase() },
            dateTaken = metadata.dateTaken ?: System.currentTimeMillis(),
            width = if (metadata.width > 0) metadata.width else input.width,
            height = if (metadata.height > 0) metadata.height else input.height,
            customProperties = metadata.customProperties.ifEmpty { customProperties }
        )
        return ResolvedFrame(
            template = template,
            metadata = frameManager.resolveFrameLocation(template, finalMetadata),
        )
    }

    private fun frameGainmapResult(
        input: Bitmap,
        template: FrameTemplate,
        metadata: MediaMetadata,
        framedSdr: Bitmap,
        gainmapResult: GainmapResult?,
    ): GainmapResult? {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE || gainmapResult == null) {
            return gainmapResult
        }

        val sourceGainmap = gainmapResult.gainmap
        val sourceContents = sourceGainmap.getGainmapContents()
        val framedContents = frameRenderer.renderGainmapContents(input, sourceGainmap, template, metadata, framedSdr)
        if (framedContents === sourceContents) {
            return gainmapResult
        }

        return gainmapResult.copy(
            gainmap = copyGainmapWithContents(sourceGainmap, framedContents)
        )
    }

    private fun copyGainmapWithContents(source: Gainmap, contents: Bitmap): Gainmap {
        val copy = Gainmap(contents)
        source.getRatioMin().also { copy.setRatioMin(it[0], it[1], it[2]) }
        source.getRatioMax().also { copy.setRatioMax(it[0], it[1], it[2]) }
        source.getGamma().also { copy.setGamma(it[0], it[1], it[2]) }
        source.getEpsilonSdr().also { copy.setEpsilonSdr(it[0], it[1], it[2]) }
        source.getEpsilonHdr().also { copy.setEpsilonHdr(it[0], it[1], it[2]) }
        copy.setMinDisplayRatioForHdrTransition(source.getMinDisplayRatioForHdrTransition())
        copy.setDisplayRatioForFullHdr(source.getDisplayRatioForFullHdr())
        return copy
    }
}
