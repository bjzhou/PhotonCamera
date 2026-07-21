package com.hinnka.mycamera.processor

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.utils.DirectBufferPixelPacker
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import kotlin.math.acos
import kotlin.math.ceil
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.sin

/**
 * Post-fusion VGN chroma filtering for Radiance RGB.
 *
 * Radiance tiles are first captured into a tiled 2D-array backing store. All later shader
 * coordinates are global output coordinates, so local color-noise kernels cross layer boundaries
 * and every IIR invocation scans an entire output row or column. A Radiance tile is therefore a
 * storage page, never a filter boundary.
 *
 * Input and output are un-white-balanced camera RGB. LSC is already part of reconstructed RGB and
 * is deliberately untouched here. The seed shader enters calculation-WB RGB/YCCD once, and the
 * final shader applies the inverse calculation WB once.
 */
internal class GlesRadianceVgnChromaPostprocessor(
    private val imageWidth: Int,
    private val imageHeight: Int,
    private val tiles: List<RadianceTile>,
    calculationWbGains: FloatArray,
    outputScale: Float,
    private val backend: Backend,
    private val exportFullSizeTexture: Boolean = false,
) {
    interface Backend {
        fun linkComputeProgram(source: String, name: String): Int

        fun uniformLocation(program: Int, name: String): Int

        fun checkGlError(label: String)

        fun yieldToUiRenderer()
    }

    data class ReadbackTiming(
        val elapsedMs: Long,
        val glReadMs: Long,
        val copyMs: Long,
        val allocMs: Long,
    )

    data class ProcessResult(
        val readbackTiming: ReadbackTiming,
        val exportedTextureId: Int,
    )

    private val calculationRgbGains = floatArrayOf(
        calculationWbGains.getOrElse(0) { 1f },
        1f,
        calculationWbGains.getOrElse(3) { 1f },
    ).also { gains ->
        require(gains.all { it.isFinite() && it > 0f }) {
            "Radiance VGN chroma calculation gains must be finite and positive"
        }
    }
    private val safeOutputScale = outputScale.takeIf { it.isFinite() && it > 0f } ?: 1f
    private val coefficients = RadianceVgnChromaIirCoefficients.forOutputScale(safeOutputScale)
    private val tileColumns: Int
    private val tileRows: Int
    private val tileLefts: IntArray
    private val tileTops: IntArray
    private val layerWidth: Int
    private val layerHeight: Int

    private var captureProgram = 0
    private var seedProgram = 0
    private var colorNoise1Program = 0
    private var colorNoise2Program = 0
    private var colorNoise3SmoothProgram = 0
    private var restoreOriginalProgram = 0
    private var iirRgbProgram = 0
    private var calculateErrorProgram = 0
    private var iirErrorProgram = 0
    private var colorNoiseFilterProgram = 0
    private var finalProgram = 0

    private var capturedRgb = 0
    private var originalYccd = 0
    private var smoothYccd = 0
    private var fullSizeCameraRgb = 0
    private var gpuExportEnabled = exportFullSizeTexture
    private var readbackFbo = 0
    private val ownedTextures = ArrayList<Int>(3)

    init {
        require(imageWidth > 0 && imageHeight > 0)
        require(tiles.isNotEmpty())
        require(tiles.size <= GlesRadianceVgnChromaShaders.MAX_TILE_LAYERS) {
            "Radiance VGN chroma has ${tiles.size} tiles; shader supports at most " +
                GlesRadianceVgnChromaShaders.MAX_TILE_LAYERS
        }
        val rows = tiles.groupBy { it.outputCore.top }.toSortedMap().values.toList()
        tileRows = rows.size
        tileColumns = rows.first().size
        require(tileColumns in 1..GlesRadianceVgnChromaShaders.MAX_TILE_AXIS)
        require(tileRows in 1..GlesRadianceVgnChromaShaders.MAX_TILE_AXIS)
        require(rows.all { it.size == tileColumns }) { "Radiance tile grid must be rectangular" }
        tileLefts = rows.first().map { it.outputCore.left }.toIntArray()
        tileTops = rows.map { it.first().outputCore.top }.toIntArray()
        rows.forEachIndexed { rowIndex, row ->
            row.forEachIndexed { columnIndex, tile ->
                require(tile.index == rowIndex * tileColumns + columnIndex) {
                    "Radiance tiles must be row-major for array storage"
                }
                require(tile.outputCore.left == tileLefts[columnIndex])
                require(tile.outputCore.top == tileTops[rowIndex])
            }
        }
        layerWidth = tiles.maxOf { it.outputCore.width }
        layerHeight = tiles.maxOf { it.outputCore.height }
    }

    fun initPrograms() {
        if (captureProgram != 0) return
        captureProgram = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.capture,
            "raw_radiance_vgn_chroma_capture",
        )
        seedProgram = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.seed,
            "raw_radiance_vgn_chroma_seed",
        )
        colorNoise1Program = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.colorNoise1,
            "raw_radiance_vgn_chroma_noise_1",
        )
        colorNoise2Program = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.colorNoise2,
            "raw_radiance_vgn_chroma_noise_2",
        )
        colorNoise3SmoothProgram = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.colorNoise3Smooth,
            "raw_radiance_vgn_chroma_noise_3_smooth",
        )
        restoreOriginalProgram = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.restoreOriginal,
            "raw_radiance_vgn_chroma_restore_original",
        )
        iirRgbProgram = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.iirRgb,
            "raw_radiance_vgn_chroma_iir_rgb",
        )
        calculateErrorProgram = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.calculateColorNoiseError,
            "raw_radiance_vgn_chroma_error",
        )
        iirErrorProgram = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.iirError,
            "raw_radiance_vgn_chroma_iir_error",
        )
        colorNoiseFilterProgram = backend.linkComputeProgram(
            GlesRadianceVgnChromaShaders.colorNoiseFilter,
            "raw_radiance_vgn_chroma_filter",
        )
        finalProgram = if (gpuExportEnabled) {
            runCatching {
                backend.linkComputeProgram(
                    GlesRadianceVgnChromaShaders.finalCameraRgb(exportFullSizeTexture = true),
                    "raw_radiance_vgn_chroma_final_camera_rgb_2d",
                )
            }.onFailure { error ->
                gpuExportEnabled = false
                PLog.w(TAG, "Full-size Radiance GPU export shader unavailable; using CPU handoff", error)
            }.getOrElse {
                backend.linkComputeProgram(
                    GlesRadianceVgnChromaShaders.finalCameraRgb(exportFullSizeTexture = false),
                    "raw_radiance_vgn_chroma_final_camera_rgb_array",
                )
            }
        } else {
            backend.linkComputeProgram(
                GlesRadianceVgnChromaShaders.finalCameraRgb(exportFullSizeTexture = false),
                "raw_radiance_vgn_chroma_final_camera_rgb_array",
            )
        }
    }

    fun initStorage() {
        check(captureProgram != 0) { "Radiance VGN chroma programs are not initialized" }
        if (capturedRgb != 0) return
        val maxLayers = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_ARRAY_TEXTURE_LAYERS, maxLayers, 0)
        require(tiles.size <= maxLayers[0]) {
            "Radiance VGN chroma requires ${tiles.size} array layers; GLES supports ${maxLayers[0]}"
        }
        capturedRgb = createArrayTexture()
        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        readbackFbo = ids[0]
        check(readbackFbo != 0) { "Failed to allocate Radiance VGN chroma readback framebuffer" }
        backend.checkGlError("Radiance VGN chroma storage")
    }

    fun capture(normalizedTileTexture: Int, tile: RadianceTile) {
        check(capturedRgb != 0) { "Radiance VGN chroma storage is not initialized" }
        GLES31.glUseProgram(captureProgram)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, normalizedTileTexture)
        GLES31.glUniform1i(backend.uniformLocation(captureProgram, "uSource"), 0)
        GLES31.glUniform2i(
            backend.uniformLocation(captureProgram, "uTileSize"),
            tile.outputCore.width,
            tile.outputCore.height,
        )
        GLES31.glUniform1i(backend.uniformLocation(captureProgram, "uLayer"), tile.index)
        bindArrayImage(0, capturedRgb, GLES31.GL_WRITE_ONLY)
        GLES31.glDispatchCompute(groupCount(tile.outputCore.width), groupCount(tile.outputCore.height), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        backend.checkGlError("Radiance VGN chroma capture tile ${tile.index}")
    }

    fun processAndReadback(outputBuffer: ByteBuffer): ProcessResult {
        check(capturedRgb != 0) { "Radiance VGN chroma has no captured Radiance output" }
        originalYccd = createArrayTexture()
        smoothYccd = createArrayTexture()

        dispatchSeed()
        dispatchLocal(colorNoise1Program, originalYccd, capturedRgb, "color noise 1")
        dispatchLocal(colorNoise2Program, capturedRgb, smoothYccd, "color noise 2")
        dispatchColorNoise3()
        dispatchRestoreOriginal()

        var scratch = capturedRgb
        runIirRgb(
            source = smoothYccd,
            destination = scratch,
            pass = coefficients.pass1,
            filterLuma = true,
            label = "IIR1",
        ).also { result ->
            smoothYccd = result.first
            scratch = result.second
        }
        dispatchCalculateError(scratch)
        scratch = smoothYccd.also { smoothYccd = scratch }
        runIirError(
            source = smoothYccd,
            destination = scratch,
            a10 = coefficients.pass1.a10,
            b10 = coefficients.pass1.b10,
        ).also { result ->
            smoothYccd = result.first
            scratch = result.second
        }
        dispatchColorNoiseFilter(scratch)
        scratch = originalYccd.also { originalYccd = scratch }
        runIirRgb(
            source = originalYccd,
            destination = scratch,
            pass = coefficients.pass3,
            filterLuma = false,
            label = "IIR3",
        ).also { result ->
            originalYccd = result.first
            scratch = result.second
        }
        if (gpuExportEnabled) {
            // One of the three working arrays is dead before the final conversion. Reclaim it so
            // the full-size 2D handoff does not increase the legacy peak texture storage.
            ownedTextures.firstOrNull { it != originalYccd && it != scratch }?.let { disposable ->
                deleteTexture(disposable)
                if (capturedRgb == disposable) capturedRgb = 0
                if (smoothYccd == disposable) smoothYccd = 0
            }
        }
        val gpuTiming = if (gpuExportEnabled) {
            runCatching {
                fullSizeCameraRgb = createFullSizeTexture()
                dispatchFinal(destination = 0, fullSize = true)
                readbackFullSize(outputBuffer)
            }.onFailure { error ->
                deleteTexture(fullSizeCameraRgb)
                fullSizeCameraRgb = 0
                gpuExportEnabled = false
                PLog.w(TAG, "Full-size Radiance GPU export failed; using CPU handoff", error)
                finalProgram = backend.linkComputeProgram(
                    GlesRadianceVgnChromaShaders.finalCameraRgb(exportFullSizeTexture = false),
                    "raw_radiance_vgn_chroma_final_camera_rgb_array_fallback",
                )
            }.getOrNull()
        } else {
            null
        }
        val timing = gpuTiming ?: run {
            dispatchFinal(scratch)
            originalYccd = scratch.also { scratch = originalYccd }
            readback(outputBuffer)
        }
        if (gpuTiming != null) {
            val releasedScratch = scratch
            deleteTexture(releasedScratch)
            if (capturedRgb == releasedScratch) capturedRgb = 0
            if (originalYccd == releasedScratch) originalYccd = 0
            if (smoothYccd == releasedScratch) smoothYccd = 0
            scratch = 0
        }
        for (unit in 0..2) {
            GLES31.glBindImageTexture(
                unit,
                0,
                0,
                false,
                0,
                GLES31.GL_READ_ONLY,
                GLES30.GL_RGBA16UI,
            )
        }
        setOf(capturedRgb, originalYccd, smoothYccd, scratch)
            .filter { it != 0 }
            .forEach(::deleteTexture)
        capturedRgb = 0
        originalYccd = 0
        smoothYccd = 0
        val exportedTextureId = fullSizeCameraRgb
        if (exportedTextureId != 0) {
            ownedTextures.removeAll { it == exportedTextureId }
            fullSizeCameraRgb = 0
        }
        return ProcessResult(
            readbackTiming = timing,
            exportedTextureId = exportedTextureId,
        )
    }

    fun release() {
        if (ownedTextures.isNotEmpty()) {
            GLES30.glDeleteTextures(ownedTextures.size, ownedTextures.toIntArray(), 0)
            ownedTextures.clear()
        }
        capturedRgb = 0
        originalYccd = 0
        smoothYccd = 0
        fullSizeCameraRgb = 0
        if (readbackFbo != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(readbackFbo), 0)
            readbackFbo = 0
        }
    }

    private fun dispatchSeed() {
        GLES31.glUseProgram(seedProgram)
        setTiledUniforms(seedProgram)
        GLES31.glUniform3fv(
            backend.uniformLocation(seedProgram, "uCalculationGains"),
            1,
            calculationRgbGains,
            0,
        )
        GLES31.glUniform1f(
            backend.uniformLocation(seedProgram, "uMinimumDirectionGradient"),
            8f,
        )
        bindArrayImage(0, capturedRgb, GLES31.GL_READ_ONLY)
        bindArrayImage(1, originalYccd, GLES31.GL_WRITE_ONLY)
        dispatchImage(seedProgram, "seed")
    }

    private fun dispatchLocal(program: Int, source: Int, destination: Int, label: String) {
        GLES31.glUseProgram(program)
        setTiledUniforms(program)
        bindArrayImage(0, source, GLES31.GL_READ_ONLY)
        bindArrayImage(1, destination, GLES31.GL_WRITE_ONLY)
        dispatchImage(program, label)
    }

    private fun dispatchColorNoise3() {
        GLES31.glUseProgram(colorNoise3SmoothProgram)
        setTiledUniforms(colorNoise3SmoothProgram)
        bindArrayImage(0, capturedRgb, GLES31.GL_READ_ONLY)
        bindArrayImage(1, smoothYccd, GLES31.GL_READ_ONLY)
        bindArrayImage(2, originalYccd, GLES31.GL_WRITE_ONLY)
        dispatchImage(colorNoise3SmoothProgram, "color noise 3 smooth")
    }

    private fun dispatchRestoreOriginal() {
        GLES31.glUseProgram(restoreOriginalProgram)
        setTiledUniforms(restoreOriginalProgram)
        bindArrayImage(0, originalYccd, GLES31.GL_READ_ONLY)
        bindArrayImage(1, capturedRgb, GLES31.GL_READ_ONLY)
        bindArrayImage(2, smoothYccd, GLES31.GL_WRITE_ONLY)
        dispatchImage(restoreOriginalProgram, "restore directional YCCD")
        val temporary = originalYccd
        originalYccd = smoothYccd
        smoothYccd = temporary
    }

    private fun dispatchCalculateError(destination: Int) {
        GLES31.glUseProgram(calculateErrorProgram)
        setTiledUniforms(calculateErrorProgram)
        bindArrayImage(0, originalYccd, GLES31.GL_READ_ONLY)
        bindArrayImage(1, smoothYccd, GLES31.GL_READ_ONLY)
        bindArrayImage(2, destination, GLES31.GL_WRITE_ONLY)
        dispatchImage(calculateErrorProgram, "calculate color noise error")
    }

    private fun dispatchColorNoiseFilter(destination: Int) {
        GLES31.glUseProgram(colorNoiseFilterProgram)
        setTiledUniforms(colorNoiseFilterProgram)
        bindArrayImage(0, originalYccd, GLES31.GL_READ_ONLY)
        bindArrayImage(1, smoothYccd, GLES31.GL_READ_ONLY)
        bindArrayImage(2, destination, GLES31.GL_WRITE_ONLY)
        dispatchImage(colorNoiseFilterProgram, "color noise filter")
    }

    private fun dispatchFinal(destination: Int, fullSize: Boolean = false) {
        GLES31.glUseProgram(finalProgram)
        setTiledUniforms(finalProgram)
        GLES31.glUniform3fv(
            backend.uniformLocation(finalProgram, "uCalculationGains"),
            1,
            calculationRgbGains,
            0,
        )
        bindArrayImage(0, originalYccd, GLES31.GL_READ_ONLY)
        if (fullSize) {
            GLES31.glBindImageTexture(
                2,
                fullSizeCameraRgb,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_RGBA16UI,
            )
        } else {
            bindArrayImage(1, destination, GLES31.GL_WRITE_ONLY)
        }
        dispatchImage(finalProgram, "final camera RGB")
    }

    private fun runIirRgb(
        source: Int,
        destination: Int,
        pass: RadianceVgnChromaIirCoefficients.Pass,
        filterLuma: Boolean,
        label: String,
    ): Pair<Int, Int> {
        val directions = arrayOf(
            intArrayOf(0, 0),
            intArrayOf(1, 0),
            intArrayOf(0, 1),
            intArrayOf(1, 1),
        )
        var input = source
        var output = destination
        directions.forEachIndexed { index, direction ->
            GLES31.glUseProgram(iirRgbProgram)
            setTiledUniforms(iirRgbProgram)
            setIirCoefficients(iirRgbProgram, pass)
            GLES31.glUniform1i(backend.uniformLocation(iirRgbProgram, "uFilterLuma"), if (filterLuma) 1 else 0)
            GLES31.glUniform1i(backend.uniformLocation(iirRgbProgram, "uDirection"), direction[0])
            GLES31.glUniform1i(backend.uniformLocation(iirRgbProgram, "uAxis"), direction[1])
            GLES31.glUniform1i(
                backend.uniformLocation(iirRgbProgram, "uBoundaryWarmup"),
                ceil(16f * safeOutputScale).toInt().coerceIn(16, 48),
            )
            bindArrayImage(0, input, GLES31.GL_READ_ONLY)
            bindArrayImage(1, output, GLES31.GL_WRITE_ONLY)
            dispatchIir(direction[1], "$label direction $index")
            input = output.also { output = input }
        }
        return input to output
    }

    private fun runIirError(
        source: Int,
        destination: Int,
        a10: FloatArray,
        b10: FloatArray,
    ): Pair<Int, Int> {
        val directions = arrayOf(
            intArrayOf(0, 0),
            intArrayOf(1, 0),
            intArrayOf(0, 1),
            intArrayOf(1, 1),
        )
        var input = source
        var output = destination
        directions.forEachIndexed { index, direction ->
            GLES31.glUseProgram(iirErrorProgram)
            setTiledUniforms(iirErrorProgram)
            GLES31.glUniform4fv(backend.uniformLocation(iirErrorProgram, "uA10"), 1, a10, 0)
            GLES31.glUniform4fv(backend.uniformLocation(iirErrorProgram, "uB10"), 1, b10, 0)
            GLES31.glUniform1i(backend.uniformLocation(iirErrorProgram, "uDirection"), direction[0])
            GLES31.glUniform1i(backend.uniformLocation(iirErrorProgram, "uAxis"), direction[1])
            GLES31.glUniform1i(
                backend.uniformLocation(iirErrorProgram, "uBoundaryWarmup"),
                ceil(16f * safeOutputScale).toInt().coerceIn(16, 48),
            )
            bindArrayImage(0, input, GLES31.GL_READ_ONLY)
            bindArrayImage(1, output, GLES31.GL_WRITE_ONLY)
            dispatchIir(direction[1], "IIR2 direction $index")
            input = output.also { output = input }
        }
        return input to output
    }

    private fun setIirCoefficients(program: Int, pass: RadianceVgnChromaIirCoefficients.Pass) {
        GLES31.glUniform4fv(backend.uniformLocation(program, "uA10"), 1, pass.a10, 0)
        GLES31.glUniform4fv(backend.uniformLocation(program, "uB10"), 1, pass.b10, 0)
        GLES31.glUniform4fv(backend.uniformLocation(program, "uADyn1"), 1, pass.aDyn1, 0)
        GLES31.glUniform4fv(backend.uniformLocation(program, "uBDyn1"), 1, pass.bDyn1, 0)
        GLES31.glUniform4fv(backend.uniformLocation(program, "uADyn2"), 1, pass.aDyn2, 0)
        GLES31.glUniform4fv(backend.uniformLocation(program, "uBDyn2"), 1, pass.bDyn2, 0)
    }

    private fun dispatchImage(program: Int, label: String) {
        GLES31.glDispatchCompute(groupCount(imageWidth), groupCount(imageHeight), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        backend.checkGlError("Radiance VGN chroma $label")
        backend.yieldToUiRenderer()
    }

    private fun dispatchIir(axis: Int, label: String) {
        if (axis == 0) {
            GLES31.glDispatchCompute(1, imageHeight, 1)
        } else {
            GLES31.glDispatchCompute(imageWidth, 1, 1)
        }
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
        backend.checkGlError("Radiance VGN chroma $label")
        backend.yieldToUiRenderer()
    }

    private fun setTiledUniforms(program: Int) {
        GLES31.glUniform2i(backend.uniformLocation(program, "uImageSize"), imageWidth, imageHeight)
        GLES31.glUniform1i(backend.uniformLocation(program, "uTileColumns"), tileColumns)
        GLES31.glUniform1i(backend.uniformLocation(program, "uTileRows"), tileRows)
        GLES31.glUniform1iv(
            backend.uniformLocation(program, "uTileLefts[0]"),
            tileLefts.size,
            tileLefts,
            0,
        )
        GLES31.glUniform1iv(
            backend.uniformLocation(program, "uTileTops[0]"),
            tileTops.size,
            tileTops,
            0,
        )
    }

    private fun bindArrayImage(unit: Int, texture: Int, access: Int) {
        GLES31.glBindImageTexture(
            unit,
            texture,
            0,
            true,
            0,
            access,
            GLES30.GL_RGBA16UI,
        )
    }

    private fun createArrayTexture(): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        check(texture != 0) { "Failed to allocate Radiance VGN chroma array texture" }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D_ARRAY, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D_ARRAY, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D_ARRAY, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D_ARRAY, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D_ARRAY, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexStorage3D(
            GLES30.GL_TEXTURE_2D_ARRAY,
            1,
            GLES30.GL_RGBA16UI,
            layerWidth,
            layerHeight,
            tiles.size,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D_ARRAY, 0)
        ownedTextures += texture
        backend.checkGlError(
            "Radiance VGN chroma array ${layerWidth}x$layerHeight layers=${tiles.size}",
        )
        return texture
    }

    private fun createFullSizeTexture(): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        check(texture != 0) { "Failed to allocate full-size Radiance RGB texture" }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexStorage2D(
            GLES30.GL_TEXTURE_2D,
            1,
            GLES30.GL_RGBA16UI,
            imageWidth,
            imageHeight,
        )
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        ownedTextures += texture
        backend.checkGlError("full-size Radiance RGB ${imageWidth}x$imageHeight")
        return texture
    }

    private fun deleteTexture(texture: Int) {
        if (texture == 0) return
        GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
        ownedTextures.removeAll { it == texture }
    }

    private fun readback(outputBuffer: ByteBuffer): ReadbackTiming {
        val allocationStart = System.currentTimeMillis()
        val scratchBytes = layerWidth.toLong() * layerHeight.toLong() * 8L
        val scratch = LargeDirectBuffer.allocate(scratchBytes, "Radiance VGN chroma tile readback")
            ?: throw IllegalStateException("Unable to allocate Radiance VGN chroma readback scratch")
        val allocationMs = System.currentTimeMillis() - allocationStart
        outputBuffer.clear()
        var glReadMs = 0L
        var copyMs = 0L
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, readbackFbo)
        try {
            tiles.forEach { tile ->
                GLES30.glFramebufferTextureLayer(
                    GLES30.GL_FRAMEBUFFER,
                    GLES30.GL_COLOR_ATTACHMENT0,
                    originalYccd,
                    0,
                    tile.index,
                )
                GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
                val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
                check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                    "Radiance VGN chroma framebuffer incomplete: 0x${status.toString(16)}"
                }
                GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
                scratch.clear()
                val readStart = System.currentTimeMillis()
                GLES30.glReadPixels(
                    0,
                    0,
                    tile.outputCore.width,
                    tile.outputCore.height,
                    GLES30.GL_RGBA_INTEGER,
                    GLES30.GL_UNSIGNED_SHORT,
                    scratch,
                )
                glReadMs += System.currentTimeMillis() - readStart
                backend.checkGlError("Radiance VGN chroma read tile ${tile.index}")

                val copyStart = System.currentTimeMillis()
                check(
                    DirectBufferPixelPacker.unpackRgba16TileToRgb16(
                        source = scratch,
                        sourceWidth = tile.outputCore.width,
                        sourceHeight = tile.outputCore.height,
                        destination = outputBuffer,
                        destinationWidth = imageWidth,
                        destinationHeight = imageHeight,
                        destinationLeft = tile.outputCore.left,
                        destinationTop = tile.outputCore.top,
                    )
                ) {
                    "Unable to pack Radiance VGN chroma tile ${tile.index} into RGB16 output"
                }
                copyMs += System.currentTimeMillis() - copyStart
                backend.yieldToUiRenderer()
            }
        } finally {
            GLES30.glFramebufferTextureLayer(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                0,
                0,
                0,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            LargeDirectBuffer.free(scratch)
        }
        outputBuffer.rewind()
        return ReadbackTiming(
            elapsedMs = allocationMs + glReadMs + copyMs,
            glReadMs = glReadMs,
            copyMs = copyMs,
            allocMs = allocationMs,
        )
    }

    private fun readbackFullSize(outputBuffer: ByteBuffer): ReadbackTiming {
        val allocationStart = System.currentTimeMillis()
        val scratchBytes = layerWidth.toLong() * layerHeight.toLong() * 8L
        val scratch = LargeDirectBuffer.allocate(scratchBytes, "Radiance full-size RGB readback")
            ?: throw IllegalStateException("Unable to allocate full-size Radiance readback scratch")
        val allocationMs = System.currentTimeMillis() - allocationStart
        outputBuffer.clear()
        var glReadMs = 0L
        var copyMs = 0L
        GLES31.glMemoryBarrier(
            GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_FRAMEBUFFER_BARRIER_BIT,
        )
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, readbackFbo)
        try {
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                fullSizeCameraRgb,
                0,
            )
            GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                "Full-size Radiance framebuffer incomplete: 0x${status.toString(16)}"
            }
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 8)
            tiles.forEach { tile ->
                scratch.clear()
                val readStart = System.currentTimeMillis()
                GLES30.glReadPixels(
                    tile.outputCore.left,
                    tile.outputCore.top,
                    tile.outputCore.width,
                    tile.outputCore.height,
                    GLES30.GL_RGBA_INTEGER,
                    GLES30.GL_UNSIGNED_SHORT,
                    scratch,
                )
                glReadMs += System.currentTimeMillis() - readStart
                backend.checkGlError("Full-size Radiance read tile ${tile.index}")
                val copyStart = System.currentTimeMillis()
                check(
                    DirectBufferPixelPacker.unpackRgba16TileToRgb16(
                        source = scratch,
                        sourceWidth = tile.outputCore.width,
                        sourceHeight = tile.outputCore.height,
                        destination = outputBuffer,
                        destinationWidth = imageWidth,
                        destinationHeight = imageHeight,
                        destinationLeft = tile.outputCore.left,
                        destinationTop = tile.outputCore.top,
                    ),
                ) { "Unable to pack full-size Radiance tile ${tile.index}" }
                copyMs += System.currentTimeMillis() - copyStart
                backend.yieldToUiRenderer()
            }
        } finally {
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                0,
                0,
            )
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            LargeDirectBuffer.free(scratch)
        }
        outputBuffer.rewind()
        return ReadbackTiming(
            elapsedMs = allocationMs + glReadMs + copyMs,
            glReadMs = glReadMs,
            copyMs = copyMs,
            allocMs = allocationMs,
        )
    }

    private fun groupCount(value: Int): Int = (value + 15) / 16

    private companion object {
        const val TAG = "GlesRadianceVgnChroma"
    }
}

