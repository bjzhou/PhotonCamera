package com.hinnka.mycamera.processor

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.utils.DirectBufferPixelPacker
import com.hinnka.mycamera.utils.LargeDirectBuffer
import java.nio.ByteBuffer

/**
 * Full-size RGBA16UI output boundary for MGC Spatial RGB and Sabre VGN.
 *
 * Fusion/Resolve tiles are assembled into one full-size 2D texture owned by this stage. The merged
 * un-white-balanced camera RGB is handed off unchanged: either exported as a GPU texture or read
 * back into the packed RGB16 CPU buffer. No post-fusion color noise or IIR filtering runs here.
 */
internal class GlesMgcSpatialRgbOutputAssembler(
    private val imageWidth: Int,
    private val imageHeight: Int,
    private val backend: Backend,
    private val exportFullSizeTexture: Boolean = false,
) {
    interface Backend {
        fun createRgba16UiTexture(width: Int, height: Int, label: String): Int

        fun deleteTexture(texture: Int, label: String)

        fun transferTextureOwnership(texture: Int, label: String)

        fun checkGlError(label: String)

        fun yieldToUiRenderer()
    }

    data class ReadbackTiming(
        val elapsedMs: Long,
        val gpuQueueWaitMs: Long,
        val pixelTransferMs: Long,
        val cpuPackMs: Long,
        val allocMs: Long,
    )

    data class ProcessResult(
        val readbackTiming: ReadbackTiming,
        val exportedTextureId: Int,
        val cpuBufferPopulated: Boolean,
    )

    private var tiles: List<MgcSpatialRgbTile> = emptyList()
    private var readbackTileWidth = 0
    private var readbackTileHeight = 0

    private var assembledRgb = 0
    private var writtenTileCount = 0
    private var readbackFbo = 0

    init {
        require(imageWidth > 0 && imageHeight > 0)
    }

    private fun validateAndSetTiles(newTiles: List<MgcSpatialRgbTile>) {
        require(newTiles.isNotEmpty())
        check(assembledRgb == 0) { "MGC Spatial RGB output storage is already active" }
        val tiles = newTiles.toList()
        val rows = tiles.groupBy { it.outputCore.top }.toSortedMap().values.toList()
        var expectedTop = 0
        var expectedIndex = 0
        rows.forEachIndexed { rowIndex, row ->
            val orderedRow = row.sortedBy { it.outputCore.left }
            require(orderedRow.first().outputCore.top == expectedTop) {
                "MGC Spatial RGB tile row $rowIndex starts at ${orderedRow.first().outputCore.top}, " +
                    "expected $expectedTop"
            }
            val rowBottom = orderedRow.first().outputCore.bottom
            var expectedLeft = 0
            orderedRow.forEach { tile ->
                require(tile.index == expectedIndex++) {
                    "MGC Spatial RGB tiles must be row-major"
                }
                require(tile.outputCore.left == expectedLeft && tile.outputCore.top == expectedTop) {
                    "MGC Spatial RGB tile ${tile.index} leaves a gap or overlaps another tile"
                }
                require(tile.outputCore.bottom == rowBottom) {
                    "MGC Spatial RGB tile row $rowIndex has inconsistent heights"
                }
                expectedLeft = tile.outputCore.right
            }
            require(expectedLeft == imageWidth) {
                "MGC Spatial RGB tile row $rowIndex covers width $expectedLeft, expected $imageWidth"
            }
            expectedTop = rowBottom
        }
        require(expectedTop == imageHeight) {
            "MGC Spatial RGB tiles cover height $expectedTop, expected $imageHeight"
        }
        readbackTileWidth = tiles.maxOf { it.outputCore.width }
        readbackTileHeight = tiles.maxOf { it.outputCore.height }
        this.tiles = tiles
    }

    fun initStorage(tiles: List<MgcSpatialRgbTile>) {
        validateAndSetTiles(tiles)
        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        require(imageWidth <= maxTextureSize[0] && imageHeight <= maxTextureSize[0]) {
            "MGC Spatial RGB output requires ${imageWidth}x$imageHeight 2D textures; " +
                "GLES supports up to ${maxTextureSize[0]}"
        }
        assembledRgb = backend.createRgba16UiTexture(imageWidth, imageHeight, "assembled camera RGB")
        backend.checkGlError("MGC Spatial RGB output storage ${imageWidth}x$imageHeight")
        writtenTileCount = 0
    }

    /**
     * Full-size integer render target owned by this stage.
     *
     * The normalize/Resolve fragment pass renders each tile directly into its global viewport on
     * this texture, which is then exported or read back without another image copy.
     */
    fun normalizationTargetTexture(): Int {
        check(assembledRgb != 0) { "MGC Spatial RGB output storage is not initialized" }
        return assembledRgb
    }

    fun markTileWritten(tile: MgcSpatialRgbTile) {
        check(writtenTileCount < tiles.size) { "All MGC Spatial RGB tiles are already assembled" }
        check(tiles[writtenTileCount].index == tile.index) {
            "MGC Spatial RGB tile ${tile.index} was written out of row-major order; " +
                "expected ${tiles[writtenTileCount].index}"
        }
        writtenTileCount += 1
    }

    fun process(
        obtainOutputBuffer: () -> ByteBuffer,
        deferFullSizeReadback: Boolean,
        onFinalSubmitted: (() -> Unit)? = null,
    ): ProcessResult {
        check(assembledRgb != 0) { "MGC Spatial RGB output has no assembled fusion output" }
        check(writtenTileCount == tiles.size) {
            "MGC Spatial RGB output is incomplete: $writtenTileCount/${tiles.size} tiles"
        }
        onFinalSubmitted?.invoke()

        val cpuBufferPopulated = !exportFullSizeTexture || !deferFullSizeReadback
        val timing = if (cpuBufferPopulated) {
            readbackFullSize(assembledRgb, obtainOutputBuffer())
        } else {
            check(onFinalSubmitted != null) {
                "Deferred MGC Spatial RGB export requires a completion checkpoint"
            }
            ReadbackTiming(
                elapsedMs = 0L,
                gpuQueueWaitMs = 0L,
                pixelTransferMs = 0L,
                cpuPackMs = 0L,
                allocMs = 0L,
            )
        }

        val exportedTextureId = if (exportFullSizeTexture) assembledRgb else 0
        if (exportedTextureId != 0) {
            backend.transferTextureOwnership(exportedTextureId, "camera RGB export")
        } else {
            backend.deleteTexture(assembledRgb, "assembled camera RGB")
        }
        assembledRgb = 0
        writtenTileCount = 0
        tiles = emptyList()
        readbackTileWidth = 0
        readbackTileHeight = 0
        return ProcessResult(
            readbackTiming = timing,
            exportedTextureId = exportedTextureId,
            cpuBufferPopulated = cpuBufferPopulated,
        )
    }

    fun release() {
        if (assembledRgb != 0) {
            backend.deleteTexture(assembledRgb, "assembled camera RGB")
            assembledRgb = 0
        }
        writtenTileCount = 0
        tiles = emptyList()
        readbackTileWidth = 0
        readbackTileHeight = 0
        if (readbackFbo != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(readbackFbo), 0)
            readbackFbo = 0
        }
    }

    private fun readbackFullSize(texture: Int, outputBuffer: ByteBuffer): ReadbackTiming {
        val gpuQueueWaitMs = GlesGpuCompletion.awaitSubmittedWork(
            label = "MGC Spatial RGB full-size output",
            checkGlError = backend::checkGlError,
        )
        ensureReadbackFramebuffer()
        val allocationStart = System.currentTimeMillis()
        val scratchBytes = readbackTileWidth.toLong() * readbackTileHeight.toLong() * 8L
        val scratch = LargeDirectBuffer.allocate(
            scratchBytes,
            "MGC Spatial RGB full-size readback",
        )
            ?: throw IllegalStateException("Unable to allocate full-size MGC Spatial RGB readback scratch")
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
                texture,
                0,
            )
            GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
            val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
            check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
                "Full-size MGC Spatial RGB framebuffer incomplete: 0x${status.toString(16)}"
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
                backend.checkGlError("Full-size MGC Spatial RGB read tile ${tile.index}")
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
                ) { "Unable to pack full-size MGC Spatial RGB tile ${tile.index}" }
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
            elapsedMs = gpuQueueWaitMs + allocationMs + glReadMs + copyMs,
            gpuQueueWaitMs = gpuQueueWaitMs,
            pixelTransferMs = glReadMs,
            cpuPackMs = copyMs,
            allocMs = allocationMs,
        )
    }

    private fun ensureReadbackFramebuffer() {
        if (readbackFbo != 0) return
        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        readbackFbo = ids[0]
        check(readbackFbo != 0) { "Failed to allocate MGC Spatial RGB output readback framebuffer" }
        backend.checkGlError("MGC Spatial RGB output readback framebuffer")
    }
}
