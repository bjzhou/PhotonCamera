package com.hinnka.mycamera.agc

import android.hardware.HardwareBuffer
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES11Ext
import android.opengl.GLES30
import android.os.Handler
import android.os.HandlerThread
import android.os.Message
import android.view.Surface
import android.util.Log
import com.hinnka.mycamera.lut.LutConfig
import com.hinnka.mycamera.lut.LutManager
import com.hinnka.mycamera.lut.Shaders
import com.hinnka.mycamera.model.ColorRecipeParams
import kotlinx.coroutines.runBlocking
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer

/**
 * 反射包装 oliveoil EGLImage。
 * 用于从 HardwareBuffer 创建 EGLImage 并绑定到 GL_TEXTURE_EXTERNAL_OES 纹理。
 * OES 纹理可处理任何 HardwareBuffer 格式，包括 IMPLEMENTATION_DEFINED (format=34)。
 */
class ReflectEGLImage(buffer: HardwareBuffer) : AutoCloseable {
    private var instance: Any? = null
    val a: Long

    init {
        val clazz = Class.forName("com.google.android.libraries.oliveoil.gl.EGLImage")
        val constructor = clazz.getConstructor(HardwareBuffer::class.java)
        instance = constructor.newInstance(buffer)
        val field = clazz.getField("a")
        a = field.getLong(instance)
    }

    override fun close() {
        instance?.let {
            runCatching { it.javaClass.getMethod("close").invoke(it) }
        }
    }
}

class RenderParams(
    val buffer: HardwareBuffer,
    val srcRect: android.graphics.Rect?,
    val dstRect: android.graphics.Rect?,
    val rotation: Int,
    val listener: Any?
)

/**
 * 代理渲染线程。
 *
 * 统一路径：EGLImage → GL_TEXTURE_EXTERNAL_OES → LUT+ColorRecipe shader → Surface
 * 使用 OES 纹理可直接处理 IMPLEMENTATION_DEFINED (format=34) 格式的 HardwareBuffer。
 */
