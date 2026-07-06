package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.util.Locale
import kotlin.math.abs
import kotlin.math.max

data class DcpInfo(
    val id: String,
    val nameMap: Map<String, String>,
    val filePath: String,
    val isBuiltIn: Boolean = false
) {
    fun getName(locale: Locale = Locale.getDefault()): String {
        val language = if (locale.language == "zh") "zh" else "en"
        return nameMap[language] ?: nameMap["en"] ?: id
    }
}

data class DcpHueSatMap(
    val hueDivisions: Int,
    val satDivisions: Int,
    val valueDivisions: Int,
    val values: FloatArray,
    val encoding: Int = ENCODING_LINEAR
) {
    companion object {
        const val ENCODING_LINEAR = 0
        const val ENCODING_SRGB = 1
    }

    val isValid: Boolean
        get() = hueDivisions > 0 &&
            satDivisions > 0 &&
            valueDivisions > 0 &&
            values.size == hueDivisions * satDivisions * valueDivisions * 3
}

data class DcpToneCurve(
    val points: FloatArray
) {
    val isValid: Boolean
        get() {
            if (points.size < 4 || points.size % 2 != 0) {
                return false
            }
            var lastX = -1f
            for (index in points.indices step 2) {
                val x = points[index]
                val y = points[index + 1]
                if (!x.isFinite() || !y.isFinite() || x !in 0f..1f || y !in 0f..1f) {
                    return false
                }
                if (x <= lastX) {
                    return false
                }
                lastX = x
            }
            return true
        }

    fun toLut(sampleCount: Int = 256): FloatArray {
        if (!isValid) {
            return FloatArray(sampleCount) { index -> index / (sampleCount - 1f) }
        }

        val lut = FloatArray(sampleCount)
        var segment = 0
        for (index in 0 until sampleCount) {
            val x = index / (sampleCount - 1f)
            while (segment < points.size / 2 - 2 && x > points[(segment + 1) * 2]) {
                segment++
            }
            val x0 = points[segment * 2]
            val y0 = points[segment * 2 + 1]
            val x1 = points[(segment + 1) * 2]
            val y1 = points[(segment + 1) * 2 + 1]
            val t = if (abs(x1 - x0) < 1e-6f) 0f else ((x - x0) / (x1 - x0)).coerceIn(0f, 1f)
            lut[index] = y0 + (y1 - y0) * t
        }
        return lut
    }
}

enum class DcpDefaultBlackRender(val tagValue: Int) {
    Auto(0),
    None(1);

    companion object {
        fun fromTagValue(tagValue: Int?): DcpDefaultBlackRender {
            return values().firstOrNull { it.tagValue == tagValue } ?: Auto
        }
    }
}

data class DcpProfile(
    val profileName: String,
    val calibrationIlluminant1: Int,
    val calibrationIlluminant2: Int,
    val baselineExposureOffset: Float,
    val defaultBlackRender: DcpDefaultBlackRender = DcpDefaultBlackRender.Auto,
    val colorMatrix1: FloatArray?,
    val colorMatrix2: FloatArray?,
    val forwardMatrix1: FloatArray?,
    val forwardMatrix2: FloatArray?,
    val hueSatDeltas1: DcpHueSatMap?,
    val hueSatDeltas2: DcpHueSatMap?,
    val lookTable: DcpHueSatMap?,
    val toneCurve: DcpToneCurve?,
    val analogBalance: FloatArray? = null,
    val cameraCalibration1: FloatArray? = null,
    val cameraCalibration2: FloatArray? = null
)

data class DcpRenderPlan(
    val profileName: String,
    val workingColorSpace: ColorSpace,
    val baselineExposureOffset: Float,
    val defaultBlackRender: DcpDefaultBlackRender,
    val colorCorrectionMatrix: FloatArray,
    val cameraWhite: FloatArray = floatArrayOf(1f, 1f, 1f),
    val hueSatMap: DcpHueSatMap?,
    val lookTable: DcpHueSatMap?,
    val toneCurveLut: FloatArray?
)

object DcpProfileParser {
    private const val TAG = "DcpProfileParser"

    private data class CacheEntry(
        val stamp: Long,
        val profile: DcpProfile
    )

