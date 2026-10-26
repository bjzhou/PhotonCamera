package com.hinnka.mycamera.raw

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.params.ColorSpaceTransform
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.roundToInt

/**
 * A source calibration decision shared by capture, manual WB, DNG serialization and
 * DNG reading. The selected set is always a complete DNG calibration (ColorMatrix1
 * present), so in-app rendering and third-party readers see the same matrices:
 * 1. Usable ForwardMatrix set → source calibration as is. ColorMatrix then only
 *    locates the scene white, so an sRGB placeholder ColorMatrix is kept.
 * 2. Otherwise ForwardMatrix is dropped; usable ColorMatrix → ColorMatrix only.
 * 3. Otherwise the fixed DNG calibration replaces the source.
 */
internal object RawColorCalibrationPolicy {
    data class CameraCalibration(
        val colorMatrix1: ColorSpaceTransform?,
        val colorMatrix2: ColorSpaceTransform?,
        val forwardMatrix1: ColorSpaceTransform?,
        val forwardMatrix2: ColorSpaceTransform?,
        val illuminant1: Int,
        val illuminant2: Int,
        val calibration1: ColorSpaceTransform?,
        val calibration2: ColorSpaceTransform?,
    ) {
        fun toRawCalibration(): RawCameraCalibration = RawCameraCalibration(
            colorMatrix1 = colorMatrix1?.toMatrix(), colorMatrix2 = colorMatrix2?.toMatrix(),
            calibrationIlluminant1 = illuminant1, calibrationIlluminant2 = illuminant2,
            forwardMatrix1 = forwardMatrix1?.toMatrix(), forwardMatrix2 = forwardMatrix2?.toMatrix(),
            cameraCalibration1 = calibration1?.toMatrix(), cameraCalibration2 = calibration2?.toMatrix(),
        )
    }

    private data class Selection(val useForward: Boolean, val keepSlot2: Boolean)

    /** ForwardMatrices must already have passed original-payload placeholder rejection. */
    private fun select(
        colorMatrix1: FloatArray?, colorMatrix2: FloatArray?,
        illuminant1: Int, illuminant2: Int,
        forwardMatrix1: FloatArray?, forwardMatrix2: FloatArray?,
    ): Selection? {
        val forwardUsable = isUsableForwardMatrix(forwardMatrix1) &&
            (forwardMatrix2 == null || isUsableForwardMatrix(forwardMatrix2))
        if (forwardUsable && isUsableMatrix(colorMatrix1)) {
            return Selection(useForward = true, keepSlot2 = isUsableMatrix(colorMatrix2))
        }
        if (forwardMatrix1 != null || forwardMatrix2 != null) {
            PLog.w(TAG, "Ignoring unusable ForwardMatrix set; using ColorMatrix only")
        }
        if (!isUsableColorMatrix(colorMatrix1, illuminant1)) return null
        return Selection(useForward = false, keepSlot2 = isUsableColorMatrix(colorMatrix2, illuminant2))
    }

