package com.hinnka.mycamera.processor.optics

import com.hinnka.mycamera.processor.BokehDefocusModel

import kotlin.math.abs
import kotlin.math.pow
import kotlin.math.sqrt
import kotlin.math.exp
import kotlin.math.cos
import kotlin.math.PI
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class OpticalLensPhysicsTest {
    @Test
    fun emitterLensUsesTheSameSceneWithoutChangingDiffuseDefocus() {
        val diffuse = OpticalLensProfile.SOAP_BUBBLE.atAperture(1.8, 4096)
        val emitter = OpticalLensProfile.SOAP_BUBBLE_EMITTER.atAperture(1.8, 4096)
        val scene = OpticalSceneCalibration(.33435, OpticalLensProfile.SOAP_BUBBLE)
        val delta = scene.inverseDepthDifference(.06, diffuse)
        assertEquals(delta, scene.inverseDepthDifference(.06, emitter), 1e-12)
        assertEquals(35.4742, diffuse.supportRadiusPixels(delta), .001)
        assertTrue("Only the separated emitter reaches the large caustic", emitter.supportRadiusPixels(delta) in 70.0..80.0)
        val rho = .63
        val step = 1e-6
        val derivative = (emitter.opticalPathMeters(rho + step, delta) -
            emitter.opticalPathMeters(rho - step, delta)) / (2 * step)
        assertEquals(derivative * emitter.imageDistanceMeters / (emitter.pupilRadiusMeters * emitter.pixelPitchMeters),
            emitter.signedRayRadiusPixels(rho, delta), 1e-8)
    }

    @Test
    fun everyStyleSharesTheSameDefocusBeforePupilAberration() {
        for (aperture in listOf(1.0, 1.4, 1.8, 2.8, 8.0, 16.0)) {
            val lens = OpticalLensProfile.SOAP_BUBBLE.atAperture(aperture, 4096)
            for (focus in listOf(0.0, .33435, .5, 1.0)) {
                val calibration = OpticalSceneCalibration(focus)
                for (depth in listOf(0.0, .06, .2, .3, focus, .7, 1.0)) {
                    val delta = calibration.inverseDepthDifference(depth, lens)
                    val expected = BokehDefocusModel.signedRadiusFraction(depth, focus, aperture) * 4096
                    assertEquals(expected, lens.defocusPixelsPerDiopter * delta, 1e-10)
                    // The ray's signed defocus component is the common CoC at
                    // every pupil coordinate, not a resized output kernel.
                    val rho = .73
                    val defocusRay = lens.signedRayRadiusPixels(rho, delta) - lens.signedRayRadiusPixels(rho, 0.0)
                    assertEquals(expected * rho, defocusRay, 1e-10)
                }
            }
        }
    }

    @Test
    fun rayRadiusMatchesFiniteDifferenceOfOpticalPath() {
        val lens = OpticalLensProfile.SOAP_BUBBLE.atAperture(2.8, 4000)
        val rho = 0.63
        val delta = 0.21
        val step = 1e-6
        val derivative = (lens.opticalPathMeters(rho + step, delta) -
            lens.opticalPathMeters(rho - step, delta)) / (2.0 * step)
        val expectedPixels = derivative * lens.imageDistanceMeters /
            (lens.pupilRadiusMeters * lens.pixelPitchMeters)

        assertEquals(expectedPixels, lens.signedRayRadiusPixels(rho, delta), 1e-8)
    }

    @Test
    fun stoppingDownScalesDefocusAndFixedPhysicalAberrationByTheirOrders() {
        val wide = OpticalLensProfile.SOAP_BUBBLE.atAperture(1.4, 4000)
        val stopped = OpticalLensProfile.SOAP_BUBBLE.atAperture(2.8, 4000)

        assertEquals(wide.defocusPixelsPerDiopter / 2.0, stopped.defocusPixelsPerDiopter, 1e-12)
        assertEquals(wide.sphericalRayPixels / 2.0.pow(wide.profile.sphericalOrder - 1), stopped.sphericalRayPixels, 1e-12)
    }

    @Test
    fun signedFrontAndBackDefocusDifferForTheSameLens() {
        val lens = OpticalLensProfile.SOAP_BUBBLE.atAperture(2.0, 4000)

        assertTrue(abs(lens.signedRayRadiusPixels(0.7, 0.3)) != abs(lens.signedRayRadiusPixels(0.7, -0.3)))
    }

    @Test
    fun marginalRayStationarityConcentratesEnergyAtTheRim() {
        val lens = OpticalLensProfile.SOAP_BUBBLE.atAperture(1.4, 2560)
        val order = lens.profile.sphericalOrder
        val delta = (-(order - 1) * lens.sphericalRayPixels - lens.focusRayPixels) / lens.defocusPixelsPerDiopter
        val radius = (order - 2) * lens.sphericalRayPixels
        assertEquals(radius, lens.supportRadiusPixels(delta), 1e-10)
        val bins = PupilPropagator.geometricalRadialEnergy(lens, delta, radius / 100.0)
        // Divide annular energy by its area before comparing irradiance. The
        // outer 1% of the radius has a greater area but also a greater density.
        val innerDensity = bins[0]
        val outerDensity = bins[99] / (100.0 * 100.0 - 99.0 * 99.0)
        assertTrue(outerDensity > innerDensity * 3.0)
        assertEquals(1.0, bins.sum(), 1e-10)
    }

    @Test
    fun supportIncludesInternalCriticalRadius() {
        val lens = OpticalLensProfile.SOAP_BUBBLE.atAperture(1.4, 4000)
        val delta = (-(lens.profile.sphericalOrder - 2) * lens.sphericalRayPixels - lens.focusRayPixels) /
            lens.defocusPixelsPerDiopter
        val endpoint = abs(lens.signedRayRadiusPixels(1.0, delta))
        val criticalPower = -(lens.defocusPixelsPerDiopter * delta + lens.focusRayPixels) /
            ((lens.profile.sphericalOrder - 1) * lens.sphericalRayPixels)
        assertTrue(criticalPower in 0.0..1.0)
        assertTrue(lens.supportRadiusPixels(delta) > endpoint)
    }

    @Test
    fun geometricalRadialEnergyConservesAndIdealDiscHasAreaDistribution() {
        val profile = OpticalLensProfile(
            id = "ideal",
            focalLengthMeters = 0.05,
            sensorLongEdgeMeters = 0.036,
            referenceFNumber = 2.0,
            referenceSphericalOpdMeters = 0.0,
            nominalFocusMeters = 2.0,
        )
        val lens = profile.atAperture(2.0, 4000)
        val delta = 0.4
        val scale = abs(lens.defocusPixelsPerDiopter * delta + lens.focusRayPixels)
        val energy = PupilPropagator.geometricalRadialEnergy(lens, delta, scale / 4.0, 200_000)

        assertEquals(1.0, energy.sum(), 1e-12)
        assertEquals(1.0 / 16.0, energy[0], 0.002)
        assertEquals(3.0 / 16.0, energy[1], 0.002)
        assertEquals(5.0 / 16.0, energy[2], 0.002)
        assertEquals(7.0 / 16.0, energy[3], 0.002)
    }

    @Test
    fun idealCircularPupilHasUnitEnergyAndAiryFirstZeroEncircledEnergy() {
        val profile = OpticalLensProfile(
            id = "ideal-diffraction",
            focalLengthMeters = 0.05,
            sensorLongEdgeMeters = 0.036,
            referenceFNumber = 2.0,
            referenceSphericalOpdMeters = 0.0,
            nominalFocusMeters = 2.0,
        )
        val lens = profile.atAperture(2.0, 4000)
        val wavelength = 550e-9
        val psf = PupilPropagator.propagate(lens, 0.0, wavelength, 128, 2)
        val firstZeroMeters = 1.22 * wavelength * lens.imageDistanceMeters /
            (2.0 * lens.pupilRadiusMeters)

        assertEquals(1.0, psf.energy.sum(), 1e-12)
        assertEquals(0.838, psf.energyWithinRadius(firstZeroMeters), 0.03)
    }

    @Test
    fun undersampledPupilPhaseIsRejected() {
        val lens = OpticalLensProfile.SOAP_BUBBLE.atAperture(1.4, 4000)

        try {
            PupilPropagator.propagate(lens, 1.0, pupilDiameterSamples = 16, padding = 2)
            throw AssertionError("Expected undersampled pupil phase to be rejected")
        } catch (_: IllegalArgumentException) {
            // Expected validation failure.
        }
    }

    @Test
    fun finiteHighlightsRetainARimWithoutLosingTheFocusedCore() {
        val lens = OpticalLensProfile.SOAP_BUBBLE.atAperture(1.8, 4096)
        val delta = OpticalSceneCalibration(0.33435).inverseDepthDifference(0.06, lens)
        // At the shared defocus scale, compact (sigma=8 px) highlights can
        // retain a rim. Broad, pre-blurred highlights are not enlarged to force one.
        val radius = lens.supportRadiusPixels(delta)
        fun irradiance(at: Double): Double {
            var sum = 0.0
            repeat(2048) { radial ->
                val r = lens.signedRayRadiusPixels(sqrt((radial + 0.5) / 2048), delta)
                repeat(128) { angular ->
                    val theta = 2 * PI * (angular + 0.5) / 128
                    sum += exp(-(at * at + r * r - 2 * at * r * cos(theta)) / (2 * 8.0 * 8.0))
                }
            }
            return sum / (2048 * 128)
        }
        val peak = (20..40).maxOf { irradiance(radius * it / 40.0) }
        assertTrue(peak > irradiance(0.0) * 1.25)
        val focusedRadii = DoubleArray(65536) { i ->
            abs(lens.signedRayRadiusPixels(sqrt((i + 0.5) / 65536), 0.0))
        }.sortedArray()
        // This phase plate retains residual spherical aberration at its minimum-RMS
        // focus: stronger background rims cost focused optical concentration. The
        // shared subject compositor preserves protected detail independently; it
        // does not imply that this lens's own focused PSF is a delta function.
        assertTrue("80% of focused ray energy remains within 2.2 px", focusedRadii[(focusedRadii.size * .8).toInt()] < 2.2)
    }
}
