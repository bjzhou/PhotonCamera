package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.raw.ACR3Curve
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.max
import kotlin.math.roundToInt

/**
 * Builds Camera Raw's PV2012 tone-map mask (see docs/lrmobile-highlights-shadows-evidence.md and
 * docs/lrmobile-tone-map-llf-evidence.md) at a reduced resolution:
 *
 * 1. `L = log2(flare + gray)` of the area-averaged RIMM gray of ProPhoto linear RGB with the ACR3
 *    render curve undone (MakeGrayLogImage for a non-raw negative, see [ShadowsHighlightsShader]).
 * 2. Gaussian pyramid of L (DNG Gaussian resampling kernel `exp(-2x^2)`, extent 2, widened by the scale).
 * 3. Input statistics on the last pyramid level whose long side exceeds 127 px.
 * 4. Fast local Laplacian filter with alpha = 1, beta = 0: each intensity sample g_k is remapped as
 *    `clamp(L, g_k - sigma, g_k + sigma)`, its Laplacian is taken per level and the output Laplacian
 *    is tent-interpolated between samples by the Gaussian value; the top residual is the Gaussian top.
 * 5. Output statistics on the same level, then `delta = min(Y - L + keyIn - keyOut, 4)`.
 *
 * Outputs: [Result.maskTextureId] RG16F (delta, L) at mask resolution, and [Result.statsTextureId]
 * RGBA16F 3x1: (low, high, mean in gamma) of the input (x = 0) and of the filtered output (x = 1),
 * and the recover threshold / white floor (x = 2, see `shRecoverThreshold`); [Result.curveTextureId]
 * R32F 4096x2 with the inverse ACR3 curve (row 0) and the ACR3 curve (row 1); [Result.amountsTextureId]
 * RGBA16F with the fill (row 0) and recover (row 1) level amounts over the image's log range for the
 * sliders last passed to [renderAmounts]. The mask itself does not depend on the sliders, so it can
 * be kept across frames while only the amount table follows slider changes.
 */
class ShadowsHighlightsMaskGl(private val tag: String) {

    enum class SourceEncoding(val id: Int) {
        /** sRGB transfer-encoded values (display-referred bitmaps). */
        DisplaySrgb(0),

        /** Linear RGB with sRGB primaries. */
        Linear(1),
    }

    data class Result(
        val maskTextureId: Int,
        val statsTextureId: Int,
        val curveTextureId: Int,
        val amountsTextureId: Int,
    )

    private class Level(val width: Int, val height: Int) {
        var gaussian = 0
        val samples = IntArray(SAMPLE_TEXTURES)
        var laplacian = 0
        var output = 0
    }

    private var luminanceProgram = 0
    private var resampleProgram = 0
    private var statsProgram = 0
    private var remapProgram = 0
    private var laplacianProgram = 0
    private var collapseProgram = 0
    private var deltaProgram = 0
    private var constantsProgram = 0
    private var amountsProgram = 0
    private var vertexArray = 0
    private var framebuffer = 0

    private var levels: List<Level> = emptyList()
    private val statsChain = mutableListOf<Triple<Int, Int, Int>>()
    private var statsTexture = 0
    private var rangeTexture = 0
    private var curveTexture = 0
    private var amountsTexture = 0
    private var exportedStatsTexture = 0
    private var maskTexture = 0
    private var maskWidth = 0
    private var maskHeight = 0
    private var statsLevel = 0

    /**
     * Renders the mask for [sourceTextureId], or returns null on failure.
     *
     * Leaves the framebuffer, viewport, program and texture bindings changed; callers bind their own
     * state afterwards.
     */
    fun render(
        sourceTextureId: Int,
        sourceWidth: Int,
        sourceHeight: Int,
        encoding: SourceEncoding,
        exposureEv: Float,
    ): Result? {
        if (!ensurePrograms()) return null
        val longSide = max(sourceWidth, sourceHeight)
        val scale = minOf(1f, MASK_LONG_SIDE.toFloat() / longSide)
        val width = max(1, (sourceWidth * scale).roundToInt())
        val height = max(1, (sourceHeight * scale).roundToInt())
        if (!ensureTargets(width, height)) return null

        GLES30.glBindVertexArray(vertexArray)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)

