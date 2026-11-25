package com.hinnka.mycamera.raw.fotufilm

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.raw.RawFullscreenQuad
import com.hinnka.mycamera.raw.RawGlesProgram
import com.hinnka.mycamera.raw.fotufilm.FotufilmConfigLayout as L
import com.hinnka.mycamera.raw.fotufilm.FotufilmFrameParams.Companion.floorDiv
import com.hinnka.mycamera.raw.fotufilm.FotufilmFrameParams.Companion.floorMod
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer

/**
 * The Fotufilm develop and print graphs (upstream `Graph/Frame.h` `build_develop` + `build_print`)
 * as GLES 3.1 passes, with the native GPU backend's semantics (`Pipeline/GpuBackend.h`,
 * `Schedule/Gpu.h`, Metal device): merged-luma MTF, chained halation/diffusion box pyramids with
 * frame-anchored phases, decimated Gaussians for the chemical fields, analytic H&D curves,
 * analytic seeded grain draws and exact transcendentals.
 *
 * Every coordinate a random draw, a gate, a carrier, a tone grid or a pyramid phase reads is the
 * absolute frame coordinate `(originX + x, originY + y)`; texel row 0 of the input is frame row
 * `originY`. Spatial stages bound their taps at the input's own edges exactly as upstream bounds
 * them at its tile's, so a tile matches the whole frame wherever its apron covers the support.
 *
 * All calls must run on the GL thread of one EGL context.
 */
internal class FotufilmRenderer(private val quad: RawFullscreenQuad) {
    private val programs = HashMap<String, Int>()
    private var printProgram = 0
    private val pool = TexturePool()
    private val resources = Resources()

    private var currentProgram = 0
    private var nextUnit = 0

    /**
     * Develops and prints `input` (linear Rec.2020 scene light, RGBA16F/RGBA32F, `inputWidth` ×
     * `inputHeight`) whose texel (0, 0) sits at frame pixel (`originX`, `originY`), into
     * `targetFramebuffer` (`targetTexture` attached, same size): linear Display P3 display light
     * (the print's delivery basis), alpha from the input; the host encode instead when the
     * frame's mask carries FOTUFILM_FRAME_ENCODE_OUT.
     *
     * Without `fields` the input must carry the halation reach in its apron (`spatialSupport`),
     * and a frame that measures its veiling glare on device must be the whole frame. With
     * `fields` the halation grids and glare mean come from them and the apron needs only
     * `spatialSupportSansHalation`.
     */
    fun render(
        frame: FotufilmFrame,
        input: Int,
        inputWidth: Int,
        inputHeight: Int,
        originX: Int,
        originY: Int,
        fields: FotufilmFrameFields?,
        targetFramebuffer: Int,
        targetTexture: Int,
    ): Boolean {
        require(inputWidth > 0 && inputHeight > 0) { "Invalid Fotufilm input size" }
        require(targetTexture != 0 || targetFramebuffer != 0) { "Missing Fotufilm target" }
        val flags = Flags(frame.featureMask)
        val params = FotufilmFrameParams(frame.configuration)
        if (fields != null) validateFields(frame, params, flags, fields)
        val wholeFrame = originX == 0 && originY == 0 &&
            inputWidth == frame.frameWidth && inputHeight == frame.frameHeight
        require(!(flags.flare && flags.flareMeasure && fields == null && !wholeFrame)) {
            "FOTUFILM_FRAME_FLARE_MEASURE on a tile needs whole-frame fields"
        }
        resources.prepare(frame)
        val scope = Scope()
        try {
            val region = Region(inputWidth, inputHeight, originX, originY, input, 0, 0)
            var developed = 0
            var transmittance = 0
            var spread = 0
            if (!flags.noFilm) {
                val lens = developLens(scope, params, flags, region)
                val flareMean = when {
                    !flags.flare || !flags.flareMeasure -> 0
                    fields != null -> fields.flareMeanTexture
                    else -> measureFlare(scope, lens, region.width, region.height)
                }
                var light = developLight(scope, params, flags, region, lens, flareMean)
                if (flags.halation) {
                    val grids = if (fields != null) {
                        Array(3) {
                            GridLevel(fields.halationGrids[it], fields.gridWidths[it], fields.gridHeights[it],
                                fields.strides[it], 0, 0)
                        }
                    } else {
                        pyramid(scope, light, region, params.halationStride, params.halationStridedRadius)
                    }
                    val halated = halate(scope, light, region, grids, flags)
                    if (fields == null) grids.forEach { scope.recycle(it.texture) }
                    scope.recycle(light)
                    light = halated
                }
                val density = developDensity(scope, params, flags, region, light, lens)
                scope.recycle(light)
                developed = grain(scope, frame, params, flags, region, density)
                if (developed != density) scope.recycle(density)
                if (flags.printMtf) {
                    transmittance = transmittancePass(scope, region, developed)
                    val sigma = frame.configuration[L.CONFIG_PRINT_MTF_SIGMA]
                    spread = gaussian(scope, transmittance, region.width, region.height,
                        floatArrayOf(sigma, sigma, sigma, sigma), params.printMtfRadius, 0, false, 0)
                }
            }
            printPass(flags, region, developed, transmittance, spread, targetFramebuffer)
            val error = GLES30.glGetError()
            if (error == GLES30.GL_NO_ERROR) return true
            PLog.e(TAG, "Render failed: glError $error")
            RawGlesProgram.logErrors("FotufilmRenderer.render")
            return false
        } finally {
            scope.close()
        }
    }

