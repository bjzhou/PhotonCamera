package com.hinnka.mycamera.processor.optics

import kotlin.math.PI
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.pow

/** Physical lengths are metres. The reference pupil specifies a fixed phase plate, not a PSF. */
data class OpticalLensProfile(
    val id: String,
    val focalLengthMeters: Double,
    val sensorLongEdgeMeters: Double,
    val referenceFNumber: Double,
    val referenceSphericalOpdMeters: Double,
    val nominalFocusMeters: Double,
    val sphericalOrder: Int = 4,
) {
    init {
        require(id.isNotBlank())
        require(focalLengthMeters.isFinite() && focalLengthMeters > 0.0)
        require(sensorLongEdgeMeters.isFinite() && sensorLongEdgeMeters > 0.0)
        require(referenceFNumber.isFinite() && referenceFNumber > 0.0)
        require(referenceSphericalOpdMeters.isFinite())
        require(nominalFocusMeters.isFinite() && nominalFocusMeters > focalLengthMeters)
        require(sphericalOrder in 4..8 && sphericalOrder % 2 == 0)
    }

    val referencePupilRadiusMeters get() = focalLengthMeters / (2.0 * referenceFNumber)
    val sphericalCoefficient get() = referenceSphericalOpdMeters / referencePupilRadiusMeters.pow(sphericalOrder)

    fun atAperture(fNumber: Double, imageLongEdge: Int): OpticalLensState {
        require(fNumber.isFinite() && fNumber > 0.0)
        require(imageLongEdge > 0)
        val pupil = focalLengthMeters / (2.0 * fNumber)
        val spherical = sphericalCoefficient * pupil.pow(sphericalOrder)
        // Focus is defined by minimum geometrical RMS ray radius. Minimizing
        // integral_0^1 (A*rho+B*rho^(n-1))^2 2*rho d(rho) gives A=-4B/(n+2).
        // The focus adjustment is a quadratic phase term in this thin optical system.
        val focusOpd = -2.0 * sphericalOrder * spherical / (sphericalOrder + 2.0)
        val imageDistance = 1.0 / (1.0 / focalLengthMeters - 1.0 / nominalFocusMeters)
        return OpticalLensState(
            profile = this,
            fNumber = fNumber,
            pupilRadiusMeters = pupil,
            imageDistanceMeters = imageDistance,
            pixelPitchMeters = sensorLongEdgeMeters / imageLongEdge,
            sphericalOpdMeters = spherical,
            focusOpdMeters = focusOpd,
        )
    }

    companion object {
        /** A declared virtual optical system; not a recovered prescription of the reference photograph. */
        val SOAP_BUBBLE = OpticalLensProfile(
            id = "phase-plate-135mm-order4-balanced",
            focalLengthMeters = 0.135,
            sensorLongEdgeMeters = 0.036,
            referenceFNumber = 1.8,
            referenceSphericalOpdMeters = 5.6915283203125e-6,
            nominalFocusMeters = 2.0,
            sphericalOrder = 4,
        )

        /** Telephoto pupil used only to transport separated compact-source radiance.
         * The diffuse layer keeps SOAP_BUBBLE. This is a computational two-path
         * exposure, not a brightness-dependent property of a single real lens.
         */
        val SOAP_BUBBLE_EMITTER = SOAP_BUBBLE.copy(
            id = "phase-plate-200mm-emitter",
            focalLengthMeters = 0.200,
            referenceSphericalOpdMeters = 22.76611328125e-6,
        )
    }
}

data class OpticalLensState(
    val profile: OpticalLensProfile,
    val fNumber: Double,
    val pupilRadiusMeters: Double,
    val imageDistanceMeters: Double,
    val pixelPitchMeters: Double,
    val sphericalOpdMeters: Double,
    val focusOpdMeters: Double,
) {
    val defocusPixelsPerDiopter = pupilRadiusMeters * imageDistanceMeters / pixelPitchMeters
    val focusRayPixels = 2.0 * imageDistanceMeters * focusOpdMeters / (pupilRadiusMeters * pixelPitchMeters)
    val sphericalRayPixels = profile.sphericalOrder * imageDistanceMeters * sphericalOpdMeters / (pupilRadiusMeters * pixelPitchMeters)

    fun defocusOpdMeters(inverseDepthDifference: Double) =
        0.5 * pupilRadiusMeters * pupilRadiusMeters * inverseDepthDifference + focusOpdMeters

    fun opticalPathMeters(rho: Double, inverseDepthDifference: Double): Double {
        val rho2 = rho * rho
        return defocusOpdMeters(inverseDepthDifference) * rho2 + sphericalOpdMeters * rho.pow(profile.sphericalOrder)
    }

    fun signedRayRadiusPixels(rho: Double, inverseDepthDifference: Double) =
        (defocusPixelsPerDiopter * inverseDepthDifference + focusRayPixels) * rho +
            sphericalRayPixels * rho.pow(profile.sphericalOrder - 1)

    fun supportRadiusPixels(inverseDepthDifference: Double): Double {
        val a = defocusPixelsPerDiopter * inverseDepthDifference + focusRayPixels
        val b = sphericalRayPixels
        var radius = abs(a + b)
        if (b != 0.0) {
            val criticalPower = -a / ((profile.sphericalOrder - 1) * b)
            if (criticalPower > 0.0 && criticalPower < 1.0) {
                val rho = criticalPower.pow(1.0 / (profile.sphericalOrder - 2))
                radius = max(radius, abs(signedRayRadiusPixels(rho, inverseDepthDifference)))
            }
        }
        return radius
    }

    fun phaseRadians(rho: Double, inverseDepthDifference: Double, wavelengthMeters: Double) =
        2.0 * PI * opticalPathMeters(rho, inverseDepthDifference) / wavelengthMeters
}
