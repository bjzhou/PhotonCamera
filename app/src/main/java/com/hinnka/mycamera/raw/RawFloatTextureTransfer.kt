package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesGpuCompletion
import com.hinnka.mycamera.processor.GlesPixelBufferTransfer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Floating-point transport preserving the native ABI at each CPU/AOT boundary. */
internal class RawFloatTextureTransfer(private val layout: Layout = Layout.FLOAT) {
    enum class Layout(val bytesPerPixel: Int, val pixelType: Int) {
        FLOAT(16, GLES30.GL_FLOAT),
        HALF(8, GLES30.GL_HALF_FLOAT),
    }

    data class ReadTiming(val submitMs: Double, val mapMs: Double)

    private var buffer = 0
    private var capacity = 0
    private var framebuffer = 0
    private var program = 0
    private var uploadProgram = 0
    private var initialized = false
    private var maxSsboBytes = 0L
    private var ssboOffsetAlignment = 1

    /** Allocate before producing the input so allocation/compilation cannot drain that work. */
    fun prepare(width: Int, height: Int, capacityPixels: Long = width.toLong() * height) {
        val bytes = byteCount(width, height, capacityPixels)
        initialize()
        if (buffer == 0) {
            val names = IntArray(1)
            GLES30.glGenBuffers(1, names, 0)
            buffer = names[0]
            check(buffer != 0) { "Unable to allocate float transfer buffer" }
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, buffer)
        try {
            if (capacity < bytes) {
                GLES30.glBufferData(GLES30.GL_PIXEL_PACK_BUFFER, bytes, null, GLES30.GL_STREAM_COPY)
                checkGl("allocate float transfer")
                capacity = bytes
            }
        } finally {
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
        }
    }