        val base = levels[0]
        draw(luminanceProgram, base.gaussian, base.width, base.height) {
            bindTexture(luminanceProgram, "uSource", 0, sourceTextureId)
            bindTexture(luminanceProgram, "uCurve", 1, curveTexture)
            GLES30.glUniform2i(uniform(luminanceProgram, "uSourceSize"), sourceWidth, sourceHeight)
            GLES30.glUniform2i(uniform(luminanceProgram, "uMaskSize"), base.width, base.height)
            GLES30.glUniform1i(uniform(luminanceProgram, "uSourceEncoding"), encoding.id)
            GLES30.glUniform1f(uniform(luminanceProgram, "uExposure"), exposureEv)
        }
        for (l in 1 until levels.size) {
            resample(levels[l - 1].gaussian, levels[l].gaussian, levels[l])
        }
        renderStats(levels[statsLevel].gaussian, column = 0)

        for (group in 0 until SAMPLE_TEXTURES) {
            draw(remapProgram, base.samples[group], base.width, base.height) {
                bindTexture(remapProgram, "uLightness", 0, base.gaussian)
                bindTexture(remapProgram, "uStats", 1, statsTexture)
                GLES30.glUniform1i(uniform(remapProgram, "uSampleGroup"), group)
            }
        }
        for (l in 0 until levels.size - 1) {
            val fine = levels[l]
            val coarse = levels[l + 1]
            for (group in 0 until SAMPLE_TEXTURES) {
                resample(fine.samples[group], coarse.samples[group], coarse)
            }
            draw(laplacianProgram, fine.laplacian, fine.width, fine.height) {
                for (group in 0 until SAMPLE_TEXTURES) {
                    bindTexture(laplacianProgram, "uFine$group", group, fine.samples[group])
                    bindTexture(laplacianProgram, "uCoarse$group", SAMPLE_TEXTURES + group, coarse.samples[group])
                }
                bindTexture(laplacianProgram, "uGaussian", 2 * SAMPLE_TEXTURES, fine.gaussian)
                bindTexture(laplacianProgram, "uStats", 2 * SAMPLE_TEXTURES + 1, statsTexture)
            }
        }
        for (l in levels.size - 2 downTo 0) {
            val fine = levels[l]
            draw(collapseProgram, fine.output, fine.width, fine.height) {
                bindTexture(collapseProgram, "uCoarse", 0, levels[l + 1].output)
                bindTexture(collapseProgram, "uLaplacian", 1, fine.laplacian)
            }
        }
        renderStats(levels[statsLevel].output, column = 1)

        draw(deltaProgram, maskTexture, base.width, base.height) {
            bindTexture(deltaProgram, "uOutput", 0, base.output)
            bindTexture(deltaProgram, "uLightness", 1, base.gaussian)
            bindTexture(deltaProgram, "uStats", 2, statsTexture)
        }

        draw(constantsProgram, exportedStatsTexture, 3, 1) {
            bindTexture(constantsProgram, "uStats", 0, statsTexture)
        }

