package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

internal object SpektrafilmToneShader {
    val SPECTRAL_FILM_COMBINED_UNIFORMS = """
        uniform sampler3D uSpectralFilmTexture;
        uniform mat3 uOutputTransform;
        uniform int uSpectralFilmSize;
    """.trimIndent()
    val SPECTRAL_FILM_COMBINED_FUNCTIONS = """
        vec3 linearToProPhoto(vec3 color) {
            vec3 clamped = max(color, vec3(0.0));
            vec3 isHigh = step(vec3(0.001953125), clamped);
            vec3 lowPart = 16.0 * clamped;
            vec3 highPart = pow(clamped, vec3(1.0 / 1.8));
            return mix(lowPart, highPart, isHigh);
        }

        vec3 proPhotoToLinear(vec3 color) {
            vec3 clamped = clamp(color, 0.0, 1.0);
            vec3 isHigh = step(vec3(0.03125), clamped);
            vec3 lowPart = clamped / 16.0;
            vec3 highPart = pow(clamped, vec3(1.8));
            return mix(lowPart, highPart, isHigh);
        }

        vec3 applySpectralFilm(vec3 color) {
            if (uSpectralFilmSize <= 1) {
                return color;
            }
            vec3 normalizedColor = color / 2.88;
            vec3 encodedColor = linearToProPhoto(normalizedColor);
            vec3 lutCoord = clamp(encodedColor, 0.0, 1.0);
            vec3 lutResult = texture(uSpectralFilmTexture, lutCoord).rgb;
            return proPhotoToLinear(lutResult);
        }

        vec3 applyEngineTone(vec3 color) {
            return uOutputTransform * applySpectralFilm(color);
        }
    """.trimIndent()

    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = SPECTRAL_FILM_COMBINED_UNIFORMS,
        engineFunctions = SPECTRAL_FILM_COMBINED_FUNCTIONS,
        includeAdobeProfilePipeline = false,
    )
}

internal class SpektrafilmToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, SpektrafilmToneShader.DEFINITION) {
    private var textureId = 0
    private var textureKey: String? = null

    override fun bindEngineResources(program: Int, input: RawEngineTonePass.Input) {
        super.bindEngineResources(program, input)
        val lut = input.spectralFilmLut
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uSpectralFilmTexture"), 6)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uSpectralFilmSize"),
            lut?.size ?: 1,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE6)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_3D,
            lut?.let(::ensureTexture) ?: ensureFallbackTexture(),
        )
        RawGlesProgram.logErrors("SpektrafilmToneAlgorithm.bindEngineResources")
    }

    override fun releaseEngineResources() {
        if (textureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            textureId = 0
        }
        textureKey = null
    }

    private fun ensureTexture(lut: SpectralFilmLut): Int {
        val key = "${lut.sourceKey}:${lut.size}:${lut.values.size}"
        if (textureId != 0 && textureKey == key) return textureId
        if (textureId == 0) {
            textureId = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        }
        val buffer = ByteBuffer.allocateDirect(lut.values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(lut.values)
                position(0)
            }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        configureTexture(GLES30.GL_LINEAR)
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D,
            0,
            GLES30.GL_RGBA16F,
            lut.size,
            lut.size,
            lut.size,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer,
        )
        textureKey = key
        PLog.d(
            TAG,
            "Uploaded spectral film LUT: ${lut.name}, type=${lut.type}, " +
                "refLight=${lut.referenceIlluminant}, viewLight=${lut.viewingIlluminant}",
        )
        return textureId
    }

    private fun ensureFallbackTexture(): Int {
        if (textureId != 0 && textureKey == FALLBACK_KEY) return textureId
        if (textureId == 0) {
            textureId = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        }
        val buffer = ByteBuffer.allocateDirect(4 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(floatArrayOf(0f, 1f, 1f, 1f))
                position(0)
            }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        configureTexture(GLES30.GL_NEAREST)
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D,
            0,
            GLES30.GL_RGBA16F,
            1,
            1,
            1,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer,
        )
        textureKey = FALLBACK_KEY
        return textureId
    }

    private fun configureTexture(filter: Int) {
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
    }

    private companion object {
        const val TAG = "SpektrafilmToneAlgorithm"
        const val FALLBACK_KEY = "fallback"
    }
}
