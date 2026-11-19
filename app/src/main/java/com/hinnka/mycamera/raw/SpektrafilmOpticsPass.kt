package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.raw.SpektrafilmOpticsKernels.ONE
import com.hinnka.mycamera.raw.SpektrafilmOpticsKernels.ZERO
import com.hinnka.mycamera.raw.SpektrafilmOpticsKernels.scalar
import kotlin.math.expm1
import kotlin.math.ln
import kotlin.math.ln1p
import kotlin.math.pow
import kotlin.math.sqrt

/** Camera and enlarger optics in linear film or paper exposure. Every coarse grid is frame aligned. */
internal class SpektrafilmOpticsPass(private val quad: RawFullscreenQuad) {
    data class Region(
        val width: Int,
        val height: Int,
        val originX: Int,
        val originY: Int,
        val frameWidth: Int,
        val frameHeight: Int,
        val pixelSizeUm: Float,
    ) {
        init {
            require(width > 0 && height > 0 && originX >= 0 && originY >= 0)
            require(originX + width <= frameWidth && originY + height <= frameHeight)
            require(pixelSizeUm.isFinite() && pixelSizeUm > 0f)
        }
    }

    /** A box-reduced tile on the absolute frame grid. The texture uses linear FP32 RGB. */
    class DiffusionGrid internal constructor(
        val texture: Int,
        val width: Int,
        val height: Int,
        val originX: Int,
        val originY: Int,
        val stride: Int,
    )

    /** Whole-input coarse convolution results, owned by the caller until [release]. */
    class FrameDiffusion internal constructor(
        val stride: Int,
        private val params: SpectralDiffusion,
        private val frame: Region,
        private val levels: List<DiffusionGrid>,
        private var dispose: (() -> Unit)?,
    ) {
        internal fun levelsFor(params: SpectralDiffusion, region: Region): List<DiffusionGrid> {
            check(dispose != null) { "Spektrafilm frame diffusion has been released" }
            require(params == this.params && region.frameWidth == frame.frameWidth &&
                region.frameHeight == frame.frameHeight && region.pixelSizeUm == frame.pixelSizeUm &&
                region.originX >= frame.originX && region.originY >= frame.originY &&
                region.originX + region.width <= frame.originX + frame.width &&
                region.originY + region.height <= frame.originY + frame.height
            ) { "Spektrafilm frame diffusion does not match the optical settings or image grid" }
            return levels
        }

        fun release() {
            val release = dispose ?: return
            dispose = null
            release()
        }
    }

    private val targets = mutableListOf<Target>()
    private val filterProgram = Program("spektrafilmGaussian", SpektrafilmOpticsShaders.GAUSSIAN)
    private val boxProgram = Program("spektrafilmOpticalBox", SpektrafilmOpticsShaders.BOX)
    private val reconstructionPrograms = mutableMapOf<Int, Program>()
    private val boostProgram = Program("spektrafilmHighlightBoost", SpektrafilmOpticsShaders.BOOST)
    private val glareProgram = Program("spektrafilmGlare", SpektrafilmOpticsShaders.GLARE)
    private var format = GLES30.GL_RGBA16F

    /** The returned texture belongs to this pass and can be reused at the next public call. */
    fun camera(
        source: Int,
        region: Region,
        lensBlurUm: Float,
        diffusion: SpectralDiffusion,
        halation: SpectralHalation,
        maxRaw: Float?,
        frameDiffusion: FrameDiffusion? = null,
    ): Int {
        val sourceSurface = begin(region, source, GLES30.GL_RGBA32F)
        val reconstructed = boost(sourceSurface, halation, maxRaw)
        var result = applyDiffusion(reconstructed, region, diffusion, frameDiffusion)
        result = apply(result, SpektrafilmOpticsKernels.gaussian(scalar(lensBlurUm / region.pixelSizeUm)))
        result = apply(result, SpektrafilmOpticsKernels.scatter(halation, region.pixelSizeUm))
        return apply(result, SpektrafilmOpticsKernels.halation(halation, region.pixelSizeUm)).texture
    }

    fun diffusion(source: Int, region: Region, params: SpectralDiffusion, frameDiffusion: FrameDiffusion? = null): Int =
        applyDiffusion(begin(region, source, GLES30.GL_RGBA32F), region, params, frameDiffusion).texture

