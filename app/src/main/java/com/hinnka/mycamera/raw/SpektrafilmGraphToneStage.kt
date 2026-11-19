package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.float
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.int
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.matrix
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.rgb
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.texture
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.xy
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.pow
import kotlin.math.roundToInt

/**
 * RAW graph for processing that samples neighboring pixels or adds stochastic film effects.
 * Intermediates retain film irradiance, developed CMY, and paper irradiance in that order.
 */
internal class SpektrafilmGraphToneStage(private val quad: RawFullscreenQuad) {
    private val gl = SpektrafilmGraphGl(quad)
    private val optics = SpektrafilmOpticsPass(quad)
    private val diffusionAtlas = SpektrafilmDiffusionAtlas(gl, optics)
    private val grain = SpektrafilmGrainPass(gl, optics)
    private val filmExposure = FilmExposureAlgorithm(quad, gl.tables)
    private var sourceSampler = 0
    private var graphRetained = false

    private data class Development(
        val graph: SpectralFilmGraph,
        val tuning: SpectralFilmTuning,
        val halation: SpectralHalation,
        val frameMaximum: Float?,
    )

    fun render(input: RawEngineTonePass.Input): RawEngineTonePass.Output? {
        val selection = requireNotNull(input.spectralFilmLut)
        val graph = requireNotNull(selection.graph)
        val tuning = selection.tuning
        val halation = SpectralFilmStockDefaults.halation(selection.stock, tuning.halation)
        graphRetained = true
        val full = frame(input)
        val frameMaximum = if (tuning.halation.boostEv > 0f) selection.frameMaximum ?: run {
            check(full.originX == 0 && full.originY == 0 && full.width == full.frameWidth && full.height == full.frameHeight) {
                "Spektrafilm highlight boost requires the whole frame irradiance maximum"
            }
            measureMaximum(input, 0, 0, input.width, input.height)
        } else null
        releaseMeterTargets()

        gl.tables.prepare(graph)
        if (!tuning.grain.active) grain.releaseTargets()
        if (!graph.usesDir) gl.releaseTarget("inhibitor")

        val development = Development(graph, tuning, halation, frameMaximum)
        val shareWideLobes = shouldShareWideDiffusion(full, support(selection, full))
        var cameraField: SpektrafilmOpticsPass.FrameDiffusion? = null
        var paperField: SpektrafilmOpticsPass.FrameDiffusion? = null
        try {
            if (shareWideLobes && SpektrafilmOpticsPass.usesFrameDiffusion(full, tuning.cameraDiffusion, DIFFUSION_STRIDE)) {
                cameraField = diffusionAtlas.build(
                    full, DIFFUSION_STRIDE, tuning.cameraDiffusion, nativeSupport = 0,
                    halation = halation, maxRaw = frameMaximum,
                ) { work, _ ->
                    val exposure = gl.target("exposure", work.width, work.height)
                    if (prepare(input, exposure, work.left, work.top)) exposure.texture else null
                } ?: return null
            }
            if (graph.printing && shareWideLobes &&
                SpektrafilmOpticsPass.usesFrameDiffusion(full, tuning.enlargerDiffusion, DIFFUSION_STRIDE)
            ) {
                val filmApron = filmSupport(selection, full, cameraField?.stride)
                paperField = diffusionAtlas.build(
                    full, DIFFUSION_STRIDE, tuning.enlargerDiffusion, nativeSupport = filmApron,
                ) { work, workRegion ->
                    val exposure = gl.target("exposure", work.width, work.height)
                    if (!prepare(input, exposure, work.left, work.top)) {
                        null
                    } else {
                        val density = gl.target("density", work.width, work.height, GLES30.GL_RGBA16F)
                        val developed = developFilm(development, workRegion, exposure, density, cameraField)
                        enlarge(graph, developed, exposure)
                        exposure.texture
                    }
                } ?: return null
            }

            val apron = support(selection, full, cameraField?.stride, paperField?.stride)
            return renderWindows(input, full, development, apron, cameraField, paperField)
        } finally {
            paperField?.release()
            cameraField?.release()
        }
    }