class ProxyRenderSession(
    val originalSurface: Surface,
    val width: Int,
    val height: Int
) : HandlerThread("ProxyRenderThread-${originalSurface.hashCode()}"), Handler.Callback {

    private val TAG = "ProxyRenderSession"

    private var handler: Handler? = null

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    private var lutProgram = 0
    private var uCameraTextureLoc = 0
    private var uLutTextureLoc = 0
    private var uLutSizeLoc = 0
    private var uLutIntensityLoc = 0
    private var uLutEnabledLoc = 0
    private var uLutMaskTypeLoc = 0
    private var uLutCurveLoc = 0
    private var uLutColorSpaceLoc = 0
    private var uInputColorSpaceLoc = 0
    private var uIsHlgInputLoc = 0
    private var uMVPMatrixLoc = 0
    private var uSTMatrixLoc = 0
    private var uSTMatrixFragLoc = 0
    private var uCropRectLoc = 0
    private var uVideoLogEnabledLoc = 0
    private var uVideoLogCurveLoc = 0
    private var uVideoColorSpaceLoc = 0
    private var uColorRecipeEnabledLoc = 0
    private var uExposureLoc = 0
    private var uContrastLoc = 0
    private var uSaturationLoc = 0
    private var uTemperatureLoc = 0
    private var uTintLoc = 0
    private var uFadeLoc = 0
    private var uVibranceLoc = 0
    private var uHighlightsLoc = 0
    private var uShadowsLoc = 0
    private var uToneToeLoc = 0
    private var uToneShoulderLoc = 0
    private var uTonePivotLoc = 0
    private var uFilmGrainLoc = 0
    private var uVignetteLoc = 0
    private var uBleachBypassLoc = 0
    private var uNoiseLoc = 0
    private var uNoiseSeedLoc = 0
    private var uLowResLoc = 0
    private var uAspectRatioLoc = 0
    private var uLchHueAdjustmentsLoc = 0
    private var uLchChromaAdjustmentsLoc = 0
    private var uLchLightnessAdjustmentsLoc = 0
    private var uPrimaryCalibrationMatrixLoc = 0
    private var uCurveTextureLoc = 0
    private var uCurveEnabledLoc = 0
    private var uApertureLoc = 0
    private var uFocusPointLoc = 0
    private var uChromaticAberrationLoc = 0
    private var uHalationLoc = 0
    private var uRedHalationLoc = 0
    private var uSharpeningLoc = 0
    private var uTexelSizeLoc = 0

    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null

    private var currentLutId: String? = null
    private var lutTextureId = 0
    private var curveTextureId = 0
    private var inputTexId = 0
    private var dummyLutTextureId = 0
    private var dummy2DTextureId = 0
    private var currentEglImage: ReflectEGLImage? = null
    // 累积所有未关闭的 EGLImage，在 session release 时统一清理
    private val eglImagePool = mutableListOf<ReflectEGLImage>()

    private val MSG_RENDER_FRAME = 2
    private val MSG_RELEASE = 3

    init {
        start()
        handler = Handler(looper, this)

        val syncBarrier = Object()
        synchronized(syncBarrier) {
            handler?.post {
                initGlResources()
                synchronized(syncBarrier) {
                    syncBarrier.notifyAll()
                }
            }
            try {
                @Suppress("PLATFORM_CLASS_MAPPED_TO_KOTLIN")
                (syncBarrier as java.lang.Object).wait(3000)
            } catch (e: InterruptedException) {
                Log.e(TAG, "ProxyRenderSession init interrupted", e)
            }
        }
    }

    override fun handleMessage(msg: Message): Boolean {
        when (msg.what) {
            MSG_RENDER_FRAME -> {
                val params = msg.obj as? RenderParams
                if (params != null) drawFrame(params)
            }
            MSG_RELEASE -> {
                releaseGlResources()
                looper.quit()
            }
        }
        return true
    }

    fun renderFrame(buffer: HardwareBuffer, srcRect: android.graphics.Rect?, dstRect: android.graphics.Rect?, rotation: Int, listener: Any?) {
        val h = handler ?: return
        h.sendMessage(h.obtainMessage(MSG_RENDER_FRAME, RenderParams(buffer, srcRect, dstRect, rotation, listener)))
    }

    fun release() {
        val h = handler ?: return
        h.sendMessage(h.obtainMessage(MSG_RELEASE))
    }

    private fun checkGlError(op: String) {
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            Log.e(TAG, "GL error after $op: 0x${Integer.toHexString(error)}")
        }
    }

    private fun initGlResources() {
        try {
            eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
            val version = IntArray(2)
            EGL14.eglInitialize(eglDisplay, version, 0, version, 1)

            val configAttribs = intArrayOf(
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_RED_SIZE, 8, EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8, EGL14.EGL_ALPHA_SIZE, 8,
                EGL14.EGL_NONE
            )
            val configs = arrayOfNulls<EGLConfig>(1)
            val numConfigs = IntArray(1)
            EGL14.eglChooseConfig(eglDisplay, configAttribs, 0, configs, 0, 1, numConfigs, 0)
            val config = configs[0] ?: throw RuntimeException("No suitable EGLConfig")

            eglContext = EGL14.eglCreateContext(eglDisplay, config, EGL14.EGL_NO_CONTEXT,
                intArrayOf(EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE), 0)
            if (eglContext == EGL14.EGL_NO_CONTEXT) throw RuntimeException("EGLContext failed")

            eglSurface = EGL14.eglCreateWindowSurface(eglDisplay, config, originalSurface,
                intArrayOf(EGL14.EGL_NONE), 0)
            if (eglSurface == EGL14.EGL_NO_SURFACE) throw RuntimeException("EGLSurface failed")

            EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
            Log.d(TAG, "EGL init OK. GL_RENDERER: ${GLES30.glGetString(GLES30.GL_RENDERER)}")

            vertexBuffer = ByteBuffer.allocateDirect(4 * 2 * 4).order(ByteOrder.nativeOrder())
                .asFloatBuffer().put(floatArrayOf(-1f, -1f, 1f, -1f, -1f, 1f, 1f, 1f))
            vertexBuffer?.position(0)

            texCoordBuffer = ByteBuffer.allocateDirect(4 * 2 * 4).order(ByteOrder.nativeOrder())
                .asFloatBuffer().put(floatArrayOf(0f, 1f, 1f, 1f, 0f, 0f, 1f, 1f))
            texCoordBuffer?.position(0)

            // OES 纹理（创建一次，每帧通过 EGLImage 替换 backing store）
            val texIds = IntArray(1)
            GLES30.glGenTextures(1, texIds, 0)
            inputTexId = texIds[0]
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, inputTexId)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, 0)

            // 默认的空 3D 纹理
            val dummy3D = IntArray(1)
            GLES30.glGenTextures(1, dummy3D, 0)
            dummyLutTextureId = dummy3D[0]
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, dummyLutTextureId)
            val buffer3D = ByteBuffer.allocateDirect(4).put(byteArrayOf(0, 0, 0, 0))
            buffer3D.position(0)
            GLES30.glTexImage3D(GLES30.GL_TEXTURE_3D, 0, GLES30.GL_RGBA8, 1, 1, 1, 0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer3D)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, 0)

            // 默认的空 2D 纹理
            val dummy2D = IntArray(1)
            GLES30.glGenTextures(1, dummy2D, 0)
            dummy2DTextureId = dummy2D[0]
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummy2DTextureId)
            val buffer2D = ByteBuffer.allocateDirect(4).put(byteArrayOf(0, 0, 0, 0))
            buffer2D.position(0)
            GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, 1, 1, 0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, buffer2D)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)

            // OES LUT shader (使用 Shaders.kt 中的 samplerExternalOES 版本)
            val vs = compileShader(GLES30.GL_VERTEX_SHADER, Shaders.VERTEX_SHADER)
            val fs = compileShader(GLES30.GL_FRAGMENT_SHADER, Shaders.FRAGMENT_SHADER_COLOR_RECIPE)
            lutProgram = GLES30.glCreateProgram()
            GLES30.glAttachShader(lutProgram, vs)
            GLES30.glAttachShader(lutProgram, fs)
            GLES30.glLinkProgram(lutProgram)
            val linkStatus = IntArray(1)
            GLES30.glGetProgramiv(lutProgram, GLES30.GL_LINK_STATUS, linkStatus, 0)
            if (linkStatus[0] == 0) {
                Log.e(TAG, "LUT program link failed: ${GLES30.glGetProgramInfoLog(lutProgram)}")
                GLES30.glDeleteProgram(lutProgram); lutProgram = 0
            }
            GLES30.glDeleteShader(vs); GLES30.glDeleteShader(fs)

            // 获取所有 uniform locations
            uCameraTextureLoc = GLES30.glGetUniformLocation(lutProgram, "uCameraTexture")
            uLutTextureLoc = GLES30.glGetUniformLocation(lutProgram, "uLutTexture")
            uLutSizeLoc = GLES30.glGetUniformLocation(lutProgram, "uLutSize")
            uLutIntensityLoc = GLES30.glGetUniformLocation(lutProgram, "uLutIntensity")
            uLutEnabledLoc = GLES30.glGetUniformLocation(lutProgram, "uLutEnabled")
            uLutMaskTypeLoc = GLES30.glGetUniformLocation(lutProgram, "uLutMaskType")
            uLutCurveLoc = GLES30.glGetUniformLocation(lutProgram, "uLutCurve")
            uLutColorSpaceLoc = GLES30.glGetUniformLocation(lutProgram, "uLutColorSpace")
            uInputColorSpaceLoc = GLES30.glGetUniformLocation(lutProgram, "uInputColorSpace")
            uIsHlgInputLoc = GLES30.glGetUniformLocation(lutProgram, "uIsHlgInput")
            uMVPMatrixLoc = GLES30.glGetUniformLocation(lutProgram, "uMVPMatrix")
            uSTMatrixLoc = GLES30.glGetUniformLocation(lutProgram, "uSTMatrix")
            uSTMatrixFragLoc = GLES30.glGetUniformLocation(lutProgram, "uSTMatrix")
            uCropRectLoc = GLES30.glGetUniformLocation(lutProgram, "uCropRect")
            uVideoLogEnabledLoc = GLES30.glGetUniformLocation(lutProgram, "uVideoLogEnabled")
            uVideoLogCurveLoc = GLES30.glGetUniformLocation(lutProgram, "uVideoLogCurve")
            uVideoColorSpaceLoc = GLES30.glGetUniformLocation(lutProgram, "uVideoColorSpace")
            uColorRecipeEnabledLoc = GLES30.glGetUniformLocation(lutProgram, "uColorRecipeEnabled")
            uExposureLoc = GLES30.glGetUniformLocation(lutProgram, "uExposure")
            uContrastLoc = GLES30.glGetUniformLocation(lutProgram, "uContrast")
            uSaturationLoc = GLES30.glGetUniformLocation(lutProgram, "uSaturation")
            uTemperatureLoc = GLES30.glGetUniformLocation(lutProgram, "uTemperature")
            uTintLoc = GLES30.glGetUniformLocation(lutProgram, "uTint")
            uFadeLoc = GLES30.glGetUniformLocation(lutProgram, "uFade")
            uVibranceLoc = GLES30.glGetUniformLocation(lutProgram, "uVibrance")
            uHighlightsLoc = GLES30.glGetUniformLocation(lutProgram, "uHighlights")
            uShadowsLoc = GLES30.glGetUniformLocation(lutProgram, "uShadows")
            uToneToeLoc = GLES30.glGetUniformLocation(lutProgram, "uToneToe")
            uToneShoulderLoc = GLES30.glGetUniformLocation(lutProgram, "uToneShoulder")
            uTonePivotLoc = GLES30.glGetUniformLocation(lutProgram, "uTonePivot")
            uFilmGrainLoc = GLES30.glGetUniformLocation(lutProgram, "uFilmGrain")
            uVignetteLoc = GLES30.glGetUniformLocation(lutProgram, "uVignette")
            uBleachBypassLoc = GLES30.glGetUniformLocation(lutProgram, "uBleachBypass")
            uNoiseLoc = GLES30.glGetUniformLocation(lutProgram, "uNoise")
            uNoiseSeedLoc = GLES30.glGetUniformLocation(lutProgram, "uNoiseSeed")
            uLowResLoc = GLES30.glGetUniformLocation(lutProgram, "uLowRes")
            uAspectRatioLoc = GLES30.glGetUniformLocation(lutProgram, "uAspectRatio")
            uLchHueAdjustmentsLoc = GLES30.glGetUniformLocation(lutProgram, "uLchHueAdjustments")
            uLchChromaAdjustmentsLoc = GLES30.glGetUniformLocation(lutProgram, "uLchChromaAdjustments")
            uLchLightnessAdjustmentsLoc = GLES30.glGetUniformLocation(lutProgram, "uLchLightnessAdjustments")
            uPrimaryCalibrationMatrixLoc = GLES30.glGetUniformLocation(lutProgram, "uPrimaryCalibrationMatrix")
            uCurveTextureLoc = GLES30.glGetUniformLocation(lutProgram, "uCurveTexture")
            uCurveEnabledLoc = GLES30.glGetUniformLocation(lutProgram, "uCurveEnabled")
            uApertureLoc = GLES30.glGetUniformLocation(lutProgram, "uAperture")
            uFocusPointLoc = GLES30.glGetUniformLocation(lutProgram, "uFocusPoint")
            uChromaticAberrationLoc = GLES30.glGetUniformLocation(lutProgram, "uChromaticAberration")
            uHalationLoc = GLES30.glGetUniformLocation(lutProgram, "uHalation")
            uRedHalationLoc = GLES30.glGetUniformLocation(lutProgram, "uRedHalation")
            uSharpeningLoc = GLES30.glGetUniformLocation(lutProgram, "uSharpening")
            uTexelSizeLoc = GLES30.glGetUniformLocation(lutProgram, "uTexelSize")

            Log.d(TAG, "GL resources initialized OK (OES path)")
        } catch (e: Exception) {
            Log.e(TAG, "initGlResources failed", e)
        }
    }

    private fun compileShader(type: Int, source: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            Log.e(TAG, "Shader compile error: ${GLES30.glGetShaderInfoLog(shader)}")
            GLES30.glDeleteShader(shader); return 0
        }
        return shader
    }

    /**
     * 将 HardwareBuffer 内容通过 EGLImage 绑定到 GL_TEXTURE_EXTERNAL_OES 纹理。
     * OES 纹理可处理任何格式，包括 IMPLEMENTATION_DEFINED (format=34)。
     *
     * 纹理在 initGlResources 中创建一次，每帧只替换 EGLImage（不删除/重建纹理）。
     * 调用我们自己编写的 JNI ImageTargetTexture2DOES 进行绑定。
     */
    private fun uploadInputTexture(buffer: HardwareBuffer): Boolean {
        return runCatching {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, inputTexId)

            // 创建新 EGLImage 并替换纹理的 backing store
            // 旧 EGLImage 不关闭，放入 pool 等 session release 时统一清理
            val eglImage = ReflectEGLImage(buffer)
            
            // 使用自定义的 JNI EglOesBridge.imageTargetTexture2DOES
            EglOesBridge.imageTargetTexture2DOES(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, eglImage.a)

            currentEglImage?.let { eglImagePool.add(it) }
            currentEglImage = eglImage

            checkGlError("OES EGLImage attach")

            Log.d(TAG, "OES EGLImage upload OK for format=${buffer.format} pool=${eglImagePool.size}")
            true
        }.onFailure { e ->
            Log.e(TAG, "OES EGLImage upload failed for format=${buffer.format}", e)
        }.getOrDefault(false)
    }

    private fun drainGlErrors(): Int {
        var last = GLES30.GL_NO_ERROR
        while (true) {
            val e = GLES30.glGetError()
            if (e == GLES30.GL_NO_ERROR) break
            last = e
        }
        return last
    }

    private fun drawFrame(params: RenderParams) {
        if (eglDisplay == EGL14.EGL_NO_DISPLAY || eglSurface == EGL14.EGL_NO_SURFACE || lutProgram == 0) {
            releaseBuffer(params.listener, params.buffer)
            return
        }

        runCatching {
            val viewWidth = params.dstRect?.width() ?: width
            val viewHeight = params.dstRect?.height() ?: height
            val viewLeft = params.dstRect?.left ?: 0
            val viewTop = params.dstRect?.top ?: 0

            // 清除上一帧遗留的 GL 错误
            val staleErr = drainGlErrors()
            if (staleErr != GLES30.GL_NO_ERROR) {
                Log.w(TAG, "Stale GL error from previous frame: 0x${Integer.toHexString(staleErr)}")
            }

            Log.d(TAG, "drawFrame: ${params.buffer.width}x${params.buffer.height} format=${params.buffer.format} rot=${params.rotation}")

            val textureReady = uploadInputTexture(params.buffer)

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            GLES30.glViewport(viewLeft, viewTop, viewWidth, viewHeight)
            GLES30.glClearColor(0f, 0f, 0f, 1f)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

            if (!textureReady) {
                EGL14.eglSwapBuffers(eglDisplay, eglSurface)
                return@runCatching
            }

            GLES30.glUseProgram(lutProgram)

            // OES 纹理 → unit 0
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, inputTexId)
            GLES30.glUniform1i(uCameraTextureLoc, 0)

            // 纹理坐标（考虑旋转）
            val lutTexCoords = getTexCoords(params.rotation)
            texCoordBuffer?.clear()
            texCoordBuffer?.put(lutTexCoords)
            texCoordBuffer?.position(0)

            // 矩阵：identity（不需要 SurfaceTexture 的 stMatrix 变换，因为 OES 直接采样 EGLImage）
            val identityMatrix = FloatArray(16)
            android.opengl.Matrix.setIdentityM(identityMatrix, 0)
            GLES30.glUniformMatrix4fv(uMVPMatrixLoc, 1, false, identityMatrix, 0)
            GLES30.glUniformMatrix4fv(uSTMatrixLoc, 1, false, identityMatrix, 0)
            GLES30.glUniformMatrix4fv(uSTMatrixFragLoc, 1, false, identityMatrix, 0)
            val src = params.srcRect
            if (src != null) {
                val bufW = params.buffer.width.toFloat()
                val bufH = params.buffer.height.toFloat()
                GLES30.glUniform4f(
                    uCropRectLoc,
                    src.left.toFloat() / bufW,
                    src.top.toFloat() / bufH,
                    src.right.toFloat() / bufW,
                    src.bottom.toFloat() / bufH
                )
            } else {
                GLES30.glUniform4f(uCropRectLoc, 0f, 0f, 1f, 1f)
            }

            var lutConfig: LutConfig? = null
            var recipeParams: ColorRecipeParams? = null
            val context = PhotonAgcBridge.getContext()
            val lutId = context?.let { PhotonAgcBridge.getSelectedLutId(it) }

            if (context != null && !lutId.isNullOrBlank()) {
                runCatching {
                    val lutManager = LutManager(context).apply { initialize() }
                    lutConfig = lutManager.loadLut(lutId)
                    recipeParams = runBlocking {
                        runCatching { lutManager.loadColorRecipeParams(lutId) }.getOrNull()
                    }
                    Log.d(TAG, "Selected LUT: $lutId, loadedConfig=${lutConfig != null}, size=${lutConfig?.size}, format=${params.buffer.format}")
                }.onFailure { e ->
                    Log.e(TAG, "Failed to load LUT: $lutId for format=${params.buffer.format}", e)
                }
            } else {
                Log.d(TAG, "No LUT active for format=${params.buffer.format}: lutId=$lutId")
            }

            if (lutConfig != null) {
                uploadLutTexture(lutConfig)
                GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
                GLES30.glUniform1i(uLutTextureLoc, 1)
                GLES30.glUniform1f(uLutSizeLoc, lutConfig.size.toFloat())
                GLES30.glUniform1f(uLutIntensityLoc, recipeParams?.lutIntensity ?: 1f)
                GLES30.glUniform1i(uLutEnabledLoc, 1)
                GLES30.glUniform1i(uLutMaskTypeLoc, 0)
                GLES30.glUniform1i(uLutCurveLoc, lutConfig.curve.shaderId)
                GLES30.glUniform1i(uLutColorSpaceLoc, lutConfig.colorSpace.ordinal)
            } else {
                GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, dummyLutTextureId)
                GLES30.glUniform1i(uLutTextureLoc, 1)
                GLES30.glUniform1i(uLutEnabledLoc, 0)
            }

            val effectiveRecipe = recipeParams?.let { com.hinnka.mycamera.model.ColorPaletteMapper.mergeIntoEffectiveParams(it) }
            val colorRecipeEnabled = effectiveRecipe != null && !effectiveRecipe.isDefault()
            GLES30.glUniform1i(uColorRecipeEnabledLoc, if (colorRecipeEnabled) 1 else 0)
            GLES30.glUniform1i(uInputColorSpaceLoc, 0)
            val isHlgInput = params.buffer.format == 2141391878
            GLES30.glUniform1i(uIsHlgInputLoc, if (isHlgInput) 1 else 0)
            GLES30.glUniform1i(uVideoLogEnabledLoc, 0)
            GLES30.glUniform1i(uVideoLogCurveLoc, 0)
            GLES30.glUniform1i(uVideoColorSpaceLoc, 0)

            if (colorRecipeEnabled && effectiveRecipe != null) {
                GLES30.glUniform1f(uExposureLoc, effectiveRecipe.exposure)
                GLES30.glUniform1f(uContrastLoc, effectiveRecipe.contrast)
                GLES30.glUniform1f(uSaturationLoc, effectiveRecipe.saturation)
                GLES30.glUniform1f(uTemperatureLoc, effectiveRecipe.temperature)
                GLES30.glUniform1f(uTintLoc, effectiveRecipe.tint)
                GLES30.glUniform1f(uFadeLoc, effectiveRecipe.fade)
                GLES30.glUniform1f(uVibranceLoc, effectiveRecipe.color)
                GLES30.glUniform1f(uHighlightsLoc, effectiveRecipe.highlights)
                GLES30.glUniform1f(uShadowsLoc, effectiveRecipe.shadows)
                GLES30.glUniform1f(uToneToeLoc, effectiveRecipe.toneToe)
                GLES30.glUniform1f(uToneShoulderLoc, effectiveRecipe.toneShoulder)
                GLES30.glUniform1f(uTonePivotLoc, effectiveRecipe.tonePivot)
                GLES30.glUniform1f(uFilmGrainLoc, effectiveRecipe.filmGrain)
                GLES30.glUniform1f(uVignetteLoc, effectiveRecipe.vignette)
                GLES30.glUniform1f(uBleachBypassLoc, effectiveRecipe.bleachBypass)
                GLES30.glUniform1f(uNoiseLoc, effectiveRecipe.noise)
                GLES30.glUniform1f(uNoiseSeedLoc, (System.currentTimeMillis() % 10000) / 1000f)
                GLES30.glUniform1f(uLowResLoc, effectiveRecipe.lowRes)
                GLES30.glUniform1f(uAspectRatioLoc, viewWidth.toFloat() / Math.max(1, viewHeight).toFloat())
                val (hues, chromas, lightnesses) = buildLchAdjustmentArrays(effectiveRecipe)
                GLES30.glUniform1fv(uLchHueAdjustmentsLoc, 9, hues, 0)
                GLES30.glUniform1fv(uLchChromaAdjustmentsLoc, 9, chromas, 0)
                GLES30.glUniform1fv(uLchLightnessAdjustmentsLoc, 9, lightnesses, 0)
                val calMatrix = com.hinnka.mycamera.lut.CameraRawCalibrationMatrix.build(effectiveRecipe)
                GLES30.glUniformMatrix3fv(uPrimaryCalibrationMatrixLoc, 1, false, calMatrix, 0)
            }

            val masterPts = effectiveRecipe?.masterCurvePoints
            val redPts = effectiveRecipe?.redCurvePoints
            val greenPts = effectiveRecipe?.greenCurvePoints
            val bluePts = effectiveRecipe?.blueCurvePoints
            if (!isIdentityCurve(masterPts, redPts, greenPts, bluePts)) {
                uploadCurveTexture(masterPts, redPts, greenPts, bluePts)
                GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
                GLES30.glUniform1i(uCurveTextureLoc, 3)
                GLES30.glUniform1i(uCurveEnabledLoc, 1)
            } else {
                GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
                GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummy2DTextureId)
                GLES30.glUniform1i(uCurveTextureLoc, 3)
                GLES30.glUniform1i(uCurveEnabledLoc, 0)
            }

            GLES30.glUniform1f(uApertureLoc, 0f)
            GLES30.glUniform2f(uFocusPointLoc, 0.5f, 0.5f)
            GLES30.glUniform1f(uChromaticAberrationLoc, 0f)
            GLES30.glUniform1f(uHalationLoc, 0f)
            GLES30.glUniform1f(uRedHalationLoc, 0f)
            GLES30.glUniform1f(uSharpeningLoc, 0f)
            GLES30.glUniform2f(uTexelSizeLoc, 1f / viewWidth, 1f / viewHeight)

            drawQuad()
            checkGlError("drawQuad")

            val swapOk = EGL14.eglSwapBuffers(eglDisplay, eglSurface)
            if (!swapOk) Log.e(TAG, "eglSwapBuffers failed: 0x${Integer.toHexString(EGL14.eglGetError())}")

        }.onFailure { e ->
            Log.e(TAG, "drawFrame failed", e)
        }

        releaseBuffer(params.listener, params.buffer)
    }

    private fun drawQuad() {
        val posLoc = GLES30.glGetAttribLocation(lutProgram, "aPosition")
        val texLoc = GLES30.glGetAttribLocation(lutProgram, "aTexCoord")
        if (posLoc >= 0) {
            vertexBuffer?.let {
                GLES30.glEnableVertexAttribArray(posLoc)
                it.position(0)
                GLES30.glVertexAttribPointer(posLoc, 2, GLES30.GL_FLOAT, false, 0, it)
            }
        }
        if (texLoc >= 0) {
            texCoordBuffer?.let {
                GLES30.glEnableVertexAttribArray(texLoc)
                it.position(0)
                GLES30.glVertexAttribPointer(texLoc, 2, GLES30.GL_FLOAT, false, 0, it)
            }
        }
        GLES30.glDrawArrays(GLES30.GL_TRIANGLE_STRIP, 0, 4)
        if (posLoc >= 0) GLES30.glDisableVertexAttribArray(posLoc)
        if (texLoc >= 0) GLES30.glDisableVertexAttribArray(texLoc)
    }

    private fun releaseBuffer(listener: Any?, buffer: HardwareBuffer) {
        if (listener == null) return
        runCatching {
            try { listener.javaClass.getMethod("onBufferReleased").invoke(listener); return } catch (_: Exception) {}
            try { listener.javaClass.getMethod("onBufferReleased", HardwareBuffer::class.java).invoke(listener, buffer); return } catch (_: Exception) {}
            var clazz: Class<*>? = listener.javaClass
            while (clazz != null && clazz != Any::class.java) {
                for (m in clazz.declaredMethods) {
                    val p = m.parameterTypes
                    if (p.isEmpty() && (m.returnType == java.lang.Void.TYPE || m.returnType.name == "void")) {
                        m.isAccessible = true; m.invoke(listener); return
                    }
                    if (p.size == 1 && (p[0] == HardwareBuffer::class.java || p[0].name == "android.hardware.HardwareBuffer")) {
                        m.isAccessible = true; m.invoke(listener, buffer); return
                    }
                }
                clazz = clazz.superclass
            }
            Log.e(TAG, "No release method found in ${listener.javaClass.name}")
        }.onFailure { Log.e(TAG, "releaseBuffer failed", it) }
    }

    private fun getTexCoords(rotation: Int): FloatArray = when (rotation) {
        90, 13 -> floatArrayOf(0f, 0f, 0f, 1f, 1f, 0f, 1f, 1f)
        180 -> floatArrayOf(1f, 0f, 0f, 0f, 1f, 1f, 0f, 1f)
        270, 12 -> floatArrayOf(1f, 1f, 1f, 0f, 0f, 1f, 0f, 0f)
        else -> floatArrayOf(0f, 1f, 1f, 1f, 0f, 0f, 1f, 0f)
    }

    private fun uploadLutTexture(lutConfig: LutConfig) {
        if (currentLutId == lutConfig.title && lutTextureId != 0) return
        if (lutTextureId == 0) {
            val t = IntArray(1); GLES30.glGenTextures(1, t, 0); lutTextureId = t[0]
        }
        currentLutId = lutConfig.title
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
        if (lutConfig.configDataType == LutConfig.CONFIG_DATA_TYPE_UINT16) {
            GLES30.glTexImage3D(GLES30.GL_TEXTURE_3D, 0, GLES30.GL_RGB16F, lutConfig.size, lutConfig.size, lutConfig.size, 0, GLES30.GL_RGB, GLES30.GL_FLOAT, lutConfig.toFloatBuffer())
        } else {
            GLES30.glTexImage3D(GLES30.GL_TEXTURE_3D, 0, GLES30.GL_RGB8, lutConfig.size, lutConfig.size, lutConfig.size, 0, GLES30.GL_RGB, GLES30.GL_UNSIGNED_BYTE, lutConfig.toByteBuffer())
        }
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, 0)
    }

    private fun uploadCurveTexture(master: FloatArray?, red: FloatArray?, green: FloatArray?, blue: FloatArray?) {
        if (curveTextureId == 0) { val t = IntArray(1); GLES30.glGenTextures(1, t, 0); curveTextureId = t[0] }
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, curveTextureId)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexImage2D(GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, 256, 1, 0, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, com.hinnka.mycamera.lut.CurveUtils.buildCurveTextureBuffer(master, red, green, blue))
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
    }

    private fun isIdentityCurve(m: FloatArray?, r: FloatArray?, g: FloatArray?, b: FloatArray?): Boolean =
        (m == null || m.isEmpty()) && (r == null || r.isEmpty()) && (g == null || g.isEmpty()) && (b == null || b.isEmpty())

    private fun buildLchAdjustmentArrays(p: ColorRecipeParams) = Triple(
        floatArrayOf(p.skinHue, p.redHue, p.orangeHue, p.yellowHue, p.greenHue, p.cyanHue, p.blueHue, p.purpleHue, p.magentaHue),
        floatArrayOf(p.skinChroma, p.redChroma, p.orangeChroma, p.yellowChroma, p.greenChroma, p.cyanChroma, p.blueChroma, p.purpleChroma, p.magentaChroma),
        floatArrayOf(p.skinLightness, p.redLightness, p.orangeLightness, p.yellowLightness, p.greenLightness, p.cyanLightness, p.blueLightness, p.purpleLightness, p.magentaLightness)
    )

    private fun releaseGlResources() {
        runCatching {
            if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
                if (eglSurface != EGL14.EGL_NO_SURFACE && eglContext != EGL14.EGL_NO_CONTEXT)
                    EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
                currentEglImage?.close(); currentEglImage = null
                eglImagePool.forEach { runCatching { it.close() } }
                eglImagePool.clear()
                if (inputTexId != 0) { GLES30.glDeleteTextures(1, intArrayOf(inputTexId), 0); inputTexId = 0 }
                if (lutProgram != 0) { GLES30.glDeleteProgram(lutProgram); lutProgram = 0 }
                if (lutTextureId != 0) { GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0); lutTextureId = 0 }
                if (curveTextureId != 0) { GLES30.glDeleteTextures(1, intArrayOf(curveTextureId), 0); curveTextureId = 0 }
                if (dummyLutTextureId != 0) { GLES30.glDeleteTextures(1, intArrayOf(dummyLutTextureId), 0); dummyLutTextureId = 0 }
                if (dummy2DTextureId != 0) { GLES30.glDeleteTextures(1, intArrayOf(dummy2DTextureId), 0); dummy2DTextureId = 0 }
                EGL14.eglMakeCurrent(eglDisplay, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_SURFACE, EGL14.EGL_NO_CONTEXT)
                if (eglSurface != EGL14.EGL_NO_SURFACE) { EGL14.eglDestroySurface(eglDisplay, eglSurface); eglSurface = EGL14.EGL_NO_SURFACE }
                if (eglContext != EGL14.EGL_NO_CONTEXT) { EGL14.eglDestroyContext(eglDisplay, eglContext); eglContext = EGL14.EGL_NO_CONTEXT }
                EGL14.eglTerminate(eglDisplay); eglDisplay = EGL14.EGL_NO_DISPLAY
            }
            Log.d(TAG, "GL resources released OK")
        }.onFailure { Log.e(TAG, "releaseGlResources failed", it) }
    }
}
