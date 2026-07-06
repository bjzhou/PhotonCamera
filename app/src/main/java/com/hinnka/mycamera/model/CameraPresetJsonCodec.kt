package com.hinnka.mycamera.model

import com.google.gson.JsonElement
import com.google.gson.JsonObject
import com.google.gson.JsonParser
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.raw.RawRenderingEngine
import com.hinnka.mycamera.raw.RawProcessingPreferences

/**
 * Tolerant preset reader: only current CameraPreset fields are parsed.
 * Unknown fields are ignored and missing fields use current defaults.
 */
internal object CameraPresetJsonCodec {
    fun fromJson(json: String): CameraPreset? {
        if (json.isBlank()) return null
        return runCatching {
            parsePreset(JsonParser.parseString(json))
        }.getOrNull()
    }

    fun listFromJson(json: String): List<CameraPreset> {
        if (json.isBlank()) return emptyList()
        return runCatching {
            val root = JsonParser.parseString(json)
            if (!root.isJsonArray) return@runCatching emptyList()

            root.asJsonArray.mapNotNull { element ->
                runCatching { parsePreset(element) }.getOrNull()
            }
        }.getOrDefault(emptyList())
    }

    private fun parsePreset(element: JsonElement): CameraPreset? {
        if (!element.isJsonObject) return null
        val obj = element.asJsonObject
        val id = obj.stringOrNull("id")?.takeIf { it.isNotBlank() } ?: return null
        val name = obj.stringOrNull("name")?.takeIf { it.isNotBlank() } ?: id

        return CameraPreset(
            id = id,
            name = name,
            lutId = obj.stringOrNull("lutId"),
            colorRecipe = parseColorRecipe(obj.get("colorRecipe")),
            effects = parseEffects(obj.get("effects")),
            aspectRatio = parseAspectRatio(obj.stringOrNull("aspectRatio")),
            useRaw = obj.boolean("useRaw", false),
            useMFNR = obj.boolean("useMFNR", false),
            useHdrComposition = obj.boolean("useHdrComposition", false),
            useMFSR = obj.boolean("useMFSR", false),
            frameId = obj.stringOrNull("frameId"),
            rawDcpId = obj.stringOrNull("rawDcpId"),
            rawDcpIdsByLens = parseRawDcpIdsByLens(obj.get("rawDcpIdsByLens")),
            rawRenderingEngine = parseRawRenderingEngine(
                obj.stringOrNull("rawRenderingEngine") ?: obj.stringOrNull("rawColorEngine")
            ),
            rawGooglePixelToneMap = obj.boolean("rawGooglePixelToneMap", false),
            rawOppoMasterToneMap = obj.boolean("rawOppoMasterToneMap", false),
            rawSpectralFilmStock = obj.stringOrNull("rawSpectralFilmStock"),
            rawSpectralFilmPrint = obj.stringOrNull("rawSpectralFilmPrint"),
            rawDROMode = parseDroMode(obj.stringOrNull("rawDROMode")),
            jpgBaselineLutId = obj.stringOrNull("jpgBaselineLutId"),
            rawBaselineLutId = obj.stringOrNull("rawBaselineLutId"),
            phantomBaselineLutId = obj.stringOrNull("phantomBaselineLutId"),
            isBuiltIn = obj.boolean("isBuiltIn", false)
        ).normalizedForPersistence()
    }

    private fun parseAspectRatio(value: String?): String {
        return value?.let { AspectRatio.valueOfOrNull(it)?.name } ?: AspectRatio.RATIO_4_3.name
    }

    private fun parseRawRenderingEngine(value: String?): String {
        return RawRenderingEngine.fromPersistedName(value).name
    }

    private fun parseDroMode(value: String?): String {
        return RawProcessingPreferences.DROMode.fromPersistedName(value).name
    }

    private fun parseRawDcpIdsByLens(element: JsonElement?): Map<String, String?> {
        if (element == null || element.isJsonNull || !element.isJsonObject) return emptyMap()
        val parsed = buildMap {
            element.asJsonObject.entrySet().forEach { (lensId, value) ->
                if (lensId.isBlank()) return@forEach
                put(
                    lensId,
                    if (value.isJsonNull) null else runCatching { value.asString }.getOrNull()
                )
            }
        }
        return CameraPreset.normalizeRawDcpIdsByLens(parsed)
    }

