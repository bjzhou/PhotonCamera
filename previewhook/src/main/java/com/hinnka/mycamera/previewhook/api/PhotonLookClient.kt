package com.hinnka.mycamera.previewhook.api

import android.content.Context
import android.database.ContentObserver
import android.net.Uri
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.os.SystemClock
import android.util.Log
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.raw.ColorSpace
import org.json.JSONObject
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.util.concurrent.Executors

object PhotonLookClient {
    private const val TAG = "codex_lut_chain"
    private const val METHOD_GET_LOOK_SNAPSHOT = "getLookSnapshot"
    private const val MIN_SYNC_INTERVAL_MS = 1_000L

    private const val EXTRA_SCHEMA_VERSION = "schemaVersion"
    private const val EXTRA_LOOK_SIGNATURE = "lookSignature"
    private const val EXTRA_LUT_ID = "lutId"
    private const val EXTRA_LUT_TITLE = "lutTitle"
    private const val EXTRA_LUT_SIZE = "lutSize"
    private const val EXTRA_LUT_DATA_TYPE = "lutDataType"
    private const val EXTRA_LUT_CURVE_ORDINAL = "lutCurveOrdinal"
    private const val EXTRA_LUT_COLOR_SPACE_ORDINAL = "lutColorSpaceOrdinal"
    private const val EXTRA_LUT_PAYLOAD = "lutPayload"
    private const val EXTRA_RECIPE_JSON = "recipeJson"

    private val knownAuthorities = listOf(
        "com.hinnka.mycamera.debug.mgc.look",
        "com.hinnka.mycamera.mgc.look",
        "com.samsung.android.scan3d.debug.mgc.look",
        "com.samsung.android.scan3d.mgc.look",
        "com.meitu.meiyancamera.debug.mgc.look",
        "com.meitu.meiyancamera.mgc.look",
    )

