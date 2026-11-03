package com.hinnka.mycamera.lut

import android.opengl.GLES11Ext
import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlin.math.max

/**
 * Single-pass approximations of the multi-pass spatial effects for realtime preview.
 *
 * One quarter-resolution downsample of the colour pass source (rgb, highlight mask in alpha) plus
 * its mip chain stands in for every blur: clarity, soft light, bloom, red halation and the local
 * adaptation of highlights / shadows sample it at fixed levels inside the colour pass. The blur
 * is taken before the recipe, so glows and detail bands live in camera colour rather than in the
 * graded output; capture keeps the full implementations, and for highlights / shadows this is the
 * only implementation.
 */
internal class PreviewLiteEffectsGl(private val tag: String) {
    private var oesProgram = 0
    private var texture2dProgram = 0
    private var texture = 0
    private var framebuffer = 0
    private var width = 0
    private var height = 0

    /** Renders the blur pyramid of [sourceTextureId] and returns its texture, or 0 when unavailable. */
    fun render(
        sourceTarget: Int,
        sourceTextureId: Int,
        sourceWidth: Int,
        sourceHeight: Int,
        drawQuad: (Int) -> Unit,
    ): Int {
        val program = ensureProgram(sourceTarget)
        if (program == 0) return 0
        if (!ensureTarget(max(1, sourceWidth / DOWNSAMPLE), max(1, sourceHeight / DOWNSAMPLE))) return 0

        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(program)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(sourceTarget, sourceTextureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uSource"), 0)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(program, "uSourceTexel"),
            1f / max(1, sourceWidth),
            1f / max(1, sourceHeight),
        )
        drawQuad(program)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glGenerateMipmap(GLES30.GL_TEXTURE_2D)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return texture
    }

    fun reset() {
        oesProgram = 0
        texture2dProgram = 0
        texture = 0
        framebuffer = 0
        width = 0
        height = 0
    }

    fun release() {
        GlUtils.deleteProgram(oesProgram)
        GlUtils.deleteProgram(texture2dProgram)
        releaseTarget()
        reset()
    }

