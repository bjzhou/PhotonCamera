package com.hinnka.mycamera.raw

import android.content.Context
import android.opengl.GLES30
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.CancellationException
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.cancel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/** Develops demosaicked RAW on the preview GL context. Only the static assets load off-thread. */
internal class RawForwardPreviewEngineGl(
    context: Context,
    private val onResultAvailable: () -> Unit,
) {
    class PreparedFrame internal constructor(
        val textureId: Int,
        val profileToLinearSrgb: FloatArray,
        val rendererBaselineExposureEv: Float,
        internal val adjustments: RawEnginePreviewAdjustments,
        internal val adaptiveProfileExposure: RawProfileExposureGl.Uniforms?,
        internal val toneInput: RawEngineTonePass.Input,
    )

    private class Selection(val settings: RawEnginePreviewSettings) {
        @Volatile var assets: RawEnginePreviewAssets? = null
    }

    private data class PreparedCache(
        val assets: RawEnginePreviewAssets,
        val metadata: RawMetadata,
        val cameraTextureId: Int,
        val frame: PreparedFrame,
    )

    data class FrameColor internal constructor(
        val cameraToProfile: FloatArray,
        val cameraWhite: FloatArray,
        val profileToEngine: FloatArray,
        val hncsCameraDomain: HncsCameraDomainContract?,
        val rendererBaselineExposureEv: Float,
        val adjustments: RawEnginePreviewAdjustments,
        val adaptiveProfileExposure: RawProfileExposureGl.Uniforms?,
        val resources: RawEngineColorResources,
    )

    private val context = context.applicationContext
    private val worker = CoroutineScope(SupervisorJob() + Dispatchers.Default)
    @Volatile private var selection: Selection? = null
    private var loadJob: Job? = null
    private var closed = false
    private var gl = Gl()
    private var colorAssets: RawEnginePreviewAssets? = null
    private var colorMetadata: RawMetadata? = null
    private var frameColor: FrameColor? = null
    private var preparedCache: PreparedCache? = null
    private var lastFailure: String? = null

    @Synchronized
    fun setSettings(settings: RawEnginePreviewSettings?) {
        if (closed || selection?.settings == settings) return
        loadJob?.cancel()
        val next = settings?.let(::Selection)
        selection = next
        loadJob = next?.let { pending ->
            worker.launch {
                try {
                    val assets = RawEnginePreviewAssets(context, pending.settings)
                    assets.prewarmForward()
                    pending.assets = assets
                    if (selection === pending) onResultAvailable()
                } catch (cancelled: CancellationException) {
                    throw cancelled
                } catch (failure: Exception) {
                    if (selection === pending) PLog.e(TAG, "Unable to load RAW preview engine", failure)
                }
            }
        }
    }

    /** Returns linear ProPhoto after forward color calibration, with RAW exposure coverage in alpha. */
    fun prepare(
        cameraTextureId: Int,
        width: Int,
        height: Int,
        metadata: RawMetadata,
    ): PreparedFrame? {
        val assets = selection?.assets ?: return null
        preparedCache?.let { cached ->
            if (cached.assets === assets && cached.metadata === metadata && cached.cameraTextureId == cameraTextureId &&
                cached.frame.toneInput.width == width && cached.frame.toneInput.height == height
            ) return cached.frame
        }
        val color = try {
            frameColor(assets, metadata)
        } catch (failure: RuntimeException) {
            reportFailure(failure)
            return null
        }
        return prepare(cameraTextureId, width, height, color)?.also {
            preparedCache = PreparedCache(assets, metadata, cameraTextureId, it)
        }
    }

    /** Resolve an exact sensor frame and preset before sending a thumbnail to its GL worker. */
    suspend fun resolve(settings: RawEnginePreviewSettings, metadata: RawMetadata): FrameColor =
        withContext(Dispatchers.Default) {
            resolveFrameColor(RawEnginePreviewAssets(context, settings), metadata)
        }

    fun prepare(cameraTextureId: Int, width: Int, height: Int, color: FrameColor): PreparedFrame? {
        preparedCache = null
        return try {
            val resources = color.resources
            val dcp = resources.dcpRenderPlan
            val hncs = color.hncsCameraDomain
            gl.profile.ensure(width, height)
            gl.tone.ensure(width, height)
            gl.enterEngine(resources.colorEngine)
            bindDrawState()
            val profile = gl.linear.render(
                RawLinearRcdPass.Input(
                    textureId = cameraTextureId,
                    targetFramebufferId = gl.profile.framebuffer,
                    targetTextureId = gl.profile.texture,
                    width = width,
                    height = height,
                    colorCorrectionMatrix = hncs?.cameraToWorkingMatrix ?: color.cameraToProfile,
                    cameraWhite = color.cameraWhite,
                    exposureGain = 1f,
                    hncsCameraDomainGain = hncs?.normalizedGain,
                    hncsInputEv = hncs?.inputEv ?: 1f,
                    hncsHighlightTruncation = hncs?.hrTrunc ?: 1f,
                    hncsHighlightMaximum = hncs?.hrMax ?: 1f,
                    clampProfileRgb = resources.colorEngine == RawRenderingEngine.AdobeCurve,
                    hueSatMapSupportsOverrange = dcp?.supportsOverrange == true,
                    preserveRawExposureCoverage = true,
                    bindHueSatMap = { program ->
                        bindLinearHueSatMap(program, dcp?.hueSatMap?.takeUnless { resources.applyDcpHueSatMap })
                    },
                    label = "RawPreviewCameraToProfile",
                ),
            ) ?: return null
            PreparedFrame(
                textureId = profile.textureId,
                profileToLinearSrgb = PROFILE_TO_LINEAR_SRGB,
                rendererBaselineExposureEv = color.rendererBaselineExposureEv,
                adjustments = color.adjustments,
                adaptiveProfileExposure = color.adaptiveProfileExposure,
                toneInput = RawEngineTonePass.Input(
                    textureId = profile.textureId,
                    targetFramebufferId = gl.tone.framebuffer,
                    targetTextureId = gl.tone.texture,
                    colorEngine = resources.colorEngine,
                    profileToEngineTransform = color.profileToEngine,
                    outputTransform = resources.outputTransform,
                    globalOriginX = 0,
                    globalOriginY = 0,
                    fullImageWidth = width,
                    fullImageHeight = height,
                    width = width,
                    height = height,
                    toneMappingParameters = resources.toneMappingParameters,
                    profileExposure = resources.profileExposure,
                    dcpRenderPlan = dcp,
                    applyDcpHueSatMap = resources.applyDcpHueSatMap,
                    spectralFilmLut = resources.spectralFilmLut,
                    hncsRenderPlan = resources.hncsRenderPlan,
                    lumixRenderPlan = resources.lumixRenderPlan,
                    canonRenderPlan = resources.canonRenderPlan,
                    leicaRenderPlan = resources.leicaRenderPlan,
                    fotufilm = resources.fotufilm,
                    bindProfileGainTable = gl::disableProfileGainTable,
                ),
            )
        } catch (failure: RuntimeException) {
            reportFailure(failure)
            null
        }
    }

    /** [workingTextureId] is the prepared ProPhoto frame after optional dynamic-range mapping. */
    fun render(prepared: PreparedFrame, workingTextureId: Int = prepared.textureId): Int {
        return try {
            bindDrawState()
            val adaptiveProfileExposure = prepared.adaptiveProfileExposure.takeIf {
                workingTextureId != prepared.textureId
            }
            var input = prepared.toneInput.copy(
                textureId = workingTextureId,
                profileExposure = adaptiveProfileExposure ?: prepared.toneInput.profileExposure,
            )
            if (input.colorEngine == RawRenderingEngine.DarktableFilmic) {
                val reconstructed = gl.reconstructFilmicHighlights(input) ?: return 0
                input = input.copy(
                    textureId = reconstructed.textureId,
                    profileExposure = RawProfileExposureGl.Uniforms.NEUTRAL,
                    profileToEngineTransform = IDENTITY,
                )
            }
            val output = gl.engine.render(input) ?: return 0
            val linearOutput = if (input.colorEngine.isHncs) {
                gl.postTone.ensure(output.width, output.height)
                gl.hncs.render(
                    HncsOutputLinearPass.Input(
                        textureId = output.textureId,
                        targetFramebufferId = gl.postTone.framebuffer,
                        targetTextureId = gl.postTone.texture,
                        outputTransform = input.outputTransform,
                        width = output.width,
                        height = output.height,
                    ),
                )?.textureId ?: return 0
            } else {
                output.textureId
            }
            val adjustments = prepared.adjustments
            val texture = if (adjustments.isActive) {
                // HNCS already consumed the engine texture while converting to linear sRGB.
                val target = if (input.colorEngine.isHncs) gl.tone else gl.postTone
                target.ensure(output.width, output.height)
                gl.adjustment.render(
                    RawAdjustmentPass.Input(
                        textureId = linearOutput,
                        targetFramebufferId = target.framebuffer,
                        targetTextureId = target.texture,
                        width = output.width,
                        height = output.height,
                        highlights = adjustments.highlights,
                        shadows = adjustments.shadows,
                        blacks = adjustments.blacks,
                        whites = adjustments.whites,
                    ),
                )?.textureId ?: return 0
            } else {
                if (!input.colorEngine.isHncs) gl.postTone.release()
                linearOutput
            }
            lastFailure = null
            texture
        } catch (failure: RuntimeException) {
            reportFailure(failure)
            0
        }
    }

    private fun frameColor(assets: RawEnginePreviewAssets, metadata: RawMetadata): FrameColor {
        val previous = colorMetadata
        if (colorAssets === assets && previous != null &&
            previous.cameraCalibration == metadata.cameraCalibration &&
            previous.colorCorrectionMatrix.contentEquals(metadata.colorCorrectionMatrix) &&
            previous.whiteBalanceGains.contentEquals(metadata.whiteBalanceGains) &&
            previous.cameraWhite.contentEquals(metadata.cameraWhite) &&
            previous.whitePointXy.contentEquals(metadata.whitePointXy) &&
            (!assets.engine.isLumix || previous.iso == metadata.iso) &&
            previous.baselineExposure == metadata.baselineExposure && previous.shadowScale == metadata.shadowScale
        ) frameColor?.let { return it }
        return resolveFrameColor(assets, metadata).also {
            colorAssets = assets
            colorMetadata = metadata
            frameColor = it
        }
    }

    private fun resolveFrameColor(assets: RawEnginePreviewAssets, metadata: RawMetadata): FrameColor {
        val engine = assets.engine
        val tone = assets.tone
        val dcp = assets.dcp?.let { DcpProfileParser.resolveRenderPlan(it, metadata, ColorSpace.ProPhoto) }
        val generatedBlackRender = DcpDefaultBlackRender.generated(
            isLinearRaw = assets.settings.isLinearRawCapture,
            hasGainMap = false,
        )
        val profile = if (engine == RawRenderingEngine.AdobeCurve) {
            when (tone.profileToneMapMode) {
                RawProfileToneMapMode.Profile -> dcp
                RawProfileToneMapMode.Default -> dcp?.copy(toneCurveLut = null)
                RawProfileToneMapMode.OppoMaster -> (dcp ?: DcpRenderPlan(
                    profileName = "OPPO Master Tone Map",
                    workingColorSpace = ColorSpace.ProPhoto,
                    baselineExposureOffset = 0f,
                    defaultBlackRender = generatedBlackRender,
                    colorCorrectionMatrix = metadata.colorCorrectionMatrix,
                    cameraWhite = metadata.cameraWhite,
                    hueSatMap = null,
                    lookTable = null,
                    toneCurveLut = null,
                )).copy(toneCurveLut = DngProfileToneCurve.oppoEmbeddedToneCurveLut())
            }
        } else null
        val target = assets.target?.calibration
        val direct = target != null && (!tone.colorMatchingEnabled(engine) || metadata.cameraCalibration == null)
        val engineWhite = if (direct) requireNotNull(target).directCameraWhiteXy(context, metadata) else metadata.whitePointXy
        val targetTransform = target?.colorTransform(context, requireNotNull(engineWhite) {
            "Equivalent camera rendering requires the sensor white point"
        })
        val cameraToProfile = when {
            direct -> requireNotNull(targetTransform).sensorToProPhoto(EquivalentCameraCalibration.whiteBalanceTransform(metadata))
            target != null -> EquivalentCameraCalibration.sourceToProPhoto(metadata)
            else -> profile?.colorCorrectionMatrix ?: metadata.colorCorrectionMatrix
        }
        val cameraWhite = (profile?.cameraWhite ?: metadata.cameraWhite)
            .takeIf { white -> white.size == 3 && white.all(Float::isFinite) }
            ?.let { white -> FloatArray(3) { white[it].coerceIn(0.001f, 1f) } } ?: CAMERA_WHITE
        val profileToEngine = targetTransform?.proPhotoToWhiteBalancedCamera
            ?: RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.ProPhoto, engine.workingColorSpace)
        val sourceBaselineExposure = DngBaselineExposure.sanitize(metadata.baselineExposure)
        val dcpBaselineOffset = profile?.baselineExposureOffset?.takeIf(Float::isFinite) ?: 0f
        val exposureCompensation = assets.settings.exposureEv + engine.defaultExposureCompensationEv +
            tone.engineExposureCompensationEv(engine)
        fun computeProfileExposure(blackRender: DcpDefaultBlackRender) = RawProfileExposureGl.compute(
            profileExposureCompensation = exposureCompensation,
            dngBaselineExposure = sourceBaselineExposure,
            dcpBaselineExposureOffset = dcpBaselineOffset,
            defaultBlackRender = blackRender,
            shadowScale = metadata.shadowScale,
            supportOverrange = profile?.supportsOverrange == true,
            useRamp = engine == RawRenderingEngine.AdobeCurve,
        )
        val blackRender = profile?.defaultBlackRender ?: generatedBlackRender
        val profileExposure = computeProfileExposure(blackRender)
        val adaptiveBlackRender = DcpDefaultBlackRender.generated(
            isLinearRaw = assets.settings.isLinearRawCapture,
            hasGainMap = true,
        )
        val adaptiveProfileExposure = if (engine == RawRenderingEngine.AdobeCurve && dcp == null &&
            adaptiveBlackRender != blackRender
        ) {
            computeProfileExposure(adaptiveBlackRender)
        } else null
        val hncsDomain = if (engine.isHncs) HncsCameraDomain.resolve(
            compositeCameraToWorkingMatrix = cameraToProfile,
            cameraGains = HncsCameraDomain.fromWhiteBalanceGains(metadata.whiteBalanceGains),
            baselineExposureEv = 0f,
        ) else null
        val resources = assets.colorResources(
            profile, profileExposure, engineWhite, metadata.iso,
            applyDcpHueSatMap = tone.usePhotonHdr,
        )
        return FrameColor(
            cameraToProfile, cameraWhite, profileToEngine, hncsDomain,
            sourceBaselineExposure + dcpBaselineOffset, assets.settings.adjustments, adaptiveProfileExposure, resources,
        )
    }

    private fun bindLinearHueSatMap(program: Int, map: DcpHueSatMap?) {
        val active = map?.takeIf { it.isValid }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        val texture = active?.let(gl.dcp::ensureHueSatTexture) ?: gl.dcp.ensureDummyTexture()
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, texture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLinearDcpHueSatMap"), 3)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uLinearDcpHueSatEnabled"), if (active == null) 0 else 1)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uLinearDcpHueSatEncoding"),
            active?.encoding ?: DcpHueSatMap.ENCODING_LINEAR,
        )
        GLES30.glUniform3i(
            GLES30.glGetUniformLocation(program, "uLinearDcpHueSatDivisions"),
            active?.hueDivisions ?: 1, active?.satDivisions ?: 1, active?.valueDivisions ?: 1,
        )
    }

    private fun bindDrawState() {
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        GLES30.glDisable(GLES30.GL_DEPTH_TEST)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, 0)
        GLES30.glBindBuffer(GLES30.GL_ELEMENT_ARRAY_BUFFER, 0)
    }

    private fun reportFailure(failure: RuntimeException) {
        val message = failure.message ?: failure.javaClass.name
        if (lastFailure != message) PLog.e(TAG, "Unable to develop RAW preview", failure)
        lastFailure = message
    }

    fun resetAfterContextLoss() {
        gl = Gl()
        preparedCache = null
    }

    fun release() {
        gl.release()
        preparedCache = null
        colorAssets = null
        colorMetadata = null
        frameColor = null
        releaseAfterGlThreadExit()
    }

    @Synchronized
    fun releaseAfterGlThreadExit() {
        if (closed) return
        closed = true
        selection = null
        worker.cancel()
    }

    private class Gl {
        private val quad = RawFullscreenQuad()
        val dcp = DcpTextureResources()
        private val curves = RawCurveTextureResources()
        val linear = RawLinearRcdPass(quad)
        var engine = RawEngineTonePass(quad, dcp, curves)
            private set
        val hncs = HncsOutputLinearPass(quad)
        val adjustment = RawAdjustmentPass(quad, logDiagnostics = false)
        private val filmic = DarktableFilmicHighlightReconstructionAlgorithm(quad)
        val profile = Target("RAW preview ProPhoto")
        val tone = Target("RAW preview engine")
        val postTone = Target("RAW preview post-tone output")
        private var neutralGain = 0
        private var activeEngine: RawRenderingEngine? = null

        fun enterEngine(next: RawRenderingEngine) {
            val previous = activeEngine
            if (previous == next) return
            if (previous != null) {
                if (previous == RawRenderingEngine.DarktableFilmic) filmic.release()
                engine.release()
                curves.release()
                dcp.release()
                engine = RawEngineTonePass(quad, dcp, curves)
            }
            activeEngine = next
        }

        fun disableProfileGainTable(program: Int) {
            val sampler = GLES30.glGetUniformLocation(program, "uProfileGainTableMap")
            if (sampler < 0) return
            GLES30.glActiveTexture(GLES30.GL_TEXTURE7)
            if (neutralGain == 0) {
                neutralGain = MgcGlesSurfaces.texture(GLES30.GL_RGBA16F, 1, 1, "Disabled RAW gain table")
            }
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, neutralGain)
            GLES30.glUniform1i(sampler, 7)
            GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uProfileGainEnabled"), 0)
        }

        fun reconstructFilmicHighlights(input: RawEngineTonePass.Input) = filmic.execute(
            DarktableFilmicHighlightReconstructionAlgorithm.Input(
                sourceTextureId = input.textureId,
                width = input.width,
                height = input.height,
                rawToneMappingParameters = input.toneMappingParameters,
                profileExposureEv = input.profileExposure.exposureEv,
                profileExposureLinearGain = input.profileExposure.linearGain,
                bindPreparedInput = { program ->
                    disableProfileGainTable(program)
                    GLES30.glUniform2f(GLES30.glGetUniformLocation(program, "uGlobalUvOrigin"), 0f, 0f)
                    GLES30.glUniform2f(GLES30.glGetUniformLocation(program, "uGlobalUvScale"), 1f, 1f)
                    GLES30.glUniform1f(
                        GLES30.glGetUniformLocation(program, "uProfileExposureLinearGain"),
                        input.profileExposure.linearGain,
                    )
                    GLES30.glUniformMatrix3fv(
                        GLES30.glGetUniformLocation(program, "uProfileToEngineTransform"),
                        1, false, RawToneMappingGl.transposeMatrix3x3(input.profileToEngineTransform), 0,
                    )
                },
            ),
        )

        fun release() {
            filmic.release()
            hncs.release()
            adjustment.release()
            engine.release()
            linear.release()
            dcp.release()
            curves.release()
            profile.release()
            tone.release()
            postTone.release()
            MgcGlesSurfaces.deleteTextures(neutralGain)
            neutralGain = 0
        }
    }

    private class Target(private val label: String) {
        var texture = 0
            private set
        var framebuffer = 0
            private set
        private var width = 0
        private var height = 0

        fun ensure(width: Int, height: Int) {
            if (texture != 0 && this.width == width && this.height == height) return
            release()
            val color = MgcGlesSurfaces.texture(GLES30.GL_RGBA16F, width, height, label, GLES30.GL_LINEAR)
            try {
                framebuffer = MgcGlesSurfaces.framebuffer(label, color)
            } catch (failure: RuntimeException) {
                MgcGlesSurfaces.deleteTextures(color)
                throw failure
            }
            texture = color
            this.width = width
            this.height = height
        }

        fun release() {
            MgcGlesSurfaces.deleteFramebuffers(framebuffer)
            MgcGlesSurfaces.deleteTextures(texture)
            texture = 0
            framebuffer = 0
        }
    }

    private companion object {
        const val TAG = "RawForwardPreviewEngine"
        val IDENTITY = RawToneMappingGl.identityMatrix3x3()
        val CAMERA_WHITE = floatArrayOf(1f, 1f, 1f)
        val PROFILE_TO_LINEAR_SRGB = RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.ProPhoto, ColorSpace.SRGB)
    }
}