    private val cache = mutableMapOf<String, CacheEntry>()
    private val renderPlanCache = mutableMapOf<String, DcpRenderPlan>()

    fun parse(filePath: String): DcpProfile? {
        val file = File(filePath)
        if (!file.exists() || !file.canRead()) {
            PLog.e(TAG, "DCP file not readable: $filePath")
            return null
        }
        val stamp = file.lastModified() xor file.length()
        val cached = synchronized(cache) { cache[filePath] }
        if (cached != null && cached.stamp == stamp) {
            return cached.profile
        }

        return runCatching {
            val json = DcpNativeBridge.parseDcpToJson(filePath)
            parseJson(json)
        }.onSuccess { profile ->
            synchronized(cache) {
                cache[filePath] = CacheEntry(stamp, profile)
            }
            PLog.d(TAG, "Parsed DCP: $filePath, profile=${profile.profileName}")
        }.onFailure { error ->
            PLog.e(TAG, "Failed to parse DCP: $filePath", error)
        }.getOrNull()
    }

    fun resolveRenderPlan(
        context: Context,
        dcpInfo: DcpInfo?,
        metadata: RawMetadata,
        workingColorSpace: ColorSpace = ColorSpace.ProPhoto
    ): DcpRenderPlan? {
        if (dcpInfo == null) return null
        val filePath = resolveFilePath(context, dcpInfo) ?: return null
        val file = File(filePath)
        val stamp = file.lastModified() xor file.length()
        val renderPlanKey = "${buildRenderPlanKey(filePath, stamp, metadata)}|working=${workingColorSpace.name}"
        synchronized(renderPlanCache) {
            renderPlanCache[renderPlanKey]?.let { return it }
        }

        val profile = parse(filePath) ?: return null
        return resolveRenderPlan(profile, metadata, workingColorSpace)?.also { plan ->
            synchronized(renderPlanCache) {
                renderPlanCache[renderPlanKey] = plan
            }
        }
    }

    fun resolveRenderPlan(
        profile: DcpProfile,
        metadata: RawMetadata,
        workingColorSpace: ColorSpace = ColorSpace.ProPhoto
    ): DcpRenderPlan? {
        val selectedHueSat = interpolateHueSatMap(profile, metadata)
        val selectedMatrix = DngSdkColorSpec.computeCameraToWorkingMatrix(
            profile = profile,
            metadata = metadata,
            workingColorSpace = workingColorSpace
        ) ?: metadata.colorCorrectionMatrix
        val selectedCameraWhite = DngSdkColorSpec.computeCameraWhite(
            profile = profile,
            metadata = metadata
        ) ?: metadata.cameraWhite
        return DcpRenderPlan(
            profileName = profile.profileName,
            workingColorSpace = workingColorSpace,
            baselineExposureOffset = profile.baselineExposureOffset,
            defaultBlackRender = profile.defaultBlackRender,
            colorCorrectionMatrix = selectedMatrix,
            cameraWhite = selectedCameraWhite,
            hueSatMap = selectedHueSat,
            lookTable = profile.lookTable?.takeIf { it.isValid },
            toneCurveLut = profile.toneCurve?.takeIf { it.isValid }?.toLut()
        )
    }

    fun prewarm(context: Context, dcpInfo: DcpInfo?) {
        if (dcpInfo == null) return
        val start = System.currentTimeMillis()
        val filePath = resolveFilePath(context, dcpInfo) ?: return
        parse(filePath)
        PLog.d(TAG, "Prewarmed DCP: ${dcpInfo.id}, took=${System.currentTimeMillis() - start}ms")
    }

    fun clearCache() {
        synchronized(cache) {
            cache.clear()
        }
        synchronized(renderPlanCache) {
            renderPlanCache.clear()
        }
    }

    private fun buildRenderPlanKey(filePath: String, stamp: Long, metadata: RawMetadata): String {
        val wbKey = metadata.whiteBalanceGains.joinToString(",") { gain ->
            (gain * 1000f).toInt().toString()
        }
        return "$filePath|$stamp|$wbKey|${metadata.colorCorrectionMatrix.contentHashCode()}"
    }

