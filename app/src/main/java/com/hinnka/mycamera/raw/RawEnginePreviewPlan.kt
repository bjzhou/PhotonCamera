package com.hinnka.mycamera.raw

import android.content.Context

/** Latest physical-camera color state. Value equality suppresses unchanged frame metadata. */
data class RawEnginePreviewSource(
    val cameraId: String,
    val calibration: RawCameraCalibration,
    val whiteBalanceGains: List<Float>,
    /** WB-camera -> linear sRGB; authoritative only in Camera2 TRANSFORM_MATRIX mode. */
    val camera2Transform: List<Float>?,
    val iso: Int,
)

/** How far to undo the ISP before entering the selected engine's actual input domain. */
enum class RawPreviewRestoration {
    SceneLinearSrgb,
    SourceCameraRgb,
    SourceWhiteBalancedCameraRgb,
}

data class RawEnginePreviewSettings(
    val engine: RawRenderingEngine,
    val dcp: DcpInfo?,
    val exposureEv: Float,
    val tone: RawToneMappingParameters,
    val hncsFilmCurve: HncsFilmCurveMode,
    val filmStock: String,
    val filmPrint: String,
    val filmTuning: SpectralFilmTuning,
)

/** Immutable CPU solution. Matrices are row-major; the owning GL context uploads them. */
class RawEnginePreviewPlan internal constructor(
    val engine: RawRenderingEngine,
    val restoration: RawPreviewRestoration,
    internal val restoreTransform: FloatArray,
    internal val inputTransform: FloatArray,
    internal val cameraClip: FloatArray?,
    internal val resources: RawEngineColorResources,
)

/** Assets are loaded once per selection; frame-dependent matrices/tables resolve off the GL thread. */
class RawEnginePreviewResolver(private val context: Context, val settings: RawEnginePreviewSettings) {
    private val engine = settings.engine
    private val tone = settings.tone.normalized()
    private val dcp = settings.dcp?.takeIf { engine == RawRenderingEngine.AdobeCurve }?.let {
        requireNotNull(DcpProfileParser.resolveProfile(context, it)) { "Unable to load DCP ${it.id}" }
    }
    private val spectral = if (engine == RawRenderingEngine.Spektrafilm) requireNotNull(
        SpectralFilmProfile.loadCombinedLut(context, settings.filmStock, settings.filmPrint, settings.filmTuning),
    ) { "Unable to load Spektrafilm preview stages" } else null
    private val hncsManager = if (engine.isHncs) HncsProfileManager(context) else null
    private val canon = if (engine.isCanon) CanonProfile.createRenderPlan(context, tone.canonPictureStyle) else null
    private val leica = if (engine.isLeica) LeicaProfile.createRenderPlan(context) else null
    private val target = when (engine) {
        RawRenderingEngine.Hncs -> EquivalentCameraTarget.HasselbladX2DII100C
        RawRenderingEngine.Lumix -> EquivalentCameraTarget.LumixS9
        RawRenderingEngine.Canon -> EquivalentCameraTarget.CanonEOSR5
        RawRenderingEngine.Leica -> EquivalentCameraTarget.LeicaM9
        else -> null
    }
    val needsCameraMetadata: Boolean = dcp != null || target != null

    fun resolve(source: RawEnginePreviewSource?): RawEnginePreviewPlan? {
        if (needsCameraMetadata && source == null) return null
        val camera = source?.takeIf { needsCameraMetadata }?.let(::resolveCamera)
        var restoration = RawPreviewRestoration.SceneLinearSrgb
        var restore = RawToneMappingGl.identityMatrix3x3()
        var input = RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.SRGB, engine.workingColorSpace)
        var clip: FloatArray? = null
        var profile: DcpRenderPlan? = null
        var engineWhite = camera?.metadata?.whitePointXy

        if (dcp != null) {
            val resolvedCamera = requireNotNull(camera)
            restoration = RawPreviewRestoration.SourceCameraRgb
            restore = resolvedCamera.srgbToCamera
            profile = requireNotNull(DcpProfileParser.resolveRenderPlan(dcp, resolvedCamera.metadata, ColorSpace.ProPhoto))
            input = profile.colorCorrectionMatrix
            clip = profile.cameraWhite
        } else if (target != null) {
            val resolvedCamera = requireNotNull(camera)
            val metadata = resolvedCamera.metadata
            if (tone.colorMatchingEnabled(engine)) {
                restoration = RawPreviewRestoration.SourceCameraRgb
                restore = resolvedCamera.srgbToCamera
                // Match RAW's physical ColorMatrix path (FM only for FM-only sources),
                // then map colorimetric ProPhoto to the target's WB camera basis.
                input = DngSdkColorSpec.multiplyMatrix3x3(
                    target.calibration.colorTransform(context, requireNotNull(engineWhite)).proPhotoToWhiteBalancedCamera,
                    EquivalentCameraCalibration.sourceToProPhoto(metadata),
                )
            } else {
                restoration = RawPreviewRestoration.SourceWhiteBalancedCameraRgb
                restore = DngSdkColorSpec.multiplyMatrix3x3(
                    EquivalentCameraCalibration.whiteBalanceTransform(metadata), resolvedCamera.srgbToCamera,
                )
                input = RawToneMappingGl.identityMatrix3x3()
                engineWhite = target.calibration.directCameraWhiteXy(context, metadata)
            }
        }

