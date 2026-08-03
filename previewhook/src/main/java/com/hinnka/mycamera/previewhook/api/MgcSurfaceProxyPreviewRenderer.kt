package com.hinnka.mycamera.previewhook.api

import android.graphics.Rect
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
import android.os.Parcel
import android.util.Log
import android.util.Size
import android.view.Surface
import com.hinnka.mycamera.lut.LutConfig
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.util.ArrayDeque

object MgcSurfaceProxyPreviewRenderer {
    private const val TAG = "codex_surface_proxy"

    private val lock = Any()

    @Volatile
    private var activeSurface: Surface? = null

    @Volatile
    private var activeSize: Size? = null

    @Volatile
    private var activeSession: SurfaceProxySession? = null

    @JvmStatic
    fun recordOriginalSurface(surface: Surface?, size: Size?) {
        synchronized(lock) {
            if (activeSurface !== surface || activeSize != size) {
                activeSession?.release()
                activeSession = null
            }
            activeSurface = surface
            activeSize = size
        }
        Log.d(TAG, "recordOriginalSurface surface=$surface size=$size")
    }

    @Suppress("UNUSED_PARAMETER")
    @JvmStatic
    fun displayBuffer(
        bufferFlinger: Any?,
        hardwareBuffer: HardwareBuffer?,
        srcRect: Rect?,
        dstRect: Rect?,
        transformFlags: Int,
        rotationDegrees: Int,
    ): Boolean {
        if (hardwareBuffer == null || hardwareBuffer.isClosed) return false

        runCatching { MgcVfeLutRuntime.ensureBootstrapVerificationLut() }
        val snapshot = runCatching { MgcVfeLutRuntime.buildSnapshot() }.getOrNull()
        if (snapshot?.let { it.lutEnabled || it.colorRecipeEnabled } != true) {
            releaseActiveSession()
            return false
        }

        val surface = activeSurface ?: return false
        val size = activeSize ?: return false
        if (size.width <= 0 || size.height <= 0) return false

        val duplicate = duplicateHardwareBuffer(hardwareBuffer) ?: return false
        return runCatching {
            val session = synchronized(lock) {
                val current = activeSession
                if (current == null ||
                    current.originalSurface !== surface ||
                    current.width != size.width ||
                    current.height != size.height
                ) {
                    current?.release()
                    SurfaceProxySession(surface, size.width, size.height).also {
                        activeSession = it
                    }
                } else {
                    current
                }
            }
            if (!session.renderFrame(duplicate, srcRect, dstRect, transformFlags, rotationDegrees)) {
                duplicate.close()
                return false
            }
            true
        }.onFailure {
            duplicate.close()
            Log.e(TAG, "displayBuffer proxy failed, fallback to native display", it)
        }.getOrDefault(false)
    }

    private fun releaseActiveSession() {
        synchronized(lock) {
            activeSession?.release()
            activeSession = null
        }
    }

    private fun duplicateHardwareBuffer(buffer: HardwareBuffer): HardwareBuffer? {
        val parcel = Parcel.obtain()
        return try {
            buffer.writeToParcel(parcel, 0)
            parcel.setDataPosition(0)
            HardwareBuffer.CREATOR.createFromParcel(parcel)
        } catch (t: Throwable) {
            Log.e(TAG, "failed to duplicate preview HardwareBuffer", t)
            null
        } finally {
            parcel.recycle()
        }
    }

    private data class RenderParams(
        val buffer: HardwareBuffer,
        val srcRect: Rect?,
        val dstRect: Rect?,
        val transformFlags: Int,
        val rotationDegrees: Int,
    )

