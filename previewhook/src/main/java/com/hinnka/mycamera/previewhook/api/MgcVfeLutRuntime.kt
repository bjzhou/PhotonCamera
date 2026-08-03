package com.hinnka.mycamera.previewhook.api

import android.app.Application
import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.PreviewColorShader
import com.hinnka.mycamera.lut.PreviewColorShaderVariant
import com.hinnka.mycamera.lut.PreviewColorTextureSource
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.raw.ColorSpace
import java.nio.ByteBuffer
import java.nio.ByteOrder

/**
 * Runtime bridge for MGC preview color state.
 */
object MgcVfeLutRuntime {
    private val previewShaderVariant = PreviewColorShaderVariant(
        textureSource = PreviewColorTextureSource.EXTERNAL_OES,
        includeHlgInput = false,
        includeExtendedLutCurves = true,
        includeOklchDensity = true,
        includeLchMixer = true,
        includeFilmGrain = true,
        includeLutMask = false,
    )

    private val capturedJpegShaderVariant = previewShaderVariant.copy(
        textureSource = PreviewColorTextureSource.TEXTURE_2D,
    )

    private val previewFragmentShader: String by lazy {
        PreviewColorShader.source(previewShaderVariant)
    }

    private val capturedJpegFragmentShader: String by lazy {
        PreviewColorShader.source(capturedJpegShaderVariant)
    }

    @Volatile
    private var activeLutConfig: LutConfig? = null

    @Volatile
    private var activeRecipeParams: ColorRecipeParams = ColorRecipeParams.DEFAULT

    @Volatile
    private var snapshotVersion: Int = 1

    @Volatile
    private var cachedSnapshot: MgcVfeLutSnapshot? = null

    @Volatile
    private var activeLookSignature: String? = null

    private fun invalidateSnapshot() {
        snapshotVersion += 1
        cachedSnapshot = null
    }

    @JvmStatic
    fun setActiveLutConfig(lutConfig: LutConfig?) {
        activeLutConfig = lutConfig
        activeLookSignature = null
        invalidateSnapshot()
    }

    @JvmStatic
    fun setActiveRgb8Lut(
        size: Int,
        payload: ByteArray,
        title: String = "",
        curveOrdinal: Int = TransferCurve.SRGB.ordinal,
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
                curve = TransferCurve.entries.getOrElse(curveOrdinal) { TransferCurve.SRGB },
                colorSpace = ColorSpace.entries.getOrElse(colorSpaceOrdinal) { ColorSpace.SRGB },
            )
        )
    }

    @JvmStatic
    fun setActiveRgb16Lut(
        size: Int,
        payload: ByteArray,
        title: String = "",
        curveOrdinal: Int = TransferCurve.SRGB.ordinal,
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
                curve = TransferCurve.entries.getOrElse(curveOrdinal) { TransferCurve.SRGB },
                colorSpace = ColorSpace.entries.getOrElse(colorSpaceOrdinal) { ColorSpace.SRGB },
            )
        )
    }

    @JvmStatic
    fun getActiveLutConfig(): LutConfig? = activeLutConfig

    @JvmStatic
    fun ensureBootstrapVerificationLut(): LutConfig? {
        syncPhotonLookIfNeeded(force = false)
        return activeLutConfig
    }

    @JvmStatic
    fun syncPhotonLookIfNeeded(force: Boolean = false): Boolean {
        return PhotonLookClient.sync(currentApplication(), force)
    }

    @JvmStatic
    fun applyPhotonLook(
        signature: String,
        lutConfig: LutConfig?,
        recipeParams: ColorRecipeParams,
    ): Boolean {
        if (activeLookSignature == signature) {
            return false
        }
        activeLookSignature = signature
        activeLutConfig = lutConfig
        activeRecipeParams = recipeParams
        invalidateSnapshot()
        return true
    }

    @JvmStatic
    fun getActiveLookSignature(): String? = activeLookSignature

    @JvmStatic
    fun ensureActiveLutConfig(): LutConfig? {
        activeLutConfig?.let { return it }
        return ensureBootstrapVerificationLut()
    }

    @JvmStatic
    fun clearActiveLutConfig() {
        activeLutConfig = null
        activeLookSignature = null
        invalidateSnapshot()
    }

    @JvmStatic
    fun setActiveRecipeParams(params: MgcPreviewRecipeParams?) {
        activeRecipeParams = params?.toColorRecipeParams() ?: ColorRecipeParams.DEFAULT
        activeLookSignature = null
        invalidateSnapshot()
    }

    @JvmStatic
    fun setActiveRecipeParamsDirect(params: ColorRecipeParams?) {
        activeRecipeParams = params ?: ColorRecipeParams.DEFAULT
        activeLookSignature = null
        invalidateSnapshot()
    }

    @JvmStatic
    fun getActiveRecipeParams(): ColorRecipeParams = activeRecipeParams

    @JvmStatic
    fun clearActiveRecipeParams() {
        activeRecipeParams = ColorRecipeParams.DEFAULT
        activeLookSignature = null
        invalidateSnapshot()
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

    @JvmStatic
    fun getVertexShaderSource(): String = Shaders.VERTEX_SHADER.removePrefix("\uFEFF").trimStart()

    @JvmStatic
    fun getFragmentShaderSource(): String = previewFragmentShader.removePrefix("\uFEFF").trimStart()

    @JvmStatic
    fun getCapturedJpegFragmentShaderSource(): String =
        capturedJpegFragmentShader.removePrefix("\uFEFF").trimStart()

    @JvmStatic
    fun getSnapshotVersion(): Int = snapshotVersion

    @JvmStatic
    fun buildSnapshot(): MgcVfeLutSnapshot {
        cachedSnapshot?.let { return it }
        val lutConfig = activeLutConfig
        val effectiveParams = ColorPaletteMapper.mergeIntoEffectiveParams(activeRecipeParams)
        return MgcVfeLutSnapshot(
            lutPayload = lutConfig?.takeIf { it.isValid() }?.toByteBuffer()?.let { buffer ->
                ByteArray(buffer.remaining()).also { bytes -> buffer.get(bytes) }
            },
            lutSize = lutConfig?.size ?: 0,
            lutDataType = lutConfig?.configDataType ?: LutConfig.CONFIG_DATA_TYPE_UINT8,
            lutCurveOrdinal = lutConfig?.curve?.shaderId ?: TransferCurve.SRGB.shaderId,
            lutColorSpaceOrdinal = lutConfig?.colorSpace?.ordinal ?: 0,
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
