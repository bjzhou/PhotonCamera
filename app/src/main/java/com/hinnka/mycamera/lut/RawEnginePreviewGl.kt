package com.hinnka.mycamera.lut

import android.opengl.GLES30
import android.os.SystemClock
import com.hinnka.mycamera.raw.DcpTextureResources
import com.hinnka.mycamera.raw.RawCurveTextureResources
import com.hinnka.mycamera.raw.RawEnginePreviewPlan
import com.hinnka.mycamera.raw.RawEngineTonePass
import com.hinnka.mycamera.raw.RawFullscreenQuad
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawToneMappingGl
import com.hinnka.mycamera.utils.PLog

/**
 * Bakes the pointwise ISP sRGB -> engine -> linear sRGB mapping when its plan changes.
 * A 65-cube RGBA16F atlas keeps the expensive RAW shader independent of camera resolution.
 * The color pass interpolates, then clips/encodes sRGB before recipe layers. Retaining signed
 * linear output avoids interpolating across the final display clipping/gamma discontinuity.
 * Original snapshots bypass it entirely.
 * Grid coordinates are encoded sRGB (not linear RGB), retaining dense shadow sampling.
 * Interpolation approximates the engine between grid nodes; capture still renders directly.
 */
internal class RawEnginePreviewGl {
    private val quad = RawFullscreenQuad()
    private var engines = newEnginePass()
    private val inverseAcr = LogInputGl()
    private val programs = mutableMapOf<RawRenderingEngine, Int>()
    private var texture = 0
    private var framebuffer = 0
    private var lastPlan: RawEnginePreviewPlan? = null
    private var logStartNs = 0L
    private var preparationCount = 0
    private var bakeCount = 0
    private var bakeSubmitNs = 0L

    fun prepare(plan: RawEnginePreviewPlan): Boolean {
        preparationCount++
        if (texture != 0 && lastPlan === plan) {
            logWork(plan)
            return true
        }
        val startNs = SystemClock.elapsedRealtimeNanos()
        val program = programs.getOrPut(plan.engine) {
            quad.createProgram(shader(plan.engine), "previewEngineLut${plan.engine}")
        }
        if (program == 0 || !ensureTarget()) return false
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
        GLES30.glViewport(0, 0, ATLAS_WIDTH, ATLAS_HEIGHT)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
        quad.bindIdentityTextureMatrix(program)
        quad.draw(program)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "LUT bake failed engine=${plan.engine} restore=${plan.restoration} error=$error")
            lastPlan = null
            return false
        }
        lastPlan = plan
        bakeCount++
        bakeSubmitNs += SystemClock.elapsedRealtimeNanos() - startNs
        logWork(plan)
        return true
    }

    fun bind(location: Int) {
        if (location < 0) return
        GLES30.glActiveTexture(GLES30.GL_TEXTURE5)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(location, 5)
    }

    // CPU submission only: GL calls are asynchronous, so this is not GPU duration.
    private fun logWork(plan: RawEnginePreviewPlan) {
        val now = SystemClock.elapsedRealtimeNanos()
        if (logStartNs == 0L) logStartNs = now
        if (now - logStartNs < 5_000_000_000L) return
        PLog.d(TAG, "LUT engine=${plan.engine} draws=$preparationCount bakes=$bakeCount " +
            "bakeCpuSubmitMs=${bakeSubmitNs / 1_000_000.0} grid=$GRID_SIZE atlas=${ATLAS_WIDTH}x$ATLAS_HEIGHT")
        logStartNs = now
        preparationCount = 0
        bakeCount = 0
        bakeSubmitNs = 0L
    }

    private fun ensureTarget(): Boolean {
        if (texture != 0 && framebuffer != 0) return true
        val w = ATLAS_WIDTH
        val h = ATLAS_HEIGHT
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
        lastPlan = null
        logStartNs = 0L
        preparationCount = 0
        bakeCount = 0
        bakeSubmitNs = 0L
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

        const val GRID_SIZE = 65
        private const val TILES_PER_ROW = 9
        private const val ATLAS_WIDTH = GRID_SIZE * TILES_PER_ROW
        private const val ATLAS_HEIGHT = GRID_SIZE * ((GRID_SIZE + TILES_PER_ROW - 1) / TILES_PER_ROW)

        val SAMPLING_GLSL = """
            uniform highp sampler2D uEnginePreviewLut;
            vec2 engineLutCoordinate(vec2 rg, float blue) {
                vec2 tile = vec2(mod(blue, $TILES_PER_ROW.0), floor(blue / $TILES_PER_ROW.0));
                return (tile * $GRID_SIZE.0 + rg + 0.5) / vec2($ATLAS_WIDTH.0, $ATLAS_HEIGHT.0);
            }
            vec3 sampleEnginePreview(vec3 srgb) {
                vec3 position = clamp(srgb, 0.0, 1.0) * ${GRID_SIZE - 1}.0;
                float lower = floor(position.b);
                float upper = min(lower + 1.0, ${GRID_SIZE - 1}.0);
                vec3 lo = texture(uEnginePreviewLut, engineLutCoordinate(position.rg, lower)).rgb;
                vec3 hi = texture(uEnginePreviewLut, engineLutCoordinate(position.rg, upper)).rgb;
                return linearToSrgb(clamp(mix(lo, hi, position.b - lower), 0.0, 1.0));
            }
        """.trimIndent()

        // A source variant is retained for direct-render numerical/driver diagnostics.
        fun shader(engine: RawRenderingEngine, source: PreviewColorTextureSource? = null): String {
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
                ${if (source != null) "uniform highp ${if (external) "samplerExternalOES" else "sampler2D"} uPreviewSource;" else ""}
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
                    ${if (source != null) "vec4 sampled = texture(uPreviewSource, vTexCoord);" else """
                    ivec2 pixel = ivec2(gl_FragCoord.xy);
                    ivec2 tile = pixel / $GRID_SIZE;
                    int blue = min(tile.y * $TILES_PER_ROW + tile.x, ${GRID_SIZE - 1});
                    vec4 sampled = vec4(vec3(pixel % $GRID_SIZE, blue) / ${GRID_SIZE - 1}.0, 1.0);
                    """}
                    vec3 linear = srgbToLinear(clamp(sampled.rgb, 0.0, 1.0));
                    vec3 scene = vec3(inverseAcr3(linear.r), inverseAcr3(linear.g), inverseAcr3(linear.b));
                    vec3 restored = uPreviewRestore * scene;
                    if (uPreviewClipCamera) restored = clamp(restored, vec3(0.0), uPreviewCameraWhite);
                    vec3 color = uPreviewInput * restored;
                    $prepare
                    color = applyEngineTone(color);
                    $output
                    fragColor = vec4(${if (source != null) "linearToSrgb(clamp(color, 0.0, 1.0))" else "color"}, sampled.a);
                }
            """.trimIndent().trimStart()
        }
    }
}
