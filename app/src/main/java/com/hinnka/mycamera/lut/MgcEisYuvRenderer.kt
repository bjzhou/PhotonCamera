package com.hinnka.mycamera.lut

import android.media.Image
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.stabilization.STABILIZATION_ROW_COUNT
import com.hinnka.mycamera.stabilization.StabilizationFrame
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer

/**
 * Materializes one timestamp-matched Camera2 image after applying MGC's rolling-strip mesh.
 *
 * Center crop, orientation, mirroring and color effects remain in the normal preview or encoder
 * presentation pass.
 */
internal class MgcEisYuvRenderer(private val tag: String) {
    data class Frame(val timestampNs: Long, val textureId: Int)

    private val mesh = MgcEisMesh()
    // Native output matrices pass through convertPixelHomographyToClip then
    // applyCropZoomToClipHomography(kOutputCropZoom), where:
    //   kLookaheadCropMargin = 0.05
    //   kOutputCropZoom      = 1.0 / (1.0 - 2.0 * 0.05) ≈ 1.1111
    // applyCropZoomToClipHomography divides the W row (h20, h21, h22) by zoom.
    // A Dropped frame must use the same crop so that the viewport does not jump
    // between 1.0x and 1.111x on every stabilization gap.
    private val droppedFrameHomographies = FloatArray(STABILIZATION_ROW_COUNT * 9).also { values ->
        val h22 = 1.0f - 2.0f * 0.05f  // = 1.0f / kOutputCropZoom = 0.9f
        repeat(STABILIZATION_ROW_COUNT) { row ->
            val offset = row * 9
            values[offset] = 1f      // h00
            values[offset + 4] = 1f  // h11
            values[offset + 8] = h22 // h22: W-row crop zoom
        }
    }

    private var programId = 0
    private var positionLocation = -1
    private var textureCoordinateLocation = -1
    private var ySamplerLocation = -1
    private var cbSamplerLocation = -1
    private var crSamplerLocation = -1
    private var imageSizeLocation = -1
    private var cbSizeLocation = -1
    private var crSizeLocation = -1
    private var cbStepLocation = -1
    private var crStepLocation = -1

    private var yTextureId = 0
    private var cbTextureId = 0
    private var crTextureId = 0
    private var outputTextureId = 0
    private var outputFramebufferId = 0
    private var width = 0
    private var height = 0
    private var cbWidth = 0
    private var crWidth = 0
    private var chromaHeight = 0

