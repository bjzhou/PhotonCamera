package com.hinnka.mycamera.raw

/**
 * Linear transform between white-balanced target-camera RGB and shared ProPhoto.
 *
 * Calibrated sources use the inverse after their own camera-to-ProPhoto prepass.
 * RAWs without source calibration use both directions as a reversible bridge for
 * shared metering and PGTM. The target uses only ColorMatrix, with scene-white
 * interpolation and D50 adaptation; no ForwardMatrix or DCP rendering tables.
 */
internal class DirectCameraColorTransform private constructor(
    val whiteBalancedCameraToProPhoto: FloatArray,
    val proPhotoToWhiteBalancedCamera: FloatArray,
) {
    /** Native supplies sensor RGB -> WB camera RGB, with no LibRaw colour matrix. */
    fun sensorToProPhoto(sensorToWhiteBalancedCamera: FloatArray): FloatArray =
        DngSdkColorSpec.multiplyMatrix3x3(
            whiteBalancedCameraToProPhoto, sensorToWhiteBalancedCamera,
        )

    companion object {
        fun fromProfile(profile: DcpProfile, whiteXy: FloatArray): DirectCameraColorTransform {
            val cameraToProPhoto = requireNotNull(
                DngSdkColorSpec.computeWhiteBalancedCameraToWorkingMatrix(
                    EquivalentCameraCalibration.colorMatrixProfile(profile), whiteXy, ColorSpace.ProPhoto,
                ),
            ) { "Direct camera rendering requires a valid target-camera working-space transform" }
            val proPhotoToCamera = requireNotNull(DngSdkColorSpec.invertMatrix3x3(cameraToProPhoto)) {
                "Direct camera rendering requires an invertible target-camera working-space transform"
            }
            return DirectCameraColorTransform(cameraToProPhoto, proPhotoToCamera)
        }
    }
}
