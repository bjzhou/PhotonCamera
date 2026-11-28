package com.hinnka.mycamera.raw

import android.graphics.RectF
import com.hinnka.mycamera.utils.PLog
import kotlin.math.ceil

/**
 * Native JNI bridge for Qualcomm ADRC/TMC12 + multi-scale Guided Filter LTM -> DNG
 * ProfileGainTableMap2 generation.
 */
internal object DngQualcommAdrcNative {
    private const val TAG = "DngQualcommAdrcNative"

    const val INPUT_WIDTH = 256
    const val INPUT_HEIGHT = 192
    const val PGTM_GRID_WIDTH = 64
    const val PGTM_GRID_HEIGHT = 48
    private const val BASE_TABLE_POINTS = 257
    private const val MAX_TABLE_POINTS = 4096

    @Volatile
    private var libraryLoaded = false

    data class Diagnostics(
        val drcGain: Float,
        val drcGainDark: Float,
        val ltmPercentage: Float,
        val yRatioMax: Float,
        val sceneDynamicRangeEv: Float,
        val weightedLogAvgLuma: Float,
        val lumaP05: Float,
        val lumaP992: Float,
    )

    data class Result(
        val map: DngProfileGainTableMap,
        val diagnostics: Diagnostics,
    )

    private fun ensureLibraryLoaded(): Boolean {
        if (libraryLoaded) return true
        return synchronized(this) {
            if (libraryLoaded) return@synchronized true
            try {
                System.loadLibrary("my-native-lib")
                libraryLoaded = true
                true
            } catch (error: UnsatisfiedLinkError) {
                PLog.e(TAG, "Failed to load my-native-lib for Qualcomm ADRC PGTM", error)
                false
            }
        }
    }

    fun generateProfileGainTableMap(
        linearRgba: FloatArray,
        metadata: RawMetadata,
        rendererBaselineExposureEv: Float,
        samplingArea: PhotonPgtmSamplingArea,
        maxLinearIntensity: Float,
        maximumTablePoints: Int = MAX_TABLE_POINTS,
    ): Result? {
        if (!ensureLibraryLoaded()) return null
        val expectedFloats = INPUT_WIDTH * INPUT_HEIGHT * 4
        if (linearRgba.size < expectedFloats) {
            PLog.e(TAG, "linearRgba size=${linearRgba.size}, expected>=$expectedFloats")
            return null
        }
        if (!rendererBaselineExposureEv.isFinite() ||
            !maxLinearIntensity.isFinite() || maxLinearIntensity < 0f ||
            maximumTablePoints < BASE_TABLE_POINTS
        ) {
            return null
        }

        val rendererBaselineGain = DngBaselineExposure.exactGain(rendererBaselineExposureEv)
        if (!rendererBaselineGain.isFinite() || rendererBaselineGain <= 0f) return null

        // Dynamically extend N-axis knots above 1.0 to cover full sensor/multi-frame peak highlights
        // without creating clipped bright islands in DNG rendering.
        val pointLimit = minOf(maximumTablePoints, MAX_TABLE_POINTS)
        val requiredPoints = maxOf(
            BASE_TABLE_POINTS.toDouble(),
            ceil(maxLinearIntensity.toDouble() * BASE_TABLE_POINTS) + 1.0,
        )
        val pointCount = minOf(requiredPoints, pointLimit.toDouble()).toInt()
        val rangeScale = if (requiredPoints <= pointLimit) {
            BASE_TABLE_POINTS.toFloat() / pointCount
        } else {
            ((pointCount - 1).toDouble() / pointCount / maxLinearIntensity).toFloat()
        }
        if (!rangeScale.isFinite() || rangeScale <= 0f) return null

        val mapInputScale = rangeScale / rendererBaselineGain
        if (!mapInputScale.isFinite() || mapInputScale <= 0f) return null

        val mapInputWeights = FloatArray(
            DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS.size,
        ) { index ->
            DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS[index] *
                mapInputScale
        }

        val faceRects = packFaceRects(metadata.faceRects, samplingArea)
        val diagnosticsOut = FloatArray(8)
        val gains = nativeGenerateQualcommAdrcPgtm(
            linearRgba = linearRgba,
            width = INPUT_WIDTH,
            height = INPUT_HEIGHT,
            iso = metadata.iso,
            minIso = metadata.minimumSensitivityIso.takeIf { it > 0 } ?: 100,
            maxIso = metadata.maximumSensitivityIso,
            maxAnalogIso = metadata.maxAnalogSensitivity,
            shutterSpeedNs = metadata.shutterSpeed,
            maxExposureTimeNs = metadata.maxExposureTimeNs,
            aperture = metadata.aperture,
            aeMode = metadata.aeMode,
            postRawSensitivityBoost = metadata.postRawSensitivityBoost,
            exposureCompensationEv = metadata.exposureCompensation,
            rendererBaselineGain = rendererBaselineGain,
            maxLinearIntensity = maxLinearIntensity,
            frameCount = metadata.frameCount,
            faceRects = faceRects,
            pointCount = pointCount,
            rangeScale = rangeScale,
            outputCurve = QcomGamma15OutputCurve.samples(),
            outDiagnostics = diagnosticsOut,
        ) ?: return null

        val expectedGainCount = PGTM_GRID_WIDTH * PGTM_GRID_HEIGHT * pointCount
        if (gains.size != expectedGainCount) {
            PLog.e(TAG, "Unexpected PGTM gain count=${gains.size}, expected=$expectedGainCount")
            return null
        }

        val spacingH = samplingArea.extentH / PGTM_GRID_WIDTH
        val spacingV = samplingArea.extentV / PGTM_GRID_HEIGHT
        val map = DngProfileGainTableMap(
            mapPointsV = PGTM_GRID_HEIGHT,
            mapPointsH = PGTM_GRID_WIDTH,
            mapSpacingV = spacingV,
            mapSpacingH = spacingH,
            mapOriginV = samplingArea.originV + 0.5 * spacingV,
            mapOriginH = samplingArea.originH + 0.5 * spacingH,
            mapPointsN = pointCount,
            mapInputWeights = mapInputWeights,
            gamma = 1f,
            gains = gains,
            sourceTag = DngProfileGainTableMap.TAG_PROFILE_GAIN_TABLE_MAP2,
        )
        if (!map.isValid) {
            PLog.e(TAG, "Generated Qualcomm ADRC ProfileGainTableMap failed validation")
            return null
        }

        val diagnostics = Diagnostics(
            drcGain = diagnosticsOut[0],
            drcGainDark = diagnosticsOut[1],
            ltmPercentage = diagnosticsOut[2],
            yRatioMax = diagnosticsOut[3],
            sceneDynamicRangeEv = diagnosticsOut[4],
            weightedLogAvgLuma = diagnosticsOut[5],
            lumaP05 = diagnosticsOut[6],
            lumaP992 = diagnosticsOut[7],
        )
        return Result(map = map, diagnostics = diagnostics)
    }