    /**
     * Builds the whole-frame fields from `wholeFrameInput`, which must be the whole virtual frame
     * at its own resolution (`width` × `height` = `frameWidth` × `frameHeight`, origin 0): the
     * glare is the mean over every frame pixel and the halation grids are cells of the frame's
     * own lattice. The light is developed in full-width bands of [FIELDS_BAND_ROWS] rows (a
     * multiple of the finest halation stride) with `lightSupport` rows of apron each, exactly
     * as upstream's LIGHT_OUT strips, so no whole-frame intermediate is ever allocated.
     */
    fun buildFrameFields(frame: FotufilmFrame, wholeFrameInput: Int, width: Int, height: Int): FotufilmFrameFields {
        require(width == frame.frameWidth && height == frame.frameHeight) {
            "Fotufilm fields need the whole frame: ${width}x$height vs ${frame.frameWidth}x${frame.frameHeight}"
        }
        val flags = Flags(frame.featureMask)
        val params = FotufilmFrameParams(frame.configuration)
        resources.prepare(frame)
        val measure = !flags.noFilm && flags.flare && flags.flareMeasure
        val halation = !flags.noFilm && flags.halation
        val stride0 = params.halationStride[0]
        val bandRows = ((FIELDS_BAND_ROWS + stride0 - 1) / stride0) * stride0
        val apron = maxOf(frame.lightSupport, 0)
        var flareMean = 0
        val halationGrids = IntArray(3)
        val gridWidths = IntArray(3)
        val gridHeights = IntArray(3)
        val scope = Scope()
        try {
            if (measure) {
                val rowSums = scope.acquire(1, height)
                forEachBand(height, bandRows, apron) { y0, y1, ay0, ay1 ->
                    val band = Region(width, ay1 - ay0, 0, ay0, wholeFrameInput, 0, ay0)
                    val lens = developLens(scope, params, flags, band)
                    measureFlareRows(scope, lens, width, y0 - ay0, y1 - y0, rowSums, y0)
                    scope.recycle(lens)
                }
                flareMean = pool.detach(scope.acquire(1, 1))
                flareTotal(rowSums, width, height, flareMean)
                scope.recycle(rowSums)
            }
            if (halation) {
                for (scale in 0 until 3) {
                    val stride = params.halationStride[scale]
                    gridWidths[scale] = (width + stride - 1) / stride
                    gridHeights[scale] = (height + stride - 1) / stride
                }
                val finest = scope.acquire(gridWidths[0], gridHeights[0])
                forEachBand(height, bandRows, apron) { y0, y1, ay0, ay1 ->
                    val band = Region(width, ay1 - ay0, 0, ay0, wholeFrameInput, 0, ay0)
                    val lens = developLens(scope, params, flags, band)
                    val light = developLight(scope, params, flags, band, lens, flareMean)
                    scope.recycle(lens)
                    val firstCell = y0 / stride0
                    val cellRows = (y1 + stride0 - 1) / stride0 - firstCell
                    decimate(light, band.width, band.height, stride0, 0, ay0 - y0,
                        gridWidths[0], cellRows, finest, 0, firstCell)
                    scope.recycle(light)
                }
                // GpuHalationFieldsPipeline: the finest grid is scale 0's own down; coarser
                // scales decimate the previous down, each down blurred by its triple box.
                var previous = finest
                var previousStride = stride0
                for (scale in 0 until 3) {
                    val stride = params.halationStride[scale]
                    val down = if (scale == 0) {
                        finest
                    } else {
                        val target = scope.acquire(gridWidths[scale], gridHeights[scale])
                        decimate(previous, gridWidths[scale - 1], gridHeights[scale - 1],
                            floorDiv(stride, previousStride), 0, 0,
                            gridWidths[scale], gridHeights[scale], target, 0, 0)
                        target
                    }
                    halationGrids[scale] = pool.detach(
                        boxBlur(scope, down, gridWidths[scale], gridHeights[scale],
                            params.halationStridedRadius[scale]),
                    )
                    if (previous != down) scope.recycle(previous)
                    previous = down
                    previousStride = stride
                }
                scope.recycle(previous)
            }
            RawGlesProgram.logErrors("FotufilmRenderer.buildFrameFields")
            return FotufilmFrameFields(
                frameWidth = width,
                frameHeight = height,
                flareMeanTexture = flareMean,
                halationGrids = halationGrids,
                gridWidths = gridWidths,
                gridHeights = gridHeights,
                strides = params.halationStride.copyOf(),
            )
        } catch (error: Throwable) {
            val owned = (halationGrids.toList() + flareMean).filter { it != 0 }.toIntArray()
            if (owned.isNotEmpty()) GLES30.glDeleteTextures(owned.size, owned, 0)
            throw error
        } finally {
            scope.close()
        }
    }

    /**
     * Frees the scratch textures kept for reuse, after the GPU retired the work that read them.
     * A render's scratch is then exactly its own [scratchHighWaterBytes], never a leftover of an
     * earlier region whose frame-anchored grids had other sizes.
     */
    fun trimScratch() = pool.trim()

    /**
     * Names the shape of [frame]'s graph as far as its scratch goes: the stages that run and the
     * strides of every frame-anchored grid. Two frames with the same key coexist the same
     * intermediates at the same fractions of the region's area.
     */
    fun scratchLayoutKey(frame: FotufilmFrame): String {
        val params = FotufilmFrameParams(frame.configuration)
        val gaussianStrides = floatArrayOf(
            params.couplerSigma, params.fringeSigma, params.adjacencySigma, params.adjacencySecondarySigma,
        ).map(FotufilmFrameParams::gaussianStride)
        return "mask=${frame.featureMask.toString(16)} filmGrain=${frame.filmGrainOn} " +
            "halation=${params.halationStride.joinToString(",")} " +
            "diffusion=${params.diffusionStride.joinToString(",")} " +
            "grids=${gaussianStrides.joinToString(",")}"
    }

    /** Most scratch bytes held at once since the last [trimScratch]. */
    val scratchHighWaterBytes: Long
        get() = pool.highWaterBytes

    fun release() {
        programs.values.filter { it != 0 }.forEach { GLES30.glDeleteProgram(it) }
        if (printProgram != 0) GLES30.glDeleteProgram(printProgram)
        pool.release()
        resources.release()
        forgetPrograms()
    }

    /** Forgets every GL handle after the EGL context was lost. */
    fun reset() {
        pool.reset()
        resources.reset()
        forgetPrograms()
    }

    private fun forgetPrograms() {
        programs.clear()
        printProgram = 0
        currentProgram = 0
    }

    // ---------------------------------------------------------------------------------------
    // Develop

    /** `exposure` and, with FOTUFILM_FRAME_DIFFUSION, `diffused`: the lens's light, donor in alpha. */
    private fun developLens(scope: Scope, params: FotufilmFrameParams, flags: Flags, region: Region): Int {
        val exposure = scope.acquire(region.width, region.height)
        use(compute("exposure", FotufilmShaders.EXPOSURE))
        bindConfig()
        sampler("uInput", region.input)
        sampler("uExposureLut", resources.exposureLut, GLES30.GL_TEXTURE_3D)
        uniform2i("uSize", region.width, region.height)
        uniform2i("uInputOffset", region.inputOffsetX, region.inputOffsetY)
        uniform2i("uOrigin", region.originX, region.originY)
        image(0, exposure)
        dispatchImage(region.width, region.height)
        if (!flags.diffusion) return exposure

        val levels = pyramid(scope, exposure, region, params.diffusionStride, params.diffusionStridedRadius)
        val lens = scope.acquire(region.width, region.height)
        use(compute("diffusionMix", FotufilmShaders.DIFFUSION_MIX))
        bindConfig()
        sampler("uBase", exposure)
        bindGrids(levels)
        uniform2i("uSize", region.width, region.height)
        uniform2i("uOrigin", region.originX, region.originY)
        image(0, lens)
        dispatchImage(region.width, region.height)
        levels.forEach { scope.recycle(it.texture) }
        scope.recycle(exposure)
        return lens
    }

