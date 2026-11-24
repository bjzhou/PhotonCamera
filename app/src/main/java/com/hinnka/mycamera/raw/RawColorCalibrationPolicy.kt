package com.hinnka.mycamera.raw

import android.hardware.camera2.CameraCharacteristics
import android.hardware.camera2.CaptureRequest
import android.hardware.camera2.CaptureResult
import android.hardware.camera2.params.ColorSpaceTransform
import android.os.Build
import com.hinnka.mycamera.camera.associatedMetadataCameraId
import com.hinnka.mycamera.camera.readMetadataOrNull
import com.hinnka.mycamera.utils.PLog
import java.util.Collections
import java.util.WeakHashMap
import kotlin.math.abs
import kotlin.math.roundToInt

/**
 * A source calibration decision shared by capture, manual WB, DNG serialization and
 * DNG reading. The selected set is always a complete DNG calibration (ColorMatrix1
 * present), so in-app rendering and third-party readers see the same matrices:
 * 1. Usable ForwardMatrix set → source calibration as is. ColorMatrix then only
 *    locates the scene white, so an sRGB placeholder ColorMatrix is kept.
 * 2. Otherwise ForwardMatrix is dropped and the source ColorMatrix is used alone.
 *    An sRGB placeholder is kept as well: another sensor's calibration is not a
 *    better guess, and its larger gains turn the CFA mismatch into hue shifts.
 *    A placeholder second slot is dropped only when the first slot is a real one.
 * 3. Otherwise (no structurally usable ColorMatrix1) a D65 sRGB ColorMatrix, i.e.
 *    white-balanced camera RGB rendered as linear sRGB.
 * For a Camera2 capture without a usable ForwardMatrix, AUTO can derive a
 * per-shot calibration from the ISP transform before taking steps 2 and 3.
 * That is [RawColorCalibrationMode.AUTO]. DNG_DEFAULT keeps the same order with
 * structural checks only (no placeholder detection), and BUILT_IN replaces every
 * source calibration with [FixedRawCalibration].
 */
internal object RawColorCalibrationPolicy {
    enum class Source { CAMERA_FORWARD_MATRIX, ISP_CCM, CAMERA_COLOR_MATRIX, SRGB_FALLBACK, BUILT_IN }

    enum class ForwardStatus { USABLE, PLACEHOLDER, MISSING, MISSING_FIRST, UNUSABLE, NOT_CHECKED }

    data class CameraCalibration(
        val colorMatrix1: ColorSpaceTransform?,
        val colorMatrix2: ColorSpaceTransform?,
        val forwardMatrix1: ColorSpaceTransform?,
        val forwardMatrix2: ColorSpaceTransform?,
        val illuminant1: Int,
        val illuminant2: Int,
        val calibration1: ColorSpaceTransform?,
        val calibration2: ColorSpaceTransform?,
        val source: Source,
        val cameraForwardStatus: ForwardStatus,
        /** The gain-derived white point paired with an ISP-derived calibration. */
        val asShotNeutral: FloatArray? = null,
    ) {
        fun toRawCalibration(): RawCameraCalibration = RawCameraCalibration(
            colorMatrix1 = colorMatrix1?.toMatrix(), colorMatrix2 = colorMatrix2?.toMatrix(),
            calibrationIlluminant1 = illuminant1, calibrationIlluminant2 = illuminant2,
            forwardMatrix1 = forwardMatrix1?.toMatrix(), forwardMatrix2 = forwardMatrix2?.toMatrix(),
            cameraCalibration1 = calibration1?.toMatrix(), cameraCalibration2 = calibration2?.toMatrix(),
        )
    }

    internal data class Selection(
        val useForward: Boolean,
        val keepSlot2: Boolean,
        val droppedForward: Boolean = false,
        val placeholderColor: Boolean = false,
    )

    /** XYZ(D65) -> linear sRGB, so a D65 white maps to camera (1, 1, 1). */
    internal val SRGB_D65_COLOR_MATRIX = floatArrayOf(
        3.2404542f, -1.5371385f, -0.4985314f,
        -0.9692660f, 1.8760108f, 0.0415560f,
        0.0556434f, -0.2040259f, 1.0572252f,
    )
    private const val ILLUMINANT_D65 = 21

