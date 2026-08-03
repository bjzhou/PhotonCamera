package com.hinnka.mycamera.previewhook.api

import android.graphics.Bitmap
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLUtils
import android.util.Log
import com.hinnka.mycamera.lut.LutConfig
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer

/**
 * Small off-screen renderer dedicated to MGC's captured JPEG path.
 *
 * This intentionally uses the same generated Photon color shader and snapshot as the preview
 * renderer. It does not pull in the app's RAW/static-image pipeline, keeping the hook dex isolated
 * from Photon app internals and leaving MGC's own JPEG development untouched.
 */
internal object MgcCapturedJpegRenderer {
    private const val TAG = "codex_post_lut"

    private val identityMatrix4 = floatArrayOf(
        1f, 0f, 0f, 0f,
        0f, 1f, 0f, 0f,
        0f, 0f, 1f, 0f,
        0f, 0f, 0f, 1f,
    )
    private val identityMatrix3 = floatArrayOf(
        1f, 0f, 0f,
        0f, 1f, 0f,
        0f, 0f, 1f,
    )
    private val vertices = floatArrayOf(
        -1f, -1f,
        1f, -1f,
        -1f, 1f,
        1f, 1f,
    )
    private val textureCoordinates = floatArrayOf(
        0f, 0f,
        1f, 0f,
        0f, 1f,
        1f, 1f,
    )
    private val drawOrder = shortArrayOf(0, 1, 2, 1, 3, 2)

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var programId = 0
    private var inputTextureId = 0
    private var outputTextureId = 0
    private var outputFramebufferId = 0
    private var outputWidth = 0
    private var outputHeight = 0
    private var lutTextureId = 0
    private var dummyLutTextureId = 0
    private var dummyCurveTextureId = 0
    private var uploadedSnapshotVersion = -1
    private var maxTextureSize = 0
    private var readbackBuffer: ByteBuffer? = null
    private var readbackBufferSize = 0

    private val vertexBuffer = floatBufferOf(vertices)
    private val textureCoordinateBuffer = floatBufferOf(textureCoordinates)
    private val drawOrderBuffer = shortBufferOf(drawOrder)

