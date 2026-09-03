package com.hinnka.mycamera.model

import androidx.annotation.Keep
import com.google.gson.Gson
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.raw.HncsFilmCurveMode
import com.hinnka.mycamera.raw.HncsRenderIntent
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawDenoiseDefaults
import com.hinnka.mycamera.raw.RawSharpeningDefaults

/**
 * 拍摄预设。通用画面参数适用于全部拍摄模式，RAW 参数仅适用于专业模式。
 */
@Keep
data class CameraPreset(
    val id: String,
    val name: String,
    val lutId: String?,
    val colorRecipe: ColorRecipeParams, // 仅保留可烘焙色彩微调
    val effects: EffectParams,          // 独立物理效果
    val aspectRatio: String = AspectRatio.RATIO_4_3.name,
    val ultraHdrGainMapEnabled: Boolean = false,
    val frameId: String? = null,
    // 专业模式参数
    val rawDcpId: String? = null,
    val rawDcpIdsByLens: Map<String, String?> = emptyMap(),
    val rawHncsProfileId: String? = null,
    val rawHncsRenderIntent: String = HncsRenderIntent.Standard.assetValue,
    val rawHncsFilmCurveMode: String = HncsFilmCurveMode.Standard.persistedValue,
    val rawRenderingEngine: String = RawRenderingEngine.AdobeCurve.name,
    val rawMaxSharpening: Float = RawSharpeningDefaults.DEFAULT_STRENGTH,
    val rawMaxNoiseReduction: Float = RawDenoiseDefaults.RAW_MAX_LUMA_STRENGTH,
    val rawMaxChromaNoiseReduction: Float = RawDenoiseDefaults.RAW_MAX_CHROMA_STRENGTH,
    val rawExposureCompensation: Float = 0f,
    val rawHighlightsAdjustment: Float = 0f,
    val rawShadowsAdjustment: Float = 0f,
    val rawBlackPointCorrection: Float = 0f,
    val rawWhitePointCorrection: Float = 0f,
    val rawOppoMasterToneMap: Boolean = false,
    val rawSpectralFilmStock: String? = null,
    val rawSpectralFilmPrint: String? = null,
    val rawDROMode: String = "OFF",
    // 专业模式基准色彩校正
    val rawBaselineLutId: String? = null,
    // 是否为内置预设
    val isBuiltIn: Boolean = false
) {
    fun toJson(): String = gson.toJson(normalizedForPersistence())

    fun withoutLegacyHdf(): CameraPreset {
        return copy(
            colorRecipe = colorRecipe.copy(halation = 0f),
            effects = effects.copy(hdf = 0f)
        )
    }

    fun rawDcpIdForLens(lensId: String?): String? {
        val normalizedLensId = lensId?.takeIf { it.isNotBlank() } ?: return rawDcpId
        return if (rawDcpIdsByLens.containsKey(normalizedLensId)) {
            rawDcpIdsByLens[normalizedLensId]
        } else {
            rawDcpId
        }
    }

    fun hasRawDcpSelection(): Boolean {
        return rawDcpId != null || rawDcpIdsByLens.values.any { it != null }
    }

    /**
     * 返回该预设依赖的全部 LUT 键，包括主 LUT 与专业模式基准色彩校正 LUT。
     */
    fun referencedLutIds(): List<String> {
        return listOfNotNull(
            normalizeLutId(lutId),
            normalizeLutId(rawBaselineLutId),
        ).distinct()
    }

    /** 返回该预设依赖的全部 DCP 键，包括统一 DCP 与镜头覆盖 DCP。 */
    fun referencedDcpIds(): List<String> {
        return buildList {
            rawDcpId?.takeIf { it.isNotBlank() }?.let(::add)
            rawDcpIdsByLens.values.forEach { dcpId ->
                dcpId?.takeIf { it.isNotBlank() }?.let(::add)
            }
        }.distinct()
    }

    /**
     * 将包内资源键替换为导入后实际生成的资源 ID。
     */
    fun withResolvedContentReferences(
        lutIdsBySourceKey: Map<String, String>,
        resolvedFrameId: String?,
        dcpIdsBySourceKey: Map<String, String> = emptyMap(),
    ): CameraPreset {
        fun resolveLut(sourceKey: String?): String? {
            val normalizedKey = normalizeLutId(sourceKey) ?: return null
            return requireNotNull(lutIdsBySourceKey[normalizedKey]) {
                "Missing resolved LUT key: $normalizedKey"
            }
        }

        fun resolveDcp(sourceKey: String?): String? {
            val normalizedKey = sourceKey?.takeIf { it.isNotBlank() } ?: return null
            return requireNotNull(dcpIdsBySourceKey[normalizedKey]) {
                "Missing resolved DCP key: $normalizedKey"
            }
        }

        return copy(
            lutId = resolveLut(lutId),
            frameId = resolvedFrameId,
            rawDcpId = resolveDcp(rawDcpId),
            rawDcpIdsByLens = rawDcpIdsByLens.mapValues { (_, dcpId) -> resolveDcp(dcpId) },
            rawBaselineLutId = resolveLut(rawBaselineLutId),
        )
    }

    fun normalizedForPersistence(): CameraPreset {
        return withoutLegacyHdf()
            .copy(
                lutId = normalizeLutId(lutId),
                rawDcpId = rawDcpId?.takeIf { it.isNotBlank() },
                rawDcpIdsByLens = normalizeRawDcpIdsByLens(rawDcpIdsByLens),
                rawHncsProfileId = rawHncsProfileId?.takeIf(String::isNotBlank),
                rawHncsRenderIntent = HncsRenderIntent.Standard.assetValue,
                rawHncsFilmCurveMode = HncsFilmCurveMode.fromPersistedValue(
                    rawHncsFilmCurveMode
                ).persistedValue,
                rawMaxSharpening = RawSharpeningDefaults.normalize(rawMaxSharpening),
                rawMaxNoiseReduction = RawDenoiseDefaults.normalize(rawMaxNoiseReduction),
                rawMaxChromaNoiseReduction =
                    RawDenoiseDefaults.normalize(rawMaxChromaNoiseReduction),
                rawExposureCompensation = rawExposureCompensation.coerceIn(-4f, 4f),
                rawHighlightsAdjustment = rawHighlightsAdjustment.coerceIn(-1f, 1f),
                rawShadowsAdjustment = rawShadowsAdjustment.coerceIn(-1f, 1f),
                rawBlackPointCorrection = rawBlackPointCorrection.coerceIn(-1f, 1f),
                rawWhitePointCorrection = rawWhitePointCorrection.coerceIn(-1f, 1f),
                rawOppoMasterToneMap = rawOppoMasterToneMap,
            )
    }

    companion object {
        private val gson = Gson()

        internal fun normalizeLutId(lutId: String?): String? {
            return lutId?.takeIf { it.isNotBlank() && it != "none" }
        }

        internal fun normalizeRawDcpIdsByLens(rawDcpIdsByLens: Map<String, String?>): Map<String, String?> {
            return rawDcpIdsByLens
                .filterKeys { it.isNotBlank() }
                .mapValues { (_, dcpId) -> dcpId?.takeIf { it.isNotBlank() } }
                .toSortedMap()
        }

        // 场景默认预设
        val BUILT_IN_PRESETS = listOf(
            CameraPreset(
                id = "builtin_default",
                name = "builtin_default",
                lutId = null,
                colorRecipe = ColorRecipeParams.DEFAULT,
                effects = EffectParams.DEFAULT,
                frameId = null,
                rawDcpId = null,
                rawDROMode = "DR100",
                isBuiltIn = true
            ),
            CameraPreset(
                id = "builtin_hasselblad_natural",
                name = "builtin_hasselblad_natural",
                lutId = null,
                colorRecipe = ColorRecipeParams.DEFAULT.copy(
                    masterCurvePoints = floatArrayOf(
                        0f, 0f,
                        0.2784f, 0.2392f,
                        0.7216f, 0.7569f,
                        1f, 1f
                    )
                ),
                effects = EffectParams.DEFAULT,
                rawRenderingEngine = RawRenderingEngine.HncsCcm.name,
                isBuiltIn = true
            ),
            CameraPreset(
                id = "builtin_portrait",
                name = "builtin_portrait",
                lutId = "standard",
                colorRecipe = ColorRecipeParams.DEFAULT.copy(
                    exposure = 0.2f,
                ),
                effects = EffectParams.DEFAULT,
                frameId = "polaroid",
                rawDcpId = null,
                rawDROMode = "DR100",
                isBuiltIn = true
            ),
            CameraPreset(
                id = "builtin_leica_m9_moment",
                name = "builtin_leica_m9_moment",
                lutId = "leica_m9",
                colorRecipe = ColorRecipeParams.DEFAULT.copy(
                    exposure = -0.3f,
                    saturation = 0.9f,
                    color = 0.12f,
                    primaryRedSaturation = 0.06f,
                    primaryBlueSaturation = 0.04f,
                    masterCurvePoints = floatArrayOf(
                        0.0f, 0.0f, 0.25f, 0.24f, 0.66f, 0.74f, 1.0f, 1.0f
                    )
                ),
                effects = EffectParams.DEFAULT.copy(
                    vignette = -0.2f,
                ),
                frameId = "leica",
                rawDcpId = null,
                rawDROMode = "DR100",
                isBuiltIn = true
            ),
            CameraPreset(
                id = "builtin_cinematic",
                name = "builtin_cinematic",
                lutId = "ricoh_yellow",
                colorRecipe = ColorRecipeParams.DEFAULT.copy(
                    shadows = -0.08f,
                    highlights = 0.05f
                ),
                effects = EffectParams.DEFAULT,
                frameId = "xpan",
                aspectRatio = AspectRatio.XPAN.name,
                rawDcpId = null,
                rawDROMode = "DR100",
                isBuiltIn = true
            ),
            CameraPreset(
                id = "builtin_classic_film",
                name = "builtin_classic_film",
                lutId = null,
                colorRecipe = ColorRecipeParams.DEFAULT.copy(
                    temperature = 0.08f,
                    contrast = 1.05f
                ),
                effects = EffectParams.DEFAULT.copy(
                    vignette = -0.25f,
                    filmGrain = 0.25f,
                    halation = 0.25f,
                ),
                frameId = "time",
                rawDcpId = null,
                rawRenderingEngine = RawRenderingEngine.Spektrafilm.name,
                rawSpectralFilmStock = "kodak_gold_200",
                rawSpectralFilmPrint = "kodak_2383",
                rawDROMode = "OFF",
                isBuiltIn = true
            ),
            CameraPreset(
                id = "builtin_monochrome",
                name = "builtin_monochrome",
                lutId = "monochrome",
                colorRecipe = ColorRecipeParams.DEFAULT.copy(
                    contrast = 1.2f
                ),
                effects = EffectParams.DEFAULT,
                frameId = "black_border",
                rawDcpId = null,
                rawDROMode = "DR100",
                isBuiltIn = true
            ),
        )

        fun fromJson(json: String): CameraPreset? = CameraPresetJsonCodec.fromJson(json)

        fun listFromJson(json: String): List<CameraPreset> = CameraPresetJsonCodec.listFromJson(json)

        fun listToJson(list: List<CameraPreset>): String = gson.toJson(list.map { it.normalizedForPersistence() })
    }
}
