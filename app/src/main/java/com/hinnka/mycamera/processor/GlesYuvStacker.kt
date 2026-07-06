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
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min

class GlesYuvStacker(
    private val width: Int,
    private val height: Int,
    private val outputWidth: Int,
    private val outputHeight: Int,
    private val rotation: Int,
    private val colorSpace: ColorSpace,
    private val inputFormat: Int,
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

    private data class TextureLevel(val texture: Int, val width: Int, val height: Int)

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

    private var downsampleProgram = 0
    private var structureProgram = 0
    private var alignProgram = 0
    private var smoothFlowProgram = 0
    private var robustnessProgram = 0
    private var tileMaskProgram = 0
    private var accumulateProgram = 0
    private var normalizeProgram = 0
    private var readbackResolveProgram = 0
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
    private var kernelTexture = 0
    private var flowTexture = 0
    private var flowScratchTexture = 0
    private var robustnessTexture = 0
    private var tileMaskTexture = 0
    private var accumulatorTexture = 0
    private var accumulatorScratchTexture = 0
    private var currentAccumulatorTexture = 0
    private var hdrZeroTexture = 0
    private var hdrHighTexture = 0
    private var hdrLowTexture = 0
    private var outputTexture = 0
    private var readbackTexture = 0

    private var gridWidth = 0
    private var gridHeight = 0
    private val renderOutputWidth = outputWidth
    private val renderOutputHeight = outputHeight
    private val normalizedRotation = normalizeRotation(rotation)
    private val cpuRotateReadback = normalizedRotation == 90 || normalizedRotation == 270
    private val gpuOutputWidth = if (cpuRotateReadback) renderOutputHeight else renderOutputWidth
    private val gpuOutputHeight = if (cpuRotateReadback) renderOutputWidth else renderOutputHeight
    private val highPrecisionInput = inputFormat == ImageFormat.YCBCR_P010
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
            initPrograms()
            initResources()
            PLog.d(
                TAG,
                "GLES stack format=${formatName(inputFormat)} internal=${if (highPrecisionInput) "R16F/RG16F" else "R8/RG8"} " +
                    "flowGrid=${FLOW_GRID_SPACING}px grid=${gridWidth}x${gridHeight}"
            )

            if (!uploadImagePlanes(images.first(), refY, refCbCr, refYStaging, refCbCrStaging, "reference")) {
                return null
            }

            val refPyramid = createPyramid(refY)
            val curPyramid = createPyramid(curY)
            buildPyramid(refPyramid)
            computeStructureTensor(refY)
            clearAccumulator()
            accumulateFrame(refY, refCbCr, isReference = true)
            GlesGpuScheduler.yieldToUiRenderer()

            for (index in 1 until images.size) {
                if (!uploadImagePlanes(images[index], curY, curCbCr, curYStaging, curCbCrStaging, "frame $index")) {
                    PLog.w(TAG, "Failed to upload frame $index YUV planes")
                    return null
                }
                buildPyramid(curPyramid)
                alignCurrentToReference(refPyramid, curPyramid)
                smoothFlow()
                computeRobustness()
                computeTileMask()
                accumulateFrame(curY, curCbCr, isReference = false)
                GlesGpuScheduler.yieldToUiRenderer()
            }

            normalizeOutput()
            GlesGpuScheduler.yieldToUiRenderer()
            val bitmap = readOutputBitmap() ?: return null
            PLog.i(TAG, "GLES YUV stacking completed in ${System.currentTimeMillis() - startTime}ms")
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

            val refPyramid = createPyramid(refY)
            val curPyramid = createPyramid(curY)
            buildPyramid(refPyramid)
            computeStructureTensor(refY)
            clearAccumulator()
            accumulateFrame(refY, refCbCr, isReference = true)
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
                        buildPyramid(curPyramid)
                        alignCurrentToReference(refPyramid, curPyramid, currentToReferenceScale)
                        smoothFlow()
                        computeRobustness(currentToReferenceScale)
                        computeTileMask()
                        accumulateFrame(curY, curCbCr, isReference = false)
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
                applyDenoise = true,
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
            EGL14.EGL_WIDTH, max(1, gpuOutputWidth),
            EGL14.EGL_HEIGHT, max(1, gpuOutputHeight),
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
        downsampleProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, DOWNSAMPLE_FRAGMENT_SHADER, "downsample")
        structureProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, STRUCTURE_FRAGMENT_SHADER, "structure")
        alignProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, ALIGN_FRAGMENT_SHADER, "align_tiles")
        smoothFlowProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, SMOOTH_FLOW_FRAGMENT_SHADER, "smooth_flow")
        robustnessProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, ROBUSTNESS_FRAGMENT_SHADER, "robustness")
        tileMaskProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, TILE_MASK_FRAGMENT_SHADER, "tile_mask")
        accumulateProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, ACCUMULATE_FRAGMENT_SHADER, "accumulate")
        normalizeProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, NORMALIZE_FRAGMENT_SHADER, "normalize")
        readbackResolveProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, READBACK_RESOLVE_FRAGMENT_SHADER, "readback_resolve")
        p010LumaProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, P010_LUMA_FRAGMENT_SHADER, "p010_luma")
        p010ChromaProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, P010_CHROMA_FRAGMENT_SHADER, "p010_chroma")
        planarChroma8Program = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, PLANAR_CHROMA_8_FRAGMENT_SHADER, "planar_chroma_8")
        planarChroma16Program = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, PLANAR_CHROMA_16_FRAGMENT_SHADER, "planar_chroma_16")
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
        gridWidth = (width + FLOW_GRID_SPACING - 1) / FLOW_GRID_SPACING
        gridHeight = (height + FLOW_GRID_SPACING - 1) / FLOW_GRID_SPACING

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

        kernelTexture = createTexture2D(width, height, GLES30.GL_RGBA16F, GLES30.GL_NEAREST)
        flowTexture = createTexture2D(gridWidth, gridHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        flowScratchTexture = createTexture2D(gridWidth, gridHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
        robustnessTexture = createTexture2D(width, height, GLES30.GL_RGBA8, GLES30.GL_LINEAR)
        tileMaskTexture = createTexture2D(gridWidth, gridHeight, GLES30.GL_RGBA8, GLES30.GL_LINEAR)
        accumulatorTexture = createTexture2D(width, height, GLES30.GL_RGBA16F, GLES30.GL_NEAREST)
        accumulatorScratchTexture = createTexture2D(width, height, GLES30.GL_RGBA16F, GLES30.GL_NEAREST)
        currentAccumulatorTexture = accumulatorTexture
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

    private fun createPyramid(baseTexture: Int): List<TextureLevel> {
        val levels = ArrayList<TextureLevel>(PYRAMID_LEVELS)
        levels += TextureLevel(baseTexture, width, height)
        var levelWidth = width
        var levelHeight = height
        repeat(PYRAMID_LEVELS - 1) {
            levelWidth = max(1, (levelWidth + 1) / 2)
            levelHeight = max(1, (levelHeight + 1) / 2)
            val texture = createTexture2D(
                levelWidth,
                levelHeight,
                GLES30.GL_RGBA8,
                GLES30.GL_LINEAR,
            )
            levels += TextureLevel(texture, levelWidth, levelHeight)
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
            PLog.d(
                TAG,
                "GLES plane upload yRow=${planes[0].rowStride} cbRow=${planes[1].rowStride} cbPixel=${planes[1].pixelStride} chroma=${chromaWidth}x${chromaHeight}"
            )
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

    private fun buildPyramid(levels: List<TextureLevel>) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT1, GLES30.GL_TEXTURE_2D, 0, 0)
        val drawBuffers = intArrayOf(GLES30.GL_COLOR_ATTACHMENT0)
        GLES30.glDrawBuffers(drawBuffers.size, drawBuffers, 0)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(downsampleProgram)
        for (index in 1 until levels.size) {
            val input = levels[index - 1]
            val output = levels[index]
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, output.texture, 0)
            checkFramebuffer("buildPyramid level $index")
            GLES30.glViewport(0, 0, output.width, output.height)
            bindTexture(downsampleProgram, "uInput", 0, input.texture)
            GLES30.glUniform2i(GLES30.glGetUniformLocation(downsampleProgram, "uInputSize"), input.width, input.height)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
            checkGlError("buildPyramid level $index")
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun bindFramebufferOutput(texture: Int, label: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            texture,
            0,
        )
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT1,
            GLES30.GL_TEXTURE_2D,
            0,
            0,
        )
        val drawBuffers = intArrayOf(GLES30.GL_COLOR_ATTACHMENT0)
        GLES30.glDrawBuffers(drawBuffers.size, drawBuffers, 0)
        GLES30.glDisable(GLES30.GL_BLEND)
        checkFramebuffer(label)
    }

    private fun finishFramebufferPass(label: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError(label)
    }

    private fun computeStructureTensor(referenceY: Int) {
        bindFramebufferOutput(kernelTexture, "computeStructureTensor")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(structureProgram)
        bindTexture(structureProgram, "uLuma", 0, referenceY)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(structureProgram, "uImageSize"), width, height)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(structureProgram, "uNoiseAlpha"), NOISE_ALPHA)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(structureProgram, "uNoiseBeta"), NOISE_BETA)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("computeStructureTensor")
    }

    private fun clearAccumulator() {
        bindFramebufferOutput(accumulatorTexture, "clearAccumulator")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        finishFramebufferPass("clearAccumulator")
        currentAccumulatorTexture = accumulatorTexture
    }

    private fun alignCurrentToReference(
        reference: List<TextureLevel>,
        current: List<TextureLevel>,
        currentToReferenceScale: Float = 1.0f,
    ) {
        val levelIndex = ALIGN_LEVEL.coerceAtMost(reference.lastIndex).coerceAtMost(current.lastIndex)
        val ref = reference[levelIndex]
        val cur = current[levelIndex]

        bindFramebufferOutput(flowTexture, "alignCurrentToReference")
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(alignProgram)
        bindTexture(alignProgram, "uReference", 0, ref.texture)
        bindTexture(alignProgram, "uCurrent", 1, cur.texture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(alignProgram, "uLevelSize"), ref.width, ref.height)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(alignProgram, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uTileSize"), FLOW_GRID_SPACING)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uAlignWindowSize"), ALIGN_WINDOW_SIZE)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uLevelScale"), 1 shl levelIndex)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uSearchRadius"), SEARCH_RADIUS_LEVEL)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(alignProgram, "uSampleStep"), ALIGN_SAMPLE_STEP)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(alignProgram, "uCurrentToReferenceScale"), currentToReferenceScale)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("alignCurrentToReference")
    }

    private fun smoothFlow() {
        repeat(FLOW_SMOOTH_PASSES) { pass ->
            val input = if (pass % 2 == 0) flowTexture else flowScratchTexture
            val output = if (pass % 2 == 0) flowScratchTexture else flowTexture
            bindFramebufferOutput(output, "smoothFlow pass $pass")
            GLES30.glViewport(0, 0, gridWidth, gridHeight)
            GLES30.glUseProgram(smoothFlowProgram)
            bindTexture(smoothFlowProgram, "uInputFlow", 0, input)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(smoothFlowProgram, "uGridSize"), gridWidth, gridHeight)
            GLES31.glUniform1f(GLES31.glGetUniformLocation(smoothFlowProgram, "uOutlierThreshold"), FLOW_OUTLIER_THRESHOLD_PX)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            finishFramebufferPass("smoothFlow pass $pass")
        }
    }

    private fun computeRobustness(currentToReferenceScale: Float = 1.0f) {
        bindFramebufferOutput(robustnessTexture, "computeRobustness")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(robustnessProgram)
        bindTexture(robustnessProgram, "uReferenceY", 0, refY)
        bindTexture(robustnessProgram, "uReferenceCbCr", 1, refCbCr)
        bindTexture(robustnessProgram, "uCurrentY", 2, curY)
        bindTexture(robustnessProgram, "uCurrentCbCr", 3, curCbCr)
        bindTexture(robustnessProgram, "uFlowGrid", 4, flowTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(robustnessProgram, "uImageSize"), width, height)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(robustnessProgram, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(robustnessProgram, "uTileSize"), FLOW_GRID_SPACING)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(robustnessProgram, "uNoiseAlpha"), NOISE_ALPHA)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(robustnessProgram, "uNoiseBeta"), NOISE_BETA)
        GLES31.glUniform1f(GLES31.glGetUniformLocation(robustnessProgram, "uCurrentToReferenceScale"), currentToReferenceScale)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("computeRobustness")
    }

    private fun computeTileMask() {
        bindFramebufferOutput(tileMaskTexture, "computeTileMask")
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(tileMaskProgram)
        bindTexture(tileMaskProgram, "uReferenceY", 0, refY)
        bindTexture(tileMaskProgram, "uRobustness", 1, robustnessTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(tileMaskProgram, "uImageSize"), width, height)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(tileMaskProgram, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(tileMaskProgram, "uTileSize"), FLOW_GRID_SPACING)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("computeTileMask")
    }

    private fun accumulateFrame(
        yTexture: Int,
        cbCrTexture: Int,
        isReference: Boolean,
    ) {
        val outputAccumulator = if (currentAccumulatorTexture == accumulatorTexture) {
            accumulatorScratchTexture
        } else {
            accumulatorTexture
        }
        bindFramebufferOutput(outputAccumulator, "accumulateFrame")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(accumulateProgram)
        bindTexture(accumulateProgram, "uCurrentY", 0, yTexture)
        bindTexture(accumulateProgram, "uCurrentCbCr", 1, cbCrTexture)
        bindTexture(accumulateProgram, "uFlowGrid", 2, flowTexture)
        bindTexture(accumulateProgram, "uRobustness", 3, robustnessTexture)
        bindTexture(accumulateProgram, "uTileMask", 4, tileMaskTexture)
        bindTexture(accumulateProgram, "uKernel", 5, kernelTexture)
        bindTexture(accumulateProgram, "uAccumulatorInput", 6, currentAccumulatorTexture)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(accumulateProgram, "uImageSize"), width, height)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(accumulateProgram, "uGridSize"), gridWidth, gridHeight)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(accumulateProgram, "uTileSize"), FLOW_GRID_SPACING)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(accumulateProgram, "uIsReference"), if (isReference) 1 else 0)
        GLES31.glUniform1f(
            GLES31.glGetUniformLocation(accumulateProgram, "uFrameWeight"),
            if (isReference) 1.0f else NON_REFERENCE_FRAME_WEIGHT,
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("accumulateFrame")
        currentAccumulatorTexture = outputAccumulator
    }

    private fun normalizeOutput() {
        renderAccumulatorToOutput(currentAccumulatorTexture, applyDenoise = true)
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

    private fun computeNormalizeTransform(): FloatArray {
        val sensorWidth = width.toFloat()
        val sensorHeight = height.toFloat()
        val rotatedWidth = if (normalizedRotation == 90 || normalizedRotation == 270) height else width
        val rotatedHeight = if (normalizedRotation == 90 || normalizedRotation == 270) width else height
        val cropX = (((rotatedWidth - outputWidth).coerceAtLeast(0)) / 4 * 2).toFloat()
        val cropY = (((rotatedHeight - outputHeight).coerceAtLeast(0)) / 4 * 2).toFloat()
        return when (normalizedRotation) {
            90 -> floatArrayOf(
                0.0f, 1.0f, cropY,
                -1.0f, 0.0f, sensorHeight - 1.0f - cropX,
            )
            180 -> floatArrayOf(
                -1.0f, 0.0f, sensorWidth - 1.0f - cropX,
                0.0f, -1.0f, sensorHeight - 1.0f - cropY,
            )
            270 -> floatArrayOf(
                0.0f, -1.0f, sensorWidth - 1.0f - cropY,
                1.0f, 0.0f, cropX,
            )
            else -> floatArrayOf(
                1.0f, 0.0f, cropX,
                0.0f, 1.0f, cropY,
            )
        }
    }

    private fun computeRenderTransform(): FloatArray {
        if (!cpuRotateReadback) {
            return computeNormalizeTransform()
        }
        val offset = computeDirectSourceOffset()
        val offsetX = offset[0].toFloat()
        val offsetY = offset[1].toFloat()
        return floatArrayOf(
            1.0f, 0.0f, offsetX,
            0.0f, 1.0f, offsetY,
        )
    }

    private fun computeDirectSourceOffset(): IntArray {
        if (!cpuRotateReadback) {
            return intArrayOf(0, 0)
        }
        val rotatedWidth = if (normalizedRotation == 90 || normalizedRotation == 270) height else width
        val rotatedHeight = if (normalizedRotation == 90 || normalizedRotation == 270) width else height
        val cropX = ((rotatedWidth - outputWidth).coerceAtLeast(0) / 4) * 2
        val cropY = ((rotatedHeight - outputHeight).coerceAtLeast(0) / 4) * 2
        return when (normalizedRotation) {
            90 -> intArrayOf(
                cropY,
                height - cropX - gpuOutputHeight,
            )
            270 -> intArrayOf(
                width - cropY - gpuOutputWidth,
                cropX,
            )
            else -> intArrayOf(0, 0)
        }
    }

    companion object {
        private const val TAG = "GlesYuvStacker"

        private const val EGL_OPENGL_ES3_BIT_KHR = 0x00000040
        private const val HDR_BRACKET_FRAME_COUNT = 3
        private const val HDR_BRACKET_ZERO_INDEX = 0
        private const val PYRAMID_LEVELS = 4
        private const val ALIGN_LEVEL = 2
        private const val FLOW_GRID_SPACING = 8
        private const val ALIGN_WINDOW_SIZE = 32
        private const val SEARCH_RADIUS_LEVEL = 6
        private const val ALIGN_SAMPLE_STEP = 2
        private const val FLOW_SMOOTH_PASSES = 2
        private const val FLOW_OUTLIER_THRESHOLD_PX = 24.0f
        private const val NON_REFERENCE_FRAME_WEIGHT = 0.92f
        private const val NOISE_ALPHA = 0.005f
        private const val NOISE_BETA = 0.001f
        private const val DEFAULT_MERTENS_CONTRAST_WEIGHT = 1.0f
        private const val DEFAULT_MERTENS_SATURATION_WEIGHT = 1.0f
        private const val DEFAULT_MERTENS_EXPOSURE_WEIGHT = 1.0f

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

            float validity(vec3 rgb) {
                float y = luma(rgb);
                float blackGate = smoothstep(0.055, 0.145, y);
                float whiteGate = 1.0 - smoothstep(0.865, 0.975, max3(rgb));
                return clamp(blackGate * whiteGate, 0.0, 1.0);
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
                float comparable = validity(side) * validity(reference) * referenceStructure(ivec2(x, y));
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

                float weight =
                    pow(max(contrast, 0.0), uContrastWeight) *
                    pow(max(saturation, 0.0), uSaturationWeight) *
                    pow(max(wellExposedness, 0.0), uExposureWeight);
                weight = weight * computeDeghostAlpha(coord) + 1e-12;
                fragColor = vec4(weight, weight, weight, 1.0);
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
                float w0 = texture(uWeight0, vTexCoord).r;
                float w1 = texture(uWeight1, vTexCoord).r;
                float w2 = texture(uWeight2, vTexCoord).r;
                float sum = max(w0 + w1 + w2, 1e-12);
                fragColor = vec4(w0 / sum, w1 / sum, w2 / sum, 1.0);
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
