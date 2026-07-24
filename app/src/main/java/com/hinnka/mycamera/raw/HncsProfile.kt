package com.hinnka.mycamera.raw

import android.content.Context
import com.hinnka.mycamera.utils.PLog
import org.json.JSONArray
import org.json.JSONObject
import java.io.ByteArrayInputStream
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.security.MessageDigest
import java.util.LinkedHashMap
import java.util.zip.InflaterInputStream

data class HncsProfileInfo(
    val id: String,
    val displayName: String,
    val assetPath: String,
    val sourceFile: String,
    val sourceSha256: String,
    val phocusVersion: String,
    val intents: Set<HncsRenderIntent>
)

enum class HncsRenderIntent(val assetValue: String) {
    Standard("standard"),
    Reproduction("reproduction");

    companion object {
        fun fromAssetValue(value: String): HncsRenderIntent? =
            entries.firstOrNull { it.assetValue.equals(value, ignoreCase = true) }

        fun fromPersistedValue(
            value: String?,
            fallback: HncsRenderIntent = Standard
        ): HncsRenderIntent {
            if (value.isNullOrBlank()) return fallback
            return entries.firstOrNull {
                it.name.equals(value, ignoreCase = true) ||
                    it.assetValue.equals(value, ignoreCase = true)
            } ?: fallback
        }
    }
}

internal data class HncsColorMap(
    val width: Int,
    val height: Int,
    val cbStart: Float,
    val crStart: Float,
    val cbEnd: Float,
    val crEnd: Float,
    val divFactor: Float,
    /** Row-major output Cb/Cr pairs in the original Phocus grid units. */
    val values: FloatArray
) {
    val isValid: Boolean
        get() = width >= 2 &&
            height >= 2 &&
            cbStart.isFinite() &&
            crStart.isFinite() &&
            cbEnd > cbStart &&
            crEnd > crStart &&
            divFactor.isFinite() &&
            divFactor > 0f &&
            values.size == width * height * 2 &&
            values.all(Float::isFinite)

    fun isCompatibleWith(other: HncsColorMap): Boolean =
        width == other.width &&
            height == other.height &&
            cbStart == other.cbStart &&
            crStart == other.crStart &&
            cbEnd == other.cbEnd &&
            crEnd == other.crEnd &&
            divFactor == other.divFactor
}

internal data class HncsGammaParameters(
    /**
     * AddHNCSFilters only inserts CGammaFilter for a new-format CImageCorrection
     * (stored version >= 4 with its gamma-stage flag set). PhotonCamera has no
     * imported Phocus correction object, so the real Phocus defaults
     * (stored version 2, flag false) keep this stage disabled.
     */
    val filterEnabled: Boolean,
    val gamma: Float,
    val hdrMaxGain: Float,
    val hdrRgbLimit: Float
)

internal data class HncsColorCorrectionParameters(
    val grayThresholds: FloatArray,
    val lowLightDesaturation: FloatArray
)

internal data class HncsFilmCurve(
    val texture: FloatArray,
    val filmCurveType: Int,
    val companding: Int,
    val assetPath: String,
    val assetSha256: String,
    val sourceFloatFnv1a64: String,
    val sourceLibrarySha256: String
)

internal data class HncsRenderPlan(
    val profileId: String?,
    val profileName: String,
    val sourceFile: String?,
    val sourceSha256: String?,
    val sourceKey: String,
    val colorTemperature: Float?,
    val cameraToHncsMatrix: FloatArray?,
    /**
     * CXMLLut v* calibration values after its value * 0.5 + 1.0 decryption.
     * These are camera-channel gains that neutralize the RAW camera domain
     * before the profile's white-balanced camera-RGB-to-XYZ matrix.
     */
    val profileNeutralGains: FloatArray?,
    val colorMap: HncsColorMap?,
    val rgbToYccMatrix: FloatArray,
    val yccToRgbMatrix: FloatArray,
    val colorCorrection: HncsColorCorrectionParameters,
    val renderIntent: HncsRenderIntent,
    val filmCurveTexture: FloatArray,
    val filmCurveType: Int,
    val filmCurveCompanding: Int,
    val filmCurveAssetPath: String,
    val filmCurveAssetSha256: String,
    val filmCurveSourceFloatFnv1a64: String,
    val filmCurveSourceLibrarySha256: String,
    val filmCurveGain: Float,
    val gamma: HncsGammaParameters
)

