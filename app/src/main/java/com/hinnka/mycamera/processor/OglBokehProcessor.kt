package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.opengl.EGL14
import android.opengl.GLES30
import android.opengl.GLES31
import android.opengl.GLUtils
import android.os.SystemClock
import com.hinnka.mycamera.lut.GlUtils
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.ml.RelativeDepthMap
import com.hinnka.mycamera.ml.SubjectMask
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.CompletableFuture
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.log2
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * Lens Blur as implemented by Camera Raw / Lightroom Mobile
 * (docs/lrmobile-lens-blur-evidence.md):
 *
 * 1. Layered depth from the app's depth model and a layer mask: the salient
 *    subject, or the flooded focal surface when focus is elsewhere. The depth
 *    is median filtered, aligned to image edges by a colour guided filter,
 *    separated into layers and median filtered per layer at discontinuities.
 * 2. Highlight guide: LoG peaks, disc dilation and tanh weighting of the luminance.
 * 3. Per splat domain: signed CoC from the ramped focal range, far-side spread,
 *    near / far radius histograms.
 * 4. Per row strip, front to back (near bands large to small, then far bands
 *    small to large): gradient-field scatter of two-level PSFs with highlight
 *    boost and cat-eye clipping, row integration, domain resampling and
 *    `AlphaBlendRev` with gains 2.0 / 1.5.
 * 5. `AlphaNormalizeScene` at full resolution, keeping original pixels for the
 *    in-focus fraction that the working resolution cannot represent.
 *
 * Swirl and soap bubbles keep all of the above and add the previous
 * renderer's style on top: its aperture transmission under the
 * field-dependent pupil warp in the scatter, its swirl highlight / soap-bubble
 * extraction and planning ([BokehHighlightPlanner]) with its own defocus
 * curve, the removal of bubble sources from the scatter, and its analytic
 * sprite layer in the final composite.
 */
class OglBokehProcessor {
    companion object {
        private const val TAG = "OglBokehProcessor"
        private const val MAX_BOKEH_RENDER_EDGE = 2560
        private const val GUIDE_SHORT_EDGE = 512
        private const val STRIP_ROWS = 256
        /** Rows per full-resolution composite / readback submission. */
        private const val OUTPUT_BAND_ROWS = 512
        private const val SPREAD_CAP_PIXELS = 10f
        private const val BOOST_RADIUS_FRACTION = 0.005f
        /** Largest aperture extent relative to the CoC (the soap-bubble background). */
        private const val APERTURE_EXTENT = 1.05f
        private const val NEAR_PASS = true
        private const val FAR_PASS = false

        /** `fast_guided_filter(guide, depth, max(short edge / 512, 5), s = 2, eps = 6.5025 / 255^2)`. */
        private const val GUIDED_RADIUS_DIVISOR = 512
        private const val GUIDED_MIN_RADIUS = 5
        private const val GUIDED_SUBSAMPLING = 2
        private const val GUIDED_EPSILON = 1e-4f

        /** `cr_stage_refine_depth` at internal parameter 10 = 0.5: radius 10 full-resolution px, sigma 50 bins. */
        private const val LAYER_MEDIAN_FULL_RADIUS = 10f
        private const val LAYER_MEDIAN_SIGMA_BINS = 50f
        private const val LAYER_MEDIAN_FLAT_THRESHOLD = 0.01f
        private const val LAYER_MEDIAN_EDGE_WEIGHT = 1e-5f

        /** Pixels per bulk copy of the RGBA8 depth classification readback. */
        private const val CLASSIFICATION_CHUNK_PIXELS = 16384
    }

    private data class DomainTargets(
        val domain: LensBlurSplatDomain,
        val width: Int,
        val height: Int,
        val cocTexture: Int,
        val psf: LensBlurPsfBank,
        val psfBuffer: Int,
    )

    /** Swirl / bubble inputs of the scatter and composite. */
    private class StyleSources(
        val shaderStyle: Int,
        val sourceTexture: Int,
        val layerColorTexture: Int,
        val highlights: List<BokehHighlightPlanner.AnalyticHighlight>,
    ) {
        val pupilWarp: FloatArray
            get() = if (shaderStyle == 1) BokehStyleShaders.SWIRL_PUPIL_WARP else BokehStyleShaders.BUBBLE_PUPIL_WARP
    }

    private var guidedMomentsProgramId = 0
    private var guidedSolveProgramId = 0
    private var guidedMeanProgramId = 0
    private var guidedApplyProgramId = 0
    private var layerMedianProgramId = 0
    private var jbuUpsampleProgramId = 0
    private var depthRefineProgramId = 0
    private var cocProgramId = 0
    private var cocSpreadProgramId = 0
    private var guideLuminanceProgramId = 0
    private var guideGradientProgramId = 0
    private var guideCombineProgramId = 0
    private var compositeProgramId = 0
    private var maxProgramId = 0
    private var histogramProgramId = 0
    private var scatterProgramId = 0
    private var integrateProgramId = 0
    private var upsampleAddProgramId = 0
    private var alphaBlendProgramId = 0
    private var storeProgramId = 0
    private var clearProgramId = 0
    private var depthReadbackProgramId = 0
    private var layerColorProgramId = 0
    private var styleSourceProgramId = 0
    private var styleSpriteProgramId = 0
    private var vertexBufferId = 0
    private var texCoordBufferId = 0
    private var indexBufferId = 0

    private var eglDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface = EGL14.EGL_NO_SURFACE

    private val textures = mutableSetOf<Int>()
    private val buffers = mutableSetOf<Int>()
    private var maxStorageBlockSize = 0L

