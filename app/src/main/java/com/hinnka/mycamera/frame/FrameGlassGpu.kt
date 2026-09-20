package com.hinnka.mycamera.frame

import android.content.Context
import android.graphics.Bitmap
import android.graphics.RectF
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLUtils
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer

/** Owns the GLES 3 color, refraction and highlight passes for a frame material. */
internal class FrameGlassGpu(context: Context) : AutoCloseable {
    private val appContext = context.applicationContext
    private var ownerThread: Thread? = null
    private var initialized = false
    private var closed = false
    private var loggedLensOutput = false

    private var previousDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var previousContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var previousDrawSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var previousReadSurface: EGLSurface = EGL14.EGL_NO_SURFACE

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var eglConfig: EGLConfig? = null

    private var program = 0
    private var highlightProgram = 0
    private var colorProgram = 0
    private var inputTexture = 0
    private var outputTexture = 0
    private var colorTexture = 0
    private var framebuffer = 0
    private var vertexBuffer = 0
    private var inputTextureWidth = 0
    private var inputTextureHeight = 0
    private var lensInputTexture = 0
    private var outputWidth = 0
    private var outputHeight = 0
    private var colorWidth = 0
    private var colorHeight = 0
    private var queriedMaxTextureSize = 0
    private var maxViewportWidth = 0
    private var maxViewportHeight = 0
    private val uniforms = HashMap<String, Int>()
    private val highlightUniforms = HashMap<String, Int>()
    private val colorUniforms = HashMap<String, Int>()
    private var positionLocation = -1

    val maxTextureSize: Int
        get() {
            check(initialized && !closed) { "FrameGlassGpu is not initialized" }
            checkThread()
            return queriedMaxTextureSize
        }

    fun initialize() {
        check(!closed) { "FrameGlassGpu is closed" }
        if (initialized) {
            checkThread()
            return
        }
        ownerThread = Thread.currentThread()
        try {
            saveCurrentEglState()
            createEglSession()
            logGpuInfo()
            queryCapabilities()
            createProgram()
            createHighlightProgram()
            createColorProgram()
            createBuffersAndTargets()
            checkGl("initialize")
            initialized = true
        } catch (error: Throwable) {
            PLog.e(TAG, "Frame glass GPU initialization failed", error)
            try {
                close()
            } catch (cleanupError: Throwable) {
                error.addSuppressed(cleanupError)
            }
            throw error
        }
    }