    private val executor = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "PhotonLookClient").apply { isDaemon = true }
    }

    @Volatile
    private var lastAttemptAtMs: Long = 0L

    @Volatile
    private var lastSuccessfulAuthority: String? = null

    @Volatile
    private var observerAuthority: String? = null

    @Volatile
    private var observer: ContentObserver? = null

    @JvmStatic
    fun syncAsync(context: Context?, force: Boolean = false) {
        val appContext = context?.applicationContext ?: return
        executor.execute {
            sync(appContext, force)
        }
    }

    @JvmStatic
    fun sync(context: Context?, force: Boolean = false): Boolean {
        val appContext = context?.applicationContext ?: return false
        val now = SystemClock.elapsedRealtime()
        if (!force && now - lastAttemptAtMs < MIN_SYNC_INTERVAL_MS) {
            return false
        }
        lastAttemptAtMs = now

        val authorities = orderedAuthorities()
        for (authority in authorities) {
            val snapshot = readSnapshot(appContext, authority) ?: continue
            registerObserver(appContext, authority)
            lastSuccessfulAuthority = authority
            val changed = MgcVfeLutRuntime.applyPhotonLook(
                signature = snapshot.signature,
                lutConfig = snapshot.lutConfig,
                recipeParams = snapshot.recipeParams,
            )
            if (changed) {
                Log.d(
                    TAG,
                    "synced Photon look authority=$authority lut=${snapshot.lutId ?: "none"} " +
                        "size=${snapshot.lutConfig?.size ?: 0}"
                )
            }
            return true
        }
        Log.d(TAG, "Photon look provider unavailable")
        return false
    }

    private fun orderedAuthorities(): List<String> {
        val first = lastSuccessfulAuthority
        return if (first == null) {
            knownAuthorities
        } else {
            listOf(first) + knownAuthorities.filterNot { it == first }
        }
    }

    private fun readSnapshot(context: Context, authority: String): PhotonLookSnapshot? {
        val uri = lookUri(authority)
        val bundle = runCatching {
            context.contentResolver.call(uri, METHOD_GET_LOOK_SNAPSHOT, null, null)
        }.getOrElse {
            Log.d(TAG, "Photon look read failed authority=$authority: ${it.message}")
            null
        } ?: return null

        val schemaVersion = bundle.getInt(EXTRA_SCHEMA_VERSION, 0)
        if (schemaVersion <= 0) {
            Log.d(TAG, "Photon look read ignored authority=$authority schema=$schemaVersion")
            return null
        }

        val lutId = bundle.getString(EXTRA_LUT_ID)
        val payload = bundle.getByteArray(EXTRA_LUT_PAYLOAD)
        val lutConfig = buildLutConfig(bundle, payload)
        val recipe = parseRecipe(bundle.getString(EXTRA_RECIPE_JSON))
        val signature = bundle.getString(EXTRA_LOOK_SIGNATURE)
            ?: buildFallbackSignature(lutId, lutConfig, payload, recipe)

        return PhotonLookSnapshot(
            signature = signature,
            lutId = lutId,
            lutConfig = lutConfig,
            recipeParams = recipe,
        )
    }

    private fun buildLutConfig(bundle: Bundle, payload: ByteArray?): LutConfig? {
        val size = bundle.getInt(EXTRA_LUT_SIZE, 0)
        if (size <= 0 || payload == null || payload.isEmpty()) return null

        val dataType = bundle.getInt(EXTRA_LUT_DATA_TYPE, LutConfig.CONFIG_DATA_TYPE_UINT8)
        val title = bundle.getString(EXTRA_LUT_TITLE).orEmpty()
        val curveShaderId = bundle.getInt(EXTRA_LUT_CURVE_ORDINAL, TransferCurve.SRGB.shaderId)
        val colorSpaceOrdinal = bundle.getInt(EXTRA_LUT_COLOR_SPACE_ORDINAL, ColorSpace.SRGB.ordinal)
        return LutConfig(
            size = size,
            byteBuffer = ByteBuffer.allocateDirect(payload.size)
                .order(ByteOrder.nativeOrder())
                .put(payload)
                .apply { position(0) },
            title = title,
            configDataType = dataType,
            curve = TransferCurve.fromShaderId(curveShaderId),
            colorSpace = ColorSpace.entries.getOrElse(colorSpaceOrdinal) { ColorSpace.SRGB },
        ).takeIf { it.isValid() }
    }

    private fun parseRecipe(json: String?): ColorRecipeParams {
        if (json.isNullOrBlank()) return ColorRecipeParams.DEFAULT
        return runCatching {
            val obj = JSONObject(json)
            ColorRecipeParams(
                exposure = obj.optFloat("exposure", 0f),
                contrast = obj.optFloat("contrast", 1f),
                saturation = obj.optFloat("saturation", 1f),
                temperature = obj.optFloat("temperature", 0f),
                tint = obj.optFloat("tint", 0f),
                fade = obj.optFloat("fade", 0f),
                color = obj.optFloat("color", 0f),
                highlights = obj.optFloat("highlights", 0f),
                shadows = obj.optFloat("shadows", 0f),
                toneToe = obj.optFloat("toneToe", 0f),
                toneShoulder = obj.optFloat("toneShoulder", 0f),
                tonePivot = obj.optFloat("tonePivot", 0f),
                paletteX = obj.optFloat("paletteX", 0.5f),
                paletteY = obj.optFloat("paletteY", 0.5f),
                paletteDensity = obj.optFloat("paletteDensity", 1f),
                filmGrain = obj.optFloat("filmGrain", 0f),
                vignette = obj.optFloat("vignette", 0f),
                flash = obj.optFloat("flash", 0f),
                bleachBypass = obj.optFloat("bleachBypass", 0f),
                bloom = obj.optFloat("bloom", 0f),
                softLight = obj.optFloat("softLight", 0f),
                halation = obj.optFloat("halation", 0f),
                redHalation = obj.optFloat("redHalation", 0f),
                chromaticAberration = obj.optFloat("chromaticAberration", 0f),
                noise = obj.optFloat("noise", 0f),
                lowRes = obj.optFloat("lowRes", 0f),
                skinHue = obj.optFloat("skinHue", 0f),
                skinChroma = obj.optFloat("skinChroma", 0f),
                skinLightness = obj.optFloat("skinLightness", 0f),
                redHue = obj.optFloat("redHue", 0f),
                redChroma = obj.optFloat("redChroma", 0f),
                redLightness = obj.optFloat("redLightness", 0f),
                orangeHue = obj.optFloat("orangeHue", 0f),
                orangeChroma = obj.optFloat("orangeChroma", 0f),
                orangeLightness = obj.optFloat("orangeLightness", 0f),
                yellowHue = obj.optFloat("yellowHue", 0f),
                yellowChroma = obj.optFloat("yellowChroma", 0f),
                yellowLightness = obj.optFloat("yellowLightness", 0f),
                greenHue = obj.optFloat("greenHue", 0f),
                greenChroma = obj.optFloat("greenChroma", 0f),
                greenLightness = obj.optFloat("greenLightness", 0f),
                cyanHue = obj.optFloat("cyanHue", 0f),
                cyanChroma = obj.optFloat("cyanChroma", 0f),
                cyanLightness = obj.optFloat("cyanLightness", 0f),
                blueHue = obj.optFloat("blueHue", 0f),
                blueChroma = obj.optFloat("blueChroma", 0f),
                blueLightness = obj.optFloat("blueLightness", 0f),
                purpleHue = obj.optFloat("purpleHue", 0f),
                purpleChroma = obj.optFloat("purpleChroma", 0f),
                purpleLightness = obj.optFloat("purpleLightness", 0f),
                magentaHue = obj.optFloat("magentaHue", 0f),
                magentaChroma = obj.optFloat("magentaChroma", 0f),
                magentaLightness = obj.optFloat("magentaLightness", 0f),
                primaryRedHue = obj.optFloat("primaryRedHue", 0f),
                primaryRedSaturation = obj.optFloat("primaryRedSaturation", 0f),
                primaryRedLightness = obj.optFloat("primaryRedLightness", 0f),
                primaryGreenHue = obj.optFloat("primaryGreenHue", 0f),
                primaryGreenSaturation = obj.optFloat("primaryGreenSaturation", 0f),
                primaryGreenLightness = obj.optFloat("primaryGreenLightness", 0f),
                primaryBlueHue = obj.optFloat("primaryBlueHue", 0f),
                primaryBlueSaturation = obj.optFloat("primaryBlueSaturation", 0f),
                primaryBlueLightness = obj.optFloat("primaryBlueLightness", 0f),
                gradingShadowHue = obj.optFloat("gradingShadowHue", 0f),
                gradingShadowAmount = obj.optFloat("gradingShadowAmount", 0f),
                gradingMidtoneHue = obj.optFloat("gradingMidtoneHue", 0f),
                gradingMidtoneAmount = obj.optFloat("gradingMidtoneAmount", 0f),
                gradingHighlightHue = obj.optFloat("gradingHighlightHue", 0f),
                gradingHighlightAmount = obj.optFloat("gradingHighlightAmount", 0f),
                gradingBalance = obj.optFloat("gradingBalance", 0f),
                gradingBlending = obj.optFloat("gradingBlending", 0.5f),
                lutIntensity = obj.optFloat("lutIntensity", 1f),
                remarks = obj.optString("remarks", ""),
                masterCurvePoints = obj.optFloatArray("masterCurvePoints"),
                redCurvePoints = obj.optFloatArray("redCurvePoints"),
                greenCurvePoints = obj.optFloatArray("greenCurvePoints"),
                blueCurvePoints = obj.optFloatArray("blueCurvePoints"),
            )
        }.getOrElse {
            Log.e(TAG, "failed to parse Photon recipe", it)
            ColorRecipeParams.DEFAULT
        }
    }

    private fun JSONObject.optFloat(name: String, defaultValue: Float): Float {
        return if (has(name) && !isNull(name)) {
            optDouble(name, defaultValue.toDouble()).toFloat()
        } else {
            defaultValue
        }
    }

    private fun JSONObject.optFloatArray(name: String): FloatArray? {
        if (!has(name) || isNull(name)) return null
        val array = optJSONArray(name) ?: return null
        return FloatArray(array.length()) { index ->
            array.optDouble(index, 0.0).toFloat()
        }
    }

    private fun buildFallbackSignature(
        lutId: String?,
        lutConfig: LutConfig?,
        payload: ByteArray?,
        recipe: ColorRecipeParams
    ): String {
        return listOf(
            lutId.orEmpty(),
            lutConfig?.size ?: 0,
            lutConfig?.configDataType ?: 0,
            lutConfig?.curve?.shaderId ?: TransferCurve.SRGB.shaderId,
            lutConfig?.colorSpace?.ordinal ?: 0,
            payload?.contentHashCode() ?: 0,
            recipe.hashCode()
        ).joinToString(separator = ":")
    }

    private fun registerObserver(context: Context, authority: String) {
        if (observerAuthority == authority && observer != null) return
        observer?.let {
            runCatching { context.contentResolver.unregisterContentObserver(it) }
        }
        val appContext = context.applicationContext
        val created = object : ContentObserver(Handler(Looper.getMainLooper())) {
            override fun onChange(selfChange: Boolean, uri: Uri?) {
                syncAsync(appContext, force = true)
            }
        }
        context.contentResolver.registerContentObserver(lookUri(authority), false, created)
        observer = created
        observerAuthority = authority
    }

    private fun lookUri(authority: String): Uri = Uri.parse("content://$authority/look")

    private data class PhotonLookSnapshot(
        val signature: String,
        val lutId: String?,
        val lutConfig: LutConfig?,
        val recipeParams: ColorRecipeParams,
    )
}
