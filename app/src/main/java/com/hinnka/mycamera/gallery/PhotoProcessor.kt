package com.hinnka.mycamera.gallery

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.ColorSpace
import android.os.Build
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.frame.FrameManager
import com.hinnka.mycamera.frame.FrameRenderer
import com.hinnka.mycamera.hdr.GainmapSourceSet
import com.hinnka.mycamera.hdr.HlgImageProcessor
import com.hinnka.mycamera.hdr.HdrBuffer
import com.hinnka.mycamera.hdr.SourceKind
import com.hinnka.mycamera.lut.LutImageProcessor
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.processor.DepthBokehProcessor
import com.hinnka.mycamera.raw.RawDemosaicProcessor
import com.hinnka.mycamera.raw.RawHdrRenderResult
import com.hinnka.mycamera.utils.BitmapUtils
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.YuvProcessor
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import kotlin.system.measureTimeMillis

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
) {
    private val hlgImageProcessor = HlgImageProcessor()

    suspend fun prepareUltraHdrSource(
        context: Context,
        photoId: String,
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): GainmapSourceSet? {
        if (!metadata.manualHdrEffectEnabled) {
            return null
        }

        val dngFile = PhotoManager.getDngFile(context, photoId)
        if (dngFile.exists()) {
            return processDngForUltraHdr(
                context = context,
                photoId = photoId,
                dngPath = dngFile.absolutePath,
                metadata = metadata,
                sharpening = sharpening,
                noiseReduction = noiseReduction,
                chromaNoiseReduction = chromaNoiseReduction
            )
        }

        val yuvFile = PhotoManager.getYuvFile(context, photoId)
        if (hlgImageProcessor.isHlgCapture(metadata)) {
            val prepareStart = System.currentTimeMillis()
            val hdrData = PhotoManager.loadHdrData(context, photoId)
            if (hdrData != null) {
                val photoFile = PhotoManager.getPhotoFile(context, photoId)
                val photoBitmap = BitmapFactory.decodeFile(photoFile.absolutePath) ?: return null
                val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
                val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
                val finalChromaNoiseReduction =
                    metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

                val sdrPostElapsedStart = System.currentTimeMillis()
                val sdrBitmap = processBitmap(
                    context = context,
                    photoId = photoId,
                    input = photoBitmap,
                    metadata = metadata,
                    sharpening = finalSharpening,
                    noiseReduction = finalNoiseReduction,
                    chromaNoiseReduction = finalChromaNoiseReduction,
                    useComputationalAperture = true
                )
                val hdrReferenceBitmap = hlgImageProcessor.createHdrReferenceFromRawSidecar(
                    buffer = hdrData,
                    width = metadata.width,
                    height = metadata.height
                ).let {
                    applyFrame(applyCrop(it, metadata), metadata)
                }
                PLog.d(
                    "PhotoProcessor",
                    "prepareUltraHdrSource(HLG sidecar) took ${System.currentTimeMillis() - prepareStart}ms " +
                            "(sdrPost=${System.currentTimeMillis() - sdrPostElapsedStart}ms, hasHdr=true)"
                )
                return GainmapSourceSet(
                    sdrBase = sdrBitmap,
                    hdrReference = HdrBuffer(hdrReferenceBitmap, "hlg_sidecar_rgba16"),
                    sourceKind = SourceKind.HLG_CAPTURE,
                    confidence = 0.75f
                )
            }

            if (!yuvFile.exists()) {
                return null
            }
            val data = PhotoManager.loadYuvData(context, photoId) ?: return null
            return try {
                val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
                val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
                val finalChromaNoiseReduction =
                    metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)
                val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
                val colorRecipeParams = metadata.colorRecipeParams
                    ?: metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }
                var source: GainmapSourceSet
                val sourceElapsed = measureTimeMillis {
                    source = hlgImageProcessor.createSourceFromCompressedArgb(
                        buffer = data,
                        width = metadata.width,
                        height = metadata.height
                    )
                }
                var sdrBitmap = source.sdrBase
                val sdrPostElapsed = measureTimeMillis {
                    sdrBitmap = lutImageProcessor.applyLut(
                        sdrBitmap,
                        lutConfig,
                        colorRecipeParams,
                        finalSharpening,
                        finalNoiseReduction,
                        finalChromaNoiseReduction
                    )
                    sdrBitmap = applyCrop(sdrBitmap, metadata)
                    sdrBitmap = applyFrame(sdrBitmap, metadata)
                }

                val hdrReferenceBitmap = source.hdrReference?.bitmap?.let {
                    applyFrame(applyCrop(it, metadata), metadata)
                }
                PLog.d(
                    "PhotoProcessor",
                    "prepareUltraHdrSource(HLG) took ${System.currentTimeMillis() - prepareStart}ms " +
                            "(source=${sourceElapsed}ms, sdrPost=${sdrPostElapsed}ms, hasHdr=${hdrReferenceBitmap != null})"
                )

                GainmapSourceSet(
                    sdrBase = sdrBitmap,
                    hdrReference = hdrReferenceBitmap?.let { HdrBuffer(it, "hlg_bt2020_linear") },
                    sourceKind = SourceKind.HLG_CAPTURE,
                    confidence = source.confidence
                )
            } finally {
                YuvProcessor.free(data)
            }
        }

        val photoFile = PhotoManager.getPhotoFile(context, photoId)
        if (photoFile.exists()) {
            val bitmap = BitmapFactory.decodeFile(photoFile.absolutePath) ?: return null
            val sdrBitmap = processBitmap(
                context = context,
                photoId = photoId,
                input = bitmap,
                metadata = metadata,
                sharpening = sharpening,
                noiseReduction = noiseReduction,
                chromaNoiseReduction = chromaNoiseReduction,
                useComputationalAperture = true
            )
            return GainmapSourceSet(
                sdrBase = sdrBitmap,
                hdrReference = null,
                sourceKind = SourceKind.SDR_BITMAP,
                confidence = 0.35f
            )
        }

        return null
    }

    fun hasDeferredHlgSource(metadata: PhotoMetadata): Boolean {
        return hlgImageProcessor.isHlgCapture(metadata)
    }

    suspend fun prepareUltraHdrSourceFromRawResult(
        context: Context,
        photoId: String?,
        rawResult: RawHdrRenderResult,
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f,
        applyMirror: Boolean = false,
    ): GainmapSourceSet? = withContext(Dispatchers.IO) {
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction =
            metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
        val colorRecipeParams = metadata.colorRecipeParams
            ?: metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }

        var sdrBitmap = rawResult.sdrBitmap
        var hdrReferenceBitmap = rawResult.hdrReferenceBitmap

        if (applyMirror && metadata.isMirrored) {
            sdrBitmap = BitmapUtils.flipHorizontal(sdrBitmap)
            hdrReferenceBitmap = hdrReferenceBitmap?.let { BitmapUtils.flipHorizontal(it) }
        }

        metadata.computationalAperture?.let { aperture ->
            sdrBitmap = depthBokehProcessor.applyHighQualityBokeh(
                context,
                photoId,
                sdrBitmap,
                metadata.focusPointX,
                metadata.focusPointY,
                aperture
            )
            hdrReferenceBitmap = hdrReferenceBitmap?.let {
                depthBokehProcessor.applyHighQualityBokeh(
                    context,
                    photoId,
                    it,
                    metadata.focusPointX,
                    metadata.focusPointY,
                    aperture
                )
            }
            photoId?.let { id -> PhotoManager.saveBokehPhoto(context, id, sdrBitmap) }
        }

        sdrBitmap = lutImageProcessor.applyLut(
            sdrBitmap,
            lutConfig,
            colorRecipeParams,
            finalSharpening,
            finalNoiseReduction,
            finalChromaNoiseReduction
        )

        sdrBitmap = applyCrop(sdrBitmap, metadata)
        sdrBitmap = applyFrame(sdrBitmap, metadata)
        hdrReferenceBitmap = hdrReferenceBitmap?.let { applyFrame(applyCrop(it, metadata), metadata) }

        GainmapSourceSet(
            sdrBase = sdrBitmap,
            hdrReference = hdrReferenceBitmap?.let {
                HdrBuffer(
                    bitmap = it,
                    description = "raw_scene_normalized"
                )
            },
            sourceKind = SourceKind.RAW,
            confidence = 0.8f
        )
    }

    suspend fun process(
        context: Context, photoId: String, metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): Bitmap? {
        val dngFile = PhotoManager.getDngFile(context, photoId)
        val yuvFile = PhotoManager.getYuvFile(context, photoId)
        val photoFile = PhotoManager.getPhotoFile(context, photoId)

        if (dngFile.exists()) {
            return processDng(
                context,
                photoId,
                dngFile.absolutePath,
                metadata,
                sharpening,
                noiseReduction,
                chromaNoiseReduction
            )
        } else if (yuvFile.exists()) {
            val data = PhotoManager.loadYuvData(context, photoId) ?: return null
            return processYuv(
                context,
                photoId,
                data,
                metadata,
                sharpening,
                noiseReduction,
                chromaNoiseReduction
            )
        } else if (photoFile.exists()) {
            val bitmap = BitmapFactory.decodeFile(photoFile.absolutePath) ?: return null
            return processBitmap(
                context,
                photoId,
                bitmap,
                metadata,
                sharpening,
                noiseReduction,
                chromaNoiseReduction,
                true
            )
        }
        return null
    }

    private suspend fun processDngForUltraHdr(
        context: Context,
        photoId: String?,
        dngPath: String,
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): GainmapSourceSet? = withContext(Dispatchers.IO) {
        val rawResult = RawDemosaicProcessor.getInstance().processForHdrSources(
            context = context,
            dngFilePath = dngPath,
            aspectRatio = metadata.ratio ?: AspectRatio.RATIO_4_3,
            cropRegion = metadata.cropRegion,
            rotation = metadata.rotation,
            exposureBias = metadata.exposureBias ?: 0f,
            sharpeningValue = 0.4f
        ) ?: return@withContext null
        prepareUltraHdrSourceFromRawResult(
            context = context,
            photoId = photoId,
            rawResult = rawResult,
            metadata = metadata,
            sharpening = sharpening,
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
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): Bitmap? = withContext(Dispatchers.IO) {
        var result: Bitmap?

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction =
            metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        // 1. 应用 LUT
        val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
        val colorRecipeParams = metadata.colorRecipeParams
            ?: metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }
        val cropRegion = metadata.cropRegion

        val bitmap = RawDemosaicProcessor.getInstance().process(
            context,
            dngPath,
            metadata.ratio ?: AspectRatio.RATIO_4_3,
            cropRegion,
            metadata.rotation,
            metadata.exposureBias ?: 0f
        )

        result = bitmap?.let {
            var b = it

            metadata.computationalAperture?.let { aperture ->
                b = depthBokehProcessor.applyHighQualityBokeh(
                    context, photoId, b,
                    metadata.focusPointX, metadata.focusPointY, aperture
                )
                photoId?.let { photoId -> PhotoManager.saveBokehPhoto(context, photoId, b) }
            }

            lutImageProcessor.applyLut(
                b,
                lutConfig,
                colorRecipeParams,
                finalSharpening,
                finalNoiseReduction,
                finalChromaNoiseReduction
            )
        }

        result ?: return@withContext null

        result = applyCrop(result, metadata)
        result = applyFrame(result, metadata)

        result
    }

    /**
     * @param input 输入 ARGB的像素数组
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun processYuv(
        context: Context,
        photoId: String?,
        input: ByteBuffer,
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f
    ): Bitmap = withContext(Dispatchers.IO) {

        // 优先从元数据中获取软件处理参数
        // 智能回退：如果是导入的照片且元数据中没存过，则默认值为 0，不应用额外处理
        val finalSharpening = metadata.sharpening ?: (if (metadata.isImported) 0f else sharpening)
        val finalNoiseReduction = metadata.noiseReduction ?: (if (metadata.isImported) 0f else noiseReduction)
        val finalChromaNoiseReduction =
            metadata.chromaNoiseReduction ?: (if (metadata.isImported) 0f else chromaNoiseReduction)

        val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
        val colorRecipeParams = metadata.colorRecipeParams
            ?: metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }

        // 1. 应用 LUT
        var result = lutImageProcessor.applyLut(
            input.asShortBuffer(),
            metadata.width,
            metadata.height,
            ColorSpace.get(metadata.colorSpace),
            lutConfig,
            colorRecipeParams,
            finalSharpening,
            finalNoiseReduction,
            finalChromaNoiseReduction
        )
        YuvProcessor.free(input)

        metadata.computationalAperture?.let { aperture ->
            result = depthBokehProcessor.applyHighQualityBokeh(
                context, photoId, result,
                metadata.focusPointX, metadata.focusPointY, aperture
            )
        }

        result = applyCrop(result, metadata)
        result = applyFrame(result, metadata)

        result
    }

    /**
     * @param input 输入 Bitmap
     * @param metadata 照片元数据（包含编辑配置和拍摄信息）
     * @param sharpening 锐化强度
     * @param noiseReduction 降噪强度
     * @param chromaNoiseReduction 减少杂色强度
     * @return 处理后的 Bitmap
     */
    suspend fun processBitmap(
        context: Context,
        photoId: String?,
        input: Bitmap,
        metadata: PhotoMetadata,
        sharpening: Float = 0f,
        noiseReduction: Float = 0f,
        chromaNoiseReduction: Float = 0f,
        useComputationalAperture: Boolean = false,
    ): Bitmap = withContext(Dispatchers.IO) {
        var result = input

        val lutConfig = metadata.lutId?.let { lutManager.loadLut(it) }
        val colorRecipeParams = metadata.colorRecipeParams
            ?: metadata.lutId?.let { lutManager.loadColorRecipeParams(it) }

        if (useComputationalAperture) {
            metadata.computationalAperture?.let { aperture ->
                result = depthBokehProcessor.applyHighQualityBokeh(
                    context, photoId, result,
                    metadata.focusPointX, metadata.focusPointY, aperture
                )
                photoId?.let { photoId -> PhotoManager.saveBokehPhoto(context, photoId, result) }
            }
        }

        // 1. 应用 LUT
        result = lutImageProcessor.applyLut(
            result,
            lutConfig,
            colorRecipeParams,
            sharpening,
            noiseReduction,
            chromaNoiseReduction
        )

        result = applyCrop(result, metadata)
        result = applyFrame(result, metadata)

        result
    }


    private fun applyCrop(input: Bitmap, metadata: PhotoMetadata): Bitmap {
        val cropRegion = metadata.postCropRegion ?: return input
        if (cropRegion.width() <= 0 || cropRegion.height() <= 0) return input
        
        // Ensure bounds are valid
        val safeLeft = cropRegion.left.coerceIn(0, input.width)
        val safeTop = cropRegion.top.coerceIn(0, input.height)
        val safeRight = cropRegion.right.coerceIn(0, input.width)
        val safeBottom = cropRegion.bottom.coerceIn(0, input.height)
        
        val safeWidth = safeRight - safeLeft
        val safeHeight = safeBottom - safeTop
        
        if (safeWidth <= 0 || safeHeight <= 0 || (safeWidth == input.width && safeHeight == input.height)) {
            return input
        }
        
        val cropped = Bitmap.createBitmap(input, safeLeft, safeTop, safeWidth, safeHeight)
        if (input != cropped && !input.isRecycled) {
            // NOTE: processYuv and processBitmap assign 'result', so we can recycle the old one if it is not the original source
            // Wait, input might be the original bitmap passed to processBitmap?
            // If it is the original, we should NOT recycle it because it may still be needed/managed outside.
        }
        return cropped
    }

    private suspend fun applyFrame(
        input: Bitmap,
        metadata: PhotoMetadata,
    ): Bitmap {
        var result = input
        // 2. 应用边框水印
        if (metadata.frameId != null) {
            val template = frameManager.loadTemplate(metadata.frameId)
            if (template != null) {
                val customProperties = frameManager.loadCustomProperties(metadata.frameId)
                val finalMetadata = metadata.copy(
                    deviceModel = metadata.deviceModel ?: Build.MODEL,
                    brand = metadata.brand ?: Build.MANUFACTURER.replaceFirstChar { it.uppercase() },
                    dateTaken = metadata.dateTaken ?: metadata.dateTaken ?: System.currentTimeMillis(),
                    width = if (metadata.width > 0) metadata.width else result.width,
                    height = if (metadata.height > 0) metadata.height else result.height,
                    customProperties = metadata.customProperties.ifEmpty { customProperties }
                )

                val framedResult = frameRenderer.render(
                    result,
                    template,
                    finalMetadata,
                )
                if (framedResult != result) {
                    result.recycle()
                }
                result = framedResult
            }
        }
        return result
    }
}