    private fun ensureProgram(sourceTarget: Int): Int {
        val oes = sourceTarget == GLES11Ext.GL_TEXTURE_EXTERNAL_OES
        if (oes && oesProgram != 0) return oesProgram
        if (!oes && texture2dProgram != 0) return texture2dProgram
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, downsampleShader(oes))
        if (vertexShader == 0 || fragmentShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            PLog.e(tag, "Failed to compile preview lite downsample (oes=$oes)")
            return 0
        }
        val program = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (oes) oesProgram = program else texture2dProgram = program
        return program
    }

    private fun ensureTarget(targetWidth: Int, targetHeight: Int): Boolean {
        if (texture != 0 && framebuffer != 0 && width == targetWidth && height == targetHeight) return true
        releaseTarget()
        val levels = 32 - Integer.numberOfLeadingZeros(max(targetWidth, targetHeight))
        texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, levels, GLES30.GL_RGBA8, targetWidth, targetHeight)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR_MIPMAP_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        framebuffer = IntArray(1).also { GLES30.glGenFramebuffers(1, it, 0) }[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0,
        )
        val complete = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        if (!complete) {
            PLog.e(tag, "Preview lite blur target ${targetWidth}x$targetHeight incomplete")
            releaseTarget()
            return false
        }
        width = targetWidth
        height = targetHeight
        return true
    }

    private fun releaseTarget() {
        if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        texture = 0
        framebuffer = 0
        width = 0
        height = 0
    }

    companion object {
        const val TEXTURE_UNIT = 6
        private const val DOWNSAMPLE = 4

        // Four bilinear taps cover the 4x4 source footprint of each quarter-resolution texel.
        private fun downsampleShader(oes: Boolean): String = """
            #version 300 es
            ${if (oes) "#extension GL_OES_EGL_image_external_essl3 : require" else ""}
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform ${if (oes) "samplerExternalOES" else "sampler2D"} uSource;
            uniform vec2 uSourceTexel;
            void main() {
                vec2 d = uSourceTexel;
                vec3 color = texture(uSource, vTexCoord + vec2(-d.x, -d.y)).rgb;
                color += texture(uSource, vTexCoord + vec2(d.x, -d.y)).rgb;
                color += texture(uSource, vTexCoord + vec2(-d.x, d.y)).rgb;
                color += texture(uSource, vTexCoord + vec2(d.x, d.y)).rgb;
                color = clamp(color * 0.25, 0.0, 1.0);
                float y = dot(color, vec3(0.299, 0.587, 0.114));
                fragColor = vec4(color, clamp((y - $BLOOM_THRESHOLD) / (1.0 - $BLOOM_THRESHOLD), 0.0, 1.0));
            }
        """.trimIndent()

        private const val BLOOM_THRESHOLD = "0.598"

        /**
         * Hash grain in place of the density / simplex model: one cell per grain, triangular
         * noise, strongest in the midtones and thinned in highlights like the full model.
         */
        const val GRAIN_GLSL = """
            float previewGrainHash(vec2 p) {
                vec3 p3 = fract(vec3(p.xyx) * 0.1031);
                p3 += dot(p3, p3.yzx + 33.33);
                return fract((p3.x + p3.y) * p3.z);
            }

            vec3 applyPreviewFilmGrain(vec3 color, vec2 pixel, float amount, float seed, float pixelScale) {
                float normalizedAmount = clamp(amount, 0.0, 1.0);
                float grainSize = max(pixelScale, 0.25) * mix(0.5, 1.0, smoothstep(0.0, 0.5, normalizedAmount));
                vec2 cell = floor(pixel / max(grainSize, 0.5)) +
                    floor(fract(seed * vec2(0.754877666, 0.569840296)) * 1024.0);
                float noise = previewGrainHash(cell) + previewGrainHash(cell + 17.0) - 1.0;
                float luma = dot(color, W);
                float tonal = mix(0.35, 1.0, 4.0 * luma * (1.0 - luma)) *
                    mix(1.0, 0.32, smoothstep(0.75, 0.97, luma));
                return color + vec3(noise * pow(normalizedAmount, 0.58) * 0.09 * tonal);
            }
        """

        /**
         * Colour pass functions. The host declares `uHighlights`, `uShadows`, `uExposure`, `W` and the
         * sRGB transfer helpers; [uvCoord] is the source coordinate the blur was rendered in.
         */
        const val GLSL = """
            uniform sampler2D uPreviewBlur;
            uniform float uPreviewClarity;
            uniform float uPreviewSoftLight;
            uniform float uPreviewBloom;
            uniform float uPreviewRedHalation;

            // Global-plus-local tone curve: the coarse blur supplies the adaptation level, highlights /
            // shadows act as gains on linear RGB.
            vec3 applyPreviewShadowsHighlights(vec3 color, vec2 uv) {
                float fill = clamp(uShadows, -1.0, 1.0);
                float highlight = clamp(uHighlights, -1.0, 1.0);
                if (abs(fill) < 0.0005 && abs(highlight) < 0.0005) return color;
                vec3 linearColor = srgbToLinear(max(color, vec3(0.0)));
                float y = dot(linearColor, W);
                float local = dot(srgbToLinear(textureLod(uPreviewBlur, uv, 3.0).rgb), W) * exp2(uExposure);
                float level = sqrt(clamp(mix(y, local, 0.65), 0.0, 1.0));
                float shadowWeight = 1.0 - smoothstep(0.0, 0.6, level);
                float highlightWeight = smoothstep(0.4, 1.0, level);
                float ev = fill * 1.6 * shadowWeight * shadowWeight +
                    highlight * 1.2 * highlightWeight * highlightWeight;
                return linearToSrgb(linearColor * exp2(ev));
            }

            // Detail bands from the source-domain blur, applied as a luminance ratio like the
            // pyramid composite.
            vec3 applyPreviewClarity(vec3 color, float sourceLuma, vec2 uv) {
                float referenceLuma = dot(max(color, vec3(0.0)), W);
                float l0 = dot(textureLod(uPreviewBlur, uv, 0.0).rgb, W);
                float l1 = dot(textureLod(uPreviewBlur, uv, 1.0).rgb, W);
                float l2 = dot(textureLod(uPreviewBlur, uv, 2.0).rgb, W);
                float detail = (sourceLuma - l0) * 0.2 + (l0 - l1) * 0.5 + (l1 - l2) * 0.32;
                float tonalWeight = smoothstep(0.02, 0.18, l2) * (1.0 - smoothstep(0.72, 0.98, l2));
                float gain = uPreviewClarity * (uPreviewClarity >= 0.0 ? 1.8 : 1.1);
                float processedLuma = max(referenceLuma + detail * gain * tonalWeight, 0.0);
                const float epsilon = 1.0 / 65535.0;
                float factor = referenceLuma > 0.00002
                    ? clamp((processedLuma + epsilon) / (referenceLuma + epsilon), 0.25, 4.0)
                    : 1.0;
                return color * factor;
            }

            vec3 applyPreviewSoftLight(vec3 color, vec2 uv) {
                vec3 softBlur = textureLod(uPreviewBlur, uv, 1.5).rgb;
                vec3 screen = vec3(1.0) - (vec3(1.0) - color) * (vec3(1.0) - softBlur);
                vec3 softGlow = mix(color, screen, 0.42);
                color = mix(color, softGlow, uPreviewSoftLight * 0.75);
                color += vec3(dot(softBlur, W)) * (uPreviewSoftLight * 0.025);
                return (color - 0.5) * (1.0 - uPreviewSoftLight * 0.05) + 0.5;
            }

            vec3 applyPreviewBloom(vec3 color, vec2 uv) {
                vec4 blurred = textureLod(uPreviewBlur, uv, 2.5);
                vec3 linearColor = pow(max(color, vec3(0.0)), vec3(2.2));
                vec3 linearBloom = pow(clamp(blurred.rgb * blurred.a * 1.5, 0.0, 1.0), vec3(2.2));
                if (uPreviewBloom <= 0.5) {
                    vec3 full = pow(clamp(linearColor + linearBloom, 0.0, 1.0), vec3(1.0 / 2.2));
                    return mix(color, full, uPreviewBloom * 2.0);
                }
                return pow(linearColor + linearBloom * (uPreviewBloom * 2.0), vec3(1.0 / 2.2));
            }

            vec3 applyPreviewRedHalation(vec3 color, vec2 uv) {
                float mask = textureLod(uPreviewBlur, uv, 2.0).a;
                float x = min(mask * 1.5, 1.0);
                float amount = x < 0.4 ? 0.4 * pow(x / 0.4, 1.25) : 0.4 + 0.6 * pow((x - 0.4) / 0.6, 0.8);
                float y = dot(color, vec3(0.299, 0.587, 0.114));
                float destination = 1.0 / (1.0 + exp(-50.0 * (1.0 - y)));
                vec3 glow = amount * vec3(1.0, 0.05, 0.05) * uPreviewRedHalation * destination;
                vec3 linearColor = pow(max(color, vec3(0.0)), vec3(2.2));
                return pow(clamp(linearColor + glow, 0.0, 1.0), vec3(1.0 / 2.2));
            }
        """
    }
}
