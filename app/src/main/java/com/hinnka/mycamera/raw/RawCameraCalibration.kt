package com.hinnka.mycamera.raw

import androidx.annotation.Keep

/**
 * Fixed, physical-camera color calibration used for lens/profile selection.
 *
 * The ColorMatrix fields retain DNG semantics: they map XYZ (under the
 * corresponding reference illuminant) to camera RGB. They are deliberately
 * separate from [RawMetadata.colorCorrectionMatrix], which is a per-frame
 * render matrix and may include the current white balance and working space.
 * A camera id is not part of this identity. For lens caches, the values of
 * these fixed matrices (and the optional calibration matrices) are sufficient
 * to identify the physical camera even when Camera2 does not expose a stable
 * id for it.
 */
@Keep
class RawCameraCalibration(
    colorMatrix1: FloatArray?,
    colorMatrix2: FloatArray?,
    val calibrationIlluminant1: Int = 0,
    val calibrationIlluminant2: Int = 0,
    analogBalance: FloatArray? = null,
    cameraCalibration1: FloatArray? = null,
    cameraCalibration2: FloatArray? = null,
) {
    /** DNG ColorMatrix1, with XYZ as input and camera RGB as output. */
    val colorMatrix1: FloatArray? = colorMatrix1?.copyAndValidate("colorMatrix1")

    /** DNG ColorMatrix2, with XYZ as input and camera RGB as output. */
    val colorMatrix2: FloatArray? = colorMatrix2?.copyAndValidate("colorMatrix2")

    /** DNG AnalogBalance, if the source profile supplied it. */
    val analogBalance: FloatArray? = analogBalance?.copyAndValidate("analogBalance", 3)

    /** DNG CameraCalibration1, if the source profile supplied it. */
    val cameraCalibration1: FloatArray? =
        cameraCalibration1?.copyAndValidate("cameraCalibration1")

    /** DNG CameraCalibration2, if the source profile supplied it. */
    val cameraCalibration2: FloatArray? =
        cameraCalibration2?.copyAndValidate("cameraCalibration2")

    init {
        require(colorMatrix1 != null || colorMatrix2 != null) {
            "Raw camera calibration requires at least one ColorMatrix"
        }
    }

    /**
     * Converts this fixed calibration to a matrix-only DCP profile.
     *
     * ForwardMatrix, HueSatMap, LookTable, and ToneCurve are intentionally
     * absent. In particular, a ForwardMatrix is never substituted for a
     * ColorMatrix because this object is the fixed XYZ-to-camera source used
     * to bake the lens LUTs.
     */
    fun toDcpProfile(profileName: String = "Raw camera calibration"): DcpProfile {
        return DcpProfile(
            profileName = profileName,
            calibrationIlluminant1 = calibrationIlluminant1,
            calibrationIlluminant2 = calibrationIlluminant2,
            baselineExposureOffset = 0f,
            defaultBlackRender = DcpDefaultBlackRender.Auto,
            supportsOverrange = false,
            colorMatrix1 = colorMatrix1?.copyOf(),
            colorMatrix2 = colorMatrix2?.copyOf(),
            forwardMatrix1 = null,
            forwardMatrix2 = null,
            hueSatDeltas1 = null,
            hueSatDeltas2 = null,
            lookTable = null,
            toneCurve = null,
            analogBalance = analogBalance?.copyOf(),
            cameraCalibration1 = cameraCalibration1?.copyOf(),
            cameraCalibration2 = cameraCalibration2?.copyOf(),
        )
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is RawCameraCalibration) return false
        return calibrationIlluminant1 == other.calibrationIlluminant1 &&
            calibrationIlluminant2 == other.calibrationIlluminant2 &&
            colorMatrix1.contentEqualsNullable(other.colorMatrix1) &&
            colorMatrix2.contentEqualsNullable(other.colorMatrix2) &&
            analogBalance.contentEqualsNullable(other.analogBalance) &&
            cameraCalibration1.contentEqualsNullable(other.cameraCalibration1) &&
            cameraCalibration2.contentEqualsNullable(other.cameraCalibration2)
    }

    override fun hashCode(): Int {
        var result = calibrationIlluminant1
        result = 31 * result + calibrationIlluminant2
        result = 31 * result + (colorMatrix1?.contentHashCode() ?: 0)
        result = 31 * result + (colorMatrix2?.contentHashCode() ?: 0)
        result = 31 * result + (analogBalance?.contentHashCode() ?: 0)
        result = 31 * result + (cameraCalibration1?.contentHashCode() ?: 0)
        result = 31 * result + (cameraCalibration2?.contentHashCode() ?: 0)
        return result
    }

    override fun toString(): String {
        return "RawCameraCalibration(" +
            "illuminant1=$calibrationIlluminant1, " +
            "illuminant2=$calibrationIlluminant2, " +
            "colorMatrix1=${colorMatrix1?.contentToString()}, " +
            "colorMatrix2=${colorMatrix2?.contentToString()})"
    }

    companion object {
        /**
         * Imports only the fixed DNG calibration fields from [profile].
         * Profiles containing only ForwardMatrix data are intentionally
         * rejected because ForwardMatrix has the opposite direction.
         */
        fun fromProfile(profile: DcpProfile): RawCameraCalibration? {
            if (profile.colorMatrix1 == null && profile.colorMatrix2 == null) return null
            return RawCameraCalibration(
                colorMatrix1 = profile.colorMatrix1,
                colorMatrix2 = profile.colorMatrix2,
                calibrationIlluminant1 = profile.calibrationIlluminant1,
                calibrationIlluminant2 = profile.calibrationIlluminant2,
                analogBalance = profile.analogBalance,
                cameraCalibration1 = profile.cameraCalibration1,
                cameraCalibration2 = profile.cameraCalibration2,
            )
        }

        /** Builds fixed calibration from Camera2 static characteristics. */
        fun fromCameraCharacteristics(
            colorMatrix1: FloatArray?,
            colorMatrix2: FloatArray?,
            calibrationIlluminant1: Int,
            calibrationIlluminant2: Int,
        ): RawCameraCalibration? {
            if (colorMatrix1 == null && colorMatrix2 == null) return null
            return RawCameraCalibration(
                colorMatrix1 = colorMatrix1,
                colorMatrix2 = colorMatrix2,
                calibrationIlluminant1 = calibrationIlluminant1,
                calibrationIlluminant2 = calibrationIlluminant2,
            )
        }
    }

    private fun FloatArray.copyAndValidate(name: String, expectedSize: Int = 9): FloatArray {
        require(size == expectedSize) { "$name must contain $expectedSize values" }
        require(all(Float::isFinite)) { "$name must contain finite values" }
        return copyOf()
    }

    private fun FloatArray?.contentEqualsNullable(other: FloatArray?): Boolean {
        return when {
            this == null -> other == null
            other == null -> false
            else -> contentEquals(other)
        }
    }
}
