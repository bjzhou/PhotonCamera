package com.hinnka.mycamera.previewhook.api

import android.app.Application
import android.os.Environment
import android.util.Log
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutCurve
import com.hinnka.mycamera.lut.LutParser
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.previewhook.filters.MgcFilterStore
import com.hinnka.mycamera.raw.ColorSpace
import java.io.File
import java.nio.Buffer
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Runtime bridge for the real LUT VFE stage.
 *
 * The lowest practical insertion point in MGC is the VFE `nrm` stage.
 * This object exposes the full shader/config snapshot that a custom low-level
 * stage needs, without forcing that stage to depend on app-side state classes.
 */
object MgcVfeLutRuntime {
    private const val TAG = "codex_lut_chain"
    private const val LUT_FILE_NAME = "active.cube"

    private val identityMatrix4 = floatArrayOf(
        1f, 0f, 0f, 0f,
        0f, 1f, 0f, 0f,
        0f, 0f, 1f, 0f,
        0f, 0f, 0f, 1f,
    )

    private val fullCropRect = floatArrayOf(0f, 0f, 1f, 1f)

    @Volatile
    private var activeLutConfig: LutConfig? = null

    @Volatile
    private var activeRecipeParams: ColorRecipeParams = ColorRecipeParams.DEFAULT

    @Volatile
    private var snapshotVersion: Int = 1

    @Volatile
    private var cachedSnapshot: MgcVfeLutSnapshot? = null

    @Volatile
    private var externalBootstrapLut: LutConfig? = null

    @Volatile
    private var externalBootstrapSource: String? = null

    @Volatile
    private var externalBootstrapLastModified: Long = Long.MIN_VALUE

    @Volatile
    private var savedSelectionRestoreAttempted: Boolean = false

    private fun invalidateSnapshot() {
        snapshotVersion += 1
        cachedSnapshot = null
    }

    @JvmStatic
    fun setActiveLutConfig(lutConfig: LutConfig?) {
        activeLutConfig = lutConfig
        invalidateSnapshot()
    }

    @JvmStatic
    fun setActiveRgb8Lut(
        size: Int,
        payload: ByteArray,
        title: String = "",
        curveOrdinal: Int = LutCurve.SRGB.ordinal,
        colorSpaceOrdinal: Int = ColorSpace.SRGB.ordinal,
    ) {
        setActiveLutConfig(
            LutConfig(
                size = size,
                byteBuffer = ByteBuffer.allocateDirect(payload.size)
                    .order(ByteOrder.nativeOrder())
                    .put(payload)
                    .apply { position(0) },
                title = title,
                configDataType = LutConfig.CONFIG_DATA_TYPE_UINT8,
                curve = LutCurve.entries.getOrElse(curveOrdinal) { LutCurve.SRGB },
                colorSpace = ColorSpace.entries.getOrElse(colorSpaceOrdinal) { ColorSpace.SRGB },
            )
        )
    }

    @JvmStatic
    fun setActiveRgb16Lut(
        size: Int,
        payload: ByteArray,
        title: String = "",
        curveOrdinal: Int = LutCurve.SRGB.ordinal,
        colorSpaceOrdinal: Int = ColorSpace.SRGB.ordinal,
    ) {
        setActiveLutConfig(
            LutConfig(
                size = size,
                byteBuffer = ByteBuffer.allocateDirect(payload.size)
                    .order(ByteOrder.nativeOrder())
                    .put(payload)
                    .apply { position(0) },
                title = title,
                configDataType = LutConfig.CONFIG_DATA_TYPE_UINT16,
                curve = LutCurve.entries.getOrElse(curveOrdinal) { LutCurve.SRGB },
                colorSpace = ColorSpace.entries.getOrElse(colorSpaceOrdinal) { ColorSpace.SRGB },
            )
        )
    }

    @JvmStatic
    fun getActiveLutConfig(): LutConfig? = activeLutConfig

    @JvmStatic
    fun ensureBootstrapVerificationLut(): LutConfig? {
        activeLutConfig?.let { return it }
        restoreSavedSelectionIfNeeded()?.let { return it }
        activeLutConfig = null
        invalidateSnapshot()
        return null
    }

    @JvmStatic
    fun clearActiveLutConfig() {
        activeLutConfig = null
        invalidateSnapshot()
    }

    @JvmStatic
    fun setActiveRecipeParams(params: MgcPreviewRecipeParams?) {
        activeRecipeParams = params?.toColorRecipeParams() ?: ColorRecipeParams.DEFAULT
        invalidateSnapshot()
    }

    @JvmStatic
    fun setActiveRecipeParamsDirect(params: ColorRecipeParams?) {
        activeRecipeParams = params ?: ColorRecipeParams.DEFAULT
        invalidateSnapshot()
    }

    @JvmStatic
    fun getActiveRecipeParams(): ColorRecipeParams = activeRecipeParams

