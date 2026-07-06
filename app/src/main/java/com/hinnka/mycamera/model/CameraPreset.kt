package com.hinnka.mycamera.model

import androidx.annotation.Keep
import com.google.gson.Gson
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.raw.RawRenderingEngine

/**
 * 拍摄预设组合（用户自定义档位配置）
 */
@Keep
data class CameraPreset(
    val id: String,
    val name: String,
    val lutId: String?,
    val colorRecipe: ColorRecipeParams, // 仅保留可烘焙色彩微调
    val effects: EffectParams,          // 独立物理效果
    val aspectRatio: String = AspectRatio.RATIO_4_3.name,
    val useRaw: Boolean = false,
    val useMFNR: Boolean = false,
    val useHdrComposition: Boolean = false,
    val useMFSR: Boolean = false,
    val frameId: String? = null,
    // Quick RAW 功能
    val rawDcpId: String? = null,
    val rawDcpIdsByLens: Map<String, String?> = emptyMap(),
    val rawRenderingEngine: String = RawRenderingEngine.AdobeCurve.name,
    val rawGooglePixelToneMap: Boolean = false,
    val rawOppoMasterToneMap: Boolean = false,
    val rawSpectralFilmStock: String? = null,
    val rawSpectralFilmPrint: String? = null,
    val rawDROMode: String = "OFF",
    // 基准色彩校正
    val jpgBaselineLutId: String? = null,
    val rawBaselineLutId: String? = null,
    val phantomBaselineLutId: String? = null,
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

    fun withSupportedCaptureCombination(): CameraPreset {
        val resolvedUseMFSR = useMFSR && !useRaw && !useMFNR
        return if (resolvedUseMFSR == useMFSR) {
            this
        } else {
            copy(useMFSR = resolvedUseMFSR)
        }
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

    fun normalizedForPersistence(): CameraPreset {
        return withSupportedCaptureCombination()
            .withoutLegacyHdf()
            .copy(
                rawDcpIdsByLens = normalizeRawDcpIdsByLens(rawDcpIdsByLens),
                rawGooglePixelToneMap = rawGooglePixelToneMap && !rawOppoMasterToneMap
            )
    }

    companion object {
        private val gson = Gson()

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
                useRaw = false,
                useMFNR = false,
                rawDcpId = null,
                rawDROMode = "DR100",
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
                useRaw = false,
                useMFNR = true,
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
                useRaw = true,
                useMFNR = false,
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
                useRaw = true,
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
                useRaw = true,
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
                useRaw = false,
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
