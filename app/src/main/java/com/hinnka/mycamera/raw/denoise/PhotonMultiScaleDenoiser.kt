package com.hinnka.mycamera.raw.denoise

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.GlesGpuScheduler
import com.hinnka.mycamera.raw.RawDenoiseHistory
import com.hinnka.mycamera.raw.RawGlesProgram
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * GLES orchestration of the Photon denoiser (docs/photon-multiscale-denoise.md §4.3, §10).
 *
 * Analyze builds G_1..G_N (G_0 is computed from the input on the fly); the §5.1 strength table is
 * then estimated from G_0..G_N unless the params carry one. The §6.0 prefilter and the synthesis
 * run per row strip as separate per-pixel dispatches without shared memory: prefilter samples →
 * correction, and per level from coarse to fine Band → Pilot → Final, level 0 writing camera RGB
 * with the LSC gains restored. The strip images are shared by every strip and level; besides
 * them only the Gaussian levels and two adjacent denoised levels are held (§10.2). A [PassSink]
 * receives every pass output for parity checks; the synthesis then runs each level as one strip
 * so its band, base, noise and pilot images cover the whole level.
 */
internal class PhotonMultiScaleDenoiser {
    /** Receives pass outputs while their textures are alive (debug parity, §12.4). */
    fun interface PassSink {
        /** The [width] × [height] region at ([x], [y]) of [textureId] holds the pass output. */
        fun onPass(name: String, textureId: Int, x: Int, y: Int, width: Int, height: Int, float32: Boolean)

        /** The §5.1 strength table the synthesis used. */
        fun onStrength(table: FloatArray) {}
    }

    private var analyzeProgram = 0

    /** Synthesis programs by kind and variant, compiled on first use. */
    private val synthesizePrograms = HashMap<Pair<SynthesisKind, PhotonSynthesisVariant>, Int>()
    private var estimateProgram = 0
    private var estimateRecordsProgram = 0
    private var prefilterSamplesProgram = 0
    private var prefilterProgram = 0

    /** §6.0 level-0 luma correction of the current [denoise] call (R32F), 0 when not run. */
    private var prefilterTexture = 0
    private var resolveProgram = 0

    fun initialize(): Boolean {
        if (analyzeProgram == 0) analyzeProgram = RawGlesProgram.compileCompute(PhotonDenoiseShaders.ANALYZE, "PhotonDenoiseAnalyze")
        if (prefilterSamplesProgram == 0) {
            prefilterSamplesProgram =
                RawGlesProgram.compileCompute(PhotonDenoiseShaders.PREFILTER_SAMPLES, "PhotonDenoisePrefilterSamples")
        }
        if (prefilterProgram == 0) {
            prefilterProgram = RawGlesProgram.compileCompute(PhotonDenoiseShaders.PREFILTER, "PhotonDenoisePrefilter")
        }
        if (estimateProgram == 0) estimateProgram = RawGlesProgram.compileCompute(PhotonDenoiseShaders.ESTIMATE, "PhotonDenoiseEstimate")
        if (estimateRecordsProgram == 0) {
            estimateRecordsProgram =
                RawGlesProgram.compileCompute(PhotonDenoiseShaders.ESTIMATE_RECORDS, "PhotonDenoiseEstimateRecords")
        }
        if (resolveProgram == 0) resolveProgram = RawGlesProgram.compileCompute(PhotonDenoiseShaders.RESOLVE, "PhotonDenoiseResolve")
        return analyzeProgram != 0 && estimateProgram != 0 && estimateRecordsProgram != 0 && resolveProgram != 0 &&
            prefilterSamplesProgram != 0 && prefilterProgram != 0
    }

    /**
     * The [kind] synthesis program of [variant], 0 when it does not compile. The variant is reduced
     * to the switches the kind reads, so levels that differ only elsewhere share a program.
     */
    private fun synthesizeProgram(kind: SynthesisKind, variant: PhotonSynthesisVariant): Int {
        val key = when (kind) {
            SynthesisKind.BAND -> variant.copy(writeOutput = false, luma = false, chroma = false, bilateral = false)
            SynthesisKind.PILOT -> PhotonSynthesisVariant(false, false, false, false, false, false)
            SynthesisKind.FINAL -> variant.copy(fineIsInput = false, prefilter = false)
        }
        return synthesizePrograms.getOrPut(kind to key) {
            val name = "PhotonDenoiseSynthesize${kind.name}" +
                "[input=${key.fineIsInput} output=${key.writeOutput} prefilter=${key.prefilter} " +
                "luma=${key.luma} chroma=${key.chroma} bilateral=${key.bilateral}]"
            val source = when (kind) {
                SynthesisKind.BAND -> PhotonDenoiseShaders.synthesizeBand(key)
                SynthesisKind.PILOT -> PhotonDenoiseShaders.synthesizePilot(key)
                SynthesisKind.FINAL -> PhotonDenoiseShaders.synthesizeFinal(key)
            }
            RawGlesProgram.compileCompute(source, name)
        }
    }

