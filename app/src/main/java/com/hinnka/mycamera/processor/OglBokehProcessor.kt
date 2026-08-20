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
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.sqrt

class OglBokehProcessor {
    companion object {
        private const val TAG = "OglBokehProcessor"
        private const val MAX_BOKEH_RENDER_EDGE = 2560
        // Keep the analytic pipeline available, but do not synthesize highlight discs for now.
        private const val ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED = false
        private const val HIGHLIGHT_MASK_THRESHOLD = 0.02f
        private const val MIN_ANALYTIC_COC_PIXELS = 20f
        private const val FOCUS_DEPTH_DEAD_BAND = 0.015f
        // Synthetic-highlight background gate. A depth sample is accepted when
        // its gap behind the focused subject is >= X, OR its normalized depth is <= Y.
        private const val MIN_HIGHLIGHT_SUBJECT_DEPTH_GAP = 0.4f // X
        private const val MAX_HIGHLIGHT_BACKGROUND_DEPTH = 0.2f // Y
        private const val HIGHLIGHT_CLASSIFICATION_F_NUMBER = 2.8f
        // Tunable highlight-quality gate measured in linear RGB.
        private const val MIN_HIGHLIGHT_NEIGHBOR_LUMA_DIFFERENCE = 0.1f
        private const val HIGHLIGHT_MIN_CENTER_SPACING_SCALE = 0.9f
        private const val HIGHLIGHT_PEAK_DISCOVERY_CELL_SCALE = 0.5f
        private const val PREEXISTING_BOKEH_RADIUS_SCALE = 0.05f
        private const val MAX_PREEXISTING_BOKEH_RADIUS_SCALE = 1.5f
        private const val MIN_PREEXISTING_BOKEH_RADIUS_PIXELS = 2.0f
        private const val MIN_PREEXISTING_BOKEH_FILL_RATIO = 0.45f
        private const val MIN_PREEXISTING_BOKEH_ASPECT_RATIO = 0.5f
        private const val HIGHLIGHT_INSTANCE_STRIDE_FLOATS = 6
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

    private var uDepthMatrixLoc: Int = 0
    private var compactHighlightProgramId = 0
    private var bokehProgramId = 0
    private var analyticHighlightProgramId = 0
    private var bokehCompositeProgramId = 0
    private var jbuUpsampleProgramId = 0
    private var depthRefineProgramId = 0
    private var depthReadbackProgramId = 0
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
        focusDepth: Float,
        aperture: Float
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
            initGL()

            val inputTex = createTexture(originalImage, mipmap = true)
            val lowResDepthTex = createDepthTexture(lowResDepthMap)
            val renderStartedAtMs = SystemClock.elapsedRealtime()

            val fbo = IntArray(1)
            GLES30.glGenFramebuffers(1, fbo, 0)
            
            val highResDepthTex = IntArray(1)
            val refinedDepthTex = IntArray(1)
            val depthReadbackTex = IntArray(1)

            // Step 1: 4x4 JBU upsample. Render depth remains half-float from
            // this point through every bokeh consumer.
            GLES30.glDisable(GLES30.GL_DITHER)
            GLES30.glGenTextures(1, highResDepthTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, highResDepthTex[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R16F, bokehWidth, bokehHeight, 0, GLES30.GL_RED, GLES30.GL_HALF_FLOAT, null)
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

            GLES30.glUniform2f(GLES30.glGetUniformLocation(jbuUpsampleProgramId, "uLowResTexelSize"), 1.0f / lowResDepthMap.width, 1.0f / lowResDepthMap.height)

            drawQuad(jbuUpsampleProgramId)

            // Step 2: bounded, spatial depth sharpening in the same R16F domain.
            GLES30.glGenTextures(1, refinedDepthTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, refinedDepthTex[0])
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R16F, bokehWidth, bokehHeight, 0, GLES30.GL_RED, GLES30.GL_HALF_FLOAT, null)
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
            GLES30.glUniform2f(GLES30.glGetUniformLocation(depthRefineProgramId, "uTexelSize"), 1.0f / bokehWidth, 1.0f / bokehHeight)

            drawQuad(depthRefineProgramId)

            val finalDepthTex = refinedDepthTex[0]
            val maxBlurRadius = originalImage.width.toFloat() / 45.0f
            val identity = FloatArray(16)
            android.opengl.Matrix.setIdentityM(identity, 0)

            val compactHighlightTex = IntArray(1)
            val analyticHighlights = if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED) {
                // CPU highlight topology only needs a conservative normalized copy.
                // Its R8 quantization never feeds the renderer; finalDepthTex remains
                // R16F. Resolving explicitly also avoids unsupported float readback
                // format/type combinations on GLES 3.0 drivers.
                GLES30.glGenTextures(1, depthReadbackTex, 0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, depthReadbackTex[0])
                GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_R8, bokehWidth, bokehHeight, 0, GLES30.GL_RED, GLES30.GL_UNSIGNED_BYTE, null)
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
                val refinedDepthPixels = readCurrentR8Framebuffer(bokehWidth, bokehHeight)
                GLES30.glEnable(GLES30.GL_DITHER)