    /** `through_gate`, `flared` and the emulsion MTF (`mtf_selected`). */
    private fun developLight(
        scope: Scope,
        params: FotufilmFrameParams,
        flags: Flags,
        region: Region,
        lens: Int,
        flareMean: Int,
    ): Int {
        val merged = flags.mtfLuma
        val light = scope.acquire(region.width, region.height)
        use(compute("light", FotufilmShaders.LIGHT))
        bindConfig()
        sampler("uLens", lens)
        sampler("uFlareMean", if (flareMean != 0) flareMean else resources.dummy2d)
        uniform2i("uSize", region.width, region.height)
        uniform2i("uOrigin", region.originX, region.originY)
        uniform1i("uMerged", if (merged) 1 else 0)
        uniform1i("uFlare", if (flags.flare) 1 else 0)
        uniform1i("uFlareMeasured", if (flareMean != 0) 1 else 0)
        image(0, light)
        dispatchImage(region.width, region.height)
        if (!flags.mtf) return light

        val sigma = params.mtfSigma
        val radius = maxOf(params.mtfRadius[0], maxOf(params.mtfRadius[1], params.mtfRadius[2]))
        val perLayer = gaussian(
            scope, light, region.width, region.height,
            floatArrayOf(sigma[0], sigma[1], sigma[2], if (merged) params.mtfLumaSigma else sigma[2]),
            radius, if (merged) params.mtfLumaRadius else 0, merged, 0,
        )
        if (!flags.mtfLuma) {
            scope.recycle(light)
            return perLayer
        }
        val configuration = resources.configuration
        val secondarySigma = FloatArray(3) {
            maxOf(configuration[L.CONFIG_MTF_SECONDARY_SIGMA + it], 0.151f)
        }
        val secondary = gaussian(
            scope, light, region.width, region.height,
            floatArrayOf(secondarySigma[0], secondarySigma[1], secondarySigma[2], secondarySigma[2]),
            params.mtfLumaRadius, 0, false, 0,
        )
        scope.recycle(light)
        val separated = scope.acquire(region.width, region.height)
        use(compute("mtfSeparate", FotufilmShaders.MTF_SEPARATE))
        bindConfig()
        sampler("uPerLayer", perLayer)
        sampler("uSecondary", secondary)
        uniform2i("uSize", region.width, region.height)
        image(0, separated)
        dispatchImage(region.width, region.height)
        scope.recycle(perLayer)
        scope.recycle(secondary)
        return separated
    }

    /** `halation_returned` + `halated`. */
    private fun halate(scope: Scope, light: Int, region: Region, grids: Array<GridLevel>, flags: Flags): Int {
        val halated = scope.acquire(region.width, region.height)
        use(compute("halation", FotufilmShaders.HALATION))
        bindConfig()
        sampler("uLight", light)
        bindGrids(grids)
        uniform1i("uAnnular", if (flags.annular) 1 else 0)
        uniform2i("uSize", region.width, region.height)
        uniform2i("uOrigin", region.originX, region.originY)
        image(0, halated)
        dispatchImage(region.width, region.height)
        return halated
    }

    /**
     * `log_exposure` … `density`: couplers, donor layer, chromatic fringe, adjacency, development.
     * Consumes `lens`, which only the activation pass reads.
     */
    private fun developDensity(
        scope: Scope,
        params: FotufilmFrameParams,
        flags: Flags,
        region: Region,
        light: Int,
        lens: Int,
    ): Int {
        val w = region.width
        val h = region.height
        val spatial = flags.couplers || flags.adjacency || flags.donor
        var log = 0
        var activation = 0
        var released = 0
        if (spatial) {
            log = scope.acquire(w, h)
            activation = scope.acquire(w, h)
            released = scope.acquire(w, h)
            use(compute("activation", FotufilmShaders.ACTIVATION))
            bindConfig()
            sampler("uLight", light)
            sampler("uLens", lens)
            uniform2i("uSize", w, h)
            uniform2i("uOrigin", region.originX, region.originY)
            uniform1i("uDonor", if (flags.donor) 1 else 0)
            image(0, log)
            image(1, activation)
            image(2, released)
            dispatchImage(w, h)
        }
        scope.recycle(lens)
        val coupler = if (flags.couplerDiffusionOn) {
            decimatedGaussian(scope, released, region, params.couplerSigma, params.couplerRadius)
        } else null
        val fringe = if (flags.couplerDiffusionOn) {
            decimatedGaussian(scope, released, region, params.fringeSigma, params.fringeRadius)
        } else null
        val adjacency = if (flags.adjacency) {
            decimatedGaussian(scope, activation, region, params.adjacencySigma, params.adjacencyRadius)
        } else null
        val adjacencySecondary = if (flags.adjacency) {
            decimatedGaussian(scope, activation, region, params.adjacencySecondarySigma,
                params.adjacencySecondaryRadius)
        } else null

        val density = scope.acquire(w, h)
        use(compute("density", FotufilmShaders.DENSITY))
        bindConfig()
        sampler("uLight", light)
        sampler("uLog", log.orDummy())
        sampler("uActivation", activation.orDummy())
        sampler("uReleased", released.orDummy())
        val decimated = arrayOf(coupler, fringe, adjacency, adjacencySecondary)
        val names = arrayOf("uCouplerGrid", "uFringeGrid", "uAdjacencyGrid", "uAdjacencySecondaryGrid")
        val sizes = IntArray(8)
        val strides = IntArray(4) { 1 }
        val phases = IntArray(8)
        for (index in decimated.indices) {
            val field = decimated[index]
            sampler(names[index], field?.texture ?: resources.dummy2d)
            if (field != null) {
                sizes[index * 2] = field.width
                sizes[index * 2 + 1] = field.height
                strides[index] = field.stride
                phases[index * 2] = field.phaseX
                phases[index * 2 + 1] = field.phaseY
            }
        }
        uniform2iv("uFieldSize", sizes)
        uniform1iv("uFieldStride", strides)
        uniform2iv("uFieldPhase", phases)
        uniform1i("uSpatial", if (spatial) 1 else 0)
        uniform1i("uCouplers", if (flags.couplers) 1 else 0)
        uniform1i("uCouplerDiffusion", if (flags.couplerDiffusionOn) 1 else 0)
        uniform1i("uFringe", if (flags.couplerDiffusionOn) 1 else 0)
        uniform1i("uFringeRadius", params.fringeRadius)
        uniform1i("uAdjacency", if (flags.adjacency) 1 else 0)
        uniform1i("uDonor", if (flags.donor) 1 else 0)
        uniform2i("uSize", w, h)
        image(0, density)
        dispatchImage(w, h)
        decimated.forEach { field -> field?.let { scope.recycle(it.texture) } }
        if (spatial) {
            scope.recycle(log)
            scope.recycle(activation)
            scope.recycle(released)
        }
        return density
    }

