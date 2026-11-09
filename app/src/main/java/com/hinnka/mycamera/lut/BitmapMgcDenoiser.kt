package com.hinnka.mycamera.lut

import android.content.Context
import android.opengl.GLES30
import android.util.Half
import com.hinnka.mycamera.processor.DenoiseStrength
import com.hinnka.mycamera.raw.MgcBitmapNoiseModel
import com.hinnka.mycamera.raw.MgcFullResolutionDenoise
import com.hinnka.mycamera.raw.RawFloatTextureTransfer
import com.hinnka.mycamera.raw.RawFullscreenQuad
import com.hinnka.mycamera.raw.RawGlesProgram
import com.hinnka.mycamera.utils.PLog
import kotlin.math.ceil
import kotlin.math.min
import kotlin.math.roundToInt

/**
 * MGC luma/chroma denoise for ISP-rendered bitmaps on the caller's GL context.
 *
 * The source texture holds sRGB-transfer encoded RGB (sRGB, Display P3 or extended sRGB, as
 * LutImageProcessor interprets it). The pass order:
 *  1. the mean linear luma gives the MGC tuning SNR under the [MgcBitmapNoiseModel] for the ISO;
 *  2. a noise-aware detail map: local luma variance at 2x and 4x box scales against the model
 *     (scaled by its measured box variance ratios). Where structure clearly exceeds noise the
 *     map lowers MGC's spatial strength (a Q8 noise scale), so Pecan and ChromaDenoise keep
 *     texture; in noise it stays 1. At low SNR structure cannot be told from noise and the map
 *     stays near 1;
 *  3. tiles, each with [TILE_SUPPORT_PX] of overlap, are decoded to linear RGBA16F, denoised by
 *     [MgcFullResolutionDenoise.denoiseLinearBitmap] and their cores written to a full linear image;
 *  4. GCam's low-frequency chroma branch over the whole image: the linear result box-downsampled
 *     by 2^[LOW_FREQUENCY_LOG2] is chroma-denoised again and its correction upsampled back;
 *  5. the linear result plus that correction is encoded into the output, keeping source alpha.
 */
internal class BitmapMgcDenoiser {
    private val quad = RawFullscreenQuad()
    private val transfer = RawFloatTextureTransfer(RawFloatTextureTransfer.Layout.HALF)
    private val programs = HashMap<String, Int>()

    /** An immutable RGBA16F texture with its framebuffer (the transfer's upload requires immutability). */
    private class Surface(val label: String) {
        var texture = 0
        var framebuffer = 0
        var width = 0
        var height = 0
    }

    private val linear = Surface("bitmap MGC linear")
    private val output = Surface("bitmap MGC output")
    private val tile = Surface("bitmap MGC tile")
    private val half = Surface("bitmap MGC half")
    private val quarter = Surface("bitmap MGC quarter")
    private val map = Surface("bitmap MGC detail map")
    private val mean = Surface("bitmap MGC mean")
    private val outputTexture get() = output.texture

    private data class Tile(
        val coreLeft: Int,
        val coreTop: Int,
        val coreRight: Int,
        val coreBottom: Int,
        val workLeft: Int,
        val workTop: Int,
        val workRight: Int,
        val workBottom: Int,
    ) {
        val workWidth get() = workRight - workLeft
        val workHeight get() = workBottom - workTop
    }

