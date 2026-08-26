package com.hinnka.mycamera.raw

import android.graphics.Rect
import android.hardware.camera2.CameraCharacteristics
import com.hinnka.mycamera.processor.GpuLinearRgbSource
import java.nio.ByteBuffer
import java.util.Base64
import kotlin.math.roundToInt

/** Camera metadata needed to construct MGC's ordinary (range type 0) AE shot range. */
data class RawSceneExposureDeviceLimits(
    val maxExposureTimeMs: Float,
    val referenceSensitivityIso: Int,
    val deviceMaxOverallGain: Float,
) {
    val minTetMs: Float
        get() = MIN_TET_MS

    val deviceMaxTetMs: Float
        get() = maxExposureTimeMs * deviceMaxOverallGain

    fun isValid(): Boolean =
        maxExposureTimeMs.isFinite() && maxExposureTimeMs >= MIN_TET_MS &&
            referenceSensitivityIso > 0 &&
            deviceMaxOverallGain.isFinite() && deviceMaxOverallGain >= 1f &&
            deviceMaxTetMs.isFinite() && deviceMaxTetMs >= MIN_TET_MS

    companion object {
        // MGC builds the type-0 device TET interval with this fixed lower endpoint.
        const val MIN_TET_MS = 0.04f
        // MGC's generic Camera2 confinement caps the reported sensor maximum at one second.
        const val MAX_CAMERA2_EXPOSURE_TIME_MS = 1_000f

        fun fromCameraCharacteristics(
            characteristics: CameraCharacteristics,
        ): RawSceneExposureDeviceLimits? {
            val exposureRange = characteristics.get(
                CameraCharacteristics.SENSOR_INFO_EXPOSURE_TIME_RANGE,
            ) ?: return null
            val sensitivityRange = characteristics.get(
                CameraCharacteristics.SENSOR_INFO_SENSITIVITY_RANGE,
            ) ?: return null
            return fromCamera2Ranges(
                maxExposureTimeNs = exposureRange.upper,
                minSensitivityIso = sensitivityRange.lower,
                maxSensitivityIso = sensitivityRange.upper,
            )
        }

        fun fromCamera2Ranges(
            maxExposureTimeNs: Long,
            minSensitivityIso: Int,
            maxSensitivityIso: Int,
        ): RawSceneExposureDeviceLimits? {
            if (maxExposureTimeNs <= 0L || minSensitivityIso <= 0 ||
                maxSensitivityIso < minSensitivityIso
            ) {
                return null
            }
            val maxExposureTimeMs = (maxExposureTimeNs.toDouble() / 1_000_000.0)
                .coerceAtMost(MAX_CAMERA2_EXPOSURE_TIME_MS.toDouble())
                .toFloat()
            val deviceMaxOverallGain =
                maxSensitivityIso.toFloat() / minSensitivityIso.toFloat()
            return RawSceneExposureDeviceLimits(
                maxExposureTimeMs = maxExposureTimeMs,
                referenceSensitivityIso = minSensitivityIso,
                deviceMaxOverallGain = deviceMaxOverallGain,
            ).takeIf(RawSceneExposureDeviceLimits::isValid)
        }
    }
}

/** Metadata generated before a RAW buffer is written as DNG. */
data class RawDngProfilePreparationOptions(
    val generatePhotonPgtm: Boolean = false,
    /** One Bayer-phase-preserving crop shared by AE, Fast Moments, HDRNet and PGTM. */
    val statsBounds: Rect? = null,
    val captureProfilePreparer: RawDngCaptureProfilePreparer? = null,
)

fun interface RawDngCaptureProfilePreparer {
    suspend fun prepare(input: RawDngCaptureProfileInput): RawDngCaptureProfileResult?
}

data class RawDngCaptureProfileInput(
    val rawData: ByteBuffer?,
    val width: Int,
    val height: Int,
    val rowStride: Int,
    val samplesPerPixel: Int,
    val metadata: RawMetadata,
    val meteringRenderPlan: DcpRenderPlan,
    val gpuLinearRgbSource: GpuLinearRgbSource? = null,
    val fastMomentsRawStats: RawSceneFastMomentsRawStats? = null,
    val sceneExposureDeviceLimits: RawSceneExposureDeviceLimits? = null,
)

/**
 * Full-resolution camera RGB produced while preparing a single-frame capture profile.
 *
 * Ownership stays with [RawDemosaicProcessor]. The next in-memory render either adopts the
 * texture or releases it explicitly; it is never serialized into the DNG.
 */
data class GpuDemosaicedRawSource(
    val textureId: Int,
    val width: Int,
    val height: Int,
)

data class RawDngCaptureProfileResult(
    /** Classic auto-exposure EV relative to the source baseline; always null for Photon HDR. */
    val exposureOffsetEv: Float?,
    /** Photon HDR long/short TET ratio; always null for classic auto exposure. */
    val hdrRatio: Float?,
    /** Capture-time source/final-short TET quotient consumed by HDRNet input normalization. */
    val finalShortGain: Float?,
    /** MGC portrait/long TET quotient consumed by post-HDRNet local relighting. */
    val portraitRelightingGain: Float = 1f,
    /** Unrotated sensor-space 64 x 64 soft face mask used by local relighting. */
    val portraitRelightingMask: FloatArray? = null,
    val profileGainTableMap: DngProfileGainTableMap?,
    val gpuDemosaicedRawSource: GpuDemosaicedRawSource? = null,
)

/** Keeps the DNG color solution while enforcing the fixed Adobe/default metering pipeline. */
internal fun DcpRenderPlan.toAdobeDefaultMeteringPlan(): DcpRenderPlan {
    return copy(
        defaultBlackRender = DcpDefaultBlackRender.None,
        hueSatMap = null,
        lookTable = null,
        toneCurveLut = null,
    )
}

