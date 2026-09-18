package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesGpuCompletion
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Float transport shared by the linear guide and encoded sharpening boundaries. */
internal class RawFloatTextureTransfer {
    private var buffer = 0
    private var capacity = 0
    private var framebuffer = 0
    private var program = 0
    private var initialized = false
    private var maxSsboBytes = 0L

    fun read(texture: Int, width: Int, height: Int, capacityPixels: Long = width.toLong() * height,
             consume: (ByteBuffer) -> Unit) {
        val inputBytes = width.toLong() * height * 16
        val bytes = capacityPixels * 16
        require(width > 0 && height > 0 && bytes >= inputBytes && bytes <= Int.MAX_VALUE)
        initialize()
        if (buffer == 0) {
            val names = IntArray(1)
            GLES30.glGenBuffers(1, names, 0)
            buffer = names[0]
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, buffer)
        if (capacity < bytes) {
            GLES30.glBufferData(GLES30.GL_PIXEL_PACK_BUFFER, bytes.toInt(), null, GLES30.GL_STREAM_COPY)
            checkGl("allocate float transfer")
            capacity = bytes.toInt()
        }
        GlesGpuCompletion.awaitSubmittedWork("MGC float input", checkGlError = ::checkGl)
        try {
            if (program != 0 && bytes <= maxSsboBytes) {
                GLES31.glUseProgram(program)
                GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
                GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
                GLES31.glUniform1i(GLES31.glGetUniformLocation(program, "uInput"), 0)
                GLES31.glUniform2i(GLES31.glGetUniformLocation(program, "uSize"), width, height)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, buffer)
                GLES31.glDispatchCompute((width + 7) / 8, (height + 7) / 8, 1)
                GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            } else {
                if (framebuffer == 0) {
                    val names = IntArray(1)
                    GLES30.glGenFramebuffers(1, names, 0)
                    framebuffer = names[0]
                }
                GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, framebuffer)
                GLES30.glFramebufferTexture2D(GLES30.GL_READ_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
                    GLES30.GL_TEXTURE_2D, texture, 0)
                check(GLES30.glCheckFramebufferStatus(GLES30.GL_READ_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE)
                GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
                GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
                GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, 0)
                GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_FLOAT, 0)
            }
            checkGl("read float texture")
            val mapped = checkNotNull(GLES30.glMapBufferRange(GLES30.GL_PIXEL_PACK_BUFFER,
                0, bytes.toInt(), GLES30.GL_MAP_READ_BIT or GLES30.GL_MAP_WRITE_BIT) as? ByteBuffer)
            try {
                consume(mapped.order(ByteOrder.nativeOrder()))
            } finally {
                check(GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)) { "Invalid float transfer mapping" }
            }
        } finally {
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            if (framebuffer != 0) {
                GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, framebuffer)
                GLES30.glFramebufferTexture2D(GLES30.GL_READ_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
                    GLES30.GL_TEXTURE_2D, 0, 0)
            }
            GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, 0)
        }
    }

    fun upload(texture: Int, width: Int, height: Int) {
        check(nativeUpload(buffer, texture, width, height)) { "Float PBO upload failed" }
    }

    fun releaseBuffers() {
        if (buffer != 0) GLES30.glDeleteBuffers(1, intArrayOf(buffer), 0)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        buffer = 0; framebuffer = 0; capacity = 0
    }

    fun release() {
        releaseBuffers()
        if (program != 0) GLES30.glDeleteProgram(program)
        program = 0; initialized = false; maxSsboBytes = 0L
    }

    private fun initialize() {
        if (initialized) return
        initialized = true
        val major = IntArray(1); val minor = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAJOR_VERSION, major, 0)
        GLES30.glGetIntegerv(GLES30.GL_MINOR_VERSION, minor, 0)
        if (major[0] > 3 || major[0] == 3 && minor[0] >= 1) {
            val limit = LongArray(1)
            GLES31.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, limit, 0)
            maxSsboBytes = limit[0]
            program = RawGlesProgram.compileCompute(PACK, "MgcFloatTransfer")
        }
    }

    private external fun nativeUpload(pbo: Int, texture: Int, width: Int, height: Int): Boolean

    companion object {
        init { System.loadLibrary("my-native-lib") }
        private fun checkGl(label: String) {
            val error = GLES30.glGetError()
            check(error == GLES30.GL_NO_ERROR) { "$label: GL error 0x${error.toString(16)}" }
        }
        internal val PACK = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 8, local_size_y = 8) in;
            uniform highp sampler2D uInput;
            uniform ivec2 uSize;
            layout(std430, binding = 0) writeonly buffer Pixels { vec4 pixels[]; };
            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (any(greaterThanEqual(p, uSize))) return;
                pixels[p.y * uSize.x + p.x] = texelFetch(uInput, p, 0);
            }
        """.trimIndent()
    }
}