    @JvmStatic
    fun clearActiveRecipeParams() {
        activeRecipeParams = ColorRecipeParams.DEFAULT
        invalidateSnapshot()
    }

    private fun restoreSavedSelectionIfNeeded(): LutConfig? {
        if (savedSelectionRestoreAttempted) {
            return activeLutConfig
        }
        savedSelectionRestoreAttempted = true
        val application = currentApplication() ?: return activeLutConfig
        return runCatching {
            if (MgcFilterStore.restoreSavedSelection(application)) {
                Log.d(TAG, "restored saved LUT selection from MGC filter store")
            }
            activeLutConfig
        }.getOrElse {
            Log.e(TAG, "failed to restore saved LUT selection", it)
            activeLutConfig
        }
    }

    private fun loadExternalBootstrapLut(): LutConfig? {
        val source = resolveBootstrapCubeSource() ?: return null.also {
            externalBootstrapLut = null
            externalBootstrapSource = null
            externalBootstrapLastModified = Long.MIN_VALUE
        }
        val sourceId = source.sourceId
        val lastModified = source.lastModified
        externalBootstrapLut?.let { cached ->
            if (externalBootstrapSource == sourceId && externalBootstrapLastModified == lastModified) {
                return cached
            }
        }
        return try {
            val parsed = source.openInputStream().use { LutParser.parse(it, source.title) }
            externalBootstrapLut = parsed
            externalBootstrapSource = sourceId
            externalBootstrapLastModified = lastModified
            Log.d(TAG, "loaded bootstrap cube source=$sourceId size=${parsed.size}")
            parsed
        } catch (t: Throwable) {
            Log.e(TAG, "failed to load bootstrap cube source=$sourceId", t)
            externalBootstrapLut = null
            externalBootstrapSource = null
            externalBootstrapLastModified = Long.MIN_VALUE
            null
        }
    }

    private fun resolveBootstrapCubeSource(): CubeSource? {
        resolvePublicBootstrapCube()?.let { return it }
        return null
    }

    private fun resolvePublicBootstrapCube(): CubeSource? {
        val root = File(Environment.getExternalStorageDirectory(), "MGC")

        var file = File(root, LUT_FILE_NAME)

        val canRead = runCatching { file.isFile && file.canRead() }.getOrDefault(false)

        if (!canRead) {
            file = root.listFiles()
                ?.asSequence()
                ?.filter { it.isFile && it.extension.equals("cube", ignoreCase = true) }
                ?.sortedWith(compareByDescending<File> { it.lastModified() }.thenBy { it.name.lowercase() })
                ?.firstOrNull()
                ?: return null
        }

        return CubeSource(
            sourceId = "public:${file.absolutePath}",
            title = file.nameWithoutExtension,
            lastModified = file.lastModified(),
            openInputStream = { file.inputStream() },
        )
    }

    private fun currentApplication(): Application? {
        return try {
            val clazz = Class.forName("android.app.AppGlobals")
            val method = clazz.getDeclaredMethod("getInitialApplication")
            method.invoke(null) as? Application
        } catch (_: Throwable) {
            null
        }
    }

    private data class CubeSource(
        val sourceId: String,
        val title: String,
        val lastModified: Long,
        val openInputStream: () -> java.io.InputStream,
    )

    @JvmStatic
    fun getVertexShaderSource(): String = Shaders.VERTEX_SHADER.removePrefix("\uFEFF").trimStart()

    @JvmStatic
    fun getVfeVertexShaderSource(): String = MgcVfeShaderAdapters.getVfeVertexShaderSource()

    @JvmStatic
    fun getIdentityMatrix4(): FloatArray = identityMatrix4

    @JvmStatic
    fun getFullCropRect(): FloatArray = fullCropRect

    @JvmStatic
    fun getFragmentShaderSource(): String = Shaders.FRAGMENT_SHADER_COLOR_RECIPE.removePrefix("\uFEFF").trimStart()

    @JvmStatic
    fun getPackedAtlasFragmentShaderSource(): String =
        MgcVfeShaderAdapters.buildPackedLutFragmentShader(Shaders.FRAGMENT_SHADER_COLOR_RECIPE)

    @JvmStatic
    fun buildPackedLutAtlas(): MgcVfePackedLutAtlas? =
        activeLutConfig?.takeIf { it.isValid() }?.let(MgcVfePackedLutAtlas::fromLutConfig)

    @JvmStatic
    fun getPackedLutAtlasPayload(): ByteArray? = buildPackedLutAtlas()?.payload

    @JvmStatic
    fun getPackedLutAtlasWidth(): Int = buildPackedLutAtlas()?.width ?: 0

    @JvmStatic
    fun getPackedLutAtlasHeight(): Int = buildPackedLutAtlas()?.height ?: 0

