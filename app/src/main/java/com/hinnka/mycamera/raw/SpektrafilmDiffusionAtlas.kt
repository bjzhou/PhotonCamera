package com.hinnka.mycamera.raw

import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.texture
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.xy
import com.hinnka.mycamera.raw.SpektrafilmOpticsPass.FrameDiffusion
import com.hinnka.mycamera.raw.SpektrafilmOpticsPass.Region
import com.hinnka.mycamera.utils.PLog

/** Stitches the staged irradiance reductions on the global pixel grid before broad diffusion. */
internal class SpektrafilmDiffusionAtlas(
    private val gl: SpektrafilmGraphGl,
    private val optics: SpektrafilmOpticsPass,
) {
    /** [prepare] supplies a work-sized FP32 irradiance texture starting at texel (0, 0). */
    fun build(
        frame: Region,
        stride: Int,
        params: SpectralDiffusion,
        nativeSupport: Int,
        halation: SpectralHalation? = null,
        maxRaw: Float? = null,
        prepare: (work: RawTileRect, region: Region) -> Int?,
    ): FrameDiffusion? {
        require(stride > 0 && (stride and (stride - 1)) == 0 && SEED_EDGE % stride == 0)
        require(nativeSupport >= 0)
        val atlasOriginX = frame.originX / stride
        val atlasOriginY = frame.originY / stride
        val atlasWidth = ceilDiv(frame.originX + frame.width, stride) - atlasOriginX
        val atlasHeight = ceilDiv(frame.originY + frame.height, stride) - atlasOriginY
        val columns = seedBoundaries(frame.originX, frame.width, stride)
        val rows = seedBoundaries(frame.originY, frame.height, stride)
        val startNs = System.nanoTime()

        try {
            val atlas = gl.target(ATLAS_TARGET, atlasWidth, atlasHeight)
            try {
                for (y in 0 until rows.lastIndex) for (x in 0 until columns.lastIndex) {
                    val seed = RawTileRect(columns[x], rows[y], columns[x + 1], rows[y + 1])
                    val work = expand(frame, seed, nativeSupport)
                    val source = prepare(work, frame.regionFor(work)) ?: return null
                    val seedTexture = if (work == seed) source else trim(source, work, seed)
                    val seedRegion = frame.regionFor(seed)
                    val reduced = optics.reduceDiffusionInput(seedTexture, seedRegion, stride, halation, maxRaw)
                    val reducedX = seedRegion.originX / stride
                    val reducedY = seedRegion.originY / stride
                    check(reduced.originX == reducedX && reduced.originY == reducedY && reduced.stride == stride &&
                        reduced.width == ceilDiv(seedRegion.originX + seed.width, stride) - reducedX &&
                        reduced.height == ceilDiv(seedRegion.originY + seed.height, stride) - reducedY
                    ) { "Spektrafilm reduced diffusion seed does not match its global grid" }
                    val left = reducedX - atlasOriginX
                    val top = reducedY - atlasOriginY
                    gl.draw(
                        COPY_PROGRAM, COPY_WINDOW, atlas.framebuffer, left, top, reduced.width, reduced.height,
                    ) { program ->
                        texture(program, "uSource", 0, reduced.texture)
                        xy(program, "uOffset", -left, -top)
                    }
                }
            } finally {
                gl.releaseTarget(TRIM_TARGET)
            }

            return optics.buildFrameDiffusion(atlas.texture, frame, stride, params).also {
                PLog.i(
                    TAG,
                    "Spektrafilm diffusion atlas=${atlasWidth}x$atlasHeight stride=$stride " +
                        "seeds=${columns.lastIndex * rows.lastIndex} input=${frame.width}x${frame.height} " +
                        "origin=${frame.originX},${frame.originY} nativeSupport=$nativeSupport " +
                        "submitMs=${(System.nanoTime() - startNs) / 1_000_000}",
                )
            }
        } finally {
            gl.releaseTarget(ATLAS_TARGET)
        }
    }

    private fun trim(source: Int, work: RawTileRect, seed: RawTileRect): Int {
        val target = gl.target(TRIM_TARGET, seed.width, seed.height)
        gl.draw(COPY_PROGRAM, COPY_WINDOW, target) { program ->
            texture(program, "uSource", 0, source)
            xy(program, "uOffset", seed.left - work.left, seed.top - work.top)
        }
        return target.texture
    }

    private fun Region.regionFor(rect: RawTileRect): Region = copy(
        width = rect.width, height = rect.height, originX = originX + rect.left, originY = originY + rect.top,
    )

    private fun expand(frame: Region, seed: RawTileRect, support: Int): RawTileRect = RawTileRect(
        seed.left - minOf(seed.left, support),
        seed.top - minOf(seed.top, support),
        seed.right + minOf(frame.width - seed.right, support),
        seed.bottom + minOf(frame.height - seed.bottom, support),
    )

    private fun seedBoundaries(origin: Int, length: Int, stride: Int): List<Int> = buildList {
        add(0)
        var cut = SEED_EDGE - origin % SEED_EDGE
        while (cut < length) {
            // Whole-sample BOX reflection at an odd frame edge may read into the adjacent cell.
            // Keep a clipped edge fragment with its neighbor if it is shorter than one cell.
            if (cut >= stride && length - cut >= stride) add(cut)
            cut += SEED_EDGE
        }
        add(length)
    }

    private fun ceilDiv(value: Int, divisor: Int): Int =
        value / divisor + if (value % divisor == 0) 0 else 1

    companion object {
        private const val TAG = "SpektrafilmDiffusionAtlas"
        private const val SEED_EDGE = 768
        private const val ATLAS_TARGET = "diffusionSeedAtlas"
        private const val TRIM_TARGET = "diffusionSeedTrim"
        private const val COPY_PROGRAM = "diffusionSeedCopy"
        private const val COPY_WINDOW = """
uniform sampler2D uSource;
uniform ivec2 uOffset;

void main() {
    fragColor = texelFetch(uSource, ivec2(gl_FragCoord.xy) + uOffset, 0);
}
"""
    }
}