    /** `grain_selected`: clump grain (`grained`) or the film grain model (`filmed`). */
    private fun grain(
        scope: Scope,
        frame: FotufilmFrame,
        params: FotufilmFrameParams,
        flags: Flags,
        region: Region,
        density: Int,
    ): Int {
        if (!flags.grain) return density
        val w = region.width
        val h = region.height
        if (frame.filmGrainOn) {
            val developed = scope.acquire(w, h)
            use(compute("filmGrain", FotufilmShaders.FILM_GRAIN))
            bindConfig()
            sampler("uFilmTiles", resources.filmTilesOrDummy, GLES30.GL_TEXTURE_2D_ARRAY)
            sampler("uDensity", density)
            uniform2i("uSize", w, h)
            uniform2i("uOrigin", region.originX, region.originY)
            uniform1ui("uSeed", frame.seed)
            uniform1i("uMonochrome", if (flags.monochrome) 1 else 0)
            image(0, developed)
            dispatchImage(w, h)
            return developed
        }
        val configuration = frame.configuration
        val noise = scope.acquire(w, h)
        val mottleNoise = if (flags.mottle) scope.acquire(w, h) else 0
        use(compute("grainNoise", FotufilmShaders.GRAIN_NOISE))
        bindConfig()
        uniform2i("uSize", w, h)
        uniform2i("uOrigin", region.originX, region.originY)
        uniform1ui("uSeed", frame.seed)
        uniform1f("uGrainLambda", params.grainLambda)
        uniform1f("uMottleLambda", params.mottleLambda)
        uniform1i("uMonochrome", if (flags.monochrome) 1 else 0)
        uniform1i("uMottle", if (flags.mottle) 1 else 0)
        image(0, noise)
        image(1, if (mottleNoise != 0) mottleNoise else resources.dummy2d)
        dispatchImage(w, h)
        val grainSigma = FloatArray(3) { configuration[L.CONFIG_GRAIN_SIGMA_LAYER + it] }
        val grainField = gaussian(scope, noise, w, h,
            floatArrayOf(grainSigma[0], grainSigma[1], grainSigma[2], grainSigma[2]),
            params.grainRadius, 0, false, 0)
        scope.recycle(noise)
        var mottleField = 0
        if (flags.mottle) {
            val mottleSigma = FloatArray(3) { configuration[L.CONFIG_MOTTLE_SIGMA_LAYER + it] }
            mottleField = gaussian(scope, mottleNoise, w, h,
                floatArrayOf(mottleSigma[0], mottleSigma[1], mottleSigma[2], mottleSigma[2]),
                params.mottleRadius, 0, false, 0)
            scope.recycle(mottleNoise)
        }
        val developed = scope.acquire(w, h)
        use(compute("grainApply", FotufilmShaders.GRAIN_APPLY))
        bindConfig()
        sampler("uDensity", density)
        sampler("uGrainField", grainField)
        sampler("uMottleField", mottleField.orDummy())
        uniform2i("uSize", w, h)
        uniform1i("uMonochrome", if (flags.monochrome) 1 else 0)
        uniform1i("uMottle", if (flags.mottle) 1 else 0)
        image(0, developed)
        dispatchImage(w, h)
        scope.recycle(grainField)
        if (mottleField != 0) scope.recycle(mottleField)
        return developed
    }

    /** `in_carrier` + `print_mtf_transmittance`. */
    private fun transmittancePass(scope: Scope, region: Region, developed: Int): Int {
        val transmittance = scope.acquire(region.width, region.height)
        use(compute("transmittance", FotufilmShaders.TRANSMITTANCE))
        bindConfig()
        sampler("uDeveloped", developed)
        uniform2i("uSize", region.width, region.height)
        uniform2i("uOrigin", region.originX, region.originY)
        image(0, transmittance)
        dispatchImage(region.width, region.height)
        return transmittance
    }

    /** `build_print` and the float delivery, drawn into the caller's framebuffer. */
    private fun printPass(
        flags: Flags,
        region: Region,
        developed: Int,
        transmittance: Int,
        spread: Int,
        targetFramebuffer: Int,
    ) {
        if (printProgram == 0) {
            printProgram = quad.createProgram(FotufilmShaders.PRINT, "FotufilmPrint")
            check(printProgram != 0) { "Unable to link Fotufilm print program" }
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFramebuffer)
        GLES30.glViewport(0, 0, region.width, region.height)
        GLES30.glDisable(GLES30.GL_BLEND)
        use(printProgram)
        bindConfig()
        sampler("uInput", region.input)
        sampler("uDeveloped", developed.orDummy())
        sampler("uTransmittance", transmittance.orDummy())
        sampler("uSpread", spread.orDummy())
        sampler("uFilmLut", resources.filmLut, GLES30.GL_TEXTURE_3D)
        sampler("uPaperLut", resources.paperOrDummy, GLES30.GL_TEXTURE_3D)
        uniform2i("uInputOffset", region.inputOffsetX, region.inputOffsetY)
        uniform2i("uOrigin", region.originX, region.originY)
        uniform1i("uNoFilm", if (flags.noFilm) 1 else 0)
        uniform1i("uPrintMtf", if (flags.printMtf) 1 else 0)
        uniform1i("uReversal", if (flags.reversal) 1 else 0)
        uniform1i("uMonochrome", if (flags.monochrome) 1 else 0)
        // build_print takes the scanned negative's finish only on density input, which the
        // fused scene-light graph never is.
        uniform1i("uFinish", 0)
        uniform1i("uEncode", if (flags.encode) 1 else 0)
        uniform1i("uShape", flags.outputShape)
        quad.bindIdentityTextureMatrix(printProgram)
        // Drawn in row bands for the same reason as [dispatchImage].
        val bandRows = maxOf(1, DISPATCH_BAND_PIXELS / maxOf(region.width, 1))
        GLES30.glEnable(GLES30.GL_SCISSOR_TEST)
        var row = 0
        while (row < region.height) {
            val rows = minOf(bandRows, region.height - row)
            GLES30.glScissor(0, row, region.width, rows)
            quad.draw(printProgram)
            GLES30.glFlush()
            row += rows
        }
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        unbindTextures()
    }

    // ---------------------------------------------------------------------------------------
    // Spatial building blocks (Schedule/Gpu.h)

    /** `frame_mean` over a whole region's widened lens light (FOTUFILM_FRAME_FLARE_MEASURE). */
    private fun measureFlare(scope: Scope, lens: Int, width: Int, height: Int): Int {
        val rowSums = scope.acquire(1, height)
        measureFlareRows(scope, lens, width, 0, height, rowSums, 0)
        val mean = scope.acquire(1, 1)
        flareTotal(rowSums, width, height, mean)
        scope.recycle(rowSums)
        return mean
    }

    private fun measureFlareRows(
        scope: Scope,
        lens: Int,
        width: Int,
        rowStart: Int,
        rows: Int,
        rowSums: Int,
        outRow: Int,
    ) {
        val spanCount = (width + FLARE_SPAN - 1) / FLARE_SPAN
        val spans = scope.acquire(spanCount, rows)
        use(compute("flareSpans", FotufilmShaders.FLARE_SPANS))
        bindConfig()
        sampler("uLens", lens)
        uniform2i("uSize", spanCount, rows)
        uniform1i("uWidth", width)
        uniform1i("uRowStart", rowStart)
        image(0, spans)
        dispatchImage(spanCount, rows)

        use(compute("flareRows", FotufilmShaders.FLARE_ROWS))
        bindConfig()
        sampler("uSpans", spans)
        uniform1i("uSpanCount", spanCount)
        uniform1i("uRows", rows)
        uniform1i("uOutRow", outRow)
        image(0, rowSums)
        dispatchLinear(rows)
        scope.recycle(spans)
    }