    /** Set from user preferences; read by capture, DNG writing and DNG reading. */
    @Volatile
    var mode: RawColorCalibrationMode = RawColorCalibrationMode.DEFAULT

    /**
     * Source selection for [RawColorCalibrationMode.AUTO] and DNG_DEFAULT; BUILT_IN never
     * selects. In AUTO, ForwardMatrices must already have passed original-payload
     * placeholder rejection. Pure, so callers log; null means no structurally usable
     * ColorMatrix1.
     */
    internal fun select(
        colorMatrix1: FloatArray?, colorMatrix2: FloatArray?,
        illuminant1: Int, illuminant2: Int,
        forwardMatrix1: FloatArray?, forwardMatrix2: FloatArray?,
        mode: RawColorCalibrationMode = RawColorCalibrationMode.AUTO,
    ): Selection? {
        val detect = mode == RawColorCalibrationMode.AUTO
        val usableForward: (FloatArray?) -> Boolean =
            if (detect) ::isUsableForwardMatrix else ::isUsableMatrix
        val forwardUsable = usableForward(forwardMatrix1) &&
            (forwardMatrix2 == null || usableForward(forwardMatrix2))
        if (forwardUsable && isUsableMatrix(colorMatrix1)) {
            return Selection(useForward = true, keepSlot2 = isUsableMatrix(colorMatrix2))
        }
        if (!isUsableMatrix(colorMatrix1)) return null
        if (!detect) {
            return Selection(
                useForward = false,
                keepSlot2 = isUsableMatrix(colorMatrix2),
                droppedForward = forwardMatrix1 != null || forwardMatrix2 != null,
            )
        }
        val placeholder1 = SrgbColorMatrixPolicy.isPlaceholder(requireNotNull(colorMatrix1), illuminant1)
        val keepSlot2 = isUsableMatrix(colorMatrix2) &&
            (placeholder1 || !SrgbColorMatrixPolicy.isPlaceholder(requireNotNull(colorMatrix2), illuminant2))
        return Selection(
            useForward = false,
            keepSlot2 = keepSlot2,
            droppedForward = forwardMatrix1 != null || forwardMatrix2 != null,
            placeholderColor = placeholder1,
        )
    }

    private fun log(selection: Selection?, source: String) {
        if (selection == null) {
            PLog.w(TAG, "No usable $source ColorMatrix1; using D65 sRGB ColorMatrix")
            return
        }
        if (selection.droppedForward) {
            PLog.w(TAG, "Ignoring unusable $source ForwardMatrix set; using ColorMatrix only")
        }
        if (selection.placeholderColor) {
            PLog.w(TAG, "Keeping $source sRGB placeholder ColorMatrix")
        }
    }

    // CameraCharacteristics is immutable; one capture resolves the same instance many times.
    private val characteristicsCache = Collections.synchronizedMap(
        WeakHashMap<CameraCharacteristics, Pair<RawColorCalibrationMode, CameraCalibration>>()
    )

    fun fromCharacteristics(characteristics: CameraCharacteristics): CameraCalibration =
        fromCharacteristics(characteristics, mode)

    private fun fromCharacteristics(
        characteristics: CameraCharacteristics,
        mode: RawColorCalibrationMode,
    ): CameraCalibration {
        characteristicsCache[characteristics]?.takeIf { it.first == mode }?.let { return it.second }
        return resolveCharacteristics(characteristics, mode).also {
            characteristicsCache[characteristics] = mode to it
        }
    }

    fun fromCapture(
        characteristics: CameraCharacteristics,
        captureResult: CaptureResult,
        logDecision: Boolean = false,
    ): CameraCalibration {
        val mode = mode
        val source = fromCharacteristics(characteristics, mode)
        val cameraId = characteristics.associatedMetadataCameraId()
        val resultCameraId = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S) captureResult.cameraId else null