/** BaselineExposure and optional PGTM prepared before the DNG writer starts. */
data class RawDngProfilePreparation(
    val baselineExposureEv: Float,
    val hdrRatio: Float?,
    val finalShortGain: Float?,
    val portraitRelightingGain: Float = 1f,
    val portraitRelightingMask: FloatArray? = null,
    val profileGainTableMap: DngProfileGainTableMap?,
    val gpuDemosaicedRawSource: GpuDemosaicedRawSource? = null,
)

/** Process-local capture result persisted with Photon gallery metadata for PGTM regeneration. */
internal object RawPhotonHdrRatioMetadata {
    private const val PROPERTY = "photonHdrNetRatio"
    private const val CONTRACT_PROPERTY = "photonHdrNetRatioContract"
    private const val CURRENT_CONTRACT = "mgc_fast_moments_v25_portrait_mask_v1"
    private const val SHORT_GAIN_PROPERTY = "photonHdrNetSourceToShortGain"
    private const val SHORT_GAIN_CONTRACT_PROPERTY = "photonHdrNetSourceToShortGainContract"
    private const val CURRENT_SHORT_GAIN_CONTRACT = "mgc_fast_moments_v25_final_short_v1"

    fun read(properties: Map<String, String>): Float? = properties[PROPERTY]
        ?.toFloatOrNull()
        ?.takeIf { it.isFinite() && it >= 1f }

    fun readFinalShortGain(properties: Map<String, String>): Float? {
        if (properties[SHORT_GAIN_CONTRACT_PROPERTY] != CURRENT_SHORT_GAIN_CONTRACT) return null
        return properties[SHORT_GAIN_PROPERTY]
            ?.toFloatOrNull()
            ?.takeIf { it.isFinite() && it > 0f }
    }

    fun write(
        properties: Map<String, String>,
        hdrRatio: Float?,
        finalShortGain: Float? = null,
    ): Map<String, String> {
        val validRatio = hdrRatio?.takeIf { it.isFinite() && it >= 1f } ?: return properties
        var result = properties + mapOf(
            PROPERTY to validRatio.toString(),
            CONTRACT_PROPERTY to CURRENT_CONTRACT,
        )
        val validShortGain = finalShortGain?.takeIf { it.isFinite() && it > 0f }
        if (validShortGain != null) {
            result += mapOf(
                SHORT_GAIN_PROPERTY to validShortGain.toString(),
                SHORT_GAIN_CONTRACT_PROPERTY to CURRENT_SHORT_GAIN_CONTRACT,
            )
        }
        return result
    }

    fun isCurrentCaptureContract(properties: Map<String, String>): Boolean {
        return properties[CONTRACT_PROPERTY] == CURRENT_CONTRACT
    }
}

internal data class RawPhotonPortraitRelighting(
    val gain: Float,
    val mask: FloatArray,
)

/** Capture-time portrait quotient and mask required to reproduce PGTM during gallery refresh. */
internal object RawPhotonPortraitRelightingMetadata {
    private const val GAIN_PROPERTY = "photonPortraitRelightingGain"
    private const val MASK_PROPERTY = "photonPortraitRelightingMask64U8"
    private const val MASK_WIDTH = RawSceneExposureMath.INPUT_WIDTH
    private const val MASK_HEIGHT = RawSceneExposureMath.INPUT_HEIGHT
    private const val MASK_SIZE = MASK_WIDTH * MASK_HEIGHT

    fun read(properties: Map<String, String>): RawPhotonPortraitRelighting? {
        val gain = properties[GAIN_PROPERTY]
            ?.toFloatOrNull()
            ?.takeIf { it.isFinite() && it > 0f }
            ?: return null
        val encodedMask = properties[MASK_PROPERTY] ?: return null
        val bytes = try {
            Base64.getDecoder().decode(encodedMask)
        } catch (_: IllegalArgumentException) {
            return null
        }
        if (bytes.size != MASK_SIZE) return null
        val mask = FloatArray(MASK_SIZE) { index ->
            (bytes[index].toInt() and 0xFF) / 255f
        }
        return RawPhotonPortraitRelighting(gain = gain, mask = mask)
    }

    fun write(
        properties: Map<String, String>,
        gain: Float,
        mask: FloatArray?,
    ): Map<String, String> {
        if (!gain.isFinite() || gain <= 0f || mask == null || mask.size != MASK_SIZE ||
            mask.any { !it.isFinite() || it !in 0f..1f }
        ) {
            return properties - GAIN_PROPERTY - MASK_PROPERTY
        }
        val bytes = ByteArray(MASK_SIZE) { index ->
            (mask[index] * 255f).roundToInt().coerceIn(0, 255).toByte()
        }
        return properties + mapOf(
            GAIN_PROPERTY to gain.toString(),
            MASK_PROPERTY to Base64.getEncoder().withoutPadding().encodeToString(bytes),
        )
    }
}

/** Capture-request AE compensation persisted independently from presentation ExposureBias. */
internal object RawCaptureExposureCompensationMetadata {
    private const val PROPERTY = "captureAeExposureCompensationEv"

    fun read(properties: Map<String, String>): Float? = properties[PROPERTY]
        ?.toFloatOrNull()
        ?.takeIf(Float::isFinite)

    fun write(properties: Map<String, String>, exposureCompensationEv: Float): Map<String, String> {
        if (!exposureCompensationEv.isFinite()) return properties
        return properties + (PROPERTY to exposureCompensationEv.toString())
    }
}
