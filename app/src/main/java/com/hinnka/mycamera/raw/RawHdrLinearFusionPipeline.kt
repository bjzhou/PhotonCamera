package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import android.opengl.GLES30
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import kotlin.math.ln

data class LinearHdrFusionInputFrame(
    val rawData: ByteBuffer,
    val width: Int,
    val height: Int,
    val rowStride: Int,
    val exposureProduct: Double,
    val originalIndex: Int,
    val blackLevel: FloatArray? = null,
    val whiteLevel: Float? = null,
    val lensShadingAlreadyApplied: Boolean = false,
    val effectiveFrameCount: Int = 1,
)

data class LinearHdrFusionResult(
    val linearRgbBuffer: ByteBuffer,
    val width: Int,
    val height: Int,
    val rowStepSamples: Int,
    val colStepSamples: Int,
    val baselineExposureEv: Float,
    val shortExposureProduct: Double,
    val normalExposureProduct: Double,
    val longExposureProduct: Double,
    val previewBitmap: Bitmap?,
)

internal object RawHdrLinearFusionPipeline {
    private const val TAG = "RawHdrLinearFusion"
    private const val MIN_EXPOSURE_PRODUCT = 1.0e-9

    suspend fun fuse(
        processor: RawDemosaicProcessor,
        frames: List<LinearHdrFusionInputFrame>,
        metadata: RawMetadata,
        applyLensShadingCorrection: Boolean,
        aspectRatio: AspectRatio,
        rotation: Int,
        renderPreview: Boolean,
    ): LinearHdrFusionResult? {
        if (frames.size < 3) {
            PLog.w(TAG, "RAW HDR GPU fusion requires 3 frames, got ${frames.size}")
            return null
        }
        val width = frames[0].width
        val height = frames[0].height
        if (width <= 0 || height <= 0 || width > processor.rawHdrMaxTextureSize ||
            height > processor.rawHdrMaxTextureSize
        ) {
            PLog.e(
                TAG,
                "RAW HDR GPU fusion input ${width}x${height} exceeds " +
                    "GL_MAX_TEXTURE_SIZE=${processor.rawHdrMaxTextureSize}"
            )
            return null
        }
        if (frames.any { it.width != width || it.height != height }) {
            PLog.w(TAG, "RAW HDR GPU fusion got mixed frame sizes")
            return null
        }

        var currentTexture = 0
        var currentFramebuffer = 0
        var accumulatorTexture = 0
        var accumulatorFramebuffer = 0
        var accumulatorScratchTexture = 0
        var accumulatorScratchFramebuffer = 0
        var normalReferenceTexture = 0
        var normalReferenceFramebuffer = 0
        var longReferenceTexture = 0
        var longReferenceFramebuffer = 0
        var fusedTexture = 0
        var fusedFramebuffer = 0
        var linearAlignment: RawHdrLinearAlignment? = null
        var outputBuffer: ByteBuffer? = null
        var previewBitmap: Bitmap? = null
        var returned = false
        val startTime = System.currentTimeMillis()
        return try {
            if (!processor.ensureRawHdrLinearFusionInitialized()) {
                PLog.e(TAG, "Failed to initialize processor")
                return null
            }
            if (!processor.hasRawHdrLinearFusionPrograms(renderPreview)) {
                PLog.e(TAG, "RAW HDR GPU fusion shaders are unavailable")
                return null
            }

            val actualMetadata = if (applyLensShadingCorrection) {
                metadata
            } else {
                metadata.copy(
                    lensShadingMap = null,
                    lensShadingMapWidth = 0,
                    lensShadingMapHeight = 0,
                    lensShadingMapGrid = null
                )
            }
            val shortFrame = frames.first()
            val normalFrames = frames.subList(1, frames.lastIndex)
            val normalReferenceFrame = normalFrames.first()
            val longFrame = frames.last()
            val shortProduct = validExposureProduct(shortFrame.exposureProduct)
            val normalProduct = validExposureProduct(normalReferenceFrame.exposureProduct)
            val normalFrameCount = normalFrames
                .sumOf { it.effectiveFrameCount.coerceAtLeast(1) }
                .coerceAtLeast(1)
                .toFloat()
            val longProduct = validExposureProduct(longFrame.exposureProduct)
            val hdrNoiseAlpha = actualMetadata.noiseProfile.getOrElse(0) { 0f }.coerceAtLeast(0f) / 65535.0f
            val hdrNoiseBeta = actualMetadata.noiseProfile.getOrElse(1) { 0f }.coerceAtLeast(0f) /
                (65535.0f * 65535.0f)
            val baselineExposureEv = log2(normalProduct / shortProduct).coerceIn(0f, 8f)

            processor.setupRawHdrFullResFramebuffer(width, height)
            currentTexture = processor.createRawHdrLinearTexture(width, height, GLES30.GL_RGBA16F)
            processor.setRawHdrTextureFilter(currentTexture, GLES30.GL_LINEAR)
            currentFramebuffer = processor.createFramebufferForTexture(currentTexture, "rawHdrCurrentLinear")
            accumulatorTexture = processor.createRawHdrLinearTexture(width, height, GLES30.GL_RGBA16F)
            accumulatorFramebuffer = processor.createFramebufferForTexture(accumulatorTexture, "rawHdrAccumulator")
            accumulatorScratchTexture = processor.createRawHdrLinearTexture(width, height, GLES30.GL_RGBA16F)
            accumulatorScratchFramebuffer = processor.createFramebufferForTexture(
                accumulatorScratchTexture,
                "rawHdrAccumulatorScratch"
            )
            normalReferenceTexture = processor.createRawHdrLinearTexture(width, height, GLES30.GL_RGBA16F)
            processor.setRawHdrTextureFilter(normalReferenceTexture, GLES30.GL_LINEAR)
            normalReferenceFramebuffer = processor.createFramebufferForTexture(
                normalReferenceTexture,
                "rawHdrNormalReference"
            )
            longReferenceTexture = processor.createRawHdrLinearTexture(width, height, GLES30.GL_RGBA16F)
            processor.setRawHdrTextureFilter(longReferenceTexture, GLES30.GL_LINEAR)
            longReferenceFramebuffer = processor.createFramebufferForTexture(longReferenceTexture, "rawHdrLongReference")
            fusedTexture = processor.createRawHdrLinearTexture(width, height, GLES30.GL_RGBA16UI)
            fusedFramebuffer = processor.createFramebufferForTexture(fusedTexture, "rawHdrFusedRgbx")
            processor.setRawHdrTextureFilter(processor.rawHdrLinearOutputTextureId, GLES30.GL_LINEAR)

            PLog.d(
                TAG,
                "RAW HDR GPU fusion start: ${width}x${height} " +
                    "short=${shortProduct} normal=${normalProduct} normalCount=${normalFrameCount.toInt()} " +
                    "long=${longProduct}"
            )
            processor.renderLinearHdrInputToFramebuffer(
                frame = shortFrame,
                metadata = actualMetadata,
                targetFramebufferId = processor.rawHdrLinearOutputFramebufferId,
                label = "RAW HDR short RCD"
            )
            processor.renderLinearHdrInputToFramebuffer(
                frame = longFrame,
                metadata = actualMetadata,
                targetFramebufferId = longReferenceFramebuffer,
                label = "RAW HDR long RCD"
            )
            processor.renderLinearHdrInputToFramebuffer(
                frame = normalReferenceFrame,
                metadata = actualMetadata,
                targetFramebufferId = normalReferenceFramebuffer,
                label = "RAW HDR normal reference RCD"
            )
            val alignment = RawHdrLinearAlignment(width, height, hdrNoiseAlpha, hdrNoiseBeta)
            linearAlignment = alignment
            alignment.buildReference(normalReferenceTexture)

            fun alignmentMapTextureFor(textureId: Int, frameProduct: Double, label: String): Int {
                val exposureScale = (normalProduct / frameProduct).toFloat().coerceIn(0.0001f, 64.0f)
                return alignment.computeMap(textureId, exposureScale, label)
            }

            processor.clearRawHdrAccumulator(accumulatorFramebuffer, width, height)
            var accumulatorReadTexture = accumulatorTexture
            var accumulatorWriteTexture = accumulatorScratchTexture
            var accumulatorWriteFramebuffer = accumulatorScratchFramebuffer

            fun swapAccumulatorTargets() {
                val previousReadTexture = accumulatorReadTexture
                accumulatorReadTexture = accumulatorWriteTexture
                accumulatorWriteTexture = previousReadTexture
                accumulatorWriteFramebuffer = if (accumulatorWriteTexture == accumulatorTexture) {
                    accumulatorFramebuffer
                } else {
                    accumulatorScratchFramebuffer
                }
            }

            processor.renderRawHdrLinearAccumulation(
                currentTextureId = longReferenceTexture,
                normalTextureId = normalReferenceTexture,
                longTextureId = longReferenceTexture,
                previousAccumulatorTextureId = accumulatorReadTexture,
                alignmentRobustnessTextureId = alignmentMapTextureFor(
                    longReferenceTexture,
                    longProduct,
                    "RAW HDR long alignment"
                ),
                useAlignmentRobustness = true,
                scaleToShort = (shortProduct / longProduct).toFloat().coerceIn(1.0e-6f, 1f),
                longScaleToShort = (shortProduct / longProduct).toFloat().coerceIn(1.0e-6f, 1f),
                normalFrameCount = normalFrameCount,
                noiseAlpha = hdrNoiseAlpha,
                noiseBeta = hdrNoiseBeta,
                frameRole = 2,
                targetAccumulatorFramebufferId = accumulatorWriteFramebuffer,
                width = width,
                height = height,
                label = "RAW HDR long accumulate"
            )
            swapAccumulatorTargets()

            processor.renderRawHdrLinearAccumulation(
                currentTextureId = normalReferenceTexture,
                normalTextureId = normalReferenceTexture,
                longTextureId = longReferenceTexture,
                previousAccumulatorTextureId = accumulatorReadTexture,
                alignmentRobustnessTextureId = 0,
                useAlignmentRobustness = false,
                scaleToShort = (shortProduct / normalProduct).toFloat().coerceIn(1.0e-6f, 1f),
                longScaleToShort = (shortProduct / longProduct).toFloat().coerceIn(1.0e-6f, 1f),
                normalFrameCount = normalFrameCount,
                noiseAlpha = hdrNoiseAlpha,
                noiseBeta = hdrNoiseBeta,
                frameRole = 1,
                targetAccumulatorFramebufferId = accumulatorWriteFramebuffer,
                width = width,
                height = height,
                label = "RAW HDR normal accumulate"
            )
            swapAccumulatorTargets()

            normalFrames.drop(1).forEachIndexed { index, normalFrame ->
                val frameProduct = validExposureProduct(normalFrame.exposureProduct)
                processor.renderLinearHdrInputToFramebuffer(
                    frame = normalFrame,
                    metadata = actualMetadata,
                    targetFramebufferId = currentFramebuffer,
                    label = "RAW HDR normal RCD ${index + 1}"
                )
                processor.renderRawHdrLinearAccumulation(
                    currentTextureId = currentTexture,
                    normalTextureId = normalReferenceTexture,
                    longTextureId = longReferenceTexture,
                    previousAccumulatorTextureId = accumulatorReadTexture,
                    alignmentRobustnessTextureId = alignmentMapTextureFor(
                        currentTexture,
                        frameProduct,
                        "RAW HDR normal alignment ${index + 1}"
                    ),
                    useAlignmentRobustness = true,
                    scaleToShort = (shortProduct / frameProduct).toFloat().coerceIn(1.0e-6f, 1f),
                    longScaleToShort = (shortProduct / longProduct).toFloat().coerceIn(1.0e-6f, 1f),
                    normalFrameCount = normalFrameCount,
                    noiseAlpha = hdrNoiseAlpha,
                    noiseBeta = hdrNoiseBeta,
                    frameRole = 1,
                    targetAccumulatorFramebufferId = accumulatorWriteFramebuffer,
                    width = width,
                    height = height,
                    label = "RAW HDR normal accumulate ${index + 1}"
                )
                swapAccumulatorTargets()
            }

            processor.renderRawHdrLinearAccumulation(
                currentTextureId = processor.rawHdrLinearOutputTextureId,
                normalTextureId = normalReferenceTexture,
                longTextureId = longReferenceTexture,
                previousAccumulatorTextureId = accumulatorReadTexture,
                alignmentRobustnessTextureId = alignmentMapTextureFor(
                    processor.rawHdrLinearOutputTextureId,
                    shortProduct,
                    "RAW HDR short alignment"
                ),
                useAlignmentRobustness = true,
                scaleToShort = 1f,
                longScaleToShort = (shortProduct / longProduct).toFloat().coerceIn(1.0e-6f, 1f),
                normalFrameCount = normalFrameCount,
                noiseAlpha = hdrNoiseAlpha,
                noiseBeta = hdrNoiseBeta,
                frameRole = 0,
                targetAccumulatorFramebufferId = accumulatorWriteFramebuffer,
                width = width,
                height = height,
                label = "RAW HDR short accumulate"
            )
            swapAccumulatorTargets()

            processor.renderRawHdrLinearNormalize(
                accumulatorTextureId = accumulatorReadTexture,
                fusedFramebufferId = fusedFramebuffer,
                width = width,
                height = height,
            )
            previewBitmap = if (renderPreview) {
                processor.renderRawHdrLinearPreviewBitmap(
                    fusedTextureId = fusedTexture,
                    width = width,
                    height = height,
                    aspectRatio = aspectRatio,
                    rotation = rotation,
                    baselineExposureEv = baselineExposureEv,
                    metadata = actualMetadata,
                )
            } else {
                null
            }
            outputBuffer = processor.readRawHdrLinearRgbx16(fusedFramebuffer, width, height)
                ?: return null
            returned = true
            PLog.i(
                TAG,
                "RAW HDR GPU linear fusion completed in ${System.currentTimeMillis() - startTime}ms " +
                    "baselineEv=$baselineExposureEv"
            )
            LinearHdrFusionResult(
                linearRgbBuffer = outputBuffer,
                width = width,
                height = height,
                rowStepSamples = width * 4,
                colStepSamples = 4,
                baselineExposureEv = baselineExposureEv,
                shortExposureProduct = shortProduct,
                normalExposureProduct = normalProduct,
                longExposureProduct = longProduct,
                previewBitmap = previewBitmap,
            )
        } catch (e: Exception) {
            PLog.e(TAG, "RAW HDR GPU linear fusion failed", e)
            null
        } finally {
            GLES30.glDisable(GLES30.GL_BLEND)
            linearAlignment?.close()
            processor.deleteRawHdrUploadTextureIfNeeded()
            processor.deleteTextureAndFramebuffer(currentTexture, currentFramebuffer)
            processor.deleteTextureAndFramebuffer(accumulatorTexture, accumulatorFramebuffer)
            processor.deleteTextureAndFramebuffer(accumulatorScratchTexture, accumulatorScratchFramebuffer)
            processor.deleteTextureAndFramebuffer(normalReferenceTexture, normalReferenceFramebuffer)
            processor.deleteTextureAndFramebuffer(longReferenceTexture, longReferenceFramebuffer)
            processor.deleteTextureAndFramebuffer(fusedTexture, fusedFramebuffer)
            if (!returned) {
                LargeDirectBuffer.free(outputBuffer)
                previewBitmap?.takeIf { !it.isRecycled }?.recycle()
            }
        }
    }

    private fun validExposureProduct(product: Double): Double =
        product.takeIf { it.isFinite() && it > MIN_EXPOSURE_PRODUCT } ?: MIN_EXPOSURE_PRODUCT

    private fun log2(value: Double): Float =
        if (value > 0.0 && value.isFinite()) (ln(value) / ln(2.0)).toFloat() else 0f
}
