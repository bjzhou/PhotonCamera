package com.hinnka.mycamera.lut

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.raw.MgcGlesSurfaces
import com.hinnka.mycamera.stabilization.MAX_VIDEO_STABILIZATION_LOOKAHEAD
import com.hinnka.mycamera.utils.PLog

/** Keeps developed RAW preview frames on the GL thread until their delayed MGC pose arrives. */
internal class RawPreviewStabilizationGl(
    private val capacity: Int = MAX_VIDEO_STABILIZATION_LOOKAHEAD + 3,
) {
    class Frame internal constructor(
        val textureId: Int,
        val width: Int,
        val height: Int,
        val timestampNs: Long,
        val matrix: FloatArray,
        private var returnSlot: (() -> Unit)?,
    ) : AutoCloseable {
        override fun close() {
            returnSlot?.invoke()
            returnSlot = null
        }
    }

    private class Slot {
        var textureId = 0
        var framebufferId = 0
        var width = 0
        var height = 0
        var timestampNs = 0L
        var leased = false
        val matrix = FloatArray(16)

        fun ensure(width: Int, height: Int) {
            if (framebufferId != 0 && this.width == width && this.height == height) return
            release()
            textureId = MgcGlesSurfaces.texture(GLES30.GL_RGBA16F, width, height, TAG, GLES30.GL_LINEAR)
            framebufferId = MgcGlesSurfaces.framebuffer(TAG, textureId)
            this.width = width
            this.height = height
        }

        fun release() {
            MgcGlesSurfaces.deleteFramebuffers(framebufferId)
            MgcGlesSurfaces.deleteTextures(textureId)
            framebufferId = 0
            textureId = 0
            timestampNs = 0L
        }
    }

    init {
        require(capacity > 0)
    }

    private var slots = Array(capacity) { Slot() }
    private var sourceFramebuffer = 0

    /** Copies [textureId] without changing its signed linear RGBA16F values or orientation. */
    fun push(textureId: Int, width: Int, height: Int, timestampNs: Long, matrix: FloatArray): Boolean {
        if (textureId == 0 || width <= 0 || height <= 0 || timestampNs <= 0L || matrix.size != 16) return false
        val slot = slots.firstOrNull { !it.leased && it.timestampNs == timestampNs }
            ?: slots.firstOrNull { !it.leased && it.timestampNs == 0L && it.width == width && it.height == height }
            ?: slots.firstOrNull { !it.leased && it.timestampNs == 0L }
            ?: slots.asSequence().filterNot { it.leased }.minByOrNull { it.timestampNs }
            ?: return false
        if (slot.timestampNs > timestampNs) return false
        slot.timestampNs = 0L
        try {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            slot.ensure(width, height)
            if (sourceFramebuffer == 0) {
                val names = IntArray(1)
                GLES30.glGenFramebuffers(1, names, 0)
                sourceFramebuffer = names[0]
                check(sourceFramebuffer != 0) { "RAW stabilization source framebuffer allocation failed" }
            }
            GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, sourceFramebuffer)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_READ_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, textureId, 0,
            )
            GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
            GLES30.glBindFramebuffer(GLES30.GL_DRAW_FRAMEBUFFER, slot.framebufferId)
            GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
            GLES30.glBlitFramebuffer(
                0, 0, width, height, 0, 0, width, height, GLES30.GL_COLOR_BUFFER_BIT, GLES30.GL_NEAREST,
            )
            val error = GLES30.glGetError()
            check(error == GLES30.GL_NO_ERROR) { "RAW stabilization copy GL error 0x${error.toString(16)}" }
            GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
            matrix.copyInto(slot.matrix)
            slot.timestampNs = timestampNs
            return true
        } catch (error: IllegalStateException) {
            slot.release()
            PLog.w(TAG, "RAW stabilization frame unavailable: ${error.message}")
            return false
        } finally {
            if (sourceFramebuffer != 0) {
                GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, sourceFramebuffer)
                GLES30.glFramebufferTexture2D(
                    GLES30.GL_READ_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, 0, 0,
                )
            }
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        }
    }

    /** The texture is borrowed through the synchronous render and valid until close. */
    fun take(timestampNs: Long): Frame? {
        if (timestampNs <= 0L) return null
        val slot = slots.firstOrNull { it.timestampNs == timestampNs } ?: return null
        slot.timestampNs = 0L
        slot.leased = true
        return Frame(slot.textureId, slot.width, slot.height, timestampNs, slot.matrix.copyOf()) { slot.leased = false }
    }

    fun clear() {
        slots.forEach { it.timestampNs = 0L }
    }

    fun release() {
        slots.forEach(Slot::release)
        MgcGlesSurfaces.deleteFramebuffers(sourceFramebuffer)
        resetAfterContextLoss()
    }

    fun resetAfterContextLoss() {
        slots = Array(capacity) { Slot() }
        sourceFramebuffer = 0
    }

    private companion object {
        const val TAG = "RawPreviewStabilization"
    }
}