    private fun flareTotal(rowSums: Int, width: Int, height: Int, target: Int) {
        use(compute("flareTotal", FotufilmShaders.FLARE_TOTAL))
        bindConfig()
        sampler("uRowSums", rowSums)
        uniform1i("uWidth", width)
        uniform1i("uHeight", height)
        image(0, target)
        dispatchLinear(1)
    }

    /**
     * GpuBackend::scattered's chained box pyramid over a region: each scale box-averages the
     * previous scale's down on the frame-anchored lattice, then runs its triple box blur.
     */
    private fun pyramid(
        scope: Scope,
        source: Int,
        region: Region,
        strides: IntArray,
        stridedRadii: IntArray,
    ): Array<GridLevel> {
        var previous = source
        var previousStride = 1
        var previousPhaseX = 0
        var previousPhaseY = 0
        var previousWidth = region.width
        var previousHeight = region.height
        val levels = arrayOfNulls<GridLevel>(3)
        for (scale in 0 until 3) {
            val stride = strides[scale]
            val phaseX = floorMod(region.originX, stride)
            val phaseY = floorMod(region.originY, stride)
            val downWidth = floorDiv(region.width + phaseX + stride - 1, stride)
            val downHeight = floorDiv(region.height + phaseY + stride - 1, stride)
            val down = scope.acquire(downWidth, downHeight)
            decimate(previous, previousWidth, previousHeight, floorDiv(stride, previousStride),
                floorDiv(phaseX - previousPhaseX, previousStride),
                floorDiv(phaseY - previousPhaseY, previousStride),
                downWidth, downHeight, down, 0, 0)
            if (previous != source) scope.recycle(previous)
            val blurred = boxBlur(scope, down, downWidth, downHeight, stridedRadii[scale])
            levels[scale] = GridLevel(blurred, downWidth, downHeight, stride,
                floorDiv(region.originX - phaseX, stride), floorDiv(region.originY - phaseY, stride))
            previous = down
            previousStride = stride
            previousPhaseX = phaseX
            previousPhaseY = phaseY
            previousWidth = downWidth
            previousHeight = downHeight
        }
        if (previous != source) scope.recycle(previous)
        return Array(3) { levels[it]!! }
    }

    /** `gpu_gaussian_decimated`: frame-anchored box down, Gaussian on the grid (upsampled by the reader). */
    private fun decimatedGaussian(scope: Scope, source: Int, region: Region, sigma: Float, radius: Int): DecimatedField {
        val stride = FotufilmFrameParams.gaussianStride(sigma)
        if (stride == 1) {
            // A unit-stride box down is the source itself.
            val blurred = gaussian(scope, source, region.width, region.height, floatArrayOf(sigma, sigma, sigma, sigma),
                FotufilmFrameParams.decimatedGaussianRadius(radius, 1), 0, false, 1)
            return DecimatedField(blurred, region.width, region.height, 1, 0, 0)
        }
        val phaseX = floorMod(region.originX, stride)
        val phaseY = floorMod(region.originY, stride)
        val downWidth = floorDiv(region.width + phaseX + stride - 1, stride)
        val downHeight = floorDiv(region.height + phaseY + stride - 1, stride)
        val down = scope.acquire(downWidth, downHeight)
        decimate(source, region.width, region.height, stride, phaseX, phaseY, downWidth, downHeight, down, 0, 0)
        val blurred = gaussian(scope, down, downWidth, downHeight, floatArrayOf(sigma, sigma, sigma, sigma),
            FotufilmFrameParams.decimatedGaussianRadius(radius, stride), 0, false, stride)
        scope.recycle(down)
        return DecimatedField(blurred, downWidth, downHeight, stride, phaseX, phaseY)
    }

    private fun decimate(
        source: Int,
        sourceWidth: Int,
        sourceHeight: Int,
        factor: Int,
        offsetX: Int,
        offsetY: Int,
        outWidth: Int,
        outHeight: Int,
        target: Int,
        outOffsetX: Int,
        outOffsetY: Int,
    ) {
        use(compute("decimate", FotufilmShaders.DECIMATE))
        bindConfig()
        sampler("uSource", source)
        uniform2i("uSourceSize", sourceWidth, sourceHeight)
        uniform1i("uFactor", factor)
        uniform2i("uOffset", offsetX, offsetY)
        uniform2i("uOutOffset", outOffsetX, outOffsetY)
        uniform2i("uSize", outWidth, outHeight)
        image(0, target)
        dispatchImage(outWidth, outHeight)
    }

    /** `gpu_gaussian`: per-channel sigma, optionally merged with a luma channel of its own radius. */
    private fun gaussian(
        scope: Scope,
        source: Int,
        width: Int,
        height: Int,
        sigma: FloatArray,
        radius: Int,
        radius3: Int,
        merged: Boolean,
        decimateStride: Int,
    ): Int {
        val extent = if (merged) maxOf(radius, radius3) else radius
        val taps = 2 * extent + 1
        val kernel = scope.acquire(taps, 1)
        use(compute("gaussianKernel", FotufilmShaders.GAUSSIAN_KERNEL))
        bindConfig()
        uniform4f("uSigma", sigma[0], sigma[1], sigma[2], sigma[3])
        uniform1i("uRadius", radius)
        uniform1i("uRadius3", radius3)
        uniform1i("uMerged", if (merged) 1 else 0)
        uniform1i("uExtent", extent)
        uniform1i("uDecimateStride", decimateStride)
        image(0, kernel)
        dispatchLinear(taps)
        val blurred = separable(scope, source, width, height, kernel, extent)
        scope.recycle(kernel)
        return blurred
    }

    /** `gpu_triple_box_blur`. */
    private fun boxBlur(scope: Scope, source: Int, width: Int, height: Int, radius: Int): Int {
        val taps = 6 * radius + 1
        val kernel = scope.acquire(taps, 1)
        use(compute("boxKernel", FotufilmShaders.BOX_KERNEL))
        bindConfig()
        uniform1i("uRadius", radius)
        image(0, kernel)
        dispatchLinear(taps)
        val blurred = separable(scope, source, width, height, kernel, 3 * radius)
        scope.recycle(kernel)
        return blurred
    }

    private fun separable(scope: Scope, source: Int, width: Int, height: Int, kernel: Int, extent: Int): Int {
        val horizontal = scope.acquire(width, height)
        blurPass(source, width, height, kernel, extent, false, horizontal)
        val vertical = scope.acquire(width, height)
        blurPass(horizontal, width, height, kernel, extent, true, vertical)
        scope.recycle(horizontal)
        return vertical
    }

