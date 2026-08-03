package com.hinnka.mycamera.previewhook.api

import android.opengl.GLES30
import com.hinnka.mycamera.lut.BloomLdrSettings
import com.hinnka.mycamera.lut.Shaders
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer

/**
 * Spatial recipe passes used by the captured-JPEG renderer.
 *
 * The pass order and shader sources mirror [com.hinnka.mycamera.lut.LutImageProcessor]:
 * soft-light and red-halation blur the original JPEG input, the main color pass composites them,
 * and LDR bloom is applied to the completed color/LUT output.
 */
internal object MgcCapturedJpegSpatialEffects {
    private val vertices = floatArrayOf(
        -1f, -1f,
        1f, -1f,
        -1f, 1f,
        1f, 1f,
    )
    private val textureCoordinates = floatArrayOf(
        0f, 0f,
        1f, 0f,
        0f, 1f,
        1f, 1f,
    )
    private val drawOrder = shortArrayOf(0, 1, 2, 1, 3, 2)
    private val vertexBuffer = floatBufferOf(vertices)
    private val textureCoordinateBuffer = floatBufferOf(textureCoordinates)
    private val drawOrderBuffer = shortBufferOf(drawOrder)

    private var softLightBlurHProgram = 0
    private var verticalBlurProgram = 0
    private var redHalationBlurHProgram = 0
    private var bloomDownsampleFirstProgram = 0
    private var bloomDownsampleProgram = 0
    private var bloomUpsampleProgram = 0
    private var bloomCompositeProgram = 0
    private var passthroughProgram = 0

    private var softLightTargets = emptyArray<RenderTarget>()
    private var redHalationTargets = emptyArray<RenderTarget>()
    private var diffusionWidth = 0
    private var diffusionHeight = 0

    private var bloomTargets = emptyArray<RenderTarget>()
    private var bloomSourceWidth = 0
    private var bloomSourceHeight = 0
    private var bloomOutput: RenderTarget? = null

    fun initialize() {
        if (softLightBlurHProgram != 0) return
        val vertex = Shaders.SIMPLE_VERTEX_SHADER
        softLightBlurHProgram = buildProgram(vertex, Shaders.SOFT_LIGHT_PREVIEW_BLUR_H)
        verticalBlurProgram = buildProgram(vertex, Shaders.HDF_PREVIEW_BLUR_V)
        redHalationBlurHProgram = buildProgram(vertex, Shaders.HALATION_PREVIEW_EXTRACT_BLUR_H)
        bloomDownsampleFirstProgram = buildProgram(vertex, Shaders.BEVY_BLOOM_DOWNSAMPLE_FIRST)
        bloomDownsampleProgram = buildProgram(vertex, Shaders.BEVY_BLOOM_DOWNSAMPLE)
        bloomUpsampleProgram = buildProgram(vertex, Shaders.BEVY_BLOOM_UPSAMPLE)
        bloomCompositeProgram = buildProgram(vertex, Shaders.BEVY_BLOOM_COMPOSITE)
        passthroughProgram = buildProgram(vertex, Shaders.FRAGMENT_SHADER_COPY_2D)
    }

    fun prepareInputDiffusion(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        softLight: Float,
        redHalation: Float,
    ) {
        if (softLight <= EFFECT_EPSILON && redHalation <= EFFECT_EPSILON) return
        initialize()
        ensureDiffusionTargets(width, height)
        if (softLight > EFFECT_EPSILON) {
            renderSeparableBlur(
                sourceTextureId = sourceTextureId,
                horizontalProgram = softLightBlurHProgram,
                targets = softLightTargets,
                threshold = null,
                strength = null,
            )
        }
        if (redHalation > EFFECT_EPSILON) {
            renderSeparableBlur(
                sourceTextureId = sourceTextureId,
                horizontalProgram = redHalationBlurHProgram,
                targets = redHalationTargets,
                threshold = 0.72f - redHalation.coerceIn(0f, 1f) * 0.22f,
                strength = redHalation,
            )
        }
        requireNoGlError("captured JPEG diffusion passes")
    }