    /**
     * Returns a texture owned by this denoiser holding the denoised, re-encoded image, or
     * [sourceTextureId] itself when both strengths are zero. [sensorIso] is the capture's ISO
     * (EXIF/metadata), or null when unknown.
     */
    fun denoise(
        context: Context,
        sourceTextureId: Int,
        width: Int,
        height: Int,
        lumaStrength: Float,
        chromaStrength: Float,
        sensorIso: Int?,
    ): Int {
        val luma = DenoiseStrength.clamp(lumaStrength)
        val chroma = DenoiseStrength.clamp(chromaStrength)
        if (luma <= 0f && chroma <= 0f) return sourceTextureId
        require(width > 0 && height > 0)
        check(MgcFullResolutionDenoise.ensureInitialized(context)) {
            "MGC RunFullResolutionDenoise is not initialized"
        }
        val startNs = System.nanoTime()
        val tiles = planTiles(width, height)
        val maxWorkWidth = tiles.maxOf { it.workWidth }
        val maxWorkHeight = tiles.maxOf { it.workHeight }
        ensureFullTextures(width, height)
        ensureTile(maxWorkWidth, maxWorkHeight)
        val noiseModel = MgcBitmapNoiseModel.forIso(sensorIso)
        val snr = noiseModel.tuningSnr(meanLinearLuma(sourceTextureId, width, height))
        val strengthMap = detailStrengthMap(sourceTextureId, width, height, noiseModel)
        try {
            transfer.prepare(maxWorkWidth, maxWorkHeight)
            for (tile in tiles) {
                decodeTile(sourceTextureId, tile)
                var succeeded = false
                transfer.read(
                    texture = this.tile.texture,
                    width = tile.workWidth,
                    height = tile.workHeight,
                    capacityPixels = maxWorkWidth.toLong() * maxWorkHeight,
                    label = "MGC bitmap tile",
                ) { mapped ->
                    succeeded = MgcFullResolutionDenoise.denoiseLinearBitmap(
                        rgba16f = mapped,
                        width = tile.workWidth,
                        height = tile.workHeight,
                        globalOriginX = tile.workLeft,
                        globalOriginY = tile.workTop,
                        fullWidth = width,
                        fullHeight = height,
                        noiseModel = noiseModel.denoiserModel,
                        spatialStrengthQ8 = strengthMap,
                        tuningSnr = snr,
                        lumaStrengthScale = luma,
                        chromaStrengthScale = chroma,
                    )
                }
                check(succeeded) { "MGC bitmap denoise failed for tile $tile of ${width}x$height" }
                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                transfer.upload(this.tile.texture, tile.workWidth, tile.workHeight)
                copyTileCore(tile)
            }
        } finally {
            transfer.releaseBuffers()
        }
        val lowFrequency = chroma > 0f &&
            lowFrequencyChroma(width, height, noiseModel, strengthMap, snr, chroma)
        encodeOutput(sourceTextureId, width, height, lowFrequency)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        RawGlesProgram.logErrors("BitmapMgcDenoiser")
        PLog.i(
            TAG,
            "MGC bitmap denoise ${width}x$height tiles=${tiles.size} iso=$sensorIso " +
                "modelIso=${noiseModel.iso} snr=$snr luma=$luma chroma=$chroma " +
                "detailMap=${strengthMap.averageQ8()} lowFrequency=$lowFrequency " +
                "took=${(System.nanoTime() - startNs) / 1_000_000}ms",
        )
        return outputTexture
    }

    fun release() {
        programs.values.forEach { program -> if (program != 0) GLES30.glDeleteProgram(program) }
        programs.clear()
        listOf(linear, output, tile, half, quarter, map, mean).forEach(::releaseSurface)
        transfer.release()
    }

    private fun planTiles(width: Int, height: Int): List<Tile> {
        val columns = ceil(width / TILE_CORE_PX.toDouble()).toInt()
        val rows = ceil(height / TILE_CORE_PX.toDouble()).toInt()
        return buildList {
            for (row in 0 until rows) {
                val coreTop = row * height / rows
                val coreBottom = (row + 1) * height / rows
                for (column in 0 until columns) {
                    val coreLeft = column * width / columns
                    val coreRight = (column + 1) * width / columns
                    add(
                        Tile(
                            coreLeft = coreLeft,
                            coreTop = coreTop,
                            coreRight = coreRight,
                            coreBottom = coreBottom,
                            workLeft = (coreLeft - TILE_SUPPORT_PX).coerceAtLeast(0),
                            workTop = (coreTop - TILE_SUPPORT_PX).coerceAtLeast(0),
                            workRight = min(coreRight + TILE_SUPPORT_PX, width),
                            workBottom = min(coreBottom + TILE_SUPPORT_PX, height),
                        ),
                    )
                }
            }
        }
    }

