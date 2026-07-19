package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.graphics.Canvas
import android.graphics.ColorSpace
import android.graphics.Gainmap
import android.opengl.EGL14
import android.opengl.EGLConfig
import android.opengl.EGLContext
import android.opengl.EGLDisplay
import android.opengl.EGLSurface
import android.opengl.GLES30
import android.opengl.GLUtils
import android.os.Build
import androidx.annotation.RequiresApi
import com.hinnka.mycamera.utils.LargeDirectBuffer
import com.hinnka.mycamera.utils.PLog
import kotlinx.coroutines.asCoroutineDispatcher
import kotlinx.coroutines.withContext
import java.nio.ByteBuffer
import java.nio.ByteOrder
import java.nio.FloatBuffer
import java.nio.ShortBuffer
import java.util.concurrent.Executors
import kotlin.system.measureTimeMillis

class GpuReferenceGainmapProducer : GainmapProducer {
    private val dispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "GpuReferenceGainmapProducer-GL").apply { isDaemon = true }
    }.asCoroutineDispatcher()

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var rawLumaResidualProgram = 0
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null
    private var isInitialized = false

    override suspend fun build(source: GainmapSourceSet, strength: Float): GainmapResult? = withContext(dispatcher) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return@withContext null
        if (source.sourceKind != SourceKind.RAW) return@withContext null
        val config = RAW_CONFIG
        val hdrBuffer = source.hdrReference ?: return@withContext null
        val hdrReference = hdrBuffer.bitmap
        val sdrBase = source.sdrBase
        if (sdrBase.width <= 0 || sdrBase.height <= 0) {
            return@withContext null
        }
        if (hdrReference.width <= 0 || hdrReference.height <= 0) {
            return@withContext null
        }
        if (hdrBuffer.encoding != HdrBufferEncoding.LINEAR_SRGB) {
            PLog.e(
                TAG,
                "Rejecting RAW gainmap input: expected=${HdrBufferEncoding.LINEAR_SRGB}, actual=${hdrBuffer.encoding}"
            )
            return@withContext null
        }
        val lutLuminanceGainMap = source.lutLuminanceGainMap
        val expectedColorSpace = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB)
        val hdrColorSpace = hdrReference.colorSpace
        if (hdrReference.config != Bitmap.Config.RGBA_F16 || hdrColorSpace?.id != expectedColorSpace.id) {
            PLog.e(
                TAG,
                "Rejecting RAW HDR reference bitmap: config=${hdrReference.config}, colorSpace=$hdrColorSpace"
            )
            return@withContext null
        }
        if (sdrBase.colorSpace?.isSrgb != true) {
            PLog.e(TAG, "Rejecting RAW SDR base outside sRGB: colorSpace=${sdrBase.colorSpace}")
            return@withContext null
        }
        if (lutLuminanceGainMap?.encoding != LuminanceGainMapEncoding.LINEAR_RATIO ||
            lutLuminanceGainMap.bitmap.config != Bitmap.Config.RGBA_F16 ||
            lutLuminanceGainMap.bitmap.colorSpace?.id != expectedColorSpace.id
        ) {
            PLog.e(
                TAG,
                "Rejecting RAW LUT luminance sidecar: " +
                    "encoding=${lutLuminanceGainMap?.encoding}, " +
                    "config=${lutLuminanceGainMap?.bitmap?.config}, " +
                    "colorSpace=${lutLuminanceGainMap?.bitmap?.colorSpace}"
            )
            return@withContext null
        }
        if (!ensureInitialized()) return@withContext null

        var result: GainmapResult? = null
        val elapsed = measureTimeMillis {
            result = runCatching {
                renderRawLumaResidualGainmap(source, sdrBase, hdrReference, config, strength)
            }.onFailure {
                PLog.e(TAG, "GPU gainmap failed for ${source.sourceKind}", it)
            }.getOrNull()
        }
        PLog.d(TAG, "GPU gainmap build took ${elapsed}ms, source=${source.sourceKind}, success=${result != null}")
        result
    }

    /**
     * Computes the new linear-light RAW residual while keeping the LUT-rendered SDR RGB as the
     * playback color base. A single luminance gain is therefore encoded for all three channels.
     */
    @RequiresApi(Build.VERSION_CODES.UPSIDE_DOWN_CAKE)
    private fun renderRawLumaResidualGainmap(
        source: GainmapSourceSet,
        sdrBase: Bitmap,
        hdrReference: Bitmap,
        config: Config,
        strength: Float,
    ): GainmapResult? {
        val width = downsampleDimension(sdrBase.width, config.downsample)
        val height = downsampleDimension(sdrBase.height, config.downsample)
        val fullHdrRatio = (source.displayHdrSdrRatio.takeIf { it > 1f } ?: config.defaultFullHdrRatio)
            .coerceAtLeast(config.minFullHdrRatio)
            .coerceAtMost(config.maxGainRatio)

        val lutLuminanceGainMap = source.lutLuminanceGainMap?.bitmap ?: return null
        if (hdrReference.width != sdrBase.width || hdrReference.height != sdrBase.height ||
            lutLuminanceGainMap.width != width || lutLuminanceGainMap.height != height
        ) {
            PLog.e(
                TAG,
                "RAW residual inputs must be pixel-aligned: " +
                    "lutGain=${lutLuminanceGainMap.width}x${lutLuminanceGainMap.height}, " +
                    "gainmap=${width}x$height, " +
                    "sdr=${sdrBase.width}x${sdrBase.height}, " +
                    "hdr=${hdrReference.width}x${hdrReference.height}"
            )
            return null
        }

        val lutLuminanceGainUpload = prepareUploadBitmap(lutLuminanceGainMap)
        val sdrUpload = prepareUploadBitmap(sdrBase)
        val hdrUpload = prepareUploadBitmap(hdrReference)
        val lutLuminanceGainTexture = uploadBitmapTexture(lutLuminanceGainUpload.bitmap)
        val sdrTexture = uploadBitmapTexture(sdrUpload.bitmap)
        val hdrTexture = uploadBitmapTexture(hdrUpload.bitmap)
        val target = createRenderTarget(width, height)
        try {
            renderRawLumaResidualPass(
                target = target,
                lutLuminanceGainTexture = lutLuminanceGainTexture,
                sdrTexture = sdrTexture,
                hdrTexture = hdrTexture,
                minGainRatio = config.minGainRatio,
                maxGainRatio = config.maxGainRatio,
                strength = strength,
            )
            val gainmapBitmap = readAlphaBitmap(width, height) ?: return null
            val gainmap = Gainmap(gainmapBitmap).apply {
                setRatioMin(config.minGainRatio, config.minGainRatio, config.minGainRatio)
                setRatioMax(config.maxGainRatio, config.maxGainRatio, config.maxGainRatio)
                setGamma(1.0f, 1.0f, 1.0f)
                setEpsilonSdr(EPSILON, EPSILON, EPSILON)
                setEpsilonHdr(EPSILON, EPSILON, EPSILON)
                setMinDisplayRatioForHdrTransition(config.minDisplayRatioForHdrTransition)
                setDisplayRatioForFullHdr(fullHdrRatio)
            }
            return GainmapResult(gainmap, source.sourceKind, source.confidence)
        } finally {
            GLES30.glDeleteTextures(1, intArrayOf(lutLuminanceGainTexture), 0)
            GLES30.glDeleteTextures(1, intArrayOf(sdrTexture), 0)
            GLES30.glDeleteTextures(1, intArrayOf(hdrTexture), 0)
            target.release()
            lutLuminanceGainUpload.recycleIfTemporary()
            sdrUpload.recycleIfTemporary()
            hdrUpload.recycleIfTemporary()
        }
    }

    private fun renderRawLumaResidualPass(
        target: RenderTarget,
        lutLuminanceGainTexture: Int,
        sdrTexture: Int,
        hdrTexture: Int,
        minGainRatio: Float,
        maxGainRatio: Float,
        strength: Float,
    ) {
        GLES30.glUseProgram(rawLumaResidualProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebufferId)
        GLES30.glViewport(0, 0, target.width, target.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, lutLuminanceGainTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rawLumaResidualProgram, "uLutLuminanceGainTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sdrTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rawLumaResidualProgram, "uSdrTexture"), 1)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE2)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdrTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(rawLumaResidualProgram, "uHdrTexture"), 2)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rawLumaResidualProgram, "uMinGainRatio"),
            minGainRatio,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(rawLumaResidualProgram, "uMaxGainRatio"),
            maxGainRatio,
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(rawLumaResidualProgram, "uOffset"), EPSILON)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(rawLumaResidualProgram, "uStrength"), strength)
        drawQuad(rawLumaResidualProgram)
        checkGlError("renderRawLumaResidualPass")
    }

    private fun downsampleDimension(value: Int, downsample: Int): Int {
        val safeDownsample = downsample.coerceAtLeast(1)
        return ((value + safeDownsample - 1) / safeDownsample).coerceAtLeast(1)
    }

    private fun readAlphaBitmap(width: Int, height: Int): Bitmap? {
        val rgba = LargeDirectBuffer.allocate(width.toLong() * height.toLong() * 4L, "gainmap alpha readback")
            ?: return null
        try {
            GLES30.glReadPixels(0, 0, width, height, GLES30.GL_RGBA, GLES30.GL_UNSIGNED_BYTE, rgba)
            checkGlError("readAlphaBitmap")
            rgba.position(0)

            val alpha = ByteArray(width * height)
            for (y in 0 until height) {
                val srcRow = height - 1 - y
                val srcOffset = srcRow * width * 4
                val dstOffset = y * width
                for (x in 0 until width) {
                    alpha[dstOffset + x] = rgba.get(srcOffset + x * 4)
                }
            }
            return Bitmap.createBitmap(width, height, Bitmap.Config.ALPHA_8).also {
                it.copyPixelsFromBuffer(ByteBuffer.wrap(alpha))
            }
        } finally {
            LargeDirectBuffer.free(rgba)
        }
    }

    private fun uploadBitmapTexture(bitmap: Bitmap): Int {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        if (bitmap.config == Bitmap.Config.RGBA_F16) {
            uploadHalfFloatBitmap(bitmap)
        } else {
            GLUtils.texImage2D(GLES30.GL_TEXTURE_2D, 0, bitmap, 0)
        }
        checkGlError("uploadBitmapTexture")
        return textures[0]
    }

    private fun uploadHalfFloatBitmap(bitmap: Bitmap) {
        val byteCount = bitmap.byteCount.toLong()
        val buffer = LargeDirectBuffer.allocate(byteCount, "gainmap RGBA_F16 upload")
            ?: throw OutOfMemoryError("Failed to allocate ${byteCount}B for RGBA_F16 upload")
        try {
            bitmap.copyPixelsToBuffer(buffer)
            buffer.position(0)
            GLES30.glTexImage2D(
                GLES30.GL_TEXTURE_2D,
                0,
                GLES30.GL_RGBA16F,
                bitmap.width,
                bitmap.height,
                0,
                GLES30.GL_RGBA,
                GLES30.GL_HALF_FLOAT,
                buffer
            )
        } finally {
            LargeDirectBuffer.free(buffer)
        }
    }

    private fun prepareUploadBitmap(bitmap: Bitmap): UploadBitmap {
        if (!bitmap.isRecycled && (bitmap.config == Bitmap.Config.ARGB_8888 || bitmap.config == Bitmap.Config.RGBA_F16)) {
            return UploadBitmap(bitmap, isTemporary = false)
        }
        bitmap.copy(Bitmap.Config.ARGB_8888, false)?.let {
            return UploadBitmap(it, isTemporary = true)
        }

        val converted = Bitmap.createBitmap(bitmap.width, bitmap.height, Bitmap.Config.ARGB_8888)
        Canvas(converted).drawBitmap(bitmap, 0f, 0f, null)
        return UploadBitmap(converted, isTemporary = true)
    }

    private fun createRenderTarget(width: Int, height: Int): RenderTarget {
        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textures[0])
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA8,
            width,
            height,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_UNSIGNED_BYTE,
            null
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, framebuffers[0])
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            textures[0],
            0
        )
        checkGlError("createRenderTarget")
        return RenderTarget(width, height, textures[0], framebuffers[0])
    }

    private fun ensureInitialized(): Boolean {
        if (isInitialized) return true
        eglDisplay = EGL14.eglGetDisplay(EGL14.EGL_DEFAULT_DISPLAY)
        if (eglDisplay == EGL14.EGL_NO_DISPLAY) return false
        val version = IntArray(2)
        if (!EGL14.eglInitialize(eglDisplay, version, 0, version, 1)) return false
        val configAttribs = intArrayOf(
            EGL14.EGL_RENDERABLE_TYPE, EGL14.EGL_OPENGL_ES2_BIT,
            EGL14.EGL_RED_SIZE, 8,
            EGL14.EGL_GREEN_SIZE, 8,
            EGL14.EGL_BLUE_SIZE, 8,
            EGL14.EGL_ALPHA_SIZE, 8,
            EGL14.EGL_SURFACE_TYPE, EGL14.EGL_PBUFFER_BIT,
            EGL14.EGL_NONE
        )
        val configs = arrayOfNulls<EGLConfig>(1)
        val numConfigs = IntArray(1)
        if (!EGL14.eglChooseConfig(eglDisplay, configAttribs, 0, configs, 0, 1, numConfigs, 0)) return false
        val eglConfig = configs[0] ?: return false
        eglContext = EGL14.eglCreateContext(
            eglDisplay,
            eglConfig,
            EGL14.EGL_NO_CONTEXT,
            intArrayOf(EGL14.EGL_CONTEXT_CLIENT_VERSION, 3, EGL14.EGL_NONE),
            0
        )
        if (eglContext == EGL14.EGL_NO_CONTEXT) return false
        eglSurface = EGL14.eglCreatePbufferSurface(
            eglDisplay,
            eglConfig,
            intArrayOf(EGL14.EGL_WIDTH, 1, EGL14.EGL_HEIGHT, 1, EGL14.EGL_NONE),
            0
        )
        if (eglSurface == EGL14.EGL_NO_SURFACE) return false
        if (!EGL14.eglMakeCurrent(eglDisplay, eglSurface, eglSurface, eglContext)) return false

        initBuffers()
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, VERTEX_SHADER)
        rawLumaResidualProgram = linkProgram(
            vertexShader,
            RAW_LUMA_RESIDUAL_FRAGMENT_SHADER,
            "rawLumaResidual",
        )
        GLES30.glDeleteShader(vertexShader)
        isInitialized = rawLumaResidualProgram != 0
        return isInitialized
    }

    private fun initBuffers() {
        vertexBuffer = ByteBuffer.allocateDirect(VERTICES.size * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().apply {
            put(VERTICES)
            position(0)
        }
        texCoordBuffer = ByteBuffer.allocateDirect(TEX_COORDS.size * 4).order(ByteOrder.nativeOrder()).asFloatBuffer().apply {
            put(TEX_COORDS)
            position(0)
        }
        indexBuffer = ByteBuffer.allocateDirect(DRAW_ORDER.size * 2).order(ByteOrder.nativeOrder()).asShortBuffer().apply {
            put(DRAW_ORDER)
            position(0)
        }
    }

    private fun drawQuad(program: Int) {
        val positionHandle = GLES30.glGetAttribLocation(program, "aPosition")
        val texCoordHandle = GLES30.glGetAttribLocation(program, "aTexCoord")
        vertexBuffer?.let {
            it.position(0)
            GLES30.glEnableVertexAttribArray(positionHandle)
            GLES30.glVertexAttribPointer(positionHandle, 2, GLES30.GL_FLOAT, false, 0, it)
        }
        texCoordBuffer?.let {
            it.position(0)
            GLES30.glEnableVertexAttribArray(texCoordHandle)
            GLES30.glVertexAttribPointer(texCoordHandle, 2, GLES30.GL_FLOAT, false, 0, it)
        }
        indexBuffer?.let {
            it.position(0)
            GLES30.glDrawElements(GLES30.GL_TRIANGLES, DRAW_ORDER.size, GLES30.GL_UNSIGNED_SHORT, it)
        }
        if (positionHandle >= 0) GLES30.glDisableVertexAttribArray(positionHandle)
        if (texCoordHandle >= 0) GLES30.glDisableVertexAttribArray(texCoordHandle)
    }

    private fun compileShader(type: Int, source: String): Int {
        val shader = GLES30.glCreateShader(type)
        GLES30.glShaderSource(shader, source)
        GLES30.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES30.glGetShaderiv(shader, GLES30.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            PLog.e(TAG, "Shader compile failed: ${GLES30.glGetShaderInfoLog(shader)}")
            GLES30.glDeleteShader(shader)
            return 0
        }
        return shader
    }

    private fun linkProgram(vertexShader: Int, fragmentSource: String, name: String): Int {
        val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource)
        if (vertexShader == 0 || fragmentShader == 0) return 0
        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vertexShader)
        GLES30.glAttachShader(program, fragmentShader)
        GLES30.glLinkProgram(program)
        GLES30.glDeleteShader(fragmentShader)
        val linked = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
        if (linked[0] == 0) {
            PLog.e(TAG, "$name link failed: ${GLES30.glGetProgramInfoLog(program)}")
            GLES30.glDeleteProgram(program)
            return 0
        }
        return program
    }

    private fun checkGlError(label: String) {
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            throw IllegalStateException("$label GL error: 0x${Integer.toHexString(error)}")
        }
    }

    private data class Config(
        val minGainRatio: Float,
        val maxGainRatio: Float,
        val defaultFullHdrRatio: Float,
        val minFullHdrRatio: Float = 1.0f,
        val minDisplayRatioForHdrTransition: Float = 1.0f,
        val downsample: Int,
    )

    private data class RenderTarget(
        val width: Int,
        val height: Int,
        val textureId: Int,
        val framebufferId: Int,
    ) {
        fun release() {
            GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
            GLES30.glDeleteFramebuffers(1, intArrayOf(framebufferId), 0)
        }
    }

    private data class UploadBitmap(
        val bitmap: Bitmap,
        val isTemporary: Boolean,
    ) {
        fun recycleIfTemporary() {
            if (isTemporary && !bitmap.isRecycled) {
                bitmap.recycle()
            }
        }
    }

    companion object {
        private const val TAG = "GpuReferenceGainmapProducer"
        private const val RAW_DOWNSAMPLE = RawGainmapMath.DOWNSAMPLE
        private const val RAW_MIN_GAIN_RATIO = RawGainmapMath.MIN_GAIN_RATIO
        private const val RAW_MAX_GAIN_RATIO = RawGainmapMath.MAX_GAIN_RATIO
        private const val RAW_LOW_SCENE_MAX_GAIN_RATIO = 1.6033f
        private const val EPSILON = RawGainmapMath.OFFSET
        private val RAW_CONFIG = Config(
            minGainRatio = RAW_MIN_GAIN_RATIO,
            maxGainRatio = RAW_MAX_GAIN_RATIO,
            defaultFullHdrRatio = RAW_LOW_SCENE_MAX_GAIN_RATIO,
            downsample = RAW_DOWNSAMPLE,
        )
        private val VERTICES = floatArrayOf(-1f, -1f, 1f, -1f, -1f, 1f, 1f, 1f)
        private val TEX_COORDS = floatArrayOf(0f, 1f, 1f, 1f, 0f, 0f, 1f, 0f)
        private val DRAW_ORDER = shortArrayOf(0, 1, 2, 1, 3, 2)

        private val VERTEX_SHADER = """
            #version 300 es
            in vec2 aPosition;
            in vec2 aTexCoord;
            out vec2 vTexCoord;
            void main() {
                gl_Position = vec4(aPosition, 0.0, 1.0);
                vTexCoord = aTexCoord;
            }
        """.trimIndent()

        /**
         * RAW path: consume the LUT stack's linear-light luminance sidecar, transfer it onto the
         * 0..1 base of the linear-sRGB HDR reference, preserve the >1 headroom, and encode one
         * shared gain. Playback retains both LUT color and LUT luminance rendering.
         */
        private val RAW_LUMA_RESIDUAL_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uLutLuminanceGainTexture;
            uniform sampler2D uSdrTexture;
            uniform sampler2D uHdrTexture;
            uniform float uMinGainRatio;
            uniform float uMaxGainRatio;
            uniform float uOffset;
            uniform float uStrength;

            float srgbToLinear(float value) {
                float safeValue = max(value, 0.0);
                return safeValue <= 0.04045
                    ? safeValue / 12.92
                    : pow((safeValue + 0.055) / 1.055, 2.4);
            }

            vec3 srgbToLinear(vec3 value) {
                return vec3(
                    srgbToLinear(value.r),
                    srgbToLinear(value.g),
                    srgbToLinear(value.b)
                );
            }

            void main() {
                vec3 sdrLinear = srgbToLinear(texture(uSdrTexture, vTexCoord).rgb);
                vec3 hdrLinear = max(texture(uHdrTexture, vTexCoord).rgb, vec3(0.0));
                const vec3 LINEAR_SRGB_LUMA = vec3(0.2126, 0.7152, 0.0722);
                float sdrLuma = max(dot(sdrLinear, LINEAR_SRGB_LUMA), 0.0);
                float hdrLuma = max(dot(hdrLinear, LINEAR_SRGB_LUMA), 0.0);
                float lutLumaGain = max(
                    texture(uLutLuminanceGainTexture, vTexCoord).r,
                    0.0
                );
                float hdrBaseLuma = min(hdrLuma, 1.0);
                float hdrHeadroomLuma = max(hdrLuma - 1.0, 0.0);
                float lutAdjustedHdrBaseLuma = max(
                    (hdrBaseLuma + uOffset) * lutLumaGain - uOffset,
                    0.0
                );
                float targetHdrLuma = lutAdjustedHdrBaseLuma + hdrHeadroomLuma;
                float ratio = clamp(
                    (targetHdrLuma + uOffset) / (sdrLuma + uOffset),
                    uMinGainRatio,
                    uMaxGainRatio
                );

                float normalizedStrength = clamp(uStrength, 0.25, 2.0);
                float strengthRatio = clamp(
                    1.0 + (ratio - 1.0) * normalizedStrength,
                    uMinGainRatio,
                    uMaxGainRatio
                );
                float gainEv = log2(strengthRatio);
                float minGainEv = log2(uMinGainRatio);
                float maxGainEv = log2(uMaxGainRatio);
                float normalized = (gainEv - minGainEv) / (maxGainEv - minGainEv);
                fragColor = vec4(vec3(clamp(normalized, 0.0, 1.0)), 1.0);
            }
        """.trimIndent()

    }
}
