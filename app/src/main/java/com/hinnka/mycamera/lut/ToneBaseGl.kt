package com.hinnka.mycamera.lut

import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlin.math.max

/**
 * Log2-luminance pyramid for [ShadowsHighlightsShader].
 *
 * Level 0 is rendered by the host's colour pass in `uToneBaseOnly` mode and holds
 * `log2(flare + Y)` at 1/4 of the output, so the base is exposure- and pipeline-consistent with
 * the pixels it will adjust. Levels 1 and 2 are 1/8 and 1/16 of the output and are produced here
 * by 2x2 box reductions. There is deliberately no 1/32 level: a 2x2 joint-bilateral upsample can
 * recover the base across an edge while each coarse texel still has a same-side neighbour, which
 * holds up to 1/16 but not at 1/32 (measured on a 3.5 stop step edge).
 *
 * The three low levels are separate textures rather than one mip chain: rendering level `i` while
 * sampling level `i - 1` never samples the texture bound to the draw framebuffer, which would be a
 * feedback loop on some drivers.
 */
internal class ToneBaseGl(private val tag: String) {
    private class Level {
        var texture = 0
        var framebuffer = 0
        var width = 0
        var height = 0
    }

    private val levels = Array(LEVEL_COUNT) { Level() }
    private var program = 0
    private var programFailed = false
    private var statsProgram = 0
    private var statsFailed = false
    private var statsTexture = 0
    private var statsFramebuffer = 0
    private val uniformLocations = mutableMapOf<Int, Int>()

    /** Size of level 0. Returns false when the target cannot be allocated. */
    fun prepare(width: Int, height: Int): Boolean {
        val levelWidth = max(1, width / BASE_DIVISOR)
        val levelHeight = max(1, height / BASE_DIVISOR)
        if (levels[0].texture != 0 &&
            levels[0].width == levelWidth &&
            levels[0].height == levelHeight
        ) {
            return true
        }
        release()
        for (index in 0 until LEVEL_COUNT) {
            val targetWidth = max(1, levelWidth shr index)
            val targetHeight = max(1, levelHeight shr index)
            if (!createLevel(levels[index], targetWidth, targetHeight)) {
                release()
                return false
            }
        }
        return true
    }