        fun finish(
            reason: String,
            selected: CameraCalibration = source,
            details: () -> String = { "" },
        ): CameraCalibration {
            if (logDecision) {
                val request = captureResult.request
                val awbMode = request.get(CaptureRequest.CONTROL_AWB_MODE)
                val requestedColorMode = request.get(CaptureRequest.COLOR_CORRECTION_MODE)
                val resultColorMode = captureResult.readMetadataOrNull(CaptureResult.COLOR_CORRECTION_MODE, cameraId)
                PLog.i(
                    TAG,
                    "RAW_COLOR_SOURCE stage=DNG_WRITE frame=${captureResult.frameNumber} " +
                        "camera=$cameraId resultCamera=$resultCameraId mode=$mode source=${selected.source} " +
                        "cameraForward=${source.cameraForwardStatus} reason=$reason awbRequest=$awbMode " +
                        "ccmModeRequest=$requestedColorMode ccmModeResult=$resultColorMode${details()}",
                )
            }
            return selected
        }

        if (mode != RawColorCalibrationMode.AUTO) return finish("MODE_EXCLUDES_ISP")
        if (source.forwardMatrix1 != null) return finish("CAMERA_FORWARD_AVAILABLE")

        if (cameraId != null && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S && resultCameraId != cameraId) {
            val physicalId = captureResult.readMetadataOrNull(CaptureResult.LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID)
            if (physicalId != cameraId) return finish("CAMERA_MISMATCH") { " activePhysical=$physicalId" }
        }

        val request = captureResult.request
        // The app supplies its own CCM for matrix-mode white balance; that result carries no new ISP calibration.
        if (request.get(CaptureRequest.CONTROL_AWB_MODE) == CaptureRequest.CONTROL_AWB_MODE_OFF &&
            request.get(CaptureRequest.COLOR_CORRECTION_MODE) == CaptureRequest.COLOR_CORRECTION_MODE_TRANSFORM_MATRIX &&
            request.get(CaptureRequest.COLOR_CORRECTION_TRANSFORM) != null
        ) return finish("APP_MANUAL_CCM")

        val standardTransform = captureResult.readMetadataOrNull(CaptureResult.COLOR_CORRECTION_TRANSFORM, cameraId)
            ?.toMatrix()
        val tryOplus = OplusIspColorTransform.isSupportedFamily &&
            (standardTransform == null || isIdentityCcm(standardTransform))
        val oplusBytes = if (tryOplus) OplusIspColorTransform.read(captureResult, cameraId) else null
        val oplusCandidate = oplusBytes?.let(OplusIspColorTransform::decode)
        val oplusTransform = oplusCandidate?.takeIf {
            isUsableMatrix(it) && !isIdentityCcm(it) && ispCcmRowSums(it).all { sum -> sum in 0.85f..1.15f }
        }
        fun oplusDetails(): String {
            if (!tryOplus) return ""
            val status = when {
                oplusBytes == null -> "MISSING"
                oplusCandidate == null -> "INVALID_PAYLOAD"
                oplusTransform == null -> "UNUSABLE_MATRIX"
                else -> "USABLE"
            }
            val rejectedMatrix = if (oplusCandidate != null && oplusTransform == null) {
                " oplusCcm=${oplusCandidate.contentToString()}"
            } else ""
            return " oplusCcmStatus=$status oplusCcmBytes=${oplusBytes?.size ?: 0}$rejectedMatrix"
        }

        val transform = oplusTransform ?: standardTransform
            ?: return finish("CCM_MISSING_OR_UNREADABLE", details = ::oplusDetails)
        val ccmOrigin = if (oplusTransform != null) "OPLUS_VENDOR" else "CAMERA2_STANDARD"
        if (!isUsableMatrix(transform)) return finish("CCM_INVALID") { " ispCcm=${transform.contentToString()}" }
        if (isIdentityCcm(transform)) {
            return finish("CCM_IDENTITY") { " ispCcm=${transform.contentToString()}${oplusDetails()}" }
        }
        // In the ISP's white-balanced input domain, a neutral should stay close to neutral.
        val rowSums = ispCcmRowSums(transform)
        if (rowSums.any { it !in 0.85f..1.15f }) {
            return finish("CCM_NEUTRAL_OUT_OF_RANGE") {
                " rowSums=${rowSums.contentToString()} ispCcm=${transform.contentToString()}"
            }
        }
        val gains = captureResult.readMetadataOrNull(CaptureResult.COLOR_CORRECTION_GAINS, cameraId)
            ?: return finish("WB_GAINS_MISSING_OR_UNREADABLE") {
                " ccmOrigin=$ccmOrigin ispCcm=${transform.contentToString()}${oplusDetails()}"
            }
        val whiteBalance = floatArrayOf(gains.red, gains.greenEven, gains.greenOdd, gains.blue)
        if (whiteBalance.any { !it.isFinite() || it <= 0f }) {
            return finish("WB_GAINS_INVALID") { " gains=${whiteBalance.contentToString()}" }
        }
        val neutral = DngSdkColorSpec.cameraNeutralFromWb(whiteBalance)
        if (neutral.any { !it.isFinite() || it <= 0f }) {
            return finish("NEUTRAL_INVALID") { " gains=${whiteBalance.contentToString()}" }
        }