    @Synchronized
    fun render(source: Bitmap, snapshot: MgcVfeLutSnapshot): Bitmap? {
        if (source.width <= 0 || source.height <= 0) return null
        if (!ensureInitialized()) return null
        if (source.width > maxTextureSize || source.height > maxTextureSize) {
            Log.e(
                TAG,
                "Captured JPEG exceeds GL texture limit image=${source.width}x${source.height} " +
                    "max=$maxTextureSize",
            )
            return null
        }

        if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            error("eglMakeCurrent failed: ${eglErrorHex()}")
        }
        return try {
            drainGlErrors()
            ensureOutputFramebuffer(source.width, source.height)
            uploadInputTexture(source)

            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
            GLES30.glViewport(0, 0, source.width, source.height)
            GLES30.glDisable(GLES30.GL_BLEND)
            GLES30.glClearColor(0f, 0f, 0f, 1f)
            GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
            GLES30.glUseProgram(programId)

            bindInputTexture()
            bindLutTexture(snapshot)
            bindBasicToneTexture()
            bindCurveTexture()
            bindGeometryUniforms()
            bindSnapshotUniforms(snapshot, source.width, source.height)
            drawQuad()
            requireNoGlError("captured JPEG draw")

            val byteCount = Math.multiplyExact(
                Math.multiplyExact(source.width, source.height),
                4,
            )
            val pixels = obtainReadbackBuffer(byteCount)
            GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 4)
            GLES30.glReadPixels(
                0,
                0,
                source.width,
                source.height,
                GLES30.GL_RGBA,
                GLES30.GL_UNSIGNED_BYTE,
                pixels,
            )
            requireNoGlError("captured JPEG readback")
            pixels.position(0)
            Bitmap.createBitmap(
                source.width,
                source.height,
                Bitmap.Config.ARGB_8888,
            ).also { it.copyPixelsFromBuffer(pixels) }
        } finally {
            GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
            EGL14.eglMakeCurrent(
                eglDisplay,
                EGL14.EGL_NO_SURFACE,
                EGL14.EGL_NO_SURFACE,
                EGL14.EGL_NO_CONTEXT,
            )
        }
    }

    @Synchronized
    fun reset() {
        release()
    }

    private fun ensureInitialized(): Boolean {
        if (programId != 0 &&
            eglDisplay != EGL14.EGL_NO_DISPLAY &&
            eglContext != EGL14.EGL_NO_CONTEXT &&
            eglSurface != EGL14.EGL_NO_SURFACE
        ) {
            return true
        }

        return runCatching {
            eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
            if (eglDisplay == EGL14.EGL_NO_DISPLAY) error("eglGetDisplay failed")
            val version = IntArray(2)
            if (!EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
                error("eglInitialize failed: ${eglErrorHex()}")
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
                error("eglCreateContext failed: ${eglErrorHex()}")
            }
            eglSurface = EGL14.eglCreatePbufferSurface(
                eglDisplay,
                config,
                intArrayOf(
                    EGL14.EGL_WIDTH, 1,
                    EGL14.EGL_HEIGHT, 1,
                    EGL14.EGL_NONE,
                ),
                0,
            )
            if (eglSurface == EGL14.EGL_NO_SURFACE) {
                error("eglCreatePbufferSurface failed: ${eglErrorHex()}")
            }
            if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
                error("eglMakeCurrent failed: ${eglErrorHex()}")
            }

            inputTextureId = create2DTexture()
            dummyLutTextureId = createDummy3DTexture()
            dummyCurveTextureId = createDummy2DTexture()
            programId = buildProgram(
                MgcVfeLutRuntime.getVertexShaderSource(),
                MgcVfeLutRuntime.getCapturedJpegFragmentShaderSource(),
            )
            if (programId == 0) error("Captured JPEG shader program unavailable")
            val size = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, size, 0)
            maxTextureSize = size[0]
            if (maxTextureSize <= 0) error("Invalid GL_MAX_TEXTURE_SIZE=$maxTextureSize")
            requireNoGlError("captured JPEG renderer init")
            Log.d(TAG, "Captured JPEG renderer ready maxTextureSize=$maxTextureSize")
            true
        }.onFailure {
            Log.e(TAG, "Captured JPEG renderer init failed", it)
            release()
        }.getOrDefault(false).also {
            if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
                EGL14.eglMakeCurrent(
                    eglDisplay,
                    EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_CONTEXT,
                )
            }
        }
    }

    private fun chooseEglConfig(): EGLConfig {
        val attributes = intArrayOf(
            EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
            EGL14.EGL_RED_SIZE, 8,
            EGL14.EGL_GREEN_SIZE, 8,
            EGL14.EGL_BLUE_SIZE, 8,
            EGL14.EGL_ALPHA_SIZE, 8,
            EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE,
        )
        val configs = arrayOfNulls<EGLConfig>(1)
        val count = IntArray(1)
        if (!EGL14.eglChooseConfig(
                eglDisplay,
                attributes,
                0,
                configs,
                0,
                1,
                count,
                0,
            ) ||
            count[0] <= 0 ||
            configs[0] == null
        ) {
            error("eglChooseConfig failed: ${eglErrorHex()}")
        }
        return configs[0] ?: error("EGLConfig missing")
    }

    private fun ensureOutputFramebuffer(width: Int, height: Int) {
        if (outputFramebufferId != 0 &&
            outputTextureId != 0 &&
            outputWidth == width &&
            outputHeight == height
        ) {
            return
        }
        releaseOutputFramebuffer()

        outputTextureId = create2DTexture()
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA8,
            width,
            height,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            null,
        )
        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        outputFramebufferId = ids[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, outputFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            outputTextureId,
            0,
        )
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            error("Captured JPEG framebuffer incomplete: 0x${Integer.toHexString(status)}")
        }
        outputWidth = width
        outputHeight = height
    }

    private fun uploadInputTexture(bitmap: Bitmap) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, bitmap, 0)
        requireNoGlError("captured JPEG upload")
    }

    private fun bindInputTexture() {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTextureId)
        uniform1i("uCameraTexture", 0)
    }

    private fun bindLutTexture(snapshot: MgcVfeLutSnapshot) {
        val textureId = if (snapshot.lutEnabled &&
            snapshot.lutPayload != null &&
            snapshot.lutSize > 0
        ) {
            ensureLutTexture(snapshot)
        } else {
            dummyLutTextureId
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, textureId)
        uniform1i("uLutTexture", 1)
    }

    private fun bindBasicToneTexture() {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_3D, dummyLutTextureId)
        uniform1i("uBasicToneLut", 2)
        uniform1f("uBasicToneIntensity", 0f)
    }

    private fun bindCurveTexture() {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE3)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, dummyCurveTextureId)
        uniform1i("uCurveTexture", 3)
        uniform1i("uCurveEnabled", 0)
    }

    private fun bindGeometryUniforms() {
        uniformMatrix4("uMVPMatrix", identityMatrix4)
        uniformMatrix4("uSTMatrix", identityMatrix4)
        uniform4f("uCropRect", 0f, 0f, 1f, 1f)
    }

    private fun bindSnapshotUniforms(
        snapshot: MgcVfeLutSnapshot,
        width: Int,
        height: Int,
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
        uniform1f("uAspectRatio", width.toFloat() / height.coerceAtLeast(1).toFloat())
        uniform1f("uFlash", 0f)
        uniform3f("uGradingHues", 0f, 0f, 0f)
        uniform3f("uGradingAmounts", 0f, 0f, 0f)
        uniform1f("uGradingBalance", 0f)
        uniform1f("uGradingBlending", 0f)
        uniformMatrix3("uPrimaryCalibrationMatrix", identityMatrix3)
        uniform1fArray("uLchHueAdjustments[0]", snapshot.lchHueAdjustments)
        uniform1fArray("uLchChromaAdjustments[0]", snapshot.lchChromaAdjustments)
        uniform1fArray("uLchLightnessAdjustments[0]", snapshot.lchLightnessAdjustments)
        uniform1f("uAperture", 1.4f)
        uniform2f("uFocusPoint", 0.5f, 0.5f)
        uniform2f(
            "uTexelSize",
            1f / width.coerceAtLeast(1).toFloat(),
            1f / height.coerceAtLeast(1).toFloat(),
        )
    }

    private fun drawQuad() {
        val positionLocation = GLES30.glGetAttribLocation(programId, "aPosition")
        val textureLocation = GLES30.glGetAttribLocation(programId, "aTexCoord")
        if (positionLocation >= 0) {
            vertexBuffer.position(0)
            GLES30.glEnableVertexAttribArray(positionLocation)
            GLES30.glVertexAttribPointer(
                positionLocation,
                2,
                GLES30.GL_FLOAT,
                false,
                0,
                vertexBuffer,
            )
        }
        if (textureLocation >= 0) {
            textureCoordinateBuffer.position(0)
            GLES30.glEnableVertexAttribArray(textureLocation)
            GLES30.glVertexAttribPointer(
                textureLocation,
                2,
                GLES30.GL_FLOAT,
                false,
                0,
                textureCoordinateBuffer,
            )
        }
        drawOrderBuffer.position(0)
        GLES30.glDrawElements(
            GLES30.GL_TRIANGLES,
            drawOrder.size,
            GLES30.GL_UNSIGNED_SHORT,
            drawOrderBuffer,
        )
        if (positionLocation >= 0) GLES30.glDisableVertexAttribArray(positionLocation)
        if (textureLocation >= 0) GLES30.glDisableVertexAttribArray(textureLocation)
    }

    private fun ensureLutTexture(snapshot: MgcVfeLutSnapshot): Int {
        val version = MgcVfeLutRuntime.getSnapshotVersion()
        if (lutTextureId != 0 && uploadedSnapshotVersion == version) return lutTextureId
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

        val payload = snapshot.lutPayload ?: error("LUT payload missing")
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
        requireNoGlError("captured JPEG LUT upload")
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

    private fun create2DTexture(): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val id = ids[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, id)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        return id
    }

    private fun createDummy2DTexture(): Int {
        val id = create2DTexture()
        val payload = ByteBuffer.allocateDirect(4)
            .put(byteArrayOf(0, 0, 0, 0))
            .apply { position(0) }
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
        return id
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
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (status[0] == 0) {
            val message = GLES30.glGetProgramInfoLog(program)
            GLES30.glDeleteProgram(program)
            error("Captured JPEG shader link failed: $message")
        }
        return program
    }

    private fun compileShader(type: Int, source: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source.removePrefix("\uFEFF").trimStart())
        GLES30.glCompileShader(shader)
        val status = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, status, 0)
        if (status[0] == 0) {
            val message = GLES30.glGetShaderInfoLog(shader)
            GLES30.glDeleteShader(shader)
            error("Captured JPEG shader compile failed: $message")
        }
        return shader
    }

    private fun obtainReadbackBuffer(requiredSize: Int): ByteBuffer {
        val current = readbackBuffer
        if (current != null && readbackBufferSize >= requiredSize) {
            current.clear()
            current.limit(requiredSize)
            return current
        }
        readbackBuffer = ByteBuffer.allocateDirect(requiredSize)
            .order(ByteOrder.nativeOrder())
        readbackBufferSize = requiredSize
        return readbackBuffer ?: error("Readback allocation failed")
    }

    private fun release() {
        runCatching {
            if (eglDisplay != EGL14.EGL_NO_DISPLAY &&
                eglContext != EGL14.EGL_NO_CONTEXT &&
                eglSurface != EGL14.EGL_NO_SURFACE
            ) {
                EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)
            }
            releaseOutputFramebuffer()
            val textures = intArrayOf(
                inputTextureId,
                lutTextureId,
                dummyLutTextureId,
                dummyCurveTextureId,
            ).filter { it != 0 }.toIntArray()
            if (textures.isNotEmpty()) {
                GLES30.glDeleteTextures(textures.size, textures, 0)
            }
            if (programId != 0) GLES30.glDeleteProgram(programId)
            if (eglDisplay != EGL14.EGL_NO_DISPLAY) {
                EGL14.eglMakeCurrent(
                    eglDisplay,
                    EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_SURFACE,
                    EGL14.EGL_NO_CONTEXT,
                )
                if (eglSurface != EGL14.EGL_NO_SURFACE) {
                    EGL14.eglDestroySurface(eglDisplay, eglSurface)
                }
                if (eglContext != EGL14.EGL_NO_CONTEXT) {
                    EGL14.eglDestroyContext(eglDisplay, eglContext)
                }
                EGL14.eglTerminate(eglDisplay)
            }
        }
        eglDisplay = EGL14.EGL_NO_DISPLAY
        eglContext = EGL14.EGL_NO_CONTEXT
        eglSurface = EGL14.EGL_NO_SURFACE
        programId = 0
        inputTextureId = 0
        outputTextureId = 0
        outputFramebufferId = 0
        outputWidth = 0
        outputHeight = 0
        lutTextureId = 0
        dummyLutTextureId = 0
        dummyCurveTextureId = 0
        uploadedSnapshotVersion = -1
        maxTextureSize = 0
        readbackBuffer = null
        readbackBufferSize = 0
    }

    private fun releaseOutputFramebuffer() {
        if (outputFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(outputFramebufferId), 0)
        }
        if (outputTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(outputTextureId), 0)
        }
        outputFramebufferId = 0
        outputTextureId = 0
        outputWidth = 0
        outputHeight = 0
    }

    private fun uniform1i(name: String, value: Int) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniform1i(location, value)
    }

    private fun uniform1f(name: String, value: Float) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniform1f(location, value)
    }

    private fun uniform2f(name: String, x: Float, y: Float) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniform2f(location, x, y)
    }

    private fun uniform3f(name: String, x: Float, y: Float, z: Float) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniform3f(location, x, y, z)
    }

    private fun uniform4f(name: String, x: Float, y: Float, z: Float, w: Float) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniform4f(location, x, y, z, w)
    }

    private fun uniformMatrix4(name: String, value: FloatArray) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniformMatrix4fv(location, 1, false, value, 0)
    }

    private fun uniformMatrix3(name: String, value: FloatArray) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniformMatrix3fv(location, 1, false, value, 0)
    }

    private fun uniform1fArray(name: String, value: FloatArray) {
        val location = GLES30.glGetUniformLocation(programId, name)
        if (location >= 0) GLES30.glUniform1fv(location, value.size, value, 0)
    }

    private fun requireNoGlError(operation: String) {
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            throw IllegalStateException(
                "GL error after $operation: 0x${Integer.toHexString(error)}",
            )
        }
    }

    private fun drainGlErrors() {
        while (GLES30.glGetError() != GLES30.GL_NO_ERROR) {
            // Drain prior driver errors before a capture.
        }
    }

    private fun eglErrorHex(): String =
        "0x${Integer.toHexString(EGL14.eglGetError())}"

    private fun floatBufferOf(values: FloatArray): FloatBuffer =
        ByteBuffer.allocateDirect(values.size * 4)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(values)
            .apply { position(0) }

    private fun shortBufferOf(values: ShortArray): ShortBuffer =
        ByteBuffer.allocateDirect(values.size * 2)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
            .put(values)
            .apply { position(0) }
}
