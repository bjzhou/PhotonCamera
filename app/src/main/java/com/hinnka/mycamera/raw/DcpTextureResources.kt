package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

/** Shared GPU textures for DCP Hue/Sat and LookTable consumers. */
internal class DcpTextureResources {
    private var hueSatTextureId = 0
    private var hueSatSource: DcpHueSatMap? = null
    private var lookTableTextureId = 0
    private var lookTableSource: DcpHueSatMap? = null
    private var dummyTextureId = 0

    fun ensureHueSatTexture(table: DcpHueSatMap): Int {
        if (hueSatTextureId != 0 && hueSatSource === table) return hueSatTextureId
        hueSatTextureId = uploadTexture(hueSatTextureId, table)
        hueSatSource = table
        return hueSatTextureId
    }

    fun ensureLookTableTexture(table: DcpHueSatMap): Int {
        if (lookTableTextureId != 0 && lookTableSource === table) return lookTableTextureId
        lookTableTextureId = uploadTexture(lookTableTextureId, table)
        lookTableSource = table
        return lookTableTextureId
    }

    fun ensureDummyTexture(): Int {
        if (dummyTextureId != 0) return dummyTextureId
        dummyTextureId = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        val buffer = ByteBuffer.allocateDirect(4 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(floatArrayOf(0f, 1f, 1f, 1f))
                position(0)
            }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, dummyTextureId)
        configureTexture()
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
        RawGlesProgram.logErrors("DcpTextureResources.ensureDummyTexture")
        return dummyTextureId
    }

    fun release() {
        intArrayOf(hueSatTextureId, lookTableTextureId, dummyTextureId)
            .filter { it != 0 }
            .forEach { GLES30.glDeleteTextures(1, intArrayOf(it), 0) }
        hueSatTextureId = 0
        hueSatSource = null
        lookTableTextureId = 0
        lookTableSource = null
        dummyTextureId = 0
    }

    private fun uploadTexture(existingTextureId: Int, table: DcpHueSatMap): Int {
        val textureId = existingTextureId.takeIf { it != 0 }
            ?: IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        val rgbaValues = FloatArray(
            table.hueDivisions * table.satDivisions * table.valueDivisions * 4,
        )
        var sourceIndex = 0
        var targetIndex = 0
        while (sourceIndex < table.values.size && targetIndex < rgbaValues.size) {
            rgbaValues[targetIndex++] = table.values[sourceIndex++]
            rgbaValues[targetIndex++] = table.values[sourceIndex++]
            rgbaValues[targetIndex++] = table.values[sourceIndex++]
            rgbaValues[targetIndex++] = 1f
        }
        val buffer = ByteBuffer.allocateDirect(rgbaValues.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(rgbaValues)
                position(0)
            }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        configureTexture()
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D,
            0,
            GLES30.GL_RGBA16F,
            table.satDivisions,
            table.hueDivisions,
            table.valueDivisions,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            buffer,
        )
        RawGlesProgram.logErrors("DcpTextureResources.uploadTexture")
        return textureId
    }

    private fun configureTexture() {
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
    }
}