    /** Consumes ownership of [frame.image], including when rendering fails. */
    fun render(frame: StabilizationFrame): Frame? {
        val source = frame.image.image
        return try {
            if (source.planes.size < 3 || source.width <= 0 || source.height <= 0) return null
            val cbPlane = source.planes[1]
            val crPlane = source.planes[2]
            val logicalChromaWidth = (source.width + 1) / 2
            val logicalChromaHeight = (source.height + 1) / 2
            val requestedCbWidth = (logicalChromaWidth - 1) * cbPlane.pixelStride + 1
            val requestedCrWidth = (logicalChromaWidth - 1) * crPlane.pixelStride + 1
            if (!ensure(
                    source.width,
                    source.height,
                    requestedCbWidth,
                    requestedCrWidth,
                    logicalChromaHeight,
                )
            ) {
                return null
            }
            if (!uploadPlane(source.planes[0], yTextureId, source.width, source.height, "Y") ||
                !uploadPlane(cbPlane, cbTextureId, requestedCbWidth, logicalChromaHeight, "Cb") ||
                !uploadPlane(crPlane, crTextureId, requestedCrWidth, logicalChromaHeight, "Cr")
            ) {
                return null
            }

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
            GLES30.glViewport(0, 0, source.width, source.height)
            GLES30.glClearColor(0f, 0f, 0f, 1f)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(programId)
            bindTexture(0, yTextureId, ySamplerLocation)
            bindTexture(1, cbTextureId, cbSamplerLocation)
            bindTexture(2, crTextureId, crSamplerLocation)
            GLES30.glUniform2i(imageSizeLocation, source.width, source.height)
            GLES30.glUniform2i(cbSizeLocation, requestedCbWidth, logicalChromaHeight)
            GLES30.glUniform2i(crSizeLocation, requestedCrWidth, logicalChromaHeight)
            GLES30.glUniform1i(cbStepLocation, cbPlane.pixelStride)
            GLES30.glUniform1i(crStepLocation, crPlane.pixelStride)
            mesh.draw(
                positionLocation = positionLocation,
                textureCoordinateLocation = textureCoordinateLocation,
                rowHomographies = frame.transform?.rowHomographies ?: droppedFrameHomographies,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES31.glMemoryBarrier(
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
            )
            repeat(3) { unit ->
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            }
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            Frame(frame.timestampNs, outputTextureId)
        } catch (error: IllegalStateException) {
            // Camera2 may revoke an acquired Image when the underlying
            // ImageReader is torn down during a delayed-EIS session change.
            // The timestamped result is no longer renderable, but it must not
            // take the GL thread down with it.
            PLog.w(tag, "MGC dropped revoked YUV image ts=${frame.timestampNs}: ${error.message}")
            null
        } finally {
            // glTexSubImage2D has consumed the client memory when it returns; the Camera2 image
            // is no longer referenced by later GPU commands in the CPU fallback path.
            frame.image.close()
        }
    }

    fun resetAfterContextLoss() {
        programId = 0
        positionLocation = -1
        textureCoordinateLocation = -1
        ySamplerLocation = -1
        cbSamplerLocation = -1
        crSamplerLocation = -1
        imageSizeLocation = -1
        cbSizeLocation = -1
        crSizeLocation = -1
        cbStepLocation = -1
        crStepLocation = -1
        yTextureId = 0
        cbTextureId = 0
        crTextureId = 0
        outputTextureId = 0
        outputFramebufferId = 0
        width = 0
        height = 0
        cbWidth = 0
        crWidth = 0
        chromaHeight = 0
        mesh.resetAfterContextLoss()
    }

    fun release() {
        val textures = intArrayOf(
            yTextureId,
            cbTextureId,
            crTextureId,
            outputTextureId,
        )
            .filter { it != 0 }
            .toIntArray()
        if (textures.isNotEmpty()) GLES30.glDeleteTextures(textures.size, textures, 0)
        if (outputFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
        }
        if (programId != 0) GLES30.glDeleteProgram(programId)
        mesh.release()
        resetAfterContextLoss()
    }

    private fun ensure(
        requestedWidth: Int,
        requestedHeight: Int,
        requestedCbWidth: Int,
        requestedCrWidth: Int,
        requestedChromaHeight: Int,
    ): Boolean {
        if (programId != 0 && width == requestedWidth && height == requestedHeight &&
            cbWidth == requestedCbWidth && crWidth == requestedCrWidth &&
            chromaHeight == requestedChromaHeight
        ) {
            return true
        }
        release()
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, FRAGMENT_SHADER)
        programId = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (programId == 0) return false
        positionLocation = GLES30.glGetAttribLocation(programId, "aPosition")
        textureCoordinateLocation = GLES30.glGetAttribLocation(programId, "aTexCoord")
        ySamplerLocation = GLES30.glGetUniformLocation(programId, "uY")
        cbSamplerLocation = GLES30.glGetUniformLocation(programId, "uCb")
        crSamplerLocation = GLES30.glGetUniformLocation(programId, "uCr")
        imageSizeLocation = GLES30.glGetUniformLocation(programId, "uImageSize")
        cbSizeLocation = GLES30.glGetUniformLocation(programId, "uCbSize")
        crSizeLocation = GLES30.glGetUniformLocation(programId, "uCrSize")
        cbStepLocation = GLES30.glGetUniformLocation(programId, "uCbStep")
        crStepLocation = GLES30.glGetUniformLocation(programId, "uCrStep")
        mesh.initialize()

        yTextureId = createTexture(requestedWidth, requestedHeight, GLES30.GL_R8)
        cbTextureId = createTexture(requestedCbWidth, requestedChromaHeight, GLES30.GL_R8)
        crTextureId = createTexture(requestedCrWidth, requestedChromaHeight, GLES30.GL_R8)
        if (!createOutputTarget(requestedWidth, requestedHeight)) return false
        width = requestedWidth
        height = requestedHeight
        cbWidth = requestedCbWidth
        crWidth = requestedCrWidth
        chromaHeight = requestedChromaHeight
        return true
    }