private data class FloatReference(val offset: Int, val count: Int)

private data class HncsTableAnchor(
    val sourceKey: String,
    val intent: HncsRenderIntent,
    val temperature: Float,
    val values: FloatArray
)

private data class HncsMatrixAnchor(
    val sourceKey: String,
    val temperature: Float,
    val values: FloatArray
)

private data class HncsNeutralAnchor(
    val sourceKey: String,
    val temperature: Float,
    val values: FloatArray
)

private data class ParsedHncsProfile(
    val info: HncsProfileInfo,
    val version3: Boolean,
    val width: Int,
    val height: Int,
    val cbStart: Float,
    val crStart: Float,
    val cbEnd: Float,
    val crEnd: Float,
    val divFactor: Float,
    val tables: List<HncsTableAnchor>,
    val matrices: List<HncsMatrixAnchor>,
    val neutrals: List<HncsNeutralAnchor>
)

/**
 * Loads only deterministic assets generated from Phocus Colormap XML.
 *
 * LUT and matrix interpolation are driven by the measured RAW white-point CCT.
 * No profile is selected implicitly: the caller must provide an exact profile id.
 */
class HncsProfileManager(private val context: Context) {
    private val hncsFilmCurve: HncsFilmCurve by lazy(::loadHncsFilmCurve)

    fun getAvailableProfiles(): List<HncsProfileInfo> = manifestProfiles()

    internal fun createCcmRenderPlan(): HncsRenderPlan =
        createCcmRuntimePlan(hncsFilmCurve)

    internal fun resolveLutRenderPlan(
        colorTemperature: Float?,
        requestedProfileId: String?,
        renderIntent: HncsRenderIntent = HncsRenderIntent.Standard
    ): HncsRenderPlan? {
        val profileId = requestedProfileId?.takeIf(String::isNotBlank) ?: run {
            PLog.e(TAG, "HNCS LUT requires an explicitly selected camera profile")
            return null
        }
        val measuredTemperature = colorTemperature?.takeIf { it.isFinite() && it > 0f } ?: run {
            PLog.e(TAG, "HNCS LUT requires a measured RAW white-point color temperature")
            return null
        }
        // CXMLLut::CalculateLUT and CalculateMatrix both receive an integer Kelvin value.
        val temperature = measuredTemperature.toInt().toFloat()
        val info = manifestProfiles().firstOrNull { it.id == profileId } ?: run {
            PLog.e(TAG, "Unknown HNCS camera profile id=$profileId")
            return null
        }
        if (renderIntent !in info.intents) {
            PLog.e(TAG, "HNCS profile id=$profileId has no ${renderIntent.assetValue} tables")
            return null
        }
        val profile = parseProfile(info) ?: return null
        val cacheKey = "$profileId|${renderIntent.assetValue}|${temperature.toInt()}"
        synchronized(renderPlanCache) {
            renderPlanCache[cacheKey]?.let { return it }
        }

        val matrixTemperature = temperature.coerceIn(
            MATRIX_MIN_TEMPERATURE,
            if (profile.version3) VERSION_3_MAX_TEMPERATURE else MATRIX_MAX_TEMPERATURE
        )
        val tableTemperature = temperature.coerceIn(
            TABLE_MIN_TEMPERATURE,
            if (profile.version3) VERSION_3_MAX_TEMPERATURE else TABLE_MAX_TEMPERATURE
        )
        val cameraToXyzD50 = interpolateAnchors(
            profile.matrices,
            matrixTemperature,
            HncsMatrixAnchor::temperature,
            HncsMatrixAnchor::values
        ) ?: run {
            PLog.e(TAG, "HNCS profile id=$profileId has no valid camera matrices")
            return null
        }
        val profileNeutralGains = interpolateAnchors(
            profile.neutrals,
            matrixTemperature,
            HncsNeutralAnchor::temperature,
            HncsNeutralAnchor::values
        ) ?: run {
            PLog.e(TAG, "HNCS profile id=$profileId has no valid camera neutral gains")
            return null
        }
        val cameraMatrix = profileMatrixToHncs(
            whiteBalancedCameraToXyzD50 = cameraToXyzD50,
            profileNeutralGains = profileNeutralGains
        ) ?: run {
            PLog.e(TAG, "HNCS profile id=$profileId produced an invalid camera-to-HNCS matrix")
            return null
        }
        val tableValues = interpolateAnchors(
            profile.tables.filter { it.intent == renderIntent },
            tableTemperature,
            HncsTableAnchor::temperature,
            HncsTableAnchor::values
        ) ?: run {
            PLog.e(TAG, "HNCS profile id=$profileId has no valid ${renderIntent.assetValue} LUT")
            return null
        }
        val colorMap = HncsColorMap(
            width = profile.width,
            height = profile.height,
            cbStart = profile.cbStart,
            crStart = profile.crStart,
            cbEnd = profile.cbEnd,
            crEnd = profile.crEnd,
            divFactor = profile.divFactor,
            values = tableValues
        )
        if (!colorMap.isValid) {
            PLog.e(TAG, "HNCS profile id=$profileId produced an invalid color map")
            return null
        }
        val plan = baseRenderPlan(
            profile = profile,
            colorTemperature = temperature,
            cameraMatrix = cameraMatrix,
            profileNeutralGains = profileNeutralGains,
            colorMap = colorMap,
            renderIntent = renderIntent,
            sourceKey = cacheKey
        )
        synchronized(renderPlanCache) {
            renderPlanCache[cacheKey] = plan
        }
        return plan
    }