internal data class RadianceVgnChromaIirCoefficients(
    val pass1: Pass,
    val pass3: Pass,
) {
    data class Pass(
        val a10: FloatArray,
        val b10: FloatArray,
        val aDyn1: FloatArray,
        val bDyn1: FloatArray,
        val aDyn2: FloatArray,
        val bDyn2: FloatArray,
    )

    companion object {
        private val pass1Base = Pass(
            a10 = floatArrayOf(0.0674552768f, 0.134910554f, 0.0674552768f, 0f),
            b10 = floatArrayOf(1f, -1.14298046f, 0.412801594f, 0f),
            aDyn1 = floatArrayOf(0.00580812711f, 0.0116162542f, 0.00580812711f, 0f),
            bDyn1 = floatArrayOf(1f, -1.86380053f, 0.887032986f, 0f),
            aDyn2 = floatArrayOf(0.00537849404f, 0.0107569881f, 0.00537849404f, 0f),
            bDyn2 = floatArrayOf(1f, -1.72593343f, 0.747447371f, 0f),
        )
        private val pass3Base = Pass(
            a10 = pass1Base.a10,
            b10 = pass1Base.b10,
            aDyn1 = floatArrayOf(0.0331984349f, 0.0663968697f, 0.0331984349f, 0f),
            bDyn1 = floatArrayOf(1f, -1.61172712f, 0.744520843f, 0f),
            aDyn2 = floatArrayOf(0.0281187538f, 0.0562375076f, 0.0281187538f, 0f),
            bDyn2 = floatArrayOf(1f, -1.36511719f, 0.47759226f, 0f),
        )

        fun forOutputScale(outputScale: Float): RadianceVgnChromaIirCoefficients {
            val scale = outputScale.takeIf { it.isFinite() && it > 0f }?.coerceAtLeast(1f) ?: 1f
            return RadianceVgnChromaIirCoefficients(
                pass1 = scalePass(pass1Base, scale),
                pass3 = scalePass(pass3Base, scale),
            )
        }

        private fun scalePass(pass: Pass, scale: Float): Pass {
            val (a10, b10) = scaleLowPass(pass.a10, pass.b10, scale)
            val (aDyn1, bDyn1) = scaleLowPass(pass.aDyn1, pass.bDyn1, scale)
            val (aDyn2, bDyn2) = scaleLowPass(pass.aDyn2, pass.bDyn2, scale)
            return Pass(a10, b10, aDyn1, bDyn1, aDyn2, bDyn2)
        }

        /** Keeps the same RAW-space cutoff when the Radiance sample grid is upscaled. */
        private fun scaleLowPass(
            numerator: FloatArray,
            denominator: FloatArray,
            scale: Float,
        ): Pair<FloatArray, FloatArray> {
            if (scale == 1f) return numerator.copyOf() to denominator.copyOf()
            val a1 = denominator[1].toDouble()
            val a2 = denominator[2].toDouble()
            val alpha = (1.0 - a2) / (1.0 + a2)
            val cosOmega = (-a1 * (1.0 + alpha) * 0.5).coerceIn(-1.0, 1.0)
            val omega = acos(cosOmega)
            val sinOmega = sin(omega)
            val q = if (alpha > 1e-9) sinOmega / (2.0 * alpha) else 0.7071067811865476
            val scaledOmega = (omega / scale.toDouble()).coerceIn(1e-5, Math.PI - 1e-5)
            val scaledAlpha = sin(scaledOmega) / (2.0 * max(q, 1e-6))
            val norm = 1.0 / (1.0 + scaledAlpha)
            val b0 = (1.0 - cos(scaledOmega)) * 0.5 * norm
            val b1 = (1.0 - cos(scaledOmega)) * norm
            val scaledA1 = -2.0 * cos(scaledOmega) * norm
            val scaledA2 = (1.0 - scaledAlpha) * norm
            return floatArrayOf(b0.toFloat(), b1.toFloat(), b0.toFloat(), 0f) to
                floatArrayOf(1f, scaledA1.toFloat(), scaledA2.toFloat(), 0f)
        }
    }
}