    fun read(texture: Int, width: Int, height: Int, capacityPixels: Long = width.toLong() * height,
             label: String,
             writable: Boolean = true,
             beforeMap: (() -> Unit)? = null,
             consume: (ByteBuffer) -> Unit): ReadTiming {
        val start = System.nanoTime()
        val inputBytes = width.toLong() * height * layout.bytesPerPixel
        val bytes = byteCount(width, height, capacityPixels)
        prepare(width, height, capacityPixels)
        val allocationMs = elapsedMs(start)
        val stripeRows = if (program != 0) {
            RawFloatTransferLayout.stripeRows(width, height, maxSsboBytes, ssboOffsetAlignment,
                layout.bytesPerPixel)
        } else 0
        // Compute packing stays in the producer's queue; map is the only required CPU wait.
        // Retain the separate upstream timing only for the synchronous framebuffer fallback.
        val upstreamWaitMs = if (stripeRows == 0) {
            GlesGpuCompletion.awaitSubmittedWork("MGC float $label", checkGlError = ::checkGl)
        } else 0L
        val transferStart = System.nanoTime()
        try {
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, buffer)
            if (stripeRows > 0) {
                GLES31.glUseProgram(program)
                GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
                GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
                GLES31.glUniform1i(GLES31.glGetUniformLocation(program, "uInput"), 0)
                // Bind only the input region, independent of the larger native output capacity.
                // Disjoint ranges can be submitted together; map once at the CPU boundary.
                dispatchStripes(program, width, height, stripeRows)
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
                GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, layout.pixelType, 0)
            }
            checkGl("read float texture")
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            if (beforeMap != null) {
                // Submit before CPU-only parameter preparation to allow useful overlap.
                GLES30.glFlush()
            }
            val submitMs = elapsedMs(transferStart)
            beforeMap?.invoke()
            val mapStart = System.nanoTime()
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, buffer)
            val access = GLES30.GL_MAP_READ_BIT or (if (writable) GLES30.GL_MAP_WRITE_BIT else 0)
            val mapped = checkNotNull(GLES30.glMapBufferRange(GLES30.GL_PIXEL_PACK_BUFFER,
                0, bytes, access) as? ByteBuffer)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            val mapMs = elapsedMs(mapStart)
            val nativeStart = System.nanoTime()
            var nativeMs = 0.0
            var unmapMs = 0.0
            try {
                consume(mapped.order(ByteOrder.nativeOrder()))
            } finally {
                nativeMs = elapsedMs(nativeStart)
                val unmapStart = System.nanoTime()
                GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, buffer)
                check(GLES30.glUnmapBuffer(GLES30.GL_PIXEL_PACK_BUFFER)) { "Invalid float transfer mapping" }
                unmapMs = elapsedMs(unmapStart)
            }
            PLog.i(TAG, "$label layout=$layout size=${width}x$height inputBytes=$inputBytes capacityBytes=$bytes " +
                "transfer=${if (stripeRows > 0) "SSBO" else "PBO"} stripeRows=$stripeRows " +
                "maxSsboBytes=$maxSsboBytes allocationMs=$allocationMs upstreamGpuWaitMs=$upstreamWaitMs " +
                "transferSubmitMs=$submitMs mapMs=$mapMs nativeMs=$nativeMs unmapMs=$unmapMs " +
                "totalCpuMs=${elapsedMs(start)}")
            return ReadTiming(submitMs, mapMs)
        } finally {
            if (stripeRows > 0) {
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            }
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            if (framebuffer != 0) {
                GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, framebuffer)
                GLES30.glFramebufferTexture2D(GLES30.GL_READ_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0,
                    GLES30.GL_TEXTURE_2D, 0, 0)
            }
            GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, 0)
        }
    }

    /** The destination uses immutable RGBA16F storage for write-only image access. */
    fun upload(texture: Int, width: Int, height: Int) {
        require(width > 0 && height > 0 && width.toLong() * height * layout.bytesPerPixel <= capacity)
        val start = System.nanoTime()
        val stripeRows = if (uploadProgram != 0) {
            RawFloatTransferLayout.stripeRows(width, height, maxSsboBytes, ssboOffsetAlignment,
                layout.bytesPerPixel)
        } else 0
        if (stripeRows > 0) {
            try {
                // Unmap made the CPU writes visible. Avoid the driver's GL_FLOAT -> RGBA16F
                // pixel-unpack path, which can block for hundreds of ms at some image sizes.
                GLES31.glUseProgram(uploadProgram)
                GLES31.glBindImageTexture(0, texture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
                dispatchStripes(uploadProgram, width, height, stripeRows)
                GLES31.glMemoryBarrier(GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                    GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
                checkGl("upload float texture via image store")
            } finally {
                GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            }
        } else {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
            val uploaded = when (layout) {
                Layout.FLOAT -> nativeUpload(buffer, texture, width, height)
                Layout.HALF -> GlesPixelBufferTransfer.uploadRgba16fPboToTexture(buffer, texture, width, height)
            }
            check(uploaded) { "Float PBO upload failed" }
        }
        PLog.i(TAG, "upload layout=$layout size=${width}x$height transfer=${if (stripeRows > 0) "SSBO_IMAGE" else "PBO"} " +
            "stripeRows=$stripeRows uploadSubmitMs=${elapsedMs(start)}")
    }

    private fun dispatchStripes(computeProgram: Int, width: Int, height: Int, stripeRows: Int) {
        GLES31.glUniform2i(GLES31.glGetUniformLocation(computeProgram, "uSize"), width, height)
        val rowOffsetLocation = GLES31.glGetUniformLocation(computeProgram, "uRowOffset")
        val rowsLocation = GLES31.glGetUniformLocation(computeProgram, "uRows")
        val rowBytes = width * layout.bytesPerPixel
        for (row in 0 until height step stripeRows) {
            val rows = minOf(stripeRows, height - row)
            GLES31.glUniform1i(rowOffsetLocation, row)
            GLES31.glUniform1i(rowsLocation, rows)
            GLES31.glBindBufferRange(GLES31.GL_SHADER_STORAGE_BUFFER, 0, buffer,
                row * rowBytes, rows * rowBytes)
            GLES31.glDispatchCompute((width + 7) / 8, (rows + 7) / 8, 1)
        }
    }

    private fun byteCount(width: Int, height: Int, capacityPixels: Long): Int {
        require(width > 0 && height > 0 && capacityPixels >= width.toLong() * height &&
            capacityPixels <= Int.MAX_VALUE / layout.bytesPerPixel)
        return (capacityPixels * layout.bytesPerPixel).toInt()
    }

    fun releaseBuffers() {
        if (buffer != 0) GLES30.glDeleteBuffers(1, intArrayOf(buffer), 0)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        buffer = 0; framebuffer = 0; capacity = 0
    }

    fun release() {
        releaseBuffers()
        if (program != 0) GLES30.glDeleteProgram(program)
        if (uploadProgram != 0) GLES30.glDeleteProgram(uploadProgram)
        program = 0; uploadProgram = 0; initialized = false; maxSsboBytes = 0L; ssboOffsetAlignment = 1
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
            val alignment = IntArray(1)
            GLES31.glGetIntegerv(GLES31.GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT, alignment, 0)
            check(alignment[0] > 0) { "Invalid SSBO offset alignment: ${alignment[0]}" }
            ssboOffsetAlignment = alignment[0]
            program = RawGlesProgram.compileCompute(
                if (layout == Layout.HALF) PACK_HALF else PACK, "Mgc${layout}Transfer")
            val imageUnits = IntArray(1)
            val computeImages = IntArray(1)
            GLES31.glGetIntegerv(GLES31.GL_MAX_IMAGE_UNITS, imageUnits, 0)
            GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, computeImages, 0)
            if (imageUnits[0] > 0 && computeImages[0] > 0) {
                uploadProgram = RawGlesProgram.compileCompute(
                    if (layout == Layout.HALF) UNPACK_HALF else UNPACK, "Mgc${layout}Upload")
            }
        }
    }

    private external fun nativeUpload(pbo: Int, texture: Int, width: Int, height: Int): Boolean

    companion object {
        private const val TAG = "RawFloatTextureTransfer"
        init { System.loadLibrary("my-native-lib") }
        private fun elapsedMs(start: Long) = (System.nanoTime() - start) / 1_000_000.0
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
            uniform int uRowOffset;
            uniform int uRows;
            layout(std430, binding = 0) writeonly buffer Pixels { vec4 pixels[]; };
            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uSize.x || p.y >= uRows) return;
                pixels[p.y * uSize.x + p.x] = texelFetch(uInput, p + ivec2(0, uRowOffset), 0);
            }
        """.trimIndent()

        internal val UNPACK = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 8, local_size_y = 8) in;
            layout(std430, binding = 0) readonly buffer Pixels { vec4 pixels[]; };
            layout(rgba16f, binding = 0) writeonly uniform highp image2D uOutput;
            uniform ivec2 uSize;
            uniform int uRowOffset;
            uniform int uRows;
            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uSize.x || p.y >= uRows) return;
                vec4 value = pixels[p.y * uSize.x + p.x];
                imageStore(uOutput, p + ivec2(0, uRowOffset), value);
            }
        """.trimIndent()

        // Two little-endian words per pixel retain the RGBA16F ABI without expanding to Float32.
        internal val PACK_HALF = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 8, local_size_y = 8) in;
            uniform highp sampler2D uInput;
            uniform ivec2 uSize;
            uniform int uRowOffset;
            uniform int uRows;
            layout(std430, binding = 0) writeonly buffer Pixels { uvec2 pixels[]; };
            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uSize.x || p.y >= uRows) return;
                vec4 value = texelFetch(uInput, p + ivec2(0, uRowOffset), 0);
                pixels[p.y * uSize.x + p.x] = uvec2(packHalf2x16(value.rg), packHalf2x16(value.ba));
            }
        """.trimIndent()

        internal val UNPACK_HALF = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 8, local_size_y = 8) in;
            layout(std430, binding = 0) readonly buffer Pixels { uvec2 pixels[]; };
            layout(rgba16f, binding = 0) writeonly uniform highp image2D uOutput;
            uniform ivec2 uSize;
            uniform int uRowOffset;
            uniform int uRows;
            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uSize.x || p.y >= uRows) return;
                uvec2 encoded = pixels[p.y * uSize.x + p.x];
                vec4 value = vec4(unpackHalf2x16(encoded.x), unpackHalf2x16(encoded.y));
                imageStore(uOutput, p + ivec2(0, uRowOffset), value);
            }
        """.trimIndent()
    }
}
