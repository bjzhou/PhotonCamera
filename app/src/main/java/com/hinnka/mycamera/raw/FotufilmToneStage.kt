package com.hinnka.mycamera.raw

import android.app.ActivityManager
import android.content.Context
import android.opengl.GLES30
import com.hinnka.mycamera.raw.fotufilm.FotufilmBuildResult
import com.hinnka.mycamera.raw.fotufilm.FotufilmDocument
import com.hinnka.mycamera.raw.fotufilm.FotufilmFrame
import com.hinnka.mycamera.raw.fotufilm.FotufilmRenderer
import com.hinnka.mycamera.raw.fotufilm.FotufilmRuntime
import com.hinnka.mycamera.processor.GlesGpuCompletion
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.max
import kotlin.math.min
import kotlin.math.roundToInt
import kotlin.math.sqrt

/**
 * Whole-frame metering image for a frame rendered in tiles: linear Rec.2020 scene light of the
 * entire frame at a reduced, aspect-preserving size, laid out as RGBA floats (direct buffer).
 * [identity] names its content so frames built from it are cached.
 */
internal class FotufilmMeteringImage(
    val buffer: ByteBuffer,
    val width: Int,
    val height: Int,
    val identity: String,
)

/** What the tone stage needs to develop one photograph through Fotufilm. */
internal data class FotufilmRenderRequest(
    val context: Context,
    val document: FotufilmDocument,
    /** Required when the tone stage sees a tile of a frame whose development meters the scene. */
    val metering: FotufilmMeteringImage? = null,
)

/**
 * Fotufilm in the RAW tone stage.
 *
 * 1. The shared engine-input shader prepares linear Rec.2020 scene light (PGTM, exposure, the
 *    profile-to-BT.2020 transform) exactly as every other scene-referred engine receives it. It is
 *    pixel-local, so it is evaluated per sub-tile window and the stage never holds the whole input
 *    as an intermediate.
 * 2. [FotufilmRenderer] develops and prints it in sub-tiles whose apron covers the frame's
 *    `spatialSupport`, at absolute frame coordinates, so the result equals a whole-frame render.
 * 3. The print's linear Display P3 is carried to the tone pass output space.
 *
 * The virtual frame is the full image at the tone input's own sampling density: a downsampled
 * input (globalWidth > width) is a smaller frame, so grain and every millimetre-sized structure
 * keep their size on the film.
 */
