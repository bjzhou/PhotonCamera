package com.hinnka.mycamera.gallery

import android.content.Context
import android.graphics.ColorSpace
import android.graphics.Rect
import android.net.Uri
import android.os.Build
import androidx.exifinterface.media.ExifInterface
import com.hinnka.mycamera.camera.AspectRatio
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import org.json.JSONObject
import android.util.Log
import com.hinnka.mycamera.raw.RawMetadata
import java.text.SimpleDateFormat
import java.util.*
import kotlin.math.log2

/**
 * 照片元数据
 *
 * 保存 LUT、边框水印、编辑信息和拍摄参数，用于非破坏性编辑和边框水印渲染
 */
data class PhotoMetadata(
    val version: Int = 11,  // Added multiple exposure metadata
    // 编辑配置
    val lutId: String? = null,
    // 色彩配方配置
    val colorRecipeParams: ColorRecipeParams? = null,
    // 软件处理参数（降噪/锐化）
    val sharpening: Float? = null,
    val noiseReduction: Float? = null,
    val chromaNoiseReduction: Float? = null,
    // 边框水印配置
    val frameId: String? = null,
    // 图片尺寸
    val width: Int = 0,
    val height: Int = 0,
    val ratio: AspectRatio? = null,
    val cropRegion: Rect? = null,
    val rotation: Int = 0,
    // 拍摄信息
    val deviceModel: String? = null,
    val brand: String? = null,
    val dateTaken: Long? = null,
    val location: String? = null,
    // GPS（可选）
    val latitude: Double? = null,
    val longitude: Double? = null,
    val altitude: Double? = null,
    val iso: Int? = null,
    val shutterSpeed: String? = null,
    val focalLength: String? = null,
    val focalLength35mm: String? = null,
    val aperture: String? = null,
    val exposureBias: Float? = null,
    val isImported: Boolean = false,
    val sourceUri: String? = null, // 原始系统相册 URI (用于关联)
    // 边框水印自定义
    val customProperties: Map<String, String> = emptyMap(),
    // 导出到系统相册的 URI 列表
    val exportedUris: List<String> = emptyList(),
    // 计算摄影光圈与焦点
    val computationalAperture: Float? = null,
    val focusPointX: Float? = null,
    val focusPointY: Float? = null,
    val postCropRegion: Rect? = null,
    // Live Photo 演示时间戳 (us)
    val presentationTimestampUs: Long? = null,
    // DRO 模式
    val droMode: String? = null,
    val software: String? = null,
    val isMirrored: Boolean = false,
    val colorSpace: ColorSpace.Named = ColorSpace.Named.SRGB,
    val manualHdrEffectEnabled: Boolean = false,
    val hasEmbeddedGainmap: Boolean = false,
    val dynamicRangeProfile: String? = null,
    val captureMode: String? = null,
    val multipleExposureFrameCount: Int? = null
) {
    /**
     * 将元数据转换为 CaptureInfo，用于写入 EXIF
     */
    fun toCaptureInfo(): com.hinnka.mycamera.camera.CaptureInfo {
        return com.hinnka.mycamera.camera.CaptureInfo(
            iso = iso,
            make = brand ?: Build.MANUFACTURER,
            model = deviceModel ?: Build.MODEL,
            captureTime = dateTaken ?: System.currentTimeMillis(),
            imageWidth = width,
            imageHeight = height,
            aperture = aperture?.substringAfter("/")?.toFloatOrNull(),
            focalLength = focalLength?.substringBefore("mm")?.toFloatOrNull(),
            focalLength35mm = focalLength35mm?.substringBefore("mm")?.toIntOrNull(),
            exposureTime = parseExposureTime(shutterSpeed),
            software = software ?: "PhotonCamera",
            latitude = latitude,
            longitude = longitude,
            altitude = altitude
        )
    }

    private fun parseExposureTime(s: String?): Long? {
        if (s == null) return null
        return try {
            if (s.contains("/")) {
                val clean = s.substringBefore("s").substringBefore("\"")
                val parts = clean.split("/")
                val numerator = parts[0].toDouble()
                val denominator = parts[1].toDouble()
                (numerator / denominator * 1_000_000_000).toLong()
            } else {
                val clean = s.substringBefore("s").substringBefore("\"")
                (clean.toDouble() * 1_000_000_000).toLong()
            }
        } catch (e: Exception) {
            null
        }
    }

    val lv: Float
        get() {
            val aperture = aperture?.substringAfter("/")?.toFloatOrNull() ?: return 0f
            val shutterSpeed = parseExposureTime(shutterSpeed)?.let { it * 1f / 1_000_000_000L } ?: return 0f
            val iso = iso ?: return 0f
            val ev = log2((aperture * aperture) / shutterSpeed)
            return ev - log2(iso / 100f)
        }

    /**
     * 分辨率字符串 (用于边框水印显示)
     */
    val resolution: String
        get() = "${width}x${height}"

    fun toJson(): String {
        return JSONObject().apply {
            put("version", version)
            put("lutId", lutId ?: JSONObject.NULL)
            // 色彩配方配置
            if (colorRecipeParams != null) {
                put("colorRecipeParams", JSONObject().apply {
                    put("exposure", colorRecipeParams.exposure.toDouble())
                    put("contrast", colorRecipeParams.contrast.toDouble())
                    put("saturation", colorRecipeParams.saturation.toDouble())
                    put("temperature", colorRecipeParams.temperature.toDouble())
                    put("tint", colorRecipeParams.tint.toDouble())
                    put("fade", colorRecipeParams.fade.toDouble())
                    put("vibrance", colorRecipeParams.color.toDouble())
                    put("highlights", colorRecipeParams.highlights.toDouble())
                    put("shadows", colorRecipeParams.shadows.toDouble())
                    put("toneToe", colorRecipeParams.toneToe.toDouble())
                    put("toneShoulder", colorRecipeParams.toneShoulder.toDouble())
                    put("tonePivot", colorRecipeParams.tonePivot.toDouble())
                    put("paletteX", colorRecipeParams.paletteX.toDouble())
                    put("paletteY", colorRecipeParams.paletteY.toDouble())
                    put("paletteDensity", colorRecipeParams.paletteDensity.toDouble())
                    put("filmGrain", colorRecipeParams.filmGrain.toDouble())
                    put("vignette", colorRecipeParams.vignette.toDouble())
                    put("bleachBypass", colorRecipeParams.bleachBypass.toDouble())
                    put("halation", colorRecipeParams.halation.toDouble())
                    put("chromaticAberration", colorRecipeParams.chromaticAberration.toDouble())
                    put("noise", colorRecipeParams.noise.toDouble())
                    put("lowRes", colorRecipeParams.lowRes.toDouble())
                    put("skinHue", colorRecipeParams.skinHue.toDouble())
                    put("skinChroma", colorRecipeParams.skinChroma.toDouble())
                    put("skinLightness", colorRecipeParams.skinLightness.toDouble())
                    put("redHue", colorRecipeParams.redHue.toDouble())
                    put("redChroma", colorRecipeParams.redChroma.toDouble())
                    put("redLightness", colorRecipeParams.redLightness.toDouble())
                    put("orangeHue", colorRecipeParams.orangeHue.toDouble())
                    put("orangeChroma", colorRecipeParams.orangeChroma.toDouble())
                    put("orangeLightness", colorRecipeParams.orangeLightness.toDouble())
                    put("yellowHue", colorRecipeParams.yellowHue.toDouble())
                    put("yellowChroma", colorRecipeParams.yellowChroma.toDouble())
                    put("yellowLightness", colorRecipeParams.yellowLightness.toDouble())
                    put("greenHue", colorRecipeParams.greenHue.toDouble())
                    put("greenChroma", colorRecipeParams.greenChroma.toDouble())
                    put("greenLightness", colorRecipeParams.greenLightness.toDouble())
                    put("cyanHue", colorRecipeParams.cyanHue.toDouble())
                    put("cyanChroma", colorRecipeParams.cyanChroma.toDouble())
                    put("cyanLightness", colorRecipeParams.cyanLightness.toDouble())
                    put("blueHue", colorRecipeParams.blueHue.toDouble())
                    put("blueChroma", colorRecipeParams.blueChroma.toDouble())
                    put("blueLightness", colorRecipeParams.blueLightness.toDouble())
                    put("purpleHue", colorRecipeParams.purpleHue.toDouble())
                    put("purpleChroma", colorRecipeParams.purpleChroma.toDouble())
                    put("purpleLightness", colorRecipeParams.purpleLightness.toDouble())
                    put("magentaHue", colorRecipeParams.magentaHue.toDouble())
                    put("magentaChroma", colorRecipeParams.magentaChroma.toDouble())
                    put("magentaLightness", colorRecipeParams.magentaLightness.toDouble())
                    put("lutIntensity", colorRecipeParams.lutIntensity.toDouble())
                })
            } else {
                put("colorRecipeParams", JSONObject.NULL)
            }
            // 软件处理参数
            put("sharpening", sharpening?.toDouble() ?: JSONObject.NULL)
            put("noiseReduction", noiseReduction?.toDouble() ?: JSONObject.NULL)
            put("chromaNoiseReduction", chromaNoiseReduction?.toDouble() ?: JSONObject.NULL)

            put("frameId", frameId ?: JSONObject.NULL)
            put("width", width)
            put("height", height)
            put("ratio", ratio?.getDisplayName() ?: JSONObject.NULL)
            put(
                "cropRegion", if (cropRegion != null) {
                    JSONObject().apply {
                        put("left", cropRegion.left)
                        put("top", cropRegion.top)
                        put("right", cropRegion.right)
                        put("bottom", cropRegion.bottom)
                    }
                } else {
                    JSONObject.NULL
                })
            put(
                "postCropRegion", if (postCropRegion != null) {
                    JSONObject().apply {
                        put("left", postCropRegion.left)
                        put("top", postCropRegion.top)
                        put("right", postCropRegion.right)
                        put("bottom", postCropRegion.bottom)
                    }
                } else {
                    JSONObject.NULL
                })
            put("rotation", rotation)
            // 拍摄信息
            put("deviceModel", deviceModel ?: JSONObject.NULL)
            put("brand", brand ?: JSONObject.NULL)
            put("dateTaken", dateTaken ?: JSONObject.NULL)
            put("location", location ?: JSONObject.NULL)
            put("latitude", latitude ?: JSONObject.NULL)
            put("longitude", longitude ?: JSONObject.NULL)
            put("altitude", altitude ?: JSONObject.NULL)
            put("iso", iso ?: JSONObject.NULL)
            put("shutterSpeed", shutterSpeed ?: JSONObject.NULL)
            put("focalLength", focalLength ?: JSONObject.NULL)
            put("focalLength35mm", focalLength35mm ?: JSONObject.NULL)
            put("aperture", aperture ?: JSONObject.NULL)
            put("exposureBias", exposureBias ?: JSONObject.NULL)
            put("isImported", isImported)
            put("sourceUri", sourceUri ?: JSONObject.NULL)
            // 边框水印自定义
            val customPropsObj = JSONObject()
            customProperties.forEach { (k, v) -> customPropsObj.put(k, v) }
            put("customProperties", customPropsObj)
            // 导出的 URI 列表
            put("exportedUris", org.json.JSONArray(exportedUris))

            // 计算摄影光圈与焦点
            put("computationalAperture", computationalAperture?.toDouble() ?: JSONObject.NULL)
            put("focusPointX", focusPointX?.toDouble() ?: JSONObject.NULL)
            put("focusPointY", focusPointY?.toDouble() ?: JSONObject.NULL)

            // Live Photo 时间戳
            put("presentationTimestampUs", presentationTimestampUs ?: JSONObject.NULL)
            // DRO 模式
            put("droMode", droMode ?: JSONObject.NULL)
            put("software", software ?: JSONObject.NULL)
            put("isMirrored", isMirrored)
            put("colorSpace", colorSpace.name)
            put("manualHdrEffectEnabled", manualHdrEffectEnabled)
            put("hasEmbeddedGainmap", hasEmbeddedGainmap)
            put("dynamicRangeProfile", dynamicRangeProfile ?: JSONObject.NULL)
            put("captureMode", captureMode ?: JSONObject.NULL)
            put("multipleExposureFrameCount", multipleExposureFrameCount ?: JSONObject.NULL)
        }.toString(2)
    }

    /**
     * 从 RawMetadata 补齐信息
     */
    fun merge(raw: RawMetadata): PhotoMetadata {
        return copy(
            iso = raw.iso.takeIf { it > 0 } ?: iso,
            shutterSpeed = formatShutterSpeed(raw.shutterSpeed).takeIf { it.isNotEmpty() } ?: shutterSpeed,
            aperture = formatAperture(raw.aperture).takeIf { it.isNotEmpty() } ?: aperture,
            exposureBias = raw.exposureBias,
            droMode = raw.droMode.name,
            width = raw.width.takeIf { it > 0 } ?: width,
            height = raw.height.takeIf { it > 0 } ?: height
        )
    }

    private fun formatShutterSpeed(shutterSpeedNs: Long): String {
        if (shutterSpeedNs <= 0) return ""
        val seconds = shutterSpeedNs / 1_000_000_000.0
        return if (seconds >= 1.0) {
            "${seconds.toInt()}\""
        } else {
            "1/${(1.0 / seconds).toInt()}"
        }
    }

    private fun formatAperture(aperture: Float): String {
        if (aperture <= 0) return ""
        return "f/${String.format("%.1f", aperture)}"
    }

    companion object {
        private const val TAG = "PhotoMetadata"

        fun fromJson(json: String): PhotoMetadata? {
            return try {
                val obj = JSONObject(json)

                // 解析 exportedUris 列表
                val exportedUris = mutableListOf<String>()
                val urisArray = obj.optJSONArray("exportedUris")
                if (urisArray != null) {
                    for (i in 0 until urisArray.length()) {
                        exportedUris.add(urisArray.getString(i))
                    }
                }

                // 解析色彩配方参数
                val colorRecipeParamsObj = obj.optJSONObject("colorRecipeParams")
                val colorRecipeParams = if (colorRecipeParamsObj != null && !obj.isNull("colorRecipeParams")) {
                    ColorRecipeParams(
                        exposure = colorRecipeParamsObj.optDouble("exposure", 0.0).toFloat(),
                        contrast = colorRecipeParamsObj.optDouble("contrast", 1.0).toFloat(),
                        saturation = colorRecipeParamsObj.optDouble("saturation", 1.0).toFloat(),
                        temperature = colorRecipeParamsObj.optDouble("temperature", 0.0).toFloat(),
                        tint = colorRecipeParamsObj.optDouble("tint", 0.0).toFloat(),
                        fade = colorRecipeParamsObj.optDouble("fade", 0.0).toFloat(),
                        color = colorRecipeParamsObj.optDouble("vibrance", 0.0).toFloat(),
                        highlights = colorRecipeParamsObj.optDouble("highlights", 0.0).toFloat(),
                        shadows = colorRecipeParamsObj.optDouble("shadows", 0.0).toFloat(),
                        toneToe = colorRecipeParamsObj.optDouble("toneToe", 0.0).toFloat(),
                        toneShoulder = colorRecipeParamsObj.optDouble("toneShoulder", 0.0).toFloat(),
                        tonePivot = colorRecipeParamsObj.optDouble("tonePivot", 0.0).toFloat(),
                        paletteX = colorRecipeParamsObj.optDouble("paletteX", 0.5).toFloat(),
                        paletteY = colorRecipeParamsObj.optDouble("paletteY", 0.5).toFloat(),
                        paletteDensity = colorRecipeParamsObj.optDouble("paletteDensity", 1.0).toFloat(),
                        filmGrain = colorRecipeParamsObj.optDouble("filmGrain", 0.0).toFloat(),
                        vignette = colorRecipeParamsObj.optDouble("vignette", 0.0).toFloat(),
                        bleachBypass = colorRecipeParamsObj.optDouble("bleachBypass", 0.0).toFloat(),
                        halation = colorRecipeParamsObj.optDouble("halation", 0.0).toFloat(),
                        chromaticAberration = colorRecipeParamsObj.optDouble("chromaticAberration", 0.0).toFloat(),
                        noise = colorRecipeParamsObj.optDouble("noise", 0.0).toFloat(),
                        lowRes = colorRecipeParamsObj.optDouble("lowRes", 0.0).toFloat(),
                        skinHue = colorRecipeParamsObj.optDouble("skinHue", 0.0).toFloat(),
                        skinChroma = colorRecipeParamsObj.optDouble("skinChroma", 0.0).toFloat(),
                        skinLightness = colorRecipeParamsObj.optDouble("skinLightness", 0.0).toFloat(),
                        redHue = colorRecipeParamsObj.optDouble("redHue", 0.0).toFloat(),
                        redChroma = colorRecipeParamsObj.optDouble("redChroma", 0.0).toFloat(),
                        redLightness = colorRecipeParamsObj.optDouble("redLightness", 0.0).toFloat(),
                        orangeHue = colorRecipeParamsObj.optDouble("orangeHue", 0.0).toFloat(),
                        orangeChroma = colorRecipeParamsObj.optDouble("orangeChroma", 0.0).toFloat(),
                        orangeLightness = colorRecipeParamsObj.optDouble("orangeLightness", 0.0).toFloat(),
                        yellowHue = colorRecipeParamsObj.optDouble("yellowHue", 0.0).toFloat(),
                        yellowChroma = colorRecipeParamsObj.optDouble("yellowChroma", 0.0).toFloat(),
                        yellowLightness = colorRecipeParamsObj.optDouble("yellowLightness", 0.0).toFloat(),
                        greenHue = colorRecipeParamsObj.optDouble("greenHue", 0.0).toFloat(),
                        greenChroma = colorRecipeParamsObj.optDouble("greenChroma", 0.0).toFloat(),
                        greenLightness = colorRecipeParamsObj.optDouble("greenLightness", 0.0).toFloat(),
                        cyanHue = colorRecipeParamsObj.optDouble("cyanHue", 0.0).toFloat(),
                        cyanChroma = colorRecipeParamsObj.optDouble("cyanChroma", 0.0).toFloat(),
                        cyanLightness = colorRecipeParamsObj.optDouble("cyanLightness", 0.0).toFloat(),
                        blueHue = colorRecipeParamsObj.optDouble("blueHue", 0.0).toFloat(),
                        blueChroma = colorRecipeParamsObj.optDouble("blueChroma", 0.0).toFloat(),
                        blueLightness = colorRecipeParamsObj.optDouble("blueLightness", 0.0).toFloat(),
                        purpleHue = colorRecipeParamsObj.optDouble("purpleHue", 0.0).toFloat(),
                        purpleChroma = colorRecipeParamsObj.optDouble("purpleChroma", 0.0).toFloat(),
                        purpleLightness = colorRecipeParamsObj.optDouble("purpleLightness", 0.0).toFloat(),
                        magentaHue = colorRecipeParamsObj.optDouble("magentaHue", 0.0).toFloat(),
                        magentaChroma = colorRecipeParamsObj.optDouble("magentaChroma", 0.0).toFloat(),
                        magentaLightness = colorRecipeParamsObj.optDouble("magentaLightness", 0.0).toFloat(),
                        lutIntensity = colorRecipeParamsObj.optDouble("lutIntensity", 1.0).toFloat()
                    )
                } else {
                    null
                }

                PhotoMetadata(
                    version = obj.optInt("version", 1),
                    lutId = if (obj.isNull("lutId")) null else obj.optString("lutId"),
                    colorRecipeParams = colorRecipeParams,
                    sharpening = if (obj.isNull("sharpening")) null else obj.optDouble("sharpening").toFloat(),
                    noiseReduction = if (obj.isNull("noiseReduction")) null else obj.optDouble("noiseReduction")
                        .toFloat(),
                    chromaNoiseReduction = if (obj.isNull("chromaNoiseReduction")) null else obj.optDouble("chromaNoiseReduction")
                        .toFloat(),
                    frameId = if (obj.isNull("frameId")) null else obj.optString("frameId"),
                    width = obj.optInt("width", 0),
                    height = obj.optInt("height", 0),
                    ratio = if (obj.isNull("ratio")) null else AspectRatio.fromString(obj.optString("ratio")),
                    cropRegion = if (obj.isNull("cropRegion")) null else {
                        val cropObj = obj.getJSONObject("cropRegion")
                        Rect(
                            cropObj.optInt("left", 0),
                            cropObj.optInt("top", 0),
                            cropObj.optInt("right", 0),
                            cropObj.optInt("bottom", 0)
                        )
                    },
                    postCropRegion = if (obj.isNull("postCropRegion")) null else {
                        val pcObj = obj.getJSONObject("postCropRegion")
                        Rect(
                            pcObj.getInt("left"),
                            pcObj.getInt("top"),
                            pcObj.getInt("right"),
                            pcObj.getInt("bottom")
                        )
                    },
                    rotation = obj.optInt("rotation", 0),
                    // 拍摄信息
                    deviceModel = if (obj.isNull("deviceModel")) null else obj.optString("deviceModel"),
                    brand = if (obj.isNull("brand")) null else obj.optString("brand"),
                    dateTaken = if (obj.isNull("dateTaken")) null else obj.optLong("dateTaken"),
                    location = if (obj.isNull("location")) null else obj.optString("location"),
                    latitude = if (obj.isNull("latitude")) null else obj.optDouble("latitude"),
                    longitude = if (obj.isNull("longitude")) null else obj.optDouble("longitude"),
                    altitude = if (obj.isNull("altitude")) null else obj.optDouble("altitude"),
                    iso = if (obj.isNull("iso")) null else obj.optInt("iso"),
                    shutterSpeed = if (obj.isNull("shutterSpeed")) null else obj.optString("shutterSpeed"),
                    focalLength = if (obj.isNull("focalLength")) null else obj.optString("focalLength"),
                    focalLength35mm = if (obj.isNull("focalLength35mm")) null else obj.optString("focalLength35mm"),
                    aperture = if (obj.isNull("aperture")) null else obj.optString("aperture"),
                    exposureBias = if (obj.isNull("exposureBias")) null else obj.optDouble("exposureBias").toFloat(),
                    isImported = obj.optBoolean("isImported", false),
                    sourceUri = if (obj.isNull("sourceUri")) null else obj.optString("sourceUri"),
                    customProperties = mutableMapOf<String, String>().apply {
                        val customPropsObj = obj.optJSONObject("customProperties")
                        customPropsObj?.keys()?.forEach { key ->
                            put(key, customPropsObj.getString(key))
                        }
                    },
                    exportedUris = exportedUris,
                    computationalAperture = if (obj.isNull("computationalAperture")) null else obj.optDouble("computationalAperture")
                        .toFloat(),
                    focusPointX = if (obj.isNull("focusPointX")) null else obj.optDouble("focusPointX").toFloat(),
                    focusPointY = if (obj.isNull("focusPointY")) null else obj.optDouble("focusPointY").toFloat(),
                    presentationTimestampUs = if (obj.isNull("presentationTimestampUs")) null else obj.optLong("presentationTimestampUs"),
                    droMode = if (obj.isNull("droMode")) null else obj.optString("droMode"),
                    software = if (obj.isNull("software")) null else obj.optString("software"),
                    isMirrored = obj.optBoolean("isMirrored", false),
                    colorSpace = (if (obj.isNull("colorSpace")) null else obj.optString("colorSpace"))?.let {
                        ColorSpace.Named.valueOf(
                            it
                        )
                    } ?: ColorSpace.Named.SRGB,
                    manualHdrEffectEnabled = obj.optBoolean("manualHdrEffectEnabled", false),
                    hasEmbeddedGainmap = obj.optBoolean("hasEmbeddedGainmap", false),
                    dynamicRangeProfile = if (obj.isNull("dynamicRangeProfile")) null else obj.optString("dynamicRangeProfile"),
                    captureMode = if (obj.isNull("captureMode")) null else obj.optString("captureMode"),
                    multipleExposureFrameCount = if (obj.isNull("multipleExposureFrameCount")) null else obj.optInt("multipleExposureFrameCount"),
                )
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to parse JSON", e)
                null
            }
        }

        /**
         * 从系统信息创建默认元数据
         */
        fun createDefault(width: Int, height: Int): PhotoMetadata {
            return PhotoMetadata(
                deviceModel = Build.MODEL,
                brand = Build.MANUFACTURER.replaceFirstChar { it.uppercase() },
                dateTaken = System.currentTimeMillis(),
                width = width,
                height = height
            )
        }

        /**
         * 从指定的 URI 加载 EXIF 元数据
         */
        fun fromUri(context: Context, uri: Uri): PhotoMetadata {
            return try {
                context.contentResolver.openInputStream(uri)?.use { inputStream ->
                    val exif = ExifInterface(inputStream)

                    val model = exif.getAttribute(ExifInterface.TAG_MODEL)
                    val make = exif.getAttribute(ExifInterface.TAG_MAKE)
                    val dateStr = exif.getAttribute(ExifInterface.TAG_DATETIME_ORIGINAL) ?: exif.getAttribute(
                        ExifInterface.TAG_DATETIME
                    )

                    val iso = exif.getAttributeInt(ExifInterface.TAG_ISO_SPEED_RATINGS, 0).takeIf { it > 0 }
                        ?: exif.getAttributeInt(ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY, 0).takeIf { it > 0 }

                    val shutterSpeed = exif.getAttribute(ExifInterface.TAG_EXPOSURE_TIME)?.let {
                        try {
                            val time = it.toDouble()
                            if (time >= 1.0) {
                                "${time.toInt()}\""
                            } else {
                                "1/${(1.0 / time).toInt()}"
                            }
                        } catch (e: Exception) {
                            it
                        }
                    }

                    val aperture = exif.getAttributeDouble(ExifInterface.TAG_F_NUMBER, 0.0).takeIf { it > 0 }
                        ?.let { "f/${String.format("%.1f", it)}" }
                    val focalLength = exif.getAttributeDouble(ExifInterface.TAG_FOCAL_LENGTH, 0.0).let {
                        "${it.toInt()}mm"
                    }
                    val focalLength35mm = exif.getAttributeInt(ExifInterface.TAG_FOCAL_LENGTH_IN_35MM_FILM, 0)
                        .takeIf { it > 0 }?.let { "${it}mm" }

                    val width = exif.getAttributeInt(ExifInterface.TAG_IMAGE_WIDTH, 0)
                        .let { if (it == 0) exif.getAttributeInt(ExifInterface.TAG_PIXEL_X_DIMENSION, 0) else it }
                    val height = exif.getAttributeInt(ExifInterface.TAG_IMAGE_LENGTH, 0)
                        .let { if (it == 0) exif.getAttributeInt(ExifInterface.TAG_PIXEL_Y_DIMENSION, 0) else it }

                    val dateTaken = dateStr?.let {
                        try {
                            SimpleDateFormat("yyyy:MM:dd HH:mm:ss", Locale.US).parse(it)?.time
                        } catch (e: Exception) {
                            null
                        }
                    }

                    val software = exif.getAttribute(ExifInterface.TAG_SOFTWARE)

                    val latLong = exif.latLong
                    val latitude = latLong?.get(0)
                    val longitude = latLong?.get(1)
                    val altitude = exif.getAltitude(0.0)
                        .takeIf { it != 0.0 || exif.getAttribute(ExifInterface.TAG_GPS_ALTITUDE) != null }

                    PhotoMetadata(
                        deviceModel = model,
                        brand = make?.replaceFirstChar { it.uppercase() },
                        dateTaken = dateTaken,
                        iso = iso,
                        shutterSpeed = shutterSpeed,
                        focalLength = focalLength,
                        focalLength35mm = focalLength35mm,
                        aperture = aperture,
                        width = width,
                        height = height,
                        latitude = latitude,
                        longitude = longitude,
                        altitude = altitude,
                        software = software,
                        isImported = true
                    )
                } ?: createDefault(0, 0)
            } catch (e: Exception) {
                PLog.e(TAG, "Failed to load EXIF from $uri", e)
                createDefault(0, 0)
            }
        }
    }
}