                // Step 3: Classify only compact, isolated highlights. This prevents
                // large bright regions from entering the inferred-radiance bokeh path.
                GLES30.glGenTextures(1, compactHighlightTex, 0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, compactHighlightTex[0])
                GLES30.glTexImage2D(
                    GLES30.GL_TEXTURE_2D,
                    0,
                    if (halfFloatOutput) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
                    bokehWidth,
                    bokehHeight,
                    0,
                    GLES30.GL_RGBA,
                    if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                    null
                )
                GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
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
                requireFramebufferComplete("compact bokeh highlight")
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
                GLES30.glUniformMatrix4fv(
                    GLES30.glGetUniformLocation(compactHighlightProgramId, "uDepthMatrix"),
                    1,
                    false,
                    identity,
                    0
                )
                GLES30.glUniform1f(
                    GLES30.glGetUniformLocation(compactHighlightProgramId, "uMaxBlurRadius"),
                    maxBlurRadius
                )
                GLES30.glUniform1f(
                    GLES30.glGetUniformLocation(compactHighlightProgramId, "uAperture"),
                    HIGHLIGHT_CLASSIFICATION_F_NUMBER
                )
                GLES30.glUniform1f(
                    GLES30.glGetUniformLocation(compactHighlightProgramId, "uFocusDepth"),
                    focusDepth
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
                GLES30.glUniform1i(
                    GLES30.glGetUniformLocation(compactHighlightProgramId, "uLinearInput"),
                    if (linearInput) 1 else 0
                )
                drawQuad(compactHighlightProgramId)

                // Collapse every connected highlight response to exactly one center.
                // Components whose complete CoC support is not clear of the focused
                // subject are rejected before any synthetic light is rasterized.
                extractAnalyticHighlights(
                    width = bokehWidth,
                    height = bokehHeight,
                    halfFloat = halfFloatOutput,
                    refinedDepthPixels = refinedDepthPixels,
                    originalWidth = originalImage.width,
                    originalHeight = originalImage.height,
                    focusDepth = focusDepth,
                    aperture = aperture,
                    maxBlurRadius = maxBlurRadius,
                ).also { extraction ->
                    PLog.d(
                        TAG,
                        "Analytic bokeh highlights: fNumber=$aperture, " +
                            "minNeighborLumaDelta=$MIN_HIGHLIGHT_NEIGHBOR_LUMA_DIFFERENCE, " +
                            "candidates=${extraction.eligibleCandidateCount}, " +
                            "depthGateRejected=${extraction.depthGateRejectedCount}, " +
                            "preExisting=${extraction.preExistingBokehCount}, " +
                            "densitySuppressed=${extraction.densitySuppressedCount}, " +
                            "accepted=${extraction.highlights.size}"
                    )
                }.highlights
            } else {
                GLES30.glEnable(GLES30.GL_DITHER)
                PLog.d(TAG, "Analytic bokeh highlights disabled")
                emptyList()
            }

