package com.hinnka.mycamera.processor

import android.hardware.HardwareBuffer
import android.opengl.GLES11Ext
import android.opengl.GLES30
import com.hinnka.mycamera.model.SafeImage
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SystemPropertiesUtil
import java.util.concurrent.ConcurrentHashMap

/** Capture-owned imports. The caller retains all SafeImages until GPU sampling completes. */
internal class GlesYuvHardwareBufferInput {
    private data class Imported(val texture: Int, val image: Long, val buffer: HardwareBuffer)
    private val imports = ArrayList<Imported>()
    private var disabled = false
    private var loggedDescriptor = false
    val hasImports: Boolean get() = imports.isNotEmpty()

    fun isSupported(): Boolean {
        if (SystemPropertiesUtil.get("debug.photon.yuv.input") == "planes") return false
        val count = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_NUM_EXTENSIONS, count, 0)
        return (0 until count[0]).any {
            GLES30.glGetStringi(GLES30.GL_EXTENSIONS, it) == "GL_EXT_YUV_target"
        }
    }

    /** Returns a new external texture per source; rebinding one texture can stall pending reads. */
    fun import(image: SafeImage): Int {
        if (disabled) return 0
        var buffer: HardwareBuffer? = null
        var handle = 0L
        val texture = IntArray(1)
        try {
            buffer = image.image.hardwareBuffer ?: error("Camera Image has no HardwareBuffer")
            if (!loggedDescriptor) {
                PLog.i(TAG, "HardwareBuffer format=${buffer.format} size=${buffer.width}x${buffer.height} " +
                    "usage=0x${buffer.usage.toString(16)} imageFormat=${image.format}")
                loggedDescriptor = true
            }
            check(buffer.width == image.width && buffer.height == image.height) {
                "HardwareBuffer/Image dimensions differ"
            }
            handle = GlesHardwareBufferImage.create(buffer)
            check(handle != 0L) { "EGLImage creation failed" }
            GLES30.glGenTextures(1, texture, 0)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, texture[0])
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            check(GlesHardwareBufferImage.bind(handle, texture[0])) { "External texture binding failed" }
            imports += Imported(texture[0], handle, buffer)
            return texture[0]
        } catch (error: RuntimeException) {
            if (texture[0] != 0) GLES30.glDeleteTextures(1, texture, 0)
            if (handle != 0L) GlesHardwareBufferImage.destroy(handle)
            buffer?.close()
            disabled = true
            PLog.w(TAG, "HardwareBuffer import unavailable; using plane upload: ${error.message}")
            return 0
        } finally {
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, 0)
        }
    }

    /** GPU completion is the caller's responsibility, including early/failure exits. */
    fun release() {
        for (entry in imports) {
            GLES30.glDeleteTextures(1, intArrayOf(entry.texture), 0)
            GlesHardwareBufferImage.destroy(entry.image)
            entry.buffer.close()
        }
        imports.clear()
    }

    companion object {
        private const val TAG = "YuvHardwareBuffer"
        private val validatedFormats = ConcurrentHashMap.newKeySet<Int>()

        fun shouldValidate(format: Int): Boolean = RawStackRuntimeDebug.enabled &&
            SystemPropertiesUtil.get("debug.photon.yuv.input.validate") == "true" &&
            format !in validatedFormats

        fun markValidated(format: Int) { validatedFormats += format }

        val VALIDATE_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            uniform highp sampler2D uLuma;
            uniform highp sampler2D uChroma;
            uniform ivec2 uInputSize;
            out vec4 oSample;
            void main() {
                ivec2 q = ivec2(gl_FragCoord.xy);
                ivec2 p = q * (uInputSize - 1) / ivec2(16, 12);
                oSample = vec4(texelFetch(uLuma, p, 0).r,
                    texelFetch(uChroma, p / 2, 0).rg, 1.0);
            }
        """.trimIndent()

        // Read raw YUV, not the RGB-converting samplerExternalOES. This preserves the existing
        // P010/BT.2020 and 8-bit/BT.601 conversion contracts in the downstream shaders.
        val EXTRACT_SHADER = """
            #version 300 es
            #extension GL_EXT_YUV_target : require
            precision highp float;
            precision highp int;
            uniform highp __samplerExternal2DY2YEXT uInput;
            uniform ivec2 uInputSize;
            uniform int uChromaOutput;
            uniform int uIsP010;
            out highp vec2 oPlane;

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                if (uChromaOutput != 0) p *= 2;
                vec2 uv = (vec2(min(p, uInputSize - 1)) + 0.5) / vec2(uInputSize);
                vec3 yuv = texture(uInput, uv).rgb;
                if (uIsP010 != 0) {
                    // The sampler normalizes the 10-bit code by 1023. Existing P010
                    // textures store the left-aligned 16-bit word divided by 65535.
                    // Recover the code before scaling; all integer values fit FP16.
                    yuv = floor(yuv * 1023.0 + 0.5) * (64.0 / 65535.0);
                }
                oPlane = uChromaOutput != 0 ? yuv.gb : vec2(yuv.r, 0.0);
            }
        """.trimIndent()
    }
}
