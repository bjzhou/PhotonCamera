package com.hinnka.mycamera.raw

import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs

/** Value equality lets the preview flow resolve a plan only when color metadata changes. */
data class DcpPreviewSource(
    val cameraId: String,
    val calibration: RawCameraCalibration,
    val whiteBalanceGains: List<Float>,
    /** Camera2 WB-camera -> linear sRGB, only authoritative in TRANSFORM_MATRIX mode. */
    val camera2Transform: List<Float>?,
)

/** CPU color solution; GL handles belong exclusively to the preview renderer. */
data class DcpPreviewPlan(
    val profile: DcpRenderPlan,
    val srgbToCamera: FloatArray,
    val exposure: RawProfileExposureGl.Uniforms,
) {
    companion object {
        fun resolve(
            source: DcpPreviewSource,
            profile: DcpProfile,
            exposureEv: Float,
            toneMapMode: RawProfileToneMapMode,
        ): DcpPreviewPlan? {
            val gains = source.whiteBalanceGains.toFloatArray()
            if (gains.size != 4 || gains.any { !it.isFinite() || it <= 0f }) return null
            val sourceProfile = source.calibration.toDcpProfile()
            val metadata = RawMetadata(
                width = 1, height = 1, cfaPattern = 0,
                blackLevel = FloatArray(4), whiteLevel = 1f,
                whiteBalanceGains = gains,
                colorCorrectionMatrix = FloatArray(9),
            )
            val sourceWhite = DngSdkColorSpec.computeCameraWhite(sourceProfile, metadata) ?: return null
            // The DNG matrix consumes unbalanced camera RGB. Camera2's reported CCM
            // consumes WB RGB, so factor that normalization into the source matrix first.
            val sourceToSrgb = source.camera2Transform?.toFloatArray()?.also { matrix ->
                for (row in 0..2) for (column in 0..2) {
                    matrix[row * 3 + column] /= sourceWhite[column]
                }
            } ?: DngSdkColorSpec.computeCameraToWorkingMatrix(sourceProfile, metadata, ColorSpace.SRGB)
                ?: return null
            val inverse = invert(sourceToSrgb) ?: run {
                PLog.w("DcpPreview", "Non-invertible source CCM: camera=${source.cameraId}")
                return null
            }
            val sourceToProPhoto = DngSdkColorSpec.computeCameraToWorkingMatrix(
                sourceProfile, metadata, ColorSpace.ProPhoto,
            ) ?: return null
            val resolved = DcpProfileParser.resolveRenderPlan(
                profile,
                metadata.copy(colorCorrectionMatrix = sourceToProPhoto, cameraWhite = sourceWhite),
                ColorSpace.ProPhoto,
            ) ?: return null
            val plan = when (toneMapMode) {
                RawProfileToneMapMode.Default -> resolved.copy(toneCurveLut = null)
                RawProfileToneMapMode.OppoMaster -> resolved.copy(
                    toneCurveLut = DngProfileToneCurve.oppoEmbeddedToneCurveLut(),
                )
                RawProfileToneMapMode.Profile -> resolved
            }
            return DcpPreviewPlan(
                profile = plan,
                srgbToCamera = RawToneMappingGl.transposeMatrix3x3(inverse),
                // ISP exposure is already present; only the selected DCP and explicit
                // render adjustment belong here, never sensor baseline/post-RAW gain.
                exposure = RawProfileExposureGl.compute(
                    profileExposureCompensation = exposureEv,
                    dcpBaselineExposureOffset = plan.baselineExposureOffset,
                    defaultBlackRender = plan.defaultBlackRender,
                    supportOverrange = plan.supportsOverrange,
                    useRamp = true,
                ),
            )
        }

        private fun invert(m: FloatArray): FloatArray? {
            if (m.size != 9 || m.any { !it.isFinite() }) return null
            val d = m[0] * (m[4] * m[8] - m[5] * m[7]) -
                m[1] * (m[3] * m[8] - m[5] * m[6]) +
                m[2] * (m[3] * m[7] - m[4] * m[6])
            if (!d.isFinite() || abs(d) < 1e-8f) return null
            return floatArrayOf(
                m[4] * m[8] - m[5] * m[7], m[2] * m[7] - m[1] * m[8], m[1] * m[5] - m[2] * m[4],
                m[5] * m[6] - m[3] * m[8], m[0] * m[8] - m[2] * m[6], m[2] * m[3] - m[0] * m[5],
                m[3] * m[7] - m[4] * m[6], m[1] * m[6] - m[0] * m[7], m[0] * m[4] - m[1] * m[3],
            ).map { it / d }.toFloatArray().takeIf { it.all(Float::isFinite) }
        }
    }
}
