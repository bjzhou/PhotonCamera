package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer

/** Owns the three distinct inputs of V25's S16 GuidedUpsample until reconstruction. */
internal class MgcGuidedUpsample(private val transfer: RawFloatTextureTransfer) {
    private var handle = 0L
    private var fullWidth = 0
    private var fullHeight = 0
    private var scale = 0
    var lowWidth = 0; private set
    var lowHeight = 0; private set
    var cameraTexture = 0; private set
    var profileTexture = 0; private set
    var profileFramebuffer = 0; private set
    val isPrepared get() = handle != 0L
    val globalWidth get() = lowWidth * scale
    val globalHeight get() = lowHeight * scale
    private val quad = RawFullscreenQuad()
    private var colorDownsampleProgram = 0

    fun prepare(texture: Int, width: Int, height: Int, gains: FloatArray,
                resolution: MgcFinishResolution) {
        require(resolution.needsGuidedUpsample)
        releaseInputs()
        scale = resolution.downsampleFactor
        fullWidth = width; fullHeight = height
        lowWidth = ((width + 127) and -128) / scale
        lowHeight = ((height + 15) and -16) / scale
        val capacityPixels = maxOf(width.toLong() * height, lowWidth.toLong() * lowHeight)
        try {
            transfer.read(texture, width, height, capacityPixels, label = "guidedPrepare") { rgba ->
                handle = nativePrepare(rgba, width, height, resolution.log2Downsample,
                    MgcFullResolutionDenoise.normalizedRgbWhiteBalance(gains))
                check(handle != 0L) { "MGC linear guide/BoxDownsample preparation failed" }
            }
            cameraTexture = createTexture()
            transfer.upload(cameraTexture, lowWidth, lowHeight)
            profileTexture = createTexture()
            val names = IntArray(1)
            GLES30.glGenFramebuffers(1, names, 0)
            profileFramebuffer = names[0]
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, profileFramebuffer)
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D, profileTexture, 0)
            check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        } catch (error: Throwable) { releaseInputs(); throw error }
    }

    /** Filmic reconstructs highlights in full-resolution engine RGB before tone mapping.
     * Preserve that color stage, while retaining the independent camera-domain guides. */
    fun downsampleReconstructedColor(texture: Int) {
        check(isPrepared)
        if (colorDownsampleProgram == 0) {
            colorDownsampleProgram = quad.createProgram(BOX_COLOR, "GuidedFilmicColor")
            check(colorDownsampleProgram != 0)
        }
        GLES30.glUseProgram(colorDownsampleProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, profileFramebuffer)
        GLES30.glViewport(0, 0, lowWidth, lowHeight)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(colorDownsampleProgram, "uInput"), 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(colorDownsampleProgram, "uScale"), scale)
        quad.bindIdentityTextureMatrix(colorDownsampleProgram)
        quad.draw(colorDownsampleProgram)
        check(GLES30.glGetError() == GLES30.GL_NO_ERROR)
    }

    fun render(source: Int, target: Int, width: Int, height: Int, attenuation: Float, curves: FloatArray) {
        check(isPrepared && width == fullWidth && height == fullHeight)
        try {
            transfer.read(source, lowWidth, lowHeight,
                maxOf(width.toLong() * height, lowWidth.toLong() * lowHeight), label = "guidedRender") { rgba ->
                val result = nativeRender(handle, rgba, attenuation, curves)
                check(result == 0) { "MGC GuidedUpsample failed: $result" }
            }
            transfer.upload(target, width, height)
        } finally { releaseInputs() }
    }

    private fun createTexture(): Int {
        val names = IntArray(1)
        GLES30.glGenTextures(1, names, 0)
        val texture = names[0]
        try {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, lowWidth, lowHeight)
            check(GLES30.glGetError() == GLES30.GL_NO_ERROR)
            return texture
        } catch (error: Throwable) { GLES30.glDeleteTextures(1, names, 0); throw error }
    }

    private fun releaseInputs() {
        if (handle != 0L) nativeRelease(handle)
        handle = 0L
        if (profileFramebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(profileFramebuffer), 0)
        if (cameraTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(cameraTexture), 0)
        if (profileTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(profileTexture), 0)
        profileFramebuffer = 0; cameraTexture = 0; profileTexture = 0
        fullWidth = 0; fullHeight = 0; lowWidth = 0; lowHeight = 0
        scale = 0
    }

    fun release() {
        releaseInputs()
        if (colorDownsampleProgram != 0) GLES30.glDeleteProgram(colorDownsampleProgram)
        colorDownsampleProgram = 0
    }

    private external fun nativePrepare(rgba: ByteBuffer, width: Int, height: Int,
                                      log2Downsample: Int, gains: FloatArray): Long
    private external fun nativeRender(handle: Long, rgba: ByteBuffer, attenuation: Float, curves: FloatArray): Int
    private external fun nativeRelease(handle: Long)

    companion object {
        init { System.loadLibrary("my-native-lib") }
        private val BOX_COLOR = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform highp sampler2D uInput;
            uniform int uScale;
            out vec4 fragColor;
            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy) * uScale;
                ivec2 hi = textureSize(uInput, 0) - 1;
                vec4 sum = vec4(0.0);
                for (int y = 0; y < uScale; ++y)
                    for (int x = 0; x < uScale; ++x)
                        sum += texelFetch(uInput, min(p + ivec2(x, y), hi), 0);
                fragColor = sum / float(uScale * uScale);
            }
        """.trimIndent()
    }
}