        val color1 = source.colorMatrix1?.toMatrix()
        val sceneWhite = if (color1 != null && !SrgbColorMatrixPolicy.isPlaceholder(color1, source.illuminant1)) {
            DngSdkColorSpec.computeWhiteXy(
                colorMatrix1 = color1, colorMatrix2 = source.colorMatrix2?.toMatrix(),
                forwardMatrix1 = null, forwardMatrix2 = null,
                calibrationIlluminant1 = source.illuminant1, calibrationIlluminant2 = source.illuminant2,
                whiteBalanceGains = whiteBalance,
                cameraCalibration1 = source.calibration1?.toMatrix(),
                cameraCalibration2 = source.calibration2?.toMatrix(),
            )
        } else null
        val (color, forward) = DngSdkColorSpec.deriveIspColorMatrices(transform, neutral, sceneWhite)
            ?: return finish("ISP_DERIVATION_FAILED") { " ispCcm=${transform.contentToString()} gains=${whiteBalance.contentToString()}" }
        if (!isUsableMatrix(color) || !isUsableForwardMatrix(forward) ||
            color.any { abs(it) > MAX_TRANSFORM_ELEMENT } || forward.any { abs(it) > MAX_TRANSFORM_ELEMENT }
        ) return finish("DERIVED_MATRICES_INVALID") { " color=${color.contentToString()} forward=${forward.contentToString()}" }

