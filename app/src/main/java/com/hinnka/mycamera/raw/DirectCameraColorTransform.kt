package com.hinnka.mycamera.raw

/**
 * Linear working-space bridge for RAWs without usable embedded source calibration.
 *
 * Such RAWs are interpreted directly in the selected engine's target-camera RGB domain.
 * The target DCP defines a linear ProPhoto representation for shared metering and PGTM;
 * its inverse restores WB camera RGB before the engine's native colour transform. This
 * is a change of coordinates, not an equivalent-camera LUT or an Adobe profile render.
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
                    profile, whiteXy, ColorSpace.ProPhoto,
                ),
            ) { "Direct camera rendering requires a valid target-camera working-space transform" }
            val proPhotoToCamera = requireNotNull(DngSdkColorSpec.invertMatrix3x3(cameraToProPhoto)) {
                "Direct camera rendering requires an invertible target-camera working-space transform"
            }
            return DirectCameraColorTransform(cameraToProPhoto, proPhotoToCamera)
        }
    }
}
