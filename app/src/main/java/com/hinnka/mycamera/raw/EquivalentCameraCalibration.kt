package com.hinnka.mycamera.raw

import android.content.Context
import org.json.JSONObject

/** Fixed target sensor calibration; DCP rendering tables never enter this transform. */
internal class EquivalentCameraCalibration(private val target: EquivalentCameraTarget) {
    @Volatile private var bundledProfile: DcpProfile? = null

    private fun targetProfile(context: Context): DcpProfile = bundledProfile ?: synchronized(this) {
        bundledProfile ?: when (target) {
            EquivalentCameraTarget.LumixS9 -> {
                val info = requireNotNull(DcpManager(context).getAvailableDcps().firstOrNull {
                    it.isBuiltIn && it.filePath == target.assetPath
                }) { "Bundled S9 calibration is unavailable" }
                colorMatrixProfile(requireNotNull(DcpProfileParser.resolveProfile(context, info)) {
                    "Unable to parse S9 calibration"
                })
            }
            EquivalentCameraTarget.HasselbladX2DII100C -> {
                val json = context.assets.open(target.assetPath).bufferedReader().use {
                    JSONObject(it.readText())
                }
                require(json.getInt("schemaVersion") == 1) { "Unsupported HNCS calibration format" }
                fun matrix(name: String): FloatArray? {
                    if (json.isNull(name)) return null
                    val values = json.getJSONArray(name)
                    require(values.length() == 9) { "HNCS $name must contain nine values" }
                    return FloatArray(9) { values.getDouble(it).toFloat() }
                }
                // Preserve original matrix slots and absent illuminants. A single
                // ColorMatrix is constant across temperatures; white adaptation is not.
                RawCameraCalibration(
                    colorMatrix1 = matrix("colorMatrix1"),
                    colorMatrix2 = matrix("colorMatrix2"),
                    calibrationIlluminant1 = if (json.isNull("calibrationIlluminant1")) 0
                        else json.getInt("calibrationIlluminant1"),
                    calibrationIlluminant2 = if (json.isNull("calibrationIlluminant2")) 0
                        else json.getInt("calibrationIlluminant2"),
                ).toDcpProfile(json.getString("cameraModel"))
            }
        }.also { bundledProfile = it }
    }

    /** An uncalibrated imported RAW is interpreted directly in the target sensor domain. */
    fun directCameraWhiteXy(context: Context, metadata: RawMetadata): FloatArray =
        requireNotNull(DngSdkColorSpec.whiteXyForProfile(targetProfile(context), metadata)) {
            "Unable to resolve target camera white from RAW white balance"
        }

    /** Interpolate ColorMatrix at this photo's white, then invert the linear transform. */
    fun colorTransform(context: Context, whiteXy: FloatArray): DirectCameraColorTransform =
        DirectCameraColorTransform.fromProfile(targetProfile(context), whiteXy)

    companion object {
        /** The same neutral-normalized WB used by native's direct camera path. */
        internal fun whiteBalanceTransform(metadata: RawMetadata): FloatArray {
            val white = metadata.cameraWhite
            require(white.size == 3 && white.all { it.isFinite() && it > 0f }) {
                "Direct camera rendering requires a valid camera white"
            }
            return floatArrayOf(
                1f / white[0], 0f, 0f,
                0f, 1f / white[1], 0f,
                0f, 0f, 1f / white[2],
            )
        }

        /** Use the physical source calibration, retaining FM only for FM-only RAWs. */
        internal fun sourceToProPhoto(metadata: RawMetadata): FloatArray {
            val calibration = requireNotNull(metadata.cameraCalibration) {
                "Equivalent camera rendering requires source calibration"
            }
            val profile = calibration.toDcpProfile().let {
                if (calibration.isForwardOnly) it
                else it.copy(forwardMatrix1 = null, forwardMatrix2 = null)
            }
            return requireNotNull(DngSdkColorSpec.computeCameraToWorkingMatrix(
                profile, metadata, ColorSpace.ProPhoto,
            )) { "Unable to map source calibration to linear ProPhoto" }
        }

        internal fun colorMatrixProfile(profile: DcpProfile): DcpProfile {
            require(profile.colorMatrix1 != null || profile.colorMatrix2 != null) {
                "Target camera calibration requires ColorMatrix"
            }
            // ForwardMatrix takes precedence in the DNG color model unless removed.
            // Keep only XYZ -> reference sensor ColorMatrix and its reference illuminants.
            return RawCameraCalibration(
                colorMatrix1 = profile.colorMatrix1,
                colorMatrix2 = profile.colorMatrix2,
                calibrationIlluminant1 = profile.calibrationIlluminant1,
                calibrationIlluminant2 = profile.calibrationIlluminant2,
            ).toDcpProfile(profile.profileName)
        }
    }
}

internal enum class EquivalentCameraTarget(val assetPath: String) {
    LumixS9("dcp/Panasonic DC-S9 Adobe Standard.dcp"),
    HasselbladX2DII100C("hncs/x2d_ii_100c_calibration.json");

    val calibration by lazy { EquivalentCameraCalibration(this) }
}
