package com.hinnka.mycamera.raw

import android.content.Context
import org.json.JSONArray
import org.json.JSONObject
import java.security.MessageDigest
import kotlin.math.pow

/**
 * OM-1 Mark II NEP1 still colour stage (docs/om-system-nep1-rendering.md). Spatial stages
 * (demosaic, NR, TCP local tone, sharpening) remain upstream; this plan is the YC1 per-pixel chain.
 */
internal data class OmSystemRenderPlan(
    val mode: OmSystemPictureMode,
    /**
     * DNG scene reference -> OM sensor domain (1.0 = saturation): 2^-BaselineExposure, the
     * camera BaselineExposure of Adobe's OM-1 Mark II DNG conversion.
     */
    val sceneToSensorGain: Float,
    /** [TABLE_WIDTH] x [TABLE_HEIGHT] R32F texture: tone curve, luma gamma, natural-vision tables. */
    val tables: FloatArray,
    /** Row-major Q7 camera matrix selected by the custom-Kelvin rule. */
    val cameraMatrix: IntArray,
    val cameraMatrixIndex: Int,
    /** R, G, B, Ye, Cy, Mg. */
    val chromaSaturation: IntArray,
    val chromaHue: IntArray,
    val cbGain: Int,
    val crGain: Int,
    /** darkSlope, darkThreshold, highlightThreshold, highlightSlope. */
    val chromaSuppression: IntArray,
    val naturalVisionEnableMask: Int,
    /** Per area ivec4s: start, length, inverse, shift. */
    val naturalVisionHue: IntArray,
    val naturalVisionSaturation: IntArray,
    val naturalVisionLuma: IntArray,
    /** Per area ivec4: hue, saturation and luma offsets, unused. */
    val naturalVisionOffset: IntArray,
)

internal object OmSystemProfile {
    const val TABLE_WIDTH = 256
    const val TABLE_HEIGHT = 16
    const val TONE_CURVE_ROW = 0
    const val LUMA_GAMMA_ROW = 1
    const val NATURAL_VISION_FIRST_ROW = 2
    const val NATURAL_VISION_SLOPE_X = 128
    const val NATURAL_VISION_AREAS = 12

    private const val ASSET = "om_system/om1_mark2/nep1_profile.json"
    private const val SHA256 = "9db81259f082674308179afe3ec23b1250c7dc23858d391171e5afbc04f13761"
    private val NATURAL_VISION_KINDS = listOf(
        "hueToHue", "hueToSaturation", "saturationToHue", "saturationToSaturation",
        "saturationToLuma", "lumaWeight", "hueToLuma",
    )

    private class ModeData(
        val chromaSaturation: IntArray,
        val chromaHue: IntArray,
        val cbGain: Int,
        val crGain: Int,
        val tables: FloatArray,
        val naturalVisionEnableMask: Int,
        val naturalVisionHue: IntArray,
        val naturalVisionSaturation: IntArray,
        val naturalVisionLuma: IntArray,
        val naturalVisionOffset: IntArray,
    )

    private class Profile(
        val sceneToSensorGain: Float,
        val miredUpperBounds: FloatArray,
        val cameraMatrices: List<IntArray>,
        val chromaSuppression: IntArray,
        val modes: Map<OmSystemPictureMode, ModeData>,
    )

    @Volatile private var cached: Profile? = null

    fun createRenderPlan(context: Context, mode: OmSystemPictureMode, colorTemperature: Float): OmSystemRenderPlan {
        val profile = profile(context)
        val data = requireNotNull(profile.modes[mode]) { "Missing OM System picture mode $mode" }
        val index = cameraMatrixIndex(profile.miredUpperBounds, colorTemperature)
        return OmSystemRenderPlan(
            mode = mode,
            sceneToSensorGain = profile.sceneToSensorGain,
            tables = data.tables,
            cameraMatrix = profile.cameraMatrices[index],
            cameraMatrixIndex = index,
            chromaSaturation = data.chromaSaturation,
            chromaHue = data.chromaHue,
            cbGain = data.cbGain,
            crGain = data.crGain,
            chromaSuppression = profile.chromaSuppression,
            naturalVisionEnableMask = data.naturalVisionEnableMask,
            naturalVisionHue = data.naturalVisionHue,
            naturalVisionSaturation = data.naturalVisionSaturation,
            naturalVisionLuma = data.naturalVisionLuma,
            naturalVisionOffset = data.naturalVisionOffset,
        )
    }