    /** Mean linear MGC luma of the whole image: a GPU cell reduction read back as halves. */
    private fun meanLinearLuma(sourceTextureId: Int, width: Int, height: Int): Float {
        ensureSurface(mean, MEAN_GRID, MEAN_GRID)
        val cellWidth = ceil(width / MEAN_GRID.toDouble()).toInt()
        val cellHeight = ceil(height / MEAN_GRID.toDouble()).toInt()
        draw("mean", MEAN_SHADER, mean, 0, 0, MEAN_GRID, MEAN_GRID) { program ->
            bindTexture(program, "uSource", 0, sourceTextureId)
            GLES30.glUniform2i(location(program, "uImageSize"), width, height)
            GLES30.glUniform2i(location(program, "uCellSize"), cellWidth, cellHeight)
        }
        var weightedSum = 0.0
        var totalWeight = 0.0
        readHalves(mean, "MGC bitmap mean") { halves ->
            for (cell in 0 until MEAN_GRID * MEAN_GRID) {
                val cellMean = Half.toFloat(halves.get(cell * 4)).toDouble()
                val weight = Half.toFloat(halves.get(cell * 4 + 1)).toDouble()
                if (weight > 0.0 && cellMean.isFinite()) {
                    weightedSum += cellMean * weight
                    totalWeight += weight
                }
            }
        }
        check(totalWeight > 0.0) { "Bitmap luma reduction covered no pixels" }
        return (weightedSum / totalWeight).toFloat()
    }

    /**
     * Q8 spatial strength over the ((width + 3) / 4) x ((height + 3) / 4) grid MGC expects:
     * 256 where the local luma variance is explained by noise, down to [DETAIL_MIN_STRENGTH] where
     * structure exceeds it by [DETAIL_HIGH_EXCESS] at both the 2x and 4x box scales.
     */
    private fun detailStrengthMap(
        sourceTextureId: Int,
        width: Int,
        height: Int,
        model: MgcBitmapNoiseModel.Calibration,
    ): ShortArray {
        val halfWidth = (width + 1) / 2
        val halfHeight = (height + 1) / 2
        val gridWidth = (width + 3) / 4
        val gridHeight = (height + 3) / 4
        ensureSurface(half, halfWidth, halfHeight)
        ensureSurface(quarter, gridWidth, gridHeight)
        ensureSurface(map, gridWidth, gridHeight)
        for ((surface, factor) in listOf(half to 2, quarter to 4)) {
            draw("boxLuma", BOX_LUMA_SHADER, surface, 0, 0, surface.width, surface.height) { program ->
                bindTexture(program, "uSource", 0, sourceTextureId)
                GLES30.glUniform2i(location(program, "uImageSize"), width, height)
                GLES30.glUniform1i(location(program, "uFactor"), factor)
            }
        }
        draw("structure", STRUCTURE_SHADER, map, 0, 0, gridWidth, gridHeight) { program ->
            bindTexture(program, "uBox2", 0, half.texture)
            bindTexture(program, "uBox4", 1, quarter.texture)
            GLES30.glUniform2i(location(program, "uBox2Size"), halfWidth, halfHeight)
            GLES30.glUniform2i(location(program, "uBox4Size"), gridWidth, gridHeight)
            GLES30.glUniform3f(
                location(program, "uLumaNoise"),
                model.lumaRead,
                model.lumaShot,
                model.lumaQuadratic,
            )
            GLES30.glUniform2f(
                location(program, "uBoxVarianceRatio"),
                model.boxVarianceRatio2,
                model.boxVarianceRatio4,
            )
            GLES30.glUniform3f(
                location(program, "uDetail"),
                DETAIL_MIN_STRENGTH,
                kotlin.math.ln(DETAIL_LOW_EXCESS),
                kotlin.math.ln(DETAIL_HIGH_EXCESS),
            )
        }
        val strength = FloatArray(gridWidth * gridHeight)
        readHalves(map, "MGC bitmap detail map") { halves ->
            for (index in strength.indices) strength[index] = Half.toFloat(halves.get(index * 4))
        }
        // 3x3 box with edge clamp: no block-shaped steps between neighbouring map cells.
        return ShortArray(strength.size) { index ->
            val x = index % gridWidth
            val y = index / gridWidth
            var sum = 0f
            for (dy in -1..1) {
                val yy = (y + dy).coerceIn(0, gridHeight - 1)
                for (dx in -1..1) {
                    sum += strength[yy * gridWidth + (x + dx).coerceIn(0, gridWidth - 1)]
                }
            }
            (sum / 9f * 256f).roundToInt().coerceIn(0, 256).toShort()
        }
    }

