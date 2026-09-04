package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.graphics.ImageFormat
import android.media.Image
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLES31
import androidx.core.graphics.createBitmap
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * GLES YUV burst processor using Spatial's alignment, rejection and additive RBF merge graph.
 * YUV-specific shaders only adapt camera Y/CbCr planes into Spatial's half-resolution guide and
 * signed Fixed14 alignment domains; the temporal stage ordering and shared equations remain the
 * same as [GlesMgcRawSpatialStacker].
 */
class GlesYuvStacker(
    private val width: Int,
    private val height: Int,
    private val outputWidth: Int,
    private val outputHeight: Int,
    private val rotation: Int,
    private val colorSpace: ColorSpace,
    private val inputFormat: Int,
    private val enableSuperResolution: Boolean = false,
) {
    data class HdrInputFrame(
        val image: SafeImage,
        val exposureProduct: Float,
        val role: HdrFrameRole,
    )

    enum class HdrFrameRole {
        ZERO_EV,
        HIGH_EV,
        LOW_EV,
    }

    private data class TextureLevel(
        val texture: Int,
        val width: Int,
        val height: Int,
        val scaleToGuidePixels: Float,
    )

    private data class Alignment(
        val texture: Int,
        val gridWidth: Int,
        val gridHeight: Int,
        val tileStride: Int,
        val scaleToGuidePixels: Float,
        val gridMin: Int,
    )

    private data class GlobalAlignmentCandidate(
        val x: Float,
        val y: Float,
        val peakSupport: Int,
        val usedHistogramPeak: Boolean,
    )

    private data class ReferenceAlignmentProducts(
        val referenceTexture: Int,
        val gridWidth: Int,
        val gridHeight: Int,
        val tileStride: Int,
        val tileSize: Int,
        val normalize: Boolean,
        val products0: Int,
        val products1: Int,
    )

    private interface MertensFramebufferSource {
        val width: Int
        val height: Int
        val textureId: Int
    }

    private data class MertensRenderTarget(
        override val width: Int,
        override val height: Int,
        override val textureId: Int,
        val framebufferId: Int,
        val ownsTexture: Boolean = true,
        val ownsFramebuffer: Boolean = true,
    ) : MertensFramebufferSource {
        private var released = false

        fun release() {
            if (released) return
            if (ownsTexture) {
                GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            }
            if (ownsFramebuffer) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
            }
            released = true
        }
    }

    private data class MertensTextureOnlyTarget(
        override val width: Int,
        override val height: Int,
        override val textureId: Int,
    ) : MertensFramebufferSource

    private data class MertensTextureLevel(
        override val width: Int,
        override val height: Int,
        override val textureId: Int,
        val owned: Boolean,
        val owner: MertensRenderTarget? = null,
    ) : MertensFramebufferSource {
        fun releaseIfOwned() {
            if (owned) {
                owner?.release() ?: GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            }
        }
    }

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    private val textures = ArrayList<Int>()
    private val programs = ArrayList<Int>()
    private val framebuffers = ArrayList<Int>()

    private var alignmentInputProgram = 0
    private var guideProgram = 0
    private var downsampleProgram = 0
    private var downsample4Program = 0
    private var alignmentGradientProductsProgram = 0
    private var upsampleAlignmentProgram = 0
    private var blockLucasKanadeProgram = 0
    private var convertAlignmentProgram = 0
    private var rejectionProgram = 0
    private var rejectionPixelDifferenceDownsampleProgram = 0
    private var clippedGaussianHorizontalProgram = 0
    private var clippedGaussianVerticalProgram = 0
    private var rejectionFilterDownsampleProgram = 0
    private var rejectionFilterProgram = 0
    private var rejectionPostprocessProgram = 0
    private var dilationProgram = 0
    private var accumulateProgram = 0
    private var normalizeProgram = 0
    private var readbackResolveProgram = 0
    private var superResolutionAccumulateProgram = 0
    private var superResolutionNormalizeProgram = 0
    private var alignedFrameOutputProgram = 0
    private var mertensWeightProgram = 0
    private var mertensNormalizeProgram = 0
    private var mertensPyrDownProgram = 0
    private var mertensLaplacianProgram = 0
    private var mertensCombineProgram = 0
    private var mertensReconstructProgram = 0
    private var mertensCopyProgram = 0
    private var p010LumaProgram = 0
    private var p010ChromaProgram = 0
    private var planarChroma8Program = 0
    private var planarChroma16Program = 0

    private var renderFbo = 0
    private var readbackFbo = 0

    private var refY = 0
    private var refCbCr = 0
    private var curY = 0
    private var curCbCr = 0
    private var refYStaging = 0
    private var refCbCrStaging = 0
    private var curYStaging = 0
    private var curCbCrStaging = 0
    private var planarUStaging = 0
    private var planarVStaging = 0
    private var planarUStagingWidth = 0
    private var planarVStagingWidth = 0
    private var planarStagingHeight = 0
    private var planarStagingInternalFormat = 0
    private var referenceGuideTexture = 0
    private var currentGuideTexture = 0
    private var zeroFlowTexture = 0
    private var identityWeightTexture = 0
    private var zeroUnblockerTexture = 0
    private var mergeAlignmentTexture = 0
    private var flowTexture = 0
    private var rawReverseWeightTexture = 0
    private var rawPixelDifferenceTexture = 0
    private var initialWeightTexture = 0
    private var pixelDifferenceTexture = 0
    private var pixelDifferenceHorizontalTexture = 0
    private var smoothedPixelDifferenceTexture = 0
    private var downsampledLumaTexture = 0
    private var downsampledRejectionTexture = 0
    private var filteredRejectionTexture = 0
    private var frameWeightTexture = 0
    private var accumulatorTexture = 0
    private var currentAccumulatorTexture = 0
    private var superResolutionAccumulatorTexture = 0
    private var currentSuperResolutionAccumulatorTexture = 0
    private var hdrZeroTexture = 0
    private var hdrHighTexture = 0
    private var hdrLowTexture = 0
    private var outputTexture = 0
    private var readbackTexture = 0

    private var gridWidth = 0
    private var gridHeight = 0
    private var renderTargetAttachmentCount = 0
    private val rejectionGeometry by lazy {
        mgcSpatialRejectionGeometry(width, height, REJECTION_FILTER_DOWNSAMPLE)
    }
    private val pixelDifferenceKernel by lazy {
        gaussianKernel(PIXEL_DIFFERENCE_KERNEL_SIZE, PIXEL_DIFFERENCE_SMOOTH_SIGMA)
    }
    private val guideWidth get() = rejectionGeometry.guideWidth
    private val guideHeight get() = rejectionGeometry.guideHeight
    private val mergeWeightWidth get() = rejectionGeometry.mergeWeightWidth
    private val mergeWeightHeight get() = rejectionGeometry.mergeWeightHeight
    private val rejectionFilterWidth get() = rejectionGeometry.filterWidth
    private val rejectionFilterHeight get() = rejectionGeometry.filterHeight
    private val renderOutputWidth = outputWidth
    private val renderOutputHeight = outputHeight
    private val normalizedRotation = normalizeRotation(rotation)
    private val cpuRotateReadback = normalizedRotation == 90 || normalizedRotation == 270
    private val gpuOutputWidth = if (cpuRotateReadback) renderOutputHeight else renderOutputWidth
    private val gpuOutputHeight = if (cpuRotateReadback) renderOutputWidth else renderOutputHeight
    private val highPrecisionInput = inputFormat == ImageFormat.YCBCR_P010
    private val superResolutionEnabled = enableSuperResolution
    private val superResolutionScale = if (superResolutionEnabled) SUPER_RESOLUTION_SCALE else 1.0f
    private val lumaInternalFormat = if (highPrecisionInput) GLES30.GL_R16F else GLES30.GL_R8
    private val chromaInternalFormat = if (highPrecisionInput) GLES30.GL_RG16F else GLES30.GL_RG8
    private val chromaWidth = (width + 1) / 2
    private val chromaHeight = (height + 1) / 2

    fun process(images: List<SafeImage>): Bitmap? {
        if (images.isEmpty() || width <= 0 || height <= 0 || outputWidth <= 0 || outputHeight <= 0) {
            return null
        }
        if (!supportsImageFormat(inputFormat)) {
            PLog.w(TAG, "Unsupported GLES YUV stack format: $inputFormat")
            return null
        }
        if (images.any { it.format != inputFormat }) {
            PLog.w(TAG, "Mixed YUV formats in one stack are not supported")
            return null
        }
        if (images.any { it.width != width || it.height != height }) {
            PLog.w(TAG, "Mixed YUV frame sizes in one stack are not supported")
            return null
        }

        val startTime = System.currentTimeMillis()
        val originalThreadPriority = GlesGpuScheduler.lowerCurrentThreadPriority(TAG)
        try {
            initEgl()
            ensureGles31()
            validateOutputTextureLimits()
            initPrograms()
            initResources()
            RawStackRuntimeDebug.d(TAG) {
                "GLES stack format=${formatName(inputFormat)} " +
                    "internal=${if (highPrecisionInput) "R16F/RG16F" else "R8/RG8"} " +
                    "spatialGuide=${guideWidth}x$guideHeight flowGrid=${gridWidth}x${gridHeight} " +
                    "sr=${superResolutionEnabled} srScale=${superResolutionScale.formatScale()}"
            }

            if (!uploadImagePlanes(images.first(), refY, refCbCr, refYStaging, refCbCrStaging, "reference")) {
                return null
            }

            val refPyramid = createPyramid()
            val curPyramid = createPyramid()
            buildPyramid(refY, refPyramid, 1.0f)
            renderGuide(refY, refCbCr, referenceGuideTexture, 1.0f)
            val referenceAlignmentProducts = buildReferenceAlignmentProducts(refPyramid)
            clearAccumulator()
            accumulateFrame(refY, refCbCr, isReference = true, currentToReferenceScale = 1.0f)
            if (superResolutionEnabled) {
                clearSuperResolutionAccumulator()
                accumulateSuperResolutionFrame(
                    refY,
                    refCbCr,
                    isReference = true,
                    currentToReferenceScale = 1.0f,
                )
            }
            GlesGpuScheduler.yieldToUiRenderer()

            for (index in 1 until images.size) {
                if (!uploadImagePlanes(images[index], curY, curCbCr, curYStaging, curCbCrStaging, "frame $index")) {
                    PLog.w(TAG, "Failed to upload frame $index YUV planes")
                    return null
                }
                prepareSpatialTemporalFrame(
                    referencePyramid = refPyramid,
                    currentPyramid = curPyramid,
                    referenceAlignmentProducts = referenceAlignmentProducts,
                    currentToReferenceScale = 1.0f,
                )
                accumulateFrame(curY, curCbCr, isReference = false, currentToReferenceScale = 1.0f)
                if (superResolutionEnabled) {
                    accumulateSuperResolutionFrame(
                        curY,
                        curCbCr,
                        isReference = false,
                        currentToReferenceScale = 1.0f,
                    )
                }
                GlesGpuScheduler.yieldToUiRenderer()
            }

            if (superResolutionEnabled) {
                normalizeSuperResolutionOutput()
            } else {
                normalizeOutput()
            }
            GlesGpuScheduler.yieldToUiRenderer()
            val bitmap = readOutputBitmap() ?: return null
            RawStackRuntimeDebug.i(TAG) {
                "GLES YUV stacking completed in ${System.currentTimeMillis() - startTime}ms"
            }
            return bitmap
        } catch (e: Exception) {
            PLog.e(TAG, "GLES YUV stacking failed", e)
            return null
        } finally {
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, TAG)
        }
    }

    fun processHdr(
        frames: List<HdrInputFrame>,
        exposureProducts: FloatArray?,
    ): Bitmap? {
        if (!validateHdrInputFrames(frames)) {
            return null
        }

        val originalThreadPriority = GlesGpuScheduler.lowerCurrentThreadPriority(TAG)
        try {
            initEgl()
            ensureGles31()
            validateOutputTextureLimits()
            initPrograms()
            initHdrPrograms()
            initResources()
            ensureHdrFusionTextures()

            val referenceIndex = frames.indexOfFirst { it.role == HdrFrameRole.ZERO_EV }
            val referenceFrame = frames[referenceIndex]
            val referenceExposureProduct = validExposureProduct(referenceFrame.exposureProduct)
            var hasHighFrame = false
            var hasLowFrame = false

            if (!uploadImagePlanes(referenceFrame.image, refY, refCbCr, refYStaging, refCbCrStaging, "HDR reference")) {
                return null
            }

            val refPyramid = createPyramid()
            val curPyramid = createPyramid()
            buildPyramid(refY, refPyramid, 1.0f)
            renderGuide(refY, refCbCr, referenceGuideTexture, 1.0f)
            val referenceAlignmentProducts = buildReferenceAlignmentProducts(refPyramid)
            clearAccumulator()
            accumulateFrame(refY, refCbCr, isReference = true, currentToReferenceScale = 1.0f)
            GlesGpuScheduler.yieldToUiRenderer()

            for ((index, frame) in frames.withIndex()) {
                if (index == referenceIndex) {
                    continue
                }
                if (!uploadImagePlanes(frame.image, curY, curCbCr, curYStaging, curCbCrStaging, "HDR frame $index")) {
                    PLog.w(TAG, "Failed to upload HDR frame $index YUV planes")
                    return null
                }
                val currentToReferenceScale = currentToReferenceExposureScale(
                    referenceExposureProduct = referenceExposureProduct,
                    currentExposureProduct = frame.exposureProduct,
                )

                when (frame.role) {
                    HdrFrameRole.ZERO_EV -> {
                        prepareSpatialTemporalFrame(
                            referencePyramid = refPyramid,
                            currentPyramid = curPyramid,
                            referenceAlignmentProducts = referenceAlignmentProducts,
                            currentToReferenceScale = currentToReferenceScale,
                        )
                        accumulateFrame(
                            curY,
                            curCbCr,
                            isReference = false,
                            currentToReferenceScale = currentToReferenceScale,
                        )
                    }
                    HdrFrameRole.HIGH_EV -> {
                        renderHdrSideFrameToTexture(
                            yTexture = curY,
                            cbCrTexture = curCbCr,
                            targetTexture = hdrHighTexture,
                            label = "renderHdrHighTexture",
                        )
                        hasHighFrame = true
                    }
                    HdrFrameRole.LOW_EV -> {
                        renderHdrSideFrameToTexture(
                            yTexture = curY,
                            cbCrTexture = curCbCr,
                            targetTexture = hdrLowTexture,
                            label = "renderHdrLowTexture",
                        )
                        hasLowFrame = true
                    }
                }
                GlesGpuScheduler.yieldToUiRenderer()
            }

            if (!hasHighFrame || !hasLowFrame) {
                PLog.w(TAG, "GLES HDR YUV stack missing side frames high=$hasHighFrame low=$hasLowFrame")
                return null
            }
            renderAccumulatorToTexture(
                accumulatorTexture = currentAccumulatorTexture,
                targetTexture = hdrZeroTexture,
                applyDenoise = false,
                label = "renderHdrZeroTexture",
            )
            renderMertensFusionToOutput(
                inputTextures = intArrayOf(hdrZeroTexture, hdrHighTexture, hdrLowTexture),
                exposureProducts = exposureProducts,
                enableDeghostMask = true,
            )
            GlesGpuScheduler.yieldToUiRenderer()
            val result = readOutputBitmap() ?: return null
            return result
        } catch (e: Exception) {
            PLog.e(TAG, "GLES HDR YUV stacking failed", e)
            return null
        } finally {
            release()
            GlesGpuScheduler.restoreCurrentThreadPriority(originalThreadPriority, TAG)
        }
    }

    private fun validateHdrInputFrames(frames: List<HdrInputFrame>): Boolean {
        if (frames.size < 3 || width <= 0 || height <= 0 || outputWidth <= 0 || outputHeight <= 0) {
            return false
        }
        if (frames.count { it.role == HdrFrameRole.ZERO_EV } < 1 ||
            frames.count { it.role == HdrFrameRole.HIGH_EV } != 1 ||
            frames.count { it.role == HdrFrameRole.LOW_EV } != 1
        ) {
            PLog.w(TAG, "HDR YUV stack requires zero/high/low frames, got roles=${frames.map { it.role }}")
            return false
        }
        val images = frames.map { it.image }
        if (!supportsImageFormat(inputFormat)) {
            PLog.w(TAG, "Unsupported GLES HDR YUV stack format: $inputFormat")
            return false
        }
        if (images.any { it.format != inputFormat }) {
            PLog.w(TAG, "Mixed HDR YUV formats in one stack are not supported")
            return false
        }
        if (images.any { it.width != width || it.height != height }) {
            PLog.w(TAG, "Mixed HDR YUV frame sizes in one stack are not supported")
            return false
        }
        return true
    }

    private fun validExposureProduct(exposureProduct: Float): Float {
        return exposureProduct
            .takeIf { it.isFinite() && it > 0f }
            ?: 1.0f
    }

    private fun currentToReferenceExposureScale(
        referenceExposureProduct: Float,
        currentExposureProduct: Float,
    ): Float {
        val reference = validExposureProduct(referenceExposureProduct)
        val current = validExposureProduct(currentExposureProduct)
        return (reference / current).coerceIn(1.0f / 32.0f, 32.0f)
    }

    private fun initEgl() {
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        if (eglDisplay == EGL14.EGL_NO_DISPLAY) {
            throw IllegalStateException("eglGetDisplay failed")
        }

        val version = IntArray(2)
        if (!EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
            throw IllegalStateException("eglInitialize failed: ${EGL14.eglGetError()}")
        }

        val config = chooseConfig(EGL_OPENGL_ES3_BIT_KHR) ?: chooseConfig(EGL14.EGL_OPENGL_ES2_BIT)
            ?: throw IllegalStateException("No EGL config for GLES")

        eglContext = GlesGpuScheduler.createBackgroundContext(eglDisplay, config, TAG)
        if (eglContext == EGL14.EGL_NO_CONTEXT) {
            throw IllegalStateException("eglCreateContext failed: ${EGL14.eglGetError()}")
        }

        val surfaceAttribs = intArrayOf(
            EGL14.EGL_WIDTH, 1,
            EGL14.EGL_HEIGHT, 1,
            EGL14.EGL_NONE,
        )
        eglSurface = EGL14.eglCreatePbufferSurface(eglDisplay, config, surfaceAttribs, 0)
        if (eglSurface == EGL14.EGL_NO_SURFACE) {
            throw IllegalStateException("eglCreatePbufferSurface failed: ${EGL14.eglGetError()}")
        }

        if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            throw IllegalStateException("eglMakeCurrent failed: ${EGL14.eglGetError()}")
        }
    }

    private fun chooseConfig(renderableType: Int): EGLConfig? {
        val attribs = intArrayOf(
            EGL14.EGL_RED_SIZE, 8,
            EGL14.EGL_GREEN_SIZE, 8,
            EGL14.EGL_BLUE_SIZE, 8,
            EGL14.EGL_ALPHA_SIZE, 8,
            EGL14.EGL_RENDERABLE_TYPE, renderableType,
            EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE,
        )
        val configs = arrayOfNulls<EGLConfig>(1)
        val count = IntArray(1)
        return if (EGL14.eglChooseConfig(eglDisplay, attribs, 0, configs, 0, configs.size, count, 0) &&
            count[0] > 0
        ) {
            configs[0]
        } else {
            null
        }
    }

    private fun ensureGles31() {
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        if (!version.contains("OpenGL ES 3.1") && !version.contains("OpenGL ES 3.2")) {
            throw IllegalStateException("GLES compute requires OpenGL ES 3.1+, got: $version")
        }
    }

    private fun initPrograms() {
        alignmentInputProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesYuvSpatialShaders.alignmentInput,
            "yuv_spatial_alignment_input",
        )
        guideProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesYuvSpatialShaders.guide,
            "yuv_spatial_guide",
        )
        downsampleProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.grayDownsample,
            "yuv_spatial_gray_downsample",
        )
        downsample4Program = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.grayDownsample4,
            "yuv_spatial_gray_downsample_4x",
        )
        alignmentGradientProductsProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.alignmentGradientProducts,
            "yuv_spatial_alignment_products",
        )
        upsampleAlignmentProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.upsampleAlignment,
            "yuv_spatial_upsample_alignment",
        )
        blockLucasKanadeProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.blockLucasKanade,
            "yuv_spatial_block_lk",
        )
        convertAlignmentProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.convertAlignment,
            "yuv_spatial_convert_alignment",
        )
        rejectionProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.rejection,
            "yuv_spatial_rejection",
        )
        rejectionPixelDifferenceDownsampleProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.rejectionPixelDifferenceDownsample,
            "yuv_spatial_pixel_difference_downsample",
        )
        clippedGaussianHorizontalProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.clippedGaussianHorizontal,
            "yuv_spatial_pixel_difference_blur_x",
        )
        clippedGaussianVerticalProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.clippedGaussianVertical,
            "yuv_spatial_pixel_difference_blur_y",
        )
        rejectionFilterDownsampleProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.rejectionFilterDownsample,
            "yuv_spatial_rejection_filter_downsample",
        )
        rejectionFilterProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.rejectionFilter,
            "yuv_spatial_rejection_filter",
        )
        rejectionPostprocessProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.rejectionPostprocess,
            "yuv_spatial_rejection_postprocess",
        )
        dilationProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesMgcRawSpatialShaders.dilateRejection,
            "yuv_spatial_rejection_dilation",
        )
        accumulateProgram = linkGraphicsProgram(
            FULLSCREEN_VERTEX_SHADER,
            GlesYuvSpatialShaders.merge,
            "yuv_spatial_merge",
        )
        normalizeProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, NORMALIZE_FRAGMENT_SHADER, "normalize")
        readbackResolveProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, READBACK_RESOLVE_FRAGMENT_SHADER, "readback_resolve")
        if (superResolutionEnabled) {
            superResolutionAccumulateProgram = linkGraphicsProgram(
                FULLSCREEN_VERTEX_SHADER,
                GlesYuvSpatialShaders.superResolutionMerge,
                "yuv_spatial_super_resolution_merge",
            )
            superResolutionNormalizeProgram = linkGraphicsProgram(
                FULLSCREEN_VERTEX_SHADER,
                GlesYuvSpatialShaders.superResolutionNormalize,
                "yuv_spatial_super_resolution_normalize",
            )
        }
        p010LumaProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, P010_LUMA_FRAGMENT_SHADER, "p010_luma")
        p010ChromaProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, P010_CHROMA_FRAGMENT_SHADER, "p010_chroma")
        planarChroma8Program = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, PLANAR_CHROMA_8_FRAGMENT_SHADER, "planar_chroma_8")
        planarChroma16Program = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, PLANAR_CHROMA_16_FRAGMENT_SHADER, "planar_chroma_16")
    }

    private fun validateOutputTextureLimits() {
        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        val maxSize = maxTextureSize[0].coerceAtLeast(1)
        if (gpuOutputWidth > maxSize || gpuOutputHeight > maxSize ||
            renderOutputWidth > maxSize || renderOutputHeight > maxSize
        ) {
            throw IllegalStateException(
                "YUV GLES output ${renderOutputWidth}x$renderOutputHeight " +
                    "(gpu=${gpuOutputWidth}x$gpuOutputHeight) exceeds GL_MAX_TEXTURE_SIZE=$maxSize",
            )
        }
        if (superResolutionEnabled && RawStackRuntimeDebug.enabled) {
            val accumulatorBytes = gpuOutputWidth.toLong() * gpuOutputHeight.toLong() * 8L
            val baseAccumulatorBytes = width.toLong() * height.toLong() * 8L
            val outputBytes = renderOutputWidth.toLong() * renderOutputHeight.toLong() * 4L
            RawStackRuntimeDebug.d(TAG) {
                "YUV MFSR resources out=${renderOutputWidth}x$renderOutputHeight maxTex=$maxSize " +
                    "srAccumulator=${accumulatorBytes.mibString()}x2 " +
                    "baseAccumulator=${baseAccumulatorBytes.mibString()}x2 " +
                    "output=${outputBytes.mibString()}"
            }
        }
    }

    private fun initHdrPrograms() {
        if (alignedFrameOutputProgram != 0) return
        alignedFrameOutputProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, ALIGNED_FRAME_OUTPUT_FRAGMENT_SHADER, "aligned_frame_output")
        mertensWeightProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, MERTENS_WEIGHT_FRAGMENT_SHADER, "mertens_weight")
        mertensNormalizeProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, MERTENS_NORMALIZE_FRAGMENT_SHADER, "mertens_normalize")
        mertensPyrDownProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, MERTENS_PYR_DOWN_FRAGMENT_SHADER, "mertens_pyr_down")
        mertensLaplacianProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, MERTENS_LAPLACIAN_FRAGMENT_SHADER, "mertens_laplacian")
        mertensCombineProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, MERTENS_COMBINE_FRAGMENT_SHADER, "mertens_combine")
        mertensReconstructProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, MERTENS_RECONSTRUCT_FRAGMENT_SHADER, "mertens_reconstruct")
        mertensCopyProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, MERTENS_COPY_FRAGMENT_SHADER, "mertens_copy")
    }

    private fun initResources() {
        gridWidth = ceilDiv(width, MERGE_TILE_SIZE)
        gridHeight = ceilDiv(height, MERGE_TILE_SIZE)

        refY = createTexture2D(width, height, lumaInternalFormat, GLES30.GL_LINEAR)
        refCbCr = createTexture2D(chromaWidth, chromaHeight, chromaInternalFormat, GLES30.GL_LINEAR)
        curY = createTexture2D(width, height, lumaInternalFormat, GLES30.GL_LINEAR)
        curCbCr = createTexture2D(chromaWidth, chromaHeight, chromaInternalFormat, GLES30.GL_LINEAR)
        if (highPrecisionInput) {
            refYStaging = createTexture2D(width, height, GLES30.GL_R16UI, GLES30.GL_NEAREST)
            refCbCrStaging = createTexture2D(chromaWidth, chromaHeight, GLES30.GL_RG16UI, GLES30.GL_NEAREST)
            curYStaging = createTexture2D(width, height, GLES30.GL_R16UI, GLES30.GL_NEAREST)
            curCbCrStaging = createTexture2D(chromaWidth, chromaHeight, GLES30.GL_RG16UI, GLES30.GL_NEAREST)
        }

        referenceGuideTexture = createTexture2D(guideWidth, guideHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        currentGuideTexture = createTexture2D(guideWidth, guideHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        zeroFlowTexture = createFloatTexture(
            1,
            1,
            GLES30.GL_RGBA16F,
            GLES30.GL_RGBA,
            floatArrayOf(0f, 0f, 0f, 0f),
            GLES30.GL_NEAREST,
        )
        identityWeightTexture = createFloatTexture(
            1,
            1,
            GLES30.GL_R16F,
            GLES30.GL_RED,
            floatArrayOf(1f),
            GLES30.GL_NEAREST,
        )
        zeroUnblockerTexture = createFloatTexture(
            1,
            1,
            GLES30.GL_R16F,
            GLES30.GL_RED,
            floatArrayOf(0f),
            GLES30.GL_NEAREST,
        )
        flowTexture = createTexture2D(guideWidth, guideHeight, GLES30.GL_RGBA16F, GLES30.GL_NEAREST)
        rawReverseWeightTexture = createTexture2D(guideWidth, guideHeight, GLES30.GL_R8, GLES30.GL_LINEAR)
        rawPixelDifferenceTexture = createTexture2D(guideWidth, guideHeight, GLES30.GL_R8, GLES30.GL_NEAREST)
        initialWeightTexture = createTexture2D(mergeWeightWidth, mergeWeightHeight, GLES30.GL_R8, GLES30.GL_LINEAR)
        pixelDifferenceTexture = createTexture2D(mergeWeightWidth, mergeWeightHeight, GLES30.GL_R8, GLES30.GL_NEAREST)
        pixelDifferenceHorizontalTexture = createTexture2D(mergeWeightWidth, mergeWeightHeight, GLES30.GL_R32F, GLES30.GL_NEAREST)
        smoothedPixelDifferenceTexture = createTexture2D(mergeWeightWidth, mergeWeightHeight, GLES30.GL_R8, GLES30.GL_NEAREST)
        downsampledLumaTexture = createTexture2D(rejectionFilterWidth, rejectionFilterHeight, GLES30.GL_R32F, GLES30.GL_NEAREST)
        downsampledRejectionTexture = createTexture2D(rejectionFilterWidth, rejectionFilterHeight, GLES30.GL_R32F, GLES30.GL_NEAREST)
        filteredRejectionTexture = createTexture2D(rejectionFilterWidth, rejectionFilterHeight, GLES30.GL_R8, GLES30.GL_LINEAR)
        frameWeightTexture = createTexture2D(mergeWeightWidth, mergeWeightHeight, GLES30.GL_R8, GLES30.GL_LINEAR)
        accumulatorTexture = createTexture2D(width, height, GLES30.GL_RGBA16F, GLES30.GL_NEAREST)
        currentAccumulatorTexture = accumulatorTexture
        if (superResolutionEnabled) {
            superResolutionAccumulatorTexture = createTexture2D(gpuOutputWidth, gpuOutputHeight, GLES30.GL_RGBA16F, GLES30.GL_NEAREST)
            currentSuperResolutionAccumulatorTexture = superResolutionAccumulatorTexture
        }
        outputTexture = createTexture2D(gpuOutputWidth, gpuOutputHeight, GLES30.GL_RGBA8, GLES30.GL_NEAREST)
        if (cpuRotateReadback) {
            readbackTexture = createTexture2D(renderOutputWidth, renderOutputHeight, GLES30.GL_RGBA8, GLES30.GL_NEAREST)
        }

        renderFbo = createFramebuffer()
        readbackFbo = createFramebuffer()
    }

    private fun ensureHdrFusionTextures() {
        if (hdrZeroTexture != 0 && hdrHighTexture != 0 && hdrLowTexture != 0) return
        hdrZeroTexture = createTexture2D(gpuOutputWidth, gpuOutputHeight, GLES30.GL_RGBA8, GLES30.GL_LINEAR)
        hdrHighTexture = createTexture2D(gpuOutputWidth, gpuOutputHeight, GLES30.GL_RGBA8, GLES30.GL_LINEAR)
        hdrLowTexture = createTexture2D(gpuOutputWidth, gpuOutputHeight, GLES30.GL_RGBA8, GLES30.GL_LINEAR)
    }

    private fun createPyramid(): List<TextureLevel> {
        val levels = ArrayList<TextureLevel>(ALIGN_PYRAMID_DOWNSAMPLE_STEPS.size + 1)
        var levelWidth = guideWidth
        var levelHeight = guideHeight
        var scaleToGuidePixels = 1
        levels += TextureLevel(
            createTexture2D(levelWidth, levelHeight, GLES30.GL_R16I, GLES30.GL_NEAREST),
            levelWidth,
            levelHeight,
            scaleToGuidePixels.toFloat(),
        )
        for (step in ALIGN_PYRAMID_DOWNSAMPLE_STEPS) {
            scaleToGuidePixels *= step
            levelWidth = ceilDiv(guideWidth, scaleToGuidePixels) + 1
            levelHeight = ceilDiv(guideHeight, scaleToGuidePixels) + 1
            levels += TextureLevel(
                createTexture2D(levelWidth, levelHeight, GLES30.GL_R16I, GLES30.GL_NEAREST),
                levelWidth,
                levelHeight,
                scaleToGuidePixels.toFloat(),
            )
        }
        return levels
    }

    private fun uploadImagePlanes(
        image: SafeImage,
        yTexture: Int,
        cbCrTexture: Int,
        yStagingTexture: Int,
        cbCrStagingTexture: Int,
        label: String,
    ): Boolean {
        val planes = image.planes
        if (planes.size < 3) {
            PLog.w(TAG, "$label has ${planes.size} planes")
            return false
        }
        if (label == "reference") {
            RawStackRuntimeDebug.d(TAG) {
                "GLES plane upload yRow=${planes[0].rowStride} cbRow=${planes[1].rowStride} " +
                    "cbPixel=${planes[1].pixelStride} chroma=${chromaWidth}x${chromaHeight}"
            }
        }

        return if (highPrecisionInput) {
            uploadP010Planes(image, yTexture, cbCrTexture, yStagingTexture, cbCrStagingTexture, label)
        } else {
            uploadYuv420Planes(image, yTexture, cbCrTexture, label)
        }
    }

    private fun uploadYuv420Planes(
        image: SafeImage,
        yTexture: Int,
        cbCrTexture: Int,
        label: String,
    ): Boolean {
        val planes = image.planes
        val yPlane = planes[0]
        val cbPlane = planes[1]
        val crPlane = planes[2]

        if (!validateDirectPlaneUpload(yPlane, width, height, 1, "$label Y")) {
            return false
        }
        uploadTextureData(
            texture = yTexture,
            width = width,
            height = height,
            format = GLES30.GL_RED,
            type = GLES30.GL_UNSIGNED_BYTE,
            rowLength = yPlane.rowStride,
            buffer = yPlane.buffer,
            label = "$label Y",
        )

        return when (cbPlane.pixelStride) {
            1, 2 -> uploadStridedChromaPlanes(
                cbPlane = cbPlane,
                crPlane = crPlane,
                outputTexture = cbCrTexture,
                sampleBytes = 1,
                internalFormat = GLES30.GL_R8,
                format = GLES30.GL_RED,
                type = GLES30.GL_UNSIGNED_BYTE,
                label = label,
            )
            else -> {
                PLog.w(TAG, "$label unsupported YUV_420_888 chroma pixelStride=${cbPlane.pixelStride}")
                false
            }
        }
    }

    private fun uploadP010Planes(
        image: SafeImage,
        yTexture: Int,
        cbCrTexture: Int,
        yStagingTexture: Int,
        cbCrStagingTexture: Int,
        label: String,
    ): Boolean {
        val planes = image.planes
        val yPlane = planes[0]
        val cbPlane = planes[1]
        val crPlane = planes[2]

        if (yStagingTexture == 0 || cbCrStagingTexture == 0) {
            PLog.w(TAG, "$label missing P010 staging textures")
            return false
        }
        if (!validateDirectPlaneUpload(yPlane, width, height, 2, "$label P010 Y")) {
            return false
        }

        uploadTextureData(
            texture = yStagingTexture,
            width = width,
            height = height,
            format = GLES30.GL_RED_INTEGER,
            type = GLES30.GL_UNSIGNED_SHORT,
            rowLength = max(1, yPlane.rowStride / 2),
            buffer = yPlane.buffer,
            label = "$label P010 Y",
        )
        convertP010Luma(yStagingTexture, yTexture, label)

        return when (cbPlane.pixelStride) {
            4 -> {
                if (!canUploadInterleavedChroma(cbPlane, sampleBytes = 2, channelCount = 2, "$label P010 CbCr")) {
                    return uploadStridedChromaPlanes(
                        cbPlane = cbPlane,
                        crPlane = crPlane,
                        outputTexture = cbCrTexture,
                        sampleBytes = 2,
                        internalFormat = GLES30.GL_R16UI,
                        format = GLES30.GL_RED_INTEGER,
                        type = GLES30.GL_UNSIGNED_SHORT,
                        label = "$label P010",
                    )
                }
                uploadTextureData(
                    texture = cbCrStagingTexture,
                    width = chromaWidth,
                    height = chromaHeight,
                    format = GLES30.GL_RG_INTEGER,
                    type = GLES30.GL_UNSIGNED_SHORT,
                    rowLength = max(1, cbPlane.rowStride / 4),
                    buffer = cbPlane.buffer,
                    label = "$label P010 CbCr",
                )
                convertP010Chroma(cbCrStagingTexture, cbCrTexture, label)
                true
            }
            2 -> uploadStridedChromaPlanes(
                cbPlane = cbPlane,
                crPlane = crPlane,
                outputTexture = cbCrTexture,
                sampleBytes = 2,
                internalFormat = GLES30.GL_R16UI,
                format = GLES30.GL_RED_INTEGER,
                type = GLES30.GL_UNSIGNED_SHORT,
                label = "$label P010",
            )
            else -> {
                PLog.w(TAG, "$label unsupported P010 chroma pixelStride=${cbPlane.pixelStride}")
                false
            }
        }
    }

    private fun validateDirectPlaneUpload(
        plane: Image.Plane,
        planeWidth: Int,
        planeHeight: Int,
        sampleBytes: Int,
        label: String,
    ): Boolean {
        if (plane.pixelStride != sampleBytes) {
            PLog.w(TAG, "$label unsupported pixelStride=${plane.pixelStride}, expected=$sampleBytes")
            return false
        }
        return validatePlaneBuffer(plane, planeWidth, planeHeight, sampleBytes, plane.pixelStride, label)
    }

    private fun canUploadInterleavedChroma(
        plane: Image.Plane,
        sampleBytes: Int,
        channelCount: Int,
        label: String,
    ): Boolean {
        val interleavedPixelBytes = sampleBytes * channelCount
        if (plane.rowStride < chromaWidth * interleavedPixelBytes ||
            plane.rowStride % interleavedPixelBytes != 0
        ) {
            PLog.w(
                TAG,
                "$label cannot use interleaved upload row=${plane.rowStride} pixel=${plane.pixelStride}"
            )
            return false
        }
        val requiredBytes = (chromaHeight - 1).toLong() * plane.rowStride +
            chromaWidth.toLong() * interleavedPixelBytes
        val availableBytes = plane.buffer.duplicate().apply { position(0) }.limit().toLong()
        if (requiredBytes > availableBytes) {
            PLog.w(
                TAG,
                "$label interleaved buffer too small required=$requiredBytes available=$availableBytes"
            )
            return false
        }
        return true
    }

    private fun validatePlaneBuffer(
        plane: Image.Plane,
        planeWidth: Int,
        planeHeight: Int,
        sampleBytes: Int,
        pixelStride: Int,
        label: String,
    ): Boolean {
        if (planeWidth <= 0 || planeHeight <= 0 || sampleBytes <= 0) {
            PLog.w(TAG, "$label invalid plane dimensions ${planeWidth}x$planeHeight sampleBytes=$sampleBytes")
            return false
        }
        if (plane.rowStride <= 0 || pixelStride < sampleBytes) {
            PLog.w(TAG, "$label invalid stride row=${plane.rowStride} pixel=$pixelStride sampleBytes=$sampleBytes")
            return false
        }
        val requiredBytes = (planeHeight - 1).toLong() * plane.rowStride +
            (planeWidth - 1).toLong() * pixelStride +
            sampleBytes.toLong()
        val availableBytes = plane.buffer.duplicate().apply { position(0) }.limit().toLong()
        if (requiredBytes > availableBytes) {
            PLog.w(
                TAG,
                "$label plane buffer too small required=$requiredBytes available=$availableBytes " +
                    "row=${plane.rowStride} pixel=$pixelStride size=${planeWidth}x$planeHeight"
            )
            return false
        }
        return true
    }

    private fun uploadStridedChromaPlanes(
        cbPlane: Image.Plane,
        crPlane: Image.Plane,
        outputTexture: Int,
        sampleBytes: Int,
        internalFormat: Int,
        format: Int,
        type: Int,
        label: String,
    ): Boolean {
        if (cbPlane.pixelStride % sampleBytes != 0 || crPlane.pixelStride % sampleBytes != 0) {
            PLog.w(
                TAG,
                "$label unsupported chroma pixel stride cb=${cbPlane.pixelStride} cr=${crPlane.pixelStride} sampleBytes=$sampleBytes"
            )
            return false
        }
        val cbStep = cbPlane.pixelStride / sampleBytes
        val crStep = crPlane.pixelStride / sampleBytes
        val cbUploadWidth = (chromaWidth - 1) * cbStep + 1
        val crUploadWidth = (chromaWidth - 1) * crStep + 1
        if (!validatePlaneRowsUpload(cbPlane, cbUploadWidth, chromaHeight, sampleBytes, "$label Cb")) {
            return false
        }
        if (!validatePlaneRowsUpload(crPlane, crUploadWidth, chromaHeight, sampleBytes, "$label Cr")) {
            return false
        }
        if (!ensurePlanarStaging(internalFormat, cbUploadWidth, crUploadWidth, chromaHeight)) {
            return false
        }

        uploadTextureData(
            texture = planarUStaging,
            width = cbUploadWidth,
            height = chromaHeight,
            format = format,
            type = type,
            rowLength = max(1, cbPlane.rowStride / sampleBytes),
            buffer = cbPlane.buffer,
            label = "$label Cb",
        )
        uploadTextureData(
            texture = planarVStaging,
            width = crUploadWidth,
            height = chromaHeight,
            format = format,
            type = type,
            rowLength = max(1, crPlane.rowStride / sampleBytes),
            buffer = crPlane.buffer,
            label = "$label Cr",
        )
        if (sampleBytes == 1) {
            convertPlanarChroma8(outputTexture, label, cbStep, crStep, cbUploadWidth, crUploadWidth)
        } else {
            convertPlanarChroma16(outputTexture, label, cbStep, crStep, cbUploadWidth, crUploadWidth)
        }
        return true
    }

    private fun validatePlaneRowsUpload(
        plane: Image.Plane,
        uploadWidth: Int,
        uploadHeight: Int,
        sampleBytes: Int,
        label: String,
    ): Boolean {
        if (plane.rowStride <= 0 || plane.rowStride % sampleBytes != 0 || uploadWidth <= 0 || uploadHeight <= 0) {
            PLog.w(TAG, "$label invalid upload row=${plane.rowStride} width=$uploadWidth height=$uploadHeight")
            return false
        }
        val rowLength = plane.rowStride / sampleBytes
        if (uploadWidth > rowLength) {
            PLog.w(TAG, "$label upload width=$uploadWidth exceeds rowLength=$rowLength")
            return false
        }
        val requiredBytes = (uploadHeight - 1).toLong() * plane.rowStride +
            uploadWidth.toLong() * sampleBytes
        val availableBytes = plane.buffer.duplicate().apply { position(0) }.limit().toLong()
        if (requiredBytes > availableBytes) {
            PLog.w(TAG, "$label upload buffer too small required=$requiredBytes available=$availableBytes")
            return false
        }
        return true
    }

    private fun ensurePlanarStaging(
        internalFormat: Int,
        cbTextureWidth: Int,
        crTextureWidth: Int,
        textureHeight: Int,
    ): Boolean {
        if (planarUStaging != 0 && planarVStaging != 0) {
            val matches = planarStagingInternalFormat == internalFormat &&
                planarUStagingWidth == cbTextureWidth &&
                planarVStagingWidth == crTextureWidth &&
                planarStagingHeight == textureHeight
            if (!matches) {
                PLog.w(TAG, "Changing GLES chroma staging layout in one stack is not supported")
            }
            return matches
        }
        planarUStaging = createTexture2D(cbTextureWidth, textureHeight, internalFormat, GLES30.GL_NEAREST)
        planarVStaging = createTexture2D(crTextureWidth, textureHeight, internalFormat, GLES30.GL_NEAREST)
        planarUStagingWidth = cbTextureWidth
        planarVStagingWidth = crTextureWidth
        planarStagingHeight = textureHeight
        planarStagingInternalFormat = internalFormat
        return true
    }

    private fun uploadTextureData(
        texture: Int,
        width: Int,
        height: Int,
        format: Int,
        type: Int,
        rowLength: Int,
        buffer: ByteBuffer,
        label: String,
    ) {
        val uploadBuffer = buffer.duplicate()
        uploadBuffer.position(0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, rowLength)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            width,
            height,
            format,
            type,
            uploadBuffer,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("uploadTextureData $label")
    }

    private fun convertP010Luma(inputTexture: Int, outputTexture: Int, label: String) {
        bindFramebufferOutput(outputTexture, "convertP010Luma $label")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(p010LumaProgram)
        bindTexture(p010LumaProgram, "uInput", 0, inputTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(p010LumaProgram, "uSize"), width, height)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("convertP010Luma $label")
    }

    private fun convertP010Chroma(inputTexture: Int, outputTexture: Int, label: String) {
        bindFramebufferOutput(outputTexture, "convertP010Chroma $label")
        GLES30.glViewport(0, 0, chromaWidth, chromaHeight)
        GLES30.glUseProgram(p010ChromaProgram)
        bindTexture(p010ChromaProgram, "uInput", 0, inputTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(p010ChromaProgram, "uSize"), chromaWidth, chromaHeight)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("convertP010Chroma $label")
    }

    private fun convertPlanarChroma8(
        outputTexture: Int,
        label: String,
        cbStep: Int,
        crStep: Int,
        cbTextureWidth: Int,
        crTextureWidth: Int,
    ) {
        bindFramebufferOutput(outputTexture, "convertPlanarChroma8 $label")
        GLES30.glViewport(0, 0, chromaWidth, chromaHeight)
        GLES30.glUseProgram(planarChroma8Program)
        bindTexture(planarChroma8Program, "uCb", 0, planarUStaging)
        bindTexture(planarChroma8Program, "uCr", 1, planarVStaging)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(planarChroma8Program, "uCbSize"), cbTextureWidth, chromaHeight)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(planarChroma8Program, "uCrSize"), crTextureWidth, chromaHeight)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(planarChroma8Program, "uCbStep"), cbStep)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(planarChroma8Program, "uCrStep"), crStep)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("convertPlanarChroma8 $label")
    }

    private fun convertPlanarChroma16(
        outputTexture: Int,
        label: String,
        cbStep: Int,
        crStep: Int,
        cbTextureWidth: Int,
        crTextureWidth: Int,
    ) {
        bindFramebufferOutput(outputTexture, "convertPlanarChroma16 $label")
        GLES30.glViewport(0, 0, chromaWidth, chromaHeight)
        GLES30.glUseProgram(planarChroma16Program)
        bindTexture(planarChroma16Program, "uCb", 0, planarUStaging)
        bindTexture(planarChroma16Program, "uCr", 1, planarVStaging)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(planarChroma16Program, "uCbSize"), cbTextureWidth, chromaHeight)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(planarChroma16Program, "uCrSize"), crTextureWidth, chromaHeight)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(planarChroma16Program, "uCbStep"), cbStep)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(planarChroma16Program, "uCrStep"), crStep)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("convertPlanarChroma16 $label")
    }

    private fun buildPyramid(
        lumaTexture: Int,
        levels: List<TextureLevel>,
        currentToReferenceScale: Float,
    ) {
        val finest = levels.first()
        bindFramebufferOutput(finest.texture, "buildPyramid input")
        GLES30.glViewport(0, 0, finest.width, finest.height)
        GLES30.glUseProgram(alignmentInputProgram)
        bindTexture(alignmentInputProgram, "uLuma", 0, lumaTexture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(alignmentInputProgram, "uInputSize"),
            width,
            height,
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(alignmentInputProgram, "uGuideSize"),
            guideWidth,
            guideHeight,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(alignmentInputProgram, "uExposureScale"),
            currentToReferenceScale,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("buildPyramid input")

        for (index in 1 until levels.size) {
            val input = levels[index - 1]
            val output = levels[index]
            val step = ALIGN_PYRAMID_DOWNSAMPLE_STEPS[index - 1]
            val program = if (step == 4) downsample4Program else downsampleProgram
            bindFramebufferOutput(output.texture, "buildPyramid level $index")
            GLES30.glViewport(0, 0, output.width, output.height)
            GLES30.glUseProgram(program)
            bindTexture(program, "uInput", 0, input.texture)
            GLES30.glUniform2i(
                GLES30.glGetUniformLocation(program, "uInputSize"),
                input.width,
                input.height,
            )
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            finishFramebufferPass("buildPyramid level $index")
        }
    }

    private fun renderGuide(
        yTexture: Int,
        cbCrTexture: Int,
        outputTexture: Int,
        currentToReferenceScale: Float,
    ) {
        bindFramebufferOutput(outputTexture, "renderSpatialGuide")
        GLES30.glViewport(0, 0, guideWidth, guideHeight)
        GLES30.glUseProgram(guideProgram)
        bindTexture(guideProgram, "uLuma", 0, yTexture)
        bindTexture(guideProgram, "uChroma", 1, cbCrTexture)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(guideProgram, "uInputSize"), width, height)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(guideProgram, "uChromaSize"),
            chromaWidth,
            chromaHeight,
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(guideProgram, "uGuideSize"),
            guideWidth,
            guideHeight,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(guideProgram, "uExposureScale"),
            currentToReferenceScale,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(guideProgram, "uNoiseAlpha"),
            NOISE_ALPHA * currentToReferenceScale,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(guideProgram, "uNoiseBeta"),
            NOISE_BETA * currentToReferenceScale * currentToReferenceScale,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(guideProgram, "uGreenClippingPoint"),
            currentToReferenceScale * GUIDE_CLIPPING_POINT,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(guideProgram, "uIsP010"),
            if (highPrecisionInput) 1 else 0,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderSpatialGuide")
    }

    private fun bindFramebufferOutput(texture: Int, label: String) {
        bindFramebufferOutputs(intArrayOf(texture), label)
    }

    private fun bindFramebufferOutputs(textures: IntArray, label: String) {
        require(textures.isNotEmpty())
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        val drawBuffers = IntArray(textures.size)
        for (index in textures.indices) {
            val attachment = GLES30.GL_COLOR_ATTACHMENT0 + index
            drawBuffers[index] = attachment
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                attachment,
                GLES30.GL_TEXTURE_2D,
                textures[index],
                0,
            )
        }
        for (index in textures.size until renderTargetAttachmentCount) {
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0 + index,
                GLES30.GL_TEXTURE_2D,
                0,
                0,
            )
        }
        renderTargetAttachmentCount = textures.size
        GLES30.glDrawBuffers(drawBuffers.size, drawBuffers, 0)
        GLES30.glDisable(GLES30.GL_BLEND)
        checkFramebuffer(label)
    }

    private fun finishFramebufferPass(label: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError(label)
    }

    private fun clearAccumulator() {
        bindFramebufferOutput(accumulatorTexture, "clearAccumulator")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        finishFramebufferPass("clearAccumulator")
        currentAccumulatorTexture = accumulatorTexture
    }

    private fun prepareSpatialTemporalFrame(
        referencePyramid: List<TextureLevel>,
        currentPyramid: List<TextureLevel>,
        referenceAlignmentProducts: List<ReferenceAlignmentProducts>,
        currentToReferenceScale: Float = 1.0f,
    ) {
        buildPyramid(curY, currentPyramid, currentToReferenceScale)
        renderGuide(curY, curCbCr, currentGuideTexture, currentToReferenceScale)
        val alignment = alignPyramids(
            referencePyramid,
            currentPyramid,
            referenceAlignmentProducts,
        )
        mergeAlignmentTexture = alignment.texture
        renderConvertedAlignment(alignment)
        renderRejection(currentToReferenceScale, referencePyramid[1].texture)
    }

    private fun buildReferenceAlignmentProducts(
        reference: List<TextureLevel>,
    ): List<ReferenceAlignmentProducts> {
        check(reference.size == ALIGN_LEVEL_TILE_STRIDES.size)
        return reference.mapIndexed { levelIndex, level ->
            val tileSize = ALIGN_LEVEL_TILE_STRIDES[levelIndex]
            val normalize = levelIndex != 0
            val productGridWidth = alignmentGridWidth(level, tileSize)
            val productGridHeight = alignmentGridHeight(level, tileSize)
            val products0 = createTexture2D(
                productGridWidth,
                productGridHeight,
                GLES30.GL_RGBA32F,
                GLES30.GL_NEAREST,
            )
            val products1 = createTexture2D(
                productGridWidth,
                productGridHeight,
                GLES30.GL_R32F,
                GLES30.GL_NEAREST,
            )
            bindFramebufferOutputs(
                intArrayOf(products0, products1),
                "buildReferenceAlignmentProducts level $levelIndex",
            )
            GLES30.glViewport(0, 0, productGridWidth, productGridHeight)
            GLES30.glUseProgram(alignmentGradientProductsProgram)
            bindTexture(alignmentGradientProductsProgram, "uReference", 0, level.texture)
            GLES30.glUniform2i(
                GLES30.glGetUniformLocation(alignmentGradientProductsProgram, "uImageSize"),
                level.width,
                level.height,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(alignmentGradientProductsProgram, "uTileStride"),
                tileSize,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(alignmentGradientProductsProgram, "uTileSize"),
                tileSize,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(alignmentGradientProductsProgram, "uNormalize"),
                if (normalize) 1 else 0,
            )
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            finishFramebufferPass("buildReferenceAlignmentProducts level $levelIndex")
            ReferenceAlignmentProducts(
                referenceTexture = level.texture,
                gridWidth = productGridWidth,
                gridHeight = productGridHeight,
                tileStride = tileSize,
                tileSize = tileSize,
                normalize = normalize,
                products0 = products0,
                products1 = products1,
            )
        }
    }

    private fun alignPyramids(
        reference: List<TextureLevel>,
        current: List<TextureLevel>,
        referenceProducts: List<ReferenceAlignmentProducts>,
    ): Alignment {
        check(reference.size == current.size && reference.size == ALIGN_LEVEL_TILE_STRIDES.size)
        check(referenceProducts.size == reference.size)
        val coarseIndex = reference.lastIndex
        var alignment = renderLucasKanadeLevel(
            reference = reference[coarseIndex],
            current = current[coarseIndex],
            initial = null,
            tileStride = ALIGN_LEVEL_TILE_STRIDES[coarseIndex],
            tileSize = ALIGN_LEVEL_TILE_STRIDES[coarseIndex],
            iterations = ALIGN_LK_ITERATIONS_COARSER,
            normalize = true,
            referenceProducts = referenceProducts[coarseIndex],
        )
        for (levelIndex in coarseIndex - 1 downTo 0) {
            val level = reference[levelIndex]
            val tileSize = ALIGN_LEVEL_TILE_STRIDES[levelIndex]
            alignment = renderUpsampledAlignment(
                reference = level,
                current = current[levelIndex],
                initial = alignment,
                targetGridWidth = alignmentGridWidth(level, tileSize),
                targetGridHeight = alignmentGridHeight(level, tileSize),
                targetGridMin = ALIGN_LK_GRID_MIN,
                targetTileStride = tileSize,
                targetTileSize = tileSize,
            )
            alignment = renderLucasKanadeLevel(
                reference = level,
                current = current[levelIndex],
                initial = alignment,
                tileStride = tileSize,
                tileSize = tileSize,
                iterations = if (levelIndex == 0) {
                    ALIGN_LK_ITERATIONS_FINEST
                } else {
                    ALIGN_LK_ITERATIONS_COARSER
                },
                normalize = levelIndex != 0,
                referenceProducts = referenceProducts[levelIndex],
            )
        }
        val globalCandidate = estimateGlobalAlignmentCandidate(alignment)
        alignment = renderUpsampledAlignment(
            reference = reference.first(),
            current = current.first(),
            initial = alignment,
            targetGridWidth = gridWidth,
            targetGridHeight = gridHeight,
            targetGridMin = MERGE_ALIGNMENT_GRID_MIN,
            targetTileStride = MERGE_TILE_SIZE / GUIDE_DOWNSAMPLE,
            targetTileSize = MERGE_TILE_SIZE,
            globalCandidate = globalCandidate,
        )
        RawStackRuntimeDebug.d(TAG) {
            "YUV Spatial alignment guide=${guideWidth}x$guideHeight " +
                "flowGrid=${alignment.gridWidth}x${alignment.gridHeight} " +
                "global=${if (globalCandidate.usedHistogramPeak) "mode" else "mean"}" +
                "(${globalCandidate.x},${globalCandidate.y},n=${globalCandidate.peakSupport})"
        }
        return alignment
    }

    private fun renderLucasKanadeLevel(
        reference: TextureLevel,
        current: TextureLevel,
        initial: Alignment?,
        tileStride: Int,
        tileSize: Int,
        iterations: Int,
        normalize: Boolean,
        referenceProducts: ReferenceAlignmentProducts,
    ): Alignment {
        val levelGridWidth = alignmentGridWidth(reference, tileStride)
        val levelGridHeight = alignmentGridHeight(reference, tileStride)
        check(
            referenceProducts.referenceTexture == reference.texture &&
                referenceProducts.gridWidth == levelGridWidth &&
                referenceProducts.gridHeight == levelGridHeight &&
                referenceProducts.tileStride == tileStride &&
                referenceProducts.tileSize == tileSize &&
                referenceProducts.normalize == normalize
        )
        var input = initial
        repeat(iterations) { iteration ->
            val output = createTexture2D(
                levelGridWidth,
                levelGridHeight,
                GLES30.GL_RGBA32F,
                GLES30.GL_NEAREST,
            )
            bindFramebufferOutput(output, "renderLucasKanadeLevel iteration $iteration")
            GLES30.glViewport(0, 0, levelGridWidth, levelGridHeight)
            GLES30.glUseProgram(blockLucasKanadeProgram)
            bindTexture(blockLucasKanadeProgram, "uReference", 0, reference.texture)
            bindTexture(blockLucasKanadeProgram, "uCurrent", 1, current.texture)
            bindTexture(blockLucasKanadeProgram, "uProducts0", 2, referenceProducts.products0)
            bindTexture(blockLucasKanadeProgram, "uProducts1", 3, referenceProducts.products1)
            bindTexture(
                blockLucasKanadeProgram,
                "uInitialAlignment",
                4,
                input?.texture ?: zeroFlowTexture,
            )
            GLES30.glUniform2i(
                GLES30.glGetUniformLocation(blockLucasKanadeProgram, "uImageSize"),
                reference.width,
                reference.height,
            )
            GLES30.glUniform2i(
                GLES30.glGetUniformLocation(blockLucasKanadeProgram, "uGridSize"),
                levelGridWidth,
                levelGridHeight,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(blockLucasKanadeProgram, "uTileStride"),
                tileStride,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(blockLucasKanadeProgram, "uTileSize"),
                tileSize,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(blockLucasKanadeProgram, "uNormalize"),
                if (normalize) 1 else 0,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(blockLucasKanadeProgram, "uHasInitialAlignment"),
                if (input != null) 1 else 0,
            )
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            finishFramebufferPass("renderLucasKanadeLevel iteration $iteration")
            input = Alignment(
                texture = output,
                gridWidth = levelGridWidth,
                gridHeight = levelGridHeight,
                tileStride = tileStride,
                scaleToGuidePixels = reference.scaleToGuidePixels,
                gridMin = ALIGN_LK_GRID_MIN,
            )
        }
        return checkNotNull(input)
    }

    private fun renderUpsampledAlignment(
        reference: TextureLevel,
        current: TextureLevel,
        initial: Alignment,
        targetGridWidth: Int,
        targetGridHeight: Int,
        targetGridMin: Int,
        targetTileStride: Int,
        targetTileSize: Int,
        globalCandidate: GlobalAlignmentCandidate? = null,
    ): Alignment {
        val initialScale = initial.scaleToGuidePixels / reference.scaleToGuidePixels
        val output = createTexture2D(
            targetGridWidth,
            targetGridHeight,
            GLES30.GL_RGBA32F,
            GLES30.GL_NEAREST,
        )
        bindFramebufferOutput(output, "renderUpsampledAlignment")
        GLES30.glViewport(0, 0, targetGridWidth, targetGridHeight)
        GLES30.glUseProgram(upsampleAlignmentProgram)
        bindTexture(upsampleAlignmentProgram, "uReference", 0, reference.texture)
        bindTexture(upsampleAlignmentProgram, "uCurrent", 1, current.texture)
        bindTexture(upsampleAlignmentProgram, "uInitialAlignment", 2, initial.texture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uImageSize"),
            reference.width,
            reference.height,
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uInitialGridSize"),
            initial.gridWidth,
            initial.gridHeight,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uInitialGridMin"),
            initial.gridMin,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uTargetGridMin"),
            targetGridMin,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uInitialTileStride"),
            initial.tileStride,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uTargetTileStride"),
            targetTileStride,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uTargetTileSize"),
            targetTileSize,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uInitialScale"),
            initialScale,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uHasGlobalCandidate"),
            if (globalCandidate != null) 1 else 0,
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(upsampleAlignmentProgram, "uGlobalCandidate"),
            globalCandidate?.x ?: 0f,
            globalCandidate?.y ?: 0f,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderUpsampledAlignment")
        return Alignment(
            texture = output,
            gridWidth = targetGridWidth,
            gridHeight = targetGridHeight,
            tileStride = targetTileStride,
            scaleToGuidePixels = reference.scaleToGuidePixels,
            gridMin = targetGridMin,
        )
    }

    private fun estimateGlobalAlignmentCandidate(alignment: Alignment): GlobalAlignmentCandidate {
        val pixelCount = alignment.gridWidth * alignment.gridHeight
        val readback = ByteBuffer.allocateDirect(pixelCount * 4 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
        bindFramebufferOutput(alignment.texture, "estimateGlobalAlignmentCandidate")
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, Float.SIZE_BYTES)
        GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, 0)
        GLES30.glReadPixels(
            0,
            0,
            alignment.gridWidth,
            alignment.gridHeight,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            readback,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        checkGlError("estimateGlobalAlignmentCandidate")
        val histogram = IntArray(GLOBAL_ALIGNMENT_HISTOGRAM_SIZE * GLOBAL_ALIGNMENT_HISTOGRAM_SIZE)
        val values = readback.asFloatBuffer()
        var sumX = 0L
        var sumY = 0L
        repeat(pixelCount) { pixel ->
            val flowX = values.get(pixel * 4)
            val flowY = values.get(pixel * 4 + 1)
            check(flowX.isFinite() && flowY.isFinite()) {
                "YUV Spatial global alignment contains non-finite flow at tile=$pixel"
            }
            val binX = roundGlobalAlignmentBin(flowX)
                .coerceIn(-GLOBAL_ALIGNMENT_RADIUS, GLOBAL_ALIGNMENT_RADIUS)
            val binY = roundGlobalAlignmentBin(flowY)
                .coerceIn(-GLOBAL_ALIGNMENT_RADIUS, GLOBAL_ALIGNMENT_RADIUS)
            histogram[
                (binY + GLOBAL_ALIGNMENT_RADIUS) * GLOBAL_ALIGNMENT_HISTOGRAM_SIZE +
                    binX + GLOBAL_ALIGNMENT_RADIUS
            ]++
            sumX += binX
            sumY += binY
        }
        var peakSupport = 0
        var peakX = 0
        var peakY = 0
        for (binY in -GLOBAL_ALIGNMENT_RADIUS..GLOBAL_ALIGNMENT_RADIUS) {
            for (binX in -GLOBAL_ALIGNMENT_RADIUS..GLOBAL_ALIGNMENT_RADIUS) {
                val support = histogram[
                    (binY + GLOBAL_ALIGNMENT_RADIUS) * GLOBAL_ALIGNMENT_HISTOGRAM_SIZE +
                        binX + GLOBAL_ALIGNMENT_RADIUS
                ]
                if (support > peakSupport) {
                    peakSupport = support
                    peakX = binX
                    peakY = binY
                }
            }
        }
        val usePeak = peakSupport >= GLOBAL_ALIGNMENT_MIN_PEAK_SUPPORT
        return GlobalAlignmentCandidate(
            x = if (usePeak) peakX.toFloat() else sumX.toFloat() / pixelCount,
            y = if (usePeak) peakY.toFloat() else sumY.toFloat() / pixelCount,
            peakSupport = peakSupport,
            usedHistogramPeak = usePeak,
        )
    }

    private fun renderConvertedAlignment(alignment: Alignment) {
        val tileSize = (alignment.tileStride * alignment.scaleToGuidePixels).toInt()
        bindFramebufferOutput(flowTexture, "renderConvertedAlignment")
        GLES30.glViewport(0, 0, guideWidth, guideHeight)
        GLES30.glUseProgram(convertAlignmentProgram)
        bindTexture(convertAlignmentProgram, "uAlignment", 0, alignment.texture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(convertAlignmentProgram, "uGridSize"),
            alignment.gridWidth,
            alignment.gridHeight,
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(convertAlignmentProgram, "uOutputSize"),
            guideWidth,
            guideHeight,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(convertAlignmentProgram, "uAlignmentTileSize"),
            tileSize,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(convertAlignmentProgram, "uAlignmentGridMin"),
            alignment.gridMin,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(convertAlignmentProgram, "uAlignmentScale"),
            alignment.scaleToGuidePixels,
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(convertAlignmentProgram, "uFlowNormalizationSize"),
            guideWidth.toFloat(),
            guideHeight.toFloat(),
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderConvertedAlignment")
    }

    private fun renderRejection(
        currentToReferenceScale: Float,
        referenceRejectionLuma: Int,
    ) {
        val currentShotNoise = NOISE_ALPHA * currentToReferenceScale
        val currentReadNoise = NOISE_BETA * currentToReferenceScale * currentToReferenceScale
        val noiseLut = createNoiseLut(currentShotNoise, currentReadNoise)
        bindFramebufferOutputs(
            intArrayOf(rawReverseWeightTexture, rawPixelDifferenceTexture),
            "renderSpatialRejection",
        )
        GLES30.glViewport(0, 0, guideWidth, guideHeight)
        GLES30.glUseProgram(rejectionProgram)
        bindTexture(rejectionProgram, "uBaseGuide", 0, referenceGuideTexture)
        bindTexture(rejectionProgram, "uAltGuide", 1, currentGuideTexture)
        bindTexture(rejectionProgram, "uFlow", 2, flowTexture)
        bindTexture(rejectionProgram, "uUnblocker", 3, zeroUnblockerTexture)
        bindTexture(rejectionProgram, "uNoiseEstimates", 4, noiseLut)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(rejectionProgram, "uGuideSize"),
            guideWidth,
            guideHeight,
        )
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(rejectionProgram, "uRejectionSize"),
            guideWidth,
            guideHeight,
        )
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(rejectionProgram, "uFlowScaleOffset"),
            1f,
            1f,
            0f,
            0f,
        )
        GLES30.glUniform2f(GLES30.glGetUniformLocation(rejectionProgram, "uUnblockerScale"), 1f, 1f)
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(rejectionProgram, "uNoiseTextureScaleBias"),
            0.9f,
            0.5f,
            0.05f,
            0.25f,
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(rejectionProgram, "uColorDifferenceMultiplier"),
            MgcSabreRejectionTuning.COLOR_DIFFERENCE_RGB,
            MgcSabreRejectionTuning.COLOR_DIFFERENCE_GREEN,
        )
        val thresholds = MgcSabreRejectionTuning.flowVariationThresholds(guideWidth)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionProgram, "uUnblockerReductionThreshold"),
            thresholds.unblockerReduction,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionProgram, "uExtraMotionRobustnessBoost"),
            MgcSabreRejectionTuning.EXTRA_MOTION_ROBUSTNESS_BOOST,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionProgram, "uMotionRobustnessBoostVarianceThreshold"),
            MgcSabreRejectionTuning.MOTION_ROBUSTNESS_VARIANCE_THRESHOLD,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionProgram, "uExtraMotionRobustnessMotionThreshold"),
            thresholds.extraMotionRobustness,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderSpatialRejection")

        renderDilation()
        renderPixelDifferenceDownsample()
        renderClippedGaussianPixelDifference()
        renderFilteredRejection(referenceRejectionLuma)
    }

    private fun renderDilation() {
        bindFramebufferOutput(initialWeightTexture, "renderRejectionDilation")
        GLES30.glViewport(0, 0, mergeWeightWidth, mergeWeightHeight)
        GLES30.glUseProgram(dilationProgram)
        bindTexture(dilationProgram, "uRejection", 0, rawReverseWeightTexture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(dilationProgram, "uInputSize"),
            guideWidth,
            guideHeight,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderRejectionDilation")
    }

    private fun renderPixelDifferenceDownsample() {
        bindFramebufferOutput(pixelDifferenceTexture, "renderPixelDifferenceDownsample")
        GLES30.glViewport(0, 0, mergeWeightWidth, mergeWeightHeight)
        GLES30.glUseProgram(rejectionPixelDifferenceDownsampleProgram)
        bindTexture(rejectionPixelDifferenceDownsampleProgram, "uInput", 0, rawPixelDifferenceTexture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(rejectionPixelDifferenceDownsampleProgram, "uInputSize"),
            guideWidth,
            guideHeight,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderPixelDifferenceDownsample")
    }

    private fun renderClippedGaussianPixelDifference() {
        bindFramebufferOutput(pixelDifferenceHorizontalTexture, "renderPixelDifferenceBlurX")
        GLES30.glViewport(0, 0, mergeWeightWidth, mergeWeightHeight)
        GLES30.glUseProgram(clippedGaussianHorizontalProgram)
        bindTexture(clippedGaussianHorizontalProgram, "uInput", 0, pixelDifferenceTexture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(clippedGaussianHorizontalProgram, "uSize"),
            mergeWeightWidth,
            mergeWeightHeight,
        )
        GLES30.glUniform1fv(
            GLES30.glGetUniformLocation(clippedGaussianHorizontalProgram, "uKernel"),
            pixelDifferenceKernel.size,
            pixelDifferenceKernel,
            0,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderPixelDifferenceBlurX")

        bindFramebufferOutput(smoothedPixelDifferenceTexture, "renderPixelDifferenceBlurY")
        GLES30.glViewport(0, 0, mergeWeightWidth, mergeWeightHeight)
        GLES30.glUseProgram(clippedGaussianVerticalProgram)
        bindTexture(clippedGaussianVerticalProgram, "uInput", 0, pixelDifferenceHorizontalTexture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(clippedGaussianVerticalProgram, "uSize"),
            mergeWeightWidth,
            mergeWeightHeight,
        )
        GLES30.glUniform1fv(
            GLES30.glGetUniformLocation(clippedGaussianVerticalProgram, "uKernel"),
            pixelDifferenceKernel.size,
            pixelDifferenceKernel,
            0,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderPixelDifferenceBlurY")
    }

    private fun renderFilteredRejection(referenceRejectionLuma: Int) {
        bindFramebufferOutputs(
            intArrayOf(downsampledLumaTexture, downsampledRejectionTexture),
            "renderRejectionFilterDownsample",
        )
        GLES30.glViewport(0, 0, rejectionFilterWidth, rejectionFilterHeight)
        GLES30.glUseProgram(rejectionFilterDownsampleProgram)
        bindTexture(rejectionFilterDownsampleProgram, "uBaseLuma", 0, referenceRejectionLuma)
        bindTexture(rejectionFilterDownsampleProgram, "uRejection", 1, initialWeightTexture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(rejectionFilterDownsampleProgram, "uInputSize"),
            mergeWeightWidth,
            mergeWeightHeight,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderRejectionFilterDownsample")

        bindFramebufferOutput(filteredRejectionTexture, "renderFilteredRejection")
        GLES30.glViewport(0, 0, rejectionFilterWidth, rejectionFilterHeight)
        GLES30.glUseProgram(rejectionFilterProgram)
        bindTexture(rejectionFilterProgram, "uLuma", 0, downsampledLumaTexture)
        bindTexture(rejectionFilterProgram, "uRejection", 1, downsampledRejectionTexture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(rejectionFilterProgram, "uSize"),
            rejectionFilterWidth,
            rejectionFilterHeight,
        )
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(rejectionFilterProgram, "uRadius"),
            REJECTION_FILTER_MAX_RADIUS,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionFilterProgram, "uSigmaSpatial"),
            REJECTION_FILTER_SPATIAL_SIGMA,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionFilterProgram, "uColorSigma"),
            REJECTION_FILTER_COLOR_SIGMA,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionFilterProgram, "uColorSigmaBoost"),
            REJECTION_FILTER_COLOR_SIGMA_BOOST,
        )
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rejectionFilterProgram, "uClipRejection"), 1)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderFilteredRejection")

        bindFramebufferOutput(frameWeightTexture, "renderRejectionPostprocess")
        GLES30.glViewport(0, 0, mergeWeightWidth, mergeWeightHeight)
        GLES30.glUseProgram(rejectionPostprocessProgram)
        bindTexture(rejectionPostprocessProgram, "uOriginalWeight", 0, initialWeightTexture)
        bindTexture(rejectionPostprocessProgram, "uFilteredWeight", 1, filteredRejectionTexture)
        bindTexture(rejectionPostprocessProgram, "uPixelDifference", 2, smoothedPixelDifferenceTexture)
        GLES30.glUniform2i(
            GLES30.glGetUniformLocation(rejectionPostprocessProgram, "uSize"),
            mergeWeightWidth,
            mergeWeightHeight,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionPostprocessProgram, "uPixelDifferenceThreshold"),
            PIXEL_DIFFERENCE_THRESHOLD / 255f,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rejectionPostprocessProgram, "uClippedThreshold"),
            REJECTION_CLIPPED_THRESHOLD / 255f,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("renderRejectionPostprocess")
    }

    private fun createNoiseLut(currentShotNoise: Float, currentReadNoise: Float): Int {
        val referenceShot = FloatArray(4) { NOISE_ALPHA }
        val referenceRead = FloatArray(4) { NOISE_BETA }
        val currentShot = FloatArray(4) { currentShotNoise }
        val currentRead = FloatArray(4) { currentReadNoise }
        val values = MgcSpatialNoiseEstimatesLut.create(
            referenceShotNoise = referenceShot,
            referenceReadNoise = referenceRead,
            currentShotNoise = currentShot,
            currentReadNoise = currentRead,
        )
        return createFloatTexture(
            MgcSpatialNoiseEstimatesLut.WIDTH,
            MgcSpatialNoiseEstimatesLut.ROWS,
            GLES30.GL_RGBA16F,
            GLES30.GL_RGBA,
            values,
            GLES30.GL_LINEAR,
        )
    }

    private fun spatialGlobalFrameWeight(isReference: Boolean, exposureScale: Float): Float {
        if (isReference) return 1f
        return MgcSpatialMergeTuning.maximumMergeWeight(
            baseReadVariance = NOISE_BETA,
            alternateReadVariance = NOISE_BETA,
            exposureScale = exposureScale,
        )
    }

    private fun accumulateFrame(
        yTexture: Int,
        cbCrTexture: Int,
        isReference: Boolean,
        currentToReferenceScale: Float,
    ) {
        bindFramebufferOutput(accumulatorTexture, "accumulateFrame")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(accumulateProgram)
        bindTexture(accumulateProgram, "uCurrentY", 0, yTexture)
        bindTexture(accumulateProgram, "uCurrentCbCr", 1, cbCrTexture)
        bindTexture(
            accumulateProgram,
            "uAlignment",
            2,
            if (isReference) zeroFlowTexture else mergeAlignmentTexture,
        )
        bindTexture(
            accumulateProgram,
            "uFrameWeight",
            3,
            if (isReference) identityWeightTexture else frameWeightTexture,
        )
        GLES31.glUniform2i(GLES31.glGetUniformLocation(accumulateProgram, "uImageSize"), width, height)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(accumulateProgram, "uExposureScale"),
            currentToReferenceScale,
        )
        val globalFrameWeight = spatialGlobalFrameWeight(isReference, currentToReferenceScale)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(accumulateProgram, "uGlobalFrameWeight"),
            globalFrameWeight,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(accumulateProgram, "uKernelSigma"),
            MgcSpatialMergeTuning.kernelSigma(SPATIAL_BASE_SCALE, globalFrameWeight),
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(accumulateProgram, "uUseFrameWeight"),
            if (isReference) 0 else 1,
        )
        GLES30.glEnable(GLES30.GL_BLEND)
        try {
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        } finally {
            GLES30.glDisable(GLES30.GL_BLEND)
        }
        finishFramebufferPass("accumulateFrame")
        currentAccumulatorTexture = accumulatorTexture
    }

    private fun clearSuperResolutionAccumulator() {
        bindFramebufferOutput(superResolutionAccumulatorTexture, "clearSuperResolutionAccumulator")
        GLES30.glViewport(0, 0, gpuOutputWidth, gpuOutputHeight)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        finishFramebufferPass("clearSuperResolutionAccumulator")
        currentSuperResolutionAccumulatorTexture = superResolutionAccumulatorTexture
    }

    private fun accumulateSuperResolutionFrame(
        yTexture: Int,
        cbCrTexture: Int,
        isReference: Boolean,
        currentToReferenceScale: Float,
    ) {
        bindFramebufferOutput(superResolutionAccumulatorTexture, "accumulateSuperResolutionFrame")
        GLES30.glViewport(0, 0, gpuOutputWidth, gpuOutputHeight)
        GLES30.glUseProgram(superResolutionAccumulateProgram)
        bindTexture(superResolutionAccumulateProgram, "uCurrentY", 0, yTexture)
        bindTexture(superResolutionAccumulateProgram, "uCurrentCbCr", 1, cbCrTexture)
        bindTexture(
            superResolutionAccumulateProgram,
            "uAlignment",
            2,
            if (isReference) zeroFlowTexture else mergeAlignmentTexture,
        )
        bindTexture(
            superResolutionAccumulateProgram,
            "uFrameWeight",
            3,
            if (isReference) identityWeightTexture else frameWeightTexture,
        )
        GLES31.glUniform2i(GLES31.glGetUniformLocation(superResolutionAccumulateProgram, "uInputSize"), width, height)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(superResolutionAccumulateProgram, "uOutputSize"),
            gpuOutputWidth,
            gpuOutputHeight,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(superResolutionAccumulateProgram, "uExposureScale"),
            currentToReferenceScale,
        )
        val globalFrameWeight = spatialGlobalFrameWeight(isReference, currentToReferenceScale)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(superResolutionAccumulateProgram, "uGlobalFrameWeight"),
            globalFrameWeight,
        )
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(superResolutionAccumulateProgram, "uKernelSigma"),
            MgcSpatialMergeTuning.kernelSigma(SPATIAL_BASE_SCALE, globalFrameWeight),
        )
        GLES31.glUniform1i(
            GLES31.glGetUniformLocation(superResolutionAccumulateProgram, "uUseFrameWeight"),
            if (isReference) 0 else 1,
        )
        val transform = computeRenderTransform(superResolutionScale)
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(superResolutionAccumulateProgram, "uTransformX"),
            transform[0],
            transform[1],
            transform[2],
        )
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(superResolutionAccumulateProgram, "uTransformY"),
            transform[3],
            transform[4],
            transform[5],
        )
        GLES30.glEnable(GLES30.GL_BLEND)
        try {
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        } finally {
            GLES30.glDisable(GLES30.GL_BLEND)
        }
        finishFramebufferPass("accumulateSuperResolutionFrame")
        currentSuperResolutionAccumulatorTexture = superResolutionAccumulatorTexture
    }

    private fun normalizeOutput() {
        renderAccumulatorToOutput(currentAccumulatorTexture, applyDenoise = false)
    }

    private fun normalizeSuperResolutionOutput() {
        bindFramebufferOutput(outputTexture, "normalizeSuperResolutionOutput")
        GLES30.glViewport(0, 0, gpuOutputWidth, gpuOutputHeight)
        GLES30.glUseProgram(superResolutionNormalizeProgram)
        bindTexture(superResolutionNormalizeProgram, "uSrAccumulator", 0, currentSuperResolutionAccumulatorTexture)
        bindTexture(superResolutionNormalizeProgram, "uBaseAccumulator", 1, currentAccumulatorTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(superResolutionNormalizeProgram, "uInputSize"), width, height)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(superResolutionNormalizeProgram, "uIsP010"), if (highPrecisionInput) 1 else 0)
        val transform = computeRenderTransform(superResolutionScale)
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(superResolutionNormalizeProgram, "uTransformX"),
            transform[0],
            transform[1],
            transform[2],
        )
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(superResolutionNormalizeProgram, "uTransformY"),
            transform[3],
            transform[4],
            transform[5],
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("normalizeSuperResolutionOutput")
    }

    private fun renderAccumulatorToOutput(accumulatorTexture: Int, applyDenoise: Boolean) {
        renderAccumulatorToTexture(accumulatorTexture, outputTexture, applyDenoise, "normalizeOutput")
    }

    private fun renderAccumulatorToTexture(
        accumulatorTexture: Int,
        targetTexture: Int,
        applyDenoise: Boolean,
        label: String,
    ) {
        bindFramebufferOutput(targetTexture, label)
        GLES30.glViewport(0, 0, gpuOutputWidth, gpuOutputHeight)
        GLES30.glUseProgram(normalizeProgram)
        bindTexture(normalizeProgram, "uAccumulator", 0, accumulatorTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(normalizeProgram, "uInputSize"), width, height)
        val transform = computeRenderTransform()
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(normalizeProgram, "uTransformX"),
            transform[0],
            transform[1],
            transform[2],
        )
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(normalizeProgram, "uTransformY"),
            transform[3],
            transform[4],
            transform[5],
        )
        GLES31.glUniform1f(GLES31.glGetUniformLocation(normalizeProgram, "uNoiseBeta"), NOISE_BETA)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(normalizeProgram, "uIsP010"), if (highPrecisionInput) 1 else 0)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(normalizeProgram, "uApplyDenoise"), if (applyDenoise) 1 else 0)
        val directOffset = computeDirectSourceOffset()
        GLES31.glUniform1i(GLES31.glGetUniformLocation(normalizeProgram, "uDirectSource"), if (cpuRotateReadback) 1 else 0)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(normalizeProgram, "uDirectOffset"), directOffset[0], directOffset[1])
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
    }

    private fun renderHdrSideFrameToTexture(
        yTexture: Int,
        cbCrTexture: Int,
        targetTexture: Int,
        label: String,
    ) {
        bindFramebufferOutput(targetTexture, label)
        GLES30.glViewport(0, 0, gpuOutputWidth, gpuOutputHeight)
        GLES30.glUseProgram(alignedFrameOutputProgram)
        bindTexture(alignedFrameOutputProgram, "uCurrentY", 0, yTexture)
        bindTexture(alignedFrameOutputProgram, "uCurrentCbCr", 1, cbCrTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(alignedFrameOutputProgram, "uInputSize"), width, height)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignedFrameOutputProgram, "uIsP010"), if (highPrecisionInput) 1 else 0)
        val transform = computeRenderTransform()
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(alignedFrameOutputProgram, "uTransformX"),
            transform[0],
            transform[1],
            transform[2],
        )
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(alignedFrameOutputProgram, "uTransformY"),
            transform[3],
            transform[4],
            transform[5],
        )
        val directOffset = computeDirectSourceOffset()
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignedFrameOutputProgram, "uDirectSource"), if (cpuRotateReadback) 1 else 0)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(alignedFrameOutputProgram, "uDirectOffset"), directOffset[0], directOffset[1])
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
    }

    private fun renderMertensFusionToOutput(
        inputTextures: IntArray,
        exposureProducts: FloatArray?,
        enableDeghostMask: Boolean,
    ) {
        if (inputTextures.size != HDR_BRACKET_FRAME_COUNT) {
            throw IllegalArgumentException("Mertens fusion expects $HDR_BRACKET_FRAME_COUNT textures")
        }
        val fusionWidth = gpuOutputWidth
        val fusionHeight = gpuOutputHeight
        val maxLevel = (ln(min(fusionWidth, fusionHeight).toFloat()) / ln(2f)).toInt().coerceAtLeast(0)
        val exposureScales = normalizeMertensExposureProducts(exposureProducts)
        val resultPyramid = ArrayList<MertensRenderTarget>(maxLevel + 1)
        var currentImages = inputTextures.map { MertensTextureLevel(fusionWidth, fusionHeight, it, owned = false) }
        var currentWeights: MertensRenderTarget? = null
        var reconstructed: MertensRenderTarget? = null

        try {
            val referenceTexture = inputTextures[HDR_BRACKET_ZERO_INDEX]
            val rawWeights = inputTextures.mapIndexed { index, texture ->
                createMertensRenderTarget(fusionWidth, fusionHeight, halfFloat = true).also {
                    renderMertensWeight(
                        imageTexture = texture,
                        referenceTexture = referenceTexture,
                        target = it,
                        exposureScale = exposureScales[index],
                        useDeghostMask = enableDeghostMask && index != HDR_BRACKET_ZERO_INDEX,
                    )
                }
            }
            currentWeights = createMertensRenderTarget(fusionWidth, fusionHeight, halfFloat = true)
            renderMertensNormalizeWeights(rawWeights, currentWeights)
            rawWeights.forEach { it.release() }

            for (level in 0 until maxLevel) {
                val weights = currentWeights ?: throw IllegalStateException("Missing Mertens weight pyramid level $level")
                val currentWidth = currentImages.first().width
                val currentHeight = currentImages.first().height
                val nextWidth = ((currentWidth + 1) / 2).coerceAtLeast(1)
                val nextHeight = ((currentHeight + 1) / 2).coerceAtLeast(1)

                val nextImages = currentImages.map { source ->
                    createMertensRenderTarget(nextWidth, nextHeight, halfFloat = true).also {
                        renderMertensPyrDown(source.textureId, source.width, source.height, it)
                    }
                }
                val nextWeights = createMertensRenderTarget(nextWidth, nextHeight, halfFloat = true).also {
                    renderMertensPyrDown(weights.textureId, weights.width, weights.height, it)
                }

                val laplacians = currentImages.mapIndexed { index, source ->
                    createMertensRenderTarget(currentWidth, currentHeight, halfFloat = true).also {
                        renderMertensLaplacian(source.textureId, nextImages[index].textureId, nextImages[index].width, nextImages[index].height, it)
                    }
                }
                val resultLevel = createMertensRenderTarget(currentWidth, currentHeight, halfFloat = true)
                renderMertensWeightedSum(laplacians, weights, resultLevel)
                resultPyramid.add(resultLevel)

                laplacians.forEach { it.release() }
                currentImages.forEach { it.releaseIfOwned() }
                weights.release()

                currentImages = nextImages.map { MertensTextureLevel(it.width, it.height, it.textureId, owned = true, owner = it) }
                currentWeights = nextWeights
            }

            val weights = currentWeights
            val topLevel = createMertensRenderTarget(currentImages.first().width, currentImages.first().height, halfFloat = true)
            renderMertensWeightedSum(
                currentImages.map { MertensTextureOnlyTarget(it.width, it.height, it.textureId) },
                weights,
                topLevel,
            )
            resultPyramid.add(topLevel)
            currentImages.forEach { it.releaseIfOwned() }
            weights.release()
            currentWeights = null

            reconstructed = resultPyramid.removeAt(resultPyramid.lastIndex)
            for (level in resultPyramid.lastIndex downTo 0) {
                val base = resultPyramid[level]
                val currentReconstruction = requireNotNull(reconstructed) {
                    "Missing Mertens reconstruction level ${level + 1}"
                }
                val isFinalLevel = level == 0
                val target = if (isFinalLevel) {
                    createMertensExternalTarget(fusionWidth, fusionHeight, outputTexture)
                } else {
                    createMertensRenderTarget(base.width, base.height, halfFloat = true)
                }
                renderMertensReconstruct(
                    base.textureId,
                    currentReconstruction.textureId,
                    currentReconstruction.width,
                    currentReconstruction.height,
                    target,
                )
                currentReconstruction.release()
                base.release()
                reconstructed = target
            }

            if (maxLevel == 0) {
                val finalReconstruction = requireNotNull(reconstructed) {
                    "Missing Mertens final reconstruction"
                }
                val outputTarget = createMertensExternalTarget(fusionWidth, fusionHeight, outputTexture)
                renderMertensCopy(finalReconstruction.textureId, outputTarget)
                finalReconstruction.release()
                outputTarget.release()
                reconstructed = null
            }
        } finally {
            currentImages.forEach { it.releaseIfOwned() }
            currentWeights?.release()
            reconstructed?.release()
            resultPyramid.forEach { it.release() }
        }
    }

    private fun normalizeMertensExposureProducts(exposureProducts: FloatArray?): FloatArray {
        val reference = exposureProducts
            ?.getOrNull(HDR_BRACKET_ZERO_INDEX)
            ?.takeIf { it.isFinite() && it > 0f }
            ?: 1f
        return FloatArray(HDR_BRACKET_FRAME_COUNT) { index ->
            val product = exposureProducts
                ?.getOrNull(index)
                ?.takeIf { it.isFinite() && it > 0f }
                ?: reference
            (product / reference).coerceIn(1f / 32f, 32f)
        }
    }

    private fun renderMertensWeight(
        imageTexture: Int,
        referenceTexture: Int,
        target: MertensRenderTarget,
        exposureScale: Float,
        useDeghostMask: Boolean,
    ) {
        GLES30.glUseProgram(mertensWeightProgram)
        bindMertensTarget(target)
        bindTexture(mertensWeightProgram, "uImage", 0, imageTexture)
        bindTexture(mertensWeightProgram, "uReferenceImage", 1, referenceTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(mertensWeightProgram, "uImageSize"), target.width, target.height)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(mertensWeightProgram, "uContrastWeight"), DEFAULT_MERTENS_CONTRAST_WEIGHT)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(mertensWeightProgram, "uSaturationWeight"), DEFAULT_MERTENS_SATURATION_WEIGHT)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(mertensWeightProgram, "uExposureWeight"), DEFAULT_MERTENS_EXPOSURE_WEIGHT)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(mertensWeightProgram, "uExposureScale"), exposureScale)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(mertensWeightProgram, "uUseDeghostMask"), if (useDeghostMask) 1 else 0)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishMertensPass("renderMertensWeight")
    }

    private fun renderMertensNormalizeWeights(rawWeights: List<MertensRenderTarget>, target: MertensRenderTarget) {
        GLES30.glUseProgram(mertensNormalizeProgram)
        bindMertensTarget(target)
        rawWeights.forEachIndexed { index, weight ->
            bindTexture(mertensNormalizeProgram, "uWeight$index", index, weight.textureId)
        }
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishMertensPass("renderMertensNormalizeWeights")
    }

    private fun renderMertensPyrDown(sourceTexture: Int, sourceWidth: Int, sourceHeight: Int, target: MertensRenderTarget) {
        GLES30.glUseProgram(mertensPyrDownProgram)
        bindMertensTarget(target)
        bindTexture(mertensPyrDownProgram, "uInputTexture", 0, sourceTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(mertensPyrDownProgram, "uSourceSize"), sourceWidth, sourceHeight)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishMertensPass("renderMertensPyrDown")
    }

    private fun renderMertensLaplacian(
        baseTexture: Int,
        nextTexture: Int,
        nextWidth: Int,
        nextHeight: Int,
        target: MertensRenderTarget,
    ) {
        GLES30.glUseProgram(mertensLaplacianProgram)
        bindMertensTarget(target)
        bindTexture(mertensLaplacianProgram, "uBaseTexture", 0, baseTexture)
        bindTexture(mertensLaplacianProgram, "uNextTexture", 1, nextTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(mertensLaplacianProgram, "uNextSize"), nextWidth, nextHeight)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishMertensPass("renderMertensLaplacian")
    }

    private fun renderMertensWeightedSum(
        inputs: List<MertensFramebufferSource>,
        weights: MertensRenderTarget,
        target: MertensRenderTarget,
    ) {
        GLES30.glUseProgram(mertensCombineProgram)
        bindMertensTarget(target)
        inputs.forEachIndexed { index, input ->
            bindTexture(mertensCombineProgram, "uImage$index", index, input.textureId)
        }
        bindTexture(mertensCombineProgram, "uWeights", 3, weights.textureId)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishMertensPass("renderMertensWeightedSum")
    }

    private fun renderMertensReconstruct(
        baseTexture: Int,
        nextTexture: Int,
        nextWidth: Int,
        nextHeight: Int,
        target: MertensRenderTarget,
    ) {
        GLES30.glUseProgram(mertensReconstructProgram)
        bindMertensTarget(target)
        bindTexture(mertensReconstructProgram, "uBaseTexture", 0, baseTexture)
        bindTexture(mertensReconstructProgram, "uNextTexture", 1, nextTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(mertensReconstructProgram, "uNextSize"), nextWidth, nextHeight)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishMertensPass("renderMertensReconstruct")
    }

    private fun renderMertensCopy(sourceTexture: Int, target: MertensRenderTarget) {
        GLES30.glUseProgram(mertensCopyProgram)
        bindMertensTarget(target)
        bindTexture(mertensCopyProgram, "uInputTexture", 0, sourceTexture)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishMertensPass("renderMertensCopy")
    }

    private fun bindMertensTarget(target: MertensRenderTarget) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebufferId)
        GLES30.glViewport(0, 0, target.width, target.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
    }

    private fun finishMertensPass(label: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError(label)
    }

    private fun createMertensRenderTarget(width: Int, height: Int, halfFloat: Boolean): MertensRenderTarget {
        val texture = createMertensTexture(width, height, halfFloat)
        val framebuffer = createMertensFramebuffer(texture, width, height, "createMertensRenderTarget")
        return MertensRenderTarget(width, height, texture, framebuffer)
    }

    private fun createMertensExternalTarget(width: Int, height: Int, texture: Int): MertensRenderTarget {
        val framebuffer = createMertensFramebuffer(texture, width, height, "createMertensExternalTarget")
        return MertensRenderTarget(width, height, texture, framebuffer, ownsTexture = false)
    }

    private fun createMertensTexture(width: Int, height: Int, halfFloat: Boolean): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        val internalFormat = if (halfFloat) GLES30.GL_RGBA16F else GLES30.GL_RGBA
        val type = if (halfFloat) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            internalFormat,
            width,
            height,
            0,
            GLES30.GL_RGBA,
            type,
            null,
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("createMertensTexture")
        return texture
    }

    private fun createMertensFramebuffer(texture: Int, width: Int, height: Int, label: String): Int {
        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, ids[0])
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            texture,
            0,
        )
        val drawBuffers = intArrayOf(GLES30.GL_COLOR_ATTACHMENT0)
        GLES30.glDrawBuffers(drawBuffers.size, drawBuffers, 0)
        GLES30.glViewport(0, 0, width, height)
        checkFramebuffer(label)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        return ids[0]
    }

    private fun readOutputBitmap(): Bitmap? {
        val bitmap = try {
            createBitmap(renderOutputWidth, renderOutputHeight, colorSpace = colorSpace)
        } catch (e: OutOfMemoryError) {
            PLog.e(TAG, "OOM creating GLES stack bitmap ($renderOutputWidth x $renderOutputHeight)", e)
            return null
        }

        val readTexture = resolveReadbackTexture()
        val readWidth = renderOutputWidth
        val readHeight = renderOutputHeight
        val bufferByteCount = readWidth.toLong() * readHeight.toLong() * 4L
        val buffer = LargeDirectBuffer.allocate(bufferByteCount, "GLES YUV stack readback") ?: return null
        try {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, readbackFbo)
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, readTexture, 0)
            GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
            checkFramebuffer("readOutputBitmap")
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glViewport(0, 0, readWidth, readHeight)
            GLES30.glReadPixels(0, 0, readWidth, readHeight, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            buffer.position(0)
            bitmap.copyPixelsFromBuffer(buffer)
            checkGlError("readOutputBitmap")
        } finally {
            LargeDirectBuffer.free(buffer)
        }
        return bitmap
    }

    private fun resolveReadbackTexture(
        inputTexture: Int = outputTexture,
        rotatedTexture: Int = readbackTexture,
        label: String = "resolveReadbackRotation",
    ): Int {
        if (!cpuRotateReadback) {
            return inputTexture
        }
        bindFramebufferOutput(rotatedTexture, label)
        GLES30.glViewport(0, 0, renderOutputWidth, renderOutputHeight)
        GLES30.glUseProgram(readbackResolveProgram)
        bindTexture(readbackResolveProgram, "uInputTexture", 0, inputTexture)
        GLES31.glUniform2i(
            GLES31.glGetUniformLocation(readbackResolveProgram, "uInputSize"),
            gpuOutputWidth,
            gpuOutputHeight,
        )
        GLES31.glUniform1i(GLES31.glGetUniformLocation(readbackResolveProgram, "uRotation"), normalizedRotation)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
        return rotatedTexture
    }

    private fun createTexture2D(
        textureWidth: Int,
        textureHeight: Int,
        internalFormat: Int,
        filter: Int,
    ): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        textures += texture
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, internalFormat, textureWidth, textureHeight)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return texture
    }

    private fun createFloatTexture(
        textureWidth: Int,
        textureHeight: Int,
        internalFormat: Int,
        format: Int,
        values: FloatArray,
        filter: Int,
    ): Int {
        val texture = createTexture2D(textureWidth, textureHeight, internalFormat, filter)
        val buffer = ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
        buffer.asFloatBuffer().put(values)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, Float.SIZE_BYTES)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            textureWidth,
            textureHeight,
            format,
            GLES30.GL_FLOAT,
            buffer,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("createFloatTexture")
        return texture
    }

    private fun createFramebuffer(): Int {
        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        framebuffers += ids[0]
        return ids[0]
    }

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, name), unit)
    }

    private fun linkGraphicsProgram(vertexSource: String, fragmentSource: String, name: String): Int {
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, vertexSource, "$name vertex")
        val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource, "$name fragment")
        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vertexShader)
        GLES30.glAttachShader(program, fragmentShader)
        GLES30.glLinkProgram(program)
        val linked = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (linked[0] == 0) {
            val log = GLES30.glGetProgramInfoLog(program)
            GLES30.glDeleteProgram(program)
            throw IllegalStateException("Program $name linking failed: $log")
        }
        programs += program
        return program
    }

    private fun compileShader(type: Int, source: String, name: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val log = GLES30.glGetShaderInfoLog(shader)
            GLES30.glDeleteShader(shader)
            throw IllegalStateException("Shader $name compilation failed: $log")
        }
        return shader
    }

    private fun checkFramebuffer(label: String) {
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            throw IllegalStateException("$label framebuffer incomplete: 0x${status.toString(16)}")
        }
    }

    private fun checkGlError(label: String) {
        var error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            val first = error
            while (error != GLES30.GL_NO_ERROR) {
                error = GLES30.glGetError()
            }
            throw IllegalStateException("$label GL error: 0x${first.toString(16)}")
        }
    }

    private fun release() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            if (programs.isNotEmpty()) {
                for (program in programs) {
                    GLES30.glDeleteProgram(program)
                }
            }
            if (textures.isNotEmpty()) {
                GLES30.glDeleteTextures(textures.size, textures.toIntArray(), 0)
            }
            if (framebuffers.isNotEmpty()) {
                GLES30.glDeleteFramebuffers(framebuffers.size, framebuffers.toIntArray(), 0)
            }
            EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
            if (eglSurface != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(eglDisplay, eglSurface)
            }
            if (eglContext != EGL14.EGL_NO_CONTEXT) {
                EGL14.eglDestroyContext(eglDisplay, eglContext)
            }
            EGL14.eglTerminate(eglDisplay)
        }
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
    }

    private fun normalizeRotation(degrees: Int): Int {
        val normalized = ((degrees % 360) + 360) % 360
        return when (normalized) {
            90, 180, 270 -> normalized
            else -> 0
        }
    }

    private fun computeNormalizeTransform(outputScale: Float = 1.0f): FloatArray {
        val sensorWidth = width.toFloat()
        val sensorHeight = height.toFloat()
        val coordinateScale = 1.0f / outputScale.coerceAtLeast(1.0f)
        val rotatedWidth = if (normalizedRotation == 90 || normalizedRotation == 270) height else width
        val rotatedHeight = if (normalizedRotation == 90 || normalizedRotation == 270) width else height
        val refOutputWidth = referenceOutputWidth(outputScale)
        val refOutputHeight = referenceOutputHeight(outputScale)
        val cropX = (((rotatedWidth - refOutputWidth).coerceAtLeast(0)) / 4 * 2).toFloat()
        val cropY = (((rotatedHeight - refOutputHeight).coerceAtLeast(0)) / 4 * 2).toFloat()
        return when (normalizedRotation) {
            90 -> floatArrayOf(
                0.0f, coordinateScale, cropY,
                -coordinateScale, 0.0f, sensorHeight - coordinateScale - cropX,
            )
            180 -> floatArrayOf(
                -coordinateScale, 0.0f, sensorWidth - coordinateScale - cropX,
                0.0f, -coordinateScale, sensorHeight - coordinateScale - cropY,
            )
            270 -> floatArrayOf(
                0.0f, -coordinateScale, sensorWidth - coordinateScale - cropY,
                coordinateScale, 0.0f, cropX,
            )
            else -> floatArrayOf(
                coordinateScale, 0.0f, cropX,
                0.0f, coordinateScale, cropY,
            )
        }
    }

    private fun computeRenderTransform(outputScale: Float = 1.0f): FloatArray {
        return if (!cpuRotateReadback) {
            computeNormalizeTransform(outputScale)
        } else {
            val offset = computeDirectSourceOffset(outputScale)
            val offsetX = offset[0].toFloat()
            val offsetY = offset[1].toFloat()
            val coordinateScale = 1.0f / outputScale.coerceAtLeast(1.0f)
            floatArrayOf(
                coordinateScale, 0.0f, offsetX,
                0.0f, coordinateScale, offsetY,
            )
        }
    }

    private fun computeDirectSourceOffset(outputScale: Float = 1.0f): IntArray {
        if (!cpuRotateReadback) {
            return intArrayOf(0, 0)
        }
        val referenceRenderOutputWidth = referenceOutputWidth(outputScale)
        val referenceRenderOutputHeight = referenceOutputHeight(outputScale)
        val referenceGpuOutputWidth = if (cpuRotateReadback) referenceRenderOutputHeight else referenceRenderOutputWidth
        val referenceGpuOutputHeight = if (cpuRotateReadback) referenceRenderOutputWidth else referenceRenderOutputHeight
        val rotatedWidth = if (normalizedRotation == 90 || normalizedRotation == 270) height else width
        val rotatedHeight = if (normalizedRotation == 90 || normalizedRotation == 270) width else height
        val cropX = ((rotatedWidth - referenceRenderOutputWidth).coerceAtLeast(0) / 4) * 2
        val cropY = ((rotatedHeight - referenceRenderOutputHeight).coerceAtLeast(0) / 4) * 2
        return when (normalizedRotation) {
            90 -> intArrayOf(
                cropY,
                height - cropX - referenceGpuOutputHeight,
            )
            270 -> intArrayOf(
                width - cropY - referenceGpuOutputWidth,
                cropX,
            )
            else -> intArrayOf(0, 0)
        }
    }

    private fun referenceOutputWidth(outputScale: Float): Int {
        return max(1, (renderOutputWidth.toFloat() / outputScale.coerceAtLeast(1.0f)).roundToInt())
    }

    private fun referenceOutputHeight(outputScale: Float): Int {
        return max(1, (renderOutputHeight.toFloat() / outputScale.coerceAtLeast(1.0f)).roundToInt())
    }

    private fun Float.formatScale(): String {
        return if (isFinite()) {
            java.lang.String.format(java.util.Locale.US, "%.2f", this)
        } else {
            "n/a"
        }
    }

    private fun Long.mibString(): String {
        return java.lang.String.format(java.util.Locale.US, "%.1fMiB", this.toDouble() / (1024.0 * 1024.0))
    }

    private fun alignmentGridWidth(level: TextureLevel, tileStride: Int): Int =
        alignmentGridExtent(
            ceilDiv(guideWidth, level.scaleToGuidePixels.toInt()),
            tileStride,
        )

    private fun alignmentGridHeight(level: TextureLevel, tileStride: Int): Int =
        alignmentGridExtent(
            ceilDiv(guideHeight, level.scaleToGuidePixels.toInt()),
            tileStride,
        )

    private fun alignmentGridExtent(nominalExtent: Int, tileStride: Int): Int =
        max(1, ceilDiv(nominalExtent, tileStride) - 2)

    private fun roundGlobalAlignmentBin(value: Float): Int = if (value >= 0f) {
        kotlin.math.floor(value.toDouble() + 0.5).toInt()
    } else {
        kotlin.math.ceil(value.toDouble() - 0.5).toInt()
    }

    private fun ceilDiv(value: Int, divisor: Int): Int =
        ceil(value.toDouble() / divisor.toDouble()).toInt().coerceAtLeast(1)

    private fun gaussianKernel(size: Int, sigma: Float): FloatArray {
        require(size > 0 && sigma.isFinite() && sigma > 0f)
        val center = (size - 1) / 2
        val denominator = 2.0 * sigma.toDouble() * sigma.toDouble()
        val values = DoubleArray(size) { index ->
            val distance = (index - center).toDouble()
            exp(-(distance * distance) / denominator)
        }
        val sum = values.sum()
        return FloatArray(size) { index -> (values[index] / sum).toFloat() }
    }

    companion object {
        private const val TAG = "GlesYuvStacker"

        private const val EGL_OPENGL_ES3_BIT_KHR = 0x00000040
        private const val HDR_BRACKET_FRAME_COUNT = 3
        private const val HDR_BRACKET_ZERO_INDEX = 0
        private const val GUIDE_DOWNSAMPLE = 2
        private const val MERGE_TILE_SIZE = 16
        private const val ALIGN_LK_ITERATIONS_FINEST = 2
        private const val ALIGN_LK_ITERATIONS_COARSER = 3
        private const val ALIGN_LK_GRID_MIN = 1
        private const val MERGE_ALIGNMENT_GRID_MIN = 0
        private const val GLOBAL_ALIGNMENT_RADIUS = 64
        private const val GLOBAL_ALIGNMENT_HISTOGRAM_SIZE = GLOBAL_ALIGNMENT_RADIUS * 2 + 1
        private const val GLOBAL_ALIGNMENT_MIN_PEAK_SUPPORT = 10
        private val ALIGN_PYRAMID_DOWNSAMPLE_STEPS = intArrayOf(2, 4, 4)
        private val ALIGN_LEVEL_TILE_STRIDES = intArrayOf(32, 32, 16, 8)
        private const val NOISE_ALPHA = 0.005f
        private const val NOISE_BETA = 0.001f
        private const val GUIDE_CLIPPING_POINT = 0.99f
        private const val SPATIAL_BASE_SCALE = 0.32f
        private const val PIXEL_DIFFERENCE_KERNEL_SIZE = 20
        private const val PIXEL_DIFFERENCE_SMOOTH_SIGMA = 500f
        private const val PIXEL_DIFFERENCE_THRESHOLD = 150f
        private const val REJECTION_FILTER_DOWNSAMPLE = 4
        private const val REJECTION_FILTER_COLOR_SIGMA = 0.00005f
        private const val REJECTION_FILTER_SPATIAL_SIGMA = 4f
        private const val REJECTION_FILTER_COLOR_SIGMA_BOOST = 500f
        private const val REJECTION_FILTER_MAX_RADIUS = 3
        private const val REJECTION_CLIPPED_THRESHOLD = 3f
        private const val DEFAULT_MERTENS_CONTRAST_WEIGHT = 1.0f
        private const val DEFAULT_MERTENS_SATURATION_WEIGHT = 1.0f
        private const val DEFAULT_MERTENS_EXPOSURE_WEIGHT = 1.0f
        private const val SUPER_RESOLUTION_SCALE = 2.0f

        fun supportsImageFormat(format: Int): Boolean {
            return format == ImageFormat.YUV_420_888 || format == ImageFormat.YCBCR_P010
        }

        private fun formatName(format: Int): String {
            return when (format) {
                ImageFormat.YUV_420_888 -> "YUV_420_888"
                ImageFormat.YCBCR_P010 -> "YCBCR_P010"
                else -> format.toString()
            }
        }

        private val FULLSCREEN_VERTEX_SHADER = """
            #version 300 es
            precision highp float;
            out vec2 vTexCoord;
            void main() {
                vec2 positions[3] = vec2[3](
                    vec2(-1.0, -1.0),
                    vec2( 3.0, -1.0),
                    vec2(-1.0,  3.0)
                );
                vec2 texCoords[3] = vec2[3](
                    vec2(0.0, 0.0),
                    vec2(2.0, 0.0),
                    vec2(0.0, 2.0)
                );
                gl_Position = vec4(positions[gl_VertexID], 0.0, 1.0);
                vTexCoord = texCoords[gl_VertexID];
            }
        """.trimIndent()

        private val P010_LUMA_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp usampler2D;
            uniform usampler2D uInput;
            uniform ivec2 uSize;
            out float outY;

            void main() {
                ivec2 p = clamp(ivec2(gl_FragCoord.xy), ivec2(0), uSize - ivec2(1));
                outY = float(texelFetch(uInput, p, 0).r) * (1.0 / 65535.0);
            }
        """.trimIndent()

        private val P010_CHROMA_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp usampler2D;
            uniform usampler2D uInput;
            uniform ivec2 uSize;
            out vec2 outCbCr;

            void main() {
                ivec2 p = clamp(ivec2(gl_FragCoord.xy), ivec2(0), uSize - ivec2(1));
                uvec2 cbcr = texelFetch(uInput, p, 0).rg;
                outCbCr = vec2(float(cbcr.r), float(cbcr.g)) * (1.0 / 65535.0);
            }
        """.trimIndent()

        private val PLANAR_CHROMA_8_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uCb;
            uniform sampler2D uCr;
            uniform ivec2 uCbSize;
            uniform ivec2 uCrSize;
            uniform int uCbStep;
            uniform int uCrStep;
            out vec2 outCbCr;

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                ivec2 cbP = clamp(ivec2(p.x * uCbStep, p.y), ivec2(0), uCbSize - ivec2(1));
                ivec2 crP = clamp(ivec2(p.x * uCrStep, p.y), ivec2(0), uCrSize - ivec2(1));
                outCbCr = vec2(texelFetch(uCb, cbP, 0).r, texelFetch(uCr, crP, 0).r);
            }
        """.trimIndent()

        private val PLANAR_CHROMA_16_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp usampler2D;
            uniform usampler2D uCb;
            uniform usampler2D uCr;
            uniform ivec2 uCbSize;
            uniform ivec2 uCrSize;
            uniform int uCbStep;
            uniform int uCrStep;
            out vec2 outCbCr;

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                ivec2 cbP = clamp(ivec2(p.x * uCbStep, p.y), ivec2(0), uCbSize - ivec2(1));
                ivec2 crP = clamp(ivec2(p.x * uCrStep, p.y), ivec2(0), uCrSize - ivec2(1));
                outCbCr = vec2(
                    float(texelFetch(uCb, cbP, 0).r),
                    float(texelFetch(uCr, crP, 0).r)
                ) * (1.0 / 65535.0);
            }
        """.trimIndent()

        private val DOWNSAMPLE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uInput;
            uniform ivec2 uInputSize;
            out vec4 fragColor;

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                ivec2 src = p * 2;
                float sum = 0.0;
                for (int y = 0; y < 2; ++y) {
                    for (int x = 0; x < 2; ++x) {
                        ivec2 q = clamp(src + ivec2(x, y), ivec2(0), uInputSize - ivec2(1));
                        sum += texelFetch(uInput, q, 0).r;
                    }
                }
                float v = sum * 0.25;
                fragColor = vec4(v, 0.0, 0.0, 1.0);
            }
        """.trimIndent()

        private val STRUCTURE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uLuma;
            uniform ivec2 uImageSize;
            uniform float uNoiseAlpha;
            uniform float uNoiseBeta;
            out vec4 fragColor;

            float readY(ivec2 p) {
                p = clamp(p, ivec2(0), uImageSize - ivec2(1));
                return texelFetch(uLuma, p, 0).r;
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                float sIxIx = 0.0;
                float sIyIy = 0.0;
                float sIxIy = 0.0;
                for (int y = -2; y <= 2; ++y) {
                    for (int x = -2; x <= 2; ++x) {
                        ivec2 q = p + ivec2(x, y);
                        float ix = 0.5 * (readY(q + ivec2(1, 0)) - readY(q - ivec2(1, 0)));
                        float iy = 0.5 * (readY(q + ivec2(0, 1)) - readY(q - ivec2(0, 1)));
                        sIxIx += ix * ix;
                        sIyIy += iy * iy;
                        sIxIy += ix * iy;
                    }
                }

                float jxx = sIxIx / 25.0;
                float jyy = sIyIy / 25.0;
                float jxy = sIxIy / 25.0;
                float trace = jxx + jyy;
                float diff = jxx - jyy;
                float root = sqrt(max(diff * diff + 4.0 * jxy * jxy, 0.0));
                float lambda1 = 0.5 * (trace + root);
                float lambda2 = 0.5 * (trace - root);

                float noiseVar = uNoiseAlpha * 0.5 + max(uNoiseBeta, 1e-10);
                float snr = lambda1 / max(2.0 * noiseVar * 9.0, 1e-12);
                float flatness = 1.0 - smoothstep(0.35, 4.0, snr);
                float anisotropy = 1.0 + sqrt(max(lambda1 - lambda2, 0.0) / max(lambda1 + lambda2, 1e-7));

                float kDetail = 0.30;
                float kDenoise = 1.0;
                float kShrink = 3.0;
                float kStretch = 5.0;
                float k1Base = anisotropy > 1.6 ? 1.0 / kShrink : 1.0;
                float k2Base = anisotropy > 1.6 ? kStretch : 1.0;
                float preK1 = kDetail * mix(k1Base, kDenoise, flatness);
                float preK2 = kDetail * mix(k2Base, kDenoise, flatness);
                float k1 = 1.0 / max(preK1 * preK1, 1e-7);
                float k2 = 1.0 / max(preK2 * preK2, 1e-7);

                float len = sqrt(max(diff * diff + 4.0 * jxy * jxy, 0.0));
                float cos2t = len < 1e-9 ? 1.0 : diff / len;
                float sin2t = len < 1e-9 ? 0.0 : 2.0 * jxy / len;
                fragColor = vec4(k1, k2, cos2t, sin2t);
            }
        """.trimIndent()

        private val ALIGN_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform ivec2 uLevelSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform int uAlignWindowSize;
            uniform int uLevelScale;
            uniform int uSearchRadius;
            uniform int uSampleStep;
            uniform float uCurrentToReferenceScale;
            out vec4 fragColor;

            float readTex(sampler2D tex, ivec2 p) {
                p = clamp(p, ivec2(0), uLevelSize - ivec2(1));
                return texelFetch(tex, p, 0).r;
            }

            float readCurrentForReference(ivec2 p) {
                return clamp(readTex(uCurrent, p) * uCurrentToReferenceScale, 0.0, 1.0);
            }

            void main() {
                ivec2 tile = ivec2(gl_FragCoord.xy);
                ivec2 fullCenter = tile * uTileSize;
                ivec2 levelCenter = fullCenter / uLevelScale;
                int levelTile = max(4, uAlignWindowSize / uLevelScale);
                ivec2 levelStart = levelCenter - ivec2(levelTile / 2);
                float bestSad = 1e20;
                ivec2 bestShift = ivec2(0);

                for (int dy = -uSearchRadius; dy <= uSearchRadius; ++dy) {
                    for (int dx = -uSearchRadius; dx <= uSearchRadius; ++dx) {
                        float sad = 0.0;
                        float count = 0.0;
                        for (int sy = 1; sy < levelTile - 1; sy += uSampleStep) {
                            for (int sx = 1; sx < levelTile - 1; sx += uSampleStep) {
                                ivec2 rp = levelStart + ivec2(sx, sy);
                                ivec2 cp = rp + ivec2(dx, dy);
                                float rv = readTex(uReference, rp);
                                float cv = readCurrentForReference(cp);
                                sad += abs(rv - cv);
                                count += 1.0;
                            }
                        }
                        sad /= max(count, 1.0);
                        float shiftPenalty = 0.0006 * float(dx * dx + dy * dy);
                        sad += shiftPenalty;
                        if (sad < bestSad) {
                            bestSad = sad;
                            bestShift = ivec2(dx, dy);
                        }
                    }
                }

                vec2 flow = vec2(bestShift) * float(uLevelScale);
                fragColor = vec4(flow, 0.0, 1.0);
            }
        """.trimIndent()

        private val SMOOTH_FLOW_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uInputFlow;
            uniform ivec2 uGridSize;
            uniform float uOutlierThreshold;
            out vec4 fragColor;

            vec2 readFlow(ivec2 p) {
                p = clamp(p, ivec2(0), uGridSize - ivec2(1));
                return texelFetch(uInputFlow, p, 0).rg;
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec2 center = readFlow(p);
                vec2 sum = center * 4.0;
                float weight = 4.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        if (x == 0 && y == 0) {
                            continue;
                        }
                        vec2 f = readFlow(p + ivec2(x, y));
                        float d = length(f - center);
                        float w = d > uOutlierThreshold ? 0.15 : 1.0;
                        sum += f * w;
                        weight += w;
                    }
                }
                fragColor = vec4(sum / weight, 0.0, 1.0);
            }
        """.trimIndent()

        private val ROBUSTNESS_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uReferenceY;
            uniform sampler2D uReferenceCbCr;
            uniform sampler2D uCurrentY;
            uniform sampler2D uCurrentCbCr;
            uniform sampler2D uFlowGrid;
            uniform ivec2 uImageSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform float uNoiseAlpha;
            uniform float uNoiseBeta;
            uniform float uCurrentToReferenceScale;
            out vec4 fragColor;

            vec2 flowAt(vec2 pixel) {
                vec2 grid = pixel / float(uTileSize);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0))).rg;
            }

            float refY(ivec2 p) {
                p = clamp(p, ivec2(0), uImageSize - ivec2(1));
                return texelFetch(uReferenceY, p, 0).r;
            }

            float curYRaw(vec2 pixel) {
                vec2 uv = (pixel + vec2(0.5)) / vec2(uImageSize);
                return texture(uCurrentY, clamp(uv, vec2(0.0), vec2(1.0))).r;
            }

            float curYNorm(vec2 pixel) {
                return clamp(curYRaw(pixel) * uCurrentToReferenceScale, 0.0, 1.0);
            }

            vec2 chromaUv(vec2 pixel) {
                ivec2 chromaSize = (uImageSize + ivec2(1)) / 2;
                vec2 chromaPixel = floor(pixel * 0.5);
                return clamp((chromaPixel + vec2(0.5)) / vec2(chromaSize), vec2(0.0), vec2(1.0));
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec2 flow = flowAt(vec2(p));
                vec2 curPixel = vec2(p) + flow;
                if (curPixel.x < 1.0 || curPixel.y < 1.0 ||
                    curPixel.x > float(uImageSize.x - 2) || curPixel.y > float(uImageSize.y - 2)) {
                    fragColor = vec4(0.0);
                    return;
                }

                float center = refY(p);
                float gx = refY(p + ivec2(1, 0)) - refY(p - ivec2(1, 0));
                float gy = refY(p + ivec2(0, 1)) - refY(p - ivec2(0, 1));
                float localVar = 0.0;
                float minR = 1.0;
                float sumR = 0.0;

                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        ivec2 rp = p + ivec2(x, y);
                        float ry = refY(rp);
                        vec2 cp = curPixel + vec2(x, y);
                        float cy = curYNorm(cp);
                        float d = ry - cy;
                        float sigmaNoise = max(uNoiseAlpha * max(ry, 0.05) + uNoiseBeta, 1e-10);
                        float sigma = max(sigmaNoise, 0.0004);
                        float residual = max(0.0, d * d - 2.0 * sigmaNoise) / sigma;
                        float r = exp(-0.5 * pow(residual, 4.0));
                        minR = min(minR, r);
                        sumR += r;
                        float dc = ry - center;
                        localVar += dc * dc;
                    }
                }

                localVar /= 9.0;
                float edgeStrength = sqrt((gx * gx + gy * gy) / max(localVar + uNoiseBeta, 1e-6));
                float edgeRelax = smoothstep(1.2, 5.0, edgeStrength);

                vec2 refC = texture(uReferenceCbCr, chromaUv(vec2(p))).rg;
                vec2 curC = texture(uCurrentCbCr, chromaUv(curPixel)).rg;
                float chromaResidual = dot(refC - curC, refC - curC);
                float chromaPenalty = exp(-chromaResidual / 0.018);

                float flowPenalty = length(flow) > 15.0 ? exp(-0.1 * (length(flow) - 15.0)) : 1.0;
                float avgR = sumR / 9.0;
                float centerMix = mix(0.35, 0.55, edgeRelax);
                float minMix = mix(0.35, 0.15, edgeRelax);
                float robust = (minR * minMix + avgR * (1.0 - minMix)) * chromaPenalty * flowPenalty;
                robust = mix(robust, avgR * chromaPenalty * flowPenalty, centerMix * 0.25);
                float outR = clamp(robust, 0.0, 1.0);
                fragColor = vec4(outR, outR, outR, 1.0);
            }
        """.trimIndent()

        private val TILE_MASK_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uReferenceY;
            uniform sampler2D uRobustness;
            uniform ivec2 uImageSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            out vec4 fragColor;

            float readY(ivec2 p) {
                p = clamp(p, ivec2(0), uImageSize - ivec2(1));
                return texelFetch(uReferenceY, p, 0).r;
            }

            void main() {
                ivec2 tile = ivec2(gl_FragCoord.xy);
                ivec2 start = tile * uTileSize;
                float robustSum = 0.0;
                float weakCount = 0.0;
                float detailSum = 0.0;
                float count = 0.0;

                for (int y = 0; y < uTileSize; y += 4) {
                    for (int x = 0; x < uTileSize; x += 4) {
                        ivec2 p = start + ivec2(x, y);
                        if (p.x >= uImageSize.x || p.y >= uImageSize.y) {
                            continue;
                        }
                        float r = texelFetch(uRobustness, p, 0).r;
                        float c = readY(p);
                        float detail = abs(readY(p + ivec2(1, 0)) - readY(p - ivec2(1, 0))) +
                            abs(readY(p + ivec2(0, 1)) - readY(p - ivec2(0, 1))) +
                            0.5 * abs(4.0 * c - readY(p + ivec2(1, 0)) - readY(p - ivec2(1, 0)) -
                                readY(p + ivec2(0, 1)) - readY(p - ivec2(0, 1)));
                        robustSum += r;
                        weakCount += r < 0.5 ? 1.0 : 0.0;
                        detailSum += detail;
                        count += 1.0;
                    }
                }

                float meanR = robustSum / max(count, 1.0);
                float weak = weakCount / max(count, 1.0);
                float detail = detailSum / max(count, 1.0);
                float robustNorm = clamp((meanR - 0.58) / 0.24, 0.0, 1.0);
                float weakPenalty = clamp(1.0 - max(0.0, weak - 0.10) / 0.30, 0.0, 1.0);
                float detailBoost = detail > 0.055 ? 1.0 : (detail > 0.025 ? 0.70 : 0.35);
                float mask = clamp((0.55 * robustNorm + 0.45 * weakPenalty) * (0.55 + 0.45 * detailBoost), 0.0, 1.0);
                if (detail > 0.055) {
                    mask = max(mask, 0.35);
                } else if (detail > 0.025) {
                    mask = max(mask, 0.20);
                }
                fragColor = vec4(mask, mask, mask, 1.0);
            }
        """.trimIndent()

        private val ACCUMULATE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uCurrentY;
            uniform sampler2D uCurrentCbCr;
            uniform sampler2D uFlowGrid;
            uniform sampler2D uRobustness;
            uniform sampler2D uTileMask;
            uniform sampler2D uKernel;
            uniform sampler2D uAccumulatorInput;
            uniform ivec2 uImageSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform int uIsReference;
            uniform float uFrameWeight;
            out vec4 fragColor;

            vec2 flowAt(vec2 pixel) {
                vec2 grid = pixel / float(uTileSize);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0))).rg;
            }

            vec2 gridUv(vec2 pixel) {
                return clamp((pixel / float(uTileSize) + vec2(0.5)) / vec2(uGridSize), vec2(0.0), vec2(1.0));
            }

            float kernelWeight(vec2 tap, vec4 kp) {
                float cosT = sqrt(max(0.0, 0.5 * (1.0 + kp.z)));
                float sinT = sign(kp.w) * sqrt(max(0.0, 0.5 * (1.0 - kp.z)));
                float u = cosT * tap.x + sinT * tap.y;
                float v = -sinT * tap.x + cosT * tap.y;
                float e = 0.25 * (kp.x * u * u + kp.y * v * v);
                return exp(-0.5 * e);
            }

            vec3 sampleYcc(vec2 pixel) {
                vec2 uv = (pixel + vec2(0.5)) / vec2(uImageSize);
                uv = clamp(uv, vec2(0.0), vec2(1.0));
                float y = texture(uCurrentY, uv).r;
                ivec2 chromaSize = (uImageSize + ivec2(1)) / 2;
                vec2 chromaPixel = floor(pixel * 0.5);
                vec2 chromaUv = clamp((chromaPixel + vec2(0.5)) / vec2(chromaSize), vec2(0.0), vec2(1.0));
                vec2 cbcr = texture(uCurrentCbCr, chromaUv).rg;
                return vec3(y, cbcr);
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec4 prev = texelFetch(uAccumulatorInput, p, 0);
                if (uIsReference != 0) {
                    vec3 ycc = sampleYcc(vec2(p));
                    float weight = max(uFrameWeight, 1e-6);
                    fragColor = prev + vec4(ycc * weight, weight);
                    return;
                }

                vec2 flow = flowAt(vec2(p));
                vec2 source = vec2(p) + flow;
                if (source.x < 1.0 || source.y < 1.0 ||
                    source.x > float(uImageSize.x - 2) || source.y > float(uImageSize.y - 2)) {
                    fragColor = prev;
                    return;
                }

                vec2 uv = (vec2(p) + vec2(0.5)) / vec2(uImageSize);
                float robust = texture(uRobustness, uv).r;
                float local = texture(uTileMask, gridUv(vec2(p))).r;
                float baseWeight = uFrameWeight * local * max(robust, 0.01 * local);
                if (baseWeight <= 0.001) {
                    fragColor = prev;
                    return;
                }

                vec4 kp = texelFetch(uKernel, p, 0);
                vec3 sum = vec3(0.0);
                float weight = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        vec2 tap = vec2(x, y);
                        float kw = kernelWeight(tap, kp);
                        vec3 ycc = sampleYcc(source + tap);
                        float w = baseWeight * kw;
                        sum += ycc * w;
                        weight += w;
                    }
                }

                if (weight > 1e-5) {
                    fragColor = prev + vec4(sum, weight);
                } else {
                    fragColor = prev;
                }
            }
        """.trimIndent()

        private val SUPER_RESOLUTION_ACCUMULATE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uCurrentY;
            uniform sampler2D uCurrentCbCr;
            uniform sampler2D uFlowGrid;
            uniform sampler2D uRobustness;
            uniform sampler2D uTileMask;
            uniform sampler2D uKernel;
            uniform sampler2D uAccumulatorInput;
            uniform ivec2 uInputSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform int uIsReference;
            uniform float uFrameWeight;
            uniform float uSrSplatRadius;
            uniform vec3 uTransformX;
            uniform vec3 uTransformY;
            out vec4 fragColor;

            vec2 referencePixel(ivec2 outP) {
                return vec2(
                    float(outP.x) * uTransformX.x + float(outP.y) * uTransformX.y + uTransformX.z,
                    float(outP.x) * uTransformY.x + float(outP.y) * uTransformY.y + uTransformY.z
                );
            }

            bool validInput(vec2 pixel) {
                return pixel.x >= 0.0 && pixel.y >= 0.0 &&
                    pixel.x <= float(uInputSize.x - 1) &&
                    pixel.y <= float(uInputSize.y - 1);
            }

            vec2 flowAt(vec2 pixel) {
                vec2 grid = pixel / float(uTileSize);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                return texture(uFlowGrid, clamp(uv, vec2(0.0), vec2(1.0))).rg;
            }

            vec2 gridUv(vec2 pixel) {
                return clamp((pixel / float(uTileSize) + vec2(0.5)) / vec2(uGridSize), vec2(0.0), vec2(1.0));
            }

            vec2 inputUv(vec2 pixel) {
                return clamp((pixel + vec2(0.5)) / vec2(uInputSize), vec2(0.0), vec2(1.0));
            }

            vec3 sampleYcc(vec2 pixel) {
                float y = texture(uCurrentY, inputUv(pixel)).r;
                ivec2 chromaSize = (uInputSize + ivec2(1)) / 2;
                vec2 chromaPixel = floor(pixel * 0.5);
                vec2 chromaUv = clamp((chromaPixel + vec2(0.5)) / vec2(chromaSize), vec2(0.0), vec2(1.0));
                vec2 cbcr = texture(uCurrentCbCr, chromaUv).rg;
                return vec3(y, cbcr);
            }

            float kernelWeight(vec2 tap, vec4 kp) {
                float cosT = sqrt(max(0.0, 0.5 * (1.0 + kp.z)));
                float sinT = sign(kp.w) * sqrt(max(0.0, 0.5 * (1.0 - kp.z)));
                float u = cosT * tap.x + sinT * tap.y;
                float v = -sinT * tap.x + cosT * tap.y;
                float e = 0.25 * (kp.x * u * u + kp.y * v * v);
                return exp(-0.5 * e);
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec4 prev = texelFetch(uAccumulatorInput, p, 0);
                vec2 refPixel = referencePixel(p);
                if (!validInput(refPixel)) {
                    fragColor = prev;
                    return;
                }

                if (uIsReference != 0) {
                    float weight = max(uFrameWeight, 1e-6);
                    vec3 ycc = sampleYcc(refPixel);
                    fragColor = prev + vec4(ycc * weight, weight);
                    return;
                }

                vec2 flow = flowAt(refPixel);
                vec2 source = refPixel + flow;
                if (source.x < 1.0 || source.y < 1.0 ||
                    source.x > float(uInputSize.x - 2) || source.y > float(uInputSize.y - 2)) {
                    fragColor = prev;
                    return;
                }

                float robust = texture(uRobustness, inputUv(refPixel)).r;
                float local = texture(uTileMask, gridUv(refPixel)).r;
                float baseWeight = uFrameWeight * local * max(robust, 0.01 * local);
                if (baseWeight <= 0.001) {
                    fragColor = prev;
                    return;
                }

                ivec2 kernelCoord = clamp(ivec2(floor(refPixel + vec2(0.5))), ivec2(0), uInputSize - ivec2(1));
                vec4 kp = texelFetch(uKernel, kernelCoord, 0);
                vec3 sum = vec3(0.0);
                float weight = 0.0;
                float radius = max(uSrSplatRadius, 0.25);
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        vec2 tap = vec2(x, y);
                        vec2 offset = tap * radius;
                        float kw = kernelWeight(offset, kp);
                        vec3 ycc = sampleYcc(source + offset);
                        float w = baseWeight * kw;
                        sum += ycc * w;
                        weight += w;
                    }
                }

                if (weight > 1e-5) {
                    fragColor = prev + vec4(sum, weight);
                } else {
                    fragColor = prev;
                }
            }
        """.trimIndent()

        private val SUPER_RESOLUTION_NORMALIZE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uSrAccumulator;
            uniform sampler2D uBaseAccumulator;
            uniform ivec2 uInputSize;
            uniform ivec2 uOutputSize;
            uniform vec3 uTransformX;
            uniform vec3 uTransformY;
            uniform float uNoiseBeta;
            uniform float uMinDetailWeight;
            uniform int uIsP010;
            out vec4 fragColor;

            vec2 referencePixel(ivec2 outP) {
                return vec2(
                    float(outP.x) * uTransformX.x + float(outP.y) * uTransformX.y + uTransformX.z,
                    float(outP.x) * uTransformY.x + float(outP.y) * uTransformY.y + uTransformY.z
                );
            }

            vec4 readBaseAccumulator(ivec2 p) {
                p = clamp(p, ivec2(0), uInputSize - ivec2(1));
                return texelFetch(uBaseAccumulator, p, 0);
            }

            vec3 yccFromAccumulator(vec4 a) {
                if (a.a <= 1e-4) {
                    return vec3(0.0, 0.5, 0.5);
                }
                return clamp(a.rgb / a.a, vec3(0.0), vec3(1.0));
            }

            vec3 baseYccAt(ivec2 p) {
                return yccFromAccumulator(readBaseAccumulator(p));
            }

            float baseWeightAt(ivec2 p) {
                return readBaseAccumulator(p).a;
            }

            vec3 sampleBaseYcc(vec2 pixel) {
                vec2 pos = clamp(pixel, vec2(0.0), vec2(uInputSize - ivec2(1)));
                ivec2 p0 = ivec2(floor(pos));
                ivec2 p1 = min(p0 + ivec2(1), uInputSize - ivec2(1));
                vec2 f = pos - vec2(p0);
                vec3 v00 = baseYccAt(p0);
                vec3 v10 = baseYccAt(ivec2(p1.x, p0.y));
                vec3 v01 = baseYccAt(ivec2(p0.x, p1.y));
                vec3 v11 = baseYccAt(p1);
                return mix(mix(v00, v10, f.x), mix(v01, v11, f.x), f.y);
            }

            float sampleBaseWeight(vec2 pixel) {
                vec2 pos = clamp(pixel, vec2(0.0), vec2(uInputSize - ivec2(1)));
                ivec2 p0 = ivec2(floor(pos));
                ivec2 p1 = min(p0 + ivec2(1), uInputSize - ivec2(1));
                vec2 f = pos - vec2(p0);
                float v00 = baseWeightAt(p0);
                float v10 = baseWeightAt(ivec2(p1.x, p0.y));
                float v01 = baseWeightAt(ivec2(p0.x, p1.y));
                float v11 = baseWeightAt(p1);
                return mix(mix(v00, v10, f.x), mix(v01, v11, f.x), f.y);
            }

            vec3 yccToRgb(vec3 ycc) {
                float y = ycc.x;
                float cb = ycc.y - 0.5;
                float cr = ycc.z - 0.5;
                if (uIsP010 != 0) {
                    return vec3(
                        y + 1.4746 * cr,
                        y - 0.16455 * cb - 0.57135 * cr,
                        y + 1.8814 * cb
                    );
                }
                return vec3(
                    y + 1.402 * cr,
                    y - 0.344136 * cb - 0.714136 * cr,
                    y + 1.772 * cb
                );
            }

            vec3 denoiseLuma(vec3 ycc, ivec2 p, float baseWeight, float confidence) {
                float mean = 0.0;
                float mean2 = 0.0;
                float count = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        ivec2 q = p + ivec2(x, y);
                        if (q.x < 0 || q.y < 0 || q.x >= uOutputSize.x || q.y >= uOutputSize.y) {
                            continue;
                        }
                        vec4 a = texelFetch(uSrAccumulator, q, 0);
                        float yy = a.a > 1e-4 ? a.r / a.a : ycc.x;
                        mean += yy;
                        mean2 += yy * yy;
                        count += 1.0;
                    }
                }
                mean /= max(count, 1.0);
                mean2 /= max(count, 1.0);
                float variance = max(mean2 - mean * mean, 0.0);
                float noise = uNoiseBeta / max(baseWeight, 1.0);
                float wienerGain = max(variance - noise, 0.0) / max(variance, 1e-6);
                float flatness = 1.0 - smoothstep(0.00035, 0.0055, variance);
                float strength = 0.38 * flatness * (1.0 - 0.55 * confidence);
                ycc.x = mix(ycc.x, mean + wienerGain * (ycc.x - mean), strength);
                return ycc;
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec2 refPixel = referencePixel(p);
                vec3 base = sampleBaseYcc(refPixel);
                float baseWeight = sampleBaseWeight(refPixel);
                vec4 srAccum = texelFetch(uSrAccumulator, p, 0);
                vec3 sr = srAccum.a > 1e-4 ? clamp(srAccum.rgb / srAccum.a, vec3(0.0), vec3(1.0)) : base;
                float detailSupport = max(srAccum.a - 1.0, 0.0);
                float confidence = smoothstep(
                    max(uMinDetailWeight, 0.02),
                    max(uMinDetailWeight * 3.0, 1.35),
                    detailSupport
                );
                vec3 ycc = mix(base, sr, confidence);
                ycc = denoiseLuma(ycc, p, baseWeight, confidence);
                vec3 rgb = clamp(yccToRgb(ycc), vec3(0.0), vec3(1.0));
                fragColor = vec4(rgb, 1.0);
            }
        """.trimIndent()

        private val ALIGNED_FRAME_OUTPUT_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uCurrentY;
            uniform sampler2D uCurrentCbCr;
            uniform ivec2 uInputSize;
            uniform int uIsP010;
            uniform int uDirectSource;
            uniform ivec2 uDirectOffset;
            uniform vec3 uTransformX;
            uniform vec3 uTransformY;
            out vec4 fragColor;

            vec3 sampleYcc(vec2 pixel) {
                vec2 uv = (pixel + vec2(0.5)) / vec2(uInputSize);
                uv = clamp(uv, vec2(0.0), vec2(1.0));
                float y = texture(uCurrentY, uv).r;
                ivec2 chromaSize = (uInputSize + ivec2(1)) / 2;
                vec2 chromaPixel = floor(pixel * 0.5);
                vec2 chromaUv = clamp((chromaPixel + vec2(0.5)) / vec2(chromaSize), vec2(0.0), vec2(1.0));
                vec2 cbcr = texture(uCurrentCbCr, chromaUv).rg;
                return vec3(y, cbcr);
            }

            vec2 referencePixel(ivec2 outP) {
                if (uDirectSource != 0) {
                    ivec2 source = outP + uDirectOffset;
                    return vec2(float(source.x), float(source.y));
                }
                return vec2(
                    float(outP.x) * uTransformX.x + float(outP.y) * uTransformX.y + uTransformX.z,
                    float(outP.x) * uTransformY.x + float(outP.y) * uTransformY.y + uTransformY.z
                );
            }

            vec3 yccToRgb(vec3 ycc) {
                float y = ycc.x;
                float cb = ycc.y - 0.5;
                float cr = ycc.z - 0.5;
                if (uIsP010 != 0) {
                    return vec3(
                        y + 1.4746 * cr,
                        y - 0.16455 * cb - 0.57135 * cr,
                        y + 1.8814 * cb
                    );
                }
                return vec3(
                    y + 1.402 * cr,
                    y - 0.344136 * cb - 0.714136 * cr,
                    y + 1.772 * cb
                );
            }

            void main() {
                ivec2 outP = ivec2(gl_FragCoord.xy);
                vec2 maxInput = vec2(float(uInputSize.x - 1), float(uInputSize.y - 1));
                vec2 source = clamp(referencePixel(outP), vec2(0.0), maxInput);
                vec3 ycc = sampleYcc(source);
                fragColor = vec4(clamp(yccToRgb(ycc), vec3(0.0), vec3(1.0)), 1.0);
            }
        """.trimIndent()

        private val MERTENS_COMMON_PYRAMID_GLSL = """
            int reflect101(int p, int size) {
                if (size <= 1) return 0;
                int period = size * 2 - 2;
                int m = p;
                if (m < 0) m = -m;
                m = m - (m / period) * period;
                return m >= size ? period - m : m;
            }

            float kernel5(int offset) {
                int a = offset < 0 ? -offset : offset;
                if (a == 0) return 6.0;
                if (a == 1) return 4.0;
                return 1.0;
            }

            vec4 pyrUpSample(sampler2D inputTexture, ivec2 dstCoord, ivec2 sourceSize) {
                vec4 sum = vec4(0.0);
                for (int y = -2; y <= 2; y++) {
                    int syNumerator = dstCoord.y - y;
                    if ((syNumerator < 0 ? -syNumerator : syNumerator) - ((syNumerator < 0 ? -syNumerator : syNumerator) / 2) * 2 != 0) {
                        continue;
                    }
                    int sy = reflect101(syNumerator / 2, sourceSize.y);
                    float wy = kernel5(y);
                    for (int x = -2; x <= 2; x++) {
                        int sxNumerator = dstCoord.x - x;
                        if ((sxNumerator < 0 ? -sxNumerator : sxNumerator) - ((sxNumerator < 0 ? -sxNumerator : sxNumerator) / 2) * 2 != 0) {
                            continue;
                        }
                        int sx = reflect101(sxNumerator / 2, sourceSize.x);
                        float wx = kernel5(x);
                        sum += texelFetch(inputTexture, ivec2(sx, sy), 0) * (wx * wy);
                    }
                }
                return sum / 64.0;
            }
        """.trimIndent()

        private val MERTENS_WEIGHT_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uImage;
            uniform sampler2D uReferenceImage;
            uniform ivec2 uImageSize;
            uniform float uContrastWeight;
            uniform float uSaturationWeight;
            uniform float uExposureWeight;
            uniform float uExposureScale;
            uniform int uUseDeghostMask;

            int reflect101(int p, int size) {
                if (size <= 1) return 0;
                int period = size * 2 - 2;
                int m = p;
                if (m < 0) m = -m;
                m = m - (m / period) * period;
                return m >= size ? period - m : m;
            }

            float grayAt(ivec2 coord) {
                int x = reflect101(coord.x, uImageSize.x);
                int y = reflect101(coord.y, uImageSize.y);
                vec3 rgb = texelFetch(uImage, ivec2(x, y), 0).rgb;
                return dot(rgb, vec3(0.299, 0.587, 0.114));
            }

            float luma(vec3 rgb) {
                return dot(rgb, vec3(0.299, 0.587, 0.114));
            }

            float max3(vec3 value) {
                return max(max(value.r, value.g), value.b);
            }

            float deghostValidity(vec3 rgb) {
                float y = luma(rgb);
                float blackGate = smoothstep(0.055, 0.145, y);
                float whiteGate = 1.0 - smoothstep(0.865, 0.975, max3(rgb));
                return clamp(blackGate * whiteGate, 0.0, 1.0);
            }

            float highlightValidity(vec3 rgb) {
                // Fusion happens after YCbCr-to-RGB conversion has clamped every
                // channel to [0, 1]. Once any channel reaches the shoulder there
                // is no reliable chroma left in that exposure. Reject the clipped
                // observation and let a shorter exposure provide the highlight.
                return 1.0 - smoothstep(0.960, 0.995, max3(rgb));
            }

            float referenceStructure(ivec2 coord) {
                float c = luma(texelFetch(uReferenceImage, coord, 0).rgb);
                float l = luma(texelFetch(uReferenceImage, ivec2(reflect101(coord.x - 1, uImageSize.x), coord.y), 0).rgb);
                float r = luma(texelFetch(uReferenceImage, ivec2(reflect101(coord.x + 1, uImageSize.x), coord.y), 0).rgb);
                float u = luma(texelFetch(uReferenceImage, ivec2(coord.x, reflect101(coord.y - 1, uImageSize.y)), 0).rgb);
                float d = luma(texelFetch(uReferenceImage, ivec2(coord.x, reflect101(coord.y + 1, uImageSize.y)), 0).rgb);
                float gradient = abs(r - l) + abs(d - u);
                float laplacian = abs(l + r + u + d - 4.0 * c);
                return smoothstep(0.030, 0.095, gradient + 0.5 * laplacian);
            }

            float censusMismatch(ivec2 coord, float refCenter, float sideCenter) {
                float mismatch = 0.0;
                float count = 0.0;
                for (int y = -1; y <= 1; y++) {
                    for (int x = -1; x <= 1; x++) {
                        if (x == 0 && y == 0) {
                            continue;
                        }
                        ivec2 p = ivec2(reflect101(coord.x + x, uImageSize.x), reflect101(coord.y + y, uImageSize.y));
                        float refNeighbor = luma(texelFetch(uReferenceImage, p, 0).rgb);
                        float sideNeighbor = luma(texelFetch(uImage, p, 0).rgb);
                        float refRank = refNeighbor > refCenter ? 1.0 : 0.0;
                        float sideRank = sideNeighbor > sideCenter ? 1.0 : 0.0;
                        mismatch += abs(refRank - sideRank);
                        count += 1.0;
                    }
                }
                return mismatch / max(count, 1.0);
            }

            float deghostScoreAt(ivec2 coord) {
                int x = reflect101(coord.x, uImageSize.x);
                int y = reflect101(coord.y, uImageSize.y);
                vec3 side = texelFetch(uImage, ivec2(x, y), 0).rgb;
                vec3 reference = texelFetch(uReferenceImage, ivec2(x, y), 0).rgb;
                float scale = clamp(uExposureScale, 0.03125, 32.0);

                float sideLuma = luma(side);
                float referenceLuma = luma(reference);
                float comparable = deghostValidity(side) * deghostValidity(reference) * referenceStructure(ivec2(x, y));
                if (comparable <= 0.001) {
                    return 0.0;
                }

                float exposureGap = abs(log2(scale));
                float logResidual = abs(log(max(sideLuma, 1e-4)) - log(max(referenceLuma, 1e-4)) - log(scale));
                float logMotion = smoothstep(0.28 + 0.04 * min(exposureGap, 3.0), 0.72, logResidual);
                float expectedSide = referenceLuma * scale;
                float linearResidual = abs(sideLuma - expectedSide) / max(max(sideLuma, expectedSide), 1e-4);
                float linearMotion = smoothstep(0.12, 0.42, linearResidual);
                float rankMotion = smoothstep(0.32, 0.68, censusMismatch(ivec2(x, y), referenceLuma, sideLuma));
                float score = max(max(linearMotion, logMotion), rankMotion);
                return comparable * score;
            }

            float computeDeghostAlpha(ivec2 coord) {
                if (uUseDeghostMask == 0) {
                    return 1.0;
                }
                float score = 0.0;
                for (int y = -1; y <= 1; y++) {
                    for (int x = -1; x <= 1; x++) {
                        score = max(score, deghostScoreAt(coord + ivec2(x, y)));
                    }
                }
                float reject = smoothstep(0.36, 0.76, score);
                return mix(1.0, 0.0, reject);
            }

            void main() {
                ivec2 coord = ivec2(gl_FragCoord.xy);
                vec3 rgb = texelFetch(uImage, coord, 0).rgb;
                float center = grayAt(coord);
                float contrast = abs(
                    grayAt(coord + ivec2(-1, 0)) +
                    grayAt(coord + ivec2(1, 0)) +
                    grayAt(coord + ivec2(0, -1)) +
                    grayAt(coord + ivec2(0, 1)) -
                    center * 4.0
                );

                float mean = (rgb.r + rgb.g + rgb.b) / 3.0;
                vec3 deviation = rgb - vec3(mean);
                float saturation = sqrt(dot(deviation, deviation));

                vec3 expoDelta = rgb - vec3(0.5);
                vec3 expo = exp(-(expoDelta * expoDelta) / 0.08);
                float wellExposedness = expo.r * expo.g * expo.b;

                float qualityWeight =
                    pow(max(contrast, 0.0), uContrastWeight) *
                    pow(max(saturation, 0.0), uSaturationWeight) *
                    pow(max(wellExposedness, 0.0), uExposureWeight);
                float admissibility = highlightValidity(rgb) * computeDeghostAlpha(coord);

                // Store independent weight tiers. Flat or neutral regions have no
                // contrast/saturation and therefore no quality weight; the next
                // pass can then fall back to well-exposedness without assigning an
                // equal share to clipped frames. The final tier preserves a valid
                // deterministic choice if all quality metrics become too small.
                float primaryWeight = qualityWeight * admissibility;
                float fallbackWeight = wellExposedness * admissibility;
                fragColor = vec4(primaryWeight, fallbackWeight, admissibility, 1.0);
            }
        """.trimIndent()

        private val MERTENS_NORMALIZE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uWeight0;
            uniform sampler2D uWeight1;
            uniform sampler2D uWeight2;
            void main() {
                vec3 raw0 = texture(uWeight0, vTexCoord).rgb;
                vec3 raw1 = texture(uWeight1, vTexCoord).rgb;
                vec3 raw2 = texture(uWeight2, vTexCoord).rgb;
                vec3 weights;

                float primarySum = raw0.r + raw1.r + raw2.r;
                if (primarySum > 1e-6) {
                    weights = vec3(raw0.r, raw1.r, raw2.r) / primarySum;
                } else {
                    float fallbackSum = raw0.g + raw1.g + raw2.g;
                    if (fallbackSum > 1e-6) {
                        weights = vec3(raw0.g, raw1.g, raw2.g) / fallbackSum;
                    } else {
                        float admissibleSum = raw0.b + raw1.b + raw2.b;
                        if (admissibleSum > 1e-6) {
                            weights = vec3(raw0.b, raw1.b, raw2.b) / admissibleSum;
                        } else {
                            // No exposure contains recoverable highlight data.
                            // Preserve the denoised zero-EV reference instead of
                            // averaging equally with clipped side frames.
                            weights = vec3(1.0, 0.0, 0.0);
                        }
                    }
                }
                fragColor = vec4(weights, 1.0);
            }
        """.trimIndent()

        private val MERTENS_PYR_DOWN_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uInputTexture;
            uniform ivec2 uSourceSize;

            int reflect101(int p, int size) {
                if (size <= 1) return 0;
                int period = size * 2 - 2;
                int m = p;
                if (m < 0) m = -m;
                m = m - (m / period) * period;
                return m >= size ? period - m : m;
            }

            float kernel5(int offset) {
                int a = offset < 0 ? -offset : offset;
                if (a == 0) return 6.0;
                if (a == 1) return 4.0;
                return 1.0;
            }

            void main() {
                ivec2 dst = ivec2(gl_FragCoord.xy);
                ivec2 center = dst * 2;
                vec4 sum = vec4(0.0);
                for (int y = -2; y <= 2; y++) {
                    float wy = kernel5(y);
                    int sy = reflect101(center.y + y, uSourceSize.y);
                    for (int x = -2; x <= 2; x++) {
                        float wx = kernel5(x);
                        int sx = reflect101(center.x + x, uSourceSize.x);
                        sum += texelFetch(uInputTexture, ivec2(sx, sy), 0) * (wx * wy);
                    }
                }
                fragColor = sum / 256.0;
            }
        """.trimIndent()

        private val MERTENS_LAPLACIAN_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uBaseTexture;
            uniform sampler2D uNextTexture;
            uniform ivec2 uNextSize;
            $MERTENS_COMMON_PYRAMID_GLSL
            void main() {
                ivec2 coord = ivec2(gl_FragCoord.xy);
                vec4 base = texelFetch(uBaseTexture, coord, 0);
                vec4 up = pyrUpSample(uNextTexture, coord, uNextSize);
                fragColor = vec4(base.rgb - up.rgb, 1.0);
            }
        """.trimIndent()

        private val MERTENS_COMBINE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uImage0;
            uniform sampler2D uImage1;
            uniform sampler2D uImage2;
            uniform sampler2D uWeights;
            void main() {
                vec3 weights = texture(uWeights, vTexCoord).rgb;
                vec3 color =
                    texture(uImage0, vTexCoord).rgb * weights.r +
                    texture(uImage1, vTexCoord).rgb * weights.g +
                    texture(uImage2, vTexCoord).rgb * weights.b;
                fragColor = vec4(color, 1.0);
            }
        """.trimIndent()

        private val MERTENS_RECONSTRUCT_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uBaseTexture;
            uniform sampler2D uNextTexture;
            uniform ivec2 uNextSize;
            $MERTENS_COMMON_PYRAMID_GLSL
            void main() {
                ivec2 coord = ivec2(gl_FragCoord.xy);
                vec4 base = texelFetch(uBaseTexture, coord, 0);
                vec4 up = pyrUpSample(uNextTexture, coord, uNextSize);
                fragColor = vec4(base.rgb + up.rgb, 1.0);
            }
        """.trimIndent()

        private val MERTENS_COPY_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uInputTexture;
            void main() {
                fragColor = vec4(clamp(texture(uInputTexture, vTexCoord).rgb, 0.0, 1.0), 1.0);
            }
        """.trimIndent()

        private val READBACK_RESOLVE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform sampler2D uInputTexture;
            uniform ivec2 uInputSize;
            uniform int uRotation;
            out vec4 fragColor;

            void main() {
                ivec2 dst = ivec2(gl_FragCoord.xy);
                ivec2 src;
                if (uRotation == 90) {
                    src = ivec2(dst.y, uInputSize.y - 1 - dst.x);
                } else {
                    src = ivec2(uInputSize.x - 1 - dst.y, dst.x);
                }
                src = clamp(src, ivec2(0), uInputSize - ivec2(1));
                fragColor = texelFetch(uInputTexture, src, 0);
            }
        """.trimIndent()

        private val NORMALIZE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uAccumulator;
            uniform ivec2 uInputSize;
            uniform vec3 uTransformX;
            uniform vec3 uTransformY;
            uniform float uNoiseBeta;
            uniform int uIsP010;
            uniform int uDirectSource;
            uniform ivec2 uDirectOffset;
            uniform int uApplyDenoise;
            out vec4 fragColor;

            bool valid(vec2 p) {
                return p.x >= 0.0 && p.y >= 0.0 &&
                    p.x <= float(uInputSize.x - 1) &&
                    p.y <= float(uInputSize.y - 1);
            }

            vec4 readAccumulator(ivec2 p) {
                p = clamp(p, ivec2(0), uInputSize - ivec2(1));
                return texelFetch(uAccumulator, p, 0);
            }

            ivec2 sourceTexel(vec2 pixel) {
                return clamp(ivec2(floor(pixel + vec2(0.5))), ivec2(0), uInputSize - ivec2(1));
            }

            bool validTexel(ivec2 p) {
                return p.x >= 0 && p.y >= 0 && p.x < uInputSize.x && p.y < uInputSize.y;
            }

            vec3 readYcc(ivec2 p) {
                vec4 a = readAccumulator(p);
                if (a.a <= 1e-4) {
                    return vec3(0.0, 0.5, 0.5);
                }
                return clamp(a.rgb / a.a, vec3(0.0), vec3(1.0));
            }

            float readWeight(ivec2 p) {
                return readAccumulator(p).a;
            }

            vec3 yccToRgb(vec3 ycc) {
                float y = ycc.x;
                float cb = ycc.y - 0.5;
                float cr = ycc.z - 0.5;
                if (uIsP010 != 0) {
                    return vec3(
                        y + 1.4746 * cr,
                        y - 0.16455 * cb - 0.57135 * cr,
                        y + 1.8814 * cb
                    );
                }
                return vec3(
                    y + 1.402 * cr,
                    y - 0.344136 * cb - 0.714136 * cr,
                    y + 1.772 * cb
                );
            }

            void main() {
                ivec2 outP = ivec2(gl_FragCoord.xy);
                ivec2 srcP;
                if (uDirectSource != 0) {
                    srcP = clamp(outP + uDirectOffset, ivec2(0), uInputSize - ivec2(1));
                } else {
                    vec2 src = vec2(
                        float(outP.x) * uTransformX.x + float(outP.y) * uTransformX.y + uTransformX.z,
                        float(outP.x) * uTransformY.x + float(outP.y) * uTransformY.y + uTransformY.z
                    );
                    srcP = sourceTexel(src);
                }

                vec3 ycc = readYcc(srcP);
                if (uApplyDenoise != 0) {
                    float accumWeight = readWeight(srcP);
                    float mean = 0.0;
                    float mean2 = 0.0;
                    float count = 0.0;
                    for (int y = -1; y <= 1; ++y) {
                        for (int x = -1; x <= 1; ++x) {
                            ivec2 q = srcP + ivec2(x, y);
                            if (!validTexel(q)) {
                                continue;
                            }
                            float yy = readYcc(q).x;
                            mean += yy;
                            mean2 += yy * yy;
                            count += 1.0;
                        }
                    }
                    mean /= max(count, 1.0);
                    mean2 /= max(count, 1.0);
                    float variance = max(mean2 - mean * mean, 0.0);
                    float noise = uNoiseBeta / max(accumWeight, 1.0);
                    float wienerGain = max(variance - noise, 0.0) / max(variance, 1e-6);
                    float flatness = 1.0 - smoothstep(0.0004, 0.006, variance);
                    ycc.x = mix(ycc.x, mean + wienerGain * (ycc.x - mean), 0.55 * flatness);
                }

                vec3 rgb = clamp(yccToRgb(ycc), vec3(0.0), vec3(1.0));
                fragColor = vec4(rgb, 1.0);
            }
        """.trimIndent()

    }
}