            // Step 4: Render the expensive PSF at a bounded working resolution.
            val bokehTex = IntArray(1)
            GLES30.glGenTextures(1, bokehTex, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, bokehTex[0])
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                if (halfFloatOutput) GLES30.GL_RGBA16F else GLES30.GL_RGBA8,
                bokehWidth,
                bokehHeight,
                0,
                GLES30.GL_RGBA,
                if (halfFloatOutput) GLES30.GL_HALF_FLOAT else GLES30.GL_UNSIGNED_BYTE,
                null
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)

            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, bokehTex[0], 0)
            requireFramebufferComplete("PSF bokeh")
            GLES30.glViewport(0, 0, bokehWidth, bokehHeight)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(bokehProgramId)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehProgramId, "uInputTexture"), 0)

            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, finalDepthTex)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(bokehProgramId, "uDepthTexture"), 1)

            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uMaxBlurRadius"), maxBlurRadius)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uAperture"), aperture)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(bokehProgramId, "uFocusDepth"), focusDepth)
            GLES30.glUniform2f(GLES30.glGetUniformLocation(bokehProgramId, "uTexelSize"), 1.0f / originalImage.width, 1.0f / originalImage.height)
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(bokehProgramId, "uLinearInput"),
                if (linearInput) 1 else 0
            )

            GLES30.glUniformMatrix4fv(GLES30.glGetUniformLocation(bokehProgramId, "uDepthMatrix"), 1, false, identity, 0)

            drawQuad(bokehProgramId)

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
                1.0f / bokehWidth,
                1.0f / bokehHeight,
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
            GLES30.glDeleteTextures(1, highResDepthTex, 0)
            GLES30.glDeleteTextures(1, refinedDepthTex, 0)
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

    private fun readCurrentR8Framebuffer(width: Int, height: Int): ByteArray {
        val byteCount = width.toLong() * height.toLong()
        val buffer = LargeDirectBuffer.allocate(byteCount, "OGL bokeh refined-depth readback")
            ?: throw IllegalStateException("Unable to allocate refined-depth readback buffer")
        return try {
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
            GLES30.glReadPixels(
                0,
                0,
                width,
                height,
                GLES30.GL_RED,
                GLES30.GL_UNSIGNED_BYTE,
                buffer,
            )
            buffer.position(0)
            ByteArray(byteCount.toInt()).also(buffer::get)
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
            ) {
                val centerDepth = sampleWorkingDepth(
                    refinedDepthPixels,
                    width,
                    height,
                    centerX,
                    centerY,
                )

                // Synthetic circles are a background-only path. A highlight on
                // the focused subject remains part of the normalized base blur.
                if (!isSyntheticHighlightBackgroundDepth(centerDepth, focusDepth)) {
                    depthGateRejectedCount++
                    return
                }
                val cocPixels = computeCocPixels(
                    depth = centerDepth,
                    focusDepth = focusDepth,
                    aperture = aperture,
                    maxBlurRadius = maxBlurRadius,
                )
                if (cocPixels < MIN_ANALYTIC_COC_PIXELS) return
                if (!hasEligibleBackgroundSupport(
                        refinedDepthPixels = refinedDepthPixels,
                        width = width,
                        height = height,
                        originalWidth = originalWidth,
                        originalHeight = originalHeight,
                        centerX = centerX,
                        centerY = centerY,
                        focusDepth = focusDepth,
                        cocPixels = cocPixels,
                    )
                ) {
                    depthGateRejectedCount++
                    return
                }

                // The compact texture is premultiplied by its classifier alpha.
                // Existing optical discs need their observed source signal back;
                // point candidates retain confidence-weighted energy so borderline
                // foliage does not become as strong as a clipped light source.
                val sourceSignalScale = if (isPreExistingBokeh) {
                    1.0f / maxOf(peak.alpha, 0.001f)
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
        maxOf(
            maxBlurRadius * HIGHLIGHT_MIN_CENTER_SPACING_SCALE,
            1.0f,
        )

    private fun sampleWorkingDepth(
        depthPixels: ByteArray,
        width: Int,
        height: Int,
        x: Float,
        y: Float,
    ): Float {
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
        val gap = (focusDepth - depth - FOCUS_DEPTH_DEAD_BAND)
            .coerceAtLeast(0.0f)
        val defocus = Math.pow(gap.toDouble(), 1.1).toFloat()
        return (defocus * maxBlurRadius * (1.0f / maxOf(aperture, 0.45f)))
            .coerceIn(0.0f, maxBlurRadius)
    }

    private fun isSyntheticHighlightBackgroundDepth(
        depth: Float,
        focusDepth: Float,
    ): Boolean =
        focusDepth - depth >= MIN_HIGHLIGHT_SUBJECT_DEPTH_GAP ||
            depth <= MAX_HIGHLIGHT_BACKGROUND_DEPTH

    private fun hasEligibleBackgroundSupport(
        refinedDepthPixels: ByteArray,
        width: Int,
        height: Int,
        originalWidth: Int,
        originalHeight: Int,
        centerX: Float,
        centerY: Float,
        focusDepth: Float,
        cocPixels: Float,
    ): Boolean {
        val originalPixelsPerWorkingX = originalWidth.toFloat() / width.toFloat()
        val originalPixelsPerWorkingY = originalHeight.toFloat() / height.toFloat()
        val halfWorkingPixelDiagonal = 0.5f * sqrt(
            originalPixelsPerWorkingX * originalPixelsPerWorkingX +
                originalPixelsPerWorkingY * originalPixelsPerWorkingY
        )

        // Test every working pixel whose cell intersects the aperture disc. A
        // single cell that fails the configurable background gate rejects the
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
                val depthByte = refinedDepthPixels[sampleY * width + sampleX].toInt() and 0xff
                val depth = depthByte / 255.0f
                // Apply the same configurable background predicate to the whole
                // aperture support. One ineligible cell rejects the full disc.
                if (!isSyntheticHighlightBackgroundDepth(depth, focusDepth)) return false
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

    private fun createDepthTexture(depthMap: RelativeDepthMap): Int {
        val byteCount = depthMap.values.size.toLong() * Float.SIZE_BYTES
        val uploadBuffer = LargeDirectBuffer.allocate(byteCount, "OGL relative-depth upload")
            ?: throw IllegalStateException("Unable to allocate relative-depth upload buffer")
        val texture = IntArray(1)
        try {
            uploadBuffer.order(ByteOrder.nativeOrder())
            val floatBuffer = uploadBuffer.asFloatBuffer()
            floatBuffer.put(depthMap.values)
            floatBuffer.position(0)

            GLES30.glGenTextures(1, texture, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture[0])
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_R16F,
                depthMap.width,
                depthMap.height,
                0,
                GLES30.GL_RED,
                GLES30.GL_FLOAT,
                floatBuffer,
            )
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
        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
    }

    private fun initGL() {
        val vs = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        check(vs != 0) { "Bokeh vertex shader compilation failed" }
        try {
            if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED) {
                compactHighlightProgramId = createProgram(
                    vs,
                    Shaders.COMPACT_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
                    "compact bokeh highlight"
                )
            }
            bokehProgramId = createProgram(vs, Shaders.PSF_SPLAT_FRAGMENT_SHADER, "PSF bokeh")
            bokehCompositeProgramId = createProgram(
                vs,
                Shaders.BOKEH_COMPOSITE_FRAGMENT_SHADER,
                "bokeh composite",
            )
            jbuUpsampleProgramId = createProgram(vs, Shaders.JBU_UPSAMPLE_FRAGMENT_SHADER, "depth upsample")
            depthRefineProgramId = createProgram(vs, Shaders.DEPTH_REFINE_FRAGMENT_SHADER, "depth refine")
            if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED) {
                depthReadbackProgramId = createProgram(
                    vs,
                    Shaders.DEPTH_READBACK_FRAGMENT_SHADER,
                    "depth classification resolve",
                )
            }
        } finally {
            GLES30.glDeleteShader(vs)
        }

        if (ANALYTIC_BOKEH_HIGHLIGHTS_ENABLED) {
            val analyticHighlightVertexShader = GlUtils.compileShader(
                GLES30.GL_VERTEX_SHADER,
                Shaders.ANALYTIC_BOKEH_HIGHLIGHT_VERTEX_SHADER,
            )
            check(analyticHighlightVertexShader != 0) {
                "Analytic bokeh highlight vertex shader compilation failed"
            }
            try {
                analyticHighlightProgramId = createProgram(
                    analyticHighlightVertexShader,
                    Shaders.ANALYTIC_BOKEH_HIGHLIGHT_FRAGMENT_SHADER,
                    "analytic bokeh highlight",
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
        vertexBufferId = 0
        texCoordBufferId = 0
        indexBufferId = 0
        highlightInstanceBufferId = 0
    }
}