    private fun decodeTile(sourceTextureId: Int, tile: Tile) {
        draw("decode", DECODE_SHADER, this.tile, 0, 0, tile.workWidth, tile.workHeight) { program ->
            bindTexture(program, "uSource", 0, sourceTextureId)
            GLES30.glUniform2i(location(program, "uSourceOffset"), tile.workLeft, tile.workTop)
        }
    }

    private fun copyTileCore(tile: Tile) {
        draw(
            "copyCore", COPY_CORE_SHADER, linear,
            tile.coreLeft, tile.coreTop, tile.coreRight - tile.coreLeft, tile.coreBottom - tile.coreTop,
        ) { program ->
            bindTexture(program, "uTile", 0, this.tile.texture)
            GLES30.glUniform2i(location(program, "uTileOrigin"), tile.workLeft, tile.workTop)
        }
    }

    /** Leaves the upsampling correction in [half]; returns whether it ran. */
    private fun lowFrequencyChroma(
        width: Int,
        height: Int,
        model: MgcBitmapNoiseModel.Calibration,
        strengthMap: ShortArray,
        snr: Float,
        chroma: Float,
    ): Boolean {
        val factor = 1 shl LOW_FREQUENCY_LOG2
        val lowWidth = (width + factor - 1) / factor
        val lowHeight = (height + factor - 1) / factor
        ensureSurface(half, lowWidth, lowHeight)
        draw("boxRgb", BOX_RGB_SHADER, half, 0, 0, lowWidth, lowHeight) { program ->
            bindTexture(program, "uLinear", 0, linear.texture)
            GLES30.glUniform2i(location(program, "uImageSize"), width, height)
            GLES30.glUniform1i(location(program, "uFactor"), factor)
        }
        var succeeded = false
        try {
            transfer.read(half.texture, lowWidth, lowHeight, label = "MGC bitmap low frequency") { mapped ->
                succeeded = MgcFullResolutionDenoise.lowFrequencyChromaBitmap(
                    rgba16f = mapped,
                    lowWidth = lowWidth,
                    lowHeight = lowHeight,
                    fullWidth = width,
                    fullHeight = height,
                    log2Downsample = LOW_FREQUENCY_LOG2,
                    noiseModel = model.denoiserModel,
                    spatialStrengthQ8 = strengthMap,
                    tuningSnr = snr,
                    chromaStrengthScale = chroma,
                )
            }
            check(succeeded) { "MGC bitmap low-frequency chroma failed for ${width}x$height" }
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            transfer.upload(half.texture, lowWidth, lowHeight)
        } finally {
            transfer.releaseBuffers()
        }
        return true
    }

    private fun encodeOutput(sourceTextureId: Int, width: Int, height: Int, lowFrequency: Boolean) {
        draw("encode", ENCODE_SHADER, output, 0, 0, width, height) { program ->
            bindTexture(program, "uLinear", 0, linear.texture)
            bindTexture(program, "uSource", 1, sourceTextureId)
            bindTexture(program, "uCorrection", 2, if (lowFrequency) half.texture else linear.texture)
            GLES30.glUniform1i(location(program, "uApplyCorrection"), if (lowFrequency) 1 else 0)
            GLES30.glUniform2i(location(program, "uCorrectionSize"), half.width, half.height)
            GLES30.glUniform1i(location(program, "uFactor"), 1 shl LOW_FREQUENCY_LOG2)
        }
    }