        GLES30.glBindVertexArray(0)
        for (unit in 0..2 * SAMPLE_TEXTURES + 1) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GlUtils.checkGlError("$tag.ShadowsHighlightsMask")
        return Result(maskTexture, exportedStatsTexture, curveTexture, amountsTexture)
    }

    /** Fills the level amount table of the last [render] for the given sliders. */
    fun renderAmounts(highlights: Float, shadows: Float): Boolean {
        if (amountsTexture == 0 || amountsProgram == 0) return false
        GLES30.glBindVertexArray(vertexArray)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        draw(amountsProgram, amountsTexture, ShadowsHighlightsShader.AMOUNT_TABLE_SIZE, 2) {
            bindTexture(amountsProgram, "uStats", 0, exportedStatsTexture)
            GLES30.glUniform1f(uniform(amountsProgram, "uFill"), shadows.coerceIn(-1f, 1f))
            GLES30.glUniform1f(uniform(amountsProgram, "uRecover"), -highlights.coerceIn(-1f, 1f))
        }
        GLES30.glBindVertexArray(0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GlUtils.checkGlError("$tag.ShadowsHighlightsAmounts")
        return true
    }

    /** Binds [result] (null when the adjustment is inactive) to the four given units. */
    fun bind(
        result: Result?,
        maskUnit: Int,
        maskLocation: Int,
        statsUnit: Int,
        statsLocation: Int,
        curveUnit: Int,
        curveLocation: Int,
        amountsUnit: Int,
        amountsLocation: Int,
    ) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + maskUnit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, result?.maskTextureId ?: 0)
        GLES30.glUniform1i(maskLocation, maskUnit)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + statsUnit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, result?.statsTextureId ?: 0)
        GLES30.glUniform1i(statsLocation, statsUnit)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + curveUnit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, result?.curveTextureId ?: 0)
        GLES30.glUniform1i(curveLocation, curveUnit)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + amountsUnit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, result?.amountsTextureId ?: 0)
        GLES30.glUniform1i(amountsLocation, amountsUnit)
    }

    /** Forget handles after the owning EGL context has been lost. */
    fun reset() {
        levels = emptyList()
        statsChain.clear()
        statsTexture = 0
        rangeTexture = 0
        curveTexture = 0
        amountsTexture = 0
        exportedStatsTexture = 0
        maskTexture = 0
        maskWidth = 0
        maskHeight = 0
        statsLevel = 0
        luminanceProgram = 0
        resampleProgram = 0
        statsProgram = 0
        remapProgram = 0
        laplacianProgram = 0
        collapseProgram = 0
        deltaProgram = 0
        constantsProgram = 0
        amountsProgram = 0
        vertexArray = 0
        framebuffer = 0
    }

    fun release() {
        releaseTargets()
        for (program in intArrayOf(
            luminanceProgram, resampleProgram, statsProgram, remapProgram,
            laplacianProgram, collapseProgram, deltaProgram, constantsProgram, amountsProgram,
        )) {
            if (program != 0) GLES30.glDeleteProgram(program)
        }
        luminanceProgram = 0
        resampleProgram = 0
        statsProgram = 0
        remapProgram = 0
        laplacianProgram = 0
        collapseProgram = 0
        deltaProgram = 0
        constantsProgram = 0
        amountsProgram = 0
        if (vertexArray != 0) GLES30.glDeleteVertexArrays(1, intArrayOf(vertexArray), 0)
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        vertexArray = 0
        framebuffer = 0
    }

    private fun resample(source: Int, target: Int, targetLevel: Level) {
        draw(resampleProgram, target, targetLevel.width, targetLevel.height) {
            bindTexture(resampleProgram, "uSource", 0, source)
            GLES30.glUniform2i(uniform(resampleProgram, "uTargetSize"), targetLevel.width, targetLevel.height)
        }
    }

    /**
     * Two 4x4 reduction chains into column [column]: the log2 range first (into the range texture),
     * then the mean of the sRGB-encoded position inside that range (into the stats texture).
     */
    private fun renderStats(sourceTexture: Int, column: Int) {
        for (pass in 0..1) {
            var input = sourceTexture
            var seed = 1
            for ((index, entry) in statsChain.withIndex()) {
                val (texture, width, height) = entry
                val last = index == statsChain.lastIndex
                val target = when {
                    !last -> texture
                    pass == 0 -> rangeTexture
                    else -> statsTexture
                }
                draw(statsProgram, target, width, height, column.takeIf { last }) {
                    bindTexture(statsProgram, "uSource", 0, input)
                    bindTexture(statsProgram, "uRange", 1, rangeTexture)
                    GLES30.glUniform1i(uniform(statsProgram, "uSeed"), seed)
                    GLES30.glUniform1i(uniform(statsProgram, "uPass"), pass)
                    GLES30.glUniform1i(uniform(statsProgram, "uRangeColumn"), column)
                    GLES30.glUniform1i(uniform(statsProgram, "uColumn"), if (last) column else 0)
                }
                input = texture
                seed = 0
            }
        }
    }

    private inline fun draw(
        program: Int,
        target: Int,
        width: Int,
        height: Int,
        column: Int? = null,
        setup: () -> Unit,
    ) {
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, target, 0,
        )
        if (column != null) GLES30.glViewport(column, 0, 1, 1) else GLES30.glViewport(0, 0, width, height)
        GLES30.glUseProgram(program)
        setup()
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
    }

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(uniform(program, name), unit)
    }

    private fun uniform(program: Int, name: String): Int = GLES30.glGetUniformLocation(program, name)

    private fun ensurePrograms(): Boolean {
        if (luminanceProgram == 0) luminanceProgram = createProgram(LUMINANCE_SHADER, "luminance")
        if (resampleProgram == 0) resampleProgram = createProgram(RESAMPLE_SHADER, "resample")
        if (statsProgram == 0) statsProgram = createProgram(STATS_SHADER, "stats")
        if (remapProgram == 0) remapProgram = createProgram(REMAP_SHADER, "remap")
        if (laplacianProgram == 0) laplacianProgram = createProgram(LAPLACIAN_SHADER, "laplacian")
        if (collapseProgram == 0) collapseProgram = createProgram(COLLAPSE_SHADER, "collapse")
        if (deltaProgram == 0) deltaProgram = createProgram(DELTA_SHADER, "delta")
        if (constantsProgram == 0) constantsProgram = createProgram(CONSTANTS_SHADER, "constants")
        if (amountsProgram == 0) amountsProgram = createProgram(AMOUNTS_SHADER, "amounts")
        if (vertexArray == 0) {
            val ids = IntArray(1)
            GLES30.glGenVertexArrays(1, ids, 0)
            vertexArray = ids[0]
        }
        if (framebuffer == 0) {
            val ids = IntArray(1)
            GLES30.glGenFramebuffers(1, ids, 0)
            framebuffer = ids[0]
        }
        return luminanceProgram != 0 && resampleProgram != 0 && statsProgram != 0 && remapProgram != 0 &&
            laplacianProgram != 0 && collapseProgram != 0 && deltaProgram != 0 && constantsProgram != 0 && amountsProgram != 0 &&
            vertexArray != 0 && framebuffer != 0
    }

    private fun createProgram(fragmentSource: String, name: String): Int {
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource)
        val program = if (vertexShader != 0 && fragmentShader != 0) {
            GlUtils.linkProgram(vertexShader, fragmentShader)
        } else {
            0
        }
        if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
        if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
        if (program == 0) PLog.e(tag, "Failed to create shadows/highlights mask $name program")
        return program
    }

    private fun ensureTargets(width: Int, height: Int): Boolean {
        if (maskTexture != 0 && width == maskWidth && height == maskHeight) return true
        releaseTargets()

        val built = mutableListOf<Level>()
        var w = width
        var h = height
        while (true) {
            built += Level(w, h)
            if ((w == 1 && h == 1) || built.size == MAX_LEVELS) break
            w = ceil(w / 2.0).toInt()
            h = ceil(h / 2.0).toInt()
        }
        for (level in built) {
            level.gaussian = createTexture(GLES30.GL_R16F, level.width, level.height)
            level.laplacian = createTexture(GLES30.GL_R16F, level.width, level.height)
            // The collapse never writes the top level: its output is the Gaussian top.
            level.output = if (level === built.last()) level.gaussian else
                createTexture(GLES30.GL_R16F, level.width, level.height)
            for (group in 0 until SAMPLE_TEXTURES) {
                level.samples[group] = createTexture(GLES30.GL_RGBA16F, level.width, level.height)
            }
        }
        levels = built
        statsLevel = built.indexOfLast { max(it.width, it.height) > 127 }.coerceAtLeast(0)

        var sw = built[statsLevel].width
        var sh = built[statsLevel].height
        do {
            sw = ceil(sw / 4.0).toInt()
            sh = ceil(sh / 4.0).toInt()
            statsChain += Triple(createTexture(GLES30.GL_RGBA16F, sw, sh), sw, sh)
        } while (sw > 1 || sh > 1)
        statsTexture = createTexture(GLES30.GL_RGBA16F, 2, 1)
        rangeTexture = createTexture(GLES30.GL_RGBA16F, 2, 1)
        curveTexture = createCurveTexture()
        amountsTexture = createTexture(GLES30.GL_RGBA16F, ShadowsHighlightsShader.AMOUNT_TABLE_SIZE, 2)
        exportedStatsTexture = createTexture(GLES30.GL_RGBA16F, 3, 1)
        maskTexture = createTexture(GLES30.GL_RG16F, width, height)

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        for (texture in intArrayOf(maskTexture, built[0].samples[0], built[0].gaussian)) {
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0,
            )
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
                PLog.e(tag, "Shadows/highlights mask framebuffer incomplete: 0x${Integer.toHexString(status)}")
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                releaseTargets()
                return false
            }
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        maskWidth = width
        maskHeight = height
        return true
    }

    private fun createTexture(format: Int, width: Int, height: Int): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, ids[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return ids[0]
    }

    private fun createCurveTexture(): Int {
        val samples = ByteBuffer.allocateDirect(2 * CURVE_SIZE * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        for (index in 0 until CURVE_SIZE) samples.put(ACR3Curve.inputForOutput(index.toFloat() / (CURVE_SIZE - 1)))
        for (index in 0 until CURVE_SIZE) samples.put(ACR3Curve.outputForInput(index.toFloat() / (CURVE_SIZE - 1)))
        samples.flip()
        val texture = createTexture(GLES30.GL_R32F, CURVE_SIZE, 2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, CURVE_SIZE, 2, GLES30.GL_RED, GLES30.GL_FLOAT, samples)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return texture
    }

    private fun releaseTargets() {
        val textures = mutableListOf<Int>()
        for ((index, level) in levels.withIndex()) {
            textures += level.gaussian
            textures += level.laplacian
            if (index != levels.lastIndex) textures += level.output
            textures += level.samples.toList()
        }
        statsChain.forEach { textures += it.first }
        textures += statsTexture
        textures += rangeTexture
        textures += curveTexture
        textures += amountsTexture
        textures += exportedStatsTexture
        textures += maskTexture
        val live = textures.filter { it != 0 }.toIntArray()
        if (live.isNotEmpty()) GLES30.glDeleteTextures(live.size, live, 0)
        levels = emptyList()
        statsChain.clear()
        statsTexture = 0
        rangeTexture = 0
        curveTexture = 0
        amountsTexture = 0
        exportedStatsTexture = 0
        maskTexture = 0
        maskWidth = 0
        maskHeight = 0
        statsLevel = 0
    }

    companion object {
        /**
         * Long side of the mask; Camera Raw filters a reduced negative level. The local Laplacian
         * result depends on it, so preview and capture must use the same value.
         */
        internal const val MASK_LONG_SIDE = 768

        /** Pyramid depth limit of cr_gaussian_pyramid. */
        private const val MAX_LEVELS = 16

        /** Remap samples are packed four per RGBA texture. */
        private const val SAMPLE_TEXTURES = 4
        private const val SAMPLE_COUNT = SAMPLE_TEXTURES * 4

        /** Samples per ACR3 table row (R32F, interpolated in the shader). */
        private const val CURVE_SIZE = 4096

        /** Upper bound of source taps per mask texel and axis during the luminance reduction. */
        private const val REDUCE_MAX_TAPS = 8

        private val VERTEX_SHADER = """
            #version 300 es
            void main() {
                vec2 position = vec2(float((gl_VertexID << 1) & 2), float(gl_VertexID & 2));
                gl_Position = vec4(position * 2.0 - 1.0, 0.0, 1.0);
            }
        """.trimIndent()

        private val HEADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
        """.trimIndent()

        /** Gaussian resampling of `source` at destination texel `dst` (DNG `exp(-2x^2)`, extent 2). */
        private val RESAMPLE_GLSL = """
            vec4 shResample(sampler2D source, ivec2 dst, ivec2 dstSize) {
                ivec2 srcSize = textureSize(source, 0);
                vec2 scale = vec2(srcSize) / vec2(dstSize);
                vec2 width = max(scale, vec2(1.0));
                vec2 center = (vec2(dst) + 0.5) * scale;
                ivec2 first = ivec2(floor(center - 2.0 * width));
                vec4 sum = vec4(0.0);
                float weightSum = 0.0;
                for (int j = 0; j < 10; j++) {
                    int y = first.y + j;
                    float dy = (float(y) + 0.5 - center.y) / width.y;
                    if (dy > 2.0) break;
                    if (dy < -2.0) continue;
                    float wy = exp(-2.0 * dy * dy);
                    for (int i = 0; i < 10; i++) {
                        int x = first.x + i;
                        float dx = (float(x) + 0.5 - center.x) / width.x;
                        if (dx > 2.0) break;
                        if (dx < -2.0) continue;
                        float w = wy * exp(-2.0 * dx * dx);
                        sum += w * texelFetch(source, clamp(ivec2(x, y), ivec2(0), srcSize - 1), 0);
                        weightSum += w;
                    }
                }
                return sum / max(weightSum, 1e-6);
            }
        """.trimIndent()

        /** LLF sample placement and sigma from the input statistics (texel 0 of uStats). */
        private val SAMPLING_GLSL = """
            const int SH_SAMPLE_COUNT = $SAMPLE_COUNT;

            // Returns (lo, step, sigma).
            vec3 shLlfSampling(sampler2D stats) {
                vec4 s = texelFetch(stats, ivec2(0, 0), 0);
                float lo = s.x;
                float hi = max(s.y, s.x + 1e-3);
                float range = hi - lo;
                // Camera Raw piecewise-linear sigma table over the input dynamic range (stops).
                float knotX[6] = float[6](2.0, 3.5, 5.0, 6.5, 12.0, 14.0);
                float knotY[6] = float[6](1.4, 1.6, 2.3, 2.5, 2.5, 2.0);
                float spread = knotY[0];
                if (range >= knotX[5]) {
                    spread = knotY[5];
                } else {
                    for (int i = 0; i < 5; i++) {
                        if (range >= knotX[i] && range < knotX[i + 1]) {
                            spread = mix(knotY[i], knotY[i + 1], (range - knotX[i]) / (knotX[i + 1] - knotX[i]));
                        }
                    }
                }
                float sigma = log2(${ShadowsHighlightsShader.FLARE_GLSL} + spread);
                return vec3(lo, range / float(SH_SAMPLE_COUNT - 1), sigma);
            }
        """.trimIndent()

        private val LUMINANCE_SHADER = """
            $HEADER
            uniform sampler2D uSource;
            uniform sampler2D uCurve;
            uniform ivec2 uSourceSize;
            uniform int uSourceEncoding;
            uniform float uExposure;
            uniform ivec2 uMaskSize;
            out vec4 fragColor;

            ${ShadowsHighlightsShader.LOG_GLSL}

            vec3 maskSrgbToLinear(vec3 value) {
                vec3 v = max(value, vec3(0.0));
                vec3 low = v / 12.92;
                vec3 high = pow((v + 0.055) / 1.055, vec3(2.4));
                return mix(low, high, step(vec3(0.04045), v));
            }

            void main() {
                ivec2 dst = ivec2(gl_FragCoord.xy);
                vec2 scale = vec2(uSourceSize) / vec2(uMaskSize);
                ivec2 start = min(ivec2(floor(vec2(dst) * scale)), uSourceSize - 1);
                ivec2 end = clamp(ivec2(floor(vec2(dst + 1) * scale)), start + 1, uSourceSize);
                ivec2 stride = max((end - start + ($REDUCE_MAX_TAPS - 1)) / $REDUCE_MAX_TAPS, ivec2(1));
                float sum = 0.0;
                float count = 0.0;
                for (int y = 0; y < $REDUCE_MAX_TAPS; y++) {
                    int py = start.y + y * stride.y;
                    if (py >= end.y) break;
                    for (int x = 0; x < $REDUCE_MAX_TAPS; x++) {
                        int px = start.x + x * stride.x;
                        if (px >= end.x) break;
                        vec3 color = texelFetch(uSource, ivec2(px, py), 0).rgb;
                        if (color != color) color = vec3(0.0);
                        vec3 linearColor = uSourceEncoding == 0 ? maskSrgbToLinear(color) : color;
                        sum += shGray(shToSceneProPhoto(uCurve, linearColor * exp2(uExposure)));
                        count += 1.0;
                    }
                }
                fragColor = vec4(shLinearToLog2(sum / max(count, 1.0)), 0.0, 0.0, 1.0);
            }
        """.trimStart()

        private val RESAMPLE_SHADER = """
            $HEADER
            uniform sampler2D uSource;
            uniform ivec2 uTargetSize;
            out vec4 fragColor;
            $RESAMPLE_GLSL
            void main() {
                fragColor = shResample(uSource, ivec2(gl_FragCoord.xy), uTargetSize);
            }
        """.trimStart()

        private val STATS_SHADER = """
            $HEADER
            uniform sampler2D uSource;
            uniform sampler2D uRange;
            uniform int uSeed;
            uniform int uPass;
            uniform int uRangeColumn;
            uniform int uColumn;
            out vec4 fragColor;
            ${ShadowsHighlightsShader.LOG_GLSL}
            ${ShadowsHighlightsShader.STATS_GLSL}

            // Pass 0: (min L, max L). Pass 1: (low, high, mean of the sRGB-encoded linear position
            // inside [low, high]). Seeds read L from .r.
            void main() {
                ivec2 size = textureSize(uSource, 0);
                ivec2 origin = (ivec2(gl_FragCoord.xy) - ivec2(uColumn, 0)) * 4;
                vec4 range = texelFetch(uRange, ivec2(uRangeColumn, 0), 0);
                float lo = shLog2ToLinear(range.x);
                float hi = shLog2ToLinear(range.y);
                vec4 result = uPass == 0 ? vec4(1e4, -1e4, 0.0, 1.0) : vec4(range.x, range.y, 0.0, 1.0);
                for (int j = 0; j < 4; j++) {
                    for (int i = 0; i < 4; i++) {
                        vec4 v = texelFetch(uSource, min(origin + ivec2(i, j), size - 1), 0);
                        if (uPass == 0) {
                            if (uSeed != 0) v = vec4(v.r, v.r, 0.0, 1.0);
                            result.x = min(result.x, v.x);
                            result.y = max(result.y, v.y);
                        } else {
                            if (uSeed != 0) {
                                float t = (shLog2ToLinear(v.r) - lo) / max(hi - lo, 1e-20);
                                v.z = shSrgbEncode(clamp(t, 0.0, 1.0));
                            }
                            result.z += v.z / 16.0;
                        }
                    }
                }
                fragColor = result;
            }
        """.trimStart()

        private val REMAP_SHADER = """
            $HEADER
            uniform sampler2D uLightness;
            uniform sampler2D uStats;
            uniform int uSampleGroup;
            out vec4 fragColor;
            ${ShadowsHighlightsShader.LOG_GLSL}
            $SAMPLING_GLSL
            void main() {
                vec3 sampling = shLlfSampling(uStats);
                float l = texelFetch(uLightness, ivec2(gl_FragCoord.xy), 0).r;
                vec4 g = sampling.x + sampling.y * (vec4(0.0, 1.0, 2.0, 3.0) + float(uSampleGroup * 4));
                fragColor = clamp(vec4(l), g - sampling.z, g + sampling.z);
            }
        """.trimStart()

        private val LAPLACIAN_SHADER = """
            $HEADER
            uniform sampler2D uFine0;
            uniform sampler2D uFine1;
            uniform sampler2D uFine2;
            uniform sampler2D uFine3;
            uniform sampler2D uCoarse0;
            uniform sampler2D uCoarse1;
            uniform sampler2D uCoarse2;
            uniform sampler2D uCoarse3;
            uniform sampler2D uGaussian;
            uniform sampler2D uStats;
            out vec4 fragColor;
            ${ShadowsHighlightsShader.LOG_GLSL}
            $RESAMPLE_GLSL
            $SAMPLING_GLSL

            float pick(vec4 v, int c) {
                return c == 0 ? v.x : (c == 1 ? v.y : (c == 2 ? v.z : v.w));
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                ivec2 size = textureSize(uFine0, 0);
                vec4 lap[4];
                lap[0] = texelFetch(uFine0, p, 0) - shResample(uCoarse0, p, size);
                lap[1] = texelFetch(uFine1, p, 0) - shResample(uCoarse1, p, size);
                lap[2] = texelFetch(uFine2, p, 0) - shResample(uCoarse2, p, size);
                lap[3] = texelFetch(uFine3, p, 0) - shResample(uCoarse3, p, size);
                vec3 sampling = shLlfSampling(uStats);
                float g = texelFetch(uGaussian, p, 0).r;
                float t = clamp((g - sampling.x) / sampling.y, 0.0, float(SH_SAMPLE_COUNT - 1));
                int k0 = min(int(floor(t)), SH_SAMPLE_COUNT - 2);
                float f = t - float(k0);
                int k1 = k0 + 1;
                float a = pick(lap[k0 / 4], k0 - (k0 / 4) * 4);
                float b = pick(lap[k1 / 4], k1 - (k1 / 4) * 4);
                fragColor = vec4(mix(a, b, f), 0.0, 0.0, 1.0);
            }
        """.trimStart()

        private val COLLAPSE_SHADER = """
            $HEADER
            uniform sampler2D uCoarse;
            uniform sampler2D uLaplacian;
            out vec4 fragColor;
            $RESAMPLE_GLSL
            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                ivec2 size = textureSize(uLaplacian, 0);
                float value = shResample(uCoarse, p, size).r + texelFetch(uLaplacian, p, 0).r;
                fragColor = vec4(value, 0.0, 0.0, 1.0);
            }
        """.trimStart()

        private val DELTA_SHADER = """
            $HEADER
            uniform sampler2D uOutput;
            uniform sampler2D uLightness;
            uniform sampler2D uStats;
            out vec4 fragColor;
            ${ShadowsHighlightsShader.LOG_GLSL}
            ${ShadowsHighlightsShader.STATS_GLSL}
            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                float l = texelFetch(uLightness, p, 0).r;
                float y = texelFetch(uOutput, p, 0).r;
                float keyIn = shStatsKey(texelFetch(uStats, ivec2(0, 0), 0));
                float keyOut = shStatsKey(texelFetch(uStats, ivec2(1, 0), 0));
                fragColor = vec4(min(y - l + keyIn - keyOut, 4.0), l, 0.0, 1.0);
            }
        """.trimStart()

        private val CONSTANTS_SHADER = """
            $HEADER
            uniform sampler2D uStats;
            out vec4 fragColor;
            ${ShadowsHighlightsShader.LOG_GLSL}
            ${ShadowsHighlightsShader.STATS_GLSL}
            ${ShadowsHighlightsShader.TONE_MAP_GLSL}
            void main() {
                int column = int(gl_FragCoord.x);
                vec4 statsIn = texelFetch(uStats, ivec2(0, 0), 0);
                vec4 statsOut = texelFetch(uStats, ivec2(1, 0), 0);
                if (column == 0) {
                    fragColor = statsIn;
                } else if (column == 1) {
                    fragColor = statsOut;
                } else {
                    fragColor = vec4(shRecoverThreshold(statsIn, statsOut), 0.0, 1.0);
                }
            }
        """.trimStart()

        private val AMOUNTS_SHADER = """
            $HEADER
            uniform sampler2D uStats;
            uniform float uFill;
            uniform float uRecover;
            out vec4 fragColor;
            ${ShadowsHighlightsShader.LOG_GLSL}
            ${ShadowsHighlightsShader.STATS_GLSL}
            ${ShadowsHighlightsShader.TONE_MAP_GLSL}
            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec4 statsIn = texelFetch(uStats, ivec2(0, 0), 0);
                vec4 statsOut = texelFetch(uStats, ivec2(1, 0), 0);
                vec2 recoverCurve = texelFetch(uStats, ivec2(2, 0), 0).xy;
                vec2 domain = shAmountDomain(statsIn);
                float x = mix(domain.x, domain.y, float(p.x) / float(SH_AMOUNT_TABLE_SIZE - 1));
                vec4 fillLevels;
                vec4 recoverLevels;
                shLevelAmountsAt(x, shToneMapTargets(statsIn, statsOut), statsIn, recoverCurve,
                    uFill, uRecover, fillLevels, recoverLevels);
                fragColor = p.y == 0 ? fillLevels : recoverLevels;
            }
        """.trimStart()
    }
}
