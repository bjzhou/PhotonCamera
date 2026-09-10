package com.hinnka.mycamera.processor.optics

import kotlin.math.PI
import kotlin.math.cos
import kotlin.math.exp
import kotlin.math.sqrt
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class OpticalPsfTableTest {
    @Test
    fun emitterTableTransportsUnitEnergyOverTheLargerOpticalSupport() {
        val diffuse = table()
        val emitter = OpticalPsfTable.build(OpticalLensProfile.SOAP_BUBBLE_EMITTER,
            1.8f, .33435f, 4096, 1280, sceneReferenceProfile = OpticalLensProfile.SOAP_BUBBLE)
        assertTrue(emitter.supportAt(.06f) > diffuse.supportAt(.06f) * 2f)
        for (depth in listOf(0f, .06f, .33435f, .7f, 1f)) {
            var energy = 0.0
            repeat(emitter.radialBinCount) { bin ->
                val radius = (bin + .5f) * emitter.binWidthPixels
                val density = emitter.densityAt(depth, radius)
                energy += density * annularArea(emitter, bin)
                if (radius >= emitter.supportAt(depth)) assertEquals(0f, density, 0f)
            }
            assertEquals(1.0, energy, 1e-6)
            assertEquals(1f, emitter.cumulativeEnergyAt(depth, emitter.tableSupportPixels), 0f)
        }
    }

    private fun table(profile: OpticalLensProfile = OpticalLensProfile.SOAP_BUBBLE) =
        OpticalPsfTable.build(profile, 1.8f, 0.33435f, 4096, 1280)

    private fun annularArea(table: OpticalPsfTable, bin: Int): Double =
        PI * table.binWidthPixels * table.binWidthPixels * (2.0 * bin + 1)

    @Test
    fun allDepthRowsAndTheirInterpolationsConservePupilEnergy() {
        val table = table()
        repeat(table.depthCount) { row ->
            val energy = (0 until table.radialBinCount).sumOf { bin ->
                table.densities[row * table.radialBinCount + bin] * annularArea(table, bin)
            }
            assertEquals("row $row", 1.0, energy, 1e-6)
        }
        for (depth in listOf(0f, .06f, .33435f, .7f, 1f)) {
            val energy = (0 until table.radialBinCount).sumOf { bin ->
                table.densityAt(depth, (bin + .5f) * table.binWidthPixels) * annularArea(table, bin)
            }
            assertEquals("interpolated depth $depth", 1.0, energy, 1e-6)
            assertEquals(0f, table.densityAt(depth, table.tableSupportPixels), 0f)
        }
    }

    @Test
    fun frontFocusAndBackSupportBoundTransportedEnergy() {
        val table = table()
        for (depth in listOf(0f, .06f, .33435f, .7f, 1f)) {
            val bound = table.supportAt(depth)
            assertTrue(bound <= table.tableSupportPixels + 1e-4)
            repeat(table.radialBinCount) { bin ->
                val radius = (bin + .5f) * table.binWidthPixels
                if (radius >= bound) assertEquals(0f, table.densityAt(depth, radius), 0f)
            }
        }
        val near = table.lens.supportRadiusPixels(.1)
        val far = table.lens.supportRadiusPixels(-.1)
        assertTrue("The phase plate distinguishes front and rear defocus", near != far)
        assertTrue(table.supportAt(.33435f) < table.supportAt(.06f))
    }

    @Test
    fun cumulativeEnergyMatchesFiniteAnnularDensityAcrossDepths() {
        val table = table()
        for (depth in listOf(0f, .06f, .33435f, .7f, 1f)) {
            var integrated = 0.0
            assertEquals(0f, table.cumulativeEnergyAt(depth, 0f), 0f)
            repeat(table.radialBinCount) { bin ->
                val inner = bin * table.binWidthPixels.toDouble()
                val outer = inner + table.binWidthPixels
                // Half of this annulus's area lies below its RMS edge radius.
                val midpoint = sqrt((inner * inner + outer * outer) * .5).toFloat()
                val density = table.densityAt(depth, midpoint)
                val energy = density * annularArea(table, bin)
                assertEquals(integrated + energy * .5, table.cumulativeEnergyAt(depth, midpoint).toDouble(), 2e-6)
                integrated += energy
            }
            assertEquals(1f, table.cumulativeEnergyAt(depth, table.tableSupportPixels), 0f)
        }
    }

    @Test
    fun idealPupilGivesUniformDiscAndFiniteFocusedCell() {
        val ideal = OpticalLensProfile.SOAP_BUBBLE.copy(referenceSphericalOpdMeters = 0.0)
        val table = table(ideal)
        val delta = table.calibration.inverseDepthDifference(0.0, table.lens)
        val radius = table.lens.supportRadiusPixels(delta)
        val expected = 1.0 / (PI * radius * radius)
        // Interior annuli have the same irradiance. Skip the unresolved axis and
        // the partially occupied outermost annulus, whose averages differ.
        for (fraction in listOf(.2f, .4f, .6f, .8f)) {
            assertEquals(expected, table.densityAt(0f, radius.toFloat() * fraction).toDouble(), expected * .015)
        }
        val exactlyFocused = OpticalPsfTable.build(ideal, 1.8f, .5f, 4096, 1280)
        val focusedDensity = exactlyFocused.densityAt(.5f, 0f)
        assertTrue(focusedDensity.isFinite())
        assertEquals(1.0, focusedDensity * annularArea(exactlyFocused, 0), 1e-6)
    }

    @Test
    fun compactHighlightRetainsARimWithoutEnlargingBroadHighlights() {
        val table = table()
        val depth = .06f
        // Preserve compact highlights at the common scene scale; a broad source
        // must remain broad rather than acquire an artificially enlarged ring.
        fun irradiance(at: Double, sigma: Double = 8.0): Double {
            var sum = 0.0
            repeat(table.radialBinCount) { bin ->
                val density = table.densityAt(depth, (bin + .5f) * table.binWidthPixels)
                if (density > 0f) {
                    val inner = bin * table.binWidthPixels.toDouble()
                    val outer = inner + table.binWidthPixels
                    val radius = sqrt((inner * inner + outer * outer) / 2)
                    var angular = 0.0
                    repeat(128) { angle ->
                        val theta = 2 * PI * (angle + .5) / 128
                        angular += exp(-(at * at + radius * radius - 2 * at * radius * cos(theta)) / (2.0 * sigma * sigma))
                    }
                    sum += density * annularArea(table, bin) * angular / 128
                }
            }
            return sum
        }
        val peak = (10..40).maxOf { irradiance(it.toDouble()) }
        assertTrue("A finite input highlight still has a brighter rim", peak > irradiance(0.0) * 1.25)
        val broadPeak = (0..50).maxOf { irradiance(it.toDouble(), 16.0) }
        assertTrue("Broad source must not force extra defocus", broadPeak <= irradiance(0.0, 16.0) * 1.05)
    }
}
