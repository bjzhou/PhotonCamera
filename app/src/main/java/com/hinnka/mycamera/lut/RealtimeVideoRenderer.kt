package com.hinnka.mycamera.lut

import android.content.Context
import android.graphics.SurfaceTexture
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLExt
import android.opengl.EGLSurface
import android.opengl.GLES11Ext
import android.opengl.GLES30
import android.opengl.Matrix
import android.util.Size
import android.view.Surface
import com.hinnka.mycamera.model.ColorPaletteMapper
import com.hinnka.mycamera.model.ColorRecipeParams
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.video.VideoEncoderColorConfig
import com.hinnka.mycamera.video.VideoLogProfile
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import kotlin.math.abs
import kotlin.math.max

/**
 * Camera2 录像专用实时渲染器。
 *
 * Camera2 将录像流写入此类拥有的独立 [SurfaceTexture]；同一个专用 EGL context
 * 随后把 OES 帧经过色彩层实时绘制到 MediaCodec input surface。该链路与屏幕预览
 * 完全分离，因此录像帧率不再受 GLSurfaceView 调度或预览 FBO 负载影响。
 */
class RealtimeVideoRenderer(
    context: Context,
    private val cameraInputSize: Size,
    private val encoderOutputSize: Size,
    colorLayers: List<VideoColorEffectLayer>,
    private val videoLogProfile: VideoLogProfile,
    private val hlgInput: Boolean,
    private val mirrorHorizontally: Boolean,
    private val mirrorVertically: Boolean,
    private val encoderColorConfig: VideoEncoderColorConfig,
) {
    companion object {
        private const val TAG = "RealtimeVideoRenderer"
        private const val EGL_RECORDABLE_ANDROID = 0x3142
        private const val EGL_OPENGL_ES3_BIT_KHR = 0x0040
    }

    private data class LayerResources(
        val lutConfig: LutConfig?,
        val params: ColorRecipeParams,
        var lutTextureId: Int = 0,
        var curveTextureId: Int = 0,
    )

    private val appContext = context.applicationContext
    private val layers = colorLayers
        .map { layer ->
            LayerResources(
                lutConfig = layer.lutConfig,
                params = layer.recipeParams
                    ?.let(ColorPaletteMapper::mergeIntoEffectiveParams)
                    ?: ColorRecipeParams.DEFAULT,
            )
        }
        .ifEmpty {
            listOf(LayerResources(lutConfig = null, params = ColorRecipeParams.DEFAULT))
        }
        .also { resolved ->
            require(resolved.size <= 2) {
                "Realtime video supports the baseline and creative color layers only"
            }
        }
    private val colorProgramCache = PreviewColorProgramCache()
    private val basicToneTextures = BasicToneGlTextures()
    private val identityMatrix = FloatArray(16).also { Matrix.setIdentityM(it, 0) }
    private val firstPassMvpMatrix = FloatArray(16).also {
        Matrix.setIdentityM(it, 0)
        if (mirrorHorizontally || mirrorVertically) {
            Matrix.scaleM(
                it,
                0,
                if (mirrorHorizontally) -1f else 1f,
                if (mirrorVertically) -1f else 1f,
                1f,
            )
        }
    }
    private val fullCropRect = floatArrayOf(0f, 0f, 1f, 1f)
    private var cameraCropRect = fullCropRect
    private var cameraTransformAxesSwapped: Boolean? = null
    private val stMatrix = FloatArray(16).also { Matrix.setIdentityM(it, 0) }

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var encoderEglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var cameraTextureId = 0
    private var cameraSurfaceTexture: SurfaceTexture? = null
    private var cameraSurface: Surface? = null
    private var intermediateTextureId = 0
    private var intermediateFboId = 0
    private var vertexBuffer: FloatBuffer? = null
    private var textureCoordinateBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null
    private var initialized = false

    val inputSurface: Surface?
        get() = cameraSurface

    fun initialize(
        encoderSurface: Surface,
        onFrameAvailable: () -> Unit,
    ) {
        check(!initialized) { "Realtime video renderer is already initialized" }
        initializeEgl(encoderSurface)
        check(makeCurrent()) { "Cannot make realtime video EGL context current" }
        initializeGeometry()
        initializeLayerTextures()
        if (layers.size > 1) {
            initializeIntermediateFramebuffer()
        }

        cameraTextureId = GlUtils.createOESTexture()
        check(cameraTextureId != 0) { "Cannot create realtime video OES texture" }
        cameraSurfaceTexture = SurfaceTexture(cameraTextureId).apply {
            setDefaultBufferSize(cameraInputSize.width, cameraInputSize.height)
            setOnFrameAvailableListener { onFrameAvailable() }
        }
        cameraSurface = Surface(cameraSurfaceTexture)
        initialized = true
        PLog.i(
            TAG,
            "Initialized: camera=${cameraInputSize.width}x${cameraInputSize.height}, " +
                "encoder=${encoderOutputSize.width}x${encoderOutputSize.height}, " +
                "layers=${layers.size}, log=${videoLogProfile.name}, hlgInput=$hlgInput, " +
                "mirrorH=$mirrorHorizontally, mirrorV=$mirrorVertically, " +
                "color=${encoderColorConfig.debugName}"
        )
    }

    /**
     * 消费 SurfaceTexture 中最新的一帧并写入编码器。必须在初始化所用的录像 GL 线程调用。
     *
     * @return 相机帧时间戳（纳秒）；没有有效帧时返回 null。
     */
    fun renderLatestFrame(): Long? {
        if (!initialized || !makeCurrent()) return null
        val surfaceTexture = cameraSurfaceTexture ?: return null
        try {
            surfaceTexture.updateTexImage()
            surfaceTexture.getTransformMatrix(stMatrix)
            updateCameraTransformGeometry()
        } catch (error: RuntimeException) {
            PLog.e(TAG, "Failed to acquire realtime video frame", error)
            return null
        }

        val timestampNs = surfaceTexture.timestamp
        if (timestampNs <= 0L) return null

        val firstLayer = layers.first()
        val firstTargetFbo = if (layers.size > 1) intermediateFboId else 0
        drawLayer(
            layer = firstLayer,
            targetFboId = firstTargetFbo,
            textureSource = PreviewColorTextureSource.EXTERNAL_OES,
            textureTarget = GLES11Ext.GL_TEXTURE_EXTERNAL_OES,
            textureId = cameraTextureId,
            sourceStMatrix = stMatrix,
            cropRect = cameraCropRect,
            mvpMatrix = firstPassMvpMatrix,
            enableVideoLog = videoLogProfile.isEnabled,
            treatSourceAsHlgInput = hlgInput,
            presentationTimeNs = timestampNs,
        )

        if (layers.size > 1) {
            layers.drop(1).forEachIndexed { index, layer ->
                val isLast = index == layers.lastIndex - 1
                drawLayer(
                    layer = layer,
                    targetFboId = if (isLast) 0 else intermediateFboId,
                    textureSource = PreviewColorTextureSource.TEXTURE_2D,
                    textureTarget = GLES30.GL_TEXTURE_2D,
                    textureId = intermediateTextureId,
                    sourceStMatrix = identityMatrix,
                    cropRect = fullCropRect,
                    mvpMatrix = identityMatrix,
                    enableVideoLog = false,
                    treatSourceAsHlgInput = false,
                    presentationTimeNs = timestampNs,
                )
            }
        }

        EGLExt.eglPresentationTimeANDROID(eglDisplay, encoderEglSurface, timestampNs)
        if (!EGL14.eglSwapBuffers(eglDisplay, encoderEglSurface)) {
            throw IllegalStateException(
                "Realtime video eglSwapBuffers failed: 0x${Integer.toHexString(EGL14.eglGetError())}"
            )
        }
        return timestampNs
    }

    private fun updateCameraTransformGeometry() {
        val axesSwapped = isTextureTransformAxesSwapped(stMatrix)
        if (cameraTransformAxesSwapped == axesSwapped) return

        cameraTransformAxesSwapped = axesSwapped
        val orientedInputSize = if (axesSwapped) {
            Size(cameraInputSize.height, cameraInputSize.width)
        } else {
            cameraInputSize
        }
        cameraCropRect = resolveCenterCropRect(orientedInputSize, encoderOutputSize)
        PLog.i(
            TAG,
            "Camera texture transform: axesSwapped=$axesSwapped, " +
                "effective=${orientedInputSize.width}x${orientedInputSize.height}, " +
                "crop=${cameraCropRect.joinToString(prefix = "[", postfix = "]")}, " +
                "matrix=${stMatrix.joinToString(prefix = "[", postfix = "]")}"
        )
    }

    private fun drawLayer(
        layer: LayerResources,
        targetFboId: Int,
        textureSource: PreviewColorTextureSource,
        textureTarget: Int,
        textureId: Int,
        sourceStMatrix: FloatArray,
        cropRect: FloatArray,
        mvpMatrix: FloatArray,
        enableVideoLog: Boolean,
        treatSourceAsHlgInput: Boolean,
        presentationTimeNs: Long,
    ) {
        val lutEnabled = layer.lutConfig != null && layer.lutTextureId != 0
        val variant = PreviewColorShaderVariant.forPass(
            textureSource = textureSource,
            params = layer.params,
            lutConfig = layer.lutConfig,
            lutEnabled = lutEnabled,
            videoLogEnabled = enableVideoLog,
            hlgInput = treatSourceAsHlgInput,
        )
        val locations = colorProgramCache.get(variant)
            ?: throw IllegalStateException("Cannot create realtime video color shader: $variant")

        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, targetFboId)
        GLES30.glViewport(0, 0, encoderOutputSize.width, encoderOutputSize.height)
        GLES30.glClearColor(0f, 0f, 0f, 1f)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glUseProgram(locations.programId)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(textureTarget, textureId)
        GLES30.glUniform1i(locations.uCameraTextureLocation, 0)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_3D,
            if (lutEnabled) layer.lutTextureId else 0,
        )
        GLES30.glUniform1i(locations.uLutTextureLocation, 1)

        GLES30.glUniformMatrix4fv(locations.uMVPMatrixLocation, 1, false, mvpMatrix, 0)
        GLES30.glUniformMatrix4fv(locations.uSTMatrixLocation, 1, false, sourceStMatrix, 0)
        GLES30.glUniform4f(
            locations.uCropRectLocation,
            cropRect[0],
            cropRect[1],
            cropRect[2],
            cropRect[3],
        )
        GLES30.glUniform1f(
            locations.uLutSizeLocation,
            layer.lutConfig?.size?.toFloat() ?: 1f,
        )
        GLES30.glUniform1f(locations.uLutIntensityLocation, layer.params.lutIntensity)
        GLES30.glUniform1i(locations.uLutEnabledLocation, if (lutEnabled) 1 else 0)
        GLES30.glUniform1i(locations.uLutMaskTypeLocation, 0)
        GLES30.glUniform1i(
            locations.uLutCurveLocation,
            LutShaderMappings.transferCurveId(layer.lutConfig?.curve),
        )
        GLES30.glUniform1i(
            locations.uLutColorSpaceLocation,
            LutShaderMappings.colorSpaceId(
                layer.lutConfig?.colorSpace ?: com.hinnka.mycamera.raw.ColorSpace.SRGB
            ),
        )
        GLES30.glUniform1i(
            locations.uVideoLogEnabledLocation,
            if (enableVideoLog && videoLogProfile.isEnabled) 1 else 0,
        )
        GLES30.glUniform1i(
            locations.uVideoLogCurveLocation,
            LutShaderMappings.transferCurveId(videoLogProfile.logCurve),
        )
        GLES30.glUniform1i(
            locations.uVideoColorSpaceLocation,
            LutShaderMappings.colorSpaceId(videoLogProfile.colorSpace),
        )
        GLES30.glUniform1i(
            locations.uIsHlgInputLocation,
            if (treatSourceAsHlgInput) 1 else 0,
        )

        bindRecipeUniforms(
            locations = locations,
            params = layer.params,
            presentationTimeNs = presentationTimeNs,
        )

        val curveEnabled = layer.curveTextureId != 0
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(
            GLES30.GL_TEXTURE_2D,
            if (curveEnabled) layer.curveTextureId else 0,
        )
        GLES30.glUniform1i(locations.uCurveTextureLocation, 2)
        GLES30.glUniform1i(locations.uCurveEnabledLocation, if (curveEnabled) 1 else 0)

        basicToneTextures.bind(
            context = appContext,
            textureUnit = 3,
            samplerLocation = locations.uBasicToneLutLocation,
            intensityLocation = locations.uBasicToneIntensityLocation,
            amount = ColorPaletteMapper.basicToneAmount(layer.params),
        )

        GLES30.glUniform1f(locations.uApertureLocation, 0f)
        GLES30.glUniform2f(locations.uFocusPointLocation, 0.5f, 0.5f)
        GLES30.glUniform2f(
            locations.uTexelSizeLocation,
            1f / max(1, encoderOutputSize.width).toFloat(),
            1f / max(1, encoderOutputSize.height).toFloat(),
        )

        val positions = vertexBuffer ?: return
        val textureCoordinates = textureCoordinateBuffer ?: return
        val indices = indexBuffer ?: return
        positions.position(0)
        textureCoordinates.position(0)
        indices.position(0)
        GLES30.glEnableVertexAttribArray(locations.aPositionLocation)
        GLES30.glVertexAttribPointer(
            locations.aPositionLocation,
            2,
            GLES30.GL_FLOAT,
            false,
            0,
            positions,
        )
        GLES30.glEnableVertexAttribArray(locations.aTexCoordLocation)
        GLES30.glVertexAttribPointer(
            locations.aTexCoordLocation,
            2,
            GLES30.GL_FLOAT,
            false,
            0,
            textureCoordinates,
        )
        GLES30.glDrawElements(
            GLES30.GL_TRIANGLES,
            Shaders.DRAW_ORDER.size,
            GLES30.GL_UNSIGNED_SHORT,
            indices,
        )
        GLES30.glDisableVertexAttribArray(locations.aPositionLocation)
        GLES30.glDisableVertexAttribArray(locations.aTexCoordLocation)
        GlUtils.checkGlError("RealtimeVideoRenderer.drawLayer")
    }

    private fun bindRecipeUniforms(
        locations: ColorPassLocations,
        params: ColorRecipeParams,
        presentationTimeNs: Long,
    ) {
        val enabled = !params.isDefault()
        GLES30.glUniform1i(locations.uColorRecipeEnabledLocation, if (enabled) 1 else 0)
        // 低像素和色散采样位于 shader 的 recipeEnabled 分支之前，必须每个 pass
        // 都显式赋值，避免复用同一 program 时继承上一层的 uniform。
        GLES30.glUniform1f(locations.uChromaticAberrationLocation, params.chromaticAberration)
        GLES30.glUniform1f(locations.uLowResLocation, params.lowRes)
        GLES30.glUniform1f(
            locations.uAspectRatioLocation,
            encoderOutputSize.width.toFloat() / max(1, encoderOutputSize.height).toFloat(),
        )
        if (!enabled) return

        GLES30.glUniform1f(locations.uExposureLocation, params.exposure)
        GLES30.glUniform1f(locations.uContrastLocation, params.contrast)
        GLES30.glUniform1f(locations.uSaturationLocation, params.saturation)
        GLES30.glUniform1f(locations.uTemperatureLocation, params.temperature)
        GLES30.glUniform1f(locations.uTintLocation, params.tint)
        GLES30.glUniform1f(locations.uFadeLocation, params.fade)
        GLES30.glUniform1f(locations.uVibranceLocation, params.color)
        ShadowsHighlightsShader.bindUniformLocations(
            highlightsLocation = locations.uHighlightsLocation,
            shadowsLocation = locations.uShadowsLocation,
            highlights = params.highlights,
            shadows = params.shadows,
        )
        GLES30.glUniform1f(locations.uToneToeLocation, params.toneToe)
        GLES30.glUniform1f(locations.uToneShoulderLocation, params.toneShoulder)
        GLES30.glUniform1f(locations.uTonePivotLocation, params.tonePivot)
        GLES30.glUniform1f(locations.uFilmGrainLocation, params.filmGrain)
        GLES30.glUniform1f(locations.uVignetteLocation, params.vignette)
        GLES30.glUniform1f(locations.uFlashLocation, params.flash)
        GLES30.glUniform1f(locations.uBleachBypassLocation, params.bleachBypass)
        GLES30.glUniform1f(locations.uNoiseLocation, params.noise)
        GLES30.glUniform1f(
            locations.uNoiseSeedLocation,
            (presentationTimeNs % 10_000_000_000L) / 1_000_000_000f,
        )
        GLES30.glUniform3f(
            locations.uGradingHuesLocation,
            params.gradingShadowHue,
            params.gradingMidtoneHue,
            params.gradingHighlightHue,
        )
        GLES30.glUniform3f(
            locations.uGradingAmountsLocation,
            params.gradingShadowAmount,
            params.gradingMidtoneAmount,
            params.gradingHighlightAmount,
        )
        GLES30.glUniform1f(locations.uGradingBalanceLocation, params.gradingBalance)
        GLES30.glUniform1f(locations.uGradingBlendingLocation, params.gradingBlending)
        ColorRecipeGl.bindLchAdjustments(
            locations.uLchHueAdjustmentsLocation,
            locations.uLchChromaAdjustmentsLocation,
            locations.uLchLightnessAdjustmentsLocation,
            ColorRecipeGl.lchAdjustments(params),
        )
        GLES30.glUniformMatrix3fv(
            locations.uPrimaryCalibrationMatrixLocation,
            1,
            false,
            CameraRawCalibrationMatrix.build(params),
            0,
        )
    }

    private fun initializeEgl(encoderSurface: Surface) {
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        check(eglDisplay != EGL14.EGL_NO_DISPLAY) { "Cannot obtain EGL display" }
        val major = IntArray(1)
        val minor = IntArray(1)
        check(EGL14.eglInitialize(eglDisplay, major, 0, minor, 0)) {
            "Cannot initialize EGL display"
        }
        val candidates = buildList {
            if (encoderColorConfig.prefer10BitInputSurface) {
                chooseConfig(red = 10, green = 10, blue = 10, alpha = 2)
                    ?.let { add("RGB10_A2" to it) }
            }
            chooseConfig(red = 8, green = 8, blue = 8, alpha = 8)
                ?.let { add("RGBA8888" to it) }
        }
        check(candidates.isNotEmpty()) { "Cannot choose recordable EGL config" }

        var lastError = EGL14.EGL_SUCCESS
        candidates.forEach { (label, config) ->
            eglContext = EGL14.eglCreateContext(
                eglDisplay,
                config,
                EGL14.EGL_NO_CONTEXT,
                intArrayOf(EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE),
                0,
            )
            if (eglContext == EGL14.EGL_NO_CONTEXT) {
                lastError = EGL14.eglGetError()
                PLog.w(TAG, "$label realtime EGL context unavailable: 0x${Integer.toHexString(lastError)}")
                return@forEach
            }

            encoderEglSurface = EGL14.eglCreateWindowSurface(
                eglDisplay,
                config,
                encoderSurface,
                intArrayOf(EGL14.EGL_NONE),
                0,
            )
            if (encoderEglSurface != EGL14.EGL_NO_SURFACE && makeCurrent()) {
                if (encoderColorConfig.prefer10BitInputSurface && label != "RGB10_A2") {
                    PLog.w(
                        TAG,
                        "10-bit encoder EGL surface unavailable; using RGBA8888 for " +
                            "${encoderColorConfig.debugName}"
                    )
                } else {
                    PLog.i(TAG, "Using $label recordable EGL surface for ${encoderColorConfig.debugName}")
                }
                return
            }

            lastError = EGL14.eglGetError()
            PLog.w(TAG, "$label encoder EGL surface unavailable: 0x${Integer.toHexString(lastError)}")
            if (encoderEglSurface != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(eglDisplay, encoderEglSurface)
                encoderEglSurface = EGL14.EGL_NO_SURFACE
            }
            EGL14.eglDestroyContext(eglDisplay, eglContext)
            eglContext = EGL14.EGL_NO_CONTEXT
        }

        if (encoderColorConfig.prefer10BitInputSurface) {
            PLog.w(TAG, "10-bit encoder EGL surface unavailable; the Log path cannot preserve 10-bit precision")
        }
        throw IllegalStateException(
            "Cannot create encoder EGL surface: 0x${Integer.toHexString(lastError)}"
        )
    }

    private fun chooseConfig(red: Int, green: Int, blue: Int, alpha: Int): EGLConfig? {
        return chooseConfig(red, green, blue, alpha, EGL_OPENGL_ES3_BIT_KHR)
            ?: chooseConfig(red, green, blue, alpha, EGL14.EGL_OPENGL_ES2_BIT)
    }

    private fun chooseConfig(
        red: Int,
        green: Int,
        blue: Int,
        alpha: Int,
        renderableType: Int,
    ): EGLConfig? {
        val configs = arrayOfNulls<EGLConfig>(1)
        val count = IntArray(1)
        val attributes = intArrayOf(
            EGL14.EGL_RED_SIZE, red,
            EGL14.EGL_GREEN_SIZE, green,
            EGL14.EGL_BLUE_SIZE, blue,
            EGL14.EGL_ALPHA_SIZE, alpha,
            EGL14.EGL_RENDERABLE_TYPE, renderableType,
            EGL_RECORDABLE_ANDROID, 1,
            EGL14.EGL_NONE,
        )
        val success = EGL14.eglChooseConfig(
            eglDisplay,
            attributes,
            0,
            configs,
            0,
            configs.size,
            count,
            0,
        )
        return if (success && count[0] > 0) configs[0] else null
    }

    private fun makeCurrent(): Boolean {
        if (eglDisplay == EGL14.EGL_NO_DISPLAY ||
            eglContext == EGL14.EGL_NO_CONTEXT ||
            encoderEglSurface == EGL14.EGL_NO_SURFACE
        ) {
            return false
        }
        return EGL14.eglMakeCurrent(
            eglDisplay,
            encoderEglSurface,
            encoderEglSurface,
            eglContext,
        )
    }

    private fun initializeGeometry() {
        vertexBuffer = ByteBuffer.allocateDirect(Shaders.FULL_QUAD_VERTICES.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply {
                put(Shaders.FULL_QUAD_VERTICES)
                position(0)
            }
        textureCoordinateBuffer =
            ByteBuffer.allocateDirect(Shaders.TEXTURE_COORDS.size * Float.SIZE_BYTES)
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer()
                .apply {
                    put(Shaders.TEXTURE_COORDS)
                    position(0)
                }
        indexBuffer = ByteBuffer.allocateDirect(Shaders.DRAW_ORDER.size * Short.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .apply {
                put(Shaders.DRAW_ORDER)
                position(0)
            }
    }

    private fun initializeLayerTextures() {
        layers.forEach { layer ->
            layer.lutConfig?.let { config ->
                layer.lutTextureId = GlUtils.create3DTexture(config)
                check(layer.lutTextureId != 0) {
                    "Cannot upload realtime video LUT ${config.title}"
                }
            }
            val params = layer.params
            val hasCurve = params.masterCurvePoints != null ||
                params.redCurvePoints != null ||
                params.greenCurvePoints != null ||
                params.blueCurvePoints != null
            if (hasCurve) {
                layer.curveTextureId = ColorRecipeGl.ensureCurveTextureUploaded(
                    textureId = 0,
                    pendingBuffer = CurveUtils.buildCurveTextureBuffer(
                        params.masterCurvePoints,
                        params.redCurvePoints,
                        params.greenCurvePoints,
                        params.blueCurvePoints,
                    ),
                )
                check(layer.curveTextureId != 0) {
                    "Cannot upload realtime video curve texture"
                }
            }
        }
    }

    private fun initializeIntermediateFramebuffer() {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        intermediateTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, intermediateTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA8,
            encoderOutputSize.width,
            encoderOutputSize.height,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            null,
        )

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        intermediateFboId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, intermediateFboId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            intermediateTextureId,
            0,
        )
        check(GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) == GLES30.GL_FRAMEBUFFER_COMPLETE) {
            "Realtime video intermediate framebuffer is incomplete"
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    fun release() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY &&
            eglContext != EGL14.EGL_NO_CONTEXT &&
            encoderEglSurface != EGL14.EGL_NO_SURFACE
        ) {
            makeCurrent()
        }
        cameraSurfaceTexture?.setOnFrameAvailableListener(null)
        cameraSurface?.release()
        cameraSurface = null
        cameraSurfaceTexture?.release()
        cameraSurfaceTexture = null

        layers.forEach { layer ->
            if (layer.lutTextureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(layer.lutTextureId), 0)
                layer.lutTextureId = 0
            }
            if (layer.curveTextureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(layer.curveTextureId), 0)
                layer.curveTextureId = 0
            }
        }
        if (cameraTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(cameraTextureId), 0)
            cameraTextureId = 0
        }
        if (intermediateTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(intermediateTextureId), 0)
            intermediateTextureId = 0
        }
        if (intermediateFboId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(intermediateFboId), 0)
            intermediateFboId = 0
        }
        colorProgramCache.release()
        basicToneTextures.release()

        if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
            EGL14.eglMakeCurrent(
                eglDisplay,
                EGL14.EGL_NO_SURFACE,
                EGL14.EGL_NO_SURFACE,
                EGL14.EGL_NO_CONTEXT,
            )
            if (encoderEglSurface != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(eglDisplay, encoderEglSurface)
            }
            if (eglContext != EGL14.EGL_NO_CONTEXT) {
                EGL14.eglDestroyContext(eglDisplay, eglContext)
            }
        }
        encoderEglSurface = EGL14.EGL_NO_SURFACE
        eglContext = EGL14.EGL_NO_CONTEXT
        eglDisplay = EGL14.EGL_NO_DISPLAY
        initialized = false
    }
}

private fun resolveCenterCropRect(source: Size, target: Size): FloatArray {
    val sourceAspect = source.width.toFloat() / max(1, source.height).toFloat()
    val targetAspect = target.width.toFloat() / max(1, target.height).toFloat()
    return when {
        sourceAspect > targetAspect -> {
            val visibleWidth = targetAspect / sourceAspect
            val inset = (1f - visibleWidth) / 2f
            floatArrayOf(inset, 0f, 1f - inset, 1f)
        }
        sourceAspect < targetAspect -> {
            val visibleHeight = sourceAspect / targetAspect
            val inset = (1f - visibleHeight) / 2f
            floatArrayOf(0f, inset, 1f, 1f - inset)
        }
        else -> floatArrayOf(0f, 0f, 1f, 1f)
    }
}

internal fun isTextureTransformAxesSwapped(matrix: FloatArray): Boolean {
    if (matrix.size < 6) return false
    val transformedXAxisFollowsY = abs(matrix[1]) > abs(matrix[0])
    val transformedYAxisFollowsX = abs(matrix[4]) > abs(matrix[5])
    return transformedXAxisFollowsY && transformedYAxisFollowsX
}