    fun fromCharacteristics(characteristics: CameraCharacteristics): CameraCalibration {
        val illuminant1 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT1) ?: 0
        val illuminant2 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT2)?.toInt() ?: 0
        val cm1 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM1)
        val cm2 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM2)
        val (fm1, fm2) = ForwardMatrixPolicy.fromCharacteristics(characteristics)
        val selection = select(
            cm1?.toMatrix(), cm2?.toMatrix(), illuminant1, illuminant2, fm1?.toMatrix(), fm2?.toMatrix(),
        )
        if (selection == null) {
            PLog.w(TAG, "No usable source matrices; using fixed DNG calibration")
            return CameraCalibration(
                FixedRawCalibration.colorMatrix1().toTransform(), FixedRawCalibration.colorMatrix2().toTransform(),
                null, null,
                FixedRawCalibration.ILLUMINANT1, FixedRawCalibration.ILLUMINANT2,
                FixedRawCalibration.cameraCalibration1().toTransform(), FixedRawCalibration.cameraCalibration2().toTransform(),
            )
        }
        val keep2 = selection.keepSlot2
        return CameraCalibration(
            colorMatrix1 = cm1,
            colorMatrix2 = cm2.takeIf { keep2 },
            forwardMatrix1 = fm1.takeIf { selection.useForward },
            forwardMatrix2 = fm2.takeIf { selection.useForward && keep2 },
            illuminant1 = illuminant1,
            illuminant2 = if (keep2) illuminant2 else 0,
            calibration1 = characteristics.get(CameraCharacteristics.SENSOR_CALIBRATION_TRANSFORM1),
            calibration2 = characteristics.get(CameraCharacteristics.SENSOR_CALIBRATION_TRANSFORM2)
                .takeIf { keep2 },
        )
    }

    /** Call after original-payload ForwardMatrix rejection, while retaining illuminant slots. */
    fun resolveProfile(profile: DcpProfile): DcpProfile {
        val selection = select(
            profile.colorMatrix1, profile.colorMatrix2,
            profile.calibrationIlluminant1, profile.calibrationIlluminant2,
            profile.forwardMatrix1, profile.forwardMatrix2,
        )
        if (selection != null) {
            val keep2 = selection.keepSlot2
            return profile.copy(
                colorMatrix2 = profile.colorMatrix2.takeIf { keep2 },
                forwardMatrix1 = profile.forwardMatrix1.takeIf { selection.useForward },
                forwardMatrix2 = profile.forwardMatrix2.takeIf { selection.useForward && keep2 },
                calibrationIlluminant2 = if (keep2) profile.calibrationIlluminant2 else 0,
                cameraCalibration2 = profile.cameraCalibration2.takeIf { keep2 },
                hueSatDeltas2 = profile.hueSatDeltas2.takeIf { keep2 },
            )
        }
        PLog.w(TAG, "No usable embedded matrices; using fixed DNG calibration")
        return profile.copy(
            colorMatrix1 = FixedRawCalibration.colorMatrix1(), colorMatrix2 = FixedRawCalibration.colorMatrix2(),
            forwardMatrix1 = null, forwardMatrix2 = null,
            calibrationIlluminant1 = FixedRawCalibration.ILLUMINANT1,
            calibrationIlluminant2 = FixedRawCalibration.ILLUMINANT2,
            analogBalance = null,
            cameraCalibration1 = FixedRawCalibration.cameraCalibration1(),
            cameraCalibration2 = FixedRawCalibration.cameraCalibration2(),
            // Tables tied to the rejected source calibration do not belong to this
            // replacement, which uses only the selected DNG's fixed calibration.
            hueSatDeltas1 = null, hueSatDeltas2 = null, lookTable = null,
        )
    }

    fun isUsableColorMatrix(matrix: FloatArray?, illuminant: Int): Boolean {
        if (!isUsableMatrix(matrix)) return false
        if (SrgbColorMatrixPolicy.isPlaceholder(requireNotNull(matrix), illuminant)) {
            PLog.w(TAG, "Ignoring sRGB placeholder ColorMatrix, illuminant=$illuminant")
            return false
        }
        return true
    }

    // Structural check only; ColorMatrix-only selection also rejects placeholders.
    fun isUsableMatrix(matrix: FloatArray?): Boolean {
        if (matrix == null || matrix.size != 9 || matrix.any { !it.isFinite() }) return false
        if (matrix.sumOf { abs(it).toDouble() } <= 0.01) return false
        val scale = matrix.maxOf { abs(it).toDouble() }
        val m = DoubleArray(9) { matrix[it] / scale }
        val det = m[0] * (m[4] * m[8] - m[5] * m[7]) -
            m[1] * (m[3] * m[8] - m[5] * m[6]) + m[2] * (m[3] * m[7] - m[4] * m[6])
        return abs(det) > 1e-6
    }

    fun isUsableForwardMatrix(matrix: FloatArray?): Boolean {
        if (!isUsableMatrix(matrix)) return false
        val m = requireNotNull(matrix)
        val scale = m.maxOf { abs(it).toDouble() }
        return (0..2).all { row ->
            (m[row * 3].toDouble() + m[row * 3 + 1] + m[row * 3 + 2]) / scale > 1e-6
        }
    }

    private const val TAG = "RawColorCalibrationPolicy"

    private fun ColorSpaceTransform.toMatrix(): FloatArray = FloatArray(9) {
        getElement(it % 3, it / 3).toFloat()
    }

    private fun FloatArray.toTransform(): ColorSpaceTransform = ColorSpaceTransform(IntArray(18) {
        if (it % 2 == 0) (this[it / 2].toDouble() * 100_000_000).roundToInt() else 100_000_000
    })
}
