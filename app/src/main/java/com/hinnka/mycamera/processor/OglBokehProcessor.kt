package com.hinnka.mycamera.processor

import android.graphics.Bitmap
import android.graphics.ColorSpace
import android.opengl.EGL14
import android.opengl.GLES30
import android.opengl.GLUtils
import android.os.SystemClock
import android.util.Half
import com.hinnka.mycamera.lut.GlUtils
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.ml.RelativeDepthMap
import com.hinnka.mycamera.ml.SubjectMask
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.log2
import kotlin.math.sqrt

class OglBokehProcessor {
    companion object {
        private const val TAG = "OglBokehProcessor"
        private const val MAX_BOKEH_RENDER_EDGE = 2560
        // Keep analytic highlights as a restrained supplement to the sampled PSF.
        private const val ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED = true
        private const val HIGHLIGHT_MASK_THRESHOLD = 0.03f
        private const val MIN_ANALYTIC_COC_PIXELS = 20f
        private const val FOCUS_DEPTH_DEAD_BAND = 0.015f
        // Synthetic-highlight defocus gate. A depth sample is accepted when
        // its absolute focus gap is >= X. The low-depth branch retains the
        // established far-background allowance for normalized disparity maps.
        private const val MIN_HIGHLIGHT_SUBJECT_DEPTH_GAP = 0.4f // X
        private const val MAX_HIGHLIGHT_BACKGROUND_DEPTH = 0.2f // Y
        private const val HIGHLIGHT_CLASSIFICATION_F_NUMBER = 2.8f
        // Tunable highlight-quality gate measured in linear RGB.
        private const val MIN_HIGHLIGHT_NEIGHBOR_LUMA_DIFFERENCE = 0.11f
        private const val HIGHLIGHT_MIN_CENTER_SPACING_SCALE = 0.9f
        private const val HIGHLIGHT_PEAK_DISCOVERY_CELL_SCALE = 0.5f
        private const val PREEXISTING_BOKEH_RADIUS_SCALE = 0.05f
        private const val MAX_PREEXISTING_BOKEH_RADIUS_SCALE = 1.5f
        private const val MIN_PREEXISTING_BOKEH_RADIUS_PIXELS = 2.0f
        private const val MIN_PREEXISTING_BOKEH_FILL_RATIO = 0.45f
        private const val MIN_PREEXISTING_BOKEH_ASPECT_RATIO = 0.5f
        private const val HIGHLIGHT_INSTANCE_STRIDE_FLOATS = 6

        // Soap-bubble planning. Sizes are in original-image pixels.
        // Soap-bubble optics are over-corrected for spherical aberration: only
        // sources behind focus form a bright rim. A source becomes a bubble once
        // its normalized depth gap behind focus (same normalization as CoC)
        // reaches this value; front and near-focus highlights stay soft.
        private const val MIN_BUBBLE_DEPTH_GAP = 0.3f
        // Renderability floor only: a ring needs a few pixels to exist.
        private const val MIN_BUBBLE_COC_PIXELS = 10f
        // The source pass compares each pixel with a bubble-scale neighborhood.
        private const val BUBBLE_BACKGROUND_RADIUS_SCALE = 0.6f
        // A connected source whose equivalent radius does not exceed its bubble
        // radius is one light and forms exactly one bubble.
        private const val BUBBLE_POINT_SOURCE_RADIUS_SCALE = 1.0f
        // One source forms one bubble; bubbles of neighboring sources only
        // overlap partially. Split centers stay at least this many radii apart.
        private const val BUBBLE_SOURCE_SPACING_SCALE = 1.25f
        private const val HEXAGONAL_CELL_AREA_SCALE = 0.8660254f
        private const val MAX_BUBBLES_PER_COMPONENT = 256
        private const val MAX_BUBBLES = 4096
    }

    private data class AnalyticHighlight(
        val centerU: Float,
        val centerV: Float,
        val cocPixels: Float,
        val signalRed: Float,
        val signalGreen: Float,
        val signalBlue: Float,
    )

    private data class AnalyticHighlightExtraction(
        val highlights: List<AnalyticHighlight>,
        val eligibleCandidateCount: Int,
        val depthGateRejectedCount: Int,
        val preExistingBokehCount: Int,
        val densitySuppressedCount: Int,
    )

    private data class AnalyticHighlightCandidate(
        val highlight: AnalyticHighlight,
        val centerXInOriginalPixels: Float,
        val centerYInOriginalPixels: Float,
        val isPreExistingBokeh: Boolean,
        val selectionScore: Float,
    )

    private data class ComponentPeak(
        val pixelIndex: Int,
        val score: Float,
        val red: Float,
        val green: Float,
        val blue: Float,
        val alpha: Float,
    )

    private data class BubblePlan(
        val bubbles: List<AnalyticHighlight>,
        val componentCount: Int,
        val splitComponentCount: Int,
        val plannedCount: Int,
        val cappedCount: Int,
    )

    private data class DepthClassification(
        val otherDepth: ByteArray,
        val subjectMask: ByteArray,
    )

    private var uDepthMatrixLoc: Int = 0
    private var compactHighlightProgramId = 0
    private var bokehProgramId = 0
    private var analyticHighlightProgramId = 0
    private var bokehCompositeProgramId = 0
    private var jbuUpsampleProgramId = 0
    private var depthRefineProgramId = 0
    private var depthReadbackProgramId = 0
    private var layerColorProgramId = 0
    private var vertexBufferId = 0
    private var texCoordBufferId = 0
    private var indexBufferId = 0
    private var highlightInstanceBufferId = 0

    private var eglDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface = EGL14.EGL_NO_SURFACE