    private fun resolveFilePath(context: Context, dcpInfo: DcpInfo): String? {
        val file = File(dcpInfo.filePath)
        if (file.exists()) return file.absolutePath
        if (!dcpInfo.isBuiltIn) return null

        val outFile = File(context.cacheDir, "built_in_dcp/${dcpInfo.id}.dcp")
        if (outFile.exists()) return outFile.absolutePath

        return runCatching {
            outFile.parentFile?.mkdirs()
            context.assets.open(dcpInfo.filePath).use { input ->
                outFile.outputStream().use { output -> input.copyTo(output) }
            }
            outFile.absolutePath
        }.onFailure {
            PLog.e(TAG, "Failed to materialize built-in DCP asset: ${dcpInfo.filePath}", it)
        }.getOrNull()
    }

    private fun parseJson(json: String): DcpProfile {
        val root = JSONObject(json)
        return DcpProfile(
            profileName = root.optString("profileName", ""),
            calibrationIlluminant1 = root.optInt("calibrationIlluminant1", 0),
            calibrationIlluminant2 = root.optInt("calibrationIlluminant2", 0),
            baselineExposureOffset = root.optDouble("baselineExposureOffset", 0.0).toFloat(),
            defaultBlackRender = DcpDefaultBlackRender.fromTagValue(root.optInt("defaultBlackRender", 0)),
            colorMatrix1 = root.optJSONArray("colorMatrix1")?.toFloatArray(),
            colorMatrix2 = root.optJSONArray("colorMatrix2")?.toFloatArray(),
            forwardMatrix1 = root.optJSONArray("forwardMatrix1")?.toFloatArray(),
            forwardMatrix2 = root.optJSONArray("forwardMatrix2")?.toFloatArray(),
            hueSatDeltas1 = root.optJSONObject("hueSatDeltas1")?.toHueSatMap(root.optInt("hueSatMapEncoding", 0)),
            hueSatDeltas2 = root.optJSONObject("hueSatDeltas2")?.toHueSatMap(root.optInt("hueSatMapEncoding", 0)),
            lookTable = root.optJSONObject("lookTable")?.toHueSatMap(root.optInt("lookTableEncoding", 0)),
            toneCurve = root.optJSONArray("toneCurve")?.let { DcpToneCurve(it.toFloatArray()) }
        )
    }

    private fun JSONObject.toHueSatMap(encoding: Int): DcpHueSatMap {
        return DcpHueSatMap(
            hueDivisions = optInt("hueDivisions"),
            satDivisions = optInt("satDivisions"),
            valueDivisions = optInt("valueDivisions"),
            values = optJSONArray("values")?.toFloatArray() ?: FloatArray(0),
            encoding = encoding
        )
    }

    private fun JSONArray.toFloatArray(): FloatArray {
        return FloatArray(length()) { index -> optDouble(index).toFloat() }
    }

    private fun interpolateHueSatMap(profile: DcpProfile, metadata: RawMetadata): DcpHueSatMap? {
        val first = profile.hueSatDeltas1?.takeIf { it.isValid } ?: return null
        val second = profile.hueSatDeltas2?.takeIf { it.isValid }
        if (second == null ||
            first.hueDivisions != second.hueDivisions ||
            first.satDivisions != second.satDivisions ||
            first.valueDivisions != second.valueDivisions
        ) {
            return first
        }

        val weight = DngSdkColorSpec.whiteXyForProfile(profile, metadata)?.let { whiteXy ->
            DngSdkColorSpec.hueSatWeightForWhite(
                profile.calibrationIlluminant1,
                profile.calibrationIlluminant2,
                whiteXy
            )
        } ?: 1f
        val values = FloatArray(first.values.size) { index ->
            first.values[index] * weight + second.values[index] * (1f - weight)
        }
        return first.copy(values = values)
    }