    /**
     * GetCMXCustomWB(): the first mired upper bound that contains the scene white selects the
     * matrix; warmer whites use the last matrix.
     */
    private fun cameraMatrixIndex(upperBounds: FloatArray, colorTemperature: Float): Int {
        require(colorTemperature.isFinite() && colorTemperature > 0f) {
            "OM System CMX needs a scene colour temperature, got $colorTemperature"
        }
        val mired = 1_000_000.0 / colorTemperature
        val bound = upperBounds.indexOfFirst { mired <= it }
        return if (bound >= 0) bound else upperBounds.size
    }

    private fun profile(context: Context): Profile = cached ?: synchronized(this) {
        cached ?: decode(context.assets.open(ASSET).use { it.readBytes() }).also { cached = it }
    }

    private fun decode(bytes: ByteArray): Profile {
        require(MessageDigest.getInstance("SHA-256").digest(bytes)
            .joinToString("") { "%02x".format(it.toInt() and 255) } == SHA256) {
            "OM System NEP1 asset checksum mismatch"
        }
        val json = JSONObject(String(bytes, Charsets.UTF_8))
        require(json.getInt("schemaVersion") == 1 && json.getString("rawEngineVersion") == "0xDC150001") {
            "Unsupported OM System NEP1 asset"
        }
        val baselineExposureEv = json.getDouble("baselineExposureEv")
        require(baselineExposureEv.isFinite() && baselineExposureEv in -4.0..4.0) {
            "Invalid OM System BaselineExposure $baselineExposureEv"
        }
        val toneCurve = json.getJSONArray("toneCurve").ints(256, 0..4095)
        require((1 until 256).all { toneCurve[it] >= toneCurve[it - 1] }) { "OM System tone curve must be monotonic" }

        val cmx = json.getJSONObject("cmx")
        val bounds = cmx.getJSONArray("miredUpperBounds").let { array ->
            FloatArray(array.length()) { array.getDouble(it).toFloat() }
        }
        require(bounds.size == 8 && (1 until bounds.size).all { bounds[it] > bounds[it - 1] }) {
            "OM System CMX thresholds must be ascending"
        }
        val matrices = cmx.getJSONArray("matrices").let { array ->
            List(array.length()) { index ->
                array.getJSONArray(index).ints(9, -512..512).also { matrix ->
                    for (row in 0..2) require(matrix[row * 3] + matrix[row * 3 + 1] + matrix[row * 3 + 2] == 128) {
                        "OM System CMX rows must be white preserving"
                    }
                }
            }
        }
        require(matrices.size == bounds.size + 1) { "OM System CMX table does not match thresholds" }

        val suppression = json.getJSONObject("chromaSuppression").let {
            intArrayOf(it.getInt("darkSlope"), it.getInt("darkThreshold"),
                it.getInt("highlightThreshold"), it.getInt("highlightSlope"))
        }
        require(suppression[1] in 0..255 && suppression[2] in 0..255 && suppression[1] < suppression[2]) {
            "Invalid OM System chroma suppression thresholds"
        }

        val modes = json.getJSONObject("modes")
        val decodedModes = OmSystemPictureMode.entries.associateWith { mode ->
            decodeMode(modes.getJSONObject(mode.assetKey), toneCurve)
        }
        return Profile(2.0.pow(-baselineExposureEv).toFloat(), bounds, matrices, suppression, decodedModes)
    }