    @JvmStatic
    fun getPackedLutAtlasUploadDataType(): Int =
        buildPackedLutAtlas()?.uploadDataType ?: MgcVfePackedLutAtlas.UPLOAD_DATA_TYPE_UINT8

    @JvmStatic
    fun getPackedLutAtlasUploadBuffer(): Buffer? {
        val atlas = buildPackedLutAtlas() ?: return null
        return when (atlas.uploadDataType) {
            MgcVfePackedLutAtlas.UPLOAD_DATA_TYPE_FLOAT32 -> {
                ByteBuffer.allocateDirect(atlas.payload.size)
                    .order(ByteOrder.nativeOrder())
                    .put(atlas.payload)
                    .apply { position(0) }
                    .asFloatBuffer()
                    .apply { position(0) }
            }

            else -> ByteBuffer.allocateDirect(atlas.payload.size)
                .put(atlas.payload)
                .apply { position(0) }
        }
    }

    @JvmStatic
    fun getSnapshotVersion(): Int = snapshotVersion

    @JvmStatic
    fun buildSnapshot(): MgcVfeLutSnapshot {
        cachedSnapshot?.let { return it }
        val lutConfig = activeLutConfig
        val packedAtlas = buildPackedLutAtlas()
        val effectiveParams = ColorPaletteMapper.mergeIntoEffectiveParams(activeRecipeParams)
        return MgcVfeLutSnapshot(
            vertexShader = Shaders.VERTEX_SHADER,
            fragmentShader = Shaders.FRAGMENT_SHADER_COLOR_RECIPE,
            atlasFragmentShader = getPackedAtlasFragmentShaderSource(),
            lutPayload = lutConfig?.takeIf { it.isValid() }?.toByteBuffer()?.let { buffer ->
                ByteArray(buffer.remaining()).also { bytes -> buffer.get(bytes) }
            },
            lutSize = lutConfig?.size ?: 0,
            lutDataType = lutConfig?.configDataType ?: LutConfig.CONFIG_DATA_TYPE_UINT8,
            lutCurveOrdinal = lutConfig?.curve?.ordinal ?: 0,
            lutColorSpaceOrdinal = lutConfig?.colorSpace?.ordinal ?: 0,
            lutAtlasPayload = packedAtlas?.payload,
            lutAtlasWidth = packedAtlas?.width ?: 0,
            lutAtlasHeight = packedAtlas?.height ?: 0,
            lutAtlasUploadDataType = packedAtlas?.uploadDataType ?: MgcVfePackedLutAtlas.UPLOAD_DATA_TYPE_UINT8,
            lutEnabled = lutConfig?.isValid() == true,
            lutIntensity = effectiveParams.lutIntensity,
            colorRecipeEnabled = !effectiveParams.isDefault(),
            exposure = effectiveParams.exposure,
            contrast = effectiveParams.contrast,
            saturation = effectiveParams.saturation,
            temperature = effectiveParams.temperature,
            tint = effectiveParams.tint,
            fade = effectiveParams.fade,
            vibrance = effectiveParams.color,
            highlights = effectiveParams.highlights,
            shadows = effectiveParams.shadows,
            toneToe = effectiveParams.toneToe,
            toneShoulder = effectiveParams.toneShoulder,
            tonePivot = effectiveParams.tonePivot,
            filmGrain = effectiveParams.filmGrain,
            vignette = effectiveParams.vignette,
            bleachBypass = effectiveParams.bleachBypass,
            halation = effectiveParams.halation,
            chromaticAberration = effectiveParams.chromaticAberration,
            noise = effectiveParams.noise,
            lowRes = effectiveParams.lowRes,
            lchHueAdjustments = floatArrayOf(
                effectiveParams.skinHue,
                effectiveParams.redHue,
                effectiveParams.orangeHue,
                effectiveParams.yellowHue,
                effectiveParams.greenHue,
                effectiveParams.cyanHue,
                effectiveParams.blueHue,
                effectiveParams.purpleHue,
                effectiveParams.magentaHue,
            ),
            lchChromaAdjustments = floatArrayOf(
                effectiveParams.skinChroma,
                effectiveParams.redChroma,
                effectiveParams.orangeChroma,
                effectiveParams.yellowChroma,
                effectiveParams.greenChroma,
                effectiveParams.cyanChroma,
                effectiveParams.blueChroma,
                effectiveParams.purpleChroma,
                effectiveParams.magentaChroma,
            ),
            lchLightnessAdjustments = floatArrayOf(
                effectiveParams.skinLightness,
                effectiveParams.redLightness,
                effectiveParams.orangeLightness,
                effectiveParams.yellowLightness,
                effectiveParams.greenLightness,
                effectiveParams.cyanLightness,
                effectiveParams.blueLightness,
                effectiveParams.purpleLightness,
                effectiveParams.magentaLightness,
            ),
        ).also {
            cachedSnapshot = it
        }
    }
}
