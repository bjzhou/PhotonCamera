package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlin.math.max
import kotlin.math.roundToInt

/**
 * Highlights / shadows for one realtime colour pass.
 *
 * The caller renders the colour as it enters the tone map (the `toneMapSource` variant of the
 * same colour pass) into [prepare]'s source target; the mask is rebuilt from it every
 * [MASK_REFRESH_FRAMES] frames, while the slider-dependent level table follows every frame. The
 * source is rendered at twice the mask size so the mask's luminance reduction box-filters it, as the
 * capture path does from the full image.
 */
internal class ShadowsHighlightsPreviewGl(private val tag: String) {
    private val mask = ShadowsHighlightsMaskGl(tag)
    private var sourceTexture = 0
    private var sourceFramebuffer = 0
    private var sourceWidth = 0
    private var sourceHeight = 0
    private var result: ShadowsHighlightsMaskGl.Result? = null
    private var framesSinceBuild = 0

    /**
     * Returns the mask for this frame, or null when the adjustment is inactive or unavailable.
     * [drawSource] renders the tone-map source into the given framebuffer at the given size.
     */
    fun prepare(
        outputWidth: Int,
        outputHeight: Int,
        highlights: Float,
        shadows: Float,
        drawSource: (framebuffer: Int, width: Int, height: Int) -> Unit,
    ): ShadowsHighlightsMaskGl.Result? {
        if (!ShadowsHighlightsShader.isActive(highlights, shadows)) {
            result = null
            return null
        }
        val scale = minOf(1f, ShadowsHighlightsMaskGl.MASK_LONG_SIDE.toFloat() / max(outputWidth, outputHeight))
        val width = max(1, (outputWidth * scale).roundToInt()) * SOURCE_OVERSAMPLE
        val height = max(1, (outputHeight * scale).roundToInt()) * SOURCE_OVERSAMPLE
        if (!ensureSource(width, height)) return null

        if (result == null || ++framesSinceBuild >= MASK_REFRESH_FRAMES) {
            drawSource(sourceFramebuffer, width, height)
            result = mask.render(
                sourceTextureId = sourceTexture,
                sourceWidth = width,
                sourceHeight = height,
                encoding = ShadowsHighlightsMaskGl.SourceEncoding.DisplaySrgb,
                exposureEv = 0f,
            )
            framesSinceBuild = 0
        }
        if (result != null && !mask.renderAmounts(highlights, shadows)) result = null
        if (result == null) PLog.e(tag, "Realtime shadows/highlights mask unavailable")
        return result
    }

    fun bind(locations: ColorPassLocations, result: ShadowsHighlightsMaskGl.Result?) {
        mask.bind(
            result = result,
            maskUnit = MASK_UNIT,
            maskLocation = locations.uShadowsHighlightsMaskLocation,
            statsUnit = MASK_UNIT + 1,
            statsLocation = locations.uShadowsHighlightsStatsLocation,
            curveUnit = MASK_UNIT + 2,
            curveLocation = locations.uShadowsHighlightsCurveLocation,
            amountsUnit = MASK_UNIT + 3,
            amountsLocation = locations.uShadowsHighlightsAmountsLocation,
        )
    }

    fun release() {
        mask.release()
        releaseSource()
        result = null
    }

    /** Forget handles after the owning EGL context has been lost. */
    fun reset() {
        sourceTexture = 0
        sourceFramebuffer = 0
        sourceWidth = 0
        sourceHeight = 0
        result = null
        mask.reset()
    }

    private fun ensureSource(width: Int, height: Int): Boolean {
        if (sourceTexture != 0 && width == sourceWidth && height == sourceHeight) return true
        releaseSource()
        result = null
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        sourceTexture = ids[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sourceTexture)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glGenFramebuffers(1, ids, 0)
        sourceFramebuffer = ids[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, sourceFramebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, sourceTexture, 0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            PLog.e(tag, "Shadows/highlights source framebuffer incomplete: 0x${Integer.toHexString(status)}")
            releaseSource()
            return false
        }
        sourceWidth = width
        sourceHeight = height
        return true
    }

    private fun releaseSource() {
        if (sourceTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(sourceTexture), 0)
        if (sourceFramebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(sourceFramebuffer), 0)
        sourceTexture = 0
        sourceFramebuffer = 0
        sourceWidth = 0
        sourceHeight = 0
    }

    companion object {
        /** Frames between mask rebuilds; the slider-dependent level table follows every frame. */
        private const val MASK_REFRESH_FRAMES = 2

        /** The source is rendered at this multiple of the mask size and box-filtered by the mask. */
        private const val SOURCE_OVERSAMPLE = 2

        /** First of four consecutive texture units; the colour pass uses units 0..5. */
        const val MASK_UNIT = 8
    }
}