    /** Binds the level-0 framebuffer and returns false when the pyramid is not allocated. */
    fun bindLevel0(): Boolean {
        val level = levels[0]
        if (level.texture == 0 || level.framebuffer == 0) return false
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, level.framebuffer)
        GLES30.glViewport(0, 0, level.width, level.height)
        return true
    }

    /** Reduces level 0 into the three base levels. Draws with [drawQuad]'s fullscreen geometry. */
    fun buildLevels(drawQuad: (Int) -> Unit) {
        val activeProgram = ensureProgram() ?: return
        for (index in 1 until LEVEL_COUNT) {
            val source = levels[index - 1]
            val target = levels[index]
            if (source.texture == 0 || target.framebuffer == 0) continue
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebuffer)
            GLES30.glViewport(0, 0, target.width, target.height)
            GLES30.glUseProgram(activeProgram)
            GLES30.glDisable(GLES30.GL_BLEND)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, source.texture)
            GLES30.glUniform1i(location(activeProgram, "uToneBaseSource"), 0)
            GLES30.glUniform2f(
                location(activeProgram, "uToneBaseSourceTexel"),
                1f / source.width.toFloat(),
                1f / source.height.toFloat()
            )
            drawQuad(activeProgram)
        }
        renderStats(drawQuad)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        GLES30.glUseProgram(0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    /** Binds the 1x1 statistics texture as `uToneStats` (unit 12). */
    private fun bindStats(program: Int) {
        if (statsTexture == 0) return
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + STATS_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, statsTexture)
        GLES30.glUniform1i(location(program, "uToneStats"), STATS_TEXTURE_UNIT)
    }

    /** Binds levels 0..2 as `uToneBase1..3` on the units declared by the shader object. */
    fun bind(program: Int) {
        val units = ShadowsHighlightsShader.TONE_BASE_TEXTURE_UNITS
        for (index in 0 until LEVEL_COUNT) {
            val level = levels[index]
            val unit = units[index]
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, level.texture)
            GLES30.glUniform1i(location(program, "uToneBase${index + 1}"), unit)
        }
        bindStats(program)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
    }

    fun release() {
        for (level in levels) {
            if (level.texture != 0) GLES30.glDeleteTextures(1, intArrayOf(level.texture), 0)
            if (level.framebuffer != 0) {
                GLES30.glDeleteFramebuffers(1, intArrayOf(level.framebuffer), 0)
            }
            level.texture = 0
            level.framebuffer = 0
            level.width = 0
            level.height = 0
        }
        releaseStatsTarget()
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
        if (statsProgram != 0) {
            GLES30.glDeleteProgram(statsProgram)
            statsProgram = 0
        }
        uniformLocations.clear()
        programFailed = false
    }

    /** Drops GL objects that belong to a destroyed context. */
    fun reset() {
        for (level in levels) {
            level.texture = 0
            level.framebuffer = 0
            level.width = 0
            level.height = 0
        }
        program = 0
        statsProgram = 0
        statsTexture = 0
        statsFramebuffer = 0
        uniformLocations.clear()
        programFailed = false
        statsFailed = false
    }

    private fun location(program: Int, name: String): Int {
        uniformLocations[name.hashCode() * 31 + program]?.let { return it }
        val location = GLES30.glGetUniformLocation(program, name)
        uniformLocations[name.hashCode() * 31 + program] = location
        return location
    }

    /**
     * Reduces level 2 into a 1x1 (low, high, mean) texture of the log2 luminance distribution.
     * The shader uses it to place its thresholds relative to the image instead of absolute
     * stops, so a low-key frame still gets a working highlight range and a dark frame keeps its
     * black point. 32x32 evenly spaced bilinear taps are enough: the source is a /16 base.
     */
    private fun renderStats(drawQuad: (Int) -> Unit) {
        if (!ensureStatsTarget()) return
        val activeProgram = ensureStatsProgram() ?: return
        if (levels[LEVEL_COUNT - 1].texture == 0) return
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, statsFramebuffer)
        GLES30.glViewport(0, 0, 1, 1)
        GLES30.glUseProgram(activeProgram)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, levels[LEVEL_COUNT - 1].texture)
        GLES30.glUniform1i(location(activeProgram, "uToneStatsSource"), 0)
        drawQuad(activeProgram)
    }

    private fun ensureStatsTarget(): Boolean {
        if (statsTexture != 0 && statsFramebuffer != 0) return true
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        statsTexture = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, statsTexture)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, 1, 1)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        statsFramebuffer = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, statsFramebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            statsTexture,
            0,
        )
        val complete = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
            GLES30.GL_FRAMEBUFFER_COMPLETE
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        if (!complete) {
            PLog.e(tag, "Tone base stats target is incomplete")
            releaseStatsTarget()
            return false
        }
        return true
    }

    private fun ensureStatsProgram(): Int? {
        if (statsProgram != 0) return statsProgram
        if (statsFailed) return null
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, STATS_SHADER)
        if (vertexShader == 0 || fragmentShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            PLog.e(tag, "Unable to compile tone base stats shader")
            statsFailed = true
            return null
        }
        val linked = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (linked == 0) {
            PLog.e(tag, "Unable to link tone base stats program")
            statsFailed = true
            return null
        }
        statsProgram = linked
        return statsProgram
    }

    private fun releaseStatsTarget() {
        if (statsTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(statsTexture), 0)
        if (statsFramebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(statsFramebuffer), 0)
        statsTexture = 0
        statsFramebuffer = 0
    }

    private fun ensureProgram(): Int? {
        if (program != 0) return program
        if (programFailed) return null
        val vertexShader = GlUtils.compileShader(GLES30.GL_VERTEX_SHADER, Shaders.SIMPLE_VERTEX_SHADER)
        val fragmentShader = GlUtils.compileShader(GLES30.GL_FRAGMENT_SHADER, DOWNSAMPLE_SHADER)
        if (vertexShader == 0 || fragmentShader == 0) {
            if (vertexShader != 0) GLES30.glDeleteShader(vertexShader)
            if (fragmentShader != 0) GLES30.glDeleteShader(fragmentShader)
            PLog.e(tag, "Unable to compile tone base downsample shader")
            programFailed = true
            return null
        }
        val linked = GlUtils.linkProgram(vertexShader, fragmentShader)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (linked == 0) {
            PLog.e(tag, "Unable to link tone base downsample program")
            programFailed = true
            return null
        }
        program = linked
        return program
    }

    private fun createLevel(level: Level, width: Int, height: Int): Boolean {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        level.texture = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, level.texture)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        level.framebuffer = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, level.framebuffer)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            level.texture,
            0,
        )
        val complete = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) ==
            GLES30.GL_FRAMEBUFFER_COMPLETE
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        if (!complete) {
            PLog.e(tag, "Tone base target ${width}x$height is incomplete")
            return false
        }
        level.width = width
        level.height = height
        return true
    }

    private companion object {
        const val LEVEL_COUNT = 3
        const val BASE_DIVISOR = 4
        const val STATS_TEXTURE_UNIT = 12
        const val STATS_SAMPLE_GRID = 32

        val STATS_SHADER = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uToneStatsSource;
            void main() {
                float low = 1.0e9;
                float high = -1.0e9;
                float sum = 0.0;
                for (int y = 0; y < $STATS_SAMPLE_GRID; ++y) {
                    for (int x = 0; x < $STATS_SAMPLE_GRID; ++x) {
                        vec2 uv = (vec2(float(x), float(y)) + 0.5) / float($STATS_SAMPLE_GRID);
                        float value = texture(uToneStatsSource, uv).r;
                        low = min(low, value);
                        high = max(high, value);
                        sum += value;
                    }
                }
                float count = float($STATS_SAMPLE_GRID * $STATS_SAMPLE_GRID);
                fragColor = vec4(low, high, sum / count, 1.0);
            }
        """.trimIndent()

        // 2x2 box through four bilinear taps at the corners of the source texel footprint.
        val DOWNSAMPLE_SHADER = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uToneBaseSource;
            uniform vec2 uToneBaseSourceTexel;
            void main() {
                vec2 offset = uToneBaseSourceTexel * 0.5;
                float sum = texture(uToneBaseSource, vTexCoord + vec2(-offset.x, -offset.y)).r;
                sum += texture(uToneBaseSource, vTexCoord + vec2(offset.x, -offset.y)).r;
                sum += texture(uToneBaseSource, vTexCoord + vec2(-offset.x, offset.y)).r;
                sum += texture(uToneBaseSource, vTexCoord + vec2(offset.x, offset.y)).r;
                fragColor = vec4(sum * 0.25, 0.0, 0.0, 1.0);
            }
        """.trimIndent()
    }
}