    /** Reduces native irradiance with the same frame-aligned box passes used by diffusion. */
    fun reduceDiffusionInput(
        source: Int,
        region: Region,
        stride: Int,
        halation: SpectralHalation? = null,
        maxRaw: Float? = null,
    ): DiffusionGrid {
        requirePowerOfTwo(stride)
        val irradiance = boost(begin(region, source, GLES30.GL_RGBA32F), halation, maxRaw)
        return advance(irradiance, stride, wholeReflection = true).diffusionGrid()
    }

    /** Builds the broad lobes once from the complete [stride]-pitch grid of the given input region. */
    fun buildFrameDiffusion(source: Int, frame: Region, stride: Int, params: SpectralDiffusion): FrameDiffusion {
        requirePowerOfTwo(stride)
        require(usesFrameDiffusion(frame, params, stride)) { "No coarse Spektrafilm diffusion lobes at pitch $stride" }
        val nativeGrid = Grid(frame.width, frame.height, frame.originX, frame.originY, 1)
        val sourceSurface = begin(
            source, nativeGrid.reducedBy(stride), GLES30.GL_RGBA32F,
        )
        val plan = diffusionPlan(frame, params)
        val levels = mutableListOf<DiffusionGrid>()
        val owned = mutableListOf<Target>()
        var coarse = sourceSurface
        try {
            for ((levelStride, lobes) in groups(plan)) {
                if (levelStride < stride) continue
                coarse = advance(coarse, levelStride, plan.wholeSampleReflection)
                val filtered = blurGroup(coarse, lobes, ZERO, plan.wholeSampleReflection)
                val target = checkNotNull(filtered.target)
                check(targets.remove(target))
                owned += target
                levels += filtered.diffusionGrid()
            }
            return FrameDiffusion(stride, params, frame, levels) { owned.forEach(Target::release) }
        } catch (failure: Throwable) {
            owned.forEach(Target::release)
            throw failure
        } finally {
            coarse.recycle()
        }
    }

    fun gaussian(source: Int, region: Region, sigma: Float): Int = gaussian(source, region, scalar(sigma))

    fun gaussian(source: Int, region: Region, sigma: SpectralRgb): Int =
        apply(begin(region, source), SpektrafilmOpticsKernels.gaussian(sigma)).texture

    fun gaussianWithExponential(source: Int, region: Region, sigma: Float, decay: Float, tailWeight: Float): Int =
        apply(begin(region, source), SpektrafilmOpticsKernels.gaussianWithExponential(sigma, decay, tailWeight)).texture

    /** A scalar fraction of normalized scanner illuminant, in the red channel. */
    fun glare(region: Region, params: SpectralGlare, seed: Int): Int {
        if (!params.enabled || params.percent <= 0f) return 0
        val source = begin(region, 0)
        val noise = acquire(source.grid)
        val variance = ln1p(params.roughness * params.roughness)
        glareProgram.use(noise) {
            vector("uOrigin", source.grid.originX, source.grid.originY)
            float("uLogMean", ln(params.percent / 100f) - 0.5f * variance)
            float("uLogSigma", sqrt(variance))
            integer("uSeed", seed)
        }
        return if (params.roughness == 0f) noise.texture else {
            apply(noise, SpektrafilmOpticsKernels.gaussian(scalar(params.blur))).texture
        }
    }

    fun release() {
        listOf(filterProgram, boxProgram, boostProgram, glareProgram).forEach(Program::release)
        reconstructionPrograms.values.forEach(Program::release)
        reconstructionPrograms.clear()
        releaseTargets()
    }

    fun releaseTargets() {
        targets.forEach(Target::release)
        targets.clear()
    }

    private fun applyDiffusion(
        source: Surface,
        region: Region,
        params: SpectralDiffusion,
        frameDiffusion: FrameDiffusion?,
    ): Surface {
        val plan = diffusionPlan(region, params)
        val levels = frameDiffusion?.levelsFor(params, region).orEmpty()
        return apply(source, plan, frameDiffusion?.stride, levels)
    }