    fun applyBokeh(
        originalImage: Bitmap,
        lowResDepthMap: RelativeDepthMap,
        subjectMask: SubjectMask,
        focusDepth: Float,
        aperture: Float,
        bokehStyle: BokehStyle = BokehStyle.DEFAULT,
        protectSubject: Boolean = true,
    ): Bitmap? {
        val startedAtMs = SystemClock.elapsedRealtime()
        try {
            val halfFloatOutput = originalImage.config == Bitmap.Config.RGBA_F16
            val linearInput = originalImage.colorSpace?.id ==
                ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB).id
            val (bokehWidth, bokehHeight) = resolveBokehRenderSize(
                originalImage.width,
                originalImage.height,
            )
            PLog.d(
                TAG,
                "Bokeh working resolution: ${bokehWidth}x${bokehHeight}, output=${originalImage.width}x${originalImage.height}"
            )
            initEGL(originalImage.width, originalImage.height)
            initGL(bokehStyle)

            val inputTex = createTexture(originalImage, mipmap = true)
            val lowResDepthTex = createScalarTexture(
                lowResDepthMap.width, lowResDepthMap.height, lowResDepthMap.values, "relative depth",
            )
            val subjectMaskTex = createScalarTexture(
                subjectMask.width, subjectMask.height, subjectMask.values, "U2NetP subject mask",
            )
            val renderStartedAtMs = SystemClock.elapsedRealtime()

            val fbo = IntArray(1)
            GLES30.glGenFramebuffers(1, fbo, 0)
            
            val highResDepthTex = IntArray(1)
            val refinedDepthTex = IntArray(1)
            val depthReadbackTex = IntArray(1)

            // RGBA16F: composed disparity / subject disparity / complement
            // disparity / subject coverage. All consumers share this contract.
            GLES30.glDisable(GLES30.GL_DITHER)
            GLES30.glGenTextures(1, highResDepthTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highResDepthTex[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, bokehWidth, bokehHeight, 0, GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, fbo[0])
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, highResDepthTex[0], 0)
            requireFramebufferComplete("depth upsample")
            GLES30.glViewport(0, 0, bokehWidth, bokehHeight)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(jbuUpsampleProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lowResDepthTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uLowResDepth"), 0)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uHighResGuide"), 1)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, subjectMaskTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uSubjectMask"), 2)
            GLES30.glUniform2f(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uMaskTexelSize"), 1.0f / subjectMask.width, 1.0f / subjectMask.height)
            GLES30.glUniform4f(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uMaskBounds"),
                subjectMask.region.left, subjectMask.region.top, subjectMask.region.width, subjectMask.region.height)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uFocusDepth"), focusDepth)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uLinearInput"), if (linearInput) 1 else 0)

            drawQuad(jbuUpsampleProgramId)
            requireNoGlError("subject mask / layered upsample RGBA16F")

            // Refine the RGB-guided mask and each depth layer independently.
            GLES30.glGenTextures(1, refinedDepthTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, refinedDepthTex[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, bokehWidth, bokehHeight, 0, GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, refinedDepthTex[0], 0)
            requireFramebufferComplete("depth refine")
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(depthRefineProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highResDepthTex[0])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(depthRefineProgramId, "uDepthTexture"), 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(depthRefineProgramId, "uHighResGuide"), 1)
            // The uncertainty band follows the source mask footprint, not the
            // photo's resolution or aperture. Never undersample working pixels.
            GLES30.glUniform2f(
                GLES30.glGetUniformLocation(depthRefineProgramId, "uRefineStep"),
                maxOf(1.0f / bokehWidth, 0.5f * subjectMask.region.width / subjectMask.width),
                maxOf(1.0f / bokehHeight, 0.5f * subjectMask.region.height / subjectMask.height),
            )
            GLES30.glUniform1f(GLES30.glGetUniformLocation(depthRefineProgramId, "uFocusDepth"), focusDepth)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(depthRefineProgramId, "uLinearInput"), if (linearInput) 1 else 0)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(depthRefineProgramId, "uProtectSubject"), if (protectSubject) 1 else 0)

            drawQuad(depthRefineProgramId)
            requireNoGlError("RGB mask / layered depth refine RGBA16F")

            val finalDepthTex = refinedDepthTex[0]
            GLES30.glDeleteTextures(1, highResDepthTex, 0)
            highResDepthTex[0] = 0
            val layerColorTex = createLayerColorTexture(
                fbo[0], inputTex, finalDepthTex, bokehWidth, bokehHeight, linearInput,
            )
            PLog.d(TAG, "Bokeh subject mask: U2NetP / RGB layered refinement, " +
                "depth=${lowResDepthMap.width}x${lowResDepthMap.height}, " +
                "mask=${subjectMask.width}x${subjectMask.height}, region=${subjectMask.region}, protect=$protectSubject, " +
                "working=${bokehWidth}x${bokehHeight}, focus=$focusDepth, linear=$linearInput")
            val maxBlurRadius = originalImage.width.toFloat() / 26.0f
            val identity = FloatArray(16)
            android.opengl.Matrix.setIdentityM(identity, 0)

            val compactHighlightTex = IntArray(1)
            val bubbleBackgroundRadius = maxBlurRadius * BUBBLE_BACKGROUND_RADIUS_SCALE
            val analyticHighlights = if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED) {
                val depthClassification = if (bokehStyle != BokehStyle.NATURAL) {
                    // CPU highlight topology needs an RGBA8 depth/mask copy. It
                    // never feeds the renderer; finalDepthTex remains RGBA16F.
                    // Natural bokeh is fully GPU-integrated and skips this sync.
                    GLES30.glGenTextures(1, depthReadbackTex, 0)
                    GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, depthReadbackTex[0])
                    GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, bokehWidth, bokehHeight, 0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null)
                    GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
                    GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
                    GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
                    GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
                    GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, depthReadbackTex[0], 0)
                    requireFramebufferComplete("depth classification resolve")
                    GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
                    GLES30.glUseProgram(depthReadbackProgramId)
                    GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                    GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, refinedDepthTex[0])
                    GLES30.glUniform1i(GLES30.glGetUniformLocation(depthReadbackProgramId, "uDepthTexture"), 0)
                    drawQuad(depthReadbackProgramId)
                    readDepthClassification(bokehWidth, bokehHeight)
                } else {
                    null
                }
                GLES30.glEnable(GLES30.GL_DITHER)

                // Step 3: Extract highlight sources. Default bokeh classifies only
                // compact, isolated highlights; bubble bokeh extracts the complete
                // defocused light-source field with its emitted energy. Natural
                // bokeh has no analytic overlay and skips the complete pass.
                if (bokehStyle != BokehStyle.NATURAL) {
                    val bubbleSourceField = bokehStyle == BokehStyle.BUBBLE
                    // Bubble energy carries reconstructed clipped radiance above 1.
                    val halfFloatSource = halfFloatOutput || bubbleSourceField
                    GLES30.glGenTextures(1, compactHighlightTex, 0)
                    GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, compactHighlightTex[0])
                    GLES30.glTexImage2D(
                        GLES30.GL_TEXTURE_2D,
                        0,
                        if (halfFloatSource) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
                        bokehWidth,
                        bokehHeight,
                        0,
                        GLES30.GL_RGBA,
                        if (halfFloatSource) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                        null
                    )
                    GLES30.glTexParameteri(
                        GLES30.GL_TEXTURE_2D,
                        GLES30.GL_TEXTURE_MIN_FILTER,
                        GLES30.GL_LINEAR_MIPMAP_LINEAR,
                    )
                    GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
                    GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
                    GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

                    GLES30.glFramebufferTexture2D(
                        GLES30.GL_FRAMEBUFFER,
                        GLES30.GL_COLOR_ATTACHMENT0,
                        GLES30.GL_TEXTURE_2D,
                        compactHighlightTex[0],
                        0
                    )
                    requireFramebufferComplete(
                        if (bubbleSourceField) "bubble source field" else "compact bokeh highlight"
                    )
                    GLES30.glViewport(0, 0, bokehWidth, bokehHeight)
                    GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
                    GLES30.glUseProgram(compactHighlightProgramId)

                    GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                    GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
                    GLES30.glUniform1i(
                        GLES30.glGetUniformLocation(compactHighlightProgramId, "uInputTexture"),
                        0
                    )
                    GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
                    GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, finalDepthTex)
                    GLES30.glUniform1i(
                        GLES30.glGetUniformLocation(compactHighlightProgramId, "uDepthTexture"),
                        1
                    )
                    GLES30.glUniform1f(
                        GLES30.glGetUniformLocation(compactHighlightProgramId, "uMaxBlurRadius"),
                        maxBlurRadius
                    )
                    GLES30.glUniform1f(
                        GLES30.glGetUniformLocation(compactHighlightProgramId, "uFocusDepth"),
                        focusDepth
                    )
                    GLES30.glUniform1i(
                        GLES30.glGetUniformLocation(compactHighlightProgramId, "uLinearInput"),
                        if (linearInput) 1 else 0
                    )
                    if (bubbleSourceField) {
                        GLES30.glUniform1f(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uAperture"),
                            aperture
                        )
                        GLES30.glUniform1f(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uMinCocPixels"),
                            MIN_BUBBLE_COC_PIXELS
                        )
                        GLES30.glUniform1f(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uMinBubbleDepthGap"),
                            MIN_BUBBLE_DEPTH_GAP
                        )
                        GLES30.glUniform1f(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uSourceLod"),
                            log2(originalImage.width.toFloat() / bokehWidth.toFloat())
                                .coerceAtLeast(0.0f)
                        )
                        GLES30.glUniform1f(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uBackgroundLod"),
                            log2(bubbleBackgroundRadius.coerceAtLeast(1.0f))
                        )
                        GLES30.glUniform2f(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uBackgroundStep"),
                            bubbleBackgroundRadius / originalImage.width,
                            bubbleBackgroundRadius / originalImage.height
                        )
                    } else {
                        GLES30.glUniformMatrix4fv(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uDepthMatrix"),
                            1,
                            false,
                            identity,
                            0
                        )
                        GLES30.glUniform1f(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uAperture"),
                            HIGHLIGHT_CLASSIFICATION_F_NUMBER
                        )
                        GLES30.glUniform2f(
                            GLES30.glGetUniformLocation(compactHighlightProgramId, "uTexelSize"),
                            1.0f / originalImage.width,
                            1.0f / originalImage.height
                        )
                        GLES30.glUniform1f(
                            GLES30.glGetUniformLocation(
                                compactHighlightProgramId,
                                "uMinNeighborhoodLumaDifference",
                            ),
                            MIN_HIGHLIGHT_NEIGHBOR_LUMA_DIFFERENCE,
                        )
                    }
                    drawQuad(compactHighlightProgramId)
                    requireNoGlError(
                        if (bubbleSourceField) "bubble source field RGBA16F" else "compact bokeh highlight"
                    )
                    val classification = checkNotNull(depthClassification) {
                        "Highlight planning requires resolved depth topology"
                    }
                    // Read level 0 while it is still the framebuffer attachment,
                    // then build the mip chain sampled by the PSF gather.
                    val highlights = if (bubbleSourceField) {
                        planBubbleHighlights(
                            width = bokehWidth,
                            height = bokehHeight,
                            depthClassification = classification,
                            originalWidth = originalImage.width,
                            originalHeight = originalImage.height,
                            focusDepth = focusDepth,
                            aperture = aperture,
                            maxBlurRadius = maxBlurRadius,
                        ).also { plan ->
                            PLog.d(
                                TAG,
                                "Bubble bokeh plan: fNumber=$aperture, " +
                                    "components=${plan.componentCount}, " +
                                    "splitComponents=${plan.splitComponentCount}, " +
                                    "planned=${plan.plannedCount}, " +
                                    "capped=${plan.cappedCount}, " +
                                    "drawn=${plan.bubbles.size}"
                            )
                        }.bubbles
                    } else {
                        extractAnalyticHighlights(
                            width = bokehWidth,
                            height = bokehHeight,
                            halfFloat = halfFloatSource,
                            refinedDepthPixels = classification.otherDepth,
                            subjectMaskPixels = classification.subjectMask,
                            originalWidth = originalImage.width,
                            originalHeight = originalImage.height,
                            focusDepth = focusDepth,
                            aperture = aperture,
                            maxBlurRadius = maxBlurRadius,
                        ).also { extraction ->
                            PLog.d(
                                TAG,
                                "Analytic bokeh highlights: style=$bokehStyle, fNumber=$aperture, " +
                                    "minNeighborLumaDelta=$MIN_HIGHLIGHT_NEIGHBOR_LUMA_DIFFERENCE, " +
                                    "candidates=${extraction.eligibleCandidateCount}, " +
                                    "depthGateRejected=${extraction.depthGateRejectedCount}, " +
                                    "preExisting=${extraction.preExistingBokehCount}, " +
                                    "densitySuppressed=${extraction.densitySuppressedCount}, " +
                                    "accepted=${extraction.highlights.size}"
                            )
                        }.highlights
                    }
                    GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, compactHighlightTex[0])
                    GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
                    highlights
                } else {
                    PLog.d(TAG, "Natural bokeh uses integrated radial PSF")
                    emptyList()
                }
            } else {
                GLES30.glEnable(GLES30.GL_DITHER)
                PLog.d(TAG, "Analytic bokeh highlights disabled")
                emptyList()
            }

            // Step 4: Render linear premultiplied background / valid support.
            // This intermediate stays RGBA16F even for SDR: its alpha is not
            // bitmap opacity, and linear dark colors must survive normalization.
            val bokehTex = IntArray(1)
            GLES30.glGenTextures(1, bokehTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bokehTex[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_RGBA16F,
                bokehWidth,
                bokehHeight,
                0,
                GLES30.GL_RGBA,
                GLES30.GL_HALF_FLOAT,
                null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, bokehTex[0], 0)
            requireFramebufferComplete("PSF bokeh")
            GLES30.glViewport(0, 0, bokehWidth, bokehHeight)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(bokehProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, finalDepthTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehProgramId, "uDepthTexture"), 1)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, compactHighlightTex[0])
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(bokehProgramId, "uHighlightSourceTexture"),
                2,
            )
            GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, layerColorTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehProgramId, "uLayerColorTexture"), 3)

            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uMaxBlurRadius"), maxBlurRadius)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uAperture"), aperture)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uFocusDepth"), focusDepth)
            GLES30.glUniform2f(GLES30.glGetUniformLocation(bokehProgramId, "uTexelSize"), 1.0f / originalImage.width, 1.0f / originalImage.height)
            GLES30.glUniformMatrix4fv(GLES30.glGetUniformLocation(bokehProgramId, "uDepthMatrix"), 1, false, identity, 0)
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(bokehProgramId, "uBubbleBackgroundLod"),
                log2(
                    (2.0f * bubbleBackgroundRadius * bokehWidth / originalImage.width)
                        .coerceAtLeast(1.0f)
                ),
            )

            drawQuad(bokehProgramId)
            requireNoGlError("PSF linear background / support RGBA16F")

            // Keep analytic bokeh on its own transparent layer. It is combined
            // with the blurred background only in the final, foreground-aware
            // composite, so neither pass can overwrite the other.
            val highlightTex = IntArray(1)
            GLES30.glGenTextures(1, highlightTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highlightTex[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                if (halfFloatOutput) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
                bokehWidth,
                bokehHeight,
                0,
                GLES30.GL_RGBA,
                if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                null,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MIN_FILTER,
                GLES30.GL_LINEAR,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_MAG_FILTER,
                GLES30.GL_LINEAR,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_S,
                GLES30.GL_CLAMP_TO_EDGE,
            )
            GLES30.glTexParameteri(
                GLES30.GL_TEXTURE_2D,
                GLES30.GL_TEXTURE_WRAP_T,
                GLES30.GL_CLAMP_TO_EDGE,
            )
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                highlightTex[0],
                0,
            )
            requireFramebufferComplete("analytic bokeh highlight layer")
            GLES30.glViewport(0, 0, bokehWidth, bokehHeight)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            drawAnalyticHighlights(
                highlights = analyticHighlights,
                framebuffer = fbo[0],
                renderWidth = bokehWidth,
                renderHeight = bokehHeight,
                imageWidth = originalImage.width,
                imageHeight = originalImage.height,
                linearInput = linearInput,
            )

            // Step 5: Resolve at full resolution. In-focus detail is sampled directly
            // from the original image, while defocused regions use the PSF texture.
            val outputTex = IntArray(1)
            GLES30.glGenTextures(1, outputTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTex[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                if (halfFloatOutput) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
                originalImage.width,
                originalImage.height,
                0,
                GLES30.GL_RGBA,
                if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                outputTex[0],
                0
            )
            requireFramebufferComplete("full-resolution bokeh composite")
            GLES30.glViewport(0, 0, originalImage.width, originalImage.height)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(bokehCompositeProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uOriginalTexture"), 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bokehTex[0])
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uBokehTexture"), 1)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highlightTex[0])
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(bokehCompositeProgramId, "uHighlightTexture"),
                2,
            )
            GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, finalDepthTex)
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(bokehCompositeProgramId, "uDepthTexture"),
                3,
            )
            GLES30.glUniformMatrix4fv(
                GLES30.glGetUniformLocation(bokehCompositeProgramId, "uDepthMatrix"),
                1,
                false,
                identity,
                0
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(bokehCompositeProgramId, "uMaxBlurRadius"),
                maxBlurRadius
            )
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uAperture"), aperture)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehCompositeProgramId, "uFocusDepth"), focusDepth)
            GLES30.glUniform2f(
                GLES30.glGetUniformLocation(bokehCompositeProgramId, "uDepthTexelSize"),
                1.0f / originalImage.width,
                1.0f / originalImage.height,
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(bokehCompositeProgramId, "uLinearInput"),
                if (linearInput) 1 else 0,
            )

            drawQuad(bokehCompositeProgramId)
            GLES30.glFinish()
            val renderFinishedAtMs = SystemClock.elapsedRealtime()

            // Read back to Bitmap
            val resultBitmap = Bitmap.createBitmap(originalImage.width, originalImage.height,
                if (halfFloatOutput) Bitmap.Config.RGBA_F16 else Bitmap.Config.ARGB_8888,
                false,
                originalImage.colorSpace ?: ColorSpace.get(ColorSpace.Named.SRGB))
            val bytesPerPixel = if (halfFloatOutput) 8L else 4L
            val bufferByteCount = originalImage.width.toLong() * originalImage.height.toLong() * bytesPerPixel
            val buffer = LargeDirectBuffer.allocate(bufferByteCount, "OGL bokeh readback") ?: return null
            try {
                GLES30.glReadPixels(
                    0,
                    0,
                    originalImage.width,
                    originalImage.height,
                    GLES30.GL_RGBA,
                    if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                    buffer
                )
                resultBitmap.copyPixelsFromBuffer(buffer)
            } finally {
                LargeDirectBuffer.free(buffer)
            }
            val readbackFinishedAtMs = SystemClock.elapsedRealtime()

            // Clean up
            GLES30.glDeleteTextures(1, intArrayOf(inputTex), 0)
            GLES30.glDeleteTextures(1, intArrayOf(lowResDepthTex), 0)
            GLES30.glDeleteTextures(1, intArrayOf(subjectMaskTex), 0)
            GLES30.glDeleteTextures(1, highResDepthTex, 0)
            GLES30.glDeleteTextures(1, refinedDepthTex, 0)
            GLES30.glDeleteTextures(1, intArrayOf(layerColorTex), 0)
            GLES30.glDeleteTextures(1, depthReadbackTex, 0)
            GLES30.glDeleteTextures(1, compactHighlightTex, 0)
            GLES30.glDeleteTextures(1, bokehTex, 0)
            GLES30.glDeleteTextures(1, highlightTex, 0)
            GLES30.glDeleteTextures(1, outputTex, 0)
            GLES30.glDeleteFramebuffers(1, fbo, 0)

            PLog.d(
                TAG,
                "Bokeh completed: total=${readbackFinishedAtMs - startedAtMs}ms, " +
                    "setupUpload=${renderStartedAtMs - startedAtMs}ms, " +
                    "render=${renderFinishedAtMs - renderStartedAtMs}ms, " +
                    "readback=${readbackFinishedAtMs - renderFinishedAtMs}ms, " +
                    "working=${bokehWidth}x${bokehHeight}, output=${originalImage.width}x${originalImage.height}"
            )
            return resultBitmap
        } catch (e: Exception) {
            PLog.e(TAG, "Error applying OGL Bokeh: ${e.message}")
            return null
        } finally {
            releaseGL()
        }
    }

    private fun createLayerColorTexture(
        framebuffer: Int,
        inputTexture: Int,
        depthTexture: Int,
        width: Int,
        height: Int,
        linearInput: Boolean,
    ): Int {
        val texture = IntArray(1)
        GLES30.glGenTextures(1, texture, 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
        GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA16F, width, height,
            0, GLES30.GL_RGBA, GLES30.GL_HALF_FLOAT, null)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR_MIPMAP_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D, texture[0], 0)
        requireFramebufferComplete("premultiplied bokeh layer")
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(layerColorProgramId)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(layerColorProgramId, "uInputTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, depthTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(layerColorProgramId, "uDepthTexture"), 1)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(layerColorProgramId, "uLinearInput"), if (linearInput) 1 else 0)
        drawQuad(layerColorProgramId)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
        GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
        requireNoGlError("premultiplied bokeh layer RGBA16F / mipmaps")
        return texture[0]
    }

    private fun readDepthClassification(width: Int, height: Int): DepthClassification {
        val pixelCount = width * height
        val byteCount = pixelCount.toLong() * 4L
        val buffer = LargeDirectBuffer.allocate(byteCount, "OGL bokeh refined-depth readback")
            ?: throw IllegalStateException("Unable to allocate refined-depth readback buffer")
        return try {
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glReadPixels(
                0,
                0,
                width,
                height,
                GLES30.GL_RGBA,
                GLES30.GL_UNSIGNED_BYTE,
                buffer,
            )
            requireNoGlError("depth / subject mask RGBA8 readback")
            buffer.position(0)
            val depth = ByteArray(pixelCount)
            val mask = ByteArray(pixelCount)
            for (index in 0 until pixelCount) {
                depth[index] = buffer.get(index * 4)
                mask[index] = buffer.get(index * 4 + 1)
            }
            DepthClassification(depth, mask)
        } finally {
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
            LargeDirectBuffer.free(buffer)
        }
    }

    private fun extractAnalyticHighlights(
        width: Int,
        height: Int,
        halfFloat: Boolean,
        refinedDepthPixels: ByteArray,
        subjectMaskPixels: ByteArray,
        originalWidth: Int,
        originalHeight: Int,
        focusDepth: Float,
        aperture: Float,
        maxBlurRadius: Float,
    ): AnalyticHighlightExtraction {
        val pixelCount = width.toLong() * height.toLong()
        check(pixelCount == refinedDepthPixels.size.toLong()) {
            "Highlight/depth working domains do not match"
        }
        check(subjectMaskPixels.size == refinedDepthPixels.size) { "Subject mask/depth domains do not match" }
        val bytesPerPixel = if (halfFloat) 8L else 4L
        val buffer = LargeDirectBuffer.allocate(
            pixelCount * bytesPerPixel,
            "OGL compact-highlight readback",
        ) ?: throw IllegalStateException("Unable to allocate compact-highlight readback buffer")

        return try {
            GLES30.glReadPixels(
                0,
                0,
                width,
                height,
                GLES30.GL_RGBA,
                if (halfFloat) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                buffer,
            )
            buffer.order(ByteOrder.nativeOrder())
            buffer.position(0)

            // Connected topology is used only to identify coherent pre-existing
            // bokeh. A dense point-light component is split into spatial cells so
            // that it can retain several strong representative centers instead of
            // collapsing to one centroid or being rejected as a whole.
            val activeMask = ByteArray(pixelCount.toInt())
            val halfPixels = if (halfFloat) buffer.asShortBuffer() else null

            fun readPeak(index: Int): ComponentPeak {
                val channelOffset = index * 4
                val red: Float
                val green: Float
                val blue: Float
                val alpha: Float
                if (halfPixels != null) {
                    red = Half.toFloat(halfPixels.get(channelOffset))
                    green = Half.toFloat(halfPixels.get(channelOffset + 1))
                    blue = Half.toFloat(halfPixels.get(channelOffset + 2))
                    alpha = Half.toFloat(halfPixels.get(channelOffset + 3))
                } else {
                    red = (buffer.get(channelOffset).toInt() and 0xff) / 255.0f
                    green = (buffer.get(channelOffset + 1).toInt() and 0xff) / 255.0f
                    blue = (buffer.get(channelOffset + 2).toInt() and 0xff) / 255.0f
                    alpha = (buffer.get(channelOffset + 3).toInt() and 0xff) / 255.0f
                }
                val finiteRed = if (red.isFinite()) red.coerceAtLeast(0.0f) else 0.0f
                val finiteGreen = if (green.isFinite()) green.coerceAtLeast(0.0f) else 0.0f
                val finiteBlue = if (blue.isFinite()) blue.coerceAtLeast(0.0f) else 0.0f
                val finiteAlpha = if (alpha.isFinite()) alpha.coerceAtLeast(0.0f) else 0.0f
                return ComponentPeak(
                    pixelIndex = index,
                    score = finiteRed * 0.2126f +
                        finiteGreen * 0.7152f + finiteBlue * 0.0722f,
                    red = finiteRed,
                    green = finiteGreen,
                    blue = finiteBlue,
                    alpha = finiteAlpha,
                )
            }

            if (halfPixels != null) {
                for (index in activeMask.indices) {
                    val alpha = Half.toFloat(halfPixels.get(index * 4 + 3))
                    if (alpha.isFinite() && alpha >= HIGHLIGHT_MASK_THRESHOLD) {
                        activeMask[index] = 1
                    }
                }
            } else {
                for (index in activeMask.indices) {
                    val alpha = (buffer.get(index * 4 + 3).toInt() and 0xff) / 255.0f
                    if (alpha >= HIGHLIGHT_MASK_THRESHOLD) {
                        activeMask[index] = 1
                    }
                }
            }

            val originalPixelsPerWorkingX = originalWidth.toFloat() / width.toFloat()
            val originalPixelsPerWorkingY = originalHeight.toFloat() / height.toFloat()
            val minimumSpacing = minimumHighlightCenterSpacing(maxBlurRadius)
            val discoveryCellSize = maxOf(
                minimumSpacing * HIGHLIGHT_PEAK_DISCOVERY_CELL_SCALE,
                1.0f,
            )
            val candidates = ArrayList<AnalyticHighlightCandidate>()
            var depthGateRejectedCount = 0

            fun cellKey(x: Int, y: Int): Long =
                (x.toLong() shl 32) xor (y.toLong() and 0xffffffffL)

            fun addCandidate(
                centerX: Float,
                centerY: Float,
                peak: ComponentPeak,
                isPreExistingBokeh: Boolean,
                sourceRadiusPixels: Float = 0.0f,
            ) {
                if (sampleWorkingDepth(subjectMaskPixels, width, height, centerX, centerY) > 0.01f) {
                    depthGateRejectedCount++
                    return
                }
                val centerDepth = sampleWorkingDepth(
                    refinedDepthPixels,
                    width,
                    height,
                    centerX,
                    centerY,
                    interpolate = false,
                )

                val depthCocPixels = computeCocPixels(
                    depth = centerDepth,
                    focusDepth = focusDepth,
                    aperture = aperture,
                    maxBlurRadius = maxBlurRadius,
                )
                if (depthCocPixels < MIN_ANALYTIC_COC_PIXELS && !isPreExistingBokeh) return
                if (!isSyntheticHighlightDefocusedDepth(centerDepth, focusDepth)) {
                    depthGateRejectedCount++
                    return
                }
                val cocPixels = if (isPreExistingBokeh) {
                    maxOf(depthCocPixels, sourceRadiusPixels * 1.05f)
                        .coerceAtMost(maxBlurRadius * 1.2f)
                } else {
                    depthCocPixels
                }
                if (cocPixels < MIN_ANALYTIC_COC_PIXELS) return
                if (!hasEligibleDefocusedSupport(
                        refinedDepthPixels = refinedDepthPixels,
                        subjectMaskPixels = subjectMaskPixels,
                        width = width,
                        height = height,
                        originalWidth = originalWidth,
                        originalHeight = originalHeight,
                        centerX = centerX,
                        centerY = centerY,
                        focusDepth = focusDepth,
                        cocPixels = cocPixels,
                        aperture = aperture,
                        maxBlurRadius = maxBlurRadius,
                    )
                ) {
                    depthGateRejectedCount++
                    return
                }

                // Optical discs are premultiplied by classifier alpha.
                val sourceSignalScale = if (isPreExistingBokeh) {
                    1.0f / maxOf(
                        peak.alpha,
                        0.001f,
                    )
                } else {
                    1.0f
                }
                val highlight = AnalyticHighlight(
                    centerU = (centerX + 0.5f) / width.toFloat(),
                    centerV = (centerY + 0.5f) / height.toFloat(),
                    cocPixels = cocPixels,
                    signalRed = peak.red * sourceSignalScale,
                    signalGreen = peak.green * sourceSignalScale,
                    signalBlue = peak.blue * sourceSignalScale,
                )
                candidates += AnalyticHighlightCandidate(
                    highlight = highlight,
                    centerXInOriginalPixels = highlight.centerU * originalWidth.toFloat(),
                    centerYInOriginalPixels = highlight.centerV * originalHeight.toFloat(),
                    isPreExistingBokeh = isPreExistingBokeh,
                    selectionScore = peak.score,
                )
            }

            for (startIndex in activeMask.indices) {
                if (activeMask[startIndex].toInt() == 0) continue

                var componentPixels = IntArray(64)
                var head = 0
                var tail = 0
                componentPixels[tail++] = startIndex
                activeMask[startIndex] = 0

                var bestPeak: ComponentPeak? = null
                var componentMinX = startIndex % width
                var componentMaxX = componentMinX
                var componentMinY = startIndex / width
                var componentMaxY = componentMinY
                val componentPeaks = HashMap<Long, ComponentPeak>()

                while (head < tail) {
                    val index = componentPixels[head++]
                    val x = index % width
                    val y = index / width
                    componentMinX = minOf(componentMinX, x)
                    componentMaxX = maxOf(componentMaxX, x)
                    componentMinY = minOf(componentMinY, y)
                    componentMaxY = maxOf(componentMaxY, y)

                    val peak = readPeak(index)
                    val previousBestPeak = bestPeak
                    if (previousBestPeak == null || peak.score > previousBestPeak.score) {
                        bestPeak = peak
                    }

                    val originalX = (x.toFloat() + 0.5f) * originalPixelsPerWorkingX
                    val originalY = (y.toFloat() + 0.5f) * originalPixelsPerWorkingY
                    val peakCellX = floor(originalX / discoveryCellSize).toInt()
                    val peakCellY = floor(originalY / discoveryCellSize).toInt()
                    val peakCellKey = cellKey(peakCellX, peakCellY)
                    val previousPeak = componentPeaks[peakCellKey]
                    if (previousPeak == null ||
                        peak.score > previousPeak.score ||
                        peak.score == previousPeak.score && peak.pixelIndex < previousPeak.pixelIndex
                    ) {
                        componentPeaks[peakCellKey] = peak
                    }

                    val minX = maxOf(x - 1, 0)
                    val maxX = minOf(x + 1, width - 1)
                    val minY = maxOf(y - 1, 0)
                    val maxY = minOf(y + 1, height - 1)
                    for (neighborY in minY..maxY) {
                        for (neighborX in minX..maxX) {
                            val neighbor = neighborY * width + neighborX
                            if (activeMask[neighbor].toInt() == 0) continue
                            activeMask[neighbor] = 0
                            if (tail == componentPixels.size) {
                                componentPixels = componentPixels.copyOf(componentPixels.size * 2)
                            }
                            componentPixels[tail++] = neighbor
                        }
                    }
                }

                val strongestPeak = bestPeak ?: continue
                if (strongestPeak.score <= 0.0f) continue

                val componentAreaInOriginalPixels = tail.toFloat() *
                    originalPixelsPerWorkingX * originalPixelsPerWorkingY
                val componentRadiusInOriginalPixels = sqrt(
                    componentAreaInOriginalPixels / Math.PI.toFloat()
                )
                val componentWidth = componentMaxX - componentMinX + 1
                val componentHeight = componentMaxY - componentMinY + 1
                val componentFillRatio = tail.toFloat() /
                    (componentWidth * componentHeight).toFloat()
                val componentAspectRatio = minOf(componentWidth, componentHeight).toFloat() /
                    maxOf(componentWidth, componentHeight).toFloat()
                val minimumPreExistingRadius = maxOf(
                    MIN_PREEXISTING_BOKEH_RADIUS_PIXELS,
                    maxBlurRadius * PREEXISTING_BOKEH_RADIUS_SCALE,
                )
                val maximumPreExistingRadius = maxOf(
                    minimumPreExistingRadius,
                    maxBlurRadius * MAX_PREEXISTING_BOKEH_RADIUS_SCALE,
                )
                val isPreExistingBokeh =
                    componentRadiusInOriginalPixels in
                        minimumPreExistingRadius..maximumPreExistingRadius &&
                        componentFillRatio >= MIN_PREEXISTING_BOKEH_FILL_RATIO &&
                        componentAspectRatio >= MIN_PREEXISTING_BOKEH_ASPECT_RATIO

                if (isPreExistingBokeh) {
                    // Keep the final center on a pixel that passed the shader's
                    // complete dark-ring test. A component centroid can fall on
                    // an unclassified pixel and would break that invariant.
                    addCandidate(
                        centerX = (strongestPeak.pixelIndex % width).toFloat(),
                        centerY = (strongestPeak.pixelIndex / width).toFloat(),
                        peak = strongestPeak,
                        isPreExistingBokeh = true,
                        sourceRadiusPixels = componentRadiusInOriginalPixels,
                    )
                } else {
                    // Cell maxima are only discovery candidates. The global pass
                    // below sorts them by strength and applies the exact spacing,
                    // guaranteeing that every dense cluster keeps its strongest
                    // viable center before weaker neighbors are considered.
                    for (peak in componentPeaks.values.sortedBy { it.pixelIndex }) {
                        addCandidate(
                            centerX = (peak.pixelIndex % width).toFloat(),
                            centerY = (peak.pixelIndex / width).toFloat(),
                            peak = peak,
                            isPreExistingBokeh = false,
                            sourceRadiusPixels = componentRadiusInOriginalPixels,
                        )
                    }
                }
            }

            // Preserve every coherent pre-existing bokeh disc. Dense clusters of
            // tiny point responses are reduced with brightness-priority spatial
            // thinning: every neighborhood retains its strongest representative
            // instead of invalidating the whole cluster.
            val selectedCandidates = selectDensityLimitedHighlights(
                candidates,
                maxBlurRadius,
            )
            val highlights = ArrayList<AnalyticHighlight>(candidates.size)
            var preExistingBokehCount = 0
            var densitySuppressedCount = 0
            for (candidateIndex in candidates.indices) {
                val candidate = candidates[candidateIndex]
                if (candidate.isPreExistingBokeh) preExistingBokehCount++
                if (!selectedCandidates[candidateIndex]) {
                    densitySuppressedCount++
                    continue
                }
                highlights += candidate.highlight
            }

            AnalyticHighlightExtraction(
                highlights = highlights,
                eligibleCandidateCount = candidates.size,
                depthGateRejectedCount = depthGateRejectedCount,
                preExistingBokehCount = preExistingBokehCount,
                densitySuppressedCount = densitySuppressedCount,
            )
        } finally {
            LargeDirectBuffer.free(buffer)
        }
    }

    /**
     * 泡泡高光规划：按连通域把焦外光源场拆成能形成泡泡的点光源。
     *
     * 每个 8 连通域是一块连续发光区域，泡泡半径取区域的能量加权 CoC。
     * 区域等效半径不超过泡泡半径时视为单个光源，只形成一个泡泡（位于能量重心）；
     * 否则按区域面积与泡泡间距（六边形堆积，间距 1.25 倍半径，仅部分重叠）规划数量，
     * 由亮到暗选出满足间距的中心，再把区域内每个像素的能量分给最近的中心。
     * 每个泡泡的能量、颜色、位置与尺寸都来自其所属像素，区域总能量守恒。
     */
    private fun planBubbleHighlights(
        width: Int,
        height: Int,
        depthClassification: DepthClassification,
        originalWidth: Int,
        originalHeight: Int,
        focusDepth: Float,
        aperture: Float,
        maxBlurRadius: Float,
    ): BubblePlan {
        val pixelCount = width * height
        check(depthClassification.otherDepth.size == pixelCount) {
            "Bubble source/depth domains do not match"
        }
        val buffer = LargeDirectBuffer.allocate(
            pixelCount.toLong() * 8L,
            "OGL bubble-source readback",
        ) ?: throw IllegalStateException("Unable to allocate bubble-source readback buffer")

        return try {
            GLES30.glReadPixels(
                0,
                0,
                width,
                height,
                GLES30.GL_RGBA,
                GLES30.GL_HALF_FLOAT,
                buffer,
            )
            requireNoGlError("bubble source field RGBA16F readback")
            buffer.order(ByteOrder.nativeOrder())
            buffer.position(0)
            val pixels = buffer.asShortBuffer()

            fun channel(index: Int, component: Int): Float {
                val value = Half.toFloat(pixels.get(index * 4 + component))
                return if (value.isFinite()) value.coerceAtLeast(0.0f) else 0.0f
            }

            val energyLuma = FloatArray(pixelCount)
            val active = BooleanArray(pixelCount)
            for (index in 0 until pixelCount) {
                if (channel(index, 3) <= 0.0f) continue
                active[index] = true
                energyLuma[index] = channel(index, 0) * 0.2126f +
                    channel(index, 1) * 0.7152f + channel(index, 2) * 0.0722f
            }

            // Depth is quantized to 8 bits, so CoC and focus side are exact tables.
            val cocByDepth = FloatArray(256) { depthByte ->
                computeCocPixels(depthByte / 255.0f, focusDepth, aperture, maxBlurRadius)
            }
            val depthPixels = depthClassification.otherDepth
            val originalPixelsPerWorkingX = originalWidth.toFloat() / width.toFloat()
            val originalPixelsPerWorkingY = originalHeight.toFloat() / height.toFloat()
            val workingPixelArea = originalPixelsPerWorkingX * originalPixelsPerWorkingY

            val bubbles = ArrayList<AnalyticHighlight>()
            val bubbleEnergies = ArrayList<Float>()
            var componentPixels = IntArray(256)
            var componentCount = 0
            var splitComponentCount = 0
            var plannedCount = 0

            for (startIndex in 0 until pixelCount) {
                if (!active[startIndex]) continue

                var head = 0
                var tail = 0
                componentPixels[tail++] = startIndex
                active[startIndex] = false
                var componentEnergy = 0.0f
                var componentCocMoment = 0.0f
                while (head < tail) {
                    val index = componentPixels[head++]
                    val depthByte = depthPixels[index].toInt() and 0xff
                    componentEnergy += energyLuma[index]
                    componentCocMoment += energyLuma[index] * cocByDepth[depthByte]
                    val x = index % width
                    val y = index / width
                    for (neighborY in maxOf(y - 1, 0)..minOf(y + 1, height - 1)) {
                        for (neighborX in maxOf(x - 1, 0)..minOf(x + 1, width - 1)) {
                            val neighbor = neighborY * width + neighborX
                            if (!active[neighbor]) continue
                            active[neighbor] = false
                            if (tail == componentPixels.size) {
                                componentPixels = componentPixels.copyOf(componentPixels.size * 2)
                            }
                            componentPixels[tail++] = neighbor
                        }
                    }
                }
                if (componentEnergy <= 0.0f) continue
                componentCount++

                // Highlight planning: the component area against the bubble
                // footprint decides how many distinguishable sources it holds.
                val bubbleRadius = (componentCocMoment / componentEnergy)
                    .coerceIn(MIN_BUBBLE_COC_PIXELS, maxBlurRadius)
                val componentArea = tail * workingPixelArea
                val pointSourceRadius = bubbleRadius * BUBBLE_POINT_SOURCE_RADIUS_SCALE
                val spacing = bubbleRadius * BUBBLE_SOURCE_SPACING_SCALE
                val planned = if (componentArea <= Math.PI.toFloat() * pointSourceRadius * pointSourceRadius) {
                    1
                } else {
                    ceil(componentArea / (HEXAGONAL_CELL_AREA_SCALE * spacing * spacing))
                        .toInt()
                        .coerceIn(1, MAX_BUBBLES_PER_COMPONENT)
                }
                plannedCount += planned

                val centerX = FloatArray(planned)
                val centerY = FloatArray(planned)
                var centerCount = 1
                if (planned > 1) {
                    splitComponentCount++
                    // Brightest-first greedy placement keeps every source peak
                    // and fills the remaining area at the planned spacing.
                    val order = LongArray(tail) { position ->
                        val index = componentPixels[position]
                        (Int.MAX_VALUE - energyLuma[index].toRawBits()).toLong() shl 32 or
                            index.toLong()
                    }
                    order.sort()
                    val spacingSquared = spacing * spacing
                    centerCount = 0
                    for (key in order) {
                        val index = (key and 0xffffffffL).toInt()
                        val x = (index % width + 0.5f) * originalPixelsPerWorkingX
                        val y = (index / width + 0.5f) * originalPixelsPerWorkingY
                        var separated = true
                        for (center in 0 until centerCount) {
                            val deltaX = centerX[center] - x
                            val deltaY = centerY[center] - y
                            if (deltaX * deltaX + deltaY * deltaY < spacingSquared) {
                                separated = false
                                break
                            }
                        }
                        if (!separated) continue
                        centerX[centerCount] = x
                        centerY[centerCount] = y
                        centerCount++
                        if (centerCount == planned) break
                    }
                }

                // Assign every pixel's energy to its nearest center. A single
                // bubble sits at the component's energy centroid; split bubbles
                // keep their planned centers so the spacing contract holds.
                val red = FloatArray(centerCount)
                val green = FloatArray(centerCount)
                val blue = FloatArray(centerCount)
                val luma = FloatArray(centerCount)
                val momentX = FloatArray(centerCount)
                val momentY = FloatArray(centerCount)
                val cocMoment = FloatArray(centerCount)
                for (position in 0 until tail) {
                    val index = componentPixels[position]
                    val x = (index % width + 0.5f) * originalPixelsPerWorkingX
                    val y = (index / width + 0.5f) * originalPixelsPerWorkingY
                    var owner = 0
                    if (centerCount > 1) {
                        var nearestDistance = Float.MAX_VALUE
                        for (center in 0 until centerCount) {
                            val deltaX = centerX[center] - x
                            val deltaY = centerY[center] - y
                            val distance = deltaX * deltaX + deltaY * deltaY
                            if (distance < nearestDistance) {
                                nearestDistance = distance
                                owner = center
                            }
                        }
                    }
                    val weight = energyLuma[index]
                    val depthByte = depthPixels[index].toInt() and 0xff
                    red[owner] += channel(index, 0)
                    green[owner] += channel(index, 1)
                    blue[owner] += channel(index, 2)
                    luma[owner] += weight
                    momentX[owner] += x * weight
                    momentY[owner] += y * weight
                    cocMoment[owner] += cocByDepth[depthByte] * weight
                }
                for (center in 0 until centerCount) {
                    val weight = luma[center]
                    if (weight <= 0.0f) continue
                    val coc = (cocMoment[center] / weight)
                        .coerceIn(MIN_BUBBLE_COC_PIXELS, maxBlurRadius)
                    val bubbleX = if (centerCount > 1) centerX[center] else momentX[center] / weight
                    val bubbleY = if (centerCount > 1) centerY[center] else momentY[center] / weight
                    bubbles += AnalyticHighlight(
                        centerU = bubbleX / originalWidth.toFloat(),
                        centerV = bubbleY / originalHeight.toFloat(),
                        cocPixels = coc,
                        signalRed = red[center] * workingPixelArea,
                        signalGreen = green[center] * workingPixelArea,
                        signalBlue = blue[center] * workingPixelArea,
                    )
                    bubbleEnergies += weight
                }
            }

            val drawn = if (bubbles.size > MAX_BUBBLES) {
                bubbles.indices
                    .sortedByDescending { bubbleEnergies[it] }
                    .take(MAX_BUBBLES)
                    .map { bubbles[it] }
            } else {
                bubbles
            }
            BubblePlan(
                bubbles = drawn,
                componentCount = componentCount,
                splitComponentCount = splitComponentCount,
                plannedCount = plannedCount,
                cappedCount = bubbles.size - drawn.size,
            )
        } finally {
            LargeDirectBuffer.free(buffer)
        }
    }

    private fun selectDensityLimitedHighlights(
        candidates: List<AnalyticHighlightCandidate>,
        maxBlurRadius: Float,
    ): BooleanArray {
        if (candidates.isEmpty()) return BooleanArray(0)

        // The spacing is fixed for the image and independent of requested CoC.
        // It controls source-center density only; selected sources still draw at
        // their full physical CoC for the requested f-number.
        val minimumSpacing = minimumHighlightCenterSpacing(maxBlurRadius)
        val minimumSpacingSquared = minimumSpacing * minimumSpacing
        val cellSize = minimumSpacing
        val bins = HashMap<Long, MutableList<Int>>()
        val selected = BooleanArray(candidates.size)

        fun cellKey(x: Int, y: Int): Long =
            (x.toLong() shl 32) xor (y.toLong() and 0xffffffffL)

        fun addSelected(index: Int) {
            val candidate = candidates[index]
            val x = floor(candidate.centerXInOriginalPixels / cellSize).toInt()
            val y = floor(candidate.centerYInOriginalPixels / cellSize).toInt()
            bins.getOrPut(cellKey(x, y)) { ArrayList() }.add(index)
            selected[index] = true
        }

        // Existing optical bokeh is evidence from the source image, not a
        // synthetic density choice, so it is never removed.
        for (index in candidates.indices) {
            if (candidates[index].isPreExistingBokeh) addSelected(index)
        }

        val pointCandidateOrder = candidates.indices
            .filter { !candidates[it].isPreExistingBokeh }
            .sortedWith(
                compareByDescending<Int> { candidates[it].selectionScore }
                    .thenBy { it }
            )
        for (index in pointCandidateOrder) {
            val candidate = candidates[index]
            val cellX = floor(candidate.centerXInOriginalPixels / cellSize).toInt()
            val cellY = floor(candidate.centerYInOriginalPixels / cellSize).toInt()
            var hasSelectedNeighbor = false
            for (neighborCellY in cellY - 1..cellY + 1) {
                for (neighborCellX in cellX - 1..cellX + 1) {
                    val neighbors = bins[cellKey(neighborCellX, neighborCellY)] ?: continue
                    for (selectedIndex in neighbors) {
                        val selectedCandidate = candidates[selectedIndex]
                        val deltaX = selectedCandidate.centerXInOriginalPixels -
                            candidate.centerXInOriginalPixels
                        val deltaY = selectedCandidate.centerYInOriginalPixels -
                            candidate.centerYInOriginalPixels
                        if (deltaX * deltaX + deltaY * deltaY < minimumSpacingSquared) {
                            hasSelectedNeighbor = true
                            break
                        }
                    }
                    if (hasSelectedNeighbor) break
                }
                if (hasSelectedNeighbor) break
            }
            if (!hasSelectedNeighbor) {
                addSelected(index)
            }
        }
        return selected
    }

    private fun minimumHighlightCenterSpacing(maxBlurRadius: Float): Float =
        maxOf(maxBlurRadius * HIGHLIGHT_MIN_CENTER_SPACING_SCALE, 1.0f)

    private fun sampleWorkingDepth(
        depthPixels: ByteArray,
        width: Int,
        height: Int,
        x: Float,
        y: Float,
        interpolate: Boolean = true,
    ): Float {
        if (!interpolate) {
            val sampleX = floor(x + 0.5f).toInt().coerceIn(0, width - 1)
            val sampleY = floor(y + 0.5f).toInt().coerceIn(0, height - 1)
            return (depthPixels[sampleY * width + sampleX].toInt() and 0xff) / 255.0f
        }
        val x0 = floor(x).toInt().coerceIn(0, width - 1)
        val y0 = floor(y).toInt().coerceIn(0, height - 1)
        val x1 = minOf(x0 + 1, width - 1)
        val y1 = minOf(y0 + 1, height - 1)
        val fx = (x - x0.toFloat()).coerceIn(0.0f, 1.0f)
        val fy = (y - y0.toFloat()).coerceIn(0.0f, 1.0f)

        fun depthAt(sampleX: Int, sampleY: Int): Float =
            (depthPixels[sampleY * width + sampleX].toInt() and 0xff) / 255.0f

        val top = depthAt(x0, y0) * (1.0f - fx) + depthAt(x1, y0) * fx
        val bottom = depthAt(x0, y1) * (1.0f - fx) + depthAt(x1, y1) * fx
        return top * (1.0f - fy) + bottom * fy
    }

    private fun computeCocPixels(
        depth: Float,
        focusDepth: Float,
        aperture: Float,
        maxBlurRadius: Float,
    ): Float {
        val gap = (kotlin.math.abs(focusDepth - depth) - FOCUS_DEPTH_DEAD_BAND)
            .coerceAtLeast(0.0f)
        val availableFocusSpan = (
            maxOf(focusDepth, 1.0f - focusDepth) - FOCUS_DEPTH_DEAD_BAND
        ).coerceAtLeast(0.15f)
        val normalizedGap = (gap / availableFocusSpan).coerceIn(0.0f, 1.0f)
        val defocus = Math.pow(normalizedGap.toDouble(), 1.25).toFloat()
        val apertureScale = (1.4f / maxOf(aperture, 0.7f)).coerceAtMost(1.25f)
        return (defocus * maxBlurRadius * apertureScale)
            .coerceIn(0.0f, maxBlurRadius)
    }

    private fun isSyntheticHighlightDefocusedDepth(
        depth: Float,
        focusDepth: Float,
    ): Boolean =
        kotlin.math.abs(focusDepth - depth) >= MIN_HIGHLIGHT_SUBJECT_DEPTH_GAP ||
            (focusDepth - depth >= FOCUS_DEPTH_DEAD_BAND &&
                depth <= MAX_HIGHLIGHT_BACKGROUND_DEPTH)

    private fun hasEligibleDefocusedSupport(
        refinedDepthPixels: ByteArray,
        subjectMaskPixels: ByteArray,
        width: Int,
        height: Int,
        originalWidth: Int,
        originalHeight: Int,
        centerX: Float,
        centerY: Float,
        focusDepth: Float,
        cocPixels: Float,
        aperture: Float,
        maxBlurRadius: Float,
    ): Boolean {
        val originalPixelsPerWorkingX = originalWidth.toFloat() / width.toFloat()
        val originalPixelsPerWorkingY = originalHeight.toFloat() / height.toFloat()
        val halfWorkingPixelDiagonal = 0.5f * sqrt(
            originalPixelsPerWorkingX * originalPixelsPerWorkingX +
                originalPixelsPerWorkingY * originalPixelsPerWorkingY
        )

        // Test every working pixel whose cell intersects the aperture disc. A
        // single cell that reaches the focus plane rejects the
        // complete synthetic highlight.
        val clearanceRadius = cocPixels + halfWorkingPixelDiagonal
        val radiusX = ceil(clearanceRadius / originalPixelsPerWorkingX).toInt()
        val radiusY = ceil(clearanceRadius / originalPixelsPerWorkingY).toInt()
        val xStart = maxOf(floor(centerX).toInt() - radiusX, 0)
        val xEnd = minOf(ceil(centerX).toInt() + radiusX, width - 1)
        val yStart = maxOf(floor(centerY).toInt() - radiusY, 0)
        val yEnd = minOf(ceil(centerY).toInt() + radiusY, height - 1)
        val clearanceRadiusSquared = clearanceRadius * clearanceRadius

        for (sampleY in yStart..yEnd) {
            val deltaY = (sampleY.toFloat() - centerY) * originalPixelsPerWorkingY
            for (sampleX in xStart..xEnd) {
                val deltaX = (sampleX.toFloat() - centerX) * originalPixelsPerWorkingX
                if (deltaX * deltaX + deltaY * deltaY > clearanceRadiusSquared) continue
                if ((subjectMaskPixels[sampleY * width + sampleX].toInt() and 0xff) > 2) return false
                val depthByte = refinedDepthPixels[sampleY * width + sampleX].toInt() and 0xff
                val depth = depthByte / 255.0f
                if (!isSyntheticHighlightDefocusedDepth(depth, focusDepth)) return false
            }
        }
        return true
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

    private fun createScalarTexture(width: Int, height: Int, values: FloatArray, label: String): Int {
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
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_R16F,
                width,
                height,
                0,
                GLES30.GL_RED,
                GLES30.GL_FLOAT,
                floatBuffer,
            )
            requireNoGlError("$label R16F upload")
            return texture[0]
        } catch (error: Throwable) {
            if (texture[0] != 0) GLES30.glDeleteTextures(1, texture, 0)
            throw error
        } finally {
            LargeDirectBuffer.free(uploadBuffer)
        }
    }

    private fun createTexture(bitmap: Bitmap, filterNearest: Boolean = false, mipmap: Boolean = false): Int {
        val tex = IntArray(1)
        GLES30.glGenTextures(1, tex, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, tex[0])
        val minFilter = if (filterNearest) GLES30.GL_NEAREST else if (mipmap) GLES30.GL_LINEAR_MIPMAP_LINEAR else GLES30.GL_LINEAR
        val magFilter = if (filterNearest) GLES30.GL_NEAREST else GLES30.GL_LINEAR
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, minFilter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, magFilter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        if (bitmap.config == Bitmap.Config.RGBA_F16) {
            val buffer = LargeDirectBuffer.allocate(bitmap.byteCount.toLong(), "OGL bokeh RGBA_F16 upload")
                ?: throw IllegalStateException("Unable to allocate RGBA_F16 upload buffer")
            try {
                bitmap.copyPixelsToBuffer(buffer)
                buffer.position(0)
                GLES30.glTexImage2D(
                    GLES30.GL_TEXTURE_2D,
                    0,
                    GLES30.GL_RGBA16F,
                    bitmap.width,
                    bitmap.height,
                    0,
                    GLES30.GL_RGBA,
                    GLES30.GL_HALF_FLOAT,
                    buffer
                )
            } finally {
                LargeDirectBuffer.free(buffer)
            }
        } else {
            GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, bitmap, 0)
        }
        if (mipmap) {
            GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
        }
        return tex[0]
    }

    private fun drawAnalyticHighlights(
        highlights: List<AnalyticHighlight>,
        framebuffer: Int,
        renderWidth: Int,
        renderHeight: Int,
        imageWidth: Int,
        imageHeight: Int,
        linearInput: Boolean,
    ) {
        if (highlights.isEmpty()) return

        val instanceByteCount = highlights.size.toLong() *
            HIGHLIGHT_INSTANCE_STRIDE_FLOATS.toLong() * 4L
        val instanceBytes = LargeDirectBuffer.allocate(
            instanceByteCount,
            "OGL analytic-highlight instances",
        ) ?: throw IllegalStateException("Unable to allocate analytic-highlight instance buffer")
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

            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, highlightInstanceBufferId)
            GLES30.glBufferData(
                GLES30.GL_ARRAY_BUFFER,
                instanceByteCount.toInt(),
                instances,
                GLES30.GL_STREAM_DRAW,
            )

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
            GLES30.glViewport(0, 0, renderWidth, renderHeight)
            GLES30.glUseProgram(analyticHighlightProgramId)
            GLES30.glUniform2f(
                GLES30.glGetUniformLocation(analyticHighlightProgramId, "uImageSize"),
                imageWidth.toFloat(),
                imageHeight.toFloat(),
            )
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(analyticHighlightProgramId, "uLinearInput"),
                if (linearInput) 1 else 0,
            )

            val positionLocation = GLES30.glGetAttribLocation(analyticHighlightProgramId, "aPosition")
            val centerLocation = GLES30.glGetAttribLocation(analyticHighlightProgramId, "aCenterUv")
            val cocLocation = GLES30.glGetAttribLocation(analyticHighlightProgramId, "aCocPixels")
            val signalLocation = GLES30.glGetAttribLocation(analyticHighlightProgramId, "aSignal")
            check(
                positionLocation >= 0 && centerLocation >= 0 &&
                    cocLocation >= 0 && signalLocation >= 0
            ) { "Analytic-highlight program has inactive vertex attributes" }

            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
            GLES30.glEnableVertexAttribArray(positionLocation)
            GLES30.glVertexAttribPointer(
                positionLocation,
                2,
                GLES30.GL_FLOAT,
                false,
                0,
                0,
            )

            val strideBytes = HIGHLIGHT_INSTANCE_STRIDE_FLOATS * 4
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, highlightInstanceBufferId)
            GLES30.glEnableVertexAttribArray(centerLocation)
            GLES30.glVertexAttribPointer(
                centerLocation,
                2,
                GLES30.GL_FLOAT,
                false,
                strideBytes,
                0,
            )
            GLES30.glVertexAttribDivisor(centerLocation, 1)
            GLES30.glEnableVertexAttribArray(cocLocation)
            GLES30.glVertexAttribPointer(
                cocLocation,
                1,
                GLES30.GL_FLOAT,
                false,
                strideBytes,
                2 * 4,
            )
            GLES30.glVertexAttribDivisor(cocLocation, 1)
            GLES30.glEnableVertexAttribArray(signalLocation)
            GLES30.glVertexAttribPointer(
                signalLocation,
                3,
                GLES30.GL_FLOAT,
                false,
                strideBytes,
                3 * 4,
            )
            GLES30.glVertexAttribDivisor(signalLocation, 1)

            GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
            GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
            GLES30.glEnable(GLES30.GL_BLEND)
            GLES30.glBlendFunc(
                GLES30.GL_ONE,
                if (linearInput) GLES30.GL_ONE else GLES30.GL_ONE_MINUS_SRC_COLOR,
            )
            GLES30.glColorMask(true, true, true, false)
            try {
                GLES30.glDrawElementsInstanced(
                    GLES30.GL_TRIANGLES,
                    6,
                    GLES30.GL_UNSIGNED_SHORT,
                    0,
                    highlights.size,
                )
            } finally {
                GLES30.glColorMask(true, true, true, true)
                GLES30.glDisable(GLES30.GL_BLEND)
                GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ZERO)
                GLES30.glVertexAttribDivisor(centerLocation, 0)
                GLES30.glVertexAttribDivisor(cocLocation, 0)
                GLES30.glVertexAttribDivisor(signalLocation, 0)
                GLES30.glDisableVertexAttribArray(positionLocation)
                GLES30.glDisableVertexAttribArray(centerLocation)
                GLES30.glDisableVertexAttribArray(cocLocation)
                GLES30.glDisableVertexAttribArray(signalLocation)
                GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
                GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
            }
        } finally {
            LargeDirectBuffer.free(instanceBytes)
        }
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

        val contextAttribs = intArrayOf(
            EGL14.EGL_CONTEXT_CLIENT_VERSION, 3,
            EGL14.EGL_NONE
        )
        eglContext = EGL14.eglCreateContext(eglDisplay, config, EGL14.EGL_NO_CONTEXT, contextAttribs, 0)

        val surfaceAttribs = intArrayOf(
            EGL14.EGL_WIDTH, width,
            EGL14.EGL_HEIGHT, height,
            EGL14.EGL_NONE
        )
        eglSurface = EGL14.eglCreatePbufferSurface(eglDisplay, config, surfaceAttribs, 0)
        check(EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            "Bokeh eglMakeCurrent failed: 0x${EGL14.eglGetError().toString(16)}"
        }
        val textureLimit = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, textureLimit, 0)
        PLog.d(TAG, "Bokeh GLES: vendor=${GLES30.glGetString(GLES30.GL_VENDOR)}, " +
            "renderer=${GLES30.glGetString(GLES30.GL_RENDERER)}, " +
            "version=${GLES30.glGetString(GLES30.GL_VERSION)}, maxTexture=${textureLimit[0]}")
        check(maxOf(width, height) <= textureLimit[0]) { "Bokeh image exceeds GL_MAX_TEXTURE_SIZE" }
    }

    private fun initGL(bokehStyle: BokehStyle) {
        val naturalPsfStyle = bokehStyle != BokehStyle.DEFAULT
        val soapBubbleStyle = bokehStyle == BokehStyle.BUBBLE
        val needsAnalyticOverlay = bokehStyle != BokehStyle.NATURAL
        val vs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        check(vs != 0) { "Bokeh vertex shader compilation failed" }
        try {
            if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED && needsAnalyticOverlay) {
                compactHighlightProgramId = if (soapBubbleStyle) {
                    createProgram(vs, Shaders.BUBBLE_SOURCE_FRAGMENT_SHADER, "bubble source field")
                } else {
                    createProgram(
                        vs,
                        Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
                        "compact bokeh highlight",
                    )
                }
            }
            bokehProgramId = createProgram(
                vs,
                Shaders.psfSplatFragmentShader(
                    naturalStyle = naturalPsfStyle,
                    soapBubbleStyle = soapBubbleStyle,
                ),
                "PSF bokeh",
            )
            bokehCompositeProgramId = createProgram(
                vs,
                Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER,
                "bokeh composite",
            )
            jbuUpsampleProgramId = createProgram(vs, Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER, "depth upsample")
            depthRefineProgramId = createProgram(vs, Shaders.DEPTH_REFINE_FRAGMENT_SHADER, "depth refine")
            layerColorProgramId = createProgram(vs, Shaders.BOKEH_LAYER_COLOR_FRAGMENT_SHADER, "premultiplied bokeh layer")
            if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED && needsAnalyticOverlay) {
                depthReadbackProgramId = createProgram(
                    vs,
                    Shaders.DEPTH_READBACK_FRAGMENT_SHADER,
                    "depth classification resolve",
                )
            }
        } finally {
            GLES30.glDeleteShader(vs)
        }

        if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED && needsAnalyticOverlay) {
            val analyticHighlightVertexShader = GlUtils.compileShader(
                GLES30.GL_VERTEX_SHADER,
                if (soapBubbleStyle) {
                    Shaders.SOAP_BUBBLE_VERTEX_SHADER
                } else {
                    Shaders.ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER
                },
            )
            check(analyticHighlightVertexShader != 0) {
                "Analytic bokeh highlight vertex shader compilation failed"
            }
            try {
                analyticHighlightProgramId = createProgram(
                    analyticHighlightVertexShader,
                    if (soapBubbleStyle) {
                        Shaders.SOAP_BUBBLE_FRAGMENT_SHADER
                    } else {
                        Shaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER
                    },
                    if (soapBubbleStyle) "soap bubble" else "analytic bokeh highlight",
                )
            } finally {
                GLES30.glDeleteShader(analyticHighlightVertexShader)
            }
        }

        vertexBufferId = GlUtils.createBuffer(Shaders.FULL_QUAD_VERTICES)
        texCoordBufferId = GlUtils.createBuffer(Shaders.TEXTURE_COORDS)

        val indexBuffer = java.nio.ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * 2)
            .order(java.nio.ByteOrder.nativeOrder())
            .asShortBuffer()
        indexBuffer.put(Shaders.DRAW_ORDER)
        indexBuffer.position(0)
        val ids = IntArray(1)
        GLES30.glGenBuffers(1, ids, 0)
        indexBufferId = ids[0]
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glBufferData(GLES30.GL_ELEMENT_ARRAY_BUFFER, Shaders.DRAW_ORDER.size * 2, indexBuffer, GLES30.GL_STATIC_DRAW)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)

        if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED) {
            GLES30.glGenBuffers(1, ids, 0)
            highlightInstanceBufferId = ids[0]
        }
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

    private fun drawQuad(program: Int) {
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBufferId)
        val posLoc = GLES30.glGetAttribLocation(program, "aPosition")
        GLES30.glEnableVertexAttribArray(posLoc)
        GLES30.glVertexAttribPointer(posLoc, 2, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, texCoordBufferId)
        val texLoc = GLES30.glGetAttribLocation(program, "aTexCoord")
        GLES30.glEnableVertexAttribArray(texLoc)
        GLES30.glVertexAttribPointer(texLoc, 2, GLES30.GL_FLOAT, false, 0, 0)

        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, indexBufferId)
        GLES30.glDrawElements(GLES30.GL_TRIANGLES, 6, GLES30.GL_UNSIGNED_SHORT, 0)

        GLES30.glDisableVertexAttribArray(posLoc)
        GLES30.glDisableVertexAttribArray(texLoc)
    }

    private fun releaseGL() {
        if (compactHighlightProgramId != 0) GLES30.glDeleteProgram(compactHighlightProgramId)
        if (bokehProgramId != 0) GLES30.glDeleteProgram(bokehProgramId)
        if (analyticHighlightProgramId != 0) GLES30.glDeleteProgram(analyticHighlightProgramId)
        if (bokehCompositeProgramId != 0) GLES30.glDeleteProgram(bokehCompositeProgramId)
        if (jbuUpsampleProgramId != 0) GLES30.glDeleteProgram(jbuUpsampleProgramId)
        if (depthRefineProgramId != 0) GLES30.glDeleteProgram(depthRefineProgramId)
        if (depthReadbackProgramId != 0) GLES30.glDeleteProgram(depthReadbackProgramId)
        if (layerColorProgramId != 0) GLES30.glDeleteProgram(layerColorProgramId)
        if (vertexBufferId != 0) GLES30.glDeleteBuffers(1, intArrayOf(vertexBufferId), 0)
        if (texCoordBufferId != 0) GLES30.glDeleteBuffers(1, intArrayOf(texCoordBufferId), 0)
        if (indexBufferId != 0) GLES30.glDeleteBuffers(1, intArrayOf(indexBufferId), 0)
        if (highlightInstanceBufferId != 0) {
            GLES30.glDeleteBuffers(1, intArrayOf(highlightInstanceBufferId), 0)
        }

        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
            EGL14.eglDestroySurface(eglDisplay, eglSurface)
            EGL14.eglDestroyContext(eglDisplay, eglContext)
            EGL14.eglTerminate(eglDisplay)
        }
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        compactHighlightProgramId = 0
        bokehProgramId = 0
        analyticHighlightProgramId = 0
        bokehCompositeProgramId = 0
        jbuUpsampleProgramId = 0
        depthRefineProgramId = 0
        depthReadbackProgramId = 0
        layerColorProgramId = 0
        vertexBufferId = 0
        texCoordBufferId = 0
        indexBufferId = 0
        highlightInstanceBufferId = 0
    }
}