    private fun blurPass(source: Int, width: Int, height: Int, kernel: Int, extent: Int, vertical: Boolean, target: Int) {
        use(compute("blur", FotufilmShaders.BLUR))
        bindConfig()
        sampler("uSource", source)
        sampler("uKernel", kernel)
        uniform1i("uExtent", extent)
        uniform1i("uVertical", if (vertical) 1 else 0)
        uniform2i("uSize", width, height)
        image(0, target)
        dispatchImage(width, height)
    }

    private fun bindGrids(levels: Array<GridLevel>) {
        for (scale in 0 until 3) sampler("uGrid$scale", levels[scale].texture)
        uniform2iv("uGridOrigin", IntArray(6) { if (it % 2 == 0) levels[it / 2].originX else levels[it / 2].originY })
        uniform2iv("uGridSize", IntArray(6) { if (it % 2 == 0) levels[it / 2].width else levels[it / 2].height })
        uniform1iv("uStride", IntArray(3) { levels[it].stride })
    }

    private inline fun forEachBand(height: Int, bandRows: Int, apron: Int, body: (Int, Int, Int, Int) -> Unit) {
        var y0 = 0
        while (y0 < height) {
            val y1 = minOf(height, y0 + bandRows)
            body(y0, y1, maxOf(0, y0 - apron), minOf(height, y1 + apron))
            y0 = y1
        }
    }

    private fun validateFields(frame: FotufilmFrame, params: FotufilmFrameParams, flags: Flags, fields: FotufilmFrameFields) {
        check(!fields.released) { "Fotufilm fields were released" }
        require(fields.frameWidth == frame.frameWidth && fields.frameHeight == frame.frameHeight) {
            "Fotufilm fields belong to a ${fields.frameWidth}x${fields.frameHeight} frame"
        }
        if (flags.halation && !flags.noFilm) {
            require(fields.hasHalation && fields.strides.contentEquals(params.halationStride)) {
                "Fotufilm fields carry no halation grids for this frame"
            }
        }
        if (flags.flare && flags.flareMeasure && !flags.noFilm) {
            require(fields.hasFlareMean) { "Fotufilm fields carry no veiling-glare mean" }
        }
    }

    // ---------------------------------------------------------------------------------------
    // GL plumbing

    private fun compute(name: String, source: String): Int = programs.getOrPut(name) {
        val program = RawGlesProgram.compileCompute(source, "Fotufilm.$name")
        check(program != 0) { "Unable to compile Fotufilm compute pass $name" }
        program
    }

    private fun use(program: Int) {
        GLES31.glUseProgram(program)
        currentProgram = program
        nextUnit = 0
    }

    private fun location(name: String) = GLES30.glGetUniformLocation(currentProgram, name)

    private fun bindConfig() = sampler("uConfig", resources.configTexture)

    private fun sampler(name: String, texture: Int, target: Int = GLES30.GL_TEXTURE_2D) {
        val unit = nextUnit++
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(target, texture)
        val location = location(name)
        if (location >= 0) GLES30.glUniform1i(location, unit)
    }

    private fun unbindTextures() {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
    }

    private fun image(binding: Int, texture: Int) {
        GLES31.glBindImageTexture(binding, texture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA32F)
    }

    private fun uniform1i(name: String, value: Int) {
        val location = location(name)
        if (location >= 0) GLES30.glUniform1i(location, value)
    }

    private fun uniform1ui(name: String, value: Int) {
        val location = location(name)
        if (location >= 0) GLES30.glUniform1ui(location, value)
    }

    private fun uniform1f(name: String, value: Float) {
        val location = location(name)
        if (location >= 0) GLES30.glUniform1f(location, value)
    }

    private fun uniform2i(name: String, x: Int, y: Int) {
        val location = location(name)
        if (location >= 0) GLES30.glUniform2i(location, x, y)
    }

    private fun uniform4f(name: String, x: Float, y: Float, z: Float, w: Float) {
        val location = location(name)
        if (location >= 0) GLES30.glUniform4f(location, x, y, z, w)
    }

    private fun uniform1iv(name: String, values: IntArray) {
        val location = location(name)
        if (location >= 0) GLES30.glUniform1iv(location, values.size, values, 0)
    }

    private fun uniform2iv(name: String, values: IntArray) {
        val location = location(name)
        if (location >= 0) GLES30.glUniform2iv(location, values.size / 2, values, 0)
    }

    /**
     * Dispatches an image pass in row bands of about [DISPATCH_BAND_PIXELS] invocations, each
     * submitted on its own, so no single GPU submission runs long enough to trip the kernel
     * driver's GPU timeout on small GPUs (a hang there resets the GPU for every process). Bands
     * write disjoint rows and read only earlier passes, so they need no barrier between them.
     */
    private fun dispatchImage(width: Int, height: Int) {
        val groupsX = GlesComputeWorkGroup.imageGroupCount(width)
        val bandLocation = location("uBandRow")
        val tile = GlesComputeWorkGroup.IMAGE_TILE_SIZE
        val bandRows = if (bandLocation < 0) height else
            maxOf(tile, DISPATCH_BAND_PIXELS / maxOf(width, 1) / tile * tile)
        var row = 0
        while (row < height) {
            val rows = minOf(bandRows, height - row)
            if (bandLocation >= 0) GLES30.glUniform1i(bandLocation, row)
            GLES31.glDispatchCompute(groupsX, GlesComputeWorkGroup.imageGroupCount(rows), 1)
            GLES30.glFlush()
            row += rows
        }
        finishDispatch()
    }

    private fun dispatchLinear(count: Int) {
        GLES31.glDispatchCompute(GlesComputeWorkGroup.linearGroupCount(count), 1, 1)
        finishDispatch()
    }

    /** The next consumer of every pass is a texel fetch or another image store. */
    private fun finishDispatch() {
        GLES31.glMemoryBarrier(
            GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT,
        )
        for (binding in 0 until 3) {
            GLES31.glBindImageTexture(binding, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA32F)
        }
    }

    private fun Int.orDummy(): Int = if (this != 0) this else resources.dummy2d

    // ---------------------------------------------------------------------------------------
    // State

    private class Flags(mask: Int) {
        init {
            val unsupported = L.FRAME_DENSITY_IN or L.FRAME_DENSITY_OUT or L.FRAME_LIGHT_OUT or
                L.FRAME_FIELDS_IN or L.FRAME_TEXTURE or L.FRAME_RECORD_EXPOSURE_IN
            require(mask and unsupported == 0) {
                "Fotufilm GLES graph does not serve feature bits 0x${(mask and unsupported).toString(16)}"
            }
        }

        private fun on(mask: Int, bit: Int) = mask and bit != 0