    private fun draw(
        name: String,
        shader: String,
        target: Surface,
        x: Int,
        y: Int,
        width: Int,
        height: Int,
        setup: (Int) -> Unit,
    ) {
        val program = programs.getOrPut(name) {
            quad.createProgram(shader, "BitmapMgc_$name").also {
                check(it != 0) { "Bitmap MGC program $name failed to link" }
            }
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebuffer)
        GLES30.glViewport(x, y, width, height)
        GLES30.glUseProgram(program)
        quad.bindIdentityTextureMatrix(program)
        setup(program)
        quad.draw(program)
    }

    private inline fun readHalves(surface: Surface, label: String, crossinline consume: (java.nio.ShortBuffer) -> Unit) {
        try {
            transfer.read(surface.texture, surface.width, surface.height, label = label, writable = false) {
                consume(it.asShortBuffer())
            }
        } finally {
            transfer.releaseBuffers()
        }
    }

    private fun location(program: Int, name: String) = GLES30.glGetUniformLocation(program, name)

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + unit)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glUniform1i(location(program, name), unit)
    }

    private fun ensureFullTextures(width: Int, height: Int) {
        ensureSurface(linear, width, height)
        ensureSurface(output, width, height)
    }

    private fun ensureTile(width: Int, height: Int) = ensureSurface(tile, width, height)

    private fun ensureSurface(surface: Surface, width: Int, height: Int) {
        if (surface.texture != 0 && surface.width == width && surface.height == height) return
        releaseSurface(surface)
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, GLES30.GL_RGBA16F, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffers[0])
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, textures[0], 0,
        )
        check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE) {
            "${surface.label} framebuffer is incomplete"
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
        surface.texture = textures[0]
        surface.framebuffer = framebuffers[0]
        surface.width = width
        surface.height = height
    }

    private fun releaseSurface(surface: Surface) {
        if (surface.framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(surface.framebuffer), 0)
        if (surface.texture != 0) GLES30.glDeleteTextures(1, intArrayOf(surface.texture), 0)
        surface.framebuffer = 0
        surface.texture = 0
        surface.width = 0
        surface.height = 0
    }

    private fun ShortArray.averageQ8(): String =
        "%.3f".format(if (isEmpty()) 1.0 else sumOf { it.toInt() } / (size * 256.0))

    companion object {
        private const val TAG = "BitmapMgcDenoiser"
        /** Tile core edge; with its apron a tile stays near 2.3k px (about 40 MiB of PBO). */
        private const val TILE_CORE_PX = 2048
        /** MGC pyramid reach, the same apron RAW tiles give the full-resolution denoise. */
        private const val TILE_SUPPORT_PX = 112
        private const val MEAN_GRID = 64
        /** GCam's low-frequency chroma branch factor (2x): 4x drains small saturated detail. */
        private const val LOW_FREQUENCY_LOG2 = 1
        /** Spatial strength in confirmed structure (tools/bitmap_noise_calibration/experiments.py). */
        private const val DETAIL_MIN_STRENGTH = 0.35f
        /** Structure/noise variance ratio where protection starts and where it is complete. */
        private const val DETAIL_LOW_EXCESS = 1.5f
        private const val DETAIL_HIGH_EXCESS = 6f

        // Sign-symmetric sRGB transfer, so extended-range (F16) values keep their sign.
        private const val SRGB_TRANSFER = """
            vec3 srgbDecode(vec3 encoded) {
                vec3 magnitude = abs(encoded);
                vec3 linear = mix(
                    magnitude / 12.92,
                    pow((magnitude + 0.055) / 1.055, vec3(2.4)),
                    step(vec3(0.04045), magnitude)
                );
                return sign(encoded) * linear;
            }

            vec3 srgbEncode(vec3 linear) {
                vec3 magnitude = abs(linear);
                vec3 encoded = mix(
                    magnitude * 12.92,
                    1.055 * pow(magnitude, vec3(1.0 / 2.4)) - 0.055,
                    step(vec3(0.0031308), magnitude)
                );
                return sign(linear) * encoded;
            }

            const vec3 MGC_LUMA = vec3(0.2125999927520752, 0.7152000069618225, 0.07219959795475006);
        """

        // Prepended, not interpolated: #version must be the first line of the source.
        private const val PREAMBLE = "#version 300 es\n" +
            "precision highp float;\n" +
            "precision highp int;\n" +
            "in vec2 vTexCoord;\n" +
            "out vec4 fragColor;\n"

        private val DECODE_SHADER = PREAMBLE + """
            uniform highp sampler2D uSource;
            uniform ivec2 uSourceOffset;
            $SRGB_TRANSFER

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy) + uSourceOffset;
                fragColor = vec4(srgbDecode(texelFetch(uSource, p, 0).rgb), 1.0);
            }
        """.trimIndent()

        private val COPY_CORE_SHADER = PREAMBLE + """
            uniform highp sampler2D uTile;
            uniform ivec2 uTileOrigin;

            void main() {
                fragColor = vec4(texelFetch(uTile, ivec2(gl_FragCoord.xy) - uTileOrigin, 0).rgb, 1.0);
            }
        """.trimIndent()

        // Adds the low-frequency correction with AddUpsampledChromaCorrection's bilinear sampling.
        private val ENCODE_SHADER = PREAMBLE + """
            uniform highp sampler2D uLinear;
            uniform highp sampler2D uSource;
            uniform highp sampler2D uCorrection;
            uniform int uApplyCorrection;
            uniform ivec2 uCorrectionSize;
            uniform int uFactor;
            $SRGB_TRANSFER

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec3 linear = texelFetch(uLinear, p, 0).rgb;
                if (uApplyCorrection != 0) {
                    vec2 l = clamp((vec2(p) + 0.5) / float(uFactor) - 0.5, vec2(0.0),
                        vec2(uCorrectionSize - ivec2(1)));
                    ivec2 p0 = ivec2(l);
                    ivec2 p1 = min(p0 + ivec2(1), uCorrectionSize - ivec2(1));
                    vec2 f = l - vec2(p0);
                    vec3 top = mix(texelFetch(uCorrection, p0, 0).rgb,
                        texelFetch(uCorrection, ivec2(p1.x, p0.y), 0).rgb, f.x);
                    vec3 bottom = mix(texelFetch(uCorrection, ivec2(p0.x, p1.y), 0).rgb,
                        texelFetch(uCorrection, p1, 0).rgb, f.x);
                    linear += mix(top, bottom, f.y);
                }
                fragColor = vec4(srgbEncode(linear), texelFetch(uSource, p, 0).a);
            }
        """.trimIndent()

        // Mean decoded linear luma of each uFactor x uFactor block (partial edge blocks included).
        private val BOX_LUMA_SHADER = PREAMBLE + """
            uniform highp sampler2D uSource;
            uniform ivec2 uImageSize;
            uniform int uFactor;
            $SRGB_TRANSFER

            void main() {
                ivec2 origin = ivec2(gl_FragCoord.xy) * uFactor;
                ivec2 end = min(origin + ivec2(uFactor), uImageSize);
                float sum = 0.0;
                float count = 0.0;
                for (int y = origin.y; y < end.y; ++y) {
                    for (int x = origin.x; x < end.x; ++x) {
                        sum += dot(srgbDecode(texelFetch(uSource, ivec2(x, y), 0).rgb), MGC_LUMA);
                        count += 1.0;
                    }
                }
                fragColor = vec4(sum / max(count, 1.0), 0.0, 0.0, 1.0);
            }
        """.trimIndent()

        // Mean linear RGB of each uFactor x uFactor block of the denoised image.
        private val BOX_RGB_SHADER = PREAMBLE + """
            uniform highp sampler2D uLinear;
            uniform ivec2 uImageSize;
            uniform int uFactor;

            void main() {
                ivec2 origin = ivec2(gl_FragCoord.xy) * uFactor;
                ivec2 end = min(origin + ivec2(uFactor), uImageSize);
                vec3 sum = vec3(0.0);
                float count = 0.0;
                for (int y = origin.y; y < end.y; ++y) {
                    for (int x = origin.x; x < end.x; ++x) {
                        sum += texelFetch(uLinear, ivec2(x, y), 0).rgb;
                        count += 1.0;
                    }
                }
                fragColor = vec4(sum / max(count, 1.0), 1.0);
            }
        """.trimIndent()

        // Per quarter-resolution cell: local 5x5 variance of the 2x and 4x luma blocks against the
        // noise model scaled by its box variance ratio; their geometric mean is the structure
        // excess, mapped smoothly from uDetail.y..uDetail.z (log) to strength 1..uDetail.x.
        private val STRUCTURE_SHADER = PREAMBLE + """
            uniform highp sampler2D uBox2;
            uniform highp sampler2D uBox4;
            uniform ivec2 uBox2Size;
            uniform ivec2 uBox4Size;
            uniform vec3 uLumaNoise;
            uniform vec2 uBoxVarianceRatio;
            uniform vec3 uDetail;

            float noiseVariance(float signal) {
                float s = max(signal, 0.0);
                return uLumaNoise.x + uLumaNoise.y * s + uLumaNoise.z * s * s;
            }

            float excess(highp sampler2D boxes, ivec2 size, ivec2 center, float ratio) {
                float sum = 0.0;
                float sumSquares = 0.0;
                for (int dy = -2; dy <= 2; ++dy) {
                    for (int dx = -2; dx <= 2; ++dx) {
                        ivec2 q = clamp(center + ivec2(dx, dy), ivec2(0), size - ivec2(1));
                        float value = texelFetch(boxes, q, 0).r;
                        sum += value;
                        sumSquares += value * value;
                    }
                }
                float mean = sum / 25.0;
                float variance = max(sumSquares / 25.0 - mean * mean, 0.0);
                return variance / max(noiseVariance(mean) * ratio, 1e-20);
            }

            void main() {
                ivec2 cell = ivec2(gl_FragCoord.xy);
                float excess4 = excess(uBox4, uBox4Size, cell, uBoxVarianceRatio.y);
                float excess2 = 0.0;
                for (int sy = 0; sy < 2; ++sy) {
                    for (int sx = 0; sx < 2; ++sx) {
                        ivec2 q = min(cell * 2 + ivec2(sx, sy), uBox2Size - ivec2(1));
                        excess2 += excess(uBox2, uBox2Size, q, uBoxVarianceRatio.x);
                    }
                }
                excess2 *= 0.25;
                float structure = sqrt(excess2 * excess4);
                float t = clamp((log(max(structure, 1e-6)) - uDetail.y) / (uDetail.z - uDetail.y), 0.0, 1.0);
                float confidence = t * t * (3.0 - 2.0 * t);
                fragColor = vec4(1.0 - confidence * (1.0 - uDetail.x), 0.0, 0.0, 1.0);
            }
        """.trimIndent()

        // r: mean linear luma of the cell (MGC RGB->YUV row 0); g: covered fraction of the cell.
        private val MEAN_SHADER = PREAMBLE + """
            uniform highp sampler2D uSource;
            uniform ivec2 uImageSize;
            uniform ivec2 uCellSize;
            $SRGB_TRANSFER

            void main() {
                ivec2 origin = ivec2(gl_FragCoord.xy) * uCellSize;
                ivec2 end = min(origin + uCellSize, uImageSize);
                float sum = 0.0;
                float count = 0.0;
                for (int y = origin.y; y < end.y; ++y) {
                    for (int x = origin.x; x < end.x; ++x) {
                        sum += dot(srgbDecode(texelFetch(uSource, ivec2(x, y), 0).rgb), MGC_LUMA);
                        count += 1.0;
                    }
                }
                float area = float(uCellSize.x * uCellSize.y);
                fragColor = vec4(count > 0.0 ? sum / count : 0.0, count / area, 0.0, 1.0);
            }
        """.trimIndent()
    }
}