    private fun baseRenderPlan(
        profile: ParsedHncsProfile?,
        colorTemperature: Float?,
        cameraMatrix: FloatArray?,
        profileNeutralGains: FloatArray?,
        colorMap: HncsColorMap?,
        renderIntent: HncsRenderIntent,
        sourceKey: String
    ) = HncsRenderPlan(
        profileId = profile?.info?.id,
        profileName = profile?.info?.displayName ?: CCM_PROFILE_NAME,
        sourceFile = profile?.info?.sourceFile,
        sourceSha256 = profile?.info?.sourceSha256,
        sourceKey = sourceKey,
        colorTemperature = colorTemperature,
        cameraToHncsMatrix = cameraMatrix,
        profileNeutralGains = profileNeutralGains,
        colorMap = colorMap,
        rgbToYccMatrix = HNCS_RGB_TO_YCC.copyOf(),
        yccToRgbMatrix = HNCS_YCC_TO_RGB.copyOf(),
        colorCorrection = FULL_SUPPORT_COLOR_CORRECTION,
        renderIntent = renderIntent,
        filmCurveTexture = hncsFilmCurve.texture,
        filmCurveType = hncsFilmCurve.filmCurveType,
        filmCurveCompanding = hncsFilmCurve.companding,
        filmCurveAssetPath = hncsFilmCurve.assetPath,
        filmCurveAssetSha256 = hncsFilmCurve.assetSha256,
        filmCurveSourceFloatFnv1a64 = hncsFilmCurve.sourceFloatFnv1a64,
        filmCurveSourceLibrarySha256 = hncsFilmCurve.sourceLibrarySha256,
        filmCurveGain = FILM_CURVE_GAIN,
        gamma = HASSELBLAD_GAMMA
    )