internal object GlesRadianceVgnChromaShaders {
    const val MAX_TILE_AXIS = 64
    const val MAX_TILE_LAYERS = MAX_TILE_AXIS * MAX_TILE_AXIS

    private val tiledImageCommon = """
        uniform ivec2 uImageSize;
        uniform int uTileColumns;
        uniform int uTileRows;
        uniform int uTileLefts[$MAX_TILE_AXIS];
        uniform int uTileTops[$MAX_TILE_AXIS];

        ivec2 clampGlobal(ivec2 p) {
            return clamp(p, ivec2(0), uImageSize - ivec2(1));
        }

        ivec3 tiledPosition(ivec2 unclampedP) {
            ivec2 p = clampGlobal(unclampedP);
            int tileX = 0;
            int tileY = 0;
            for (int i = 1; i < $MAX_TILE_AXIS; ++i) {
                if (i >= uTileColumns || p.x < uTileLefts[i]) break;
                tileX = i;
            }
            for (int i = 1; i < $MAX_TILE_AXIS; ++i) {
                if (i >= uTileRows || p.y < uTileTops[i]) break;
                tileY = i;
            }
            return ivec3(
                p.x - uTileLefts[tileX],
                p.y - uTileTops[tileY],
                tileY * uTileColumns + tileX
            );
        }

        int chromaSigned(uint c) {
            int value = int(c);
            return value > 32767 ? value - 65536 : value;
        }

        uint chromaUnsigned(int value) {
            return uint(value & 0xFFFF);
        }

        float uint16ToFloat(uint value) {
            uint high8 = value >> 8u;
            uint low8 = value & 255u;
            // Some Mali drivers lower a direct uint16 -> float conversion to FP16. Preserve the
            // complete code ordering while mapping the top code to FP16's largest finite value.
            const float finiteScale = 65504.0 / 65535.0;
            return float(high8) * (256.0 * finiteScale) + float(low8) * finiteScale;
        }
    """.trimIndent()

