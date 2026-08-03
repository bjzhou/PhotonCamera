package com.hinnka.mycamera.previewhook.api

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs

/**
 * Owns recipe textures that must be created and released inside one EGL context.
 *
 * Captured JPEG rendering and viewfinder preview use separate contexts, so each renderer keeps
 * its own instance while sharing exactly the same asset decoding and upload behavior.
 */
internal class MgcRecipeTextureBindings {
    private var curveTextureId = 0
    private var basicToneLowTextureId = 0
    private var basicToneHighTextureId = 0
    private var uploadedCurveSnapshotVersion = -1

    fun bindBasicTone(
        programId: Int,
        snapshot: MgcVfeLutSnapshot,
        textureUnit: Int,
        dummyTextureId: Int,
    ) {
        val amount = snapshot.basicToneAmount
        val textureId = if (abs(amount) > EFFECT_EPSILON) {
            ensureBasicToneTexture(highKey = amount >= 0f)
        } else {
            dummyTextureId
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        uniform1i(programId, "uBasicToneLut", textureUnit)
        uniform1f(
            programId,
            "uBasicToneIntensity",
            if (textureId != dummyTextureId) abs(amount).coerceIn(0f, 1f) else 0f,
        )
    }

    fun bindCurve(
        programId: Int,
        snapshot: MgcVfeLutSnapshot,
        textureUnit: Int,
        dummyTextureId: Int,
    ) {
        val curveEnabled = snapshot.curveEnabled && snapshot.curvePayload != null
        val textureId = if (curveEnabled) {
            ensureCurveTexture(snapshot)
        } else {
            dummyTextureId
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + textureUnit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        uniform1i(programId, "uCurveTexture", textureUnit)
        uniform1i(programId, "uCurveEnabled", if (curveEnabled) 1 else 0)
    }

    fun release() {
        val textures = intArrayOf(
            curveTextureId,
            basicToneLowTextureId,
            basicToneHighTextureId,
        ).filter { it != 0 }.toIntArray()
        if (textures.isNotEmpty()) {
            GLES30.glDeleteTextures(textures.size, textures, 0)
        }
        curveTextureId = 0
        basicToneLowTextureId = 0
        basicToneHighTextureId = 0
        uploadedCurveSnapshotVersion = -1
    }

    private fun ensureCurveTexture(snapshot: MgcVfeLutSnapshot): Int {
        val version = MgcVfeLutRuntime.getSnapshotVersion()
        if (curveTextureId != 0 && uploadedCurveSnapshotVersion == version) {
            return curveTextureId
        }
        val payload = snapshot.curvePayload ?: error("Curve payload missing")
        require(payload.size == CURVE_TEXTURE_SIZE * 4) {
            "Invalid curve payload size=${payload.size}"
        }
        if (curveTextureId == 0) {
            curveTextureId = create2DTexture()
        }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA8,
            CURVE_TEXTURE_SIZE,
            1,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            ByteBuffer.allocateDirect(payload.size)
                .put(payload)
                .apply { position(0) },
        )
        uploadedCurveSnapshotVersion = version
        requireNoGlError("recipe curve upload")
        return curveTextureId
    }

    private fun ensureBasicToneTexture(highKey: Boolean): Int {
        val existing = if (highKey) basicToneHighTextureId else basicToneLowTextureId
        if (existing != 0) return existing
        val assetPath = if (highKey) {
            BASIC_TONE_HIGH_KEY_ASSET
        } else {
            BASIC_TONE_LOW_KEY_ASSET
        }
        val application = MgcVfeLutRuntime.currentApplication()
            ?: error("MGC application unavailable for Basic Tone LUT")
        val raw = application.assets.open(assetPath).use { it.readBytes() }
        val voxelCount = BASIC_TONE_SIZE * BASIC_TONE_SIZE * BASIC_TONE_SIZE
        val expectedSize = voxelCount * 3 * Float.SIZE_BYTES
        require(raw.size == expectedSize) {
            "Invalid Basic Tone LUT size=${raw.size}, expected=$expectedSize path=$assetPath"
        }
        val planar = ByteBuffer.wrap(raw)
            .order(ByteOrder.LITTLE_ENDIAN)
            .asFloatBuffer()
        val interleaved = ByteBuffer.allocateDirect(expectedSize)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        for (index in 0 until voxelCount) {
            interleaved.put(planar.get(index))
            interleaved.put(planar.get(voxelCount + index))
            interleaved.put(planar.get(voxelCount * 2 + index))
        }
        interleaved.position(0)

        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val textureId = ids[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage3D(
            GLES30.GL_TEXTURE_3D,
            0,
            GLES30.GL_RGB16F,
            BASIC_TONE_SIZE,
            BASIC_TONE_SIZE,
            BASIC_TONE_SIZE,
            0,
            GLES30.GL_RGB,
            GLES30.GL_FLOAT,
            interleaved,
        )
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        requireNoGlError("recipe Basic Tone upload")
        if (highKey) {
            basicToneHighTextureId = textureId
        } else {
            basicToneLowTextureId = textureId
        }
        return textureId
    }

    private fun create2DTexture(): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val textureId = ids[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        return textureId
    }

    private fun uniform1i(programId: Int, name: String, value: Int) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniform1i(location, value)
    }

    private fun uniform1f(programId: Int, name: String, value: Float) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniform1f(location, value)
    }

    private fun requireNoGlError(operation: String) {
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            throw IllegalStateException(
                "GL error after $operation: 0x${Integer.toHexString(error)}",
            )
        }
    }

    private companion object {
        private const val BASIC_TONE_SIZE = 32
        private const val BASIC_TONE_LOW_KEY_ASSET = "internal/basic_tone/low_key_32f.bin"
        private const val BASIC_TONE_HIGH_KEY_ASSET = "internal/basic_tone/high_key_32f.bin"
        private const val CURVE_TEXTURE_SIZE = 256
        private const val EFFECT_EPSILON = 0.001f
    }
}
