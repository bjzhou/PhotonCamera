package com.hinnka.mycamera.raw

import android.opengl.GLES30
import java.nio.ByteBuffer
import java.nio.ByteOrder

internal class SpektrafilmGraphGl(private val quad: RawFullscreenQuad) {
    private val programs = mutableMapOf<String, Int>()
    private val targets = mutableMapOf<String, Surface>()
    val tables = Tables()

    fun target(name: String, width: Int, height: Int, format: Int = GLES30.GL_RGBA32F): Surface =
        targets.getOrPut(name) { Surface() }.apply { ensure(width, height, format) }

    fun draw(
        name: String, shader: String, surface: Surface,
        bind: (Int) -> Unit,
    ) = draw(name, shader, surface.framebuffer, 0, 0, surface.width, surface.height, bind)

    fun draw(
        name: String, shader: String, framebuffer: Int, x: Int, y: Int, width: Int, height: Int,
        bind: (Int) -> Unit,
    ) {
        val program = programs.getOrPut(name) {
            quad.createProgram("$HEADER\n$shader", "Spektrafilm $name").also {
                check(it != 0) { "Cannot create Spektrafilm $name shader" }
            }
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(x, y, width, height)
        GLES30.glUseProgram(program)
        GLES30.glDisable(GLES30.GL_BLEND)
        bind(program)
        quad.bindIdentityTextureMatrix(program)
        quad.draw(program)
        val error = GLES30.glGetError()
        check(error == GLES30.GL_NO_ERROR) { "Spektrafilm $name draw failed, GL error=0x${error.toString(16)}" }
    }

    fun copy(source: Int, target: Surface) {
        if (source == target.texture) return
        draw("copy", COPY, target) { texture(it, "uSource", 0, source) }
    }

    fun release() {
        programs.values.forEach(GLES30::glDeleteProgram)
        programs.clear()
        releaseTargets()
        tables.release()
    }

    fun releaseTargets() {
        targets.values.forEach(Surface::release)
        targets.clear()
    }

    fun releaseTarget(name: String) {
        targets.remove(name)?.release()
    }

    class Surface {
        var texture = 0
            private set
        var framebuffer = 0
            private set
        var width = 0
            private set
        var height = 0
            private set
        private var internalFormat = 0

        fun ensure(width: Int, height: Int, format: Int) {
            if (this.width == width && this.height == height && internalFormat == format) return
            release()
            try {
                texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
                framebuffer = IntArray(1).also { GLES30.glGenFramebuffers(1, it, 0) }[0]
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
                GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
                configure(GLES30.GL_TEXTURE_2D, GLES30.GL_NEAREST)
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
                GLES30.glFramebufferTexture2D(
                    GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0,
                )
                val error = GLES30.glGetError()
                check(texture != 0 && framebuffer != 0 && error == GLES30.GL_NO_ERROR &&
                    GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE
                ) { "Unable to allocate Spektrafilm ${width}x$height target, GL error=$error" }
                this.width = width
                this.height = height
                internalFormat = format
            } catch (failure: Throwable) {
                release()
                throw failure
            }
        }

        fun release() {
            if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
            texture = 0
            framebuffer = 0
            width = 0
            height = 0
            internalFormat = 0
        }
    }

    class Tables {
        val filmExposure = Table(GLES30.GL_TEXTURE_3D)
        val filmCurves = Table(GLES30.GL_TEXTURE_2D)
        val paperExposure = Table(GLES30.GL_TEXTURE_3D)
        val paperCurves = Table(GLES30.GL_TEXTURE_2D)
        val scan = Table(GLES30.GL_TEXTURE_3D)
        val gamut = Table(GLES30.GL_TEXTURE_3D)
        private var key: String? = null

        fun prepare(graph: SpectralFilmGraph) {
            if (key == graph.sourceKey) return
            release()
            try {
                filmExposure.upload(graph.filmExposure, graph.size)
                filmCurves.upload(graph.filmCurves, graph.filmCurveSize, graph.filmCurveRows)
                if (graph.printing) {
                    paperExposure.upload(graph.paperExposure, graph.size)
                    paperCurves.upload(graph.paperCurves, graph.paperCurves.size / 4, 1)
                }
                scan.upload(graph.scan, graph.size)
                if (graph.usesGlare) gamut.upload(graph.gamut, graph.size)
                key = graph.sourceKey
            } catch (failure: Throwable) {
                release()
                throw failure
            }
        }

        fun release() {
            listOf(filmExposure, filmCurves, paperExposure, paperCurves, scan, gamut).forEach(Table::release)
            key = null
        }
    }

    class Table(private val target: Int) {
        private var texture = 0

        fun bind(program: Int, label: String, unit: Int) {
            check(texture != 0)
            texture(program, label, unit, texture, target)
        }

        fun upload(values: FloatArray, width: Int, height: Int = width) {
            val cube = target == GLES30.GL_TEXTURE_3D
            texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(target, texture)
            configure(target, if (cube) GLES30.GL_LINEAR else GLES30.GL_NEAREST)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_IMAGE_HEIGHT, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_PIXELS, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_ROWS, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_IMAGES, 0)
            val data = ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
                .asFloatBuffer().apply { put(values); position(0) }
            if (cube) {
                GLES30.glTexImage3D(target, 0, GLES30.GL_RGBA16F, width, width, width, 0, GLES30.GL_RGBA, GLES30.GL_FLOAT, data)
            } else {
                GLES30.glTexImage2D(target, 0, GLES30.GL_RGBA32F, width, height, 0, GLES30.GL_RGBA, GLES30.GL_FLOAT, data)
            }
            val error = GLES30.glGetError()
            check(texture != 0 && error == GLES30.GL_NO_ERROR) { "Unable to upload Spektrafilm table, GL error=$error" }
        }

        fun release() {
            if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            texture = 0
        }
    }

    companion object {
        private const val HEADER = """#version 300 es
precision highp float;
precision highp int;
precision highp sampler2D;
precision highp sampler3D;
out vec4 fragColor;"""

        private val COPY = """
            uniform sampler2D uSource;
            void main() {
                fragColor = texelFetch(uSource, ivec2(gl_FragCoord.xy), 0);
            }
        """.trimIndent()

        fun location(program: Int, name: String) = GLES30.glGetUniformLocation(program, name)
        fun float(program: Int, name: String, value: Float) = GLES30.glUniform1f(location(program, name), value)
        fun int(program: Int, name: String, value: Int) = GLES30.glUniform1i(location(program, name), value)
        fun xy(program: Int, name: String, x: Int, y: Int) = GLES30.glUniform2i(location(program, name), x, y)
        fun rgb(program: Int, name: String, value: SpectralRgb) =
            GLES30.glUniform3f(location(program, name), value.r, value.g, value.b)
        fun matrix(program: Int, name: String, rowMajor: FloatArray) = GLES30.glUniformMatrix3fv(
            location(program, name), 1, false, RawToneMappingGl.transposeMatrix3x3(rowMajor), 0,
        )

        fun texture(program: Int, name: String, unit: Int, texture: Int, target: Int = GLES30.GL_TEXTURE_2D) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindTexture(target, texture)
            int(program, name, unit)
        }

        private fun configure(target: Int, filter: Int) {
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_MIN_FILTER, filter)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_MAG_FILTER, filter)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            if (target == GLES30.GL_TEXTURE_3D) GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
        }
    }
}