    private fun decodeMode(mode: JSONObject, toneCurve: IntArray): ModeData {
        val tables = FloatArray(TABLE_WIDTH * TABLE_HEIGHT)
        for (x in 0 until 256) tables[TONE_CURVE_ROW * TABLE_WIDTH + x] = toneCurve[x].toFloat()
        val lumaGamma = mode.getJSONArray("lumaGamma").ints(256, 0..1023)
        for (x in 0 until 256) tables[LUMA_GAMMA_ROW * TABLE_WIDTH + x] = lumaGamma[x].toFloat()

        val nv = mode.getJSONObject("naturalVision")
        val groups = nv.getJSONArray("groups")
        require(groups.length() == 2) { "OM System natural vision needs two groups" }
        for (group in 0 until 2) {
            val kinds = groups.getJSONObject(group)
            NATURAL_VISION_KINDS.forEachIndexed { kind, name ->
                val pair = kinds.getJSONArray(name)
                val base = pair.getJSONArray(0).ints(96, -64..63)
                val slope = pair.getJSONArray(1).ints(96, -64..63)
                val row = (NATURAL_VISION_FIRST_ROW + group * NATURAL_VISION_KINDS.size + kind) * TABLE_WIDTH
                for (x in 0 until 96) {
                    tables[row + x] = base[x].toFloat()
                    tables[row + NATURAL_VISION_SLOPE_X + x] = slope[x].toFloat()
                }
            }
        }
        val areas = nv.getJSONArray("areas")
        require(areas.length() == NATURAL_VISION_AREAS) { "OM System natural vision needs twelve areas" }
        val hue = IntArray(NATURAL_VISION_AREAS * 4)
        val saturation = IntArray(NATURAL_VISION_AREAS * 4)
        val luma = IntArray(NATURAL_VISION_AREAS * 4)
        val offset = IntArray(NATURAL_VISION_AREAS * 4)
        for (area in 0 until NATURAL_VISION_AREAS) {
            val value = areas.getJSONObject(area)
            // Lengths are u16 usX_Length registers compared as `value - start <= length`;
            // a length past the 10-bit maximum (e.g. luma 1024) covers the whole range.
            fun put(target: IntArray, prefix: String, start: IntRange) {
                target[area * 4] = value.getInt("${prefix}Start").also { require(it in start) }
                target[area * 4 + 1] = value.getInt("${prefix}Length").also { require(it in 0..0xFFFF) }
                target[area * 4 + 2] = value.getInt("${prefix}Inverse").also { require(it in 0..255) }
                target[area * 4 + 3] = value.getInt("${prefix}Shift").also { require(it in 0..15) }
            }
            put(hue, "hue", 0..32767)
            put(saturation, "saturation", 0..1023)
            put(luma, "luma", 0..1023)
            offset[area * 4] = value.getInt("hueOffset")
            offset[area * 4 + 1] = value.getInt("saturationOffset")
            offset[area * 4 + 2] = value.getInt("lumaOffset")
        }
        val cbGain = mode.getInt("cbGain")
        val crGain = mode.getInt("crGain")
        require(cbGain in 0..1023 && crGain in 0..1023) { "Invalid OM System chroma gains" }
        return ModeData(
            chromaSaturation = mode.getJSONArray("chmSaturation").ints(6, -512..511),
            chromaHue = mode.getJSONArray("chmHue").ints(6, -512..511),
            cbGain = cbGain,
            crGain = crGain,
            tables = tables,
            naturalVisionEnableMask = nv.getInt("enableMask").also { require(it in 0..0xFFF) },
            naturalVisionHue = hue,
            naturalVisionSaturation = saturation,
            naturalVisionLuma = luma,
            naturalVisionOffset = offset,
        )
    }

    private fun JSONArray.ints(size: Int, range: IntRange): IntArray {
        require(length() == size) { "Expected $size values, found ${length()}" }
        return IntArray(size) { getInt(it).also { value -> require(value in range) { "Value $value outside $range" } } }
    }
}