    val capture = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp usampler2D;
        precision highp uimage2DArray;
        layout(local_size_x = 16, local_size_y = 16) in;

        uniform highp usampler2D uSource;
        layout(rgba16ui, binding = 0) writeonly uniform highp uimage2DArray uDestination;
        uniform ivec2 uTileSize;
        uniform int uLayer;

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uTileSize))) return;
            imageStore(uDestination, ivec3(p, uLayer), texelFetch(uSource, p, 0));
        }
    """.trimIndent()

    val seed = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uCameraRgb;
        layout(rgba16ui, binding = 1) writeonly uniform highp uimage2DArray uYccd;
        uniform vec3 uCalculationGains;
        uniform float uMinimumDirectionGradient;

        $tiledImageCommon

        vec3 calculationRgbAt(ivec2 p) {
            uvec3 encoded = imageLoad(uCameraRgb, tiledPosition(p)).rgb;
            vec3 cameraRgb = vec3(
                uint16ToFloat(encoded.r),
                uint16ToFloat(encoded.g),
                uint16ToFloat(encoded.b)
            );
            return clamp(cameraRgb * uCalculationGains, vec3(0.0), vec3(65504.0));
        }

        float yAt(ivec2 p) {
            vec3 rgb = calculationRgbAt(p);
            return dot(rgb, vec3(0.25, 0.5, 0.25));
        }

        uint directionMaskAt(ivec2 p) {
            const ivec2 directions[8] = ivec2[8](
                ivec2(0, -1),
                ivec2(1, 0),
                ivec2(0, 1),
                ivec2(-1, 0),
                ivec2(1, -1),
                ivec2(1, 1),
                ivec2(-1, 1),
                ivec2(-1, -1)
            );
            float center = yAt(p);
            float gradients[8];
            float minGradient = 65504.0;
            float maxGradient = 0.0;
            for (int i = 0; i < 8; ++i) {
                float first = yAt(p + directions[i]);
                float second = yAt(p + directions[i] * 2);
                gradients[i] = abs(center - first) + 0.5 * abs(first - second);
                minGradient = min(minGradient, gradients[i]);
                maxGradient = max(maxGradient, gradients[i]);
            }
            float threshold = max(
                uMinimumDirectionGradient,
                1.5 * minGradient + 0.09375 * (maxGradient - minGradient)
            );
            int mask = 0;
            int count = 0;
            for (int i = 0; i < 8; ++i) {
                if (gradients[i] <= threshold) {
                    mask |= 1 << i;
                    count += 1;
                }
            }
            if (count == 0) {
                mask = 0xFF;
                count = 8;
            }
            return uint(mask | (count << 8));
        }

        uvec4 rgbToYccd(vec3 rgb, uint directionMask) {
            float sum = rgb.r + 2.0 * rgb.g + rgb.b + 1.0;
            vec2 chroma = (rgb.rb - vec2(rgb.g)) * (32768.0 / sum);
            ivec2 signedChroma = ivec2(clamp(chroma, vec2(-32768.0), vec2(32767.0)));
            return uvec4(
                uint(clamp(0.25 * (sum - 1.0), 0.0, 65504.0)),
                chromaUnsigned(signedChroma.x),
                chromaUnsigned(signedChroma.y),
                directionMask
            );
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uImageSize))) return;
            imageStore(uYccd, tiledPosition(p), rgbToYccd(calculationRgbAt(p), directionMaskAt(p)));
        }
    """.trimIndent()

    val colorNoise1 = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uInput;
        layout(rgba16ui, binding = 1) writeonly uniform highp uimage2DArray uOutput;

        $tiledImageCommon

        uint yAt(ivec2 p) {
            return imageLoad(uInput, tiledPosition(p)).r;
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uImageSize))) return;
            uvec4 result = imageLoad(uInput, tiledPosition(p));
            uint yMin = 65535u;
            uint yMax = 0u;
            for (int y = -1; y <= 1; ++y) {
                for (int x = -1; x <= 1; ++x) {
                    if (x == 0 && y == 0) continue;
                    uint value = yAt(p + ivec2(x, y));
                    yMin = min(yMin, value);
                    yMax = max(yMax, value);
                }
            }
            result.r = clamp(result.r, yMin, yMax);
            imageStore(uOutput, tiledPosition(p), result);
        }
    """.trimIndent()

    val colorNoise2 = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uInput;
        layout(rgba16ui, binding = 1) writeonly uniform highp uimage2DArray uOutput;

        $tiledImageCommon

        ivec3 signedYccdAt(ivec2 p) {
            uvec4 value = imageLoad(uInput, tiledPosition(p));
            return ivec3(int(value.r), chromaSigned(value.g), chromaSigned(value.b));
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uImageSize))) return;

            ivec3 row0 = signedYccdAt(p + ivec2(-1, -1));
            ivec3 row1 = signedYccdAt(p + ivec2(0, -1));
            ivec3 row2 = signedYccdAt(p + ivec2(1, -1));
            ivec2 rowChroma = row0.yz + row1.yz + row2.yz -
                min(min(row0.yz, row1.yz), row2.yz) - max(max(row0.yz, row1.yz), row2.yz);
            ivec2 chromaMin = rowChroma;
            ivec2 chromaMax = rowChroma;
            ivec2 chromaSum = rowChroma;
            int ySum = row0.x + 2 * row1.x + row2.x;

            row0 = signedYccdAt(p + ivec2(-1, 0));
            row1 = signedYccdAt(p);
            row2 = signedYccdAt(p + ivec2(1, 0));
            rowChroma = row0.yz + row1.yz + row2.yz -
                min(min(row0.yz, row1.yz), row2.yz) - max(max(row0.yz, row1.yz), row2.yz);
            chromaSum += rowChroma;
            chromaMin = min(chromaMin, rowChroma);
            chromaMax = max(chromaMax, rowChroma);
            ySum += 2 * row0.x + 4 * row1.x + 2 * row2.x;

            row0 = signedYccdAt(p + ivec2(-1, 1));
            row1 = signedYccdAt(p + ivec2(0, 1));
            row2 = signedYccdAt(p + ivec2(1, 1));
            rowChroma = row0.yz + row1.yz + row2.yz -
                min(min(row0.yz, row1.yz), row2.yz) - max(max(row0.yz, row1.yz), row2.yz);
            chromaSum += rowChroma - min(chromaMin, rowChroma) - max(chromaMax, rowChroma);
            ySum += row0.x + 2 * row1.x + row2.x;

            uvec4 center = imageLoad(uInput, tiledPosition(p));
            imageStore(uOutput, tiledPosition(p), uvec4(
                uint(max(ySum / 16, 0)),
                chromaUnsigned(chromaSum.x),
                chromaUnsigned(chromaSum.y),
                center.a
            ));
        }
    """.trimIndent()

    val colorNoise3Smooth = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uYccd;
        layout(rgba16ui, binding = 1) readonly uniform highp uimage2DArray uSmooth;
        layout(rgba16ui, binding = 2) writeonly uniform highp uimage2DArray uOutputSmooth;

        $tiledImageCommon

        vec3 smoothAt(ivec2 p) {
            uvec4 value = imageLoad(uSmooth, tiledPosition(p));
            return vec3(
                uint16ToFloat(value.r),
                float(chromaSigned(value.g)),
                float(chromaSigned(value.b))
            );
        }

        vec4 colorFilter3(uvec4 encoded, ivec2 p) {
            vec3 negative[4];
            vec3 positive[4];
            negative[0] = smoothAt(p + ivec2(-1, 0));
            positive[0] = smoothAt(p + ivec2(1, 0));
            negative[1] = smoothAt(p + ivec2(0, -1));
            positive[1] = smoothAt(p + ivec2(0, 1));
            negative[2] = smoothAt(p + ivec2(1, -1));
            positive[2] = smoothAt(p + ivec2(-1, 1));
            negative[3] = smoothAt(p + ivec2(-1, -1));
            positive[3] = smoothAt(p + ivec2(1, 1));

            vec3 center = vec3(
                uint16ToFloat(encoded.r),
                float(chromaSigned(encoded.g)),
                float(chromaSigned(encoded.b))
            );
            vec4 filteredCr;
            vec4 filteredCb;
            vec4 scale;
            for (int i = 0; i < 4; ++i) {
                vec3 a = negative[i];
                vec3 b = positive[i];
                float differenceA = dot(abs(center - a), vec3(1.0 / 6.0));
                float differenceB = dot(abs(center - b), vec3(1.0 / 6.0));
                float total = differenceA + differenceB;
                vec3 directional = total != 0.0 ?
                    (a * differenceB + b * differenceA) / total : (a + b) * 0.5;
                scale[i] = min(abs(center.x - directional.x) /
                    max(center.x + directional.x, 1.0) * 2.0, 1.0);
                filteredCr[i] = mix(center.y, directional.y, scale[i]);
                filteredCb[i] = mix(center.z, directional.z, scale[i]);
            }

            vec3 selected = vec3(0.0);
            int count = 0;
            int direction = int(encoded.a);
            if ((direction & (1 << 0)) != 0) { selected += vec3(filteredCr[0], filteredCb[0], scale[0]); count++; }
            if ((direction & (1 << 1)) != 0) { selected += vec3(filteredCr[0], filteredCb[0], scale[0]); count++; }
            if ((direction & (1 << 2)) != 0) { selected += vec3(filteredCr[1], filteredCb[1], scale[1]); count++; }
            if ((direction & (1 << 3)) != 0) { selected += vec3(filteredCr[1], filteredCb[1], scale[1]); count++; }
            if ((direction & (1 << 4)) != 0) { selected += vec3(filteredCr[2], filteredCb[2], scale[2]); count++; }
            if ((direction & (1 << 5)) != 0) { selected += vec3(filteredCr[2], filteredCb[2], scale[2]); count++; }
            if ((direction & (1 << 6)) != 0) { selected += vec3(filteredCr[3], filteredCb[3], scale[3]); count++; }
            if ((direction & (1 << 7)) != 0) { selected += vec3(filteredCr[3], filteredCb[3], scale[3]); count++; }
            if (count > 0) selected /= float(count);

            float minimumScale = min(min(scale.x, scale.y), min(scale.z, scale.w));
            float yScale = clamp(1.0 - center.x / 16384.0 * minimumScale, 0.0, 1.0);
            return vec4(center.x, yScale * selected.x, yScale * selected.y, selected.z * 65504.0);
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uImageSize))) return;
            uvec4 encoded = imageLoad(uYccd, tiledPosition(p));
            vec4 filtered = vec4(
                uint16ToFloat(encoded.r),
                float(chromaSigned(encoded.g)),
                float(chromaSigned(encoded.b)),
                0.0
            );
            if (encoded.r != 0u && encoded.a != 0u) {
                filtered = colorFilter3(encoded, p);
            }
            uint error = uint(clamp(filtered.w, 0.0, 65504.0));

            uvec4 smoothValue = imageLoad(uSmooth, tiledPosition(p));
            ivec2 smoothChroma = ivec2(chromaSigned(smoothValue.g), chromaSigned(smoothValue.b));
            ivec2 filteredChroma = ivec2(filtered.yz);
            if (abs(smoothChroma.x) + abs(smoothChroma.y) <
                abs(filteredChroma.x) + abs(filteredChroma.y)) {
                filteredChroma = smoothChroma;
            }
            imageStore(uOutputSmooth, tiledPosition(p), uvec4(
                uint(clamp(filtered.x, 0.0, 65504.0)),
                chromaUnsigned(filteredChroma.x),
                chromaUnsigned(filteredChroma.y),
                error
            ));
        }
    """.trimIndent()

    val restoreOriginal = """
        #version 310 es
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uSmooth;
        layout(rgba16ui, binding = 1) readonly uniform highp uimage2DArray uDirectionalSource;
        layout(rgba16ui, binding = 2) writeonly uniform highp uimage2DArray uOriginal;

        $tiledImageCommon

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uImageSize))) return;
            ivec3 storage = tiledPosition(p);
            uvec4 smoothValue = imageLoad(uSmooth, storage);
            uint direction = imageLoad(uDirectionalSource, storage).a;
            imageStore(uOriginal, storage, uvec4(smoothValue.rgb, direction));
        }
    """.trimIndent()

    val iirRgb = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 1, local_size_y = 1) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uInput;
        layout(rgba16ui, binding = 1) writeonly uniform highp uimage2DArray uOutput;
        uniform vec4 uA10;
        uniform vec4 uB10;
        uniform vec4 uADyn1;
        uniform vec4 uBDyn1;
        uniform vec4 uADyn2;
        uniform vec4 uBDyn2;
        uniform int uDirection;
        uniform int uAxis;
        uniform int uFilterLuma;
        uniform int uBoundaryWarmup;

        $tiledImageCommon

        struct Delayer {
            float x0;
            float x1;
            float y0;
            float y1;
        };

        float applyFilter(inout Delayer state, float value, vec4 a, vec4 b, bool clampUnsigned) {
            float result = a[0] * value + a[1] * state.x0 + a[2] * state.x1 -
                b[1] * state.y0 - b[2] * state.y1;
            state.x1 = state.x0;
            state.y1 = state.y0;
            state.x0 = value;
            state.y0 = clampUnsigned ? clamp(result, 0.0, 65504.0) : result;
            return state.y0;
        }

        ivec2 linePosition(int inner, int outer) {
            return uAxis == 0 ? ivec2(inner, outer) : ivec2(outer, inner);
        }

        void filterSample(
            uvec4 pixel,
            inout Delayer yState,
            inout Delayer crState1,
            inout Delayer cbState1,
            inout Delayer crState2,
            inout Delayer cbState2,
            out float y,
            out float cr,
            out float cb
        ) {
            y = uFilterLuma != 0 ?
                applyFilter(yState, uint16ToFloat(pixel.r), uA10, uB10, true) :
                uint16ToFloat(pixel.r);
            cr = applyFilter(crState1, float(chromaSigned(pixel.g)), uADyn1, uBDyn1, false);
            cb = applyFilter(cbState1, float(chromaSigned(pixel.b)), uADyn1, uBDyn1, false);
            cr = applyFilter(crState2, cr, uADyn2, uBDyn2, false);
            cb = applyFilter(cbState2, cb, uADyn2, uBDyn2, false);
        }

        void main() {
            int outer = uAxis == 0 ? int(gl_GlobalInvocationID.y) : int(gl_GlobalInvocationID.x);
            int outerLimit = uAxis == 0 ? uImageSize.y : uImageSize.x;
            int innerSize = uAxis == 0 ? uImageSize.x : uImageSize.y;
            if (outer >= outerLimit) return;
            int start = uDirection == 0 ? 0 : innerSize - 1;
            int step = uDirection == 0 ? 1 : -1;

            Delayer yState = Delayer(0.0, 0.0, 0.0, 0.0);
            Delayer crState1 = Delayer(0.0, 0.0, 0.0, 0.0);
            Delayer cbState1 = Delayer(0.0, 0.0, 0.0, 0.0);
            Delayer crState2 = Delayer(0.0, 0.0, 0.0, 0.0);
            Delayer cbState2 = Delayer(0.0, 0.0, 0.0, 0.0);
            uvec4 boundary = imageLoad(uInput, tiledPosition(linePosition(start, outer)));
            float y;
            float cr;
            float cb;
            for (int warmup = 0; warmup < uBoundaryWarmup; ++warmup) {
                filterSample(
                    boundary,
                    yState,
                    crState1,
                    cbState1,
                    crState2,
                    cbState2,
                    y,
                    cr,
                    cb
                );
            }
            for (int i = 0; i < innerSize; ++i) {
                ivec2 p = linePosition(start + i * step, outer);
                ivec3 storage = tiledPosition(p);
                uvec4 pixel = imageLoad(uInput, storage);
                filterSample(
                    pixel,
                    yState,
                    crState1,
                    cbState1,
                    crState2,
                    cbState2,
                    y,
                    cr,
                    cb
                );
                imageStore(uOutput, storage, uvec4(
                    uint(clamp(y, 0.0, 65504.0)),
                    chromaUnsigned(int(cr)),
                    chromaUnsigned(int(cb)),
                    pixel.a
                ));
            }
        }
    """.trimIndent()

    val iirError = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 1, local_size_y = 1) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uInput;
        layout(rgba16ui, binding = 1) writeonly uniform highp uimage2DArray uOutput;
        uniform vec4 uA10;
        uniform vec4 uB10;
        uniform int uDirection;
        uniform int uAxis;
        uniform int uBoundaryWarmup;

        $tiledImageCommon

        struct Delayer {
            float x0;
            float x1;
            float y0;
            float y1;
        };

        float applyFilter(inout Delayer state, float value) {
            float result = uA10[0] * value + uA10[1] * state.x0 + uA10[2] * state.x1 -
                uB10[1] * state.y0 - uB10[2] * state.y1;
            state.x1 = state.x0;
            state.y1 = state.y0;
            state.x0 = value;
            state.y0 = clamp(result, 0.0, 65504.0);
            return state.y0;
        }

        ivec2 linePosition(int inner, int outer) {
            return uAxis == 0 ? ivec2(inner, outer) : ivec2(outer, inner);
        }

        void main() {
            int outer = uAxis == 0 ? int(gl_GlobalInvocationID.y) : int(gl_GlobalInvocationID.x);
            int outerLimit = uAxis == 0 ? uImageSize.y : uImageSize.x;
            int innerSize = uAxis == 0 ? uImageSize.x : uImageSize.y;
            if (outer >= outerLimit) return;
            int start = uDirection == 0 ? 0 : innerSize - 1;
            int step = uDirection == 0 ? 1 : -1;
            Delayer state = Delayer(0.0, 0.0, 0.0, 0.0);
            uvec4 boundary = imageLoad(uInput, tiledPosition(linePosition(start, outer)));
            for (int warmup = 0; warmup < uBoundaryWarmup; ++warmup) {
                applyFilter(state, uint16ToFloat(boundary.a));
            }
            for (int i = 0; i < innerSize; ++i) {
                ivec2 p = linePosition(start + i * step, outer);
                ivec3 storage = tiledPosition(p);
                uvec4 pixel = imageLoad(uInput, storage);
                pixel.a = uint(applyFilter(state, uint16ToFloat(pixel.a)));
                imageStore(uOutput, storage, pixel);
            }
        }
    """.trimIndent()

    val calculateColorNoiseError = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uOriginal;
        layout(rgba16ui, binding = 1) readonly uniform highp uimage2DArray uSmooth;
        layout(rgba16ui, binding = 2) writeonly uniform highp uimage2DArray uOutput;

        $tiledImageCommon

        int directionCount(int encoded) {
            return (encoded >> 8) & 0x0F;
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uImageSize))) return;
            ivec3 storage = tiledPosition(p);
            uvec4 original = imageLoad(uOriginal, storage);
            uvec4 smoothValue = imageLoad(uSmooth, storage);
            if (p.x == 0 || p.y == 0 || p.x + 1 >= uImageSize.x || p.y + 1 >= uImageSize.y) {
                imageStore(uOutput, storage, smoothValue);
                return;
            }

            const ivec2 directions[8] = ivec2[8](
                ivec2(0, -1),
                ivec2(1, 0),
                ivec2(0, 1),
                ivec2(-1, 0),
                ivec2(1, -1),
                ivec2(1, 1),
                ivec2(-1, 1),
                ivec2(-1, -1)
            );
            int encodedDirection = int(original.a);
            int ySum = 0;
            int crSum = 0;
            int cbSum = 0;
            for (int i = 0; i < 8; ++i) {
                if ((encodedDirection & (1 << i)) != 0) {
                    uvec4 neighbor = imageLoad(uOriginal, tiledPosition(p + directions[i]));
                    ySum += int(original.r) - int(neighbor.r);
                    crSum += chromaSigned(original.g) - chromaSigned(neighbor.g);
                    cbSum += chromaSigned(original.b) - chromaSigned(neighbor.b);
                }
            }
            int count = directionCount(encodedDirection);
            int directionBits = encodedDirection & 0xFF;
            int newError = (directionBits == 0x50 || directionBits == 0xA0) ?
                abs(crSum + cbSum) : 0;
            if (count > 0) newError = (newError + abs(ySum)) / count;
            float minimumLevel = 0.05 * uint16ToFloat(smoothValue.r);
            float scaledError = uint16ToFloat(smoothValue.a) *
                clamp(float(newError) - minimumLevel, 0.0, 1.0);
            smoothValue.a = uint(clamp(scaledError, 0.0, 65504.0));
            imageStore(uOutput, storage, smoothValue);
        }
    """.trimIndent()

    val colorNoiseFilter = """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uOriginal;
        layout(rgba16ui, binding = 1) readonly uniform highp uimage2DArray uSmooth;
        layout(rgba16ui, binding = 2) writeonly uniform highp uimage2DArray uOutput;

        $tiledImageCommon

        float minMaxScale(float low, float value, float high) {
            return (clamp(value, low, high) - low) / (high - low);
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uImageSize))) return;
            ivec3 storage = tiledPosition(p);
            uvec4 original = imageLoad(uOriginal, storage);
            uvec4 smoothValue = imageLoad(uSmooth, storage);
            int cr = chromaSigned(original.g);
            int cb = chromaSigned(original.b);
            int smoothCr = chromaSigned(smoothValue.g);
            int smoothCb = chromaSigned(smoothValue.b);
            float errorScale = minMaxScale(100.0, uint16ToFloat(smoothValue.a) * 0.25, 300.0);
            float smoothSaturation = 1.0 + float(abs(smoothCr)) + float(abs(smoothCb));
            float normalSaturation = float(abs(cr)) + float(abs(cb));
            float saturationScale = minMaxScale(0.5, normalSaturation / smoothSaturation, 1.0);
            float factor = errorScale * saturationScale;
            original.g = chromaUnsigned(int(mix(float(cr), float(smoothCr), factor)));
            original.b = chromaUnsigned(int(mix(float(cb), float(smoothCb), factor)));
            original.a = smoothValue.a;
            imageStore(uOutput, storage, original);
        }
    """.trimIndent()

    val finalCameraRgb: String
        get() = finalCameraRgb(exportFullSizeTexture = false)

    fun finalCameraRgb(exportFullSizeTexture: Boolean): String {
        val outputDeclaration = if (exportFullSizeTexture) {
            "layout(rgba16ui, binding = 2) writeonly uniform highp uimage2D uFullSizeOutput;"
        } else {
            "layout(rgba16ui, binding = 1) writeonly uniform highp uimage2DArray uOutput;"
        }
        val outputStore = if (exportFullSizeTexture) {
            "imageStore(uFullSizeOutput, p, outputPixel);"
        } else {
            "imageStore(uOutput, storage, outputPixel);"
        }
        return """
        #version 310 es
        precision highp float;
        precision highp int;
        precision highp uimage2DArray;
        precision highp uimage2D;
        layout(local_size_x = 16, local_size_y = 16) in;

        layout(rgba16ui, binding = 0) readonly uniform highp uimage2DArray uInput;
        $outputDeclaration
        uniform vec3 uCalculationGains;

        $tiledImageCommon

        vec3 yccdToCalculationRgb(uvec4 encoded) {
            float y = clamp(uint16ToFloat(encoded.r), 0.0, 65504.0);
            float cr = float(chromaSigned(encoded.g));
            float cb = float(chromaSigned(encoded.b));
            float red = clamp(y * (1.0 + (3.0 * cr - cb) / 32768.0), 0.0, 65504.0);
            float blue = clamp(y * (1.0 + (3.0 * cb - cr) / 32768.0), 0.0, 65504.0);
            float green = clamp((4.0 * y - red - blue) * 0.5, 0.0, 65504.0);
            return vec3(red, green, blue);
        }

        void main() {
            ivec2 p = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(p, uImageSize))) return;
            ivec3 storage = tiledPosition(p);
            uvec4 encoded = imageLoad(uInput, storage);
            vec3 cameraRgb = yccdToCalculationRgb(encoded) /
                max(uCalculationGains, vec3(1e-6));
            uvec4 outputPixel = uvec4(
                uvec3(clamp(cameraRgb, vec3(0.0), vec3(65504.0)) + vec3(0.5)),
                65535u
            );
            $outputStore
        }
        """.trimIndent()
    }
}