        val noFilm = on(mask, L.FRAME_NO_FILM)
        val flare = on(mask, L.FRAME_FLARE)
        val flareMeasure = on(mask, L.FRAME_FLARE_MEASURE)
        val mtf = on(mask, L.FRAME_MTF)
        val mtfLuma = mtf && on(mask, L.FRAME_MTF_LUMA)
        val diffusion = on(mask, L.FRAME_DIFFUSION)
        val halation = on(mask, L.FRAME_HALATION)
        val annular = halation && on(mask, L.FRAME_HALATION_ANNULAR)
        val couplers = on(mask, L.FRAME_COUPLERS)
        val donor = on(mask, L.FRAME_DONOR_LAYER)
        val couplerDiffusionOn = couplers && on(mask, L.FRAME_COUPLER_DIFFUSION)
        val adjacency = on(mask, L.FRAME_ADJACENCY)
        val grain = on(mask, L.FRAME_GRAIN)
        val mottle = grain && on(mask, L.FRAME_GRAIN_MOTTLE)
        val printMtf = on(mask, L.FRAME_PRINT_MTF)
        val reversal = on(mask, L.FRAME_REVERSAL)
        val monochrome = on(mask, L.FRAME_MONOCHROME)
        val encode = on(mask, L.FRAME_ENCODE_OUT)
        val outputShape = when {
            on(mask, L.FRAME_OUTPUT_LINEAR) -> 0
            on(mask, L.FRAME_OUTPUT_POWER) -> 1
            on(mask, L.FRAME_OUTPUT_LOG) -> 2
            else -> -1
        }
    }

    private class Region(
        val width: Int,
        val height: Int,
        val originX: Int,
        val originY: Int,
        val input: Int,
        val inputOffsetX: Int,
        val inputOffsetY: Int,
    )

    /** One scattered scale: the blurred grid and where its lattice starts, in frame cells. */
    private class GridLevel(
        val texture: Int,
        val width: Int,
        val height: Int,
        val stride: Int,
        val originX: Int,
        val originY: Int,
    )

    private class DecimatedField(
        val texture: Int,
        val width: Int,
        val height: Int,
        val stride: Int,
        val phaseX: Int,
        val phaseY: Int,
    )

    /** Textures acquired during one call, returned to the pool when the call ends. */
    private inner class Scope {
        private val held = LinkedHashSet<Int>()

        fun acquire(width: Int, height: Int): Int = pool.acquire(width, height).also { held += it }

        fun recycle(texture: Int) {
            if (texture != 0 && held.remove(texture)) pool.recycle(texture)
        }

        fun close() {
            held.forEach { pool.recycle(it) }
            held.clear()
        }
    }

    /** RGBA32F immutable scratch textures, reused by size. */
    private class TexturePool {
        private val free = HashMap<Long, ArrayDeque<Int>>()
        private val sizes = HashMap<Int, Long>()
        private var allocatedBytes = 0L

        /** Most bytes the pool has held at once since the last [trim]. */
        var highWaterBytes = 0L
            private set

        fun acquire(width: Int, height: Int): Int {
            val key = key(width, height)
            free[key]?.removeLastOrNull()?.let { return it }
            val texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
            check(texture != 0) { "Unable to allocate Fotufilm scratch texture" }
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA32F, width, height)
            nearestClamp(GLES30.GL_TEXTURE_2D)
            val error = GLES30.glGetError()
            check(error == GLES30.GL_NO_ERROR) {
                "Fotufilm scratch allocation failed: GL error=0x${error.toString(16)}, ${width}x$height RGBA32F"
            }
            sizes[texture] = key
            allocatedBytes += bytes(key)
            highWaterBytes = maxOf(highWaterBytes, allocatedBytes)
            return texture
        }

        fun recycle(texture: Int) {
            val key = sizes[texture] ?: return
            free.getOrPut(key) { ArrayDeque() }.addLast(texture)
        }

        /** Hands a texture to another owner: the pool neither reuses nor deletes it again. */
        fun detach(texture: Int): Int {
            sizes.remove(texture)?.let { allocatedBytes -= bytes(it) }
            free.values.forEach { it.remove(texture) }
            return texture
        }

        /** Deletes every texture no call currently holds. */
        fun trim() {
            val idle = free.values.flatten().toIntArray()
            free.clear()
            idle.forEach { texture -> sizes.remove(texture)?.let { allocatedBytes -= bytes(it) } }
            highWaterBytes = allocatedBytes
            if (idle.isEmpty()) return
            GLES30.glDeleteTextures(idle.size, idle, 0)
        }

        fun release() {
            val textures = sizes.keys.toIntArray()
            if (textures.isNotEmpty()) GLES30.glDeleteTextures(textures.size, textures, 0)
            reset()
        }

        fun reset() {
            free.clear()
            sizes.clear()
            allocatedBytes = 0L
            highWaterBytes = 0L
        }

        private fun key(width: Int, height: Int) = (width.toLong() shl 32) or height.toLong()