    private fun renderWindows(
        input: RawEngineTonePass.Input,
        full: SpektrafilmOpticsPass.Region,
        development: Development,
        support: Int,
        cameraField: SpektrafilmOpticsPass.FrameDiffusion?,
        paperField: SpektrafilmOpticsPass.FrameDiffusion?,
    ): RawEngineTonePass.Output? {
        val (graph, tuning) = development
        val workEdge = maxOf(WORK_EDGE, 2 * support + MIN_CORE)
        val w = minOf(input.width, workEdge)
        val h = minOf(input.height, workEdge)
        val columns = workAxis(input.width, w, support)
        val rows = workAxis(input.height, h, support)
        PLog.d(
            TAG, "Spatial render ${input.width}x${input.height}: ${columns.size}x${rows.size} windows, " +
                "work=${w}x${h}, apron=${support}px, cameraDiffusionStride=${cameraField?.stride ?: 0}, " +
                "paperDiffusionStride=${paperField?.stride ?: 0}",
        )
        val exposure = gl.target("exposure", w, h)
        val density = gl.target("density", w, h, GLES30.GL_RGBA16F)
        val scanOutput = gl.target("scan", w, h, GLES30.GL_RGBA16F)
        for (row in rows) {
            for (column in columns) {
                val workLeft = column.workStart
                val workTop = row.workStart
                val region = full.copy(width = w, height = h, originX = full.originX + workLeft, originY = full.originY + workTop)
                if (!prepare(input, exposure, workLeft, workTop)) return null

                val developed = developFilm(development, region, exposure, density, cameraField)
                val scanDensity = if (graph.printing) {
                    enlarge(graph, developed, exposure)
                    val paperExposure = optics.diffusion(exposure.texture, region, tuning.enlargerDiffusion, paperField)
                    developPaper(paperExposure, density)
                    density.texture
                } else developed

                val glare = if (graph.usesGlare) optics.glare(region, tuning.glare, GLARE_SEED) else 0
                gl.draw(
                    "scan-${graph.usesGlare}-${graph.linearScan}",
                    SpektrafilmGraphShaders.scan(graph.usesGlare, graph.linearScan), scanOutput,
                ) { program ->
                    texture(program, "uSource", 0, scanDensity)
                    gl.tables.scan.bind(program, "uCube", 1)
                    float(program, "uSize", graph.size.toFloat())
                    rgb(program, "uLow", graph.scanLow)
                    rgb(program, "uHigh", graph.scanHigh)
                    if (graph.usesGlare) {
                        texture(program, "uGlare", 2, glare)
                        gl.tables.gamut.bind(program, "uGamut", 3)
                        rgb(program, "uWhite", graph.glareWhite)
                        rgb(program, "uGamutLow", graph.gamutLow)
                        rgb(program, "uGamutHigh", graph.gamutHigh)
                    }
                }

                val scanBlurred = optics.gaussian(scanOutput.texture, region, tuning.scannerLensBlur)
                val unsharp = tuning.scannerUnsharpAmount > 0f && tuning.scannerUnsharpSigma > 0f
                val unsharpSource = if (unsharp) optics.gaussian(scanBlurred, region, tuning.scannerUnsharpSigma) else scanBlurred
                gl.draw(
                    "finish", SpektrafilmGraphShaders.FINISH, input.targetFramebufferId,
                    column.coreStart, row.coreStart, column.coreLength, row.coreLength,
                ) { program ->
                    texture(program, "uSource", 0, scanBlurred)
                    texture(program, "uUnsharp", 1, unsharpSource)
                    xy(program, "uSourceOffset", -workLeft, -workTop)
                    matrix(program, "uOutputTransform", input.outputTransform)
                    float(program, "uUnsharpAmount", if (unsharp) tuning.scannerUnsharpAmount else 0f)
                }
            }
        }
        RawGlesProgram.logErrors("Spektrafilm spatial tone stage")
        return RawEngineTonePass.Output(input.targetTextureId, input.width, input.height)
    }

