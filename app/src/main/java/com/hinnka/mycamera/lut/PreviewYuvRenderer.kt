package com.hinnka.mycamera.lut

import android.hardware.DataSpace
import android.media.Image
import android.opengl.EGL14
import android.opengl.EGL15
import android.opengl.GLES11Ext
import android.opengl.GLES30
import android.opengl.GLES31
import android.opengl.Matrix
import android.os.Build
import com.hinnka.mycamera.processor.GlesHardwareBufferImage
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Converts one YUV_420_888 preview image into an RGBA8 texture with the image's own YCbCr matrix
 * and range, in the MGC output layout (buffer row 0 at the top framebuffer row).
 *
 * HardwareBuffer EGLImage raw YCbCr sampling and CPU plane upload use the same explicit matrix
 * and range. Without GL_EXT_YUV_target, use planes rather than a driver-specific RGB conversion.
 * Shared by ordinary preview and EIS; stabilization operates only on this converter's RGB output.
 * Readers retain their default usage: GPU_SAMPLED_IMAGE caused swapped Cb/Cr on Xiaomi 11.
 */
internal class PreviewYuvRenderer(private val tag: String) {
    private enum class Path { RAW_YUV, PLANES }

    private var y2yProgram: Program? = null
    private var planeProgram: Program? = null
    private var yuvTargetSupported: Boolean? = null
    private var importDisabled = false
    private var activePath: Path? = null

    private var externalTextureId = 0
    private val planeTextureIds = IntArray(3)
    private val planeWidths = IntArray(3)
    private var planeHeight = 0
    private var outputTextureId = 0
    private var outputFramebufferId = 0
    private var outputWidth = 0
    private var outputHeight = 0
    private var quadBufferId = 0

    private val conversion = FloatArray(9)
    private val offset = FloatArray(3)