    private class SurfaceProxySession(
        val originalSurface: Surface,
        val width: Int,
        val height: Int,
    ) : HandlerThread("MgcSurfaceProxyPreview-${System.identityHashCode(originalSurface)}"), Handler.Callback {
        private companion object {
            private const val MSG_RENDER_FRAME = 1
            private const val MSG_RELEASE = 2
            private const val IMAGE_HISTORY_LIMIT = 6

            private val IDENTITY_MATRIX4 = floatArrayOf(
                1f, 0f, 0f, 0f,
                0f, 1f, 0f, 0f,
                0f, 0f, 1f, 0f,
                0f, 0f, 0f, 1f,
            )
            private val VERTICES = floatArrayOf(
                -1f, -1f,
                1f, -1f,
                -1f, 1f,
                1f, 1f,
            )
        }

        private var handler: Handler? = null

        @Volatile
        private var glReady = false

        private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
        private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
        private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE

        private var programId = 0
        private var inputTextureId = 0
        private var lutTextureId = 0
        private var dummyLutTextureId = 0
        private var dummyCurveTextureId = 0

        private var vertexBuffer: FloatBuffer = floatBufferOf(VERTICES)
        private var texCoordBuffer: FloatBuffer = floatBufferOf(textureCoordsForRotation(0, 0))

        private var uploadedSnapshotVersion = -1
        private var currentImage: ImageBinding? = null
        private val imageHistory = ArrayDeque<ImageBinding>()
        private val recipeTextureBindings = MgcRecipeTextureBindings()

        init {
            start()
            handler = Handler(looper, this)
            val barrier = Object()
            synchronized(barrier) {
                handler?.post {
                    initGlResources()
                    synchronized(barrier) {
                        barrier.notifyAll()
                    }
                }
                runCatching {
                    @Suppress("PLATFORM_CLASS_MAPPED_TO_KOTLIN")
                    (barrier as java.lang.Object).wait(3000)
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
                    handler = null
                    releaseGlResources()
                    looper.quit()
                }
            }
            return true
        }

        fun renderFrame(
            buffer: HardwareBuffer,
            srcRect: Rect?,
            dstRect: Rect?,
            transformFlags: Int,
            rotationDegrees: Int,
        ): Boolean {
            if (!glReady) return false
            val h = handler ?: return false
            val params = RenderParams(buffer, srcRect, dstRect, transformFlags, rotationDegrees)
            h.sendMessage(h.obtainMessage(MSG_RENDER_FRAME, params))
            return true
        }

        fun release() {
            val h = handler ?: return
            h.sendMessage(h.obtainMessage(MSG_RELEASE))
        }

        private fun initGlResources() {
            runCatching {
                eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
                if (eglDisplay == EGL14.EGL_NO_DISPLAY) error("eglGetDisplay failed")
                val version = IntArray(2)
                if (!EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
                    error("eglInitialize failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
                }

                val config = chooseEglConfig()
                eglContext = EGL14.eglCreateContext(
                    eglDisplay,
                    config,
                    EGL14.EGL_NO_CONTEXT,
                    intArrayOf(EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE),
                    0,
                )
                if (eglContext == EGL14.EGL_NO_CONTEXT) {
                    error("eglCreateContext failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
                }

                eglSurface = EGL14.eglCreateWindowSurface(
                    eglDisplay,
                    config,
                    originalSurface,
                    intArrayOf(EGL14.EGL_NONE),
                    0,
                )
                if (eglSurface == EGL14.EGL_NO_SURFACE) {
                    error("eglCreateWindowSurface failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
                }
                if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
                    error("eglMakeCurrent failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
                }

                inputTextureId = createExternalTexture()
                dummyLutTextureId = createDummy3DTexture()
                dummyCurveTextureId = createDummy2DTexture()
                programId = buildProgram(
                    MgcVfeLutRuntime.getVertexShaderSource(),
                    MgcVfeLutRuntime.getFragmentShaderSource(),
                )
                glReady = programId != 0 && inputTextureId != 0
                Log.d(TAG, "surface proxy GL ready=$glReady size=${width}x${height}")
            }.onFailure {
                Log.e(TAG, "surface proxy GL init failed", it)
                glReady = false
                releaseGlResources()
            }
        }

        private fun chooseEglConfig(): EGLConfig {
            val attribs = intArrayOf(
                EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
                EGL14.EGL_RED_SIZE, 8,
                EGL14.EGL_GREEN_SIZE, 8,
                EGL14.EGL_BLUE_SIZE, 8,
                EGL14.EGL_ALPHA_SIZE, 8,
                EGL14.EGL_NONE,
            )
            val configs = arrayOfNulls<EGLConfig>(1)
            val count = IntArray(1)
            if (!EGL14.eglChooseConfig(eglDisplay, attribs, 0, configs, 0, 1, count, 0) ||
                count[0] <= 0 ||
                configs[0] == null
            ) {
                error("eglChooseConfig failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
            }
            return configs[0] ?: error("EGLConfig missing")
        }

        private fun drawFrame(params: RenderParams) {
            if (!glReady || params.buffer.isClosed) {
                params.buffer.close()
                return
            }
            runCatching {
                EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
                drainGlErrors()
                val textureReady = uploadInputTexture(params.buffer)
                val viewWidth = params.dstRect?.width()?.takeIf { it > 0 } ?: width
                val viewHeight = params.dstRect?.height()?.takeIf { it > 0 } ?: height
                val viewLeft = params.dstRect?.left ?: 0
                val viewTop = params.dstRect?.top ?: 0

                GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
                GLES30.glViewport(viewLeft, viewTop, viewWidth, viewHeight)
                GLES30.glClearColor(0f, 0f, 0f, 1f)
                GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

                if (textureReady) {
                    val snapshot = MgcVfeLutRuntime.buildSnapshot()
                    GLES30.glUseProgram(programId)
                    bindInputTexture()
                    bindLutTexture(snapshot)
                    bindBasicToneTexture(snapshot)
                    bindCurveTexture(snapshot)
                    bindMatricesAndGeometry(params)
                    bindSnapshotUniforms(snapshot, params.buffer, viewWidth, viewHeight)
                    drawQuad(params.rotationDegrees, params.transformFlags)
                    checkGlError("surface proxy draw")
                }

                if (!EGL14.eglSwapBuffers(eglDisplay, eglSurface)) {
                    Log.e(TAG, "eglSwapBuffers failed: 0x${Integer.toHexString(EGL14.eglGetError())}")
                }
            }.onFailure {
                Log.e(TAG, "surface proxy drawFrame failed", it)
                params.buffer.close()
            }
        }

        private fun uploadInputTexture(buffer: HardwareBuffer): Boolean {
            return runCatching {
                GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
                GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, inputTextureId)
                val image = ImageBinding.create(buffer)
                EglImageBridge.attachToTexture(image.handle)
                currentImage?.let { imageHistory.addLast(it) }
                currentImage = image
                trimImageHistory()
                checkGlError("attach EGLImage to OES texture")
                true
            }.onFailure {
                buffer.close()
                Log.e(TAG, "surface proxy input EGLImage upload failed format=${buffer.format}", it)
            }.getOrDefault(false)
        }

        private fun trimImageHistory() {
            while (imageHistory.size > IMAGE_HISTORY_LIMIT) {
                imageHistory.removeFirst().close()
            }
        }

        private fun bindInputTexture() {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, inputTextureId)
            uniform1i("uCameraTexture", 0)
        }

        private fun bindLutTexture(snapshot: MgcVfeLutSnapshot) {
            val textureId = if (snapshot.lutEnabled && snapshot.lutPayload != null && snapshot.lutSize > 0) {
                ensureLutTexture(snapshot)
            } else {
                dummyLutTextureId
            }
            GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
            uniform1i("uLutTexture", 1)
        }

        private fun bindBasicToneTexture(snapshot: MgcVfeLutSnapshot) {
            recipeTextureBindings.bindBasicTone(
                programId = programId,
                snapshot = snapshot,
                textureUnit = 2,
                dummyTextureId = dummyLutTextureId,
            )
        }

        private fun bindCurveTexture(snapshot: MgcVfeLutSnapshot) {
            recipeTextureBindings.bindCurve(
                programId = programId,
                snapshot = snapshot,
                textureUnit = 3,
                dummyTextureId = dummyCurveTextureId,
            )
        }

        private fun bindMatricesAndGeometry(params: RenderParams) {
            uniformMatrix4("uMVPMatrix", IDENTITY_MATRIX4)
            uniformMatrix4("uSTMatrix", IDENTITY_MATRIX4)
            val src = params.srcRect
            if (src != null && params.buffer.width > 0 && params.buffer.height > 0) {
                val bufferWidth = params.buffer.width.toFloat()
                val bufferHeight = params.buffer.height.toFloat()
                uniform4f(
                    "uCropRect",
                    src.left.toFloat() / bufferWidth,
                    src.top.toFloat() / bufferHeight,
                    src.right.toFloat() / bufferWidth,
                    src.bottom.toFloat() / bufferHeight,
                )
            } else {
                uniform4f("uCropRect", 0f, 0f, 1f, 1f)
            }
        }

        private fun bindSnapshotUniforms(
            snapshot: MgcVfeLutSnapshot,
            buffer: HardwareBuffer,
            viewWidth: Int,
            viewHeight: Int,
        ) {
            uniform1f("uLutSize", snapshot.lutSize.toFloat())
            uniform1f("uLutIntensity", snapshot.lutIntensity)
            uniform1i("uLutEnabled", if (snapshot.lutEnabled) 1 else 0)
            uniform1i("uLutMaskType", 0)
            uniform1i("uLutCurve", snapshot.lutCurveOrdinal)
            uniform1i("uLutColorSpace", snapshot.lutColorSpaceOrdinal)
            uniform1i("uVideoLogEnabled", 0)
            uniform1i("uVideoLogCurve", 0)
            uniform1i("uVideoColorSpace", 0)
            uniform1i("uIsHlgInput", 0)
            uniform1i("uColorRecipeEnabled", if (snapshot.colorRecipeEnabled) 1 else 0)
            uniform1f("uExposure", snapshot.exposure)
            uniform1f("uContrast", snapshot.contrast)
            uniform1f("uSaturation", snapshot.saturation)
            uniform1f("uTemperature", snapshot.temperature)
            uniform1f("uTint", snapshot.tint)
            uniform1f("uFade", snapshot.fade)
            uniform1f("uVibrance", snapshot.vibrance)
            uniform1f("uHighlights", snapshot.highlights)
            uniform1f("uShadows", snapshot.shadows)
            uniform1f("uToneToe", snapshot.toneToe)
            uniform1f("uToneShoulder", snapshot.toneShoulder)
            uniform1f("uTonePivot", snapshot.tonePivot)
            uniform1f("uFilmGrain", snapshot.filmGrain)
            uniform1f("uVignette", snapshot.vignette)
            uniform1f("uBleachBypass", snapshot.bleachBypass)
            uniform1f("uChromaticAberration", snapshot.chromaticAberration)
            uniform1f("uNoise", snapshot.noise)
            uniform1f("uNoiseSeed", (System.nanoTime() and 0xFFFFFF).toFloat() / 1048576f)
            uniform1f("uLowRes", snapshot.lowRes)
            uniform1f("uAspectRatio", viewWidth.toFloat() / viewHeight.coerceAtLeast(1).toFloat())
            uniform1f("uFlash", 0f)
            uniform3f(
                "uGradingHues",
                snapshot.gradingHues[0],
                snapshot.gradingHues[1],
                snapshot.gradingHues[2],
            )
            uniform3f(
                "uGradingAmounts",
                snapshot.gradingAmounts[0],
                snapshot.gradingAmounts[1],
                snapshot.gradingAmounts[2],
            )
            uniform1f("uGradingBalance", snapshot.gradingBalance)
            uniform1f("uGradingBlending", snapshot.gradingBlending)
            uniformMatrix3("uPrimaryCalibrationMatrix", snapshot.primaryCalibrationMatrix)
            uniform1fArray("uLchHueAdjustments[0]", snapshot.lchHueAdjustments)
            uniform1fArray("uLchChromaAdjustments[0]", snapshot.lchChromaAdjustments)
            uniform1fArray("uLchLightnessAdjustments[0]", snapshot.lchLightnessAdjustments)
            uniform1f("uAperture", 1.4f)
            uniform2f("uFocusPoint", 0.5f, 0.5f)
            uniform2f(
                "uTexelSize",
                1f / buffer.width.coerceAtLeast(1).toFloat(),
                1f / buffer.height.coerceAtLeast(1).toFloat(),
            )
        }

        private fun drawQuad(rotationDegrees: Int, transformFlags: Int) {
            texCoordBuffer = floatBufferOf(textureCoordsForRotation(rotationDegrees, transformFlags))
            val posLoc = GLES30.glGetAttribLocation(programId, "aPosition")
            if (posLoc >= 0) {
                vertexBuffer.position(0)
                GLES30.glEnableVertexAttribArray(posLoc)
                GLES30.glVertexAttribPointer(posLoc, 2, GLES30.GL_FLOAT, false, 0, vertexBuffer)
            }
            val texLoc = GLES30.glGetAttribLocation(programId, "aTexCoord")
            if (texLoc >= 0) {
                texCoordBuffer.position(0)
                GLES30.glEnableVertexAttribArray(texLoc)
                GLES30.glVertexAttribPointer(texLoc, 2, GLES30.GL_FLOAT, false, 0, texCoordBuffer)
            }
            GLES30.glDrawArrays(GLES30.GL_TRIANGLE_STRIP, 0, 4)
            if (posLoc >= 0) GLES30.glDisableVertexAttribArray(posLoc)
            if (texLoc >= 0) GLES30.glDisableVertexAttribArray(texLoc)
        }

        private fun ensureLutTexture(snapshot: MgcVfeLutSnapshot): Int {
            val version = MgcVfeLutRuntime.getSnapshotVersion()
            if (lutTextureId != 0 && uploadedSnapshotVersion == version) {
                return lutTextureId
            }
            if (lutTextureId == 0) {
                val ids = IntArray(1)
                GLES30.glGenTextures(1, ids, 0)
                lutTextureId = ids[0]
            }
            uploadedSnapshotVersion = version
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, lutTextureId)
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)

            val payload = snapshot.lutPayload ?: ByteArray(0)
            if (snapshot.lutDataType == LutConfig.CONFIG_DATA_TYPE_UINT16) {
                GLES30.glTexImage3D(
                    GLES30.GL_TEXTURE_3D,
                    0,
                    GLES30.GL_RGB16F,
                    snapshot.lutSize,
                    snapshot.lutSize,
                    snapshot.lutSize,
                    0,
                    GLES30.GL_RGB,
                    GLES30.GL_FLOAT,
                    uint16PayloadToFloatBuffer(payload),
                )
            } else {
                val buffer = ByteBuffer.allocateDirect(payload.size)
                    .order(ByteOrder.nativeOrder())
                    .put(payload)
                    .apply { position(0) }
                GLES30.glTexImage3D(
                    GLES30.GL_TEXTURE_3D,
                    0,
                    GLES30.GL_RGB8,
                    snapshot.lutSize,
                    snapshot.lutSize,
                    snapshot.lutSize,
                    0,
                    GLES30.GL_RGB,
                    GLES30.GL_UNSIGNED_BYTE,
                    buffer,
                )
            }
            GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, 0)
            checkGlError("upload LUT texture")
            return lutTextureId
        }