    private fun developFilm(
        development: Development,
        region: SpektrafilmOpticsPass.Region,
        exposure: SpektrafilmGraphGl.Surface,
        density: SpektrafilmGraphGl.Surface,
        cameraField: SpektrafilmOpticsPass.FrameDiffusion?,
    ): Int {
        val (graph, tuning, halation, frameMaximum) = development
        val camera = optics.camera(
            exposure.texture, region, tuning.cameraLensBlurUm, tuning.cameraDiffusion, halation, frameMaximum, cameraField,
        )
        // Spatial DIR uses the same optics scratch, so keep the exposure while its inhibitor is filtered.
        val cameraExposure = if (graph.usesDir && tuning.dirDiffusionUm > 0f) {
            gl.copy(camera, exposure)
            exposure.texture
        } else camera
        val inhibitor = inhibitors(graph, tuning, region, cameraExposure)
        gl.draw("develop", SpektrafilmGraphShaders.DEVELOP, density) { program ->
            bindDevelopment(program, cameraExposure, graph)
            texture(program, "uInhibitor", 2, if (inhibitor != 0) inhibitor else cameraExposure)
            int(program, "uUseDir", if (graph.usesDir) 1 else 0)
        }
        return if (tuning.grain.active) grain.render(density, region, graph, tuning.grain) else density.texture
    }