    private fun loadHncsFilmCurve(): HncsFilmCurve {
        val encoded = context.assets.open(HNCS_FILM_CURVE_ASSET).use { it.readBytes() }
        require(sha256(encoded).equals(HNCS_FILM_CURVE_ASSET_SHA256, ignoreCase = true)) {
            "HNCS FilmCurve asset SHA-256 mismatch"
        }
        require(encoded.size == HNCS_FILM_CURVE_HEADER_BYTES + CURVE_SAMPLE_COUNT * Short.SIZE_BYTES)
        val buffer = ByteBuffer.wrap(encoded).order(ByteOrder.LITTLE_ENDIAN)
        val magic = ByteArray(HNCS_FILM_CURVE_MAGIC.size)
        buffer.get(magic)
        require(magic.contentEquals(HNCS_FILM_CURVE_MAGIC))
        require(buffer.int == HNCS_FILM_CURVE_SCHEMA_VERSION)
        val filmCurveType = buffer.int
        val companding = buffer.int
        val sampleCount = buffer.int
        val codeValueMax = buffer.int
        val sourceFloatFnv1a64 = java.lang.Long.toUnsignedString(buffer.long, 16).padStart(16, '0')
        val sourceLibrarySha256 = ByteArray(32).also { buffer.get(it) }
            .joinToString(separator = "") { byte -> "%02x".format(byte.toInt() and 0xff) }

        require(filmCurveType == HNCS_FILM_CURVE_TYPE)
        require(companding == HNCS_COMPANDING)
        require(sampleCount == CURVE_SAMPLE_COUNT)
        require(codeValueMax == HNCS_FILM_CURVE_CODE_VALUE_MAX)
        require(sourceFloatFnv1a64.equals(HNCS_FILM_CURVE_SOURCE_FLOAT_FNV1A64, ignoreCase = true))
        require(
            sourceLibrarySha256.equals(
                HNCS_FILM_CURVE_SOURCE_LIBRARY_SHA256,
                ignoreCase = true
            )
        )
        require(buffer.remaining() == sampleCount * Short.SIZE_BYTES)

        var previous = -1
        val samples = IntArray(sampleCount) { index ->
            val value = buffer.short.toInt() and 0xffff
            require(value >= previous) {
                "HNCS FilmCurve is not monotonic at sample $index"
            }
            previous = value
            value
        }
        require(samples.first() == 0)
        require(samples.last() == codeValueMax)
        val texture = FloatArray(sampleCount * 4) { index ->
            samples[index / 4].toFloat() / codeValueMax.toFloat()
        }
        return HncsFilmCurve(
            texture = texture,
            filmCurveType = filmCurveType,
            companding = companding,
            assetPath = HNCS_FILM_CURVE_ASSET,
            assetSha256 = HNCS_FILM_CURVE_ASSET_SHA256,
            sourceFloatFnv1a64 = sourceFloatFnv1a64,
            sourceLibrarySha256 = sourceLibrarySha256
        )
    }

    private fun profileMatrixToHncs(
        whiteBalancedCameraToXyzD50: FloatArray,
        profileNeutralGains: FloatArray
    ): FloatArray? {
        if (whiteBalancedCameraToXyzD50.size != 9 ||
            whiteBalancedCameraToXyzD50.any { !it.isFinite() } ||
            profileNeutralGains.size != 3 ||
            profileNeutralGains.any { !it.isFinite() || it <= 0f }
        ) {
            return null
        }
        // Phocus CXMLLut stores m* in the white-balanced camera domain and v*
        // as encrypted per-channel neutral gains. Keep the complete M*diag(v)
        // transform in the render plan. HncsCameraDomain factors v back out at
        // execution time so it can apply Phocus' pre-matrix headroom clamp,
        // while preserving this composite matrix as the calibration invariant.
        val rawCameraToXyzD50 = whiteBalancedCameraToXyzD50.copyOf()
        for (row in 0 until 3) {
            for (column in 0 until 3) {
                rawCameraToXyzD50[row * 3 + column] *= profileNeutralGains[column]
            }
        }
        val result = DngSdkColorSpec.multiplyMatrix3x3(
            HNCS_XYZ_D50_TO_RGB,
            rawCameraToXyzD50
        )
        return result.takeIf { matrix ->
            matrix.size == 9 && matrix.all(Float::isFinite)
        }
    }