    /** Borrows [image] through GPU sampling completion; the caller retains ownership. */
    fun render(image: Image): Int {
        try {
            if (image.width <= 0 || image.height <= 0) return 0
            if (!ensureTarget(image.width, image.height)) return 0
            resolveConversion(if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) image.dataSpace else 0)
            val drawn = (!importDisabled && drawImported(image)) || drawPlanes(image)
            return if (drawn) outputTextureId else 0
        } catch (error: IllegalStateException) {
            // The reader may be torn down while a frame is still queued for the GL thread.
            PLog.w(tag, "Preview YUV frame revoked: ${error.message}")
            return 0
        }
    }

    private fun drawImported(image: Image): Boolean {
        val rawYuv = yuvTargetSupported ?: queryYuvTarget().also { yuvTargetSupported = it }
        if (!rawYuv) return disableImport("GL_EXT_YUV_target unavailable")
        val buffer = image.hardwareBuffer ?: return disableImport("Image has no HardwareBuffer")
        val handle = buffer.use { GlesHardwareBufferImage.create(it) }
        if (handle == 0L) return disableImport("EGLImage import failed")
        try {
            if (externalTextureId == 0) externalTextureId = GlUtils.createOESTexture()
            if (!GlesHardwareBufferImage.bind(handle, externalTextureId)) {
                return disableImport("EGLImage bind failed")
            }
            val program = y2yProgram ?: buildProgram(Y2Y_FRAGMENT_SHADER)?.also { y2yProgram = it }
                ?: return disableImport("External program unavailable")
            beginDraw(program)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, externalTextureId)
            GLES30.glUniform1i(program.samplers[0], 0)
            drawQuad(program)
            // The camera recycles the buffer once the Image is closed; sampling must complete first.
            awaitGpu()
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, 0)
            endDraw()
            reportPath(Path.RAW_YUV)
            return true
        } finally {
            GlesHardwareBufferImage.destroy(handle)
        }
    }

    private fun drawPlanes(image: Image): Boolean {
        if (image.planes.size < 3) return false
        val chromaWidth = (image.width + 1) / 2
        val chromaHeight = (image.height + 1) / 2
        val widths = intArrayOf(
            image.width,
            (chromaWidth - 1) * image.planes[1].pixelStride + 1,
            (chromaWidth - 1) * image.planes[2].pixelStride + 1,
        )
        if (!ensurePlaneTextures(widths, image.height, chromaHeight)) return false
        for (index in 0..2) {
            val planeHeightValue = if (index == 0) image.height else chromaHeight
            if (!uploadPlane(image.planes[index], planeTextureIds[index], widths[index], planeHeightValue)) {
                return false
            }
        }
        val program = planeProgram ?: buildProgram(PLANE_FRAGMENT_SHADER)?.also { planeProgram = it }
            ?: return false
        beginDraw(program)
        for (index in 0..2) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + index)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, planeTextureIds[index])
            GLES30.glUniform1i(program.samplers[index], index)
        }
        GLES30.glUniform2i(program.imageSizeLocation, image.width, image.height)
        GLES30.glUniform2i(program.chromaStepLocation, image.planes[1].pixelStride, image.planes[2].pixelStride)
        drawQuad(program)
        for (index in 2 downTo 0) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + index)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        endDraw()
        reportPath(Path.PLANES)
        return true
    }

    private fun beginDraw(program: Program) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glViewport(0, 0, outputWidth, outputHeight)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(program.id)
        GLES30.glUniformMatrix3fv(program.conversionLocation, 1, false, conversion, 0)
        GLES30.glUniform3fv(program.offsetLocation, 1, offset, 0)
    }

    private fun endDraw() {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
    }

    private fun drawQuad(program: Program) {
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, quadBufferId)
        GLES30.glEnableVertexAttribArray(program.positionLocation)
        GLES30.glVertexAttribPointer(program.positionLocation, 2, GLES30.GL_FLOAT, false, 16, 0)
        GLES30.glEnableVertexAttribArray(program.texCoordLocation)
        GLES30.glVertexAttribPointer(program.texCoordLocation, 2, GLES30.GL_FLOAT, false, 16, 8)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLE_STRIP, 0, 4)
        GLES30.glDisableVertexAttribArray(program.positionLocation)
        GLES30.glDisableVertexAttribArray(program.texCoordLocation)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
    }

    /**
     * Fills [conversion] and [offset] so that rgb = conversion * (yuv - offset) for normalized
     * 8-bit samples. Camera2 YUV_420_888 is JFIF (BT.601 full range) when the dataspace is absent.
     */
    private fun resolveConversion(dataSpace: Int) {
        var kr = 0.299f
        var kb = 0.114f
        var limited = false
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU && dataSpace != 0) {
            when (DataSpace.getStandard(dataSpace)) {
                DataSpace.STANDARD_BT709 -> { kr = 0.2126f; kb = 0.0722f }
                DataSpace.STANDARD_BT2020,
                DataSpace.STANDARD_BT2020_CONSTANT_LUMINANCE -> { kr = 0.2627f; kb = 0.0593f }
            }
            limited = DataSpace.getRange(dataSpace) == DataSpace.RANGE_LIMITED
        }
        val kg = 1f - kr - kb
        val yScale = if (limited) 255f / 219f else 1f
        val cScale = if (limited) 255f / 224f else 1f
        val crToR = 2f * (1f - kr) * cScale
        val cbToB = 2f * (1f - kb) * cScale
        val cbToG = -kb * 2f * (1f - kb) / kg * cScale
        val crToG = -kr * 2f * (1f - kr) / kg * cScale
        // Column-major: columns are the Y, Cb and Cr contributions.
        conversion[0] = yScale; conversion[1] = yScale; conversion[2] = yScale
        conversion[3] = 0f; conversion[4] = cbToG; conversion[5] = cbToB
        conversion[6] = crToR; conversion[7] = crToG; conversion[8] = 0f
        offset[0] = if (limited) 16f / 255f else 0f
        offset[1] = 128f / 255f
        offset[2] = 128f / 255f
    }

    private fun ensureTarget(width: Int, height: Int): Boolean {
        if (outputTextureId != 0 && outputWidth == width && outputHeight == height) return true
        releaseTarget()
        if (quadBufferId == 0) {
            val quad = ByteBuffer.allocateDirect(QUAD.size * 4).order(ByteOrder.nativeOrder())
                .asFloatBuffer().put(QUAD).also { it.position(0) }
            val ids = IntArray(1)
            GLES30.glGenBuffers(1, ids, 0)
            quadBufferId = ids[0]
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, quadBufferId)
            GLES30.glBufferData(GLES30.GL_ARRAY_BUFFER, QUAD.size * 4, quad, GLES30.GL_STATIC_DRAW)
            GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        }
        outputTextureId = createTexture(width, height, GLES30.GL_RGBA8, GLES30.GL_RGBA)
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        outputFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            outputTextureId,
            0,
        )
        val complete = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        if (!complete) {
            PLog.e(tag, "Cannot allocate preview YUV output ${width}x$height")
            releaseTarget()
            return false
        }
        outputWidth = width
        outputHeight = height
        return true
    }

    private fun ensurePlaneTextures(widths: IntArray, height: Int, chromaHeight: Int): Boolean {
        if (planeTextureIds[0] != 0 && widths.contentEquals(planeWidths) && planeHeight == height) return true
        releasePlaneTextures()
        for (index in 0..2) {
            val textureHeight = if (index == 0) height else chromaHeight
            planeTextureIds[index] = createTexture(widths[index], textureHeight, GLES30.GL_R8, GLES30.GL_RED)
            planeWidths[index] = widths[index]
        }
        planeHeight = height
        return planeTextureIds.all { it != 0 }
    }

    private fun uploadPlane(plane: Image.Plane, textureId: Int, width: Int, height: Int): Boolean {
        val buffer = plane.buffer.duplicate().apply { position(0) }
        val required = (height - 1).toLong() * plane.rowStride + width
        if (plane.rowStride < width || required > buffer.limit()) {
            PLog.w(tag, "Invalid preview YUV plane row=${plane.rowStride} pixel=${plane.pixelStride}")
            return false
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, plane.rowStride)
        GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, width, height, GLES30.GL_RED, GLES30.GL_UNSIGNED_BYTE, buffer)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return true
    }

    private fun createTexture(width: Int, height: Int, internalFormat: Int, format: Int): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, ids[0])
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, internalFormat, width, height, 0, format, GLES30.GL_UNSIGNED_BYTE, null)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return ids[0]
    }

    /** EGL fence before the Image returns to Camera2; glFinish only when no fence can be created. */
    private fun awaitGpu() {
        val display = EGL14.eglGetCurrentDisplay()
        val fence = if (display == EGL14.EGL_NO_DISPLAY) {
            EGL15.EGL_NO_SYNC
        } else {
            EGL15.eglCreateSync(display, EGL15.EGL_SYNC_FENCE, longArrayOf(EGL14.EGL_NONE.toLong()), 0)
        }
        if (fence == EGL15.EGL_NO_SYNC) {
            GLES30.glFinish()
            return
        }
        try {
            val result = EGL15.eglClientWaitSync(display, fence, EGL15.EGL_SYNC_FLUSH_COMMANDS_BIT, EGL15.EGL_FOREVER)
            if (result != EGL15.EGL_CONDITION_SATISFIED) GLES30.glFinish()
        } finally {
            EGL15.eglDestroySync(display, fence)
        }
    }

    private fun queryYuvTarget(): Boolean {
        val count = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_NUM_EXTENSIONS, count, 0)
        return (0 until count[0]).any { GLES30.glGetStringi(GLES30.GL_EXTENSIONS, it) == "GL_EXT_YUV_target" }
    }

    private fun disableImport(reason: String): Boolean {
        importDisabled = true
        PLog.w(tag, "Preview YUV HardwareBuffer import unavailable ($reason); using plane upload")
        return false
    }

    private fun reportPath(path: Path) {
        if (activePath == path) return
        activePath = path
        PLog.i(tag, "Preview YUV conversion path: $path ${outputWidth}x$outputHeight")
    }

    private fun buildProgram(fragmentSource: String): Program? {
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource)
        if (vertexShader == 0 || fragmentShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            return null
        }
        val id = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (id == 0) return null
        return Program(
            id = id,
            positionLocation = GLES30.glGetAttribLocation(id, "aPosition"),
            texCoordLocation = GLES30.glGetAttribLocation(id, "aTexCoord"),
            samplers = intArrayOf(
                GLES30.glGetUniformLocation(id, "uInput"),
                GLES30.glGetUniformLocation(id, "uCb"),
                GLES30.glGetUniformLocation(id, "uCr"),
            ),
            conversionLocation = GLES30.glGetUniformLocation(id, "uYuvToRgb"),
            offsetLocation = GLES30.glGetUniformLocation(id, "uYuvOffset"),
            imageSizeLocation = GLES30.glGetUniformLocation(id, "uImageSize"),
            chromaStepLocation = GLES30.glGetUniformLocation(id, "uChromaStep"),
        )
    }

    private fun releaseTarget() {
        if (outputTextureId != 0) GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        if (outputFramebufferId != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
        outputTextureId = 0
        outputFramebufferId = 0
        outputWidth = 0
        outputHeight = 0
    }

    private fun releasePlaneTextures() {
        val ids = planeTextureIds.filter { it != 0 }.toIntArray()
        if (ids.isNotEmpty()) GLES30.glDeleteTextures(ids.size, ids, 0)
        planeTextureIds.fill(0)
        planeWidths.fill(0)
        planeHeight = 0
    }

    /** Must run on the GL thread with the owning context current. */
    fun release() {
        releaseTarget()
        releasePlaneTextures()
        if (externalTextureId != 0) GlUtils.deleteTexture(externalTextureId)
        if (quadBufferId != 0) GLES30.glDeleteBuffers(1, intArrayOf(quadBufferId), 0)
        listOfNotNull(y2yProgram, planeProgram).forEach { GLES30.glDeleteProgram(it.id) }
        resetAfterContextLoss()
    }

    /** Forgets GL names without deleting them; the context that owned them is gone. */
    fun resetAfterContextLoss() {
        y2yProgram = null
        importDisabled = false
        planeProgram = null
        yuvTargetSupported = null
        activePath = null
        externalTextureId = 0
        planeTextureIds.fill(0)
        planeWidths.fill(0)
        planeHeight = 0
        outputTextureId = 0
        outputFramebufferId = 0
        outputWidth = 0
        outputHeight = 0
        quadBufferId = 0
    }

    private class Program(
        val id: Int,
        val positionLocation: Int,
        val texCoordLocation: Int,
        val samplers: IntArray,
        val conversionLocation: Int,
        val offsetLocation: Int,
        val imageSizeLocation: Int,
        val chromaStepLocation: Int,
    )

    private companion object {
        // Triangle strip: clip position, then source texture coordinate. Buffer row 0 lands on
        // the top framebuffer row, matching the MGC output that the presentation matrix targets.
        val QUAD = floatArrayOf(
            -1f, -1f, 0f, 1f,
            1f, -1f, 1f, 1f,
            -1f, 1f, 0f, 0f,
            1f, 1f, 1f, 0f,
        )

        val VERTEX_SHADER = """
            #version 300 es
            in vec4 aPosition;
            in vec2 aTexCoord;
            out vec2 vTexCoord;
            void main() {
                gl_Position = aPosition;
                vTexCoord = aTexCoord;
            }
        """.trimIndent()

        val Y2Y_FRAGMENT_SHADER = """
            #version 300 es
            #extension GL_EXT_YUV_target : require
            precision highp float;
            uniform highp __samplerExternal2DY2YEXT uInput;
            uniform mat3 uYuvToRgb;
            uniform vec3 uYuvOffset;
            in vec2 vTexCoord;
            out vec4 fragColor;
            void main() {
                vec3 yuv = texture(uInput, vTexCoord).rgb;
                fragColor = vec4(clamp(uYuvToRgb * (yuv - uYuvOffset), 0.0, 1.0), 1.0);
            }
        """.trimIndent()

        val PLANE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform highp sampler2D uInput;
            uniform highp sampler2D uCb;
            uniform highp sampler2D uCr;
            uniform ivec2 uImageSize;
            uniform ivec2 uChromaStep;
            uniform mat3 uYuvToRgb;
            uniform vec3 uYuvOffset;
            in vec2 vTexCoord;
            out vec4 fragColor;
            void main() {
                ivec2 p = clamp(ivec2(vTexCoord * vec2(uImageSize)), ivec2(0), uImageSize - 1);
                ivec2 c = p / 2;
                vec3 yuv = vec3(
                    texelFetch(uInput, p, 0).r,
                    texelFetch(uCb, ivec2(c.x * uChromaStep.x, c.y), 0).r,
                    texelFetch(uCr, ivec2(c.x * uChromaStep.y, c.y), 0).r
                );
                fragColor = vec4(clamp(uYuvToRgb * (yuv - uYuvOffset), 0.0, 1.0), 1.0);
            }
        """.trimIndent()
    }
}

/**
 * Maps natural-orientation output coordinates to the camera-layout YUV texture: the sensor
 * rotation of [resolveMgcEisPresentationMatrix], plus the horizontal mirror Camera2 applies to
 * front-camera preview streams.
 */
internal fun resolvePreviewYuvPresentationMatrix(
    sensorOrientationDegrees: Int,
    frontFacing: Boolean,
): FloatArray? {
    val rotation = resolveMgcEisPresentationMatrix(sensorOrientationDegrees) ?: return null
    if (!frontFacing) return rotation
    val mirror = FloatArray(16).also {
        Matrix.setIdentityM(it, 0)
        it[0] = -1f
        it[12] = 1f
    }
    return FloatArray(16).also { Matrix.multiplyMM(it, 0, rotation, 0, mirror, 0) }
}