    private fun computeInterpolatedCameraToXyz(profile: DcpProfile, metadata: RawMetadata): FloatArray? {
        val weight = calculateInterpolationWeight(
            profile.calibrationIlluminant1,
            profile.calibrationIlluminant2,
            metadata.whiteBalanceGains
        )
        val matrix1 = computeCameraToXyz(
            forwardMatrix = profile.forwardMatrix1,
            colorMatrix = profile.colorMatrix1,
            illuminant = profile.calibrationIlluminant1
        )
        val matrix2 = computeCameraToXyz(
            forwardMatrix = profile.forwardMatrix2,
            colorMatrix = profile.colorMatrix2,
            illuminant = profile.calibrationIlluminant2
        )

        return when {
            matrix1 != null && matrix2 != null -> FloatArray(9) { i ->
                matrix1[i] * weight + matrix2[i] * (1f - weight)
            }
            matrix1 != null -> matrix1
            matrix2 != null -> matrix2
            else -> null
        }
    }

    private fun calculateInterpolationWeight(
        illuminant1: Int,
        illuminant2: Int,
        wbGains: FloatArray
    ): Float {
        if (illuminant1 == 0 || illuminant2 == 0 || wbGains.size < 4) {
            return 0f
        }
        val t1 = illuminantToTemp(illuminant1)
        val t2 = illuminantToTemp(illuminant2)
        if (abs(t1 - t2) < 100f) return 1f

        val currentRatio = wbGains[0] / max(wbGains[3], 1e-4f)
        val ratioWarm = 0.5f
        val ratioCool = 1.6f
        fun targetRatio(temp: Float): Float {
            return when {
                temp <= 2856f -> ratioWarm
                temp >= 6504f -> ratioCool
                else -> ratioWarm + (ratioCool - ratioWarm) * (temp - 2856f) / (6504f - 2856f)
            }
        }

        val r1 = targetRatio(t1)
        val r2 = targetRatio(t2)
        val diff = r1 - r2
        if (abs(diff) < 0.01f) return 0.5f
        return ((currentRatio - r2) / diff).coerceIn(0f, 1f)
    }

    private fun computeCameraToXyz(
        forwardMatrix: FloatArray?,
        colorMatrix: FloatArray?,
        illuminant: Int
    ): FloatArray? {
        if (forwardMatrix != null && forwardMatrix.size == 9) {
            return forwardMatrix
        }
        if (colorMatrix == null || colorMatrix.size != 9) {
            return null
        }
        val xyzToCam = colorMatrix
        val (lx, ly, lz) = illuminantWhitePoint(illuminant)
        val cameraNeutral = FloatArray(3)
        for (row in 0 until 3) {
            cameraNeutral[row] =
                xyzToCam[row * 3] * lx +
                xyzToCam[row * 3 + 1] * ly +
                xyzToCam[row * 3 + 2] * lz
        }
        val referenceMatrix = xyzToCam.copyOf()
        for (row in 0 until 3) {
            val neutral = if (abs(cameraNeutral[row]) > 1e-4f) cameraNeutral[row] else 1f
            referenceMatrix[row * 3] /= neutral
            referenceMatrix[row * 3 + 1] /= neutral
            referenceMatrix[row * 3 + 2] /= neutral
        }
        val cameraToIlluminant = invertMatrix3x3(referenceMatrix) ?: return null
        return multiplyMatrix3x3(chromaticAdaptation(illuminant), cameraToIlluminant)
    }

    private fun illuminantWhitePoint(illuminant: Int): Triple<Float, Float, Float> {
        return if (illuminant == 17) {
            Triple(1.0985f, 1.0f, 0.3558f)
        } else {
            Triple(0.9504f, 1.0f, 1.0888f)
        }
    }

    private fun chromaticAdaptation(illuminant: Int): FloatArray {
        return if (illuminant == 17) {
            floatArrayOf(
                0.8924f, -0.0157f, 0.0529f,
                -0.1111f, 1.0505f, -0.0151f,
                0.0522f, -0.0077f, 2.2396f
            )
        } else {
            floatArrayOf(
                1.0478f, 0.0229f, -0.0501f,
                0.0295f, 0.9905f, -0.0170f,
                -0.0092f, 0.0150f, 0.7521f
            )
        }
    }

    private fun illuminantToTemp(illuminant: Int): Float {
        return when (illuminant) {
            1 -> 5500f
            2 -> 4000f
            3 -> 3200f
            4 -> 3400f
            9 -> 6500f
            10 -> 7500f
            11 -> 8000f
            12 -> 6500f
            13 -> 5000f
            14 -> 4200f
            15 -> 3500f
            17 -> 2856f
            18 -> 4874f
            19 -> 6774f
            20 -> 5500f
            21 -> 6504f
            22 -> 7505f
            23 -> 5000f
            24 -> 3200f
            else -> 5000f
        }
    }

