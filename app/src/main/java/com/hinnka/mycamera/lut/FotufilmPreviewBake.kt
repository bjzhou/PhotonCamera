package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.raw.ColorSpace
import com.hinnka.mycamera.raw.FotufilmRenderRequest
import com.hinnka.mycamera.raw.RawFullscreenQuad
import com.hinnka.mycamera.raw.RawToneMappingGl
import com.hinnka.mycamera.raw.fotufilm.FotufilmConfigLayout as L
import com.hinnka.mycamera.raw.fotufilm.FotufilmRenderer
import com.hinnka.mycamera.raw.fotufilm.FotufilmRuntime
import com.hinnka.mycamera.utils.PLog

/**
 * Fotufilm's part of the viewfinder's engine atlas.
 *
 * The atlas holds a pointwise colour mapping, as it does for every engine. Fotufilm's pointwise
 * response is its flat-field response: on a uniform field the light stages (MTF, halation, veiling
 * glare, lens diffusion) return the direct light, the chemical fields (coupler diffusion,
 * adjacency) equal the pixel's own release, and only grain is texture. Developing the atlas with
 * those stages switched off and grain absent is therefore exactly the response a photograph's
 * smooth regions receive; captures and edits render the full graph.
 */
internal class FotufilmPreviewBake(private val quad: RawFullscreenQuad) {
    private val renderer = FotufilmRenderer(quad)
    private var program = 0
    private var sceneTexture = 0
    var sceneFramebuffer = 0
        private set
    private var printTexture = 0
    private var printFramebuffer = 0
    private var width = 0
    private var height = 0

    fun ensureTargets(width: Int, height: Int): Boolean {
        if (sceneTexture != 0 && this.width == width && this.height == height) return true
        releaseTargets()
        val scene = allocate(width, height) ?: return false
        sceneTexture = scene.first
        sceneFramebuffer = scene.second
        val print = allocate(width, height) ?: run { releaseTargets(); return false }
        printTexture = print.first
        printFramebuffer = print.second
        this.width = width
        this.height = height
        return true
    }

    /** Develops the scene atlas and writes the print, as linear sRGB, into [targetFramebuffer]. */
    fun bake(request: FotufilmRenderRequest, targetFramebuffer: Int, width: Int, height: Int): Boolean {
        val built = FotufilmRuntime.buildFrame(
            request.context, request.document, width, height, measureFlareOnDevice = false,
        ).frame
        val frame = built.copy(featureMask = built.featureMask and SPATIAL_STAGES.inv(), filmTiles = null, filmTilesKey = null)
        if (!renderer.render(frame, sceneTexture, width, height, 0, 0, null, printFramebuffer, printTexture)) {
            return false
        }
        if (program == 0) program = quad.createProgram(FINISH_SHADER, "fotufilmPreviewFinish")
        if (program == 0) return false
        GLES30.glUseProgram(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebuffer)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, printTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uPrint"), 0)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uOutputTransform"), 1, false,
            RawToneMappingGl.transposeMatrix3x3(
                RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.DisplayP3, ColorSpace.SRGB),
            ),
            0,
        )
        quad.bindIdentityTextureMatrix(program)
        quad.draw(program)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Fotufilm preview finish failed: error=0x${error.toString(16)}")
            return false
        }
        return true
    }

    fun release() {
        renderer.release()
        if (program != 0) GLES30.glDeleteProgram(program)
        program = 0
        releaseTargets()
    }

    fun reset() {
        renderer.reset()
        program = 0
        sceneTexture = 0
        sceneFramebuffer = 0
        printTexture = 0
        printFramebuffer = 0
        width = 0
        height = 0
    }

    private fun releaseTargets() {
        if (sceneTexture != 0) GLES30.glDeleteTextures(2, intArrayOf(sceneTexture, printTexture), 0)
        if (sceneFramebuffer != 0) GLES30.glDeleteFramebuffers(2, intArrayOf(sceneFramebuffer, printFramebuffer), 0)
        sceneTexture = 0
        sceneFramebuffer = 0
        printTexture = 0
        printFramebuffer = 0
        width = 0
        height = 0
    }

    private fun allocate(width: Int, height: Int): Pair<Int, Int>? {
        val texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
        val framebuffer = IntArray(1).also { GLES30.glGenFramebuffers(1, it, 0) }[0]
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0)
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE || GLES30.glGetError() != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Fotufilm preview target ${width}x$height incomplete: status=$status")
            GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
            return null
        }
        return texture to framebuffer
    }

    private companion object {
        const val TAG = "FotufilmPreviewBake"

        /** Every stage that reads a neighbourhood, plus grain and the glare measurement. */
        const val SPATIAL_STAGES = L.FRAME_FLARE or L.FRAME_FLARE_MEASURE or L.FRAME_MTF or
            L.FRAME_MTF_LUMA or L.FRAME_HALATION or L.FRAME_HALATION_ANNULAR or L.FRAME_ADJACENCY or
            L.FRAME_COUPLER_DIFFUSION or L.FRAME_GRAIN or L.FRAME_GRAIN_MOTTLE or L.FRAME_PRINT_MTF or
            L.FRAME_DIFFUSION

        val FINISH_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            out vec4 fragColor;
            uniform sampler2D uPrint;
            uniform mat3 uOutputTransform;
            void main() {
                vec4 print = texelFetch(uPrint, ivec2(gl_FragCoord.xy), 0);
                fragColor = vec4(uOutputTransform * print.rgb, print.a);
            }
        """.trimIndent()
    }
}