    private fun manifestProfiles(): List<HncsProfileInfo> {
        synchronized(profileInfoLock) {
            profileInfoCache?.let { return it }
        }
        val parsed = runCatching {
            val root = context.assets.open(MANIFEST_ASSET).bufferedReader().use {
                JSONObject(it.readText())
            }
            require(root.getInt("schemaVersion") == SCHEMA_VERSION)
            require(root.getString("format") == MAGIC_TEXT)
            val profiles = root.getJSONArray("profiles")
            List(profiles.length()) { index ->
                val item = profiles.getJSONObject(index)
                require(item.getBoolean("renderable"))
                val intents = item.getJSONArray("intents").toStringSet().mapNotNullTo(linkedSetOf()) {
                    HncsRenderIntent.fromAssetValue(it)
                }
                require(intents.isNotEmpty())
                HncsProfileInfo(
                    id = item.getString("id"),
                    displayName = item.getString("displayName"),
                    assetPath = "$ASSET_DIRECTORY/${item.getString("asset")}",
                    sourceFile = item.getString("sourceFile"),
                    sourceSha256 = item.getString("sourceSha256"),
                    phocusVersion = item.getString("phocusVersion"),
                    intents = intents
                )
            }
        }.onFailure { error ->
            PLog.e(TAG, "Unable to read the HNCS asset manifest", error)
        }.getOrDefault(emptyList())
        synchronized(profileInfoLock) {
            profileInfoCache = parsed
        }
        return parsed
    }