    private fun apply(
        source: Surface,
        mixture: SpektrafilmOpticsKernels.Mixture,
        splitStride: Int? = null,
        sharedLevels: List<DiffusionGrid> = emptyList(),
    ): Surface {
        if (mixture.identity) return source
        if (mixture.lobes.isEmpty()) {
            val output = reconstruct(source, emptyList(), mixture.direct, mixture.wholeSampleReflection)
            source.recycle()
            return output
        }

        var coarse = source
        var full: Surface? = null
        val pending = mutableListOf<Surface>()
        // The FP16 path retains its intermediate rounding at each level. Film and paper
        // irradiance use FP32, so the same ordered sum can live entirely in one shader.
        val levelsPerDraw = if (format == GLES30.GL_RGBA32F) MAX_RECONSTRUCTION_LEVELS else 1
        fun flushReconstruction() {
            val composite = reconstruct(full ?: source, pending, if (full == null) mixture.direct else ONE, mixture.wholeSampleReflection)
            full?.recycle()
            pending.forEach(Surface::recycle)
            pending.clear()
            full = composite
        }
        for ((stride, lobes) in groups(mixture)) {
            if (splitStride != null && stride >= splitStride) break
            // A later reconstruction still reads the native source if no stride-one lobe ran.
            coarse = advance(coarse, stride, mixture.wholeSampleReflection, retain = source)
            val direct = if (stride == 1) mixture.direct else ZERO
            val group = blurGroup(coarse, lobes, direct, mixture.wholeSampleReflection)
            if (stride == 1) {
                full = group
            } else {
                pending += group
                if (pending.size == levelsPerDraw) flushReconstruction()
            }
        }
        if (coarse !== source) coarse.recycle()
        for (level in sharedLevels) {
            pending += Surface(level.texture, 0, Grid(level.width, level.height, level.originX, level.originY, level.stride))
            if (pending.size == levelsPerDraw) flushReconstruction()
        }
        if (pending.isNotEmpty()) flushReconstruction()
        source.recycle()
        return checkNotNull(full)
    }

    private fun groups(mixture: SpektrafilmOpticsKernels.Mixture) =
        mixture.lobes.groupBy(SpektrafilmOpticsKernels.Gaussian::stride).toSortedMap()

    private fun advance(source: Surface, stride: Int, wholeReflection: Boolean, retain: Surface? = null): Surface {
        var coarse = source
        while (coarse.grid.stride < stride) {
            val next = downsample(coarse, wholeReflection)
            if (coarse !== retain) coarse.recycle()
            coarse = next
        }
        return coarse
    }

    private fun blurGroup(
        source: Surface,
        lobes: List<SpektrafilmOpticsKernels.Gaussian>,
        direct: SpectralRgb,
        wholeReflection: Boolean,
    ): Surface {
        var accumulated: Surface? = null
        for (lobe in lobes) {
            val horizontal = acquire(source.grid)
            filter(source, source, horizontal, lobe, vertical = false, wholeReflection, ZERO, ONE)
            val output = acquire(source.grid)
            filter(horizontal, accumulated ?: source, output, lobe, vertical = true, wholeReflection,
                if (accumulated != null) ONE else direct, lobe.amplitude)
            horizontal.recycle()
            accumulated?.recycle()
            accumulated = output
        }
        return checkNotNull(accumulated)
    }

    private fun filter(
        source: Surface,
        base: Surface,
        target: Surface,
        kernel: SpektrafilmOpticsKernels.Gaussian,
        vertical: Boolean,
        wholeReflection: Boolean,
        baseWeight: SpectralRgb,
        blurWeight: SpectralRgb,
    ) = filterProgram.use(target) {
        sampler("uSource", 0, source.texture)
        sampler("uBase", 1, base.texture)
        vector("uAxis", if (vertical) 0 else 1, if (vertical) 1 else 0)
        integer("uRadius", kernel.radius)
        integer("uWholeReflection", if (wholeReflection) 1 else 0)
        rgb("uBaseWeight", baseWeight)
        rgb("uBlurWeight", blurWeight)
        GLES30.glUniform3fv(location("uWeights[0]"), kernel.radius + 1, kernel.weights, 0)
    }

    private fun downsample(source: Surface, wholeReflection: Boolean): Surface {
        val grid = source.grid.reducedBy(2)
        return acquire(grid).also { target ->
            boxProgram.use(target) {
                sampler("uSource", 0, source.texture)
                vector("uOffset", 2 * grid.originX - source.grid.originX, 2 * grid.originY - source.grid.originY)
                integer("uWholeReflection", if (wholeReflection) 1 else 0)
            }
        }
    }