        private fun uint16PayloadToFloatBuffer(payload: ByteArray): FloatBuffer {
            val source = ByteBuffer.wrap(payload)
                .order(ByteOrder.nativeOrder())
                .asShortBuffer()
            val output = ByteBuffer.allocateDirect(source.remaining() * 4)
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer()
            while (source.hasRemaining()) {
                output.put((source.get().toInt() and 0xFFFF) / 65535f)
            }
            output.position(0)
            return output
        }

        private fun releaseGlResources() {
            runCatching {
                if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
                    if (eglSurface != EGL14.EGL_NO_SURFACE && eglContext != EGL14.EGL_NO_CONTEXT) {
                        EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
                    }
                    currentImage?.close()
                    currentImage = null
                    while (imageHistory.isNotEmpty()) {
                        imageHistory.removeFirst().close()
                    }
                    recipeTextureBindings.release()
                    if (inputTextureId != 0) {
                        GLES30.glDeleteTextures(1, intArrayOf(inputTextureId), 0)
                        inputTextureId = 0
                    }
                    if (lutTextureId != 0) {
                        GLES30.glDeleteTextures(1, intArrayOf(lutTextureId), 0)
                        lutTextureId = 0
                    }
                    if (dummyLutTextureId != 0) {
                        GLES30.glDeleteTextures(1, intArrayOf(dummyLutTextureId), 0)
                        dummyLutTextureId = 0
                    }
                    if (dummyCurveTextureId != 0) {
                        GLES30.glDeleteTextures(1, intArrayOf(dummyCurveTextureId), 0)
                        dummyCurveTextureId = 0
                    }
                    if (programId != 0) {
                        GLES30.glDeleteProgram(programId)
                        programId = 0
                    }
                    EGL14.eglMakeCurrent(
                        eglDisplay,
                        EGL14.EGL_NO_SURFACE,
                        EGL14.EGL_NO_SURFACE,
                        EGL14.EGL_NO_CONTEXT,
                    )
                    if (eglSurface != EGL14.EGL_NO_SURFACE) {
                        EGL14.eglDestroySurface(eglDisplay, eglSurface)
                        eglSurface = EGL14.EGL_NO_SURFACE
                    }
                    if (eglContext != EGL14.EGL_NO_CONTEXT) {
                        EGL14.eglDestroyContext(eglDisplay, eglContext)
                        eglContext = EGL14.EGL_NO_CONTEXT
                    }
                    EGL14.eglTerminate(eglDisplay)
                    eglDisplay = EGL14.EGL_NO_DISPLAY
                }
            }.onFailure {
                Log.e(TAG, "surface proxy GL release failed", it)
            }
            glReady = false
        }

        private fun buildProgram(vertexSource: String, fragmentSource: String): Int {
            val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, vertexSource)
            val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource)
            if (vertexShader == 0 || fragmentShader == 0) return 0
            val program = GLES30.glCreateProgram()
            GLES30.glAttachShader(program, vertexShader)
            GLES30.glAttachShader(program, fragmentShader)
            GLES30.glLinkProgram(program)
            val status = IntArray(1)
            GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, status, 0)
            if (status[0] == 0) {
                Log.e(TAG, "surface proxy shader link failed: ${GLES30.glGetProgramInfoLog(program)}")
                GLES30.glDeleteProgram(program)
                return 0
            }
            GLES30.glDeleteShader(vertexShader)
            GLES30.glDeleteShader(fragmentShader)
            return program
        }

        private fun compileShader(type: Int, source: String): Int {
            val shader = GLES30.glCreateShader(type)
            GLES30.glShaderSource(shader, source.removePrefix("\uFEFF").trimStart())
            GLES30.glCompileShader(shader)
            val status = IntArray(1)
            GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, status, 0)
            if (status[0] == 0) {
                Log.e(TAG, "surface proxy shader compile failed: ${GLES30.glGetShaderInfoLog(shader)}")
                GLES30.glDeleteShader(shader)
                return 0
            }
            return shader
        }

        private fun createExternalTexture(): Int {
            val ids = IntArray(1)
            GLES30.glGenTextures(1, ids, 0)
            val id = ids[0]
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, id)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glBindTexture(GLES11Ext.GL_TEXTURE_EXTERNAL_OES, 0)
            return id
        }

        private fun createDummy3DTexture(): Int {
            val ids = IntArray(1)
            GLES30.glGenTextures(1, ids, 0)
            val id = ids[0]
            val payload = ByteBuffer.allocateDirect(4)
                .put(byteArrayOf(0, 0, 0, 0))
                .apply { position(0) }
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, id)
            GLES30.glTexImage3D(
                GLES30.GL_TEXTURE_3D,
                0,
                GLES30.GL_RGBA8,
                1,
                1,
                1,
                0,
                GLES30.GL_RGBA,
                GLES30.GL_UNSIGNED_BYTE,
                payload,
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_3D, GLES30.GL_TEXTURE_WRAP_R, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, 0)
            return id
        }

        private fun createDummy2DTexture(): Int {
            val ids = IntArray(1)
            GLES30.glGenTextures(1, ids, 0)
            val id = ids[0]
            val payload = ByteBuffer.allocateDirect(4)
                .put(byteArrayOf(0, 0, 0, 0))
                .apply { position(0) }
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, id)
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_RGBA8,
                1,
                1,
                0,
                GLES30.GL_RGBA,
                GLES30.GL_UNSIGNED_BYTE,
                payload,
            )
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            return id
        }

        private fun uniform1i(name: String, value: Int) {
            val loc = GLES30.glGetUniformLocation(programId, name)
            if (loc >= 0) GLES30.glUniform1i(loc, value)
        }

        private fun uniform1f(name: String, value: Float) {
            val loc = GLES30.glGetUniformLocation(programId, name)
            if (loc >= 0) GLES30.glUniform1f(loc, value)
        }

        private fun uniform2f(name: String, x: Float, y: Float) {
            val loc = GLES30.glGetUniformLocation(programId, name)
            if (loc >= 0) GLES30.glUniform2f(loc, x, y)
        }

        private fun uniform3f(name: String, x: Float, y: Float, z: Float) {
            val loc = GLES30.glGetUniformLocation(programId, name)
            if (loc >= 0) GLES30.glUniform3f(loc, x, y, z)
        }

        private fun uniform4f(name: String, x: Float, y: Float, z: Float, w: Float) {
            val loc = GLES30.glGetUniformLocation(programId, name)
            if (loc >= 0) GLES30.glUniform4f(loc, x, y, z, w)
        }

        private fun uniformMatrix4(name: String, value: FloatArray) {
            val loc = GLES30.glGetUniformLocation(programId, name)
            if (loc >= 0) GLES30.glUniformMatrix4fv(loc, 1, false, value, 0)
        }

        private fun uniformMatrix3(name: String, value: FloatArray) {
            val loc = GLES30.glGetUniformLocation(programId, name)
            if (loc >= 0) GLES30.glUniformMatrix3fv(loc, 1, false, value, 0)
        }

        private fun uniform1fArray(name: String, value: FloatArray) {
            val loc = GLES30.glGetUniformLocation(programId, name)
            if (loc >= 0) GLES30.glUniform1fv(loc, value.size, value, 0)
        }

        private fun checkGlError(op: String) {
            val error = GLES30.glGetError()
            if (error != GLES30.GL_NO_ERROR) {
                Log.e(TAG, "GL error after $op: 0x${Integer.toHexString(error)}")
            }
        }

        private fun drainGlErrors() {
            while (GLES30.glGetError() != GLES30.GL_NO_ERROR) {
                // drain
            }
        }
    }

    private class ImageBinding private constructor(
        private val eglImage: Any,
        val handle: Long,
        private val buffer: HardwareBuffer,
    ) : AutoCloseable {
        override fun close() {
            runCatching {
                eglImage.javaClass.getMethod("close").invoke(eglImage)
            }
            runCatching { buffer.close() }
        }

        companion object {
            fun create(buffer: HardwareBuffer): ImageBinding {
                val clazz = Class.forName("com.google.android.libraries.oliveoil.gl.EGLImage")
                val image = clazz.getConstructor(HardwareBuffer::class.java).newInstance(buffer)
                val handleField = runCatching { clazz.getField("b") }
                    .getOrElse { clazz.getField("a") }
                return ImageBinding(image, handleField.getLong(image), buffer)
            }
        }
    }

    private object EglImageBridge {
        private val clazz by lazy {
            Class.forName("com.google.android.libraries.oliveoil.gl.EGLImage")
        }
        private val attachToTexture by lazy {
            clazz.getMethod("attachToTexture", java.lang.Long.TYPE)
        }

        fun attachToTexture(handle: Long) {
            attachToTexture.invoke(null, handle)
        }
    }

    private fun floatBufferOf(values: FloatArray): FloatBuffer {
        return ByteBuffer.allocateDirect(values.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(values)
            .apply { position(0) }
    }

    private fun textureCoordsForRotation(rotationDegrees: Int, transformFlags: Int): FloatArray {
        val normalized = ((rotationDegrees % 360) + 360) % 360
        val base = when (normalized) {
            90 -> floatArrayOf(1f, 1f, 1f, 0f, 0f, 1f, 0f, 0f)
            180 -> floatArrayOf(1f, 0f, 0f, 0f, 1f, 1f, 0f, 1f)
            270 -> floatArrayOf(0f, 0f, 0f, 1f, 1f, 0f, 1f, 1f)
            else -> floatArrayOf(0f, 1f, 1f, 1f, 0f, 0f, 1f, 0f)
        }
        val flipX = (transformFlags and 0x1) != 0
        val flipY = (transformFlags and 0x2) != 0
        if (!flipX && !flipY) return base
        for (i in base.indices step 2) {
            if (flipX) base[i] = 1f - base[i]
            if (flipY) base[i + 1] = 1f - base[i + 1]
        }
        return base
    }
}