internal class FotufilmToneStage(private val quad: RawFullscreenQuad) {
    /** Prepares the engine input; also binds its shared resources for callers outside [render]. */
    internal val inputAlgorithm = FotufilmInputToneAlgorithm(quad)
    private val renderer = FotufilmRenderer(quad)
    private var finishProgram = 0
    private var meterProgram = 0
    private val subInput = Target("subInput")
    private val subOutput = Target("subOutput")
    private val meterTarget = Target("meter")
    private val scratchBytesPerPixel = object : LinkedHashMap<String, Long>(SCRATCH_CACHE_SIZE, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, Long>?): Boolean =
            size > SCRATCH_CACHE_SIZE
    }

    fun render(input: RawEngineTonePass.Input): RawEngineTonePass.Output? {
        val request = requireNotNull(input.fotufilm) { "Fotufilm render request missing" }
        val scaleX = input.width.toDouble() / input.globalWidth
        val scaleY = input.height.toDouble() / input.globalHeight
        val originX = (input.globalOriginX * scaleX).roundToInt()
        val originY = (input.globalOriginY * scaleY).roundToInt()
        val frameWidth = max((input.fullImageWidth * scaleX).roundToInt(), originX + input.width)
        val frameHeight = max((input.fullImageHeight * scaleY).roundToInt(), originY + input.height)
        val wholeFrame = originX == 0 && originY == 0 &&
            input.width == frameWidth && input.height == frameHeight

        val frame = buildFrame(request, input, frameWidth, frameHeight, wholeFrame) ?: return null
        val outputTransform = DngSdkColorSpec.multiplyMatrix3x3(
            input.outputTransform,
            RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.DisplayP3, ColorSpace.BT2020),
        )
        val support = frame.spatialSupport
        val bytesPerPixel = scratchBytesPerPixel(frame) ?: return null
        val workEdge = subTileWorkEdge(request.context, support, bytesPerPixel)
        // Every sub-tile works on the same workWidth × workHeight window, so the renderer's
        // scratch is one set of textures for the whole frame. A window that would cross the
        // input's edge slides back inside it: its apron toward the edge is the input's own, as a
        // whole-input render's would be, and its far apron grows.
        val workWidth = min(workEdge, input.width)
        val workHeight = min(workEdge, input.height)
        val coreWidth = if (workWidth == input.width) input.width else workEdge - 2 * support
        val coreHeight = if (workHeight == input.height) input.height else workEdge - 2 * support
        if (!subInput.ensure(workWidth, workHeight) || !subOutput.ensure(workWidth, workHeight)) return null
        val windowed = workWidth < input.width || workHeight < input.height
        try {
            var top = 0
            while (top < input.height) {
                val coreBottom = min(input.height, top + coreHeight)
                val workTop = (top - support).coerceIn(0, input.height - workHeight)
                var left = 0
                while (left < input.width) {
                    val coreRight = min(input.width, left + coreWidth)
                    val workLeft = (left - support).coerceIn(0, input.width - workWidth)
                    prepareWindow(input, workLeft, workTop, workWidth, workHeight) ?: return null
                    renderer.render(
                        frame, subInput.texture, workWidth, workHeight,
                        originX + workLeft, originY + workTop, null,
                        subOutput.framebuffer, subOutput.texture,
                    )
                    finish(
                        subOutput.texture, left - workLeft, top - workTop, left, top,
                        coreRight - left, coreBottom - top, input, outputTransform,
                    )
                    if (windowed) {
                        // Bounds the GPU queue to one sub-tile, so a frame never holds the GPU (and
                        // the memory its retired commands pin) for the whole frame at once; the
                        // retired scratch is then freed, so the next window allocates its own sizes
                        // (its frame-anchored grids may differ by a cell) instead of adding to them.
                        GlesGpuCompletion.awaitSubmittedWork("Fotufilm sub-tile", RawGlesProgram::logErrors)
                        renderer.trimScratch()
                    }
                    left = coreRight
                }
                top = coreBottom
            }
        } finally {
            renderer.trimScratch()
        }
        RawGlesProgram.logErrors("FotufilmToneStage.render")
        return RawEngineTonePass.Output(input.targetTextureId, input.width, input.height)
    }

    /**
     * Writes the tile's whole-frame metering contribution: the sums of prepared scene light and
     * the pixel count over each cell of a [cellSize]-pixel lattice of the frame that the tile's core
     * ([coreLeft], [coreTop], [coreWidth] × [coreHeight] in input pixels) covers. The caller adds the
     * returned cells (row-major RGBA = r, g, b sums and count, starting at cell ([firstCellX],
     * [firstCellY])) into its whole-frame accumulator.
     */
    fun meterTile(
        input: RawEngineTonePass.Input,
        coreLeft: Int,
        coreTop: Int,
        coreWidth: Int,
        coreHeight: Int,
        cellSize: Int,
    ): FotufilmMeterCells? {
        require(input.width == input.globalWidth && input.height == input.globalHeight) {
            "Fotufilm tile metering reads full-resolution tiles"
        }
        val frameLeft = input.globalOriginX + coreLeft
        val frameTop = input.globalOriginY + coreTop
        val firstCellX = frameLeft / cellSize
        val firstCellY = frameTop / cellSize
        val cellsX = (frameLeft + coreWidth - 1) / cellSize - firstCellX + 1
        val cellsY = (frameTop + coreHeight - 1) / cellSize - firstCellY + 1
        val values = FloatArray(cellsX * cellsY * 4)
        val metered = meterRegion(
            input, coreLeft, coreTop, coreWidth, coreHeight,
            input.globalOriginX, input.globalOriginY, cellSize,
        ) { cells ->
            for (y in 0 until cells.height) for (x in 0 until cells.width) {
                val target = ((cells.firstCellY - firstCellY + y) * cellsX + cells.firstCellX - firstCellX + x) * 4
                val source = (y * cells.width + x) * 4
                for (c in 0 until 4) values[target + c] += cells.values[source + c]
            }
        }
        return if (metered) FotufilmMeterCells(firstCellX, firstCellY, cellsX, cellsY, values) else null
    }

    private fun buildFrame(
        request: FotufilmRenderRequest,
        input: RawEngineTonePass.Input,
        frameWidth: Int,
        frameHeight: Int,
        wholeFrame: Boolean,
    ): FotufilmFrame? {
        val metering = request.metering
        if (metering != null) {
            return FotufilmRuntime.buildFrame(
                request.context, request.document, frameWidth, frameHeight,
                meteringBuffer = metering.buffer, meteringWidth = metering.width,
                meteringHeight = metering.height, measureFlareOnDevice = false,
                sourceIdentity = metering.identity,
            ).frame
        }
        val plain = FotufilmRuntime.buildFrame(
            request.context, request.document, frameWidth, frameHeight, measureFlareOnDevice = false,
        )
        if (!plain.needsMetering()) return plain.frame
        check(wholeFrame) {
            "Fotufilm frame ${frameWidth}x$frameHeight meters the scene; a tile needs a metering image"
        }
        // The whole input is the whole frame: meter it window by window on the reduced lattice.
        val accumulator = FotufilmMeteringAccumulator(input.width, input.height)
        val metered = meterRegion(input, 0, 0, input.width, input.height, 0, 0, accumulator.cellSize, accumulator::add)
        if (!metered) return null
        val image = accumulator.image("frame-${input.width}x${input.height}")
        PLog.d(TAG, "Metered ${frameWidth}x$frameHeight on a ${image.width}x${image.height} image")
        return FotufilmRuntime.buildFrame(
            request.context, request.document, frameWidth, frameHeight,
            meteringBuffer = image.buffer, meteringWidth = image.width, meteringHeight = image.height,
            measureFlareOnDevice = false,
        ).frame
    }

    /** Prepares the engine input's texel window into [subInput], resized to the window. */
    private fun prepareWindow(input: RawEngineTonePass.Input, x: Int, y: Int, width: Int, height: Int): Unit? {
        if (!subInput.ensure(width, height)) return null
        inputAlgorithm.render(
            input.copy(targetFramebufferId = subInput.framebuffer, targetTextureId = subInput.texture),
            x, y, width, height,
        ) ?: return null
        return Unit
    }

    /**
     * Meters the input region ([left], [top], [width] × [height] in input pixels) on the
     * [cellSize]-pixel lattice of the frame, where input pixel (0, 0) is frame pixel
     * ([frameOffsetX], [frameOffsetY]). The region is prepared in windows of at most
     * [METER_WINDOW_EDGE]; each window's cells (r, g, b sums and pixel count, clipped to the
     * window's share of the region) go to [sink], so a cell split between windows is summed there.
     */
    private fun meterRegion(
        input: RawEngineTonePass.Input,
        left: Int,
        top: Int,
        width: Int,
        height: Int,
        frameOffsetX: Int,
        frameOffsetY: Int,
        cellSize: Int,
        sink: (FotufilmMeterCells) -> Unit,
    ): Boolean {
        val windowWidth = min(METER_WINDOW_EDGE, width)
        val windowHeight = min(METER_WINDOW_EDGE, height)
        var y = top
        while (y < top + height) {
            val bottom = min(top + height, y + windowHeight)
            val windowTop = min(y, top + height - windowHeight)
            var x = left
            while (x < left + width) {
                val right = min(left + width, x + windowWidth)
                val windowLeft = min(x, left + width - windowWidth)
                prepareWindow(input, windowLeft, windowTop, windowWidth, windowHeight) ?: return false
                val firstCellX = (x + frameOffsetX) / cellSize
                val firstCellY = (y + frameOffsetY) / cellSize
                val cellsX = (right - 1 + frameOffsetX) / cellSize - firstCellX + 1
                val cellsY = (bottom - 1 + frameOffsetY) / cellSize - firstCellY + 1
                val values = meter(
                    source = subInput.texture,
                    outputWidth = cellsX,
                    outputHeight = cellsY,
                    cellSize = cellSize,
                    // Cell (i, j) spans frame pixels [cell * size, (cell + 1) * size), in window texels.
                    cellOriginX = firstCellX * cellSize - frameOffsetX - windowLeft,
                    cellOriginY = firstCellY * cellSize - frameOffsetY - windowTop,
                    clipLeft = x - windowLeft,
                    clipTop = y - windowTop,
                    clipRight = right - windowLeft,
                    clipBottom = bottom - windowTop,
                ) ?: return false
                sink(FotufilmMeterCells(firstCellX, firstCellY, cellsX, cellsY, values))
                x = right
            }
            y = bottom
        }
        return true
    }

    /** Sums [source] over a cell lattice: r, g, b sums and the pixel count in alpha. */
    private fun meter(
        source: Int,
        outputWidth: Int,
        outputHeight: Int,
        cellSize: Int,
        cellOriginX: Int,
        cellOriginY: Int,
        clipLeft: Int,
        clipTop: Int,
        clipRight: Int,
        clipBottom: Int,
    ): FloatArray? {
        if (!meterTarget.ensure(outputWidth, outputHeight, GLES30.GL_RGBA32F)) return null
        val program = ensureMeterProgram()
        if (program == 0) return null
        GLES30.glUseProgram(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, meterTarget.framebuffer)
        GLES30.glViewport(0, 0, outputWidth, outputHeight)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, source)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uSource"), 0)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uCellSize"), cellSize)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(program, "uCellOrigin"), cellOriginX, cellOriginY)
        GLES30.glUniform4i(GLES30.glGetUniformLocation(program, "uClip"), clipLeft, clipTop, clipRight, clipBottom)
        quad.bindIdentityTextureMatrix(program)
        quad.draw(program)
        val bytes = ByteBuffer.allocateDirect(outputWidth * outputHeight * 4 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
        GLES30.glReadPixels(0, 0, outputWidth, outputHeight, GLES30.GL_RGBA, GLES30.GL_FLOAT, bytes)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "Fotufilm metering readback failed: error=0x${error.toString(16)}")
            return null
        }
        return FloatArray(outputWidth * outputHeight * 4).also { bytes.asFloatBuffer().get(it) }
    }

    /**
     * The renderer's peak scratch per work pixel for [frame]'s graph, measured once per graph
     * shape: which stages run and the strides of their frame-anchored grids decide which
     * intermediates coexist, and every full-resolution or strided intermediate scales with the
     * region's area. A [SCRATCH_PROBE_EDGE] square is rendered from an empty pool and its
     * high-water mark divided by its area; the per-texture rounding of the strided grids and the
     * one-dimensional kernels weigh more on the probe than on a larger sub-tile, so the figure
     * bounds the larger sub-tile from above.
     */
    private fun scratchBytesPerPixel(frame: FotufilmFrame): Long? {
        val key = renderer.scratchLayoutKey(frame)
        scratchBytesPerPixel[key]?.let { return it }
        val edge = SCRATCH_PROBE_EDGE
        if (!subInput.ensure(edge, edge) || !subOutput.ensure(edge, edge)) return null
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, subInput.framebuffer)
        GLES30.glViewport(0, 0, edge, edge)
        GLES30.glClearColor(0f, 0f, 0f, 0f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        renderer.trimScratch()
        try {
            renderer.render(frame, subInput.texture, edge, edge, 0, 0, null, subOutput.framebuffer, subOutput.texture)
            val measured = (renderer.scratchHighWaterBytes + edge.toLong() * edge - 1) / (edge.toLong() * edge)
            GlesGpuCompletion.awaitSubmittedWork("Fotufilm scratch probe", RawGlesProgram::logErrors)
            PLog.i(TAG, "Fotufilm scratch $measured B/px for graph $key")
            scratchBytesPerPixel[key] = measured
            return measured
        } finally {
            renderer.trimScratch()
        }
    }

    private fun finish(
        source: Int,
        sourceX: Int,
        sourceY: Int,
        targetX: Int,
        targetY: Int,
        width: Int,
        height: Int,
        input: RawEngineTonePass.Input,
        outputTransform: FloatArray,
    ) {
        val program = ensureFinishProgram()
        check(program != 0) { "Fotufilm finish program unavailable" }
        GLES30.glUseProgram(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(targetX, targetY, width, height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, source)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uSource"), 0)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(program, "uSourceOffset"), sourceX - targetX, sourceY - targetY)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uOutputTransform"), 1, false,
            RawToneMappingGl.transposeMatrix3x3(outputTransform), 0,
        )
        quad.bindIdentityTextureMatrix(program)
        quad.draw(program)
    }

    private fun ensureFinishProgram(): Int {
        if (finishProgram == 0) finishProgram = quad.createProgram(FINISH_SHADER, "fotufilmFinish")
        return finishProgram
    }

    private fun ensureMeterProgram(): Int {
        if (meterProgram == 0) meterProgram = quad.createProgram(METER_SHADER, "fotufilmMeter")
        return meterProgram
    }

    /**
     * The sub-tile edge, apron included. A sub-tile holds the renderer's measured
     * [scratchBytesPerPixel] plus the RGBA16F sub-tile input and output per work pixel at its peak,
     * shared with system RAM on mobile GPUs, so the edge comes from a budget of
     * [SUB_TILE_MEMORY_SHARE] of the device's memory, never below a core of [MIN_SUB_TILE_CORE]
     * inside the apron the frame needs.
     */
    private fun subTileWorkEdge(context: Context, support: Int, scratchBytesPerPixel: Long): Int {
        val memory = ActivityManager.MemoryInfo()
        context.getSystemService(ActivityManager::class.java).getMemoryInfo(memory)
        val budget = memory.totalMem.toDouble() / SUB_TILE_MEMORY_SHARE
        val bytesPerPixel = scratchBytesPerPixel + SUB_TILE_TARGET_BYTES_PER_PIXEL
        val edge = (sqrt(budget / bytesPerPixel).toInt() / EDGE_ALIGNMENT) * EDGE_ALIGNMENT
        val needed = 2 * support + MIN_SUB_TILE_CORE
        if (needed > edge) {
            PLog.w(TAG, "Fotufilm apron $support needs a ${needed}px sub-tile over the ${edge}px memory budget")
        }
        return max(min(edge, MAX_SUB_TILE_EDGE), needed)
    }

    fun prewarm(): Boolean = inputAlgorithm.prewarm() && ensureFinishProgram() != 0 && ensureMeterProgram() != 0

    fun release() {
        inputAlgorithm.release()
        renderer.release()
        if (finishProgram != 0) GLES30.glDeleteProgram(finishProgram)
        if (meterProgram != 0) GLES30.glDeleteProgram(meterProgram)
        finishProgram = 0
        meterProgram = 0
        listOf(subInput, subOutput, meterTarget).forEach(Target::release)
    }

    private fun FotufilmBuildResult.needsMetering(): Boolean = wantsSceneMetering || wantsFlareMean

    /** One render target, reallocated only when its size or format changes. */
    private class Target(private val label: String) {
        var texture = 0
            private set
        var framebuffer = 0
            private set
        private var width = 0
        private var height = 0
        private var format = 0

        fun ensure(width: Int, height: Int, format: Int = GLES30.GL_RGBA16F): Boolean {
            if (texture != 0 && this.width == width && this.height == height && this.format == format) return true
            release()
            texture = IntArray(1).also { GLES30.glGenTextures(1, it, 0) }[0]
            framebuffer = IntArray(1).also { GLES30.glGenFramebuffers(1, it, 0) }[0]
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
            GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, format, width, height)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_NEAREST)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0,
            )
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            val error = GLES30.glGetError()
            if (status != GLES30.GL_FRAMEBUFFER_COMPLETE || error != GLES30.GL_NO_ERROR) {
                PLog.e(TAG, "Fotufilm $label target ${width}x$height allocation failed: status=$status error=$error")
                release()
                return false
            }
            this.width = width
            this.height = height
            this.format = format
            return true
        }

        fun release() {
            if (texture != 0) GLES30.glDeleteTextures(1, intArrayOf(texture), 0)
            if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
            texture = 0
            framebuffer = 0
            width = 0
            height = 0
            format = 0
        }
    }

    companion object {
        private const val TAG = "FotufilmToneStage"

        /** Largest sub-tile edge, apron included, whatever the memory budget allows. */
        private const val MAX_SUB_TILE_EDGE = 2048
        private const val MIN_SUB_TILE_CORE = 512
        private const val EDGE_ALIGNMENT = 64

        /** Sub-tile scratch budget as a fraction (1 / share) of the device's total memory. */
        private const val SUB_TILE_MEMORY_SHARE = 16

        /** The RGBA16F sub-tile input and output, per work pixel. */
        private const val SUB_TILE_TARGET_BYTES_PER_PIXEL = 2 * 8

        /** Edge of the square the renderer's scratch per pixel is measured on. */
        private const val SCRATCH_PROBE_EDGE = 512

        /** Graph shapes whose measured scratch is remembered. */
        private const val SCRATCH_CACHE_SIZE = 8

        /** Largest window the scene is prepared in for metering. */
        private const val METER_WINDOW_EDGE = 2048

        /** Long edge of the whole-frame image the scene is metered on (upstream accepts a downsample). */
        const val METERING_LONG_EDGE = 1024

        private val FINISH_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            out vec4 fragColor;
            uniform sampler2D uSource;
            uniform ivec2 uSourceOffset;
            uniform mat3 uOutputTransform;
            void main() {
                vec3 print = texelFetch(uSource, ivec2(gl_FragCoord.xy) + uSourceOffset, 0).rgb;
                fragColor = vec4(uOutputTransform * print, 1.0);
            }
        """.trimIndent()

        private val METER_SHADER = """
            #version 300 es
            precision highp float;
            precision highp int;
            precision highp sampler2D;
            out vec4 fragColor;
            uniform sampler2D uSource;
            uniform int uCellSize;
            uniform ivec2 uCellOrigin;
            uniform ivec4 uClip;
            void main() {
                ivec2 cell = ivec2(gl_FragCoord.xy);
                ivec2 start = max(uCellOrigin + cell * uCellSize, uClip.xy);
                ivec2 end = min(uCellOrigin + (cell + 1) * uCellSize, uClip.zw);
                vec3 sum = vec3(0.0);
                float count = 0.0;
                for (int y = start.y; y < end.y; ++y) {
                    for (int x = start.x; x < end.x; ++x) {
                        sum += texelFetch(uSource, ivec2(x, y), 0).rgb;
                        count += 1.0;
                    }
                }
                fragColor = vec4(sum, count);
            }
        """.trimIndent()
    }
}

/** A tile's metering cells: row-major RGBA (r, g, b sums, pixel count). */
internal class FotufilmMeterCells(
    val firstCellX: Int,
    val firstCellY: Int,
    val width: Int,
    val height: Int,
    val values: FloatArray,
)

/** Accumulates tile metering cells into the whole-frame metering image. */
internal class FotufilmMeteringAccumulator(frameWidth: Int, frameHeight: Int) {
    val cellSize = max(1, ceil(max(frameWidth, frameHeight).toDouble() / FotufilmToneStage.METERING_LONG_EDGE).toInt())
    val width = (frameWidth + cellSize - 1) / cellSize
    val height = (frameHeight + cellSize - 1) / cellSize
    private val sums = DoubleArray(width * height * 4)

    fun add(cells: FotufilmMeterCells) {
        for (y in 0 until cells.height) {
            for (x in 0 until cells.width) {
                val target = ((cells.firstCellY + y) * width + cells.firstCellX + x) * 4
                val source = (y * cells.width + x) * 4
                for (c in 0 until 4) sums[target + c] += cells.values[source + c].toDouble()
            }
        }
    }

    /**
     * The metered image: the cells the tiles covered, which is the rendered region of the frame
     * (the output crop) rather than the whole sensor when the photograph is cropped.
     */
    fun image(identity: String): FotufilmMeteringImage {
        var left = width
        var top = height
        var right = -1
        var bottom = -1
        for (y in 0 until height) for (x in 0 until width) {
            if (sums[(y * width + x) * 4 + 3] > 0.0) {
                left = min(left, x)
                top = min(top, y)
                right = max(right, x)
                bottom = max(bottom, y)
            }
        }
        check(right >= left && bottom >= top) { "Fotufilm metering received no pixels" }
        val imageWidth = right - left + 1
        val imageHeight = bottom - top + 1
        val buffer = ByteBuffer.allocateDirect(imageWidth * imageHeight * 4 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
        val floats = buffer.asFloatBuffer()
        for (y in top..bottom) for (x in left..right) {
            val i = (y * width + x) * 4
            val count = sums[i + 3]
            check(count > 0.0) { "Fotufilm metering cell ($x, $y) inside the rendered region received no pixels" }
            floats.put((sums[i] / count).toFloat())
            floats.put((sums[i + 1] / count).toFloat())
            floats.put((sums[i + 2] / count).toFloat())
            floats.put(1f)
        }
        return FotufilmMeteringImage(buffer, imageWidth, imageHeight, identity)
    }
}

/** The shared engine-input shader with an identity engine: linear Rec.2020 scene light out. */
internal object FotufilmInputToneShader {
    val DEFINITION = RawEngineToneShaderDefinition(
        engineUniforms = "uniform mat3 uOutputTransform;",
        engineFunctions = """
            vec3 applyEngineTone(vec3 color) {
                return color;
            }
        """.trimIndent(),
        includeAdobeProfilePipeline = false,
    )
}

internal class FotufilmInputToneAlgorithm(quad: RawFullscreenQuad) :
    RawRenderingEngineToneAlgorithm(quad, FotufilmInputToneShader.DEFINITION)