    private fun reconstruct(
        base: Surface,
        levels: List<Surface>,
        baseWeight: SpectralRgb,
        wholeReflection: Boolean,
    ): Surface = acquire(base.grid).also { output ->
        val program = reconstructionPrograms.getOrPut(levels.size) {
            Program("spektrafilmOpticalReconstruction${levels.size}", SpektrafilmOpticsShaders.reconstruction(levels.size))
        }
        program.use(output) {
            sampler("uBase", 0, base.texture)
            vector("uBaseOrigin", base.grid.originX, base.grid.originY)
            integer("uWholeReflection", if (wholeReflection) 1 else 0)
            rgb("uBaseWeight", baseWeight)
            levels.forEachIndexed { index, level ->
                sampler("uLevels[$index]", index + 1, level.texture)
                GLES30.glUniform3i(location("uLevelGrids[$index]"), level.grid.originX, level.grid.originY, level.grid.stride)
            }
        }
    }

    private fun highlightBoost(source: Surface, params: HighlightBoost): Surface = acquire(source.grid).also { output ->
        boostProgram.use(output) {
            sampler("uSource", 0, source.texture)
            float("uThreshold", params.threshold)
            float("uExponentScale", params.exponentScale)
            float("uBoostScale", params.boostScale)
        }
        source.recycle()
    }

    private fun boost(source: Surface, halation: SpectralHalation?, maxRaw: Float?): Surface {
        if (halation == null || halation.boostEv <= 0f) return source
        val maximum = requireNotNull(maxRaw) { "Spektrafilm highlight boost needs the frame raw maximum" }
        return HighlightBoost.from(halation, maximum)?.let { highlightBoost(source, it) } ?: source
    }

    private fun begin(region: Region, texture: Int, format: Int = GLES30.GL_RGBA16F): Surface =
        begin(texture, Grid(region.width, region.height, region.originX, region.originY, 1), format)

    private fun begin(texture: Int, grid: Grid, format: Int): Surface {
        // An immediately chained call may read an earlier owned output. Keep it leased
        // through the new draw and leave both textures available to the caller afterwards.
        targets.forEach { it.leased = texture != 0 && it.texture == texture }
        this.format = format
        return Surface(texture, 0, grid)
    }

    private fun acquire(grid: Grid): Surface {
        val target = targets.firstOrNull { !it.leased && it.matches(grid, format) }
            ?: targets.firstOrNull { !it.leased && it.stride == grid.stride }
            ?: Target().also(targets::add)
        target.ensure(grid, format)
        target.leased = true
        return Surface(target.texture, target.framebuffer, grid, target)
    }

    private data class Grid(val width: Int, val height: Int, val originX: Int, val originY: Int, val stride: Int) {
        fun reducedBy(factor: Int): Grid = Grid(
            (originX + width + factor - 1) / factor - originX / factor,
            (originY + height + factor - 1) / factor - originY / factor,
            originX / factor, originY / factor, stride * factor,
        )
    }

    private class Surface(val texture: Int, val framebuffer: Int, val grid: Grid, val target: Target? = null) {
        fun recycle() { target?.leased = false }
        fun diffusionGrid() = DiffusionGrid(texture, grid.width, grid.height, grid.originX, grid.originY, grid.stride)
    }

    private inner class Program(val name: String, val code: String) {
        private var id = 0
        private val uniforms = mutableMapOf<String, Int>()

        fun use(target: Surface, configure: Program.() -> Unit) {
            if (id == 0) id = quad.createProgram(code, name)
            check(id != 0) { "$name is unavailable" }
            GLES30.glUseProgram(id)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebuffer)
            GLES30.glViewport(0, 0, target.grid.width, target.grid.height)
            GLES30.glDisable(GLES30.GL_BLEND)
            configure()
            quad.draw(id)
            val error = GLES30.glGetError()
            check(error == GLES30.GL_NO_ERROR) { "$name draw failed, GL error=0x${error.toString(16)}" }
        }

        fun location(name: String): Int = uniforms.getOrPut(name) { GLES30.glGetUniformLocation(id, name) }
        fun integer(name: String, value: Int) = GLES30.glUniform1i(location(name), value)
        fun float(name: String, value: Float) = GLES30.glUniform1f(location(name), value)
        fun vector(name: String, x: Int, y: Int) = GLES30.glUniform2i(location(name), x, y)
        fun rgb(name: String, value: SpectralRgb) = GLES30.glUniform3f(location(name), value.r, value.g, value.b)
        fun sampler(name: String, unit: Int, texture: Int) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
            GLES30.glBindSampler(unit, 0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            integer(name, unit)
        }

