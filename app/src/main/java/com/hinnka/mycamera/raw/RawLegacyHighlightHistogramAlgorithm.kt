package com.hinnka.mycamera.raw

import android.graphics.Rect
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Measures per-pixel peak signal from the full-resolution linear RAW texture. */
internal class RawLegacyHighlightHistogramAlgorithm {
    private var program = 0
    private var histogramBuffer = 0
    private val zeroHistogram = ByteBuffer.allocateDirect(HISTOGRAM_BUFFER_BYTES)
        .order(ByteOrder.nativeOrder())

    fun measure(
        linearRawTextureId: Int,
        imageWidth: Int,
        imageHeight: Int,
        sourceBounds: Rect,
    ): RawLegacyHighlightHistogram? {
        if (linearRawTextureId == 0 || imageWidth <= 0 || imageHeight <= 0 ||
            sourceBounds.isEmpty || sourceBounds.left < 0 || sourceBounds.top < 0 ||
            sourceBounds.right > imageWidth || sourceBounds.bottom > imageHeight
        ) {
            return null
        }
        if (!ensureResources()) return null
        val pixelCount = sourceBounds.width().toLong() * sourceBounds.height().toLong()
        if (pixelCount <= 0L || pixelCount > UINT_MAX) return null

        return try {
            resetHistogram()
            GLES31.glUseProgram(program)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(program, "uImageSize"),
                imageWidth,
                imageHeight,
            )
            GLES31.glUniform4i(
                GLES31.glGetUniformLocation(program, "uSourceBounds"),
                sourceBounds.left,
                sourceBounds.top,
                sourceBounds.right,
                sourceBounds.bottom,
            )
            GLES31.glBindImageTexture(
                LINEAR_RAW_IMAGE_BINDING,
                linearRawTextureId,
                0,
                false,
                0,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16F,
            )
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                HISTOGRAM_BUFFER_BINDING,
                histogramBuffer,
            )
            // The linear RAW source may come from either framebuffer rendering or imageStore.
            // Declare the next image-load consumer explicitly before dispatch.
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(sourceBounds.width()),
                GlesComputeWorkGroup.imageGroupCount(sourceBounds.height()),
                1,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or
                    GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            RawGlesProgram.logErrors("RAW viewfinder highlight histogram dispatch")
            readHistogram(pixelCount)
        } catch (error: Throwable) {
            PLog.e(TAG, "Failed to measure RAW viewfinder highlight histogram", error)
            null
        } finally {
            GLES31.glBindImageTexture(
                LINEAR_RAW_IMAGE_BINDING,
                0,
                0,
                false,
                0,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16F,
            )
            GLES31.glBindBufferBase(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                HISTOGRAM_BUFFER_BINDING,
                0,
            )
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    fun release() {
        if (program != 0) {
            GLES31.glDeleteProgram(program)
            program = 0
        }
        if (histogramBuffer != 0) {
            GLES31.glDeleteBuffers(1, intArrayOf(histogramBuffer), 0)
            histogramBuffer = 0
        }
    }

    private fun ensureResources(): Boolean {
        if (program == 0) {
            program = RawGlesProgram.compileCompute(SHADER, "RawLegacyHighlightHistogram")
            if (program == 0) return false
        }
        if (histogramBuffer != 0) return true

        val maximumBlockBytes = IntArray(1)
        GLES31.glGetIntegerv(
            GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE,
            maximumBlockBytes,
            0,
        )
        if (maximumBlockBytes[0] < HISTOGRAM_BUFFER_BYTES) {
            PLog.e(
                TAG,
                "RAW highlight histogram SSBO unavailable: required=$HISTOGRAM_BUFFER_BYTES " +
                    "maximum=${maximumBlockBytes[0]}",
            )
            return false
        }

        val buffers = IntArray(1)
        GLES31.glGenBuffers(1, buffers, 0)
        histogramBuffer = buffers[0]
        if (histogramBuffer == 0) return false
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, histogramBuffer)
        zeroHistogram.clear()
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            HISTOGRAM_BUFFER_BYTES,
            zeroHistogram,
            GLES31.GL_DYNAMIC_READ,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        RawGlesProgram.logErrors("RAW viewfinder highlight histogram allocation")
        return true
    }

    private fun resetHistogram() {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, histogramBuffer)
        zeroHistogram.clear()
        GLES31.glBufferSubData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            0,
            HISTOGRAM_BUFFER_BYTES,
            zeroHistogram,
        )
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        GLES31.glMemoryBarrier(
            GLES31.GL_BUFFER_UPDATE_BARRIER_BIT or
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT,
        )
    }

    private fun readHistogram(expectedPixelCount: Long): RawLegacyHighlightHistogram? {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, histogramBuffer)
        val mapped = GLES31.glMapBufferRange(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            0,
            HISTOGRAM_BUFFER_BYTES,
            GLES31.GL_MAP_READ_BIT,
        ) as? ByteBuffer ?: return null
        return try {
            mapped.order(ByteOrder.nativeOrder())
            val counts = LongArray(HISTOGRAM_BIN_COUNT) { bin ->
                mapped.getInt(bin * Int.SIZE_BYTES).toLong() and UINT_MAX
            }
            val invalidPixelCount =
                mapped.getInt(HISTOGRAM_BIN_COUNT * Int.SIZE_BYTES).toLong() and UINT_MAX
            val measuredPixelCount = counts.sum()
            if (invalidPixelCount != 0L || measuredPixelCount != expectedPixelCount) {
                PLog.e(
                    TAG,
                    "Invalid RAW highlight histogram: measured=$measuredPixelCount " +
                        "expected=$expectedPixelCount invalid=$invalidPixelCount",
                )
                return null
            }
            RawLegacyHighlightHistogram(
                counts = counts,
                minimumLog2Signal = MINIMUM_LOG2_SIGNAL,
                log2SignalStep = LOG2_SIGNAL_STEP,
                pixelCount = expectedPixelCount,
            )
        } finally {
            GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    companion object {
        private const val TAG = "RawLegacyHighlightHistogram"
        private const val LINEAR_RAW_IMAGE_BINDING = 0
        private const val HISTOGRAM_BUFFER_BINDING = 0
        private const val HISTOGRAM_BIN_COUNT = 2048
        private const val MINIMUM_LOG2_SIGNAL = -16f
        private const val MAXIMUM_LOG2_SIGNAL = 16f
        private const val LOG2_SIGNAL_STEP =
            (MAXIMUM_LOG2_SIGNAL - MINIMUM_LOG2_SIGNAL) / HISTOGRAM_BIN_COUNT
        private const val HISTOGRAM_BUFFER_BYTES =
            (HISTOGRAM_BIN_COUNT + 1) * Int.SIZE_BYTES
        private const val UINT_MAX = 0xffff_ffffL

        private val SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            precision highp image2D;

            layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
            layout(rgba16f, binding = 0) readonly uniform highp image2D uLinearRaw;
            layout(std430, binding = 0) buffer HighlightHistogram {
                uint bins[$HISTOGRAM_BIN_COUNT];
                uint invalidPixelCount;
            } histogram;
            uniform ivec2 uImageSize;
            uniform ivec4 uSourceBounds;
            const float MINIMUM_LOG2_SIGNAL = $MINIMUM_LOG2_SIGNAL;
            const float MAXIMUM_LOG2_SIGNAL = $MAXIMUM_LOG2_SIGNAL;

            void main() {
                ivec2 localPosition = ivec2(gl_GlobalInvocationID.xy);
                ivec2 boundsSize = uSourceBounds.zw - uSourceBounds.xy;
                if (any(greaterThanEqual(localPosition, boundsSize))) return;
                ivec2 position = uSourceBounds.xy + localPosition;
                if (any(lessThan(position, ivec2(0))) ||
                    any(greaterThanEqual(position, uImageSize))) return;

                vec3 raw = imageLoad(uLinearRaw, position).rgb;
                if (any(isnan(raw)) || any(isinf(raw))) {
                    atomicAdd(histogram.invalidPixelCount, 1u);
                    return;
                }
                float peak = max(max(raw.r, raw.g), max(raw.b, 0.0));
                float log2Signal = peak > 0.0
                    ? clamp(log2(peak), MINIMUM_LOG2_SIGNAL, MAXIMUM_LOG2_SIGNAL)
                    : MINIMUM_LOG2_SIGNAL;
                float coordinate = (log2Signal - MINIMUM_LOG2_SIGNAL) /
                    (MAXIMUM_LOG2_SIGNAL - MINIMUM_LOG2_SIGNAL);
                int bin = min(
                    int(floor(coordinate * float($HISTOGRAM_BIN_COUNT))),
                    $HISTOGRAM_BIN_COUNT - 1
                );
                atomicAdd(histogram.bins[bin], 1u);
            }
        """.trimIndent()
    }
}