    fun measureMaximum(input: RawEngineTonePass.Input, left: Int, top: Int, width: Int, height: Int): Float {
        graphRetained = true
        gl.tables.prepare(requireNotNull(input.spectralFilmLut?.graph))
        val w = minOf(width, WORK_EDGE)
        val h = minOf(height, WORK_EDGE)
        val maximumInput = gl.target("meterExposure", w, h)
        val buffer = ByteBuffer.allocateDirect(4 * Float.SIZE_BYTES).order(ByteOrder.nativeOrder()).asFloatBuffer()
        var maximum = 0f
        for (y in 0 until height step h) for (x in 0 until width step w) {
            var sw = minOf(w, width - x)
            var sh = minOf(h, height - y)
            check(prepare(input, maximumInput, left + x, top + y, sw, sh)) { "Spektrafilm irradiance reduction input failed" }
            var source = maximumInput
            var reduction = 0
            do {
                val ow = (sw + 3) / 4
                val oh = (sh + 3) / 4
                val target = gl.target("meter${reduction and 1}", ow, oh)
                gl.draw("maximum", MAXIMUM, target) { program ->
                    texture(program, "uSource", 0, source.texture)
                    xy(program, "uSize", sw, sh)
                }
                source = target
                sw = ow
                sh = oh
                reduction++
            } while (sw > 1 || sh > 1)
            GLES30.glBindFramebuffer(GLES30.GL_READ_FRAMEBUFFER, source.framebuffer)
            GLES30.glBindBuffer(GLES30.GL_PIXEL_PACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
            GLES30.glPixelStorei(GLES30.GL_PACK_ROW_LENGTH, 0)
            GLES30.glPixelStorei(GLES30.GL_PACK_SKIP_ROWS, 0)
            GLES30.glPixelStorei(GLES30.GL_PACK_SKIP_PIXELS, 0)
            buffer.position(0)
            GLES30.glReadPixels(0, 0, 1, 1, GLES30.GL_RGBA, GLES30.GL_FLOAT, buffer)
            val value = buffer[0]
            val error = GLES30.glGetError()
            check(error == GLES30.GL_NO_ERROR && value.isFinite()) { "Spektrafilm irradiance maximum read failed, GL error=$error" }
            maximum = maxOf(maximum, value)
        }
        return maximum
    }

    fun release() {
        filmExposure.release()
        gl.release()
        optics.release()
        if (sourceSampler != 0) GLES30.glDeleteSamplers(1, intArrayOf(sourceSampler), 0)
        sourceSampler = 0
        graphRetained = false
    }

    fun discardInactiveGraph() {
        if (!graphRetained) return
        gl.releaseTargets()
        gl.tables.release()
        optics.releaseTargets()
        graphRetained = false
    }

    private fun releaseMeterTargets() {
        gl.releaseTarget("meterExposure")
        gl.releaseTarget("meter0")
        gl.releaseTarget("meter1")
    }

    private fun prepare(
        input: RawEngineTonePass.Input,
        target: SpektrafilmGraphGl.Surface,
        left: Int,
        top: Int,
        width: Int = target.width,
        height: Int = target.height,
    ): Boolean {
        if (sourceSampler == 0) {
            sourceSampler = IntArray(1).also { GLES30.glGenSamplers(1, it, 0) }[0]
            check(sourceSampler != 0)
            GLES30.glSamplerParameteri(sourceSampler, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glSamplerParameteri(sourceSampler, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glSamplerParameteri(sourceSampler, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glSamplerParameteri(sourceSampler, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        }
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glBindSampler(0, sourceSampler)
        try {
            return filmExposure.render(
                input.copy(targetFramebufferId = target.framebuffer, targetTextureId = target.texture),
                left, top, width, height,
            ) != null
        } finally {
            GLES30.glBindSampler(0, 0)
        }
    }

    private fun inhibitors(
        graph: SpectralFilmGraph,
        tuning: SpectralFilmTuning,
        region: SpektrafilmOpticsPass.Region,
        exposure: Int,
    ): Int {
        if (!graph.usesDir) return 0
        val inhibitor = gl.target("inhibitor", region.width, region.height, GLES30.GL_RGBA16F)
        gl.draw("inhibitors", SpektrafilmGraphShaders.DIR, inhibitor) { program ->
            bindDevelopment(program, exposure, graph)
            rgb(program, "uDensityMax", graph.densityMax)
            matrix(program, "uDirMatrix", graph.dirMatrix)
            int(program, "uPositive", if (graph.positive) 1 else 0)
        }
        if (tuning.dirDiffusionUm <= 0f) return inhibitor.texture
        return optics.gaussianWithExponential(
            inhibitor.texture, region, tuning.dirDiffusionUm / region.pixelSizeUm,
            tuning.dirTailUm / region.pixelSizeUm, tuning.dirTailWeight,
        )
    }

    private fun bindDevelopment(program: Int, exposure: Int, graph: SpectralFilmGraph) {
        texture(program, "uSource", 0, exposure)
        gl.tables.filmCurves.bind(program, "uCurves", 1)
        int(program, "uCurveWidth", graph.filmCurveSize)
        rgb(program, "uGamma", graph.gamma)
        float(program, "uExposureCorrection", graph.filmExposureCorrection)
    }

    private fun enlarge(
        graph: SpectralFilmGraph,
        developed: Int,
        exposure: SpektrafilmGraphGl.Surface,
    ) {
        gl.draw("enlarger", SpektrafilmGraphShaders.ENLARGE, exposure) { program ->
            texture(program, "uSource", 0, developed)
            gl.tables.paperExposure.bind(program, "uCube", 1)
            float(program, "uSize", graph.size.toFloat())
            rgb(program, "uLow", graph.filmLow)
            rgb(program, "uHigh", graph.filmHigh)
        }
    }

    private fun developPaper(paperExposure: Int, density: SpektrafilmGraphGl.Surface) {
        gl.draw("paper", SpektrafilmGraphShaders.PAPER, density) { program ->
            texture(program, "uSource", 0, paperExposure)
            gl.tables.paperCurves.bind(program, "uCurves", 1)
        }
    }

    private class FilmExposureAlgorithm(
        quad: RawFullscreenQuad,
        private val tables: SpektrafilmGraphGl.Tables,
    ) : RawRenderingEngineToneAlgorithm(quad, SpektrafilmGraphShaders.FILM_EXPOSURE) {
        override fun bindEngineResources(program: Int, input: RawEngineColorResources) {
            super.bindEngineResources(program, input)
            val selection = requireNotNull(input.spectralFilmLut)
            tables.filmExposure.bind(program, "uFilmExposure", 1)
            float(program, "uSpectralInputScale", selection.inputScale)
            float(program, "uCameraExposureGain", 2f.pow(selection.tuning.cameraExposureEv))
            float(program, "uSize", requireNotNull(selection.graph).size.toFloat())
        }
    }

    companion object {
        private const val TAG = "SpektrafilmGraphToneStage"
        private const val WORK_EDGE = 768
        private const val MIN_CORE = 192
        private const val DIFFUSION_STRIDE = 8
        private const val GLARE_SEED = 0x3e4420

        private data class WorkAxis(val workStart: Int, val coreStart: Int, val coreEnd: Int) {
            val coreLength: Int get() = coreEnd - coreStart
        }

        private fun workAxis(length: Int, workLength: Int, support: Int): List<WorkAxis> = buildList {
            var start = 0
            while (start < length) {
                val origin = (start - support).coerceIn(0, length - workLength)
                val workEnd = origin + workLength
                // A window touching the input edge already has the same boundary condition as
                // a full render. Consume that entire valid span before moving the window.
                val end = if (workEnd == length) length else workEnd - support
                check(end > start) { "Spektrafilm work window is smaller than its apron" }
                add(WorkAxis(origin, start, end))
                start = end
            }
        }

        fun support(selection: SpectralFilmLut, width: Int, height: Int): Int = support(
            selection,
            region(width, height, 0, 0, width, height, selection.tuning.filmFormatMm),
        )

        private fun support(
            selection: SpectralFilmLut,
            region: SpektrafilmOpticsPass.Region,
            cameraStride: Int? = null,
            paperStride: Int? = null,
        ): Int {
            val tuning = selection.tuning
            val graph = selection.graph ?: return SpektrafilmScannerPass.support(tuning)
            val printDiffusion = if (graph.printing) {
                SpektrafilmOpticsPass.diffusionSupport(region, tuning.enlargerDiffusion, paperStride)
            } else 0
            val glare = if (graph.usesGlare) SpektrafilmOpticsPass.glareSupport(tuning.glare) else 0
            val unsharp = if (tuning.scannerUnsharpAmount > 0f) {
                SpektrafilmOpticsPass.gaussianSupport(tuning.scannerUnsharpSigma)
            } else 0
            return maxOf(filmSupport(selection, region, cameraStride) + printDiffusion, glare) +
                SpektrafilmOpticsPass.gaussianSupport(tuning.scannerLensBlur) + unsharp
        }

        private fun filmSupport(
            selection: SpectralFilmLut,
            region: SpektrafilmOpticsPass.Region,
            cameraStride: Int?,
        ): Int {
            val tuning = selection.tuning
            val graph = requireNotNull(selection.graph)
            val spatialDir = if (graph.usesDir && tuning.dirDiffusionUm > 0f) {
                SpektrafilmOpticsPass.gaussianExponentialSupport(
                    tuning.dirDiffusionUm / region.pixelSizeUm, tuning.dirTailUm / region.pixelSizeUm, tuning.dirTailWeight,
                )
            } else 0
            return SpektrafilmOpticsPass.cameraSupport(
                region, tuning.cameraLensBlurUm, tuning.cameraDiffusion,
                SpectralFilmStockDefaults.halation(selection.stock, tuning.halation),
                cameraStride,
            ) + spatialDir + SpektrafilmGrainPass.support(region, graph, tuning.grain)
        }

        private fun shouldShareWideDiffusion(region: SpektrafilmOpticsPass.Region, apron: Int): Boolean {
            val workEdge = maxOf(WORK_EDGE, 2 * apron + MIN_CORE)
            val width = minOf(region.width, workEdge)
            val height = minOf(region.height, workEdge)
            val workPixels = width.toLong() * height * workAxis(region.width, width, apron).size *
                workAxis(region.height, height, apron).size
            // For small crops a local convolution already fits in one or two windows.
            // Sharing pays when the old apron causes at least a second image of repeated work.
            return workPixels >= 2L * region.width * region.height
        }

        private fun frame(input: RawEngineTonePass.Input): SpektrafilmOpticsPass.Region {
            val sx = input.width.toDouble() / input.globalWidth
            val sy = input.height.toDouble() / input.globalHeight
            val x = (input.globalOriginX * sx).roundToInt()
            val y = (input.globalOriginY * sy).roundToInt()
            val w = maxOf((input.fullImageWidth * sx).roundToInt(), input.width + x)
            val h = maxOf((input.fullImageHeight * sy).roundToInt(), input.height + y)
            return region(input.width, input.height, x, y, w, h, requireNotNull(input.spectralFilmLut).tuning.filmFormatMm)
        }

        private fun region(w: Int, h: Int, x: Int, y: Int, fullW: Int, fullH: Int, filmFormatMm: Float) =
            SpektrafilmOpticsPass.Region(w, h, x, y, fullW, fullH, filmFormatMm * 1000f / maxOf(fullW, fullH))

        private val MAXIMUM = """
            uniform sampler2D uSource;
            uniform ivec2 uSize;

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy) * 4;
                float result = 0.0;
                for (int y = 0; y < 4; ++y) for (int x = 0; x < 4; ++x) {
                    ivec2 q = p + ivec2(x, y);
                    if (all(lessThan(q, uSize))) {
                        vec3 value = texelFetch(uSource, q, 0).rgb;
                        result = max(result, max(value.r, max(value.g, value.b)));
                    }
                }
                fragColor = vec4(result, 0.0, 0.0, 1.0);
            }
        """.trimIndent()
    }
}