        fun release() {
            if (id != 0) GLES30.glDeleteProgram(id)
            id = 0
            uniforms.clear()
        }
    }

    private class Target {
        var texture = 0
            private set
        var framebuffer = 0
            private set
        var leased = false
        var stride = 0
            private set
        private var width = 0
        private var height = 0
        private var format = 0

        fun matches(grid: Grid, format: Int): Boolean = texture != 0 &&
            width == grid.width && height == grid.height && this.format == format && stride == grid.stride

        fun ensure(grid: Grid, format: Int) {
            if (matches(grid, format)) return
            release()
            val limit = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, limit, 0)
            check(grid.width <= limit[0] && grid.height <= limit[0]) { "Spektrafilm optical surface exceeds GL_MAX_TEXTURE_SIZE" }
            texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
            framebuffer = IntArray(1).also { GLES30.glGenFramebuffers(1, it, 0) }[0]
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, grid.width, grid.height)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
            GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0)
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            val error = GLES30.glGetError()
            if (status != GLES30.GL_FRAMEBUFFER_COMPLETE || error != GLES30.GL_NO_ERROR || texture == 0 || framebuffer == 0) {
                release()
                error("Spektrafilm optical ${grid.width}×${grid.height} format=0x${format.toString(16)} " +
                    "allocation failed: status=0x${status.toString(16)} error=0x${error.toString(16)}")
            }
            width = grid.width
            height = grid.height
            stride = grid.stride
            this.format = format
        }

        fun release() {
            if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
            if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            texture = 0
            framebuffer = 0
            leased = false
        }
    }

    private data class HighlightBoost(val threshold: Float, val exponentScale: Float, val boostScale: Float) {
        companion object {
            fun from(params: SpectralHalation, maximum: Float): HighlightBoost? {
                val threshold = 0.184 * 2.0.pow(params.protectEv.toDouble())
                if (maximum <= threshold) return null
                val gain = 2.0.pow(params.boostEv.toDouble())
                val a = 28.0.pow(1.0 - params.boostRange)
                val z = a * (maximum - threshold) / maximum
                val denominator = if (z < 0.05) z * z * (0.5 + z * (1.0 / 6 + z * (1.0 / 24 + z / 120))) else expm1(z) - z
                return HighlightBoost(threshold.toFloat(), (a / maximum).toFloat(),
                    ((gain - 1) * maximum / denominator).toFloat())
            }
        }
    }

    companion object {
        // OpenGL ES 3.0 guarantees at least 16 fragment samplers. One slot holds the base.
        private const val MAX_RECONSTRUCTION_LEVELS = 15

        fun cameraSupport(
            region: Region,
            lensBlurUm: Float,
            diffusion: SpectralDiffusion,
            halation: SpectralHalation,
            frameStride: Int? = null,
        ): Int = diffusionSupport(region, diffusion, frameStride) + gaussianSupport(lensBlurUm / region.pixelSizeUm) +
                SpektrafilmOpticsKernels.scatter(halation, region.pixelSizeUm).support +
                SpektrafilmOpticsKernels.halation(halation, region.pixelSizeUm).support

        fun diffusionSupport(region: Region, params: SpectralDiffusion, frameStride: Int? = null): Int {
            val plan = diffusionPlan(region, params)
            if (frameStride == null) return plan.support
            return plan.lobes.asSequence().filter { it.stride < frameStride }
                .maxOfOrNull(SpektrafilmOpticsKernels.Gaussian::support) ?: 0
        }

        fun usesFrameDiffusion(frame: Region, params: SpectralDiffusion, stride: Int): Boolean =
            diffusionPlan(frame, params).lobes.any { it.stride >= stride }

        private fun diffusionPlan(region: Region, params: SpectralDiffusion) = SpektrafilmOpticsKernels.diffusion(
            params, region.pixelSizeUm, region.frameWidth, region.frameHeight,
        )

        private fun requirePowerOfTwo(stride: Int) {
            require(stride > 0 && stride and (stride - 1) == 0) { "Invalid Spektrafilm diffusion grid pitch $stride" }
        }

        fun glareSupport(params: SpectralGlare): Int = if (params.enabled && params.percent > 0f && params.roughness > 0f) {
            gaussianSupport(params.blur)
        } else 0

        fun gaussianSupport(sigma: Float): Int = gaussianSupport(scalar(sigma))

        fun gaussianSupport(sigma: SpectralRgb): Int = SpektrafilmOpticsKernels.gaussian(sigma).support

        fun gaussianExponentialSupport(sigma: Float, decay: Float, tailWeight: Float): Int =
            SpektrafilmOpticsKernels.gaussianWithExponential(sigma, decay, tailWeight).support
    }
}