    fun bindDiffusionTextures(
        colorProgram: Int,
        softLight: Float,
        redHalation: Float,
    ) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE5)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_2D,
            if (redHalation > EFFECT_EPSILON) redHalationTargets[1].textureId else 0,
        )
        uniform1i(colorProgram, "uRedHalationTexture", 5)
        uniform1f(colorProgram, "uRedHalation", redHalation)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE6)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_2D,
            if (softLight > EFFECT_EPSILON) softLightTargets[1].textureId else 0,
        )
        uniform1i(colorProgram, "uSoftLightTexture", 6)
        uniform1f(colorProgram, "uSoftLight", softLight)
    }

    /**
     * Returns the framebuffer containing the bloom-composited image.
     */
    fun renderBloom(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        bloom: Float,
    ): Int {
        require(bloom > EFFECT_EPSILON)
        initialize()
        ensureBloomTargets(width, height)
        val targets = bloomTargets
        require(targets.isNotEmpty()) { "Bloom mip chain is empty" }

        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(bloomDownsampleFirstProgram)
        bindTarget(targets[0])
        bindTexture(bloomDownsampleFirstProgram, "uInputTexture", 0, sourceTextureId)
        uniform2f(
            bloomDownsampleFirstProgram,
            "uInputTexelSize",
            1f / width.coerceAtLeast(1),
            1f / height.coerceAtLeast(1),
        )
        val threshold = BloomLdrSettings.thresholdPrecomputations()
        uniform4f(
            bloomDownsampleFirstProgram,
            "uThreshold",
            threshold[0],
            threshold[1],
            threshold[2],
            threshold[3],
        )
        drawQuad(bloomDownsampleFirstProgram)

        for (index in 1 until targets.size) {
            val source = targets[index - 1]
            val target = targets[index]
            GLES30.glUseProgram(bloomDownsampleProgram)
            bindTarget(target)
            bindTexture(bloomDownsampleProgram, "uInputTexture", 0, source.textureId)
            uniform2f(
                bloomDownsampleProgram,
                "uInputTexelSize",
                1f / source.width,
                1f / source.height,
            )
            drawQuad(bloomDownsampleProgram)
        }

        GLES30.glEnable(GLES30.GL_BLEND)
        GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
        GLES30.glBlendFunc(GLES30.GL_CONSTANT_COLOR, GLES30.GL_ONE)
        GLES30.glUseProgram(bloomUpsampleProgram)
        for (index in targets.lastIndex downTo 1) {
            val source = targets[index]
            val target = targets[index - 1]
            val weight = BloomLdrSettings.mipAddWeight(index, targets.size, bloom)
            GLES30.glBlendColor(weight, weight, weight, weight)
            bindTarget(target)
            bindTexture(bloomUpsampleProgram, "uInputTexture", 0, source.textureId)
            uniform2f(
                bloomUpsampleProgram,
                "uInputTexelSize",
                1f / source.width,
                1f / source.height,
            )
            drawQuad(bloomUpsampleProgram)
        }
        GLES30.glDisable(GLES30.GL_BLEND)

        val output = bloomOutput ?: error("Bloom output target missing")
        copyTexture(sourceTextureId, output)

        val lowerIndex = BloomLdrSettings.compositeMipLowerIndex(targets.size, bloom)
        val upperIndex = BloomLdrSettings.compositeMipUpperIndex(targets.size, bloom)
        val lower = targets[lowerIndex]
        val upper = targets[upperIndex]
        GLES30.glEnable(GLES30.GL_BLEND)
        GLES30.glBlendEquation(GLES30.GL_FUNC_ADD)
        GLES30.glBlendFunc(GLES30.GL_ONE, GLES30.GL_ONE)
        GLES30.glUseProgram(bloomCompositeProgram)
        bindTarget(output, clear = false)
        bindTexture(bloomCompositeProgram, "uBloomTexture", 0, lower.textureId)
        bindTexture(bloomCompositeProgram, "uBloomTextureNext", 1, upper.textureId)
        uniform2f(
            bloomCompositeProgram,
            "uBloomTexelSize",
            1f / lower.width,
            1f / lower.height,
        )
        uniform2f(
            bloomCompositeProgram,
            "uBloomTexelSizeNext",
            1f / upper.width,
            1f / upper.height,
        )
        uniform1f(
            bloomCompositeProgram,
            "uBlend",
            BloomLdrSettings.compositeStrength(bloom),
        )
        uniform1f(
            bloomCompositeProgram,
            "uMipBlend",
            BloomLdrSettings.compositeMipBlend(targets.size, bloom),
        )
        drawQuad(bloomCompositeProgram)
        GLES30.glDisable(GLES30.GL_BLEND)
        requireNoGlError("captured JPEG bloom passes")
        return output.framebufferId
    }

    fun release() {
        releaseTargets(softLightTargets)
        releaseTargets(redHalationTargets)
        releaseTargets(bloomTargets)
        bloomOutput?.release()
        softLightTargets = emptyArray()
        redHalationTargets = emptyArray()
        bloomTargets = emptyArray()
        bloomOutput = null
        diffusionWidth = 0
        diffusionHeight = 0
        bloomSourceWidth = 0
        bloomSourceHeight = 0

        val programs = intArrayOf(
            softLightBlurHProgram,
            verticalBlurProgram,
            redHalationBlurHProgram,
            bloomDownsampleFirstProgram,
            bloomDownsampleProgram,
            bloomUpsampleProgram,
            bloomCompositeProgram,
            passthroughProgram,
        ).filter { it != 0 }.toIntArray()
        programs.forEach(GLES30::glDeleteProgram)
        softLightBlurHProgram = 0
        verticalBlurProgram = 0
        redHalationBlurHProgram = 0
        bloomDownsampleFirstProgram = 0
        bloomDownsampleProgram = 0
        bloomUpsampleProgram = 0
        bloomCompositeProgram = 0
        passthroughProgram = 0
    }

    private fun ensureDiffusionTargets(width: Int, height: Int) {
        val targetWidth = (width / DIFFUSION_DOWNSAMPLE).coerceAtLeast(1)
        val targetHeight = (height / DIFFUSION_DOWNSAMPLE).coerceAtLeast(1)
        if (diffusionWidth == targetWidth &&
            diffusionHeight == targetHeight &&
            softLightTargets.size == 2 &&
            redHalationTargets.size == 2
        ) {
            return
        }
        releaseTargets(softLightTargets)
        releaseTargets(redHalationTargets)
        softLightTargets = Array(2) { createHalfFloatTarget(targetWidth, targetHeight) }
        redHalationTargets = Array(2) { createHalfFloatTarget(targetWidth, targetHeight) }
        diffusionWidth = targetWidth
        diffusionHeight = targetHeight
    }

    private fun renderSeparableBlur(
        sourceTextureId: Int,
        horizontalProgram: Int,
        targets: Array<RenderTarget>,
        threshold: Float?,
        strength: Float?,
    ) {
        val width = targets[0].width
        val height = targets[0].height
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(horizontalProgram)
        bindTarget(targets[0])
        bindTexture(horizontalProgram, "uInputTexture", 0, sourceTextureId)
        uniform2f(horizontalProgram, "uTexelSize", 1f / width, 1f / height)
        threshold?.let { uniform1f(horizontalProgram, "uThreshold", it) }
        strength?.let { uniform1f(horizontalProgram, "uStrength", it) }
        drawQuad(horizontalProgram)

        GLES30.glUseProgram(verticalBlurProgram)
        bindTarget(targets[1])
        bindTexture(verticalBlurProgram, "uInputTexture", 0, targets[0].textureId)
        uniform2f(verticalBlurProgram, "uTexelSize", 1f / width, 1f / height)
        drawQuad(verticalBlurProgram)
    }

    private fun ensureBloomTargets(width: Int, height: Int) {
        if (bloomSourceWidth == width &&
            bloomSourceHeight == height &&
            bloomTargets.isNotEmpty() &&
            bloomOutput?.width == width &&
            bloomOutput?.height == height
        ) {
            return
        }
        releaseTargets(bloomTargets)
        bloomOutput?.release()

        val scale = BloomLdrSettings.MAX_MIP_DIMENSION.toFloat() /
            height.coerceAtLeast(1).toFloat()
        var mipWidth = (width * scale).toInt().coerceAtLeast(1)
        var mipHeight = (height * scale).toInt().coerceAtLeast(1)
        bloomTargets = Array(BloomLdrSettings.MIP_COUNT) {
            createHalfFloatTarget(mipWidth, mipHeight).also {
                mipWidth = (mipWidth / 2).coerceAtLeast(1)
                mipHeight = (mipHeight / 2).coerceAtLeast(1)
            }
        }
        bloomOutput = createRgba8Target(width, height)
        bloomSourceWidth = width
        bloomSourceHeight = height
    }

    private fun copyTexture(sourceTextureId: Int, target: RenderTarget) {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(passthroughProgram)
        bindTarget(target)
        bindTexture(passthroughProgram, "uCameraTexture", 0, sourceTextureId)
        drawQuad(passthroughProgram)
    }

    private fun bindTarget(target: RenderTarget, clear: Boolean = true) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebufferId)
        GLES30.glViewport(0, 0, target.width, target.height)
        if (clear) {
            GLES30.glClearColor(0f, 0f, 0f, 1f)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        }
    }

    private fun bindTexture(program: Int, name: String, unit: Int, textureId: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        uniform1i(program, name, unit)
    }

    private fun createHalfFloatTarget(width: Int, height: Int): RenderTarget =
        createTarget(width, height, GLES30.GL_RGBA16F, GLES30.GL_HALF_FLOAT)

    private fun createRgba8Target(width: Int, height: Int): RenderTarget =
        createTarget(width, height, GLES30.GL_RGBA8, GLES30.GL_UNSIGNED_BYTE)

    private fun createTarget(
        width: Int,
        height: Int,
        internalFormat: Int,
        type: Int,
    ): RenderTarget {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        val textureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
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

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        val framebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            textureId,
            0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
            GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            error("Spatial-effect framebuffer incomplete: 0x${Integer.toHexString(status)}")
        }
        return RenderTarget(textureId, framebufferId, width, height)
    }

    private fun releaseTargets(targets: Array<RenderTarget>) {
        targets.forEach(RenderTarget::release)
    }

    private fun drawQuad(program: Int) {
        val positionLocation = GLES30.glGetAttribLocation(program, "aPosition")
        val textureLocation = GLES30.glGetAttribLocation(program, "aTexCoord")
        require(positionLocation >= 0 && textureLocation >= 0) {
            "Spatial-effect quad attributes missing"
        }
        vertexBuffer.position(0)
        GLES30.glEnableVertexAttribArray(positionLocation)
        GLES30.glVertexAttribPointer(positionLocation, 2, GLES30.GL_FLOAT, false, 0, vertexBuffer)
        textureCoordinateBuffer.position(0)
        GLES30.glEnableVertexAttribArray(textureLocation)
        GLES30.glVertexAttribPointer(textureLocation, 2, GLES30.GL_FLOAT, false, 0, textureCoordinateBuffer)
        drawOrderBuffer.position(0)
        GLES30.glDrawElements(
            GLES30.GL_TRIANGLES,
            drawOrder.size,
            GLES30.GL_UNSIGNED_SHORT,
            drawOrderBuffer,
        )
        GLES30.glDisableVertexAttribArray(positionLocation)
        GLES30.glDisableVertexAttribArray(textureLocation)
    }

    private fun buildProgram(vertexSource: String, fragmentSource: String): Int {
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, vertexSource)
        val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource)
        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vertexShader)
        GLES30.glAttachShader(program, fragmentShader)
        GLES30.glLinkProgram(program)
        val linked = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (linked[0] == 0) {
            val message = GLES30.glGetProgramInfoLog(program)
            GLES30.glDeleteProgram(program)
            error("Spatial-effect program link failed: $message")
        }
        return program
    }

    private fun compileShader(type: Int, source: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source.removePrefix("\uFEFF").trimStart())
        GLES30.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val message = GLES30.glGetShaderInfoLog(shader)
            GLES30.glDeleteShader(shader)
            error("Spatial-effect shader compile failed: $message")
        }
        return shader
    }

    private fun uniform1i(program: Int, name: String, value: Int) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform1i(location, value)
    }

    private fun uniform1f(program: Int, name: String, value: Float) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform1f(location, value)
    }

    private fun uniform2f(program: Int, name: String, x: Float, y: Float) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform2f(location, x, y)
    }

    private fun uniform4f(
        program: Int,
        name: String,
        x: Float,
        y: Float,
        z: Float,
        w: Float,
    ) {
        val location = GLES30.glGetUniformLocation(program, name)
        if (location >= 0) GLES30.glUniform4f(location, x, y, z, w)
    }

    private fun requireNoGlError(operation: String) {
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            throw IllegalStateException(
                "GL error after $operation: 0x${Integer.toHexString(error)}",
            )
        }
    }

    private fun floatBufferOf(values: FloatArray): FloatBuffer =
        ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(values)
            .apply { position(0) }

    private fun shortBufferOf(values: ShortArray): ShortBuffer =
        ByteBuffer.allocateDirect(values.size * Short.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .put(values)
            .apply { position(0) }

    private data class RenderTarget(
        val textureId: Int,
        val framebufferId: Int,
        val width: Int,
        val height: Int,
    ) {
        fun release() {
            if (framebufferId != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
            }
            if (textureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            }
        }
    }

    private const val DIFFUSION_DOWNSAMPLE = 4
    private const val EFFECT_EPSILON = 0.001f
}