    /** Band, pilot (-1 without luma) and final programs of one level of [variant]. */
    private fun levelPrograms(variant: PhotonSynthesisVariant): IntArray = intArrayOf(
        synthesizeProgram(SynthesisKind.BAND, variant),
        if (variant.luma) synthesizeProgram(SynthesisKind.PILOT, variant) else -1,
        synthesizeProgram(SynthesisKind.FINAL, variant),
    )

    fun release() {
        (intArrayOf(analyzeProgram, estimateProgram, estimateRecordsProgram, resolveProgram, prefilterSamplesProgram,
            prefilterProgram) +
            synthesizePrograms.values).forEach {
            if (it != 0) GLES31.glDeleteProgram(it)
        }
        synthesizePrograms.clear()
        analyzeProgram = 0
        estimateProgram = 0
        estimateRecordsProgram = 0
        prefilterSamplesProgram = 0
        prefilterProgram = 0
        resolveProgram = 0
    }

    /**
     * Denoises [inputTexture] (RGBA16F camera RGB, [width] × [height]) and returns a new RGBA16F
     * texture owned by the caller, or null when the programs are unavailable. [strengthOut]
     * ([RawDenoiseHistory.STRENGTH_ENTRIES] per level) receives the §5.1 table the synthesis used.
     */
    fun denoise(
        inputTexture: Int,
        width: Int,
        height: Int,
        params: PhotonDenoiseParams,
        strengthOut: FloatArray? = null,
        sink: PassSink? = null,
    ): Int? {
        if (!initialize()) return null
        val prefilterEnabled = prefilterAmounts(params).any { it > 0f }
        val variants = List(params.levels) { level ->
            val chroma = params.chromaStrength > 0f
            PhotonSynthesisVariant(
                fineIsInput = level == 0,
                writeOutput = level == 0,
                prefilter = level == 0 && prefilterEnabled,
                luma = level < params.lumaLevels && params.lumaStrength > 0f,
                chroma = chroma,
                bilateral = chroma && level >= params.levels - params.bilateralLevels,
            )
        }
        val programs = variants.map(::levelPrograms)
        if (programs.any { 0 in it }) return null
        val timing = PhotonDenoiseTiming(width, height, params)
        val sizes = ArrayList<IntArray>(params.levels + 1)
        sizes += intArrayOf(width, height)
        repeat(params.levels) { val s = sizes.last(); sizes += intArrayOf((s[0] + 1) / 2, (s[1] + 1) / 2) }
        val owned = ArrayList<Int>()
        fun texture(size: IntArray, format: Int) = createTexture(size[0], size[1], format).also(owned::add)
        val lscTexture = timing.gpu("upload.lsc") {
            params.lensShading?.let { createLscTexture(it).also(owned::add) } ?: 0
        }
        val mergeTexture = timing.gpu("upload.merge", "${params.mergeMapWidth}x${params.mergeMapHeight}") {
            createMergeTexture(params).also(owned::add)
        }
        val output = createTexture(width, height, GLES30.GL_RGBA16F)
        val buffers = IntArray(2)
        GLES31.glGenBuffers(2, buffers, 0)
        val strengthBuffer = buffers[0]
        val histogramBuffer = buffers[1]
        try {
            val gaussians = IntArray(params.levels + 1)
            for (level in 0 until params.levels) {
                val coarse = sizes[level + 1]
                timing.gpu("analyze", "G${level + 1} ${coarse[0]}x${coarse[1]}") {
                    gaussians[level + 1] = texture(coarse, GLES30.GL_RGBA16F)
                    GLES31.glUseProgram(analyzeProgram)
                    bindCommon(analyzeProgram, inputTexture, lscTexture, params)
                    bindSampler(analyzeProgram, "uFine", UNIT_FINE, if (level == 0) inputTexture else gaussians[level])
                    uniform1i(analyzeProgram, "uFineIsInput", if (level == 0) 1 else 0)
                    uniform2i(analyzeProgram, "uFineSize", sizes[level])
                    uniform2i(analyzeProgram, "uCoarseSize", coarse)
                    bindImage(0, gaussians[level + 1], GLES30.GL_RGBA16F)
                    dispatch(analyzeProgram, coarse)
                }
                GlesGpuScheduler.yieldToUiRenderer()
                sink?.onPass("G${level + 1}", gaussians[level + 1], 0, 0, coarse[0], coarse[1], false)
            }

            val tableSize = params.levels * RawDenoiseHistory.STRENGTH_ENTRIES
            val fixedTable = params.strengthTable
            if (fixedTable != null) {
                require(fixedTable.size == tableSize) { "Strength table has ${fixedTable.size} values, expected $tableSize" }
                timing.gpu("strength.upload") { uploadBuffer(strengthBuffer, floatBuffer(fixedTable)) }
            } else {
                estimateStrength(inputTexture, lscTexture, mergeTexture, gaussians, sizes, params,
                    histogramBuffer, strengthBuffer, timing)
            }
            if (strengthOut != null || sink != null) {
                // Mapping waits for the estimate: the CPU time here is the GPU backlog it drains.
                val table = timing.cpu("strength.readback") { readStrength(strengthBuffer, tableSize) }
                strengthOut?.let { table.copyInto(it, 0, 0, minOf(it.size, tableSize)) }
                sink?.onStrength(table)
            }
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, strengthBuffer)

            // Strip images plus the band / pilot borders, reused by every strip and level; the
            // parity run takes the whole height so a level is one strip.
            val rows = if (sink != null) height else minOf(STRIP_ROWS, height)
            val bandSize = intArrayOf(width + 2 * BAND_BORDER, rows + 2 * BAND_BORDER)
            val pilotSize = intArrayOf(width + 2 * PILOT_BORDER, rows + 2 * PILOT_BORDER)
            val strips = StripImages(rows, lap = texture(bandSize, GLES30.GL_RGBA16F),
                base = texture(bandSize, GLES30.GL_RGBA16F), noise = texture(bandSize, GLES30.GL_RGBA32F),
                pilot = texture(pilotSize, GLES30.GL_RGBA16F))
            val frame = SynthesisFrame(inputTexture, lscTexture, mergeTexture, gaussians, sizes, params, strips)

            prefilterTexture = 0
            if (prefilterEnabled) {
                prefilterTexture = texture(sizes[0], GLES30.GL_RGBA32F)
                timing.gpu("prefilter", "L0 ${width}x$height") { prefilter(frame, prefilterTexture) }
                sink?.onPass("prefilter0", prefilterTexture, 0, 0, width, height, true)
            }

            frame.denoisedCoarse = gaussians[params.levels]
            for (level in params.levels - 1 downTo 0) {
                val size = sizes[level]
                val variant = variants[level]
                val result = if (level == 0) output else texture(size, GLES30.GL_RGBA16F)
                timing.gpu("synthesize", "L$level ${size[0]}x${size[1]} luma=${variant.luma} " +
                    "chroma=${variant.chroma} bilateral=${variant.bilateral}") {
                    synthesizeLevel(frame, level, programs[level], result)
                }
                if (sink != null) {
                    // One strip: the strip images hold this level's passes at their border offsets.
                    sink.onPass("band$level", strips.lap, BAND_BORDER, BAND_BORDER, size[0], size[1], false)
                    sink.onPass("base$level", strips.base, BAND_BORDER, BAND_BORDER, size[0], size[1], false)
                    sink.onPass("noise$level", strips.noise, BAND_BORDER, BAND_BORDER, size[0], size[1], true)
                    if (variant.luma) {
                        sink.onPass("pilot$level", strips.pilot, PILOT_BORDER, PILOT_BORDER, size[0], size[1], false)
                    }
                    sink.onPass(if (level == 0) "output" else "denoised$level", result, 0, 0, size[0], size[1], false)
                }
                if (timing.ablation) synthesizeAblation(timing, frame, level, variant)

                val previous = frame.denoisedCoarse
                if (previous != gaussians[params.levels]) {
                    GLES30.glDeleteTextures(1, intArrayOf(previous), 0)
                    owned.remove(previous)
                }
                frame.denoisedCoarse = result
            }
            RawGlesProgram.logErrors("PhotonMultiScaleDenoiser")
            timing.report()
            return output
        } catch (error: Throwable) {
            GLES30.glDeleteTextures(1, intArrayOf(output), 0)
            throw error
        } finally {
            if (owned.isNotEmpty()) GLES30.glDeleteTextures(owned.size, owned.toIntArray(), 0)
            prefilterTexture = 0
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
            GLES31.glDeleteBuffers(2, buffers, 0)
            GLES31.glUseProgram(0)
        }
    }

    /**
     * §6.0 per row strip: the samples of the strip plus PREFILTER_BORDER, fine Y/Cb/Cr into the
     * strip noise image and L rounded to float16 into the strip lap image, then the correction of
     * the strip's rows into [target].
     */
    private fun prefilter(frame: SynthesisFrame, target: Int) {
        val strips = frame.strips
        val size = frame.sizes[0]
        var y = 0
        while (y < size[1]) {
            val rows = minOf(strips.rows, size[1] - y)
            val sampleOrigin = intArrayOf(-PREFILTER_BORDER, y - PREFILTER_BORDER)

            val sampleExtent = intArrayOf(size[0] + 2 * PREFILTER_BORDER, rows + 2 * PREFILTER_BORDER)
            GLES31.glUseProgram(prefilterSamplesProgram)
            bindPrefilter(prefilterSamplesProgram, frame)
            uniform2i(prefilterSamplesProgram, "uSampleOrigin", sampleOrigin)
            uniform2i(prefilterSamplesProgram, "uExtent", sampleExtent)
            bindImage(0, strips.noise, GLES30.GL_RGBA32F)
            bindImage(1, strips.lap, GLES30.GL_RGBA16F)
            dispatch(prefilterSamplesProgram, sampleExtent)

            val extent = intArrayOf(size[0], rows)
            GLES31.glUseProgram(prefilterProgram)
            bindPrefilter(prefilterProgram, frame)
            bindSampler(prefilterProgram, "uSamples", UNIT_NOISE, strips.noise)
            bindSampler(prefilterProgram, "uLaps", UNIT_LAP, strips.lap)
            uniform3f(prefilterProgram, "uAmounts", prefilterAmounts(frame.params))
            uniform2i(prefilterProgram, "uSampleOrigin", sampleOrigin)
            uniform2i(prefilterProgram, "uOutputOrigin", intArrayOf(0, y))
            uniform2i(prefilterProgram, "uExtent", extent)
            bindImage(0, target, GLES30.GL_RGBA32F)
            dispatch(prefilterProgram, extent)
            GlesGpuScheduler.yieldToUiRenderer()
            y += rows
        }
    }

    private fun bindPrefilter(program: Int, frame: SynthesisFrame) {
        val params = frame.params
        bindCommon(program, frame.input, frame.lsc, params)
        bindModelNoise(program, frame.merge, 0, params)
        bindSampler(program, "uNoisyCoarse", UNIT_NOISY_COARSE, frame.gaussians[1])
        uniform2i(program, "uSize", frame.sizes[0])
        uniform2i(program, "uCoarseSize", frame.sizes[1])
    }

    /** §6.0 correction scale of Y, Cb, Cr; 0 where that channel is not denoised. */
    private fun prefilterAmounts(params: PhotonDenoiseParams): FloatArray {
        val luma = if (params.lumaLevels > 0) minOf(params.lumaStrength, 1f) else 0f
        val chroma = minOf(params.chromaStrength, 1f)
        return floatArrayOf(maxOf(luma, 0f), maxOf(chroma, 0f), maxOf(chroma, 0f))
    }

    /**
     * Timing only: re-runs the synthesis of [level] into a scratch image with the luma, chroma gate
     * and chroma bilateral stages switched on one at a time, and with all of them as in the real
     * pass; the differences to the band-only run are each stage's GPU cost. Every variant runs
     * [ABLATION_REPEATS] rounds and the report keeps the fastest, which drops the runs slowed by the
     * GPU clocking down between serialized passes.
     */
    private fun synthesizeAblation(
        timing: PhotonDenoiseTiming,
        frame: SynthesisFrame,
        level: Int,
        full: PhotonSynthesisVariant,
    ) {
        val size = frame.sizes[level]
        val none = full.copy(luma = false, chroma = false, bilateral = false)
        val runs = buildList {
            add("full" to full)
            add("none" to none)
            if (full.luma) add("luma" to none.copy(luma = true))
            if (full.chroma) add("chroma" to none.copy(chroma = true))
            if (full.bilateral) add("bilateral" to none.copy(chroma = true, bilateral = true))
        }.map { (name, variant) ->
            name to levelPrograms(variant).also { check(0 !in it) { "Ablation program $name does not compile" } }
        }
        val scratch = createTexture(size[0], size[1], GLES30.GL_RGBA16F)
        try {
            repeat(ABLATION_REPEATS) {
                for ((name, programs) in runs) {
                    timing.gpu(PhotonDenoiseTiming.ABLATION + name, "L$level ${size[0]}x${size[1]}") {
                        synthesizeLevel(frame, level, programs, scratch)
                    }
                }
            }
        } finally {
            GLES30.glDeleteTextures(1, intArrayOf(scratch), 0)
        }
    }

    /**
     * Synthesizes [level] with [programs] ([levelPrograms]) into [target]: per row strip the band,
     * pilot (luma only) and final dispatches, each strip flushed with a yield so the UI renderer
     * gets GPU slots inside a level. As in GlesMgcRawSpatialStacker the UI is kept responsive by the
     * low-priority EGL context and these yields, never by fence waits inside a level.
     */
    private fun synthesizeLevel(frame: SynthesisFrame, level: Int, programs: IntArray, target: Int) {
        val strips = frame.strips
        val size = frame.sizes[level]
        val (band, pilot, final) = programs
        var y = 0
        while (y < size[1]) {
            val rows = minOf(strips.rows, size[1] - y)
            val bandOrigin = intArrayOf(-BAND_BORDER, y - BAND_BORDER)
            val pilotOrigin = intArrayOf(-PILOT_BORDER, y - PILOT_BORDER)

            val bandExtent = intArrayOf(size[0] + 2 * BAND_BORDER, rows + 2 * BAND_BORDER)
            GLES31.glUseProgram(band)
            bindSynthesize(band, frame, level)
            uniform2i(band, "uBandOrigin", bandOrigin)
            uniform2i(band, "uExtent", bandExtent)
            bindImage(0, strips.lap, GLES30.GL_RGBA16F)
            bindImage(1, strips.base, GLES30.GL_RGBA16F)
            bindImage(2, strips.noise, GLES30.GL_RGBA32F)
            dispatch(band, bandExtent)

            if (pilot > 0) {
                val pilotExtent = intArrayOf(size[0] + 2 * PILOT_BORDER, rows + 2 * PILOT_BORDER)
                GLES31.glUseProgram(pilot)
                bindStrip(pilot, frame, level, bandOrigin, pilotOrigin)
                uniform2i(pilot, "uExtent", pilotExtent)
                bindImage(0, strips.pilot, GLES30.GL_RGBA16F)
                dispatch(pilot, pilotExtent)
            }

            val finalExtent = intArrayOf(size[0], rows)
            GLES31.glUseProgram(final)
            bindStrip(final, frame, level, bandOrigin, pilotOrigin)
            uniform2i(final, "uOutputOrigin", intArrayOf(0, y))
            uniform2i(final, "uExtent", finalExtent)
            bindImage(0, target, GLES30.GL_RGBA16F)
            dispatch(final, finalExtent)
            GlesGpuScheduler.yieldToUiRenderer()
            y += rows
        }
    }

    /** [bindSynthesize] plus the strip images the pilot and final read. */
    private fun bindStrip(program: Int, frame: SynthesisFrame, level: Int, bandOrigin: IntArray, pilotOrigin: IntArray) {
        val strips = frame.strips
        bindSynthesize(program, frame, level)
        bindSampler(program, "uLap", UNIT_LAP, strips.lap)
        bindSampler(program, "uBase", UNIT_BASE, strips.base)
        bindSampler(program, "uNoise", UNIT_NOISE, strips.noise)
        bindSampler(program, "uPilot", UNIT_PILOT, strips.pilot)
        uniform2i(program, "uBandOrigin", bandOrigin)
        uniform2i(program, "uPilotOrigin", pilotOrigin)
    }

    /**
     * §5.1: [PhotonDenoiseShaders.ESTIMATE_PASSES] rounds of histograms of every level followed by
     * the resolve into [strengthBuffer]; every round after the first gates with the table of the
     * round before.
     */
    private fun estimateStrength(
        inputTexture: Int,
        lscTexture: Int,
        mergeTexture: Int,
        gaussians: IntArray,
        sizes: List<IntArray>,
        params: PhotonDenoiseParams,
        histogramBuffer: Int,
        strengthBuffer: Int,
        timing: PhotonDenoiseTiming,
    ) {
        val entries = PhotonDenoiseShaders.STRENGTH_BINS * 3 * PhotonDenoiseShaders.HIST_BUCKETS
        val zeros = ByteBuffer.allocateDirect(params.levels * entries * Int.SIZE_BYTES).order(ByteOrder.nativeOrder())
        uploadBuffer(strengthBuffer, ByteBuffer.allocateDirect(
            params.levels * RawDenoiseHistory.STRENGTH_ENTRIES * Float.SIZE_BYTES).order(ByteOrder.nativeOrder()))
        val capLuma = FloatArray(PhotonDenoiseTuning.MAX_LEVELS).also { params.strengthCapLuma.copyInto(it) }
        val capChroma = FloatArray(PhotonDenoiseTuning.MAX_LEVELS).also { params.strengthCapChroma.copyInto(it) }
        val span = GlesComputeWorkGroup.IMAGE_TILE_SIZE * PhotonDenoiseShaders.ESTIMATE_BLOCK
        // Sample grid of every level and the offset of its records (three planes of one uint per sample).
        val strides = IntArray(params.levels) { level ->
            when (level) {
                0 -> 4
                1 -> 2
                else -> 1
            }
        }
        val samples = List(params.levels) { level ->
            intArrayOf((sizes[level][0] + strides[level] - 1) / strides[level],
                (sizes[level][1] + strides[level] - 1) / strides[level])
        }
        val recordOffsets = IntArray(params.levels + 1)
        for (level in 0 until params.levels) {
            recordOffsets[level + 1] = recordOffsets[level] + RECORD_UINTS * samples[level][0] * samples[level][1]
        }
        val recordBuffer = IntArray(1)
        GLES31.glGenBuffers(1, recordBuffer, 0)
        try {
            // The first pass writes every record before any is read, so the contents may start undefined.
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, recordBuffer[0])
            GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, recordOffsets[params.levels] * Int.SIZE_BYTES,
                null, GLES31.GL_DYNAMIC_COPY)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            repeat(PhotonDenoiseShaders.ESTIMATE_PASSES) { pass ->
                // glBufferData(null) leaves the contents undefined: the counts start from explicit zeros.
                timing.gpu("estimate.clear", "pass$pass") { uploadBuffer(histogramBuffer, zeros) }
                // The first pass computes the samples and stores their records; the later passes
                // recount the records with their own flat gate.
                val program = if (pass == 0) estimateProgram else estimateRecordsProgram
                GLES31.glUseProgram(program)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, histogramBuffer)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, strengthBuffer)
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 2, recordBuffer[0])
                for (level in 0 until params.levels) timing.gpu("estimate.histogram", "pass$pass L$level") {
                    bindCommon(program, inputTexture, lscTexture, params)
                    bindModelNoise(program, mergeTexture, level, params)
                    if (pass == 0) {
                        bindSampler(program, "uFine", UNIT_FINE, if (level == 0) inputTexture else gaussians[level])
                        bindSampler(program, "uCoarse", UNIT_NOISY_COARSE, gaussians[level + 1])
                        uniform1i(program, "uFineIsInput", if (level == 0) 1 else 0)
                        uniform2i(program, "uCoarseSize", sizes[level + 1])
                    }
                    uniform2i(program, "uSize", sizes[level])
                    uniform1i(program, "uHasPrevious", if (pass > 0) 1 else 0)
                    uniform1i(program, "uStride", strides[level])
                    uniform1i(program, "uRecordOffset", recordOffsets[level])
                    uniform1i(program, "uRecordCount", samples[level][0] * samples[level][1])
                    GLES31.glDispatchCompute((samples[level][0] + span - 1) / span, (samples[level][1] + span - 1) / span, 1)
                }
                GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT)

                timing.gpu("estimate.resolve", "pass$pass") {
                    GLES31.glUseProgram(resolveProgram)
                    GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, histogramBuffer)
                    GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, strengthBuffer)
                    uniform1i(resolveProgram, "uLevels", params.levels)
                    GLES31.glUniform1fv(location(resolveProgram, "uCapLuma"), capLuma.size, capLuma, 0)
                    GLES31.glUniform1fv(location(resolveProgram, "uCapChroma"), capChroma.size, capChroma, 0)
                    GLES31.glDispatchCompute(1, 1, 1)
                    GLES31.glMemoryBarrier(GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT)
                }
                GlesGpuScheduler.yieldToUiRenderer()
            }
        } finally {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 2, 0)
            GLES31.glDeleteBuffers(1, recordBuffer, 0)
        }
    }

    private fun readStrength(buffer: Int, size: Int): FloatArray {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        val mapped = GLES31.glMapBufferRange(GLES31.GL_SHADER_STORAGE_BUFFER, 0, size * Float.SIZE_BYTES,
            GLES31.GL_MAP_READ_BIT) as? ByteBuffer
        try {
            val values = checkNotNull(mapped) { "Strength table is not mappable" }
            return FloatArray(size).also { values.order(ByteOrder.nativeOrder()).asFloatBuffer().get(it) }
        } finally {
            if (mapped != null) GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        }
    }

    private fun uploadBuffer(buffer: Int, data: ByteBuffer) {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, buffer)
        GLES31.glBufferData(GLES31.GL_SHADER_STORAGE_BUFFER, data.capacity(), data, GLES31.GL_DYNAMIC_COPY)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
    }

    private fun floatBuffer(values: FloatArray): ByteBuffer =
        ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES).order(ByteOrder.nativeOrder()).also {
            it.asFloatBuffer().put(values)
        }

    /** Uniforms of the §2.1 model-noise snippet at [level]. */
    private fun bindModelNoise(program: Int, mergeTexture: Int, level: Int, params: PhotonDenoiseParams) {
        uniform1i(program, "uLevel", level)
        uniform3f(program, "uRead", params.read)
        uniform3f(program, "uShot", params.shot)
        bindSampler(program, "uMergeMap", UNIT_MERGE, mergeTexture)
        GLES31.glUniform2i(location(program, "uMergeSize"), params.mergeMapWidth, params.mergeMapHeight)
        uniform3f(program, "uResidual", params.residual[level])
        GLES31.glUniform1fv(location(program, "uKappaLuma"), 4, params.kappaLuma[level], 0)
        GLES31.glUniform1fv(location(program, "uKappaChroma"), 4, params.kappaChroma[level], 0)
    }

    private fun bindCommon(program: Int, inputTexture: Int, lscTexture: Int, params: PhotonDenoiseParams) {
        bindSampler(program, "uInput", UNIT_INPUT, inputTexture)
        uniform1f(program, "uScale", params.scale)
        uniform3f(program, "uWb", params.whiteBalance)
        val lsc = params.lensShading
        uniform1i(program, "uLscMode", when {
            lsc == null -> 0
            lsc.dngGrid == null -> 1
            else -> 2
        })
        bindSampler(program, "uLscMap", UNIT_LSC, if (lscTexture != 0) lscTexture else inputTexture)
        GLES31.glUniform2i(location(program, "uLscSize"), lsc?.width ?: 1, lsc?.height ?: 1)
        GLES31.glUniform1fv(location(program, "uLscGrid"), 8, lsc?.dngGrid ?: FloatArray(8), 0)
        GLES31.glUniform2i(location(program, "uOrigin"), params.originX, params.originY)
        GLES31.glUniform2i(location(program, "uFullSize"), params.fullWidth, params.fullHeight)
    }

    private fun bindSynthesize(program: Int, frame: SynthesisFrame, level: Int) {
        val params = frame.params
        bindCommon(program, frame.input, frame.lsc, params)
        bindSampler(program, "uFine", UNIT_FINE, if (level == 0) frame.input else frame.gaussians[level])
        bindSampler(program, "uNoisyCoarse", UNIT_NOISY_COARSE, frame.gaussians[level + 1])
        // The sampler needs a valid texture even when the correction is off.
        bindSampler(program, "uPrefilter", UNIT_PREFILTER, if (prefilterTexture != 0) prefilterTexture else frame.input)
        bindSampler(program, "uDenoisedCoarse", UNIT_DENOISED_COARSE, frame.denoisedCoarse)
        uniform2i(program, "uSize", frame.sizes[level])
        uniform2i(program, "uCoarseSize", frame.sizes[level + 1])
        bindModelNoise(program, frame.merge, level, params)
        uniform1f(program, "uOutlier", params.outlier[level])
        uniform1f(program, "uAlpha", params.lumaAlpha(level))
        uniform1f(program, "uGrain", params.lumaGrain(level))
        uniform1f(program, "uGamma", params.gamma[level])
        uniform1f(program, "uChromaStrength", minOf(params.chromaStrength, 1f))
        uniform1i(program, "uChromaGate", if (level >= params.chromaGateFrom) 1 else 0)
        uniform1i(program, "uChromaDetail", if (level < params.chromaDetailFrom) 1 else 0)
        uniform2f(program, "uChromaDetailSnr", params.chromaDetailSnr)
        uniform1f(program, "uChromaGuide", params.chromaGuide)
        val thresholdScale = params.chromaThresholdScale()
        GLES31.glUniform2f(location(program, "uGateLuma"),
            params.gateLuma[0] * thresholdScale, params.gateLuma[1] * thresholdScale)
        GLES31.glUniform2f(location(program, "uGateChroma"),
            params.gateChroma[0] * thresholdScale, params.gateChroma[1] * thresholdScale)
        uniform1f(program, "uBilateralLuma", params.bilateralLuma)
        uniform1f(program, "uBilateralChroma", params.bilateralChroma * thresholdScale)
    }

    private fun createTexture(width: Int, height: Int, format: Int): Int {
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

    private fun createLscTexture(lsc: PhotonLensShading): Int {
        val texture = createTexture(lsc.width, lsc.height, GLES30.GL_RGBA32F)
        val data = ByteBuffer.allocateDirect(lsc.width * lsc.height * 4 * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
        data.asFloatBuffer().put(lsc.gains, 0, lsc.width * lsc.height * 4)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, lsc.width, lsc.height, GLES30.GL_RGBA, GLES30.GL_FLOAT, data)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return texture
    }

    /** §2.2 (m_r, m_s) map as RG32F; a 1×1 map of the scalars when the pixels carry none. */
    private fun createMergeTexture(params: PhotonDenoiseParams): Int {
        val texture = createTexture(params.mergeMapWidth, params.mergeMapHeight, GLES30.GL_RG32F)
        val values = params.mergeMapValues()
        val data = ByteBuffer.allocateDirect(values.size * Float.SIZE_BYTES).order(ByteOrder.nativeOrder())
        data.asFloatBuffer().put(values)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glTexSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, params.mergeMapWidth, params.mergeMapHeight,
            GLES30.GL_RG, GLES30.GL_FLOAT, data)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        return texture
    }

    /**
     * One dispatch over [size]. As in GlesMgcRawSpatialStacker, the UI renderer is kept responsive
     * by the low-priority EGL context and a flush + yield between strips and levels, never by fence
     * waits: those drain the GPU and leave it idle until this thread wakes up.
     */
    private fun dispatch(program: Int, size: IntArray) {
        GLES31.glDispatchCompute(GlesComputeWorkGroup.imageGroupCount(size[0]),
            GlesComputeWorkGroup.imageGroupCount(size[1]), 1)
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or
                GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
    }

    private fun bindImage(unit: Int, texture: Int, format: Int) {
        GLES31.glBindImageTexture(unit, texture, 0, false, 0, GLES31.GL_WRITE_ONLY, format)
    }

    private fun bindSampler(program: Int, name: String, unit: Int, texture: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
        GLES31.glUniform1i(location(program, name), unit)
    }

    private enum class SynthesisKind { BAND, PILOT, FINAL }

    /** What every prefilter and synthesis dispatch of one [denoise] call binds. */
    private class SynthesisFrame(
        val input: Int,
        val lsc: Int,
        val merge: Int,
        val gaussians: IntArray,
        val sizes: List<IntArray>,
        val params: PhotonDenoiseParams,
        val strips: StripImages,
    ) {
        /** G̃_{l+1} of the level being synthesized. */
        var denoisedCoarse = 0
    }

    /**
     * Images of one row strip of [rows] rows (PhotonDenoiseShaders.synthesizeBand): L, base and
     * noise with BAND_BORDER, the pilot with PILOT_BORDER on every side. The prefilter samples use
     * the noise image with PREFILTER_BORDER.
     */
    private class StripImages(val rows: Int, val lap: Int, val base: Int, val noise: Int, val pilot: Int)

    private fun location(program: Int, name: String) = GLES31.glGetUniformLocation(program, name)
    private fun uniform1i(program: Int, name: String, value: Int) = GLES31.glUniform1i(location(program, name), value)
    private fun uniform1f(program: Int, name: String, value: Float) = GLES31.glUniform1f(location(program, name), value)
    private fun uniform2i(program: Int, name: String, size: IntArray) =
        GLES31.glUniform2i(location(program, name), size[0], size[1])
    private fun uniform2f(program: Int, name: String, v: FloatArray) =
        GLES31.glUniform2f(location(program, name), v[0], v[1])
    private fun uniform3f(program: Int, name: String, v: FloatArray) =
        GLES31.glUniform3f(location(program, name), v[0], v[1], v[2])

    private companion object {
        const val ABLATION_REPEATS = 3
        const val RECORD_UINTS = 3
        const val STRIP_ROWS = 256
        const val BAND_BORDER = 4
        const val PILOT_BORDER = 2
        const val PREFILTER_BORDER = 2
        const val UNIT_INPUT = 0
        const val UNIT_LSC = 1
        const val UNIT_FINE = 2
        const val UNIT_NOISY_COARSE = 3
        const val UNIT_DENOISED_COARSE = 4
        const val UNIT_MERGE = 5
        const val UNIT_PREFILTER = 6
        const val UNIT_LAP = 7
        const val UNIT_BASE = 8
        const val UNIT_NOISE = 9
        const val UNIT_PILOT = 10
    }
}