    private fun createOutputTarget(requestedWidth: Int, requestedHeight: Int): Boolean {
        outputTextureId = createTexture(requestedWidth, requestedHeight, GLES30.GL_RGBA8)
        val framebuffer = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffer, 0)
        outputFramebufferId = framebuffer[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            outputTextureId,
            0,
        )
        val complete = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
            GLES30.GL_FRAMEBUFFER_COMPLETE
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        if (!complete) {
            PLog.e(tag, "Cannot allocate MGC canonical output ${requestedWidth}x$requestedHeight")
            release()
            return false
        }
        return true
    }


    private fun createTexture(textureWidth: Int, textureHeight: Int, internalFormat: Int): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, ids[0])
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        val format = if (internalFormat == GLES30.GL_RGBA8) GLES30.GL_RGBA else GLES30.GL_RED
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            internalFormat,
            textureWidth,
            textureHeight,
            0,
            format,
            GLES30.GL_UNSIGNED_BYTE,
            null,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return ids[0]
    }

    private fun uploadPlane(
        plane: Image.Plane,
        textureId: Int,
        uploadWidth: Int,
        uploadHeight: Int,
        label: String,
    ): Boolean {
        if (plane.pixelStride <= 0 || plane.rowStride < uploadWidth || uploadWidth <= 0 ||
            uploadHeight <= 0
        ) {
            PLog.w(tag, "MGC $label invalid plane row=${plane.rowStride} pixel=${plane.pixelStride}")
            return false
        }
        val buffer = plane.buffer.duplicate().apply { position(0) }
        val required = (uploadHeight - 1).toLong() * plane.rowStride + uploadWidth
        if (required > buffer.limit().toLong()) {
            PLog.w(tag, "MGC $label buffer too small: required=$required available=${buffer.limit()}")
            return false
        }
        uploadTexture(textureId, uploadWidth, uploadHeight, plane.rowStride, buffer)
        return true
    }

    private fun uploadTexture(
        textureId: Int,
        uploadWidth: Int,
        uploadHeight: Int,
        rowLength: Int,
        buffer: ByteBuffer,
    ) {
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, rowLength)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            uploadWidth,
            uploadHeight,
            GLES30.GL_RED,
            GLES30.GL_UNSIGNED_BYTE,
            buffer,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun bindTexture(unit: Int, textureId: Int, samplerLocation: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glUniform1i(samplerLocation, unit)
    }

    private companion object {
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

        val FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uY;
            uniform sampler2D uCb;
            uniform sampler2D uCr;
            uniform ivec2 uImageSize;
            uniform ivec2 uCbSize;
            uniform ivec2 uCrSize;
            uniform int uCbStep;
            uniform int uCrStep;
            in vec2 vTexCoord;
            out vec4 fragColor;

            void main() {
                ivec2 p = clamp(
                    ivec2(vTexCoord * vec2(uImageSize)),
                    ivec2(0),
                    uImageSize - ivec2(1)
                );
                ivec2 cbP = clamp(
                    ivec2((p.x / 2) * uCbStep, p.y / 2),
                    ivec2(0),
                    uCbSize - ivec2(1)
                );
                ivec2 crP = clamp(
                    ivec2((p.x / 2) * uCrStep, p.y / 2),
                    ivec2(0),
                    uCrSize - ivec2(1)
                );
                float y = texelFetch(uY, p, 0).r;
                float cb = texelFetch(uCb, cbP, 0).r - 0.5;
                float cr = texelFetch(uCr, crP, 0).r - 0.5;
                vec3 rgb = vec3(
                    y + 1.402 * cr,
                    y - 0.344136 * cb - 0.714136 * cr,
                    y + 1.772 * cb
                );
                fragColor = vec4(clamp(rgb, 0.0, 1.0), 1.0);
            }
        """.trimIndent()

    }
}
