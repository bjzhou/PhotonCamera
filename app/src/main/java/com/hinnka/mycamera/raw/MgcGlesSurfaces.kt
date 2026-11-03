package com.hinnka.mycamera.raw

import android.opengl.GLES30

/** Immutable render-target textures and framebuffers for the MGC GLES kernel ports. */
internal object MgcGlesSurfaces {
    /**
     * Integer formats are incomplete under linear filtering (texelFetch would read zero), so
     * [filter] defaults to nearest; the kernels only use texelFetch.
     */
    fun texture(format: Int, width: Int, height: Int, label: String, filter: Int = GLES30.GL_NEAREST): Int {
        require(width > 0 && height > 0)
        val names = IntArray(1)
        GLES30.glGenTextures(1, names, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, names[0])
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            GLES30.glDeleteTextures(1, names, 0)
            error("$label texture ${width}x$height failed: 0x${Integer.toHexString(error)}")
        }
        return names[0]
    }

    /** A framebuffer drawing to [textures] as colour attachments 0..n-1, in order. */
    fun framebuffer(label: String, vararg textures: Int): Int {
        val names = IntArray(1)
        GLES30.glGenFramebuffers(1, names, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, names[0])
        textures.forEachIndexed { index, texture ->
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0 + index,
                GLES30.GL_TEXTURE_2D, texture, 0)
        }
        val buffers = IntArray(textures.size) { GLES30.GL_COLOR_ATTACHMENT0 + it }
        GLES30.glDrawBuffers(buffers.size, buffers, 0)
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            GLES30.glDeleteFramebuffers(1, names, 0)
            error("$label framebuffer is incomplete: 0x${Integer.toHexString(status)}")
        }
        return names[0]
    }

    fun deleteTextures(vararg textures: Int) {
        val live = textures.filter { it != 0 }.toIntArray()
        if (live.isNotEmpty()) GLES30.glDeleteTextures(live.size, live, 0)
    }

    fun deleteFramebuffers(vararg framebuffers: Int) {
        val live = framebuffers.filter { it != 0 }.toIntArray()
        if (live.isNotEmpty()) GLES30.glDeleteFramebuffers(live.size, live, 0)
    }
}