    private fun invertMatrix3x3(matrix: FloatArray): FloatArray? {
        if (matrix.size != 9) return null
        val det =
            matrix[0] * (matrix[4] * matrix[8] - matrix[5] * matrix[7]) -
            matrix[1] * (matrix[3] * matrix[8] - matrix[5] * matrix[6]) +
            matrix[2] * (matrix[3] * matrix[7] - matrix[4] * matrix[6])
        if (abs(det) < 1e-8f) return null
        val invDet = 1f / det
        return floatArrayOf(
            (matrix[4] * matrix[8] - matrix[5] * matrix[7]) * invDet,
            (matrix[2] * matrix[7] - matrix[1] * matrix[8]) * invDet,
            (matrix[1] * matrix[5] - matrix[2] * matrix[4]) * invDet,
            (matrix[5] * matrix[6] - matrix[3] * matrix[8]) * invDet,
            (matrix[0] * matrix[8] - matrix[2] * matrix[6]) * invDet,
            (matrix[2] * matrix[3] - matrix[0] * matrix[5]) * invDet,
            (matrix[3] * matrix[7] - matrix[4] * matrix[6]) * invDet,
            (matrix[1] * matrix[6] - matrix[0] * matrix[7]) * invDet,
            (matrix[0] * matrix[4] - matrix[1] * matrix[3]) * invDet
        )
    }

    private fun multiplyMatrix3x3(left: FloatArray, right: FloatArray): FloatArray {
        val result = FloatArray(9)
        for (row in 0 until 3) {
            for (col in 0 until 3) {
                result[row * 3 + col] =
                    left[row * 3] * right[col] +
                    left[row * 3 + 1] * right[3 + col] +
                    left[row * 3 + 2] * right[6 + col]
            }
        }
        return result
    }

    private fun computeXyzD50ToGamut(colorSpace: ColorSpace): FloatArray? {
        val primaries = colorSpace.primaries
        val whitePoint = colorSpace.whitePoint
        if (primaries.size != 6 || whitePoint.size != 2) return null

        val xr = primaries[0]
        val yr = primaries[1]
        val xg = primaries[2]
        val yg = primaries[3]
        val xb = primaries[4]
        val yb = primaries[5]
        val xw = whitePoint[0]
        val yw = whitePoint[1]

        val mS = floatArrayOf(
            xr / yr, xg / yg, xb / yb,
            1f, 1f, 1f,
            (1 - xr - yr) / yr, (1 - xg - yg) / yg, (1 - xb - yb) / yb
        )
        val invS = invertMatrix3x3(mS) ?: return null
        val xWhite = xw / yw
        val yWhite = 1f
        val zWhite = (1 - xw - yw) / yw
        val sR = invS[0] * xWhite + invS[1] * yWhite + invS[2] * zWhite
        val sG = invS[3] * xWhite + invS[4] * yWhite + invS[5] * zWhite
        val sB = invS[6] * xWhite + invS[7] * yWhite + invS[8] * zWhite
        val gamutToXyzNative = floatArrayOf(
            (xr / yr) * sR, (xg / yg) * sG, (xb / yb) * sB,
            sR, sG, sB,
            ((1 - xr - yr) / yr) * sR,
            ((1 - xg - yg) / yg) * sG,
            ((1 - xb - yb) / yb) * sB
        )

        val isD50WhitePoint = abs(xw - 0.3457f) < 0.002f && abs(yw - 0.3585f) < 0.002f
        val gamutToXyzD50 = if (isD50WhitePoint) {
            gamutToXyzNative
        } else {
            val bradfordD65ToD50 = floatArrayOf(
                1.0478112f, 0.0228866f, -0.0501270f,
                0.0295424f, 0.9904844f, -0.0170491f,
                -0.0092345f, 0.0150436f, 0.7521316f
            )
            multiplyMatrix3x3(bradfordD65ToD50, gamutToXyzNative)
        }

        return invertMatrix3x3(gamutToXyzD50)
    }
}