        if (engine == RawRenderingEngine.AdobeCurve) {
            val base = profile ?: DcpRenderPlan(
                profileName = "Adobe preview", workingColorSpace = ColorSpace.ProPhoto,
                baselineExposureOffset = 0f, defaultBlackRender = DcpDefaultBlackRender.Auto,
                colorCorrectionMatrix = input, hueSatMap = null, lookTable = null, toneCurveLut = null,
            )
            profile = when (tone.profileToneMapMode) {
                RawProfileToneMapMode.Profile -> base
                RawProfileToneMapMode.Default -> base.copy(toneCurveLut = null)
                RawProfileToneMapMode.OppoMaster -> base.copy(toneCurveLut = DngProfileToneCurve.oppoEmbeddedToneCurveLut())
            }
        }
        val cct = engineWhite?.let(DngSdkColorSpec::colorTemperatureForXy)
        val hncs = hncsManager?.let {
            requireNotNull(it.resolveLutRenderPlan(cct, settings.hncsFilmCurve)) { "Unable to resolve HNCS preview at CCT=$cct" }
        }
        val lumix = if (engine.isLumix) LumixProfile.createRenderPlan(
            context, tone.lumixPhotoStyle, cct, iso = requireNotNull(source).iso,
        ) else null
        val exposure = RawProfileExposureGl.compute(
            profileExposureCompensation = settings.exposureEv + engine.defaultExposureCompensationEv +
                tone.engineExposureCompensationEv(engine),
            // The ISP has already applied sensor exposure/post-RAW gain. Never apply them twice.
            dcpBaselineExposureOffset = profile?.baselineExposureOffset?.takeIf(Float::isFinite) ?: 0f,
            defaultBlackRender = profile?.defaultBlackRender ?: DcpDefaultBlackRender.None,
            supportOverrange = profile?.supportsOverrange == true,
            useRamp = engine == RawRenderingEngine.AdobeCurve,
        )
        return RawEnginePreviewPlan(
            engine, restoration, restore, input, clip,
            RawEngineColorResources(
                colorEngine = engine, toneMappingParameters = tone, profileExposure = exposure,
                outputTransform = RawToneMappingGl.computeWorkingToOutputTransform(engine.workingColorSpace, ColorSpace.SRGB),
                dcpRenderPlan = profile, applyDcpHueSatMap = true, spectralFilmLut = spectral,
                hncsRenderPlan = hncs, lumixRenderPlan = lumix, canonRenderPlan = canon, leicaRenderPlan = leica,
            ),
        )
    }

    private data class CameraSolution(val metadata: RawMetadata, val srgbToCamera: FloatArray)

    private fun resolveCamera(source: RawEnginePreviewSource): CameraSolution {
        val gains = source.whiteBalanceGains.toFloatArray()
        require(gains.size == 4 && gains.all { it.isFinite() && it > 0f }) { "Invalid preview white balance" }
        val sourceProfile = source.calibration.toDcpProfile()
        val seed = RawMetadata(
            width = 1, height = 1, cfaPattern = 0, blackLevel = FloatArray(4), whiteLevel = 1f,
            whiteBalanceGains = gains, colorCorrectionMatrix = RawToneMappingGl.identityMatrix3x3(),
            cameraCalibration = source.calibration, iso = source.iso,
        )
        val metadata = requireNotNull(DngSdkColorSpec.resolveSourceMetadata(sourceProfile, seed, ColorSpace.ProPhoto))
        val white = metadata.cameraWhite
        val sourceToSrgb = source.camera2Transform?.toFloatArray()?.also { matrix ->
            require(matrix.size == 9 && matrix.all(Float::isFinite))
            // Reported CCM consumes WB RGB; the DNG matrix includes WB derived from
            // this frame's gains. Both inverse paths must recover the same sensor domain.
            for (row in 0..2) for (column in 0..2) matrix[row * 3 + column] /= white[column]
        } ?: requireNotNull(DngSdkColorSpec.computeCameraToWorkingMatrix(sourceProfile, seed, ColorSpace.SRGB))
        val inverse = requireNotNull(DngSdkColorSpec.invertMatrix3x3(sourceToSrgb)) {
            "Non-invertible preview CCM: camera=${source.cameraId}"
        }
        require(inverse.all(Float::isFinite))
        return CameraSolution(metadata, inverse)
    }
}
