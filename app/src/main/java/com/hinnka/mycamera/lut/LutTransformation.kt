package com.hinnka.mycamera.lut

import android.graphics.Bitmap
import coil.size.Size
import coil.transform.Transformation
import android.content.Context
import com.hinnka.mycamera.gallery.MediaMetadata
import com.hinnka.mycamera.gallery.PhotoProcessor
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingParameters

/**
 * Coil 图像加载库的 LUT 转换器
 * 用于在加载照片时自动应用 LUT 效果
 */
class PhotoTransformation(
    private val context: Context,
    private val metadata: MediaMetadata,
    private val photoProcessor: PhotoProcessor,
) : Transformation {
    
    override val cacheKey: String = "photo_${metadata.thumbnailTransformCacheKey()}"

    override suspend fun transform(input: Bitmap, size: Size): Bitmap {
        return photoProcessor.processBitmap(
            context,
            null,
            input,
            metadata.copy(sharpening = 0f, noiseReduction = 0f, chromaNoiseReduction = 0f),
            0f,
            0f,
            0f
        )
    }
}

private fun MediaMetadata.thumbnailTransformCacheKey(): Int {
    return copy(
        sharpening = null,
        noiseReduction = null,
        chromaNoiseReduction = null,
        rawDenoiseValue = null,
        rawExposureCompensation = null,
        rawAutoExposure = null,
        rawHighlightsAdjustment = null,
        rawShadowsAdjustment = null,
        rawBlackPointCorrection = null,
        rawWhitePointCorrection = null,
        rawAutoWhiteBalanceEstimate = null,
        rawDcpId = null,
        rawRenderingEngine = RawRenderingEngine.AdobeCurve,
        rawToneMappingParameters = RawToneMappingParameters.DEFAULT,
        rawBlackLevelMode = null,
        rawCustomBlackLevel = null,
        rawWhiteLevelMode = null,
        rawCfaCorrectionMode = null,
        cameraId = null,
        sourceUri = null,
        exportedUris = emptyList(),
        hasAiDenoisedBase = false,
        aiDenoiseStrength = null
    ).hashCode()
}