        val derived = CameraCalibration(
            colorMatrix1 = color.toTransform(), colorMatrix2 = null,
            forwardMatrix1 = forward.toTransform(), forwardMatrix2 = null,
            illuminant1 = ILLUMINANT_D65, illuminant2 = 0,
            calibration1 = null, calibration2 = null,
            source = Source.ISP_CCM, cameraForwardStatus = source.cameraForwardStatus,
            asShotNeutral = neutral,
        )
        return finish("ISP_DERIVED", derived) {
            " ccmOrigin=$ccmOrigin ispCcm=${transform.contentToString()} gains=${whiteBalance.contentToString()}${oplusDetails()}"
        }
    }

    private fun isIdentityCcm(matrix: FloatArray): Boolean =
        matrix.indices.all { abs(matrix[it] - (if (it % 4 == 0) 1f else 0f)) < 0.001f }

    private fun ispCcmRowSums(matrix: FloatArray): FloatArray = FloatArray(3) { row ->
        val offset = row * 3
        matrix[offset] + matrix[offset + 1] + matrix[offset + 2]
    }

    private fun resolveCharacteristics(
        characteristics: CameraCharacteristics,
        mode: RawColorCalibrationMode,
    ): CameraCalibration {
        if (mode == RawColorCalibrationMode.BUILT_IN) {
            PLog.i(TAG, "Using built-in fixed DNG calibration")
            return CameraCalibration(
                FixedRawCalibration.colorMatrix1().toTransform(), FixedRawCalibration.colorMatrix2().toTransform(),
                null, null,
                FixedRawCalibration.ILLUMINANT1, FixedRawCalibration.ILLUMINANT2,
                FixedRawCalibration.cameraCalibration1().toTransform(), FixedRawCalibration.cameraCalibration2().toTransform(),
                Source.BUILT_IN, ForwardStatus.NOT_CHECKED,
            )
        }
        val illuminant1 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT1) ?: 0
        val illuminant2 = characteristics.get(CameraCharacteristics.SENSOR_REFERENCE_ILLUMINANT2)?.toInt() ?: 0
        val cm1 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM1)
        val cm2 = characteristics.get(CameraCharacteristics.SENSOR_COLOR_TRANSFORM2)
        val (fm1, fm2, placeholder) = ForwardMatrixPolicy.fromCharacteristics(
            characteristics, rejectPlaceholder = mode == RawColorCalibrationMode.AUTO,
        )
        val selection = select(
            cm1?.toMatrix(), cm2?.toMatrix(), illuminant1, illuminant2, fm1?.toMatrix(), fm2?.toMatrix(), mode,
        )
        val forwardStatus = when {
            placeholder -> ForwardStatus.PLACEHOLDER
            fm1 == null -> if (fm2 == null) ForwardStatus.MISSING else ForwardStatus.MISSING_FIRST
            selection?.useForward == true -> ForwardStatus.USABLE
            else -> ForwardStatus.UNUSABLE
        }
        log(selection, "source")
        if (selection == null) {
            return CameraCalibration(
                SRGB_D65_COLOR_MATRIX.toTransform(), null, null, null,
                ILLUMINANT_D65, 0, null, null, Source.SRGB_FALLBACK, forwardStatus,
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
            source = if (selection.useForward) Source.CAMERA_FORWARD_MATRIX else Source.CAMERA_COLOR_MATRIX,
            cameraForwardStatus = forwardStatus,
        )
    }

    /**
     * Call after original-payload ForwardMatrix rejection (AUTO only, see [mode]), while
     * retaining illuminant slots.
     */
    fun resolveProfile(profile: DcpProfile): DcpProfile {
        val mode = mode
        if (mode == RawColorCalibrationMode.BUILT_IN) {
            PLog.i(TAG, "Using built-in fixed DNG calibration for embedded profile")
            return profile.copy(
                colorMatrix1 = FixedRawCalibration.colorMatrix1(), colorMatrix2 = FixedRawCalibration.colorMatrix2(),
                forwardMatrix1 = null, forwardMatrix2 = null,
                calibrationIlluminant1 = FixedRawCalibration.ILLUMINANT1,
                calibrationIlluminant2 = FixedRawCalibration.ILLUMINANT2,
                analogBalance = null,
                cameraCalibration1 = FixedRawCalibration.cameraCalibration1(),
                cameraCalibration2 = FixedRawCalibration.cameraCalibration2(),
                // Tables tied to the replaced source calibration do not belong to it.
                hueSatDeltas1 = null, hueSatDeltas2 = null, lookTable = null,
            )
        }
        val selection = select(
            profile.colorMatrix1, profile.colorMatrix2,
            profile.calibrationIlluminant1, profile.calibrationIlluminant2,
            profile.forwardMatrix1, profile.forwardMatrix2,
            mode,
        )
        log(selection, "embedded")
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
        return profile.copy(
            colorMatrix1 = SRGB_D65_COLOR_MATRIX.copyOf(), colorMatrix2 = null,
            forwardMatrix1 = null, forwardMatrix2 = null,
            calibrationIlluminant1 = ILLUMINANT_D65,
            calibrationIlluminant2 = 0,
            analogBalance = null,
            cameraCalibration1 = null,
            cameraCalibration2 = null,
            // Tables tied to the missing source calibration do not belong to this
            // replacement, which renders white-balanced camera RGB as sRGB.
            hueSatDeltas1 = null, hueSatDeltas2 = null, lookTable = null,
        )
    }

    // Structural check only; sRGB placeholders are handled by the selection order.
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
    private const val TRANSFORM_DENOMINATOR = 100_000_000
    private const val MAX_TRANSFORM_ELEMENT = Int.MAX_VALUE.toDouble() / TRANSFORM_DENOMINATOR

    private fun ColorSpaceTransform.toMatrix(): FloatArray = FloatArray(9) {
        getElement(it % 3, it / 3).toFloat()
    }

    private fun FloatArray.toTransform(): ColorSpaceTransform = ColorSpaceTransform(IntArray(18) {
        if (it % 2 == 0) (this[it / 2].toDouble() * TRANSFORM_DENOMINATOR).roundToInt() else TRANSFORM_DENOMINATOR
    })
}