        private fun bytes(key: Long) = (key ushr 32) * (key and 0xFFFFFFFFL) * RGBA32F_BYTES
    }

    /** Configuration, spectral cubes and film tiles, uploaded only when they change. */
    private class Resources {
        var configTexture = 0
            private set
        var exposureLut = 0
            private set
        var filmLut = 0
            private set
        var paperLut = 0
            private set
        var filmTiles = 0
            private set
        var dummy2d = 0
            private set
        private var dummy3d = 0
        private var dummyArray = 0
        private var configRows = 0
        private var uploadedConfiguration: FloatArray? = null
        private var lutKey: String? = null
        private var paperKey: String? = null
        private var tilesKey: String? = null
        var configuration: FloatArray = FloatArray(0)
            private set

        fun prepare(frame: FotufilmFrame) {
            ensureDummies()
            uploadConfiguration(frame.configuration)
            if (lutKey != frame.sourceKey || exposureLut == 0 || filmLut == 0) {
                exposureLut = uploadLut(exposureLut, frame.exposureLut, "exposure")
                filmLut = uploadLut(filmLut, frame.filmOutputLut, "film")
                lutKey = frame.sourceKey
            }
            val wantedPaperKey = if (frame.paperOutputLut != null) frame.sourceKey else null
            if (paperKey != wantedPaperKey || (wantedPaperKey != null && paperLut == 0)) {
                if (paperLut != 0) GLES30.glDeleteTextures(1, intArrayOf(paperLut), 0)
                paperLut = frame.paperOutputLut?.let { uploadLut(0, it, "paper") } ?: 0
                paperKey = wantedPaperKey
            }
            if (frame.filmGrainOn) {
                val key = frame.filmTilesKey
                    ?: "${frame.sourceKey}#${frame.configuration[L.CONFIG_FILM_TILE + L.FILM_TILE_ID].toInt()}"
                if (tilesKey != key || filmTiles == 0) {
                    filmTiles = uploadTiles(filmTiles, requireNotNull(frame.filmTiles))
                    tilesKey = key
                }
            }
            val reversal = frame.featureMask and L.FRAME_REVERSAL != 0
            val noFilm = frame.featureMask and L.FRAME_NO_FILM != 0
            require(noFilm || reversal || frame.paperOutputLut != null) {
                "Fotufilm print through paper needs the paper output LUT"
            }
        }

        val paperOrDummy: Int get() = if (paperLut != 0) paperLut else dummy3d

        val filmTilesOrDummy: Int get() = if (filmTiles != 0) filmTiles else dummyArray

        fun release() {
            val textures = listOf(configTexture, exposureLut, filmLut, paperLut, filmTiles, dummy2d, dummy3d,
                dummyArray).filter { it != 0 }.toIntArray()
            if (textures.isNotEmpty()) GLES30.glDeleteTextures(textures.size, textures, 0)
            reset()
        }

        fun reset() {
            configTexture = 0
            exposureLut = 0
            filmLut = 0
            paperLut = 0
            filmTiles = 0
            dummy2d = 0
            dummy3d = 0
            dummyArray = 0
            configRows = 0
            uploadedConfiguration = null
            lutKey = null
            paperKey = null
            tilesKey = null
            configuration = FloatArray(0)
        }

        private fun ensureDummies() {
            if (dummy2d == 0) {
                dummy2d = genTexture()
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummy2d)
                GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA32F, 1, 1)
                nearestClamp(GLES30.GL_TEXTURE_2D)
                GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, 1, 1, GLES30.GL_RGBA, GLES30.GL_FLOAT,
                    floatBuffer(FloatArray(4)))
            }
            if (dummy3d == 0) {
                dummy3d = genTexture()
                GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, dummy3d)
                GLES30.glTexStorage3D(GLES30.GL_TEXTURE_3D, 1, GLES30.GL_RGBA32F, 1, 1, 1)
                nearestClamp(GLES30.GL_TEXTURE_3D)
                GLES30.glTexSubImage3D(GLES30.GL_TEXTURE_3D, 0, 0, 0, 0, 1, 1, 1, GLES30.GL_RGBA,
                    GLES30.GL_FLOAT, floatBuffer(FloatArray(4)))
            }
            if (dummyArray == 0) {
                dummyArray = genTexture()
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D_ARRAY, dummyArray)
                GLES30.glTexStorage3D(GLES30.GL_TEXTURE_2D_ARRAY, 1, GLES30.GL_R32F, 1, 1, 1)
                nearestClamp(GLES30.GL_TEXTURE_2D_ARRAY)
                GLES30.glTexSubImage3D(GLES30.GL_TEXTURE_2D_ARRAY, 0, 0, 0, 0, 1, 1, 1, GLES30.GL_RED,
                    GLES30.GL_FLOAT, floatBuffer(FloatArray(1)))
            }
        }

        private fun uploadConfiguration(values: FloatArray) {
            val previous = uploadedConfiguration
            if (configTexture != 0 && previous != null && previous.contentEquals(values)) return
            val rows = (values.size + CONFIG_ROW - 1) / CONFIG_ROW
            if (configTexture == 0 || rows != configRows) {
                if (configTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(configTexture), 0)
                configTexture = genTexture()
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, configTexture)
                GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_R32F, CONFIG_ROW, rows)
                nearestClamp(GLES30.GL_TEXTURE_2D)
                configRows = rows
            }
            val padded = values.copyOf(rows * CONFIG_ROW)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, configTexture)
            resetUnpack()
            GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, CONFIG_ROW, rows, GLES30.GL_RED,
                GLES30.GL_FLOAT, floatBuffer(padded))
            checkUpload("configuration")
            uploadedConfiguration = values.copyOf()
            configuration = uploadedConfiguration!!
        }

        private fun uploadLut(existing: Int, values: FloatArray, stage: String): Int {
            val size = FotufilmFrame.LUT_DIMENSION
            val texture = if (existing != 0) existing else genTexture().also {
                GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, it)
                GLES30.glTexStorage3D(GLES30.GL_TEXTURE_3D, 1, GLES30.GL_RGBA32F, size, size, size)
                nearestClamp(GLES30.GL_TEXTURE_3D)
            }
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, texture)
            resetUnpack()
            GLES30.glTexSubImage3D(GLES30.GL_TEXTURE_3D, 0, 0, 0, 0, size, size, size, GLES30.GL_RGBA,
                GLES30.GL_FLOAT, floatBuffer(values))
            checkUpload("$stage LUT")
            PLog.d(TAG, "Uploaded Fotufilm $stage LUT: ${size}³ RGBA32F")
            return texture
        }

        private fun uploadTiles(existing: Int, values: FloatArray): Int {
            val side = FotufilmFrame.FILM_TILE_ENTRIES_SIDE
            val layers = L.FILM_TILE_LEVELS * 3
            val limit = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_ARRAY_TEXTURE_LAYERS, limit, 0)
            require(layers <= limit[0]) { "Fotufilm film tiles need $layers layers, limit ${limit[0]}" }
            val texture = if (existing != 0) existing else genTexture().also {
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D_ARRAY, it)
                GLES30.glTexStorage3D(GLES30.GL_TEXTURE_2D_ARRAY, 1, GLES30.GL_R32F, side, side, layers)
                nearestClamp(GLES30.GL_TEXTURE_2D_ARRAY)
            }
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D_ARRAY, texture)
            resetUnpack()
            GLES30.glTexSubImage3D(GLES30.GL_TEXTURE_2D_ARRAY, 0, 0, 0, 0, side, side, layers, GLES30.GL_RED,
                GLES30.GL_FLOAT, floatBuffer(values))
            checkUpload("film tiles")
            PLog.d(TAG, "Uploaded Fotufilm film tiles: ${side}x${side}x$layers R32F")
            return texture
        }

        private fun genTexture(): Int {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            val texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
            check(texture != 0) { "Unable to allocate Fotufilm texture" }
            return texture
        }

        private fun resetUnpack() {
            GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_IMAGE_HEIGHT, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_PIXELS, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_ROWS, 0)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_SKIP_IMAGES, 0)
        }

        private fun checkUpload(what: String) {
            val error = GLES30.glGetError()
            check(error == GLES30.GL_NO_ERROR) { "Fotufilm $what upload failed: GL error=0x${error.toString(16)}" }
        }

        private fun floatBuffer(values: FloatArray): FloatBuffer = ByteBuffer
            .allocateDirect(values.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(values)
            .apply { position(0) }
    }

    companion object {
        private const val TAG = "FotufilmRenderer"

        /** Configuration texture row width, matching `cfg()` in [FotufilmShaders]. */
        private const val CONFIG_ROW = 1024

        /** `frame_mean`'s span of columns summed per thread. */
        private const val FLARE_SPAN = 64

        /** Interior rows of one band of the fields build. */
        const val FIELDS_BAND_ROWS = 256

        /** Invocations per image-pass submission; see [dispatchImage]. */
        private const val DISPATCH_BAND_PIXELS = 256 * 1024

        private const val RGBA32F_BYTES = 16L

        private fun nearestClamp(target: Int) {
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            if (target != GLES30.GL_TEXTURE_2D) {
                GLES30.glTexParameteri(target, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
            }
        }
    }
}