    private fun packFaceRects(
        faceRects: List<RectF>,
        samplingArea: PhotonPgtmSamplingArea,
    ): FloatArray? {
        if (faceRects.isEmpty()) return null
        val originH = samplingArea.originH.toFloat()
        val originV = samplingArea.originV.toFloat()
        val extentH = samplingArea.extentH.toFloat().coerceAtLeast(1e-6f)
        val extentV = samplingArea.extentV.toFloat().coerceAtLeast(1e-6f)
        val out = FloatArray(faceRects.size * 4)
        var count = 0
        for (rect in faceRects) {
            if (rect.left.isFinite() && rect.top.isFinite() &&
                rect.right.isFinite() && rect.bottom.isFinite() &&
                rect.right > rect.left && rect.bottom > rect.top
            ) {
                val localLeft = ((rect.left - originH) / extentH).coerceIn(0f, 1f)
                val localTop = ((rect.top - originV) / extentV).coerceIn(0f, 1f)
                val localRight = ((rect.right - originH) / extentH).coerceIn(0f, 1f)
                val localBottom = ((rect.bottom - originV) / extentV).coerceIn(0f, 1f)
                if (localRight > localLeft && localBottom > localTop) {
                    val base = count * 4
                    out[base] = localLeft
                    out[base + 1] = localTop
                    out[base + 2] = localRight
                    out[base + 3] = localBottom
                    count++
                }
            }
        }
        return if (count == 0) null else out.copyOf(count * 4)
    }

    private external fun nativeGenerateQualcommAdrcPgtm(
        linearRgba: FloatArray,
        width: Int,
        height: Int,
        iso: Int,
        minIso: Int,
        maxIso: Int,
        maxAnalogIso: Int,
        shutterSpeedNs: Long,
        maxExposureTimeNs: Long,
        aperture: Float,
        aeMode: Int,
        postRawSensitivityBoost: Float,
        exposureCompensationEv: Float,
        rendererBaselineGain: Float,
        maxLinearIntensity: Float,
        frameCount: Int,
        faceRects: FloatArray?,
        pointCount: Int,
        rangeScale: Float,
        outputCurve: FloatArray?,
        outDiagnostics: FloatArray,
    ): FloatArray?
}