    fun render(
        input: Bitmap,
        inputRect: RectF,
        outputRect: RectF,
        panelWidth: Float,
        panelHeight: Float,
        cornerRadius: Float,
        refractionHeight: Float,
        refractionAmount: Float,
        photoRect: RectF?,
        photoCornerRadius: Float,
    ): Bitmap {
        check(initialized && !closed) { "FrameGlassGpu must be initialized before render" }
        checkThread()
        try {
            makeSessionCurrent()
            validateRenderInput(input, inputRect, outputRect, panelWidth, panelHeight, cornerRadius, refractionHeight, refractionAmount, photoRect, photoCornerRadius)
            val tileWidth = outputRect.width().toInt()
            val tileHeight = outputRect.height().toInt()
            ensureOutputTarget(tileWidth, tileHeight)
            uploadInput(input)
            lensInputTexture = prepareVibrantInput(input)
            ensureOutputTarget(tileWidth, tileHeight)
            bindDrawState(tileWidth, tileHeight)
            setUniforms(inputRect, outputRect, panelWidth, panelHeight, cornerRadius, refractionHeight, refractionAmount, photoRect, photoCornerRadius)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, VERTEX_COUNT)
            checkGl("draw")
            return readOutputBitmap(tileWidth, tileHeight, logLensAlpha = !loggedLensOutput)
        } catch (error: Throwable) {
            PLog.e(TAG, "Frame glass render failed", error)
            throw error
        }
    }

    fun renderHighlight(
        outputRect: RectF,
        panelWidth: Float,
        panelHeight: Float,
        cornerRadius: Float,
        photoRect: RectF?,
        photoCornerRadius: Float,
    ): Bitmap {
        check(initialized && !closed) { "FrameGlassGpu must be initialized before renderHighlight" }
        checkThread()
        try {
            makeSessionCurrent()
            validateTarget(outputRect, panelWidth, panelHeight, cornerRadius)
            val tileWidth = outputRect.width().toInt()
            val tileHeight = outputRect.height().toInt()
            ensureOutputTarget(tileWidth, tileHeight)
            bindDrawState(tileWidth, tileHeight, highlightProgram)
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            GLES30.glUniform2f(highlightUniform("targetSize"), outputRect.width(), outputRect.height())
            GLES30.glUniform2f(highlightUniform("targetOffset"), outputRect.left, outputRect.top)
            GLES30.glUniform2f(highlightUniform("size"), panelWidth, panelHeight)
            GLES30.glUniform4f(highlightUniform("cornerRadii"), cornerRadius, cornerRadius, cornerRadius, cornerRadius)
            GLES30.glUniform4f(highlightUniform("color"), 1f, 1f, 1f, 1f)
            GLES30.glUniform1f(highlightUniform("angle"), HIGHLIGHT_ANGLE)
            GLES30.glUniform1f(highlightUniform("falloff"), HIGHLIGHT_FALLOFF)
            setPhotoUniforms(highlightProgram, photoRect, photoCornerRadius)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, VERTEX_COUNT)
            checkGl("highlight draw")
            return readOutputBitmap(tileWidth, tileHeight)
        } catch (error: Throwable) {
            PLog.e(TAG, "Frame glass highlight render failed", error)
            throw error
        }
    }

    override fun close() {
        if (closed) return
        ownerThread?.let { check(Thread.currentThread() === it) { "FrameGlassGpu must be closed on its EGL owner thread" } }
        var failure: Throwable? = null
        if (eglContext != EGL14.EGL_NO_CONTEXT && eglDisplay != EGL14.EGL_NO_DISPLAY) {
            try {
                if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
                    throw eglFailure("eglMakeCurrent for cleanup")
                }
                deleteGlResources()
            } catch (error: Throwable) {
                failure = error
                PLog.e(TAG, "Frame glass GPU resource cleanup failed", error)
            }
        }
        try {
            detachAndRestoreEgl()
        } catch (error: Throwable) {
            if (failure == null) failure = error else failure.addSuppressed(error)
            PLog.e(TAG, "Frame glass EGL restoration failed", error)
        }
        try {
            if (eglDisplay != EGL14.EGL_NO_DISPLAY && eglSurface != EGL14.EGL_NO_SURFACE) {
                if (!EGL14.eglDestroySurface(eglDisplay, eglSurface)) {
                    throw eglFailure("eglDestroySurface")
                }
            }
            if (eglDisplay != EGL14.EGL_NO_DISPLAY && eglContext != EGL14.EGL_NO_CONTEXT) {
                if (!EGL14.eglDestroyContext(eglDisplay, eglContext)) {
                    throw eglFailure("eglDestroyContext")
                }
            }
        } catch (error: Throwable) {
            if (failure == null) failure = error else failure.addSuppressed(error)
            PLog.e(TAG, "Frame glass EGL destruction failed", error)
        } finally {
            eglSurface = EGL14.EGL_NO_SURFACE
            eglContext = EGL14.EGL_NO_CONTEXT
            eglConfig = null
            initialized = false
            closed = true
        }
        if (failure != null) throw IllegalStateException("FrameGlassGpu cleanup failed", failure)
    }

    private fun saveCurrentEglState() {
        previousDisplay = EGL14.eglGetCurrentDisplay()
        previousContext = EGL14.eglGetCurrentContext()
        previousDrawSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_DRAW)
        previousReadSurface = EGL14.eglGetCurrentSurface(EGL14.EGL_READ)
    }

    private fun createEglSession() {
        val currentDisplay = previousDisplay.takeIf { it != EGL14.EGL_NO_DISPLAY }
        eglDisplay = currentDisplay ?: EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        check(eglDisplay != EGL14.EGL_NO_DISPLAY) { "eglGetDisplay failed: ${EGL14.eglGetError()}" }
        if (currentDisplay == null) {
            val version = IntArray(2)
            check(EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) {
                "eglInitialize failed: ${EGL14.eglGetError()}"
            }
        }
        eglConfig = chooseEs3Config()
        val config = checkNotNull(eglConfig)
        eglContext = EGL14.eglCreateContext(
            eglDisplay,
            config,
            EGL14.EGL_NO_CONTEXT,
            intArrayOf(EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE),
            0,
        )
        check(eglContext != EGL14.EGL_NO_CONTEXT) { "eglCreateContext GLES3 failed: ${EGL14.eglGetError()}" }
        eglSurface = EGL14.eglCreatePbufferSurface(
            eglDisplay,
            config,
            intArrayOf(EGL14.EGL_WIDTH, 1, EGL14.EGL_HEIGHT, 1, EGL14.EGL_NONE),
            0,
        )
        check(eglSurface != EGL14.EGL_NO_SURFACE) { "eglCreatePbufferSurface failed: ${EGL14.eglGetError()}" }
        check(EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
            "eglMakeCurrent failed: ${EGL14.eglGetError()}"
        }
    }

    private fun chooseEs3Config(): EGLConfig {
        val configs = arrayOfNulls<EGLConfig>(1)
        val count = IntArray(1)
        val attributes = intArrayOf(
            EGL14.EGL_RED_SIZE, 8,
            EGL14.EGL_GREEN_SIZE, 8,
            EGL14.EGL_BLUE_SIZE, 8,
            EGL14.EGL_ALPHA_SIZE, 8,
            EGL14.EGL_RENDERABLE_TYPE, EGL_OPENGL_ES3_BIT_KHR,
            EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE,
        )
        check(EGL14.eglChooseConfig(eglDisplay, attributes, 0, configs, 0, configs.size, count, 0) && count[0] > 0) {
            "No EGL config supports GLES 3: ${EGL14.eglGetError()}"
        }
        return checkNotNull(configs[0])
    }

    private fun logGpuInfo() {
        val vendor = GLES30.glGetString(GLES30.GL_VENDOR).orEmpty()
        val renderer = GLES30.glGetString(GLES30.GL_RENDERER).orEmpty()
        val version = GLES30.glGetString(GLES30.GL_VERSION).orEmpty()
        PLog.i(TAG, "GLES vendor=$vendor renderer=$renderer version=$version")
        check(version.contains("OpenGL ES 3.")) { "Frame glass requires GLES 3.0+, got: $version" }
    }

    private fun queryCapabilities() {
        val value = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, value, 0)
        queriedMaxTextureSize = value[0]
        check(queriedMaxTextureSize > 0) { "Invalid GL_MAX_TEXTURE_SIZE=$queriedMaxTextureSize" }
        val viewport = IntArray(2)
        GLES30.glGetIntegerv(GLES30.GL_MAX_VIEWPORT_DIMS, viewport, 0)
        maxViewportWidth = viewport[0]
        maxViewportHeight = viewport[1]
        check(maxViewportWidth > 0 && maxViewportHeight > 0) { "Invalid GL_MAX_VIEWPORT_DIMS=${viewport.contentToString()}" }
        PLog.i(TAG, "Frame glass GL_MAX_TEXTURE_SIZE=$queriedMaxTextureSize")
        PLog.i(TAG, "Frame glass GL_MAX_VIEWPORT_DIMS=${maxViewportWidth}x$maxViewportHeight")
        checkGl("capability query")
    }

    private fun createProgram() {
        program = linkProgram(FRAGMENT_SHADER_ASSET)
        positionLocation = GLES30.glGetAttribLocation(program, POSITION_ATTRIBUTE_NAME)
        check(positionLocation >= 0) { "$VERTEX_SHADER_ASSET does not expose $POSITION_ATTRIBUTE_NAME" }
        cacheUniforms(program, UNIFORM_NAMES, uniforms, FRAGMENT_SHADER_ASSET)
    }

    private fun createHighlightProgram() {
        highlightProgram = linkProgram(HIGHLIGHT_SHADER_ASSET)
        cacheUniforms(highlightProgram, HIGHLIGHT_UNIFORM_NAMES, highlightUniforms, HIGHLIGHT_SHADER_ASSET)
    }

    private fun createColorProgram() {
        colorProgram = linkProgram(COLOR_SHADER_ASSET)
        cacheUniforms(colorProgram, COLOR_UNIFORM_NAMES, colorUniforms, COLOR_SHADER_ASSET)
    }

    private fun linkProgram(fragmentAsset: String): Int {
        val vertexSource = readShader(VERTEX_SHADER_ASSET)
        val fragmentSource = readShader(fragmentAsset)
        validateShaderVersions(vertexSource, fragmentSource)
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, vertexSource, VERTEX_SHADER_ASSET)
        val fragmentShader = try {
            compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource, fragmentAsset)
        } catch (error: Throwable) {
            GLES30.glDeleteShader(vertexShader)
            throw error
        }
        val linked = GLES30.glCreateProgram()
        check(linked != 0) { "glCreateProgram failed for $fragmentAsset" }
        try {
            GLES30.glAttachShader(linked, vertexShader)
            GLES30.glAttachShader(linked, fragmentShader)
            GLES30.glBindAttribLocation(linked, POSITION_ATTRIBUTE, POSITION_ATTRIBUTE_NAME)
            GLES30.glLinkProgram(linked)
            val status = IntArray(1)
            GLES30.glGetProgramiv(linked, GLES30.GL_LINK_STATUS, status, 0)
            if (status[0] == 0) {
                val log = GLES30.glGetProgramInfoLog(linked)
                PLog.e(TAG, "$VERTEX_SHADER_ASSET + $fragmentAsset link failed: $log")
                throw IllegalStateException("Frame glass shader link failed: $log")
            }
            return linked
        } catch (error: Throwable) {
            GLES30.glDeleteProgram(linked)
            throw error
        } finally {
            GLES30.glDeleteShader(vertexShader)
            GLES30.glDeleteShader(fragmentShader)
        }
    }

    private fun cacheUniforms(targetProgram: Int, names: Array<String>, cache: MutableMap<String, Int>, asset: String) {
        for (name in names) {
            val location = GLES30.glGetUniformLocation(targetProgram, name)
            check(location >= 0) { "$asset is missing active uniform '$name'" }
            cache[name] = location
        }
    }

    private fun createBuffersAndTargets() {
        val bufferIds = IntArray(1)
        GLES30.glGenBuffers(1, bufferIds, 0)
        vertexBuffer = bufferIds[0]
        check(vertexBuffer != 0) { "glGenBuffers failed for fullscreen quad" }
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBuffer)
        val vertices = floatBuffer(FULLSCREEN_QUAD)
        GLES30.glBufferData(GLES30.GL_ARRAY_BUFFER, vertices.remaining() * FLOAT_BYTES, vertices, GLES30.GL_STATIC_DRAW)

        val textureIds = IntArray(3)
        GLES30.glGenTextures(textureIds.size, textureIds, 0)
        inputTexture = textureIds[0]
        outputTexture = textureIds[1]
        colorTexture = textureIds[2]
        check(textureIds.all { it != 0 }) { "glGenTextures failed for frame glass" }
        configureTexture(inputTexture)
        configureTexture(outputTexture)
        configureTexture(colorTexture)

        val framebufferIds = IntArray(1)
        GLES30.glGenFramebuffers(1, framebufferIds, 0)
        framebuffer = framebufferIds[0]
        check(framebuffer != 0) { "glGenFramebuffers failed for frame glass" }
        checkGl("resource creation")
    }

    private fun validateRenderInput(
        input: Bitmap,
        inputRect: RectF,
        outputRect: RectF,
        panelWidth: Float,
        panelHeight: Float,
        cornerRadius: Float,
        refractionHeight: Float,
        refractionAmount: Float,
        photoRect: RectF?,
        photoCornerRadius: Float,
    ) {
        check(!input.isRecycled && input.width > 0 && input.height > 0) { "Invalid input bitmap" }
        check(input.width <= queriedMaxTextureSize && input.height <= queriedMaxTextureSize) {
            "Input bitmap ${input.width}x${input.height} exceeds GL_MAX_TEXTURE_SIZE=$queriedMaxTextureSize"
        }
        check(input.width <= maxViewportWidth && input.height <= maxViewportHeight) {
            "Input color viewport ${input.width}x${input.height} exceeds GL_MAX_VIEWPORT_DIMS=${maxViewportWidth}x$maxViewportHeight"
        }
        check(inputRect.left.isFinite() && inputRect.top.isFinite() && inputRect.right.isFinite() && inputRect.bottom.isFinite()) {
            "inputRect must contain finite coordinates"
        }
        check(inputRect.width() > 0f && inputRect.height() > 0f) { "inputRect must have positive dimensions" }
        validateTarget(outputRect, panelWidth, panelHeight, cornerRadius)
        check(refractionHeight.isFinite() && refractionHeight > 0f) { "refractionHeight must be finite and positive" }
        check(refractionAmount.isFinite() && refractionAmount >= 0f) { "refractionAmount must be finite and non-negative" }
        check(photoCornerRadius.isFinite() && photoCornerRadius >= 0f)
        if (photoRect != null) {
            check(!photoRect.isEmpty && listOf(photoRect.left, photoRect.top, photoRect.right, photoRect.bottom).all { it.isFinite() })
            check(photoCornerRadius <= minOf(photoRect.width(), photoRect.height()) / 2f)
        }

    }

    private fun validateTarget(outputRect: RectF, panelWidth: Float, panelHeight: Float, cornerRadius: Float) {
        check(outputRect.left.isFinite() && outputRect.top.isFinite() && outputRect.right.isFinite() && outputRect.bottom.isFinite()) {
            "outputRect must contain finite coordinates"
        }
        val width = outputRect.width()
        val height = outputRect.height()
        check(width > 0f && height > 0f && width == width.toInt().toFloat() && height == height.toInt().toFloat()) {
            "outputRect dimensions must be positive integer tile sizes"
        }
        check(width <= MAX_TILE_SIZE && height <= MAX_TILE_SIZE) { "Output tile ${width}x$height exceeds $MAX_TILE_SIZE" }
        check(width <= queriedMaxTextureSize && height <= queriedMaxTextureSize) {
            "Output tile ${width}x$height exceeds GL_MAX_TEXTURE_SIZE=$queriedMaxTextureSize"
        }
        check(width <= maxViewportWidth && height <= maxViewportHeight) {
            "Output tile ${width}x$height exceeds GL_MAX_VIEWPORT_DIMS=${maxViewportWidth}x$maxViewportHeight"
        }
        check(panelWidth.isFinite() && panelHeight.isFinite() && panelWidth > 0f && panelHeight > 0f) {
            "Panel dimensions must be finite and positive"
        }
        check(cornerRadius.isFinite() && cornerRadius >= 0f) { "cornerRadius must be finite and non-negative" }
    }

    private fun readOutputBitmap(width: Int, height: Int, logLensAlpha: Boolean = false): Bitmap {
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        val rgba = ByteBuffer.allocateDirect(width * height * BYTES_PER_PIXEL).order(ByteOrder.nativeOrder())
        GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, rgba)
        checkGl("readback")
        val argb = IntArray(width * height)
        var minAlpha = 255
        var maxAlpha = 0
        for (y in 0 until height) {
            val sourceRow = (height - 1 - y) * width * BYTES_PER_PIXEL
            val destinationRow = y * width
            for (x in 0 until width) {
                val offset = sourceRow + x * BYTES_PER_PIXEL
                val red = rgba.get(offset).toInt() and 0xff
                val green = rgba.get(offset + 1).toInt() and 0xff
                val blue = rgba.get(offset + 2).toInt() and 0xff
                val alpha = rgba.get(offset + 3).toInt() and 0xff
                if (logLensAlpha) {
                    minAlpha = minOf(minAlpha, alpha)
                    maxAlpha = maxOf(maxAlpha, alpha)
                }
                argb[destinationRow + x] = (alpha shl 24) or (red shl 16) or (green shl 8) or blue
            }
        }
        if (logLensAlpha) {
            PLog.d(TAG, "lens output=${width}x$height alpha=$minAlpha..$maxAlpha")
            loggedLensOutput = true
        }
        for (index in argb.indices) {
            val color = argb[index]
            val alpha = color ushr 24 and 0xff
            if (alpha == 0) {
                argb[index] = 0
            } else if (alpha < 255) {
                val red = ((color ushr 16 and 0xff) * 255 / alpha).coerceAtMost(255)
                val green = ((color ushr 8 and 0xff) * 255 / alpha).coerceAtMost(255)
                val blue = ((color and 0xff) * 255 / alpha).coerceAtMost(255)
                argb[index] = (alpha shl 24) or (red shl 16) or (green shl 8) or blue
            }
        }
        val bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
        bitmap.setPixels(argb, 0, width, 0, 0, width, height)
        checkGl("bitmap conversion")
        return bitmap
    }

    private fun uploadInput(input: Bitmap) {
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTexture)
        val sameSize = inputTextureWidth == input.width && inputTextureHeight == input.height
        if (sameSize) {
            GLUtils.texSubImage2D(GLES30.GL_TEXTURE_2D, 0, 0, 0, input)
        } else {
            GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, input, 0)
            inputTextureWidth = input.width
            inputTextureHeight = input.height
        }
        configureTextureBound()
        checkGl("input bitmap upload")
    }

    private fun prepareVibrantInput(input: Bitmap): Int {
        val width = input.width
        val height = input.height
        check(width <= maxViewportWidth && height <= maxViewportHeight)
        if (colorWidth != width || colorHeight != height) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, colorTexture)
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D, 0, GLES30.GL_RGBA8, width, height, 0,
                GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, null,
            )
            colorWidth = width
            colorHeight = height
        }
        attachTarget(colorTexture, width, height, "vibrancy")
        bindDrawState(width, height, colorProgram)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTexture)
        GLES30.glUniform1i(colorUniform("content"), 0)
        GLES30.glUniform2f(colorUniform("sourceSize"), width.toFloat(), height.toFloat())
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, VERTEX_COUNT)
        checkGl("vibrancy")
        return colorTexture
    }

    private fun setPhotoUniforms(target: Int, photoRect: RectF?, radius: Float) {
        GLES30.glUniform4f(
            GLES30.glGetUniformLocation(target, "photoRect"),
            photoRect?.left ?: 0f, photoRect?.top ?: 0f,
            photoRect?.right ?: 0f, photoRect?.bottom ?: 0f,
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(target, "photoRadius"), radius)
    }

    private fun ensureOutputTarget(width: Int, height: Int) {
        if (width != outputWidth || height != outputHeight) {
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, outputTexture)
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
            outputWidth = width
            outputHeight = height
        }
        attachTarget(outputTexture, width, height, "output")
    }

    private fun attachTarget(texture: Int, width: Int, height: Int, label: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glFramebufferTexture2D(GLES30.GL_FRAMEBUFFER, GLES30.GL_COLOR_ATTACHMENT0, GLES30.GL_TEXTURE_2D, texture, 0)
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        check(status == GLES30.GL_FRAMEBUFFER_COMPLETE) {
            "Frame glass $label framebuffer incomplete for ${width}x$height: 0x${status.toString(16)}"
        }
        checkGl("$label target allocation")
    }

    private fun bindDrawState(width: Int, height: Int) {
        bindDrawState(width, height, program)
    }

    private fun bindDrawState(width: Int, height: Int, drawProgram: Int) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffer)
        GLES30.glViewport(0, 0, width, height)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glDisable(GLES30.GL_DEPTH_TEST)
        GLES30.glDisable(GLES30.GL_STENCIL_TEST)
        GLES30.glDisable(GLES30.GL_SCISSOR_TEST)
        GLES30.glColorMask(true, true, true, true)
        GLES30.glUseProgram(drawProgram)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, if (drawProgram == program) lensInputTexture else 0)
        if (drawProgram == program) GLES30.glUniform1i(uniform("content"), 0)
        GLES30.glBindBuffer(GLES30.GL_ARRAY_BUFFER, vertexBuffer)
        GLES30.glEnableVertexAttribArray(positionLocation)
        GLES30.glVertexAttribPointer(positionLocation, 2, GLES30.GL_FLOAT, false, 0, 0)
    }

    private fun setUniforms(
        inputRect: RectF,
        outputRect: RectF,
        panelWidth: Float,
        panelHeight: Float,
        cornerRadius: Float,
        refractionHeight: Float,
        refractionAmount: Float,
        photoRect: RectF?,
        photoCornerRadius: Float,
    ) {
        GLES30.glUniform2f(uniform("contentSize"), inputRect.width(), inputRect.height())
        GLES30.glUniform2f(uniform("contentOffset"), inputRect.left, inputRect.top)
        GLES30.glUniform2f(uniform("targetSize"), outputRect.width(), outputRect.height())
        GLES30.glUniform2f(uniform("targetOffset"), outputRect.left, outputRect.top)
        GLES30.glUniform2f(uniform("size"), panelWidth, panelHeight)
        GLES30.glUniform2f(uniform("offset"), 0f, 0f)
        GLES30.glUniform4f(uniform("cornerRadii"), cornerRadius, cornerRadius, cornerRadius, cornerRadius)
        GLES30.glUniform1f(uniform("refractionHeight"), refractionHeight)
        GLES30.glUniform1f(uniform("refractionAmount"), -refractionAmount)
        GLES30.glUniform1f(uniform("depthEffect"), 1f)
        setPhotoUniforms(program, photoRect, photoCornerRadius)
    }

    private fun makeSessionCurrent() {
        if (EGL14.eglGetCurrentContext() != eglContext || EGL14.eglGetCurrentDisplay() != eglDisplay) {
            check(EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) {
                "eglMakeCurrent before frame glass render failed: ${EGL14.eglGetError()}"
            }
        }
    }

    private fun detachAndRestoreEgl() {
        if (eglDisplay != EGL14.EGL_NO_DISPLAY && EGL14.eglGetCurrentContext() == eglContext) {
            check(EGL14.eglMakeCurrent(
                eglDisplay,
                EGL14.EGL_NO_SURFACE,
                EGL14.EGL_NO_SURFACE,
                EGL14.EGL_NO_CONTEXT,
            )) { "Failed to detach frame glass EGL context: ${EGL14.eglGetError()}" }
        }
        if (previousDisplay != EGL14.EGL_NO_DISPLAY && previousContext != EGL14.EGL_NO_CONTEXT) {
            check(EGL14.eglMakeCurrent(previousDisplay, previousDrawSurface, previousReadSurface, previousContext)) {
                "Failed to restore previous EGL context: ${EGL14.eglGetError()}"
            }
        }
    }

    private fun deleteGlResources() {
        if (program != 0) GLES30.glDeleteProgram(program)
        program = 0
        if (highlightProgram != 0) GLES30.glDeleteProgram(highlightProgram)
        highlightProgram = 0
        if (colorProgram != 0) GLES30.glDeleteProgram(colorProgram)
        colorProgram = 0
        if (vertexBuffer != 0) GLES30.glDeleteBuffers(1, intArrayOf(vertexBuffer), 0)
        vertexBuffer = 0
        if (framebuffer != 0) GLES30.glDeleteFramebuffers(1, intArrayOf(framebuffer), 0)
        framebuffer = 0
        val textures = intArrayOf(inputTexture, outputTexture, colorTexture)
            .filter { it != 0 }
            .toIntArray()
        if (textures.isNotEmpty()) GLES30.glDeleteTextures(textures.size, textures, 0)
        inputTexture = 0
        outputTexture = 0
        colorTexture = 0
        uniforms.clear()
        highlightUniforms.clear()
        colorUniforms.clear()
        positionLocation = -1
        inputTextureWidth = 0
        inputTextureHeight = 0
        lensInputTexture = 0
        outputWidth = 0
        outputHeight = 0
        colorWidth = 0
        colorHeight = 0
        checkGl("resource deletion")
    }

    private fun compileShader(type: Int, source: String, name: String): Int {
        check(source.startsWith("#version ")) { "$name must start with #version at the first byte" }
        val shader = GLES30.glCreateShader(type)
        check(shader != 0) { "glCreateShader failed for $name" }
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)
        val status = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, status, 0)
        if (status[0] == 0) {
            val log = GLES30.glGetShaderInfoLog(shader)
            GLES30.glDeleteShader(shader)
            PLog.e(TAG, "$name compile failed: $log")
            throw IllegalStateException("$name compile failed: $log")
        }
        return shader
    }

    private fun readShader(assetPath: String): String {
        val source = appContext.assets.open(assetPath).bufferedReader().use { it.readText() }
        if (!source.contains("/* FRAME_GEOMETRY */")) return source
        val geometry = appContext.assets.open("shaders/frame_glass/geometry.glsl")
            .bufferedReader().use { it.readText() }
        return source.replace("/* FRAME_GEOMETRY */", geometry)
    }

    private fun validateShaderVersions(vertex: String, fragment: String) {
        val versionPattern = Regex("^#version\\s+(\\d+)\\s+es(?:\\s|$)")
        val vertexVersion = versionPattern.find(vertex)?.groupValues?.get(1)
        val fragmentVersion = versionPattern.find(fragment)?.groupValues?.get(1)
        check(vertexVersion != null && vertexVersion == fragmentVersion) {
            "Frame glass vertex/fragment GLSL versions differ or are invalid: $vertexVersion / $fragmentVersion"
        }
        check(vertexVersion == "300") { "Frame glass shader requires matching GLSL ES 3.00 sources, got $vertexVersion" }
    }

    private fun configureTexture(texture: Int) {
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        configureTextureBound()
    }

    private fun configureTextureBound() {
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
    }

    private fun uniform(name: String): Int = checkNotNull(uniforms[name]) { "Uniform '$name' was not initialized" }
    private fun highlightUniform(name: String): Int =
        checkNotNull(highlightUniforms[name]) { "Highlight uniform '$name' was not initialized" }
    private fun colorUniform(name: String): Int =
        checkNotNull(colorUniforms[name]) { "Blur uniform '$name' was not initialized" }

    private fun checkGl(operation: String) {
        val errors = ArrayList<Int>()
        repeat(MAX_GL_ERRORS_TO_DRAIN) {
            val error = GLES30.glGetError()
            if (error == GLES30.GL_NO_ERROR) return@repeat
            errors += error
        }
        if (errors.isNotEmpty()) {
            val message = "$operation produced GLES errors ${errors.joinToString { "0x${it.toString(16)}" }}"
            PLog.e(TAG, message)
            throw IllegalStateException(message)
        }
    }

    private fun checkThread() {
        check(Thread.currentThread() === ownerThread) { "FrameGlassGpu must be used on its EGL owner thread" }
    }

    private fun eglFailure(operation: String): IllegalStateException =
        IllegalStateException("$operation failed: ${EGL14.eglGetError()}")

    private fun floatBuffer(values: FloatArray): FloatBuffer =
        ByteBuffer.allocateDirect(values.size * FLOAT_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .apply { put(values); position(0) }

    companion object {
        private const val TAG = "FrameGlassGpu"
        private const val EGL_OPENGL_ES3_BIT_KHR = 0x0040
        private const val MAX_TILE_SIZE = 1024f
        private const val BYTES_PER_PIXEL = 4
        private const val FLOAT_BYTES = 4
        private const val VERTEX_COUNT = 6
        private const val POSITION_ATTRIBUTE = 0
        private const val POSITION_ATTRIBUTE_NAME = "aPosition"
        private const val VERTEX_SHADER_ASSET = "shaders/frame_glass/vertex.glsl"
        private const val FRAGMENT_SHADER_ASSET = "shaders/frame_glass/lens.frag"
        private const val HIGHLIGHT_SHADER_ASSET = "shaders/frame_glass/highlight.frag"
        private const val COLOR_SHADER_ASSET = "shaders/frame_glass/color.frag"
        private const val HIGHLIGHT_ANGLE = 0.7853981633974483f
        private const val HIGHLIGHT_FALLOFF = 2f
        private const val MAX_GL_ERRORS_TO_DRAIN = 16
        private val UNIFORM_NAMES = arrayOf(
            "content", "contentSize", "contentOffset", "targetSize", "targetOffset",
            "size", "offset", "cornerRadii", "refractionHeight", "refractionAmount", "depthEffect", "photoRect", "photoRadius",
        )
        private val HIGHLIGHT_UNIFORM_NAMES = arrayOf(
            "targetSize", "targetOffset", "size", "cornerRadii", "color", "angle", "falloff", "photoRect", "photoRadius",
        )
        private val COLOR_UNIFORM_NAMES = arrayOf("content", "sourceSize")
        private val FULLSCREEN_QUAD = floatArrayOf(
            -1f, -1f,
            1f, -1f,
            -1f, 1f,
            -1f, 1f,
            1f, -1f,
            1f, 1f,
        )
    }
}
