package com.hinnka.mycamera.processor

import com.hinnka.mycamera.raw.RawCfaCorrection
import com.hinnka.mycamera.raw.RawMetadata
import kotlin.math.floor
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Test

class RawStackCfaPhaseGatherTest {
    @Test
    fun fourTapGatherPreservesExactCfaPhaseForEverySupportedPattern() {
        val patterns = RawMetadata.CFA_RGGB..RawMetadata.CFA_QUAD_8X8_BGGR
        val output = SamplePosition(13, 11)
        val sourceRaw = 9.35f to 7.80f

        patterns.forEach { cfaPattern ->
            val period = RawCfaCorrection.repeatPatternDim(cfaPattern)[0]
            val targetChannel = RawCfaCorrection.channelIndexForPixel(
                cfaPattern,
                output.x,
                output.y,
            )
            val samples = samePhaseFourTapGather(output, sourceRaw, period)

            assertEquals(4, samples.size)
            samples.forEach { sample ->
                assertEquals(Math.floorMod(output.x, period), Math.floorMod(sample.x, period))
                assertEquals(Math.floorMod(output.y, period), Math.floorMod(sample.y, period))
                assertEquals(
                    targetChannel,
                    RawCfaCorrection.channelIndexForPixel(cfaPattern, sample.x, sample.y),
                )
            }
        }
    }

    @Test
    fun motionMovesGatherFootprintWithoutChangingOutputPhase() {
        val output = SamplePosition(8, 5)
        val period = 2
        val first = samePhaseFourTapGather(output, 6.1f to 4.2f, period)
        val shifted = samePhaseFourTapGather(output, 8.2f to 2.1f, period)

        assertNotEquals(first, shifted)
        (first + shifted).forEach { sample ->
            assertEquals(Math.floorMod(output.x, period), Math.floorMod(sample.x, period))
            assertEquals(Math.floorMod(output.y, period), Math.floorMod(sample.y, period))
        }
    }

    /** Mirrors the integer lattice construction in SUPER_RESOLUTION_ACCUMULATE_COMPUTE_SHADER. */
    private fun samePhaseFourTapGather(
        output: SamplePosition,
        sourceRaw: Pair<Float, Float>,
        period: Int,
    ): List<SamplePosition> {
        val phaseX = Math.floorMod(output.x, period)
        val phaseY = Math.floorMod(output.y, period)
        val originX = floor((sourceRaw.first - phaseX) / period).toInt()
        val originY = floor((sourceRaw.second - phaseY) / period).toInt()
        return buildList(4) {
            for (latticeY in 0..1) {
                for (latticeX in 0..1) {
                    add(
                        SamplePosition(
                            x = phaseX + (originX + latticeX) * period,
                            y = phaseY + (originY + latticeY) * period,
                        ),
                    )
                }
            }
        }
    }

    private data class SamplePosition(val x: Int, val y: Int)
}
