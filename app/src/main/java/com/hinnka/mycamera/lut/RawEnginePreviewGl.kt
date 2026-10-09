package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.raw.DcpTextureResources
import com.hinnka.mycamera.raw.RawCurveTextureResources
import com.hinnka.mycamera.raw.RawEnginePreviewPlan
import com.hinnka.mycamera.raw.RawEngineTonePass
import com.hinnka.mycamera.raw.RawFullscreenQuad
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingGl
import com.hinnka.mycamera.utils.PLog

/**
 * One engine pass in the source texture's UV space, before crop/rotation and recipe layers.
 * The output is display sRGB in RGBA16F. Original snapshots keep sampling the ISP texture.
 * Engine resources/bindings and GLSL are shared with RAW, on this preview's EGL context.
 */
internal class RawEnginePreviewGl {
    private val quad = RawFullscreenQuad()
    private var engines = newEnginePass()
    private val inverseAcr = LogInputGl()
    private val programs = mutableMapOf<Pair<RawRenderingEngine, PreviewColorTextureSource>, Int>()
    private var texture = 0
    private var framebuffer = 0
    private var width = 0
    private var height = 0
    private var lastPlan: RawEnginePreviewPlan? = null
    private var lastTimestamp = Long.MIN_VALUE
    private var lastInput = 0
    private var lastSource: PreviewColorTextureSource? = null

    fun render(
        plan: RawEnginePreviewPlan,
        source: PreviewColorTextureSource,
        inputTarget: Int,
        inputTexture: Int,
        timestamp: Long,
        width: Int,
        height: Int,
    ): Int {
        if (texture != 0 && this.width == width && this.height == height &&
            lastPlan === plan && lastTimestamp == timestamp && lastInput == inputTexture && lastSource == source
        ) return texture
        val program = programs.getOrPut(plan.engine to source) {
            quad.createProgram(shader(plan.engine, source), "previewEngine${plan.engine}-$source")
        }
        if (program == 0 || !ensureTarget(width, height)) return 0
        GLES30.glUseProgram(program)
        // Unit 4 is the RAW HDR reference curve's slot, unused by SDR engine resources.
        inverseAcr.bind(GLES30.glGetUniformLocation(program, "uInverseAcr3Texture"), 4)
        engines.bindColorResources(program, plan.resources)
        fun matrix(name: String, value: FloatArray) = GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, name), 1, false,
            RawToneMappingGl.transposeMatrix3x3(value), 0,
        )
        matrix("uPreviewRestore", plan.restoreTransform)
        matrix("uPreviewInput", plan.inputTransform)
        matrix("uPreviewOutput", plan.resources.outputTransform)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uPreviewClipCamera"), if (plan.cameraClip != null) 1 else 0)
        GLES30.glUniform3fv(
            GLES30.glGetUniformLocation(program, "uPreviewCameraWhite"), 1,
            plan.cameraClip ?: WHITE, 0,
        )
        // Resource uploads may alter active bindings. Establish all draw inputs explicitly.
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(inputTarget, inputTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uPreviewSource"), 0)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
        quad.bindIdentityTextureMatrix(program)
        quad.draw(program)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Draw failed engine=${plan.engine} restore=${plan.restoration} source=$source error=$error")
            return 0
        }
        lastPlan = plan
        lastTimestamp = timestamp
        lastInput = inputTexture
        lastSource = source
        return texture
    }

    private fun ensureTarget(w: Int, h: Int): Boolean {
        if (texture != 0 && framebuffer != 0 && width == w && height == h) return true
        releaseTarget()
        val limit = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limit, 0)
        if (w !in 1..limit[0] || h !in 1..limit[0]) {
            PLog.e(TAG, "Invalid preview engine target ${w}x$h, limit=${limit[0]}")
            return false
        }
        texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        framebuffer = IntArray(1).also { GLES30.glGenFramebuffers(1, it, 0) }[0]
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, w, h)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0)
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        val error = GLES30.glGetError()
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE || error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Preview engine RGBA16F allocation failed ${w}x$h status=$status error=$error")
            releaseTarget()
            return false
        }
        width = w
        height = h
        return true
    }

    fun release() {
        engines.release()
        inverseAcr.release()
        programs.values.forEach { if (it != 0) GLES30.glDeleteProgram(it) }
        releaseTarget()
        reset()
    }

    /** Context loss invalidates every cached handle without deleting names in the new context. */
    fun reset() {
        engines = newEnginePass()
        inverseAcr.reset()
        programs.clear()
        texture = 0
        framebuffer = 0
        width = 0
        height = 0
        lastPlan = null
        lastTimestamp = Long.MIN_VALUE
        lastInput = 0
        lastSource = null
    }

    private fun releaseTarget() {
        if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        texture = 0
        framebuffer = 0
        lastPlan = null
    }

    private fun newEnginePass() = RawEngineTonePass(quad, DcpTextureResources(), RawCurveTextureResources())

    companion object {
        private const val TAG = "RawEnginePreview"
        private val WHITE = floatArrayOf(1f, 1f, 1f)

        fun shader(engine: RawRenderingEngine, source: PreviewColorTextureSource): String {
            val definition = RawEngineTonePass.shaderDefinitionFor(engine)
            val external = source == PreviewColorTextureSource.EXTERNAL_OES
            val prepare = if (definition.includeAdobeProfilePipeline) {
                "color = applyAdobeProfilePipeline(clamp(color, 0.0, 1.0));"
            } else "color *= uProfileExposureLinearGain;"
            val output = if (engine.isHncs) {
                // Same decoding as HncsOutputLinearPass. HNCS FilmCurve output is companded.
                "color = uPreviewOutput * pow(max(color, vec3(0.0)), vec3(2.2));"
            } else ""
            return """
                #version 300 es
                ${if (external) "#extension GL_OES_EGL_image_external_essl3 : require" else ""}
                precision highp float;
                precision highp int;
                precision highp sampler2D;
                precision highp sampler3D;
                in vec2 vTexCoord;
                out vec4 fragColor;
                uniform highp ${if (external) "samplerExternalOES" else "sampler2D"} uPreviewSource;
                uniform mat3 uPreviewRestore;
                uniform mat3 uPreviewInput;
                uniform mat3 uPreviewOutput;
                uniform bool uPreviewClipCamera;
                uniform vec3 uPreviewCameraWhite;
                ${PreviewColorShaderModules.COLOR_TRANSFER_CORE}
                ${LogInputGl.GLSL}
                ${definition.engineUniforms}
                ${definition.profileUniforms}
                ${definition.profileFunctions}
                ${definition.engineFunctions}
                void main() {
                    vec4 sampled = texture(uPreviewSource, vTexCoord);
                    vec3 linear = srgbToLinear(clamp(sampled.rgb, 0.0, 1.0));
                    vec3 scene = vec3(inverseAcr3(linear.r), inverseAcr3(linear.g), inverseAcr3(linear.b));
                    vec3 restored = uPreviewRestore * scene;
                    if (uPreviewClipCamera) restored = clamp(restored, vec3(0.0), uPreviewCameraWhite);
                    vec3 color = uPreviewInput * restored;
                    $prepare
                    color = applyEngineTone(color);
                    $output
                    fragColor = vec4(linearToSrgb(clamp(color, 0.0, 1.0)), sampled.a);
                }
            """.trimIndent().trimStart()
        }
    }
}