    private fun parseProfile(info: HncsProfileInfo): ParsedHncsProfile? {
        synchronized(profileCache) {
            profileCache[info.id]?.let { return it }
        }
        return runCatching {
            val encoded = context.assets.open(info.assetPath).use { it.readBytes() }
            require(encoded.size > MAGIC.size + Int.SIZE_BYTES)
            require(encoded.copyOfRange(0, MAGIC.size).contentEquals(MAGIC))
            val envelope = ByteBuffer.wrap(encoded).order(ByteOrder.LITTLE_ENDIAN)
            envelope.position(MAGIC.size)
            val headerLength = envelope.int
            require(headerLength > 0 && headerLength <= encoded.size - MAGIC.size - Int.SIZE_BYTES)
            val headerBytes = ByteArray(headerLength)
            envelope.get(headerBytes)
            val header = JSONObject(String(headerBytes, Charsets.UTF_8))
            require(header.getInt("schemaVersion") == SCHEMA_VERSION)
            require(header.getString("id") == info.id)
            require(header.getString("matrixSpace") == MATRIX_SPACE)
            require(header.getString("neutralVectorRole") == NEUTRAL_VECTOR_ROLE)
            val source = header.getJSONObject("source")
            require(source.getString("file") == info.sourceFile)
            require(source.getString("sha256").equals(info.sourceSha256, ignoreCase = true))
            require(header.getBoolean("renderable"))

            val compressed = encoded.copyOfRange(envelope.position(), encoded.size)
            val payloadBytes = InflaterInputStream(ByteArrayInputStream(compressed)).use {
                it.readBytes()
            }
            val payloadInfo = header.getJSONObject("payload")
            require(payloadBytes.size == payloadInfo.getInt("uncompressedBytes"))
            require(
                sha256(payloadBytes).equals(payloadInfo.getString("sha256"), ignoreCase = true)
            )
            val payload = ByteBuffer.wrap(payloadBytes)
                .order(ByteOrder.LITTLE_ENDIAN)
                .asFloatBuffer()
            require(payload.limit() == payloadInfo.getInt("floatCount"))

            fun readFloats(owner: JSONObject): FloatArray {
                val reference = owner.getJSONObject("values").toFloatReference()
                require(reference.offset >= 0)
                require(reference.count > 0)
                require(reference.offset + reference.count <= payload.limit())
                val result = FloatArray(reference.count)
                val view = payload.duplicate()
                view.position(reference.offset)
                view.get(result)
                require(result.all(Float::isFinite))
                return result
            }

            val grid = header.getJSONObject("grid")
            val tables = header.getJSONArray("tables").objects().map { table ->
                HncsTableAnchor(
                    sourceKey = table.getString("sourceKey"),
                    intent = HncsRenderIntent.fromAssetValue(table.getString("intent"))
                        ?: error("unsupported HNCS render intent"),
                    temperature = table.finitePositiveFloat("temperature"),
                    values = readFloats(table)
                )
            }
            val matrices = header.getJSONArray("matrices").objects().map { matrix ->
                HncsMatrixAnchor(
                    sourceKey = matrix.getString("sourceKey"),
                    temperature = matrix.finitePositiveFloat("temperature"),
                    values = readFloats(matrix).also { require(it.size == 9) }
                )
            }
            val neutrals = header.getJSONArray("neutralVectors").objects().mapNotNull { neutral ->
                if (neutral.isNull("temperature")) {
                    null
                } else {
                    HncsNeutralAnchor(
                        sourceKey = neutral.getString("sourceKey"),
                        temperature = neutral.finitePositiveFloat("temperature"),
                        values = readFloats(neutral).also { require(it.size == 3) }
                    )
                }
            }
            val parsed = ParsedHncsProfile(
                info = info,
                version3 = header.getString("phocusVersion") == VERSION_3,
                width = grid.getInt("width"),
                height = grid.getInt("height"),
                cbStart = grid.finiteFloat("cbStart"),
                crStart = grid.finiteFloat("crStart"),
                cbEnd = grid.finiteFloat("cbEnd"),
                crEnd = grid.finiteFloat("crEnd"),
                divFactor = grid.finitePositiveFloat("divFactor"),
                tables = tables,
                matrices = matrices,
                neutrals = neutrals
            )
            val expectedValues = parsed.width * parsed.height * 2
            require(parsed.width == GRID_WIDTH && parsed.height == GRID_HEIGHT)
            require(parsed.tables.isNotEmpty() && parsed.tables.all { it.values.size == expectedValues })
            require(parsed.matrices.size >= 2)
            require(parsed.neutrals.size >= 2)
            require(parsed.info.intents.all { intent ->
                parsed.tables.count { it.intent == intent } >= 2
            })
            parsed
        }.onSuccess { profile ->
            synchronized(profileCache) {
                profileCache[info.id] = profile
            }
        }.onFailure { error ->
            PLog.e(TAG, "Unable to validate HNCS profile ${info.assetPath}", error)
        }.getOrNull()
    }

    private fun <T> interpolateAnchors(
        anchors: List<T>,
        temperature: Float,
        temperatureOf: (T) -> Float,
        valuesOf: (T) -> FloatArray
    ): FloatArray? {
        val sorted = anchors.sortedBy(temperatureOf)
        if (sorted.isEmpty()) return null
        if (sorted.size == 1 || temperature <= temperatureOf(sorted.first())) {
            return valuesOf(sorted.first()).copyOf()
        }
        if (temperature >= temperatureOf(sorted.last())) {
            return valuesOf(sorted.last()).copyOf()
        }
        for (index in 0 until sorted.lastIndex) {
            val first = sorted[index]
            val second = sorted[index + 1]
            val firstTemperature = temperatureOf(first)
            val secondTemperature = temperatureOf(second)
            if (temperature in firstTemperature..secondTemperature) {
                val firstValues = valuesOf(first)
                val secondValues = valuesOf(second)
                require(firstValues.size == secondValues.size)
                val weight =
                    ((temperature - firstTemperature) / (secondTemperature - firstTemperature))
                        .coerceIn(0f, 1f)
                return FloatArray(firstValues.size) { valueIndex ->
                    firstValues[valueIndex] * (1f - weight) +
                        secondValues[valueIndex] * weight
                }
            }
        }
        return null
    }

    private fun JSONObject.finiteFloat(key: String): Float =
        getDouble(key).toFloat().also { require(it.isFinite()) }