    private fun parseColorRecipe(element: JsonElement?): ColorRecipeParams {
        if (element == null || !element.isJsonObject) return ColorRecipeParams.DEFAULT
        val obj = element.asJsonObject
        val default = ColorRecipeParams.DEFAULT
        return ColorRecipeParams(
            exposure = obj.float("exposure", default.exposure),
            contrast = obj.float("contrast", default.contrast),
            saturation = obj.float("saturation", default.saturation),
            temperature = obj.float("temperature", default.temperature),
            tint = obj.float("tint", default.tint),
            fade = obj.float("fade", default.fade),
            color = obj.float("color", default.color),
            highlights = obj.float("highlights", default.highlights),
            shadows = obj.float("shadows", default.shadows),
            toneToe = obj.float("toneToe", default.toneToe),
            toneShoulder = obj.float("toneShoulder", default.toneShoulder),
            tonePivot = obj.float("tonePivot", default.tonePivot),
            paletteX = obj.float("paletteX", default.paletteX),
            paletteY = obj.float("paletteY", default.paletteY),
            paletteDensity = obj.float("paletteDensity", default.paletteDensity),
            filmGrain = obj.float("filmGrain", default.filmGrain),
            vignette = obj.float("vignette", default.vignette),
            bleachBypass = obj.float("bleachBypass", default.bleachBypass),
            bloom = obj.float("bloom", default.bloom),
            softLight = obj.float("softLight", default.softLight),
            halation = default.halation,
            redHalation = obj.float("redHalation", default.redHalation),
            chromaticAberration = obj.float("chromaticAberration", default.chromaticAberration),
            noise = obj.float("noise", default.noise),
            lowRes = obj.float("lowRes", default.lowRes),
            skinHue = obj.float("skinHue", default.skinHue),
            skinChroma = obj.float("skinChroma", default.skinChroma),
            skinLightness = obj.float("skinLightness", default.skinLightness),
            redHue = obj.float("redHue", default.redHue),
            redChroma = obj.float("redChroma", default.redChroma),
            redLightness = obj.float("redLightness", default.redLightness),
            orangeHue = obj.float("orangeHue", default.orangeHue),
            orangeChroma = obj.float("orangeChroma", default.orangeChroma),
            orangeLightness = obj.float("orangeLightness", default.orangeLightness),
            yellowHue = obj.float("yellowHue", default.yellowHue),
            yellowChroma = obj.float("yellowChroma", default.yellowChroma),
            yellowLightness = obj.float("yellowLightness", default.yellowLightness),
            greenHue = obj.float("greenHue", default.greenHue),
            greenChroma = obj.float("greenChroma", default.greenChroma),
            greenLightness = obj.float("greenLightness", default.greenLightness),
            cyanHue = obj.float("cyanHue", default.cyanHue),
            cyanChroma = obj.float("cyanChroma", default.cyanChroma),
            cyanLightness = obj.float("cyanLightness", default.cyanLightness),
            blueHue = obj.float("blueHue", default.blueHue),
            blueChroma = obj.float("blueChroma", default.blueChroma),
            blueLightness = obj.float("blueLightness", default.blueLightness),
            purpleHue = obj.float("purpleHue", default.purpleHue),
            purpleChroma = obj.float("purpleChroma", default.purpleChroma),
            purpleLightness = obj.float("purpleLightness", default.purpleLightness),
            magentaHue = obj.float("magentaHue", default.magentaHue),
            magentaChroma = obj.float("magentaChroma", default.magentaChroma),
            magentaLightness = obj.float("magentaLightness", default.magentaLightness),
            primaryRedHue = obj.float("primaryRedHue", default.primaryRedHue),
            primaryRedSaturation = obj.float("primaryRedSaturation", default.primaryRedSaturation),
            primaryRedLightness = obj.float("primaryRedLightness", default.primaryRedLightness),
            primaryGreenHue = obj.float("primaryGreenHue", default.primaryGreenHue),
            primaryGreenSaturation = obj.float("primaryGreenSaturation", default.primaryGreenSaturation),
            primaryGreenLightness = obj.float("primaryGreenLightness", default.primaryGreenLightness),
            primaryBlueHue = obj.float("primaryBlueHue", default.primaryBlueHue),
            primaryBlueSaturation = obj.float("primaryBlueSaturation", default.primaryBlueSaturation),
            primaryBlueLightness = obj.float("primaryBlueLightness", default.primaryBlueLightness),
            lutIntensity = obj.float("lutIntensity", default.lutIntensity),
            remarks = obj.stringOrNull("remarks") ?: default.remarks,
            masterCurvePoints = obj.floatArrayOrNull("masterCurvePoints") ?: default.masterCurvePoints,
            redCurvePoints = obj.floatArrayOrNull("redCurvePoints") ?: default.redCurvePoints,
            greenCurvePoints = obj.floatArrayOrNull("greenCurvePoints") ?: default.greenCurvePoints,
            blueCurvePoints = obj.floatArrayOrNull("blueCurvePoints") ?: default.blueCurvePoints
        )
    }

    private fun parseEffects(element: JsonElement?): EffectParams {
        if (element == null || !element.isJsonObject) return EffectParams.DEFAULT
        val obj = element.asJsonObject
        val default = EffectParams.DEFAULT
        return EffectParams(
            vignette = obj.float("vignette", default.vignette),
            filmGrain = obj.float("filmGrain", default.filmGrain),
            bloom = obj.float("bloom", default.bloom),
            softLight = obj.float("softLight", default.softLight),
            hdf = default.hdf,
            halation = obj.float("halation", default.halation),
            chromaticAberration = obj.float("chromaticAberration", default.chromaticAberration),
            noise = obj.float("noise", default.noise),
            lowRes = obj.float("lowRes", default.lowRes)
        )
    }

    private fun JsonObject.stringOrNull(name: String): String? {
        val element = get(name) ?: return null
        if (element.isJsonNull) return null
        return runCatching { element.asString }.getOrNull()
    }

    private fun JsonObject.boolean(name: String, default: Boolean): Boolean {
        val element = get(name) ?: return default
        if (element.isJsonNull) return default
        return runCatching { element.asBoolean }.getOrDefault(default)
    }

    private fun JsonObject.float(name: String, default: Float): Float {
        val element = get(name) ?: return default
        if (element.isJsonNull) return default
        val value = runCatching { element.asFloat }.getOrNull() ?: return default
        return if (value.isFinite()) value else default
    }

    private fun JsonObject.floatArrayOrNull(name: String): FloatArray? {
        val element = get(name) ?: return null
        if (element.isJsonNull || !element.isJsonArray) return null
        val values = ArrayList<Float>(element.asJsonArray.size())
        element.asJsonArray.forEach { item ->
            val value = runCatching { item.asFloat }.getOrNull()
            if (value == null || !value.isFinite()) return null
            values.add(value)
        }
        return values.takeIf { it.isNotEmpty() }?.toFloatArray()
    }
}
