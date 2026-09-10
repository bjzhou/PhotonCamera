package com.hinnka.mycamera.raw

/** Recovers source white-balanced sensor RGB from the shared linear profile prepass. */
internal object EquivalentCameraCalibration {
    fun profileToCameraTransform(metadata: RawMetadata, sourceCameraToProfile: FloatArray): FloatArray {
        val inverse = requireNotNull(DngSdkColorSpec.invertMatrix3x3(sourceCameraToProfile)) {
            "Equivalent camera rendering requires an invertible source camera matrix"
        }
        val white = metadata.cameraWhite
        require(white.size == 3 && white.all { it.isFinite() && it > 0f }) {
            "Equivalent camera rendering requires a valid source camera white"
        }
        for (row in 0..2) for (column in 0..2) inverse[row * 3 + column] /= white[row]
        return inverse
    }
}