    private fun JSONObject.finitePositiveFloat(key: String): Float =
        finiteFloat(key).also { require(it > 0f) }

    private fun JSONObject.toFloatReference() = FloatReference(
        offset = getInt("offset"),
        count = getInt("count")
    )

    private fun JSONArray.objects(): List<JSONObject> =
        List(length()) { index -> getJSONObject(index) }

    private fun JSONArray.toStringSet(): Set<String> =
        List(length()) { index -> getString(index) }.toSet()

    private fun sha256(data: ByteArray): String =
        MessageDigest.getInstance("SHA-256")
            .digest(data)
            .joinToString(separator = "") { byte ->
                "%02x".format(byte.toInt() and 0xff)
            }

    companion object {
        private const val TAG = "HncsProfileManager"
        private const val ASSET_DIRECTORY = "hncs"
        private const val MANIFEST_ASSET = "$ASSET_DIRECTORY/manifest.json"
        private const val MAGIC_TEXT = "HNCSMAP1"
        private val MAGIC = MAGIC_TEXT.toByteArray(Charsets.US_ASCII)
        private const val SCHEMA_VERSION = 2
        private const val VERSION_3 = "3.0"
        private const val MATRIX_SPACE = "white-balanced-camera-rgb-to-xyz-d50"
        private const val NEUTRAL_VECTOR_ROLE = "raw-camera-channel-gains"
        private const val GRID_WIDTH = 105
        private const val GRID_HEIGHT = 89
        private const val TABLE_MIN_TEMPERATURE = 2000f
        private const val TABLE_MAX_TEMPERATURE = 6200f
        private const val MATRIX_MIN_TEMPERATURE = 2000f
        private const val MATRIX_MAX_TEMPERATURE = 8000f
        private const val VERSION_3_MAX_TEMPERATURE = 10000f
        private const val CCM_PROFILE_NAME = "HNCS CCM"
        private const val PHOCUS_SOURCE_LIBRARY = "libcrosssdk.so"
        private const val HNCS_FILM_CURVE_ASSET =
            "$ASSET_DIRECTORY/filmcurve_type6_companding2.hcurve"
        private const val HNCS_FILM_CURVE_SCHEMA_VERSION = 1
        private const val HNCS_FILM_CURVE_TYPE = 6
        private const val HNCS_COMPANDING = 2
        private const val HNCS_FILM_CURVE_CODE_VALUE_MAX = 65_535
        private const val HNCS_FILM_CURVE_HEADER_BYTES = 68
        private const val HNCS_FILM_CURVE_ASSET_SHA256 =
            "0b26cfdeb578ca21eee5e55e95c4f49ca43ab333e2cea5a011049c07bee4b531"
        private const val HNCS_FILM_CURVE_SOURCE_FLOAT_FNV1A64 = "a7fda12f9d03aa3f"
        private const val HNCS_FILM_CURVE_SOURCE_LIBRARY_SHA256 =
            "4320cacc91faf0ac16b0653760b86f604303162d43c1cad5fe182b73b9eede6b"
        private val HNCS_FILM_CURVE_MAGIC = "HNCURV1\u0000".toByteArray(Charsets.US_ASCII)

        const val CURVE_SAMPLE_COUNT = 65_536
        const val CURVE_TEXTURE_EDGE = 256

        /**
         * CRawColorCorrection::GetColorSpaceChangeMatrix HNCS RGB -> XYZ(D50),
         * recovered at Phocus image 0x30c34e8. Its Y row defines this opponent basis.
         */
        val HNCS_RGB_TO_XYZ_D50 = floatArrayOf(
            0.79767f, 0.13519f, 0.03134f,
            0.28804f, 0.71188f, 0.00009f,
            0.00000f, 0.00000f, 0.82491f
        )
        private val HNCS_XYZ_D50_TO_RGB =
            requireNotNull(DngSdkColorSpec.invertMatrix3x3(HNCS_RGB_TO_XYZ_D50))

        private const val KR = 0.28804f
        private const val KG = 0.71188f
        private const val KB = 0.00009f
        private val HNCS_RGB_TO_YCC = floatArrayOf(
            KR, KG, KB,
            -KR / (2f * (1f - KB)), -KG / (2f * (1f - KB)), 0.5f,
            0.5f, -KG / (2f * (1f - KR)), -KB / (2f * (1f - KR))
        )
        private val HNCS_YCC_TO_RGB =
            requireNotNull(DngSdkColorSpec.invertMatrix3x3(HNCS_RGB_TO_YCC))

        /**
         * CGammaFilter uniforms recovered from Phocus:
         * GammaHasselbladRgb, HDRMaxGain and HasselbladHdrRgbLimit.
         *
         * CCameraImage::AddHNCSFilters guards this filter with
         * CImageCorrection storedVersion >= 4 and a persisted gamma-stage flag.
         * CImageCorrection::SetDefaultValues stores version 2 and clears that
         * flag, which is the only truthful state for a RAW without imported
         * Phocus correction metadata.
         */
        private val HASSELBLAD_GAMMA = HncsGammaParameters(
            filterEnabled = false,
            gamma = 2.19921875f,
            hdrMaxGain = 49.261085510253906f,
            hdrRgbLimit = 5.882924556732178f
        )
        private const val FILM_CURVE_GAIN = 1f

        /**
         * CRawColorCorrection::InitCRawColorCorrection values for FullPhocusSupport cameras:
         * grayLow/grayHigh = 0/0 and low-light (threshold, a, b, c) = (2, 0, 0, 1).
         * The shader handles the zero-width gray interval explicitly, producing the original
         * effective weight of one without relying on a 0/0 GPU result.
         */
        private val FULL_SUPPORT_COLOR_CORRECTION = HncsColorCorrectionParameters(
            grayThresholds = floatArrayOf(0f, 0f),
            lowLightDesaturation = floatArrayOf(2f, 0f, 0f, 1f)
        )

        internal fun createCcmRuntimePlan(filmCurve: HncsFilmCurve) = HncsRenderPlan(
            profileId = null,
            profileName = CCM_PROFILE_NAME,
            sourceFile = PHOCUS_SOURCE_LIBRARY,
            sourceSha256 = HNCS_FILM_CURVE_SOURCE_LIBRARY_SHA256,
            sourceKey =
                "hncs-ccm|$PHOCUS_SOURCE_LIBRARY|$HNCS_FILM_CURVE_SOURCE_LIBRARY_SHA256",
            colorTemperature = null,
            cameraToHncsMatrix = null,
            profileNeutralGains = null,
            colorMap = null,
            rgbToYccMatrix = HNCS_RGB_TO_YCC.copyOf(),
            yccToRgbMatrix = HNCS_YCC_TO_RGB.copyOf(),
            colorCorrection = FULL_SUPPORT_COLOR_CORRECTION,
            renderIntent = HncsRenderIntent.Standard,
            filmCurveTexture = filmCurve.texture,
            filmCurveType = filmCurve.filmCurveType,
            filmCurveCompanding = filmCurve.companding,
            filmCurveAssetPath = filmCurve.assetPath,
            filmCurveAssetSha256 = filmCurve.assetSha256,
            filmCurveSourceFloatFnv1a64 = filmCurve.sourceFloatFnv1a64,
            filmCurveSourceLibrarySha256 = filmCurve.sourceLibrarySha256,
            filmCurveGain = FILM_CURVE_GAIN,
            gamma = HASSELBLAD_GAMMA
        )

        @Volatile
        private var profileInfoCache: List<HncsProfileInfo>? = null
        private val profileInfoLock = Any()
        private val profileCache = mutableMapOf<String, ParsedHncsProfile>()
        private val renderPlanCache = object : LinkedHashMap<String, HncsRenderPlan>(
            8,
            0.75f,
            true
        ) {
            override fun removeEldestEntry(
                eldest: MutableMap.MutableEntry<String, HncsRenderPlan>?
            ): Boolean = size > 8
        }
    }
}