    fun applyBokeh(
        originalImage: Bitmap,
        lowResDepthMap: RelativeDepthMap,
        subjectMask: SubjectMask,
        focusDepth: Float,
        focusX: Float,
        focusY: Float,
        aperture: Float,
        bokehStyle: BokehStyle = BokehStyle.DEFAULT,
        focusOnSubject: Boolean = true,
    ): Bitmap? {
        val startedAtMs = SystemClock.elapsedRealtime()
        try {
            val halfFloatOutput = originalImage.config == Bitmap.Config.RGBA_F16
            val linearInput = originalImage.colorSpace?.id ==
                ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB).id
            val (workingWidth, workingHeight) = resolveBokehRenderSize(originalImage.width, originalImage.height)
            val originalLongEdge = max(originalImage.width, originalImage.height)
            val radiusScale = max(workingWidth, workingHeight).toFloat() / originalLongEdge
            val params = LensBlurParams.forAperture(aperture)
            val layout = LensBlurLayout(originalLongEdge, radiusScale, params)
            val depthMap = DepthLayerMasks.median3(lowResDepthMap)
            val focalRange = (if (focusOnSubject) LensBlurFocalRange.forSubject(depthMap, subjectMask) else null)
                ?: LensBlurFocalRange.forPoint(depthMap, focusX, focusY)
            // PSF banks are first read by the scatter and layer interiors by the
            // layered depth: both are built on CPU workers while the GPU starts.
            val banks = layout.domains.map { domain ->
                LensBlurPsfBank.obtain(
                    params,
                    maxRadius = domain.maxRadius * domain.scale,
                    domainScale = radiusScale * domain.scale,
                    originalLongEdge = originalLongEdge,
                )
            }
            val layerMask = if (focusOnSubject) subjectMask else DepthLayerMasks.focalLayerMask(depthMap, focalRange)
            val layerInterior = CompletableFuture.supplyAsync {
                val interiorStartedAtMs = SystemClock.elapsedRealtime()
                DepthLayerMasks.subjectInterior(layerMask, originalImage.width, originalImage.height) to
                    SystemClock.elapsedRealtime() - interiorStartedAtMs
            }
            val medianRadius = (LAYER_MEDIAN_FULL_RADIUS * radiusScale).roundToInt()
                .coerceIn(1, BokehShaders.LAYER_MEDIAN_MAX_RADIUS)
            PLog.d(
                TAG,
                "Lens blur: style=$bokehStyle, fNumber=$aperture, amount=${params.blurAmount}, radiusGain=${params.radiusGain}, " +
                    "focal=$focalRange, subject=$focusOnSubject, maxRadius=${layout.maxRadius}, " +
                    "domains=${layout.domains}, medianRadius=$medianRadius, " +
                    "working=${workingWidth}x$workingHeight, output=${originalImage.width}x${originalImage.height}",
            )

            initEGL(originalImage.width, originalImage.height)
            initGL(bokehStyle, medianRadius)
            GLES30.glDisable(GLES30.GL_DITHER)
            GLES30.glDisable(GLES30.GL_BLEND)

            val inputTex = track(createTexture(originalImage))
            val lowResDepthTex = track(
                createScalarTexture(depthMap.width, depthMap.height, depthMap.values, "relative depth")
            )
            val renderStartedAtMs = SystemClock.elapsedRealtime()

            val fbo = IntArray(1)
            GLES30.glGenFramebuffers(1, fbo, 0)
            try {
                val framebuffer = fbo[0]
                val guidedDepthTex = renderGuidedDepth(
                    inputTex, lowResDepthTex, workingWidth, workingHeight, originalLongEdge, linearInput,
                )
                release(lowResDepthTex)
                GLES30.glFlush()
                val interiorWaitStartedAtMs = SystemClock.elapsedRealtime()
                val (interior, interiorBuildMs) = layerInterior.join()
                val interiorWaitMs = SystemClock.elapsedRealtime() - interiorWaitStartedAtMs
                val subjectMaskTex = track(
                    createScalarTexture(layerMask.width, layerMask.height, layerMask.values, "layer mask")
                )
                val layerInteriorTex = track(
                    createScalarTexture(layerMask.width, layerMask.height, interior, "layer interior", channels = 2)
                )
                val layersTex = renderLayeredDepth(
                    framebuffer, inputTex, guidedDepthTex, subjectMaskTex, layerInteriorTex, layerMask,
                    focusDepth, linearInput, workingWidth, workingHeight, medianRadius,
                )
                release(guidedDepthTex)
                release(subjectMaskTex)
                release(layerInteriorTex)
                val style = if (bokehStyle == BokehStyle.NATURAL) null else renderStyleSources(
                    framebuffer, bokehStyle, inputTex, layersTex, focusDepth, aperture,
                    linearInput, halfFloatOutput, originalImage, workingWidth, workingHeight,
                )

                val (guideTex, guideScale) = renderHighlightGuide(framebuffer, inputTex, originalImage, linearInput)
                val workingLod = log2(originalLongEdge.toFloat() / max(workingWidth, workingHeight)).coerceAtLeast(0f)
                val psfWaitStartedAtMs = SystemClock.elapsedRealtime()
                val psfBanks = banks.map { it.join() }
                val psfWaitMs = SystemClock.elapsedRealtime() - psfWaitStartedAtMs
                val targets = layout.domains.mapIndexed { index, domain ->
                    val width = ceilDiv(workingWidth, 1 shl domain.level)
                    val height = ceilDiv(workingHeight, 1 shl domain.level)
                    DomainTargets(
                        domain = domain,
                        width = width,
                        height = height,
                        cocTexture = renderCoc(
                            framebuffer, layersTex, domain, width, height, focalRange, params, layout,
                        ),
                        psf = psfBanks[index],
                        psfBuffer = createIntBuffer(psfBanks[index].data, "lens blur PSF bank"),
                    )
                }
                release(layersTex)

                val histogram = buildHistogram(targets, layout)
                val nearBands = layout.activeBands(histogram.copyOfRange(0, BokehShaders.HISTOGRAM_BINS)).reversed()
                val farBands = layout.activeBands(
                    histogram.copyOfRange(BokehShaders.HISTOGRAM_BINS, 2 * BokehShaders.HISTOGRAM_BINS)
                )

                val nearTex = track(createStorageTexture(workingWidth, workingHeight))
                val farTex = track(createStorageTexture(workingWidth, workingHeight))
                renderStrips(
                    targets, layout, params, style, nearBands, farBands, inputTex, guideTex, guideScale,
                    workingLod, workingWidth, workingHeight, nearTex, farTex, radiusScale, originalImage, linearInput,
                )
                release(guideTex)
                val highlightTex = style?.let {
                    release(it.sourceTexture)
                    release(it.layerColorTexture)
                    renderHighlightLayer(
                        framebuffer, it, workingWidth, workingHeight, originalImage, linearInput, halfFloatOutput,
                    )
                }

                val outputTex = track(
                    createRenderTexture(originalImage.width, originalImage.height, halfFloat = halfFloatOutput)
                )
                bindTargets(framebuffer, outputTex)
                requireFramebufferComplete("full-resolution lens blur composite")
                GLES30.glViewport(0, 0, originalImage.width, originalImage.height)
                useProgram(compositeProgramId)
                bindSampler(compositeProgramId, "uOriginalTexture", 0, inputTex)
                bindSampler(compositeProgramId, "uCocTexture", 1, targets.first().cocTexture)
                bindSampler(compositeProgramId, "uNearTexture", 2, nearTex)
                bindSampler(compositeProgramId, "uFarTexture", 3, farTex)
                uniform1f(compositeProgramId, "uMaxRadiusFull", layout.maxRadiusFull)
                uniform1f(compositeProgramId, "uWorkingPixel", 1f / radiusScale)
                uniform1i(compositeProgramId, "uLinearInput", if (linearInput) 1 else 0)
                uniform1i(compositeProgramId, "uHighlights", if (highlightTex != null) 1 else 0)
                bindSampler(compositeProgramId, "uHighlightTexture", 4, highlightTex ?: inputTex)
                // Row bands, each submitted on its own, keep the UI renderer's GPU slots open.
                GLES30.glEnable(GLES30.GL_SCISSOR_TEST)
                var bandRow = 0
                while (bandRow < originalImage.height) {
                    val rows = min(OUTPUT_BAND_ROWS, originalImage.height - bandRow)
                    GLES30.glScissor(0, bandRow, originalImage.width, rows)
                    drawQuad(compositeProgramId)
                    GlesGpuScheduler.yieldToUiRenderer()
                    bandRow += rows
                }
                GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
                requireNoGlError("full-resolution lens blur composite")
                GLES30.glFinish()
                val renderFinishedAtMs = SystemClock.elapsedRealtime()

                val result = readback(originalImage, outputTex, halfFloatOutput) ?: return null
                val readbackFinishedAtMs = SystemClock.elapsedRealtime()
                PLog.d(
                    TAG,
                    "Lens blur completed: nearBands=$nearBands, farBands=$farBands, " +
                        "total=${readbackFinishedAtMs - startedAtMs}ms, " +
                        "layerInterior=${interiorBuildMs}ms (wait ${interiorWaitMs}ms), " +
                        "psfs=${psfBanks.map { it.psfCount }}, psfBuild=${psfBanks.map { it.buildMillis }}ms " +
                        "(wait ${psfWaitMs}ms), " +
                        "setupUpload=${renderStartedAtMs - startedAtMs}ms, " +
                        "render=${renderFinishedAtMs - renderStartedAtMs}ms, " +
                        "readback=${readbackFinishedAtMs - renderFinishedAtMs}ms",
                )
                return result
            } finally {
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                GLES30.glDeleteFramebuffers(1, fbo, 0)
            }
        } catch (e: Exception) {
            PLog.e(TAG, "Error applying OGL Bokeh: ${e.message}")
            return null
        } finally {
            releaseGL()
        }
    }

    /**
     * `fast_guided_filter` of the model depth with the colour guide at the
     * working resolution (subsampling 2), so depth edges follow image edges
     * across the whole frame. Moments, coefficients and their means stay in
     * fp32 SSBOs; the result is a working-resolution RGBA16F texture (R = disparity).
     */
    private fun renderGuidedDepth(
        inputTex: Int,
        depthTex: Int,
        width: Int,
        height: Int,
        originalLongEdge: Int,
        linearInput: Boolean,
    ): Int {
        val halfWidth = ceilDiv(width, GUIDED_SUBSAMPLING)
        val halfHeight = ceilDiv(height, GUIDED_SUBSAMPLING)
        val radius = max(min(width, height) / GUIDED_RADIUS_DIVISOR, GUIDED_MIN_RADIUS) / GUIDED_SUBSAMPLING
        val halfPixels = halfWidth.toLong() * halfHeight
        val groupsX = GlesComputeWorkGroup.imageGroupCount(halfWidth)
        val groupsY = GlesComputeWorkGroup.imageGroupCount(halfHeight)
        val halfLod = log2(originalLongEdge.toFloat() / max(halfWidth, halfHeight)).coerceAtLeast(0f)
        val workingLod = log2(originalLongEdge.toFloat() / max(width, height)).coerceAtLeast(0f)

        val moments = createBuffer(halfPixels * 14 * 4, "guided filter moments")
        useProgram(guidedMomentsProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, moments)
        bindSampler(guidedMomentsProgramId, "uInputTexture", 0, inputTex)
        bindSampler(guidedMomentsProgramId, "uDepthTexture", 1, depthTex)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(guidedMomentsProgramId, "uSize"), halfWidth, halfHeight)
        uniform1f(guidedMomentsProgramId, "uGuideLod", halfLod)
        uniform1i(guidedMomentsProgramId, "uRadius", radius)
        uniform1i(guidedMomentsProgramId, "uLinearInput", if (linearInput) 1 else 0)
        GLES31.glDispatchCompute(groupsX, groupsY, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

        val coefficients = createBuffer(halfPixels * 16, "guided filter coefficients")
        useProgram(guidedSolveProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, moments)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, coefficients)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(guidedSolveProgramId, "uSize"), halfWidth, halfHeight)
        uniform1i(guidedSolveProgramId, "uRadius", radius)
        uniform1f(guidedSolveProgramId, "uEpsilon", GUIDED_EPSILON)
        GLES31.glDispatchCompute(groupsX, groupsY, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        releaseBuffer(moments)

        val meanScratch = createBuffer(halfPixels * 16, "guided filter coefficient mean")
        for ((source, target, horizontal) in listOf(
            Triple(coefficients, meanScratch, true),
            Triple(meanScratch, coefficients, false),
        )) {
            useProgram(guidedMeanProgramId)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, source)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, target)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(guidedMeanProgramId, "uSize"), halfWidth, halfHeight)
            uniform1i(guidedMeanProgramId, "uRadius", radius)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(guidedMeanProgramId, "uDirection"),
                if (horizontal) 1 else 0, if (horizontal) 0 else 1,
            )
            GLES31.glDispatchCompute(groupsX, groupsY, 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        }
        releaseBuffer(meanScratch)

        val guidedTex = track(createStorageTexture(width, height))
        useProgram(guidedApplyProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, coefficients)
        GLES31.glBindImageTexture(0, guidedTex, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        bindSampler(guidedApplyProgramId, "uInputTexture", 0, inputTex)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(guidedApplyProgramId, "uSize"), width, height)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(guidedApplyProgramId, "uHalfSize"), halfWidth, halfHeight)
        uniform1f(guidedApplyProgramId, "uGuideLod", workingLod)
        uniform1i(guidedApplyProgramId, "uLinearInput", if (linearInput) 1 else 0)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(height),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_FRAMEBUFFER_BARRIER_BIT or
                GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        releaseBuffer(coefficients)
        requireNoGlError("guided depth filter")
        return guidedTex
    }

    /**
     * RGBA16F layered depth: composed / subject / non-subject disparity, layer
     * coverage. Mask-guided upsampling, RGB refinement of the layer edge, then
     * the per-layer discontinuity-weighted median.
     */
    private fun renderLayeredDepth(
        framebuffer: Int,
        inputTex: Int,
        guidedDepthTex: Int,
        layerMaskTex: Int,
        layerInteriorTex: Int,
        layerMask: SubjectMask,
        focusDepth: Float,
        linearInput: Boolean,
        width: Int,
        height: Int,
        medianRadius: Int,
    ): Int {
        val upsampledTex = track(createRenderTexture(width, height))
        bindTargets(framebuffer, upsampledTex)
        requireFramebufferComplete("depth upsample")
        GLES30.glViewport(0, 0, width, height)
        useProgram(jbuUpsampleProgramId)
        bindSampler(jbuUpsampleProgramId, "uLowResDepth", 0, guidedDepthTex)
        bindSampler(jbuUpsampleProgramId, "uHighResGuide", 1, inputTex)
        bindSampler(jbuUpsampleProgramId, "uSubjectMask", 2, layerMaskTex)
        bindSampler(jbuUpsampleProgramId, "uLayerInterior", 3, layerInteriorTex)
        uniform2f(jbuUpsampleProgramId, "uMaskTexelSize", 1f / layerMask.width, 1f / layerMask.height)
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uMaskBounds"),
            layerMask.region.left, layerMask.region.top,
            layerMask.region.width, layerMask.region.height,
        )
        uniform1f(jbuUpsampleProgramId, "uFocusDepth", focusDepth)
        uniform1i(jbuUpsampleProgramId, "uLinearInput", if (linearInput) 1 else 0)
        drawQuad(jbuUpsampleProgramId)
        requireNoGlError("layer mask / layered upsample RGBA16F")

        val refinedTex = track(createRenderTexture(width, height))
        bindTargets(framebuffer, refinedTex)
        requireFramebufferComplete("depth refine")
        useProgram(depthRefineProgramId)
        bindSampler(depthRefineProgramId, "uDepthTexture", 0, upsampledTex)
        bindSampler(depthRefineProgramId, "uHighResGuide", 1, inputTex)
        // The uncertainty band follows the source mask footprint, not the
        // photo's resolution or aperture. Never undersample working pixels.
        uniform2f(
            depthRefineProgramId, "uRefineStep",
            max(1f / width, 0.5f * layerMask.region.width / layerMask.width),
            max(1f / height, 0.5f * layerMask.region.height / layerMask.height),
        )
        uniform1f(depthRefineProgramId, "uFocusDepth", focusDepth)
        uniform1i(depthRefineProgramId, "uLinearInput", if (linearInput) 1 else 0)
        drawQuad(depthRefineProgramId)
        requireNoGlError("RGB mask / layered depth refine RGBA16F")
        release(upsampledTex)

        val layersTex = track(createStorageTexture(width, height))
        useProgram(layerMedianProgramId)
        GLES31.glBindImageTexture(0, layersTex, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        bindSampler(layerMedianProgramId, "uDepthTexture", 0, refinedTex)
        uniform1f(layerMedianProgramId, "uRangeSigmaBins", LAYER_MEDIAN_SIGMA_BINS)
        uniform1f(layerMedianProgramId, "uFlatThreshold", LAYER_MEDIAN_FLAT_THRESHOLD)
        uniform1f(layerMedianProgramId, "uEdgeWeight", LAYER_MEDIAN_EDGE_WEIGHT)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(height),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_FRAMEBUFFER_BARRIER_BIT or
                GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        requireNoGlError("layer discontinuity median")
        release(refinedTex)
        return layersTex
    }

    /** Highlight guide H / max(H) at a short edge of 512 px; returns the texture and 1 / max(H). */
    private fun renderHighlightGuide(
        framebuffer: Int,
        inputTex: Int,
        originalImage: Bitmap,
        linearInput: Boolean,
    ): Pair<Int, Float> {
        val shortEdge = min(originalImage.width, originalImage.height)
        val scale = min(1f, GUIDE_SHORT_EDGE.toFloat() / shortEdge)
        val width = max((originalImage.width * scale).roundToInt(), 1)
        val height = max((originalImage.height * scale).roundToInt(), 1)
        val lod = log2(1f / scale).coerceAtLeast(0f)

        val luminanceTex = track(createRenderTexture(width, height, filterNearest = true))
        bindTargets(framebuffer, luminanceTex)
        requireFramebufferComplete("highlight guide luminance")
        GLES30.glViewport(0, 0, width, height)
        useProgram(guideLuminanceProgramId)
        bindSampler(guideLuminanceProgramId, "uInputTexture", 0, inputTex)
        uniform1f(guideLuminanceProgramId, "uSourceLod", lod)
        uniform1i(guideLuminanceProgramId, "uLinearInput", if (linearInput) 1 else 0)
        drawQuad(guideLuminanceProgramId)
        requireNoGlError("highlight guide luminance")
        val maxLuminance = textureMax(luminanceTex, width, height)

        val gradientTex = track(createRenderTexture(width, height, filterNearest = true))
        bindTargets(framebuffer, gradientTex)
        requireFramebufferComplete("highlight guide gradient mask")
        useProgram(guideGradientProgramId)
        bindSampler(guideGradientProgramId, "uLuminanceTexture", 0, luminanceTex)
        uniform1f(guideGradientProgramId, "uInverseMax", if (maxLuminance > 0f) 1f / maxLuminance else 0f)
        drawQuad(guideGradientProgramId)
        requireNoGlError("highlight guide gradient mask")
        release(luminanceTex)

        val guideTex = track(createRenderTexture(width, height))
        bindTargets(framebuffer, guideTex)
        requireFramebufferComplete("highlight guide")
        useProgram(guideCombineProgramId)
        bindSampler(guideCombineProgramId, "uGradientTexture", 0, gradientTex)
        drawQuad(guideCombineProgramId)
        requireNoGlError("highlight guide")
        release(gradientTex)
        val maxGuide = textureMax(guideTex, width, height)
        return guideTex to (if (maxGuide > 0f) 1f / maxGuide else 0f)
    }

    /**
     * Swirl: the compact-highlight classifier field and its analytic discs.
     * Bubble: the light-source field (energy, membership), its planned soap
     * bubbles and the subject-free layer color the scatter substitutes for
     * the sources. Selection and disc sizes follow the previous renderer's
     * CoC ([BokehHighlightPlanner.legacyCocPixels]).
     */
    private fun renderStyleSources(
        framebuffer: Int,
        bokehStyle: BokehStyle,
        inputTex: Int,
        layersTex: Int,
        focusDepth: Float,
        aperture: Float,
        linearInput: Boolean,
        halfFloatOutput: Boolean,
        originalImage: Bitmap,
        width: Int,
        height: Int,
    ): StyleSources {
        val bubble = bokehStyle == BokehStyle.BUBBLE
        val maxBlurRadius = BokehHighlightPlanner.legacyMaxBlurRadius(originalImage.width)
        val classification = readDepthClassification(framebuffer, layersTex, width, height)

        // Bubble energy carries reconstructed clipped radiance above 1.
        val halfFloatSource = halfFloatOutput || bubble
        val sourceTex = track(createMipmappedTexture(width, height, halfFloatSource))
        bindTargets(framebuffer, sourceTex)
        requireFramebufferComplete(if (bubble) "bubble source field" else "compact bokeh highlight")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glEnable(GLES30.GL_DITHER)
        val program = styleSourceProgramId
        useProgram(program)
        bindSampler(program, "uInputTexture", 0, inputTex)
        bindSampler(program, "uDepthTexture", 1, layersTex)
        uniform1f(program, "uMaxBlurRadius", maxBlurRadius)
        uniform1f(program, "uFocusDepth", focusDepth)
        uniform1i(program, "uLinearInput", if (linearInput) 1 else 0)
        if (bubble) {
            val backgroundRadius = maxBlurRadius * BokehHighlightPlanner.BUBBLE_BACKGROUND_RADIUS_SCALE
            uniform1f(program, "uAperture", aperture)
            uniform1f(program, "uMinCocPixels", BokehHighlightPlanner.MIN_BUBBLE_COC_PIXELS)
            uniform1f(program, "uMinBubbleDepthGap", BokehHighlightPlanner.MIN_BUBBLE_DEPTH_GAP)
            uniform1f(program, "uSourceLod", log2(originalImage.width.toFloat() / width).coerceAtLeast(0f))
            uniform1f(program, "uBackgroundLod", log2(backgroundRadius.coerceAtLeast(1f)))
            uniform2f(
                program, "uBackgroundStep",
                backgroundRadius / originalImage.width, backgroundRadius / originalImage.height,
            )
        } else {
            uniform1f(program, "uAperture", BokehHighlightPlanner.HIGHLIGHT_CLASSIFICATION_F_NUMBER)
            uniform2f(program, "uTexelSize", 1f / originalImage.width, 1f / originalImage.height)
            uniform1f(
                program, "uMinNeighborhoodLumaDifference",
                BokehHighlightPlanner.MIN_HIGHLIGHT_NEIGHBOR_LUMA_DIFFERENCE,
            )
        }
        drawQuad(program)
        GLES30.glDisable(GLES30.GL_DITHER)
        requireNoGlError(if (bubble) "bubble source field RGBA16F" else "compact bokeh highlight")

        val cocPixels = { disparity: Float ->
            BokehHighlightPlanner.legacyCocPixels(disparity, focusDepth, aperture, maxBlurRadius)
        }
        val bytesPerPixel = if (halfFloatSource) 8L else 4L
        val buffer = LargeDirectBuffer.allocate(width.toLong() * height * bytesPerPixel, "OGL style-source readback")
            ?: throw IllegalStateException("Unable to allocate style-source readback buffer")
        val highlights = try {
            GLES30.glReadPixels(
                0, 0, width, height, GLES30.GL_RGBA,
                if (halfFloatSource) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                buffer,
            )
            requireNoGlError("style source readback")
            if (bubble) {
                BokehHighlightPlanner.planBubbleHighlights(
                    buffer, width, height, classification, originalImage.width, originalImage.height,
                    cocPixels, maxBlurRadius,
                ).also { plan ->
                    PLog.d(
                        TAG,
                        "Bubble bokeh plan: components=${plan.componentCount}, " +
                            "splitComponents=${plan.splitComponentCount}, planned=${plan.plannedCount}, " +
                            "capped=${plan.cappedCount}, drawn=${plan.bubbles.size}",
                    )
                }.bubbles
            } else {
                BokehHighlightPlanner.extractAnalyticHighlights(
                    buffer, width, height, halfFloatSource, classification.otherDepth, classification.subjectMask,
                    originalImage.width, originalImage.height, focusDepth, cocPixels, maxBlurRadius,
                ).also { extraction ->
                    PLog.d(
                        TAG,
                        "Swirl highlights: candidates=${extraction.eligibleCandidateCount}, " +
                            "depthGateRejected=${extraction.depthGateRejectedCount}, " +
                            "preExisting=${extraction.preExistingBokehCount}, " +
                            "densitySuppressed=${extraction.densitySuppressedCount}, " +
                            "accepted=${extraction.highlights.size}",
                    )
                }.highlights
            }
        } finally {
            LargeDirectBuffer.free(buffer)
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTex)
        GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)

        val layerColorTex = if (bubble) {
            track(createMipmappedTexture(width, height, halfFloat = true)).also { texture ->
                bindTargets(framebuffer, texture)
                requireFramebufferComplete("premultiplied bokeh layer")
                useProgram(layerColorProgramId)
                bindSampler(layerColorProgramId, "uInputTexture", 0, inputTex)
                bindSampler(layerColorProgramId, "uDepthTexture", 1, layersTex)
                uniform1i(layerColorProgramId, "uLinearInput", if (linearInput) 1 else 0)
                drawQuad(layerColorProgramId)
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
                GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
            }
        } else {
            0
        }
        requireNoGlError("style sources")
        return StyleSources(
            shaderStyle = if (bubble) 2 else 1,
            sourceTexture = sourceTex,
            layerColorTexture = layerColorTex,
            highlights = highlights,
        )
    }

    /** RGBA8 copy of the non-subject disparity and the subject coverage for CPU planning. */
    private fun readDepthClassification(
        framebuffer: Int,
        layersTex: Int,
        width: Int,
        height: Int,
    ): BokehHighlightPlanner.DepthClassification {
        val readbackTex = track(createRenderTexture(width, height, halfFloat = false, filterNearest = true))
        bindTargets(framebuffer, readbackTex)
        requireFramebufferComplete("depth classification resolve")
        GLES30.glViewport(0, 0, width, height)
        useProgram(depthReadbackProgramId)
        bindSampler(depthReadbackProgramId, "uDepthTexture", 0, layersTex)
        drawQuad(depthReadbackProgramId)
        val pixelCount = width * height
        val buffer = LargeDirectBuffer.allocate(pixelCount.toLong() * 4L, "OGL bokeh refined-depth readback")
            ?: throw IllegalStateException("Unable to allocate refined-depth readback buffer")
        return try {
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer)
            requireNoGlError("depth / subject mask RGBA8 readback")
            buffer.position(0)
            val depth = ByteArray(pixelCount)
            val mask = ByteArray(pixelCount)
            // Bulk copies of whole-pixel chunks; per-byte direct-buffer reads are bounds checked.
            val chunk = ByteArray(CLASSIFICATION_CHUNK_PIXELS * 4)
            var first = 0
            while (first < pixelCount) {
                val count = min(CLASSIFICATION_CHUNK_PIXELS, pixelCount - first)
                buffer.get(chunk, 0, count * 4)
                for (index in 0 until count) {
                    depth[first + index] = chunk[index * 4]
                    mask[first + index] = chunk[index * 4 + 1]
                }
                first += count
            }
            BokehHighlightPlanner.DepthClassification(depth, mask)
        } finally {
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
            LargeDirectBuffer.free(buffer)
            release(readbackTex)
        }
    }

    /**
     * Instanced analytic discs (swirl) or soap bubbles into a transparent
     * working-resolution layer: additive in HDR, screen opacity in SDR.
     */
    private fun renderHighlightLayer(
        framebuffer: Int,
        style: StyleSources,
        width: Int,
        height: Int,
        originalImage: Bitmap,
        linearInput: Boolean,
        halfFloatOutput: Boolean,
    ): Int {
        val highlightTex = track(createRenderTexture(width, height, halfFloat = halfFloatOutput))
        bindTargets(framebuffer, highlightTex)
        requireFramebufferComplete("analytic bokeh highlight layer")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        val highlights = style.highlights
        if (highlights.isEmpty()) return highlightTex

        val stride = BokehHighlightPlanner.HIGHLIGHT_INSTANCE_STRIDE_FLOATS
        val instanceByteCount = highlights.size.toLong() * stride * 4L
        val instanceBytes = LargeDirectBuffer.allocate(instanceByteCount, "OGL analytic-highlight instances")
            ?: throw IllegalStateException("Unable to allocate analytic-highlight instance buffer")
        val instanceBuffer = IntArray(1)
        val program = styleSpriteProgramId
        try {
            val instances = instanceBytes.order(ByteOrder.nativeOrder()).asFloatBuffer()
            for (highlight in highlights) {
                instances.put(highlight.centerU)
                instances.put(highlight.centerV)
                instances.put(highlight.cocPixels)
                instances.put(highlight.signalRed)
                instances.put(highlight.signalGreen)
                instances.put(highlight.signalBlue)
            }
            instances.position(0)
            GLES30.glGenBuffers(1, instanceBuffer, 0)
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, instanceBuffer[0])
            GLES30.glBufferData(GLES30.GL_ARRAY_BUFFER, instanceByteCount.toInt(), instances, GLES30.GL_STREAM_DRAW)

            useProgram(program)
            uniform2f(program, "uImageSize", originalImage.width.toFloat(), originalImage.height.toFloat())
            GLES30.glUniform3fv(GLES30.glGetUniformLocation(program, "uPupilWarp"), 1, style.pupilWarp, 0)
            uniform1i(program, "uLinearInput", if (linearInput) 1 else 0)
            val positionLocation = GLES30.glGetAttribLocation(program, "aPosition")
            val centerLocation = GLES30.glGetAttribLocation(program, "aCenterUv")
            val cocLocation = GLES30.glGetAttribLocation(program, "aCocPixels")
            val signalLocation = GLES30.glGetAttribLocation(program, "aSignal")
            check(positionLocation >= 0 && centerLocation >= 0 && cocLocation >= 0 && signalLocation >= 0) {
                "Analytic-highlight program has inactive vertex attributes"
            }
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
            GLES30.glEnableVertexAttribArray(positionLocation)
            GLES30.glVertexAttribPointer(positionLocation, 2, GLES30.GL_FLOAT, false, 0, 0)
            val strideBytes = stride * 4
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, instanceBuffer[0])
            for ((location, size, offset) in listOf(
                Triple(centerLocation, 2, 0),
                Triple(cocLocation, 1, 2 * 4),
                Triple(signalLocation, 3, 3 * 4),
            )) {
                GLES30.glEnableVertexAttribArray(location)
                GLES30.glVertexAttribPointer(location, size, GLES30.GL_FLOAT, false, strideBytes, offset)
                GLES30.glVertexAttribDivisor(location, 1)
            }

            GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
            GLES30.glEnable(GLES30.GL_DITHER)
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glEnable(GLES30.GL_BLEND)
            GLES30.glBlendFunc(GLES30.GL_ONE, if (linearInput) GLES30.GL_ONE else GLES30.GL_ONE_MINUS_SRC_COLOR)
            GLES30.glColorMask(true, true, true, false)
            try {
                GLES30.glDrawElementsInstanced(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, 0, highlights.size)
                requireNoGlError("analytic bokeh highlights")
            } finally {
                GLES30.glColorMask(true, true, true, true)
                GLES30.glDisable(GLES30.GL_BLEND)
                GLES30.glDisable(GLES30.GL_DITHER)
                GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ZERO)
                for (location in listOf(centerLocation, cocLocation, signalLocation)) {
                    GLES30.glVertexAttribDivisor(location, 0)
                    GLES30.glDisableVertexAttribArray(location)
                }
                GLES30.glDisableVertexAttribArray(positionLocation)
                GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
                GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
            }
        } finally {
            if (instanceBuffer[0] != 0) GLES30.glDeleteBuffers(1, instanceBuffer, 0)
            LargeDirectBuffer.free(instanceBytes)
        }
        return highlightTex
    }

    /** Signed CoC of one domain, with the far-side Gaussian spread when the domain starts below 10 px. */
    private fun renderCoc(
        framebuffer: Int,
        layersTex: Int,
        domain: LensBlurSplatDomain,
        width: Int,
        height: Int,
        focalRange: LensBlurFocalRange,
        params: LensBlurParams,
        layout: LensBlurLayout,
    ): Int {
        val cocTex = track(createRenderTexture(width, height, filterNearest = false))
        bindTargets(framebuffer, cocTex)
        requireFramebufferComplete("lens blur CoC")
        GLES30.glViewport(0, 0, width, height)
        useProgram(cocProgramId)
        bindSampler(cocProgramId, "uDepthTexture", 0, layersTex)
        setCocUniforms(cocProgramId, focalRange, params)
        uniform1f(cocProgramId, "uSpreadCap", SPREAD_CAP_PIXELS / layout.maxRadiusFull)
        drawQuad(cocProgramId)
        requireNoGlError("lens blur CoC")
        if (domain.cocSpreadRadius <= 0f) return cocTex

        val spreadTex = track(createRenderTexture(width, height, filterNearest = false))
        for ((source, target, horizontal) in listOf(
            Triple(cocTex, spreadTex, true),
            Triple(spreadTex, cocTex, false),
        )) {
            bindTargets(framebuffer, target)
            requireFramebufferComplete("lens blur CoC spread")
            useProgram(cocSpreadProgramId)
            bindSampler(cocSpreadProgramId, "uCocTexture", 0, source)
            uniform1f(cocSpreadProgramId, "uRadius", domain.cocSpreadRadius)
            GLES30.glUniform2i(
                GLES30.glGetUniformLocation(cocSpreadProgramId, "uDirection"),
                if (horizontal) 1 else 0,
                if (horizontal) 0 else 1,
            )
            uniform1i(cocSpreadProgramId, "uFinalize", if (horizontal) 0 else 1)
            drawQuad(cocSpreadProgramId)
            requireNoGlError("lens blur CoC spread")
        }
        release(spreadTex)
        return cocTex
    }

    private fun setCocUniforms(program: Int, focalRange: LensBlurFocalRange, params: LensBlurParams) {
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(program, "uFocalRange"),
            focalRange.lowerNone, focalRange.lowerFull, focalRange.upperFull, focalRange.upperNone,
        )
        uniform1f(program, "uBlurAmount", params.blurAmount)
    }

    /** Near bins [0, 301) and far bins [301, 602) of the radius histogram over every domain. */
    private fun buildHistogram(targets: List<DomainTargets>, layout: LensBlurLayout): IntArray {
        val words = 2 * BokehShaders.HISTOGRAM_BINS
        val buffer = createBuffer(words * 4L, "lens blur histogram")
        clearBuffer(buffer, words)
        useProgram(histogramProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, buffer)
        uniform1f(histogramProgramId, "uMaxRadius", layout.maxRadius)
        for (target in targets) {
            bindSampler(histogramProgramId, "uCocTexture", 0, target.cocTexture)
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(target.width),
                GlesComputeWorkGroup.imageGroupCount(target.height),
                1,
            )
        }
        GLES31.glMemoryBarrier(GLES31.GL_BUFFER_UPDATE_BARRIER_BIT)
        val histogram = readIntBuffer(buffer, words)
        releaseBuffer(buffer)
        requireNoGlError("lens blur histogram")
        return histogram
    }

    private fun renderStrips(
        targets: List<DomainTargets>,
        layout: LensBlurLayout,
        params: LensBlurParams,
        style: StyleSources?,
        nearBands: List<Int>,
        farBands: List<Int>,
        inputTex: Int,
        guideTex: Int,
        guideScale: Float,
        workingLod: Float,
        width: Int,
        height: Int,
        nearTex: Int,
        farTex: Int,
        radiusScale: Float,
        originalImage: Bitmap,
        linearInput: Boolean,
    ) {
        val stripPixels = width.toLong() * STRIP_ROWS
        val deltaBuffers = targets.map { target ->
            val rows = if (target.domain.level == 0) STRIP_ROWS else STRIP_ROWS / 2 + 3
            val words = target.width.toLong() * rows * 4
            createBuffer(words * 4, "lens blur gradient field").also { clearBuffer(it, words.toInt()) }
        }
        val halfIntegratedBuffer = targets.firstOrNull { it.domain.level != 0 }?.let { target ->
            createBuffer(target.width.toLong() * (STRIP_ROWS / 2 + 3) * 16, "lens blur half-domain field")
        }
        val bandBuffer = createBuffer(stripPixels * 16, "lens blur band").also {
            clearBuffer(it, (stripPixels * 4).toInt())
        }
        val nearBuffer = createBuffer(stripPixels * 16, "lens blur near scene").also {
            clearBuffer(it, (stripPixels * 4).toInt())
        }
        val farBuffer = createBuffer(stripPixels * 16, "lens blur far scene").also {
            clearBuffer(it, (stripPixels * 4).toInt())
        }
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
        val boostRadius = BOOST_RADIUS_FRACTION * min(originalImage.width, originalImage.height) * radiusScale
        // Layer-color mip of the neighborhood the bubble-source pass subtracted.
        val bubbleBackgroundLod = log2(
            (2f * BokehHighlightPlanner.BUBBLE_BACKGROUND_RADIUS_SCALE *
                BokehHighlightPlanner.legacyMaxBlurRadius(originalImage.width) * radiusScale)
                .coerceAtLeast(1f)
        )

        var stripRow = 0
        while (stripRow < height) {
            val stripRows = min(STRIP_ROWS, height - stripRow)
            for ((nearField, bands) in listOf(NEAR_PASS to nearBands, FAR_PASS to farBands)) {
                for (bandIndex in bands) {
                    val band = layout.bands[bandIndex]
                    targets.forEachIndexed { domainIndex, target ->
                        val domain = target.domain
                        if (!band.overlaps(domain.minRadius, domain.maxRadius)) return@forEachIndexed
                        val (rowLow, rowHigh) = if (domain.level == 0) {
                            stripRow to stripRow + stripRows
                        } else {
                            val low = max(0, floor(stripRow / 2.0 - 0.25).toInt())
                            val high = min(target.height, floor((stripRow + stripRows - 1) / 2.0 - 0.25).toInt() + 2)
                            low to high
                        }
                        scatter(
                            target, deltaBuffers[domainIndex], rowLow, rowHigh, nearField, band, params, style,
                            layout, inputTex, guideTex, guideScale, workingLod + domain.level, boostRadius,
                            radiusScale, linearInput, bubbleBackgroundLod,
                        )
                        if (domain.level == 0) {
                            integrate(deltaBuffers[domainIndex], bandBuffer, target.width, rowHigh - rowLow, true)
                        } else {
                            val integrated = checkNotNull(halfIntegratedBuffer)
                            integrate(deltaBuffers[domainIndex], integrated, target.width, rowHigh - rowLow, false)
                            upsampleAdd(integrated, bandBuffer, width, stripRow, stripRows, target, rowLow, rowHigh)
                        }
                    }
                    alphaBlend(
                        bandBuffer,
                        if (nearField) nearBuffer else farBuffer,
                        width,
                        stripRows,
                        if (nearField) LensBlurParams.NEAR_ALPHA_GAIN else LensBlurParams.FAR_ALPHA_GAIN,
                        linearInput,
                    )
                    // Submit each band on its own so the UI renderer is not queued behind a strip.
                    GlesGpuScheduler.yieldToUiRenderer()
                }
            }
            store(nearBuffer, farBuffer, nearTex, farTex, width, stripRow, stripRows)
            stripRow += stripRows
        }
        GLES31.glMemoryBarrier(
            GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
        )
        requireNoGlError("lens blur strips")
        deltaBuffers.forEach(::releaseBuffer)
        halfIntegratedBuffer?.let(::releaseBuffer)
        releaseBuffer(bandBuffer)
        releaseBuffer(nearBuffer)
        releaseBuffer(farBuffer)
    }

    private fun scatter(
        target: DomainTargets,
        deltaBuffer: Int,
        rowLow: Int,
        rowHigh: Int,
        nearField: Boolean,
        band: LensBlurTent,
        params: LensBlurParams,
        style: StyleSources?,
        layout: LensBlurLayout,
        inputTex: Int,
        guideTex: Int,
        guideScale: Float,
        colorLod: Float,
        boostRadius: Float,
        radiusScale: Float,
        linearInput: Boolean,
        bubbleBackgroundLod: Float,
    ) {
        val domain = target.domain
        // The warped pupil reaches extent x tangential scale x (1 + shear) of the CoC.
        val pupilReach = style?.let {
            val warp = it.pupilWarp
            ceil(APERTURE_EXTENT * max(warp[0], warp[1]) * (1f + warp[2]) * domain.maxRadius * domain.scale).toInt()
        } ?: 0
        val reach = max(target.psf.maxHalfSize, pupilReach) + 1
        val sourceLow = max(0, rowLow - reach)
        val sourceHigh = min(target.height, rowHigh + reach)
        if (sourceHigh <= sourceLow) return
        val program = scatterProgramId
        useProgram(program)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, deltaBuffer)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, target.psfBuffer)
        bindSampler(program, "uCocTexture", 0, target.cocTexture)
        bindSampler(program, "uInputTexture", 1, inputTex)
        bindSampler(program, "uGuideTexture", 2, guideTex)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(program, "uDomainSize"), target.width, target.height)
        uniform1i(program, "uSourceRow", sourceLow)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(program, "uStripRows"), rowLow, rowHigh)
        uniform1i(program, "uNearField", if (nearField) 1 else 0)
        uniform4f(program, "uBandTent", band)
        uniform4f(program, "uDomainTent", domain.tent)
        uniform1f(program, "uMaxRadius", layout.maxRadius)
        uniform1f(program, "uDomainScale", domain.scale)
        uniform1f(program, "uRadiusScale", radiusScale)
        uniform1f(program, "uColorLod", colorLod)
        uniform1f(program, "uGuideScale", guideScale)
        uniform1f(program, "uHighlightsBoost", params.highlightsBoost)
        uniform1f(program, "uBoostRadius", boostRadius)
        uniform1f(program, "uCatEyeAmount", params.catEyeAmount)
        uniform1f(program, "uCatEyeScale", params.catEyeScale)
        uniform1i(program, "uLinearInput", if (linearInput) 1 else 0)
        uniform1i(program, "uStyle", style?.shaderStyle ?: 0)
        // Every sampler gets a valid texture, also where its branch is off.
        bindSampler(program, "uBubbleSourceTexture", 3, style?.sourceTexture ?: inputTex)
        bindSampler(program, "uLayerColorTexture", 4, style?.layerColorTexture?.takeIf { it != 0 } ?: inputTex)
        if (style != null) {
            GLES30.glUniform3fv(GLES30.glGetUniformLocation(program, "uPupilWarp"), 1, style.pupilWarp, 0)
            uniform1f(program, "uSourceLod", domain.level.toFloat())
            uniform1f(program, "uBubbleBackgroundLod", bubbleBackgroundLod)
        }
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(target.width),
            GlesComputeWorkGroup.imageGroupCount(sourceHigh - sourceLow),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun integrate(deltaBuffer: Int, targetBuffer: Int, width: Int, rows: Int, accumulate: Boolean) {
        useProgram(integrateProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, deltaBuffer)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, targetBuffer)
        uniform1i(integrateProgramId, "uWidth", width)
        uniform1i(integrateProgramId, "uRows", rows)
        uniform1i(integrateProgramId, "uAccumulate", if (accumulate) 1 else 0)
        GLES31.glDispatchCompute(GlesComputeWorkGroup.linearGroupCount(rows), 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun upsampleAdd(
        sourceBuffer: Int,
        bandBuffer: Int,
        width: Int,
        stripRow: Int,
        stripRows: Int,
        target: DomainTargets,
        sourceRow: Int,
        sourceRowEnd: Int,
    ) {
        useProgram(upsampleAddProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, sourceBuffer)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, bandBuffer)
        uniform1i(upsampleAddProgramId, "uWidth", width)
        uniform1i(upsampleAddProgramId, "uStripRow", stripRow)
        uniform1i(upsampleAddProgramId, "uStripRows", stripRows)
        uniform1i(upsampleAddProgramId, "uSourceWidth", target.width)
        uniform1i(upsampleAddProgramId, "uSourceRow", sourceRow)
        uniform1i(upsampleAddProgramId, "uSourceRows", sourceRowEnd - sourceRow)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(stripRows),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun alphaBlend(bandBuffer: Int, sceneBuffer: Int, width: Int, rows: Int, gain: Float, linearInput: Boolean) {
        useProgram(alphaBlendProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, bandBuffer)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, sceneBuffer)
        uniform1i(alphaBlendProgramId, "uWidth", width)
        uniform1i(alphaBlendProgramId, "uRows", rows)
        uniform1f(alphaBlendProgramId, "uGain", gain)
        uniform1i(alphaBlendProgramId, "uLinearInput", if (linearInput) 1 else 0)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(rows),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun store(
        nearBuffer: Int,
        farBuffer: Int,
        nearTex: Int,
        farTex: Int,
        width: Int,
        stripRow: Int,
        rows: Int,
    ) {
        useProgram(storeProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, nearBuffer)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, farBuffer)
        GLES31.glBindImageTexture(0, nearTex, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        GLES31.glBindImageTexture(1, farTex, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        uniform1i(storeProgramId, "uWidth", width)
        uniform1i(storeProgramId, "uStripRow", stripRow)
        uniform1i(storeProgramId, "uRows", rows)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(rows),
            1,
        )
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
        )
        GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
        GLES31.glBindImageTexture(1, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
    }

    /** Maximum of the R channel of a non-negative texture. */
    private fun textureMax(texture: Int, width: Int, height: Int): Float {
        val buffer = createBuffer(4, "lens blur maximum")
        clearBuffer(buffer, 1)
        useProgram(maxProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, buffer)
        bindSampler(maxProgramId, "uTexture", 0, texture)
        GLES31.glDispatchCompute(
            GlesComputeWorkGroup.imageGroupCount(width),
            GlesComputeWorkGroup.imageGroupCount(height),
            1,
        )
        GLES31.glMemoryBarrier(GLES31.GL_BUFFER_UPDATE_BARRIER_BIT)
        val bits = readIntBuffer(buffer, 1)[0]
        releaseBuffer(buffer)
        requireNoGlError("lens blur maximum")
        return java.lang.Float.intBitsToFloat(bits)
    }

    private fun createBuffer(byteCount: Long, label: String): Int {
        check(byteCount <= maxStorageBlockSize) {
            "$label needs $byteCount bytes; GL_MAX_SHADER_STORAGE_BLOCK_SIZE is $maxStorageBlockSize"
        }
        val ids = IntArray(1)
        GLES31.glGenBuffers(1, ids, 0)
        check(ids[0] != 0) { "$label glGenBuffers returned 0" }
        buffers += ids[0]
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, ids[0])
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, byteCount.toInt(), null, GLES31.GL_DYNAMIC_COPY)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        requireNoGlError("allocate $label")
        return ids[0]
    }

    private fun createIntBuffer(data: IntArray, label: String): Int {
        val byteCount = data.size.toLong() * 4
        check(byteCount <= maxStorageBlockSize) { "$label exceeds GL_MAX_SHADER_STORAGE_BLOCK_SIZE" }
        val upload = ByteBuffer.allocateDirect(data.size * 4).order(ByteOrder.nativeOrder())
        upload.asIntBuffer().put(data)
        upload.position(0)
        val ids = IntArray(1)
        GLES31.glGenBuffers(1, ids, 0)
        buffers += ids[0]
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, ids[0])
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, data.size * 4, upload, GLES31.GL_STATIC_DRAW)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        requireNoGlError("upload $label")
        return ids[0]
    }

    /** `glBufferData(..., null, ...)` contents are undefined; every accumulator starts from an explicit clear. */
    private fun clearBuffer(buffer: Int, words: Int) {
        useProgram(clearProgramId)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, buffer)
        uniform1i(clearProgramId, "uCount", words)
        GLES31.glDispatchCompute(GlesComputeWorkGroup.linearGroupCount(words), 1, 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)
    }

    private fun readIntBuffer(buffer: Int, words: Int): IntArray {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        val mapped = GLES31.glMapBufferRange(
            GLES31.GL_SHADER_STORAGE_BUFFER, 0, words * 4, GLES31.GL_MAP_READ_BIT,
        ) as? ByteBuffer ?: error("lens blur buffer map failed")
        val values = IntArray(words)
        mapped.order(ByteOrder.nativeOrder()).asIntBuffer().get(values)
        GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        return values
    }

    private fun releaseBuffer(buffer: Int) {
        if (buffers.remove(buffer)) GLES31.glDeleteBuffers(1, intArrayOf(buffer), 0)
    }

    private fun readback(originalImage: Bitmap, outputTex: Int, halfFloatOutput: Boolean): Bitmap? {
        val resultBitmap = Bitmap.createBitmap(
            originalImage.width, originalImage.height,
            if (halfFloatOutput) Bitmap.Config.RGBA_F16 else Bitmap.Config.ARGB_8888,
            false,
            originalImage.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB),
        )
        val bytesPerPixel = if (halfFloatOutput) 8L else 4L
        val byteCount = originalImage.width.toLong() * originalImage.height.toLong() * bytesPerPixel
        val buffer = LargeDirectBuffer.allocate(byteCount, "OGL bokeh readback") ?: return null
        try {
            // Row bands at their byte offsets; the UI renderer runs between transfers.
            val rowBytes = originalImage.width.toLong() * bytesPerPixel
            var bandRow = 0
            while (bandRow < originalImage.height) {
                val rows = min(OUTPUT_BAND_ROWS, originalImage.height - bandRow)
                buffer.position((bandRow * rowBytes).toInt())
                GLES30.glReadPixels(
                    0, bandRow, originalImage.width, rows, GLES30.GL_RGBA,
                    if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                    buffer,
                )
                GlesGpuScheduler.yieldToUiRenderer()
                bandRow += rows
            }
            requireNoGlError("lens blur readback")
            buffer.position(0)
            resultBitmap.copyPixelsFromBuffer(buffer)
        } finally {
            LargeDirectBuffer.free(buffer)
        }
        release(outputTex)
        return resultBitmap
    }

    private fun resolveBokehRenderSize(width: Int, height: Int): Pair<Int, Int> {
        val maxEdge = maxOf(width, height)
        if (maxEdge <= MAX_BOKEH_RENDER_EDGE) return width to height
        return if (width >= height) {
            MAX_BOKEH_RENDER_EDGE to
                (height.toLong() * MAX_BOKEH_RENDER_EDGE / width).toInt().coerceAtLeast(1)
        } else {
            (width.toLong() * MAX_BOKEH_RENDER_EDGE / height).toInt().coerceAtLeast(1) to
                MAX_BOKEH_RENDER_EDGE
        }
    }

    private fun ceilDiv(value: Int, divisor: Int): Int = (value + divisor - 1) / divisor

    private fun track(texture: Int): Int = texture.also { textures += it }

    private fun release(texture: Int) {
        if (textures.remove(texture)) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
    }

    private fun bindTargets(framebuffer: Int, target: Int) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, target, 0,
        )
    }

    private fun useProgram(program: Int) = GLES30.glUseProgram(program)

    private fun bindSampler(program: Int, name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, name), unit)
    }

    private fun uniform1f(program: Int, name: String, value: Float) =
        GLES30.glUniform1f(GLES30.glGetUniformLocation(program, name), value)

    private fun uniform1i(program: Int, name: String, value: Int) =
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, name), value)

    private fun uniform2f(program: Int, name: String, x: Float, y: Float) =
        GLES30.glUniform2f(GLES30.glGetUniformLocation(program, name), x, y)

    private fun uniform4f(program: Int, name: String, tent: LensBlurTent) =
        GLES30.glUniform4f(GLES30.glGetUniformLocation(program, name), tent.a, tent.b, tent.c, tent.d)

    private fun requireFramebufferComplete(label: String) {
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
            "$label framebuffer incomplete: 0x${status.toString(16)}"
        }
    }

    private fun requireNoGlError(label: String) {
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) { "$label: GL error 0x${error.toString(16)}" }
    }

    private fun createRenderTexture(
        width: Int,
        height: Int,
        halfFloat: Boolean = true,
        filterNearest: Boolean = false,
    ): Int {
        val texture = IntArray(1)
        GLES30.glGenTextures(1, texture, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D, 0,
            if (halfFloat) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
            width, height, 0, GLES30.GL_RGBA,
            if (halfFloat) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
            null,
        )
        val filter = if (filterNearest) GLES30.GL_NEAREST else GLES30.GL_LINEAR
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        requireNoGlError("lens blur render texture ${width}x$height")
        return texture[0]
    }

    /** Render target with a mip chain, sampled at coarser levels after glGenerateMipmap. */
    private fun createMipmappedTexture(width: Int, height: Int, halfFloat: Boolean): Int {
        val texture = createRenderTexture(width, height, halfFloat)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR_MIPMAP_LINEAR)
        return texture
    }

    /** Immutable RGBA16F target of write-only image stores, sampled with linear filtering afterwards. */
    private fun createStorageTexture(width: Int, height: Int): Int {
        val texture = IntArray(1)
        GLES30.glGenTextures(1, texture, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        requireNoGlError("lens blur storage texture ${width}x$height")
        return texture[0]
    }

    /** R16F (1 channel) or RG16F (2 channels, interleaved) float texture with linear filtering. */
    private fun createScalarTexture(
        width: Int,
        height: Int,
        values: FloatArray,
        label: String,
        channels: Int = 1,
    ): Int {
        require(channels == 1 || channels == 2) { "$label: unsupported channel count $channels" }
        require(values.size.toLong() == width.toLong() * height * channels) { "$label: size mismatch" }
        val byteCount = values.size.toLong() * Float.SIZE_BYTES
        val uploadBuffer = LargeDirectBuffer.allocate(byteCount, "OGL $label upload")
            ?: throw IllegalStateException("Unable to allocate $label upload buffer")
        val texture = IntArray(1)
        try {
            uploadBuffer.order(ByteOrder.nativeOrder())
            val floatBuffer = uploadBuffer.asFloatBuffer()
            floatBuffer.put(values)
            floatBuffer.position(0)

            GLES30.glGenTextures(1, texture, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D, 0, if (channels == 1) GLES30.GL_R16F else GLES30.GL_RG16F, width, height, 0,
                if (channels == 1) GLES30.GL_RED else GLES30.GL_RG, GLES30.GL_FLOAT, floatBuffer,
            )
            requireNoGlError("$label float upload")
            return texture[0]
        } catch (error: Throwable) {
            if (texture[0] != 0) GLES30.glDeleteTextures(1, texture, 0)
            throw error
        } finally {
            LargeDirectBuffer.free(uploadBuffer)
        }
    }

    /** Full-resolution input with a mip chain: working, domain and guide samples read coarser levels. */
    private fun createTexture(bitmap: Bitmap): Int {
        val tex = IntArray(1)
        GLES30.glGenTextures(1, tex, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, tex[0])
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR_MIPMAP_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        if (bitmap.config == Bitmap.Config.RGBA_F16) {
            val buffer = LargeDirectBuffer.allocate(bitmap.byteCount.toLong(), "OGL bokeh RGBA_F16 upload")
                ?: throw IllegalStateException("Unable to allocate RGBA_F16 upload buffer")
            try {
                bitmap.copyPixelsToBuffer(buffer)
                buffer.position(0)
                GLES30.glTexImage2D(
                    GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, bitmap.width, bitmap.height, 0,
                    GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, buffer,
                )
            } finally {
                LargeDirectBuffer.free(buffer)
            }
        } else {
            GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, bitmap, 0)
        }
        GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
        requireNoGlError("bokeh input upload")
        return tex[0]
    }

    private fun initEGL(width: Int, height: Int) {
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        val version = IntArray(2)
        EGL14.eglInitialize(eglDisplay, version, 0, version, 1)

        val configAttribs = intArrayOf(
            EGL14.EGL_RED_SIZE, 8,
            EGL14.EGL_GREEN_SIZE, 8,
            EGL14.EGL_BLUE_SIZE, 8,
            EGL14.EGL_ALPHA_SIZE, 8,
            EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
            EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE
        )
        val configs = arrayOfNulls<android.opengl.EGLConfig>(1)
        val numConfigs = IntArray(1)
        EGL14.eglChooseConfig(eglDisplay, configAttribs, 0, configs, 0, 1, numConfigs, 0)
        val config = configs[0]

        // Low priority where supported: the UI renderer preempts the lens blur between submissions.
        eglContext = GlesGpuScheduler.createBackgroundContext(eglDisplay, checkNotNull(config), TAG)
        check(eglContext != EGL14.EGL_NO_CONTEXT) {
            "Bokeh eglCreateContext failed: 0x${EGL14.eglGetError().toString(16)}"
        }

        // Rendering targets FBO textures and SSBOs; the pbuffer only anchors the context.
        val surfaceAttribs = intArrayOf(
            EGL14.EGL_WIDTH, 1,
            EGL14.EGL_HEIGHT, 1,
            EGL14.EGL_NONE
        )
        eglSurface = EGL14.eglCreatePbufferSurface(eglDisplay, config, surfaceAttribs, 0)
        check(EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            "Bokeh eglMakeCurrent failed: 0x${EGL14.eglGetError().toString(16)}"
        }
        val versionString = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        val (major, minor) = Regex("""OpenGL ES (\d+)\.(\d+)""").find(versionString)
            ?.destructured?.let { (a, b) -> a.toInt() to b.toInt() } ?: (0 to 0)
        check(major > 3 || (major == 3 && minor >= 1)) { "Lens blur requires OpenGL ES 3.1, got $versionString" }

        val limits = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limits, 0)
        val maxTextureSize = limits[0]
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS, limits, 0)
        val maxComputeBlocks = limits[0]
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, limits, 0)
        val maxComputeImages = limits[0]
        val blockSize = LongArray(1)
        GLES31.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, blockSize, 0)
        maxStorageBlockSize = blockSize[0]
        PLog.d(
            TAG, "Bokeh GLES: vendor=${GLES30.glGetString(GLES30.GL_VENDOR)}, " +
                "renderer=${GLES30.glGetString(GLES30.GL_RENDERER)}, version=$versionString, " +
                "maxTexture=$maxTextureSize, computeBlocks=$maxComputeBlocks, " +
                "computeImages=$maxComputeImages, storageBlock=$maxStorageBlockSize"
        )
        check(maxOf(width, height) <= maxTextureSize) { "Bokeh image exceeds GL_MAX_TEXTURE_SIZE" }
        check(maxComputeBlocks >= 2) { "Lens blur needs 2 compute storage blocks" }
        check(maxComputeImages >= 2) { "Lens blur needs 2 compute image units" }
    }

    private fun initGL(bokehStyle: BokehStyle, medianRadius: Int) {
        val vs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        check(vs != 0) { "Bokeh vertex shader compilation failed" }
        try {
            jbuUpsampleProgramId = createProgram(vs, BokehShaders.JBU_UPSAMPLE_FRAGMENT_SHADER, "depth upsample")
            depthRefineProgramId = createProgram(vs, BokehShaders.DEPTH_REFINE_FRAGMENT_SHADER, "depth refine")
            cocProgramId = createProgram(vs, BokehShaders.COC_FRAGMENT_SHADER, "lens blur CoC")
            cocSpreadProgramId = createProgram(vs, BokehShaders.COC_SPREAD_FRAGMENT_SHADER, "lens blur CoC spread")
            guideLuminanceProgramId = createProgram(
                vs, BokehShaders.GUIDE_LUMINANCE_FRAGMENT_SHADER, "highlight guide luminance",
            )
            guideGradientProgramId = createProgram(
                vs, BokehShaders.GUIDE_GRADIENT_FRAGMENT_SHADER, "highlight guide gradient mask",
            )
            guideCombineProgramId = createProgram(vs, BokehShaders.GUIDE_COMBINE_FRAGMENT_SHADER, "highlight guide")
            compositeProgramId = createProgram(vs, BokehShaders.COMPOSITE_FRAGMENT_SHADER, "lens blur composite")
            if (bokehStyle != BokehStyle.NATURAL) {
                depthReadbackProgramId = createProgram(
                    vs, BokehStyleShaders.DEPTH_READBACK_FRAGMENT_SHADER, "depth classification",
                )
                styleSourceProgramId = if (bokehStyle == BokehStyle.BUBBLE) {
                    layerColorProgramId = createProgram(
                        vs, BokehStyleShaders.BOKEH_LAYER_COLOR_FRAGMENT_SHADER, "premultiplied bokeh layer",
                    )
                    createProgram(vs, BokehStyleShaders.BUBBLE_SOURCE_FRAGMENT_SHADER, "bubble source field")
                } else {
                    createProgram(
                        vs, BokehStyleShaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER, "compact bokeh highlight",
                    )
                }
            }
        } finally {
            GLES30.glDeleteShader(vs)
        }
        if (bokehStyle != BokehStyle.NATURAL) {
            val bubble = bokehStyle == BokehStyle.BUBBLE
            val spriteVs = GlUtils.compileShader(
                GLES30.GL_VERTEX_SHADER,
                if (bubble) BokehStyleShaders.SOAP_BUBBLE_VERTEX_SHADER
                else BokehStyleShaders.ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER,
            )
            check(spriteVs != 0) { "Bokeh highlight vertex shader compilation failed" }
            try {
                styleSpriteProgramId = createProgram(
                    spriteVs,
                    if (bubble) BokehStyleShaders.SOAP_BUBBLE_FRAGMENT_SHADER
                    else BokehStyleShaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
                    if (bubble) "soap bubble" else "analytic bokeh highlight",
                )
            } finally {
                GLES30.glDeleteShader(spriteVs)
            }
        }
        guidedMomentsProgramId = createComputeProgram(BokehShaders.GUIDED_MOMENTS_COMPUTE_SHADER, "guided depth moments")
        guidedSolveProgramId = createComputeProgram(BokehShaders.GUIDED_SOLVE_COMPUTE_SHADER, "guided depth solve")
        guidedMeanProgramId = createComputeProgram(BokehShaders.GUIDED_MEAN_COMPUTE_SHADER, "guided depth mean")
        guidedApplyProgramId = createComputeProgram(BokehShaders.GUIDED_APPLY_COMPUTE_SHADER, "guided depth apply")
        layerMedianProgramId = createComputeProgram(
            BokehShaders.layerMedianComputeShader(medianRadius), "layer depth median",
        )
        maxProgramId = createComputeProgram(BokehShaders.MAX_COMPUTE_SHADER, "lens blur maximum")
        histogramProgramId = createComputeProgram(BokehShaders.HISTOGRAM_COMPUTE_SHADER, "lens blur histogram")
        scatterProgramId = createComputeProgram(BokehShaders.SCATTER_COMPUTE_SHADER, "lens blur scatter")
        integrateProgramId = createComputeProgram(BokehShaders.INTEGRATE_COMPUTE_SHADER, "lens blur integrate")
        upsampleAddProgramId = createComputeProgram(BokehShaders.UPSAMPLE_ADD_COMPUTE_SHADER, "lens blur upsample")
        alphaBlendProgramId = createComputeProgram(BokehShaders.ALPHA_BLEND_COMPUTE_SHADER, "lens blur alpha blend")
        storeProgramId = createComputeProgram(BokehShaders.STORE_COMPUTE_SHADER, "lens blur store")
        clearProgramId = createComputeProgram(BokehShaders.CLEAR_COMPUTE_SHADER, "lens blur clear")

        vertexBufferId = GlUtils.createBuffer(Shaders.FULL_QUAD_VERTICES)
        texCoordBufferId = GlUtils.createBuffer(Shaders.TEXTURE_COORDS)
        val indexBuffer = ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * 2)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
        indexBuffer.put(Shaders.DRAW_ORDER)
        indexBuffer.position(0)
        val ids = IntArray(1)
        GLES30.glGenBuffers(1, ids, 0)
        indexBufferId = ids[0]
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glBufferData(GLES30.GL_ELEMENT_ARRAY_BUFFER, Shaders.DRAW_ORDER.size * 2, indexBuffer, GLES30.GL_STATIC_DRAW)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    private fun createProgram(vertexShader: Int, fragmentSource: String, label: String): Int {
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource)
        check(fragmentShader != 0) { "$label fragment shader compilation failed" }
        return try {
            GlUtils.linkProgram(vertexShader, fragmentShader).also { program ->
                check(program != 0) { "$label program linking failed" }
            }
        } finally {
            GLES30.glDeleteShader(fragmentShader)
        }
    }

    private fun createComputeProgram(source: String, label: String): Int {
        GlesComputeWorkGroup.requireBaselineCompatible(source, label)
        val shader = GLES31.glCreateShader(GLES31.GL_COMPUTE_SHADER)
        GLES31.glShaderSource(shader, source)
        GLES31.glCompileShader(shader)
        val status = IntArray(1)
        GLES31.glGetShaderiv(shader, GLES31.GL_COMPILE_STATUS, status, 0)
        if (status[0] == 0) {
            val log = GLES31.glGetShaderInfoLog(shader)
            GLES31.glDeleteShader(shader)
            error("$label compile failed: $log")
        }
        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        GLES31.glLinkProgram(program)
        GLES31.glDeleteShader(shader)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, status, 0)
        if (status[0] == 0) {
            val log = GLES31.glGetProgramInfoLog(program)
            GLES31.glDeleteProgram(program)
            error("$label link failed: $log")
        }
        return program
    }

    private fun drawQuad(program: Int) {
        // Passes driven by gl_FragCoord never read vTexCoord; the linker then
        // drops aTexCoord and reports location -1, which must not be enabled.
        val posLoc = enableAttribute(program, "aPosition", vertexBufferId)
        val texLoc = enableAttribute(program, "aTexCoord", texCoordBufferId)

        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, 0)

        if (posLoc >= 0) GLES30.glDisableVertexAttribArray(posLoc)
        if (texLoc >= 0) GLES30.glDisableVertexAttribArray(texLoc)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
    }

    /** Binds a vec2 attribute when it is active in [program]; returns its location or -1. */
    private fun enableAttribute(program: Int, name: String, buffer: Int): Int {
        val location = GLES30.glGetAttribLocation(program, name)
        if (location < 0) return location
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, buffer)
        GLES30.glEnableVertexAttribArray(location)
        GLES30.glVertexAttribPointer(location, 2, GLES30.GL_FLOAT, false, 0, 0)
        return location
    }

    private fun releaseGL() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY && eglContext != EGL14.EGL_NO_CONTEXT) {
            textures.forEach { GLES30.glDeleteTextures(1, intArrayOf(it), 0) }
            buffers.forEach { GLES31.glDeleteBuffers(1, intArrayOf(it), 0) }
            listOf(
                guidedMomentsProgramId, guidedSolveProgramId, guidedMeanProgramId, guidedApplyProgramId,
                layerMedianProgramId, jbuUpsampleProgramId, depthRefineProgramId, cocProgramId, cocSpreadProgramId,
                guideLuminanceProgramId, guideGradientProgramId, guideCombineProgramId, compositeProgramId,
                maxProgramId, histogramProgramId, scatterProgramId, integrateProgramId, upsampleAddProgramId,
                alphaBlendProgramId, storeProgramId, clearProgramId, depthReadbackProgramId, layerColorProgramId,
                styleSourceProgramId, styleSpriteProgramId,
            ).filter { it != 0 }.forEach(GLES30::glDeleteProgram)
            listOf(vertexBufferId, texCoordBufferId, indexBufferId)
                .filter { it != 0 }
                .forEach { GLES30.glDeleteBuffers(1, intArrayOf(it), 0) }
        }
        textures.clear()
        buffers.clear()

        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
            EGL14.eglDestroySurface(eglDisplay, eglSurface)
            EGL14.eglDestroyContext(eglDisplay, eglContext)
            EGL14.eglTerminate(eglDisplay)
        }
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        guidedMomentsProgramId = 0
        guidedSolveProgramId = 0
        guidedMeanProgramId = 0
        guidedApplyProgramId = 0
        layerMedianProgramId = 0
        jbuUpsampleProgramId = 0
        depthRefineProgramId = 0
        cocProgramId = 0
        cocSpreadProgramId = 0
        guideLuminanceProgramId = 0
        guideGradientProgramId = 0
        guideCombineProgramId = 0
        compositeProgramId = 0
        maxProgramId = 0
        histogramProgramId = 0
        scatterProgramId = 0
        integrateProgramId = 0
        upsampleAddProgramId = 0
        alphaBlendProgramId = 0
        storeProgramId = 0
        clearProgramId = 0
        depthReadbackProgramId = 0
        layerColorProgramId = 0
        styleSourceProgramId = 0
        styleSpriteProgramId = 0
        vertexBufferId = 0
        texCoordBufferId = 0
        indexBufferId = 0
        maxStorageBlockSize = 0L
    }
}
