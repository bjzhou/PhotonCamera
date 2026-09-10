package com.hinnka.mycamera.processor.optics

import kotlin.math.PI
import kotlin.math.abs
import kotlin.math.cos
import kotlin.math.max
import kotlin.math.sin
import kotlin.math.sqrt

/** Test-only double-precision propagation reference for the production optical model. */
object PupilPropagator {
    data class Psf(
        val size: Int,
        val pixelSpacingMeters: Double,
        /** Integrated energy per Fourier sample, fft-shifted, with unit sum. */
        val energy: DoubleArray,
        val pupilSampleCount: Int,
        val maximumPhaseStepRadians: Double,
    ) {
        fun energyWithinRadius(radiusMeters: Double): Double {
            var sum = 0.0
            val limit2 = radiusMeters * radiusMeters / (pixelSpacingMeters * pixelSpacingMeters)
            for (y in 0 until size) for (x in 0 until size) {
                val dx = x - size / 2
                val dy = y - size / 2
                if (dx.toDouble() * dx + dy.toDouble() * dy <= limit2) sum += energy[y * size + x]
            }
            return sum
        }
    }

    fun propagate(
        lens: OpticalLensState,
        inverseDepthDifference: Double,
        wavelengthMeters: Double = 550e-9,
        pupilDiameterSamples: Int = 128,
        padding: Int = 2,
    ): Psf {
        require(inverseDepthDifference.isFinite())
        require(wavelengthMeters.isFinite() && wavelengthMeters > 0.0)
        require(pupilDiameterSamples >= 16 && pupilDiameterSamples.countOneBits() == 1)
        require(padding >= 2 && padding.countOneBits() == 1)
        val sizeLong = pupilDiameterSamples.toLong() * padding
        require(sizeLong <= 4096) { "Diffraction reference exceeds its declared memory budget" }
        val size = sizeLong.toInt()
        val pupilStep = 2.0 * lens.pupilRadiusMeters / pupilDiameterSamples
        // Bound the phase gradient using the ray displacement (x = v grad W).
        val maxGradient = lens.supportRadiusPixels(inverseDepthDifference) *
            lens.pixelPitchMeters / lens.imageDistanceMeters
        val phaseStep = 2.0 * PI * maxGradient * pupilStep / wavelengthMeters
        require(phaseStep <= PI / 2.0) {
            "Undersampled pupil phase: step=$phaseStep radians; increase pupilDiameterSamples"
        }
        val real = DoubleArray(size * size)
        val imaginary = DoubleArray(size * size)
        var pupilSamples = 0
        for (y in 0 until size) for (x in 0 until size) {
            val ux = (x - size / 2 + 0.5) * 2.0 / pupilDiameterSamples
            val uy = (y - size / 2 + 0.5) * 2.0 / pupilDiameterSamples
            val rho2 = ux * ux + uy * uy
            if (rho2 <= 1.0) {
                val phase = lens.phaseRadians(sqrt(rho2), inverseDepthDifference, wavelengthMeters)
                real[y * size + x] = cos(phase)
                imaginary[y * size + x] = sin(phase)
                pupilSamples++
            }
        }
        OpticalFourierTransform.transform2D(real, imaginary, size)
        // Parseval supplies the absolute discrete normalization. No peak or rim normalization.
        val totalEnergy = size.toDouble() * size * pupilSamples
        val energy = DoubleArray(size * size)
        for (y in 0 until size) for (x in 0 until size) {
            val source = ((y + size / 2) % size) * size + (x + size / 2) % size
            energy[y * size + x] = (real[source] * real[source] + imaginary[source] * imaginary[source]) / totalEnergy
        }
        check(abs(energy.sum() - 1.0) < 1e-8) { "Diffraction energy conservation failed" }
        return Psf(size, wavelengthMeters * lens.imageDistanceMeters / (size * pupilStep), energy, pupilSamples, phaseStep)
    }

    /** Reference energy histogram. Bin finite pupil energy, never divide by a singular Jacobian. */
    fun geometricalRadialEnergy(
        lens: OpticalLensState,
        inverseDepthDifference: Double,
        binWidthPixels: Double,
        sampleCount: Int = 262144,
    ): DoubleArray {
        require(binWidthPixels.isFinite() && binWidthPixels > 0.0 && sampleCount > 0)
        val bins = max(1, kotlin.math.ceil(lens.supportRadiusPixels(inverseDepthDifference) / binWidthPixels).toInt() + 1)
        val energy = DoubleArray(bins)
        for (i in 0 until sampleCount) {
            val rho = sqrt((i + 0.5) / sampleCount)
            val radius = abs(lens.signedRayRadiusPixels(rho, inverseDepthDifference))
            energy[(radius / binWidthPixels).toInt()] += 1.0 / sampleCount
        }
        return energy
    }
}
