package com.hinnka.mycamera.hdr

import android.graphics.Bitmap
import android.graphics.Canvas
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
import kotlin.math.pow
import kotlin.system.measureTimeMillis

class GpuReferenceGainmapProducer : GainmapProducer {
    private val dispatcher = Executors.newSingleThreadExecutor { runnable ->
        Thread(runnable, "GpuReferenceGainmapProducer-GL").apply { isDaemon = true }
    }.asCoroutineDispatcher()

    private var eglDisplay: EGLDisplay = EGL14.EGL_NO_DISPLAY
    private var eglContext: EGLContext = EGL14.EGL_NO_CONTEXT
    private var eglSurface: EGLSurface = EGL14.EGL_NO_SURFACE
    private var computeProgram = 0
    private var blurHProgram = 0
    private var blurVProgram = 0
    private var vertexBuffer: FloatBuffer? = null
    private var texCoordBuffer: FloatBuffer? = null
    private var indexBuffer: ShortBuffer? = null
    private var isInitialized = false

    override suspend fun build(source: GainmapSourceSet, strength: Float): GainmapResult? = withContext(dispatcher) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.UPSIDE_DOWN_CAKE) return@withContext null
        val config = configFor(source.sourceKind) ?: return@withContext null
        val hdrReference = source.hdrReference?.bitmap
        val sdrBase = source.sdrBase
        if (sdrBase.width <= 0 || sdrBase.height <= 0) {
            return@withContext null
        }
        if (config.requiresHdrReference && (hdrReference == null || hdrReference.width <= 0 || hdrReference.height <= 0)) {
            return@withContext null
        }
        if (!ensureInitialized()) return@withContext null

        var result: GainmapResult? = null
        val elapsed = measureTimeMillis {
            result = runCatching {
                renderGainmap(source, sdrBase, hdrReference, config, strength)
            }.onFailure {
                PLog.e(TAG, "GPU gainmap failed for ${source.sourceKind}", it)
            }.getOrNull()
        }
        PLog.d(TAG, "GPU gainmap build took ${elapsed}ms, source=${source.sourceKind}, success=${result != null}")
        result
    }

    @RequiresApi(Build.VERSION_CODES.UPSIDE_DOWN_CAKE)
    private fun renderGainmap(
        source: GainmapSourceSet,
        sdrBase: Bitmap,
        hdrReference: Bitmap?,
        config: Config,
        strength: Float,
    ): GainmapResult? {
        val width = downsampleDimension(sdrBase.width, config.downsample)
        val height = downsampleDimension(sdrBase.height, config.downsample)
        val maxGainRatio = resolveMaxGainRatio(source.sourceKind, hdrReference, config)
        val defaultFullHdrRatio = if (source.sourceKind == SourceKind.RAW) maxGainRatio else config.defaultFullHdrRatio
        val fullHdrRatio = (source.displayHdrSdrRatio.takeIf { it > 1f } ?: defaultFullHdrRatio)
            .coerceAtLeast(config.minFullHdrRatio)
            .coerceAtMost(maxGainRatio)

        val sdrUpload = prepareUploadBitmap(sdrBase)
        if (hdrReference != null && (hdrReference.width != sdrBase.width || hdrReference.height != sdrBase.height)) {
            PLog.w(
                TAG,
                "HDR reference size differs from SDR base: " +
                    "source=${source.sourceKind}, sdr=${sdrBase.width}x${sdrBase.height}, " +
                    "hdr=${hdrReference.width}x${hdrReference.height}; sampling will use normalized UV"
            )
        }
        val hdrUpload = hdrReference?.let { prepareUploadBitmap(it) }
        val sdrTexture = uploadBitmapTexture(sdrUpload.bitmap)
        val hdrTexture = hdrUpload?.let { uploadBitmapTexture(it.bitmap) } ?: sdrTexture
        val computeTarget = createRenderTarget(width, height)
        val blurTarget = createRenderTarget(width, height)
        val finalTarget = createRenderTarget(width, height)

        try {
            renderComputePass(
                target = computeTarget,
                sdrTexture = sdrTexture,
                hdrTexture = hdrTexture,
                config = config,
                fullHdrRatio = fullHdrRatio,
                maxGainRatio = maxGainRatio,
                strength = strength,
            )
            renderBlurPass(
                program = blurHProgram,
                target = blurTarget,
                inputTexture = computeTarget.textureId,
                width = width,
                height = height,
            )
            renderBlurPass(
                program = blurVProgram,
                target = finalTarget,
                inputTexture = blurTarget.textureId,
                width = width,
                height = height,
            )

            val gainmapBitmap = readAlphaBitmap(width, height) ?: return null
            val gainmap = Gainmap(gainmapBitmap).apply {
                setRatioMin(config.minGainRatio, config.minGainRatio, config.minGainRatio)
                setRatioMax(maxGainRatio, maxGainRatio, maxGainRatio)
                setGamma(1.0f, 1.0f, 1.0f)
                setEpsilonSdr(EPSILON, EPSILON, EPSILON)
                setEpsilonHdr(EPSILON, EPSILON, EPSILON)
                setMinDisplayRatioForHdrTransition(config.minDisplayRatioForHdrTransition)
                setDisplayRatioForFullHdr(fullHdrRatio)
            }
            return GainmapResult(gainmap, source.sourceKind, source.confidence)
        } finally {
            GLES30.glDeleteTextures(1, intArrayOf(sdrTexture), 0)
            if (hdrTexture != sdrTexture) {
                GLES30.glDeleteTextures(1, intArrayOf(hdrTexture), 0)
            }
            computeTarget.release()
            blurTarget.release()
            finalTarget.release()
            sdrUpload.recycleIfTemporary()
            hdrUpload?.recycleIfTemporary()
        }
    }

    private fun downsampleDimension(value: Int, downsample: Int): Int {
        val safeDownsample = downsample.coerceAtLeast(1)
        return ((value + safeDownsample - 1) / safeDownsample).coerceAtLeast(1)
    }

    private fun renderComputePass(
        target: RenderTarget,
        sdrTexture: Int,
        hdrTexture: Int,
        config: Config,
        fullHdrRatio: Float,
        maxGainRatio: Float,
        strength: Float,
    ) {
        GLES30.glUseProgram(computeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebufferId)
        GLES30.glViewport(0, 0, target.width, target.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)

        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sdrTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(computeProgram, "uSdrTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE1)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdrTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(computeProgram, "uHdrTexture"), 1)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uFullHdrRatio"), fullHdrRatio)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uMinGainRatio"), config.minGainRatio)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uMaxGainRatio"), maxGainRatio)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uStrength"), strength)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(computeProgram, "uLocalContrastTexelSize"),
            1f / target.width.toFloat(),
            1f / target.height.toFloat()
        )
        GLES30.glUniform1i(GLES30.glGetUniformLocation(computeProgram, "uHasHdrReference"), if (config.requiresHdrReference) 1 else 0)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uBaseSceneLift"), config.baseSceneLift)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uGlobalSceneLift"), config.globalSceneLift)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uShoulderSceneLift"), config.shoulderSceneLift)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uGlobalStart"), config.globalStart)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uGlobalEnd"), config.globalEnd)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uGlobalPower"), config.globalPower)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uDarkStart"), config.darkStart)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uDarkEnd"), config.darkEnd)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uShoulderStart"), config.shoulderStart)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uShoulderEnd"), config.shoulderEnd)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uShoulderPower"), config.shoulderPower)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uSaturationPenalty"), config.saturationPenalty)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceSceneStart"), config.referenceSceneStart)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceSceneEnd"), config.referenceSceneEnd)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceScenePower"), config.referenceScenePower)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceSceneWeight"), config.referenceSceneWeight)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(computeProgram, "uReferenceSaturationPenalty"),
            config.referenceSaturationPenalty
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceTonalStart"), config.referenceTonalStart)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceTonalEnd"), config.referenceTonalEnd)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceHdrStart"), config.referenceHdrStart)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceHdrEnd"), config.referenceHdrEnd)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceDeltaStart"), config.referenceDeltaStart)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceDeltaEnd"), config.referenceDeltaEnd)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceHdrWeight"), config.referenceHdrWeight)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceDeltaWeight"), config.referenceDeltaWeight)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uReferenceExtraScale"), config.referenceExtraScale)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(computeProgram, "uReferenceDisplayMapWeight"),
            config.referenceDisplayMapWeight
        )
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uNonBlackFloorLowEv"), config.nonBlackFloorLowEv)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uNonBlackFloorHighEv"), config.nonBlackFloorHighEv)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uMidtoneFeatureLift"), config.midtoneFeatureLift)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uDetailFeatureLift"), config.detailFeatureLift)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(computeProgram, "uBlueSkySuppression"), config.blueSkySuppression)
        drawQuad(computeProgram)
        checkGlError("renderComputePass")
    }

    private fun renderBlurPass(program: Int, target: RenderTarget, inputTexture: Int, width: Int, height: Int) {
        GLES30.glUseProgram(program)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, target.framebufferId)
        GLES30.glViewport(0, 0, target.width, target.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, inputTexture)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(program, "uInputTexture"), 0)
        GLES30.glUniform2f(GLES30.glGetUniformLocation(program, "uTexelSize"), 1f / width, 1f / height)
        drawQuad(program)
        checkGlError("renderBlurPass")
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
            GLES30.GL_RGBA,
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
        computeProgram = linkProgram(vertexShader, GAINMAP_FRAGMENT_SHADER, "gainmapCompute")
        blurHProgram = linkProgram(vertexShader, BLUR_H_FRAGMENT_SHADER, "gainmapBlurH")
        blurVProgram = linkProgram(vertexShader, BLUR_V_FRAGMENT_SHADER, "gainmapBlurV")
        GLES30.glDeleteShader(vertexShader)
        isInitialized = computeProgram != 0 && blurHProgram != 0 && blurVProgram != 0
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

    private fun resolveMaxGainRatio(sourceKind: SourceKind, hdrReference: Bitmap?, config: Config): Float {
        if (sourceKind != SourceKind.RAW) return config.maxGainRatio
        return estimateRawMaxGainRatio(hdrReference, config.maxGainRatio)
    }

    private fun estimateRawMaxGainRatio(hdrReference: Bitmap?, upperBound: Float): Float {
        val bitmap = hdrReference ?: return RAW_LOW_SCENE_MAX_GAIN_RATIO.coerceAtMost(upperBound)
        if (bitmap.width <= 0 || bitmap.height <= 0 || bitmap.isRecycled) {
            return RAW_LOW_SCENE_MAX_GAIN_RATIO.coerceAtMost(upperBound)
        }

        val sampleColumns = RAW_CAPACITY_SAMPLE_GRID.coerceAtMost(bitmap.width)
        val sampleRows = RAW_CAPACITY_SAMPLE_GRID.coerceAtMost(bitmap.height)
        val signals = FloatArray(sampleColumns * sampleRows)
        var count = 0
        var overWhiteCount = 0

        for (y in 0 until sampleRows) {
            val srcY = ((y + 0.5f) * bitmap.height / sampleRows).toInt().coerceIn(0, bitmap.height - 1)
            for (x in 0 until sampleColumns) {
                val srcX = ((x + 0.5f) * bitmap.width / sampleColumns).toInt().coerceIn(0, bitmap.width - 1)
                val color = bitmap.getColor(srcX, srcY)
                val r = color.red().coerceAtLeast(0f)
                val g = color.green().coerceAtLeast(0f)
                val b = color.blue().coerceAtLeast(0f)
                val luma = 0.2627f * r + 0.6780f * g + 0.0593f * b
                val signal = maxOf(luma, r, g, b)
                signals[count++] = signal
                if (signal > RAW_REFERENCE_WHITE) overWhiteCount++
            }
        }

        if (count == 0) return RAW_LOW_SCENE_MAX_GAIN_RATIO.coerceAtMost(upperBound)
        java.util.Arrays.sort(signals, 0, count)
        val p90 = percentile(signals, count, 0.90f)
        val p995 = percentile(signals, count, 0.995f)
        val overWhiteFraction = overWhiteCount.toFloat() / count.toFloat()

        val coverageWeight = gainmapSmoothstep(
            RAW_HIGH_COVERAGE_START,
            RAW_HIGH_COVERAGE_END,
            overWhiteFraction
        )
        val headroomWeight = gainmapSmoothstep(1.0f, RAW_HIGH_CAPACITY_P995, p995)
        val contrastWeight = gainmapSmoothstep(0.08f, 0.55f, p995 - p90)
        val highSceneWeight = (coverageWeight * maxOf(headroomWeight, contrastWeight * 0.35f))
            .coerceIn(0f, 1f)
        val capacityEv = RAW_LOW_SCENE_GAIN_EV +
            (RAW_HIGH_SCENE_GAIN_EV - RAW_LOW_SCENE_GAIN_EV) * highSceneWeight
        val ratio = 2.0.pow(capacityEv.toDouble()).toFloat()
        PLog.d(
            TAG,
            "RAW gainmap capacity fit: overWhite=$overWhiteFraction, p90=$p90, p995=$p995, weight=$highSceneWeight, ratio=$ratio"
        )
        return ratio.coerceIn(RAW_LOW_SCENE_MAX_GAIN_RATIO, upperBound)
    }

    private fun percentile(sortedValues: FloatArray, count: Int, percentile: Float): Float {
        if (count <= 0) return 0f
        val index = ((count - 1) * percentile).toInt().coerceIn(0, count - 1)
        return sortedValues[index]
    }

    private fun gainmapSmoothstep(edge0: Float, edge1: Float, value: Float): Float {
        if (edge0 == edge1) return if (value >= edge1) 1f else 0f
        val t = ((value - edge0) / (edge1 - edge0)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun configFor(sourceKind: SourceKind): Config? {
        return when (sourceKind) {
            SourceKind.RAW -> Config(
                maxGainRatio = RAW_HIGH_SCENE_MAX_GAIN_RATIO,
                defaultFullHdrRatio = RAW_LOW_SCENE_MAX_GAIN_RATIO,
                downsample = RAW_DOWNSAMPLE,
                requiresHdrReference = true,
                baseSceneLift = 0.035f,
                globalSceneLift = 0.16f,
                shoulderSceneLift = 0.09f,
                globalStart = 0.0f,
                globalEnd = 0.90f,
                darkStart = 0.0f,
                darkEnd = 0.08f,
                shoulderStart = 0.42f,
                shoulderEnd = 0.98f,
                shoulderPower = 1.55f,
                saturationPenalty = 0.12f,
                referenceSceneStart = 0.38f,
                referenceSceneEnd = 2.40f,
                referenceScenePower = 0.90f,
                referenceSceneWeight = 0.38f,
                referenceSaturationPenalty = 0.10f,
                referenceTonalStart = 0.05f,
                referenceTonalEnd = 0.90f,
                referenceHdrStart = 0.42f,
                referenceHdrEnd = 1.65f,
                referenceDeltaStart = 0.02f,
                referenceDeltaEnd = 0.55f,
                referenceHdrWeight = 0.35f,
                referenceDeltaWeight = 0.65f,
                referenceExtraScale = 0.76f,
                referenceDisplayMapWeight = 0.35f,
                nonBlackFloorLowEv = 0.22f,
                nonBlackFloorHighEv = 0.045f,
                midtoneFeatureLift = 0.18f,
                detailFeatureLift = 0.10f,
                blueSkySuppression = 0.50f,
            )
            SourceKind.HLG_CAPTURE -> Config(maxGainRatio = 3.5f, defaultFullHdrRatio = 1.45f, requiresHdrReference = true)
            SourceKind.SDR_BITMAP -> Config(
                maxGainRatio = 4.0f,
                defaultFullHdrRatio = 1.8f,
                minDisplayRatioForHdrTransition = 1.02f,
                requiresHdrReference = false,
            )
        }
    }

    private data class Config(
        val minGainRatio: Float = 1.0f,
        val maxGainRatio: Float,
        val defaultFullHdrRatio: Float,
        val minFullHdrRatio: Float = 1.0f,
        val minDisplayRatioForHdrTransition: Float = 1.0f,
        val requiresHdrReference: Boolean,
        val downsample: Int = DOWNSAMPLE,
        val baseSceneLift: Float = 0.035f,
        val globalSceneLift: Float = 0.4f,
        val shoulderSceneLift: Float = 0.34f,
        val globalStart: Float = 0.02f,
        val globalEnd: Float = 0.96f,
        val globalPower: Float = 0.82f,
        val darkStart: Float = 0.0f,
        val darkEnd: Float = 0.02f,
        val shoulderStart: Float = 0.34f,
        val shoulderEnd: Float = 1.0f,
        val shoulderPower: Float = 1.35f,
        val saturationPenalty: Float = 0.10f,
        val referenceSceneStart: Float = 0.0f,
        val referenceSceneEnd: Float = 1.0f,
        val referenceScenePower: Float = 1.0f,
        val referenceSceneWeight: Float = 0.0f,
        val referenceSaturationPenalty: Float = 0.0f,
        val referenceTonalStart: Float = 0.05f,
        val referenceTonalEnd: Float = 0.98f,
        val referenceHdrStart: Float = 0.65f,
        val referenceHdrEnd: Float = 2.0f,
        val referenceDeltaStart: Float = 0.01f,
        val referenceDeltaEnd: Float = 0.28f,
        val referenceHdrWeight: Float = 0.35f,
        val referenceDeltaWeight: Float = 0.65f,
        val referenceExtraScale: Float = 0.82f,
        val referenceDisplayMapWeight: Float = 1.0f,
        val nonBlackFloorLowEv: Float = 0.0f,
        val nonBlackFloorHighEv: Float = 0.0f,
        val midtoneFeatureLift: Float = 0.0f,
        val detailFeatureLift: Float = 0.0f,
        val blueSkySuppression: Float = 0.0f,
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
        private const val DOWNSAMPLE = 4
        private const val RAW_DOWNSAMPLE = 2
        private const val RAW_CAPACITY_SAMPLE_GRID = 48
        private const val RAW_REFERENCE_WHITE = 1.0f
        // Fitted from inspected Google DNGs:
        // low scenes stay around 0.04%-0.11% over-white samples; the high-headroom scene is about 3.96%.
        private const val RAW_HIGH_COVERAGE_START = 0.002f
        private const val RAW_HIGH_COVERAGE_END = 0.035f
        private const val RAW_HIGH_CAPACITY_P995 = 1.10f
        // 2^0.681828 from low-headroom Google DNG preview gainmaps.
        private const val RAW_LOW_SCENE_GAIN_EV = 0.681828f
        private const val RAW_LOW_SCENE_MAX_GAIN_RATIO = 1.6033f
        // 2^1.941732 from the high-headroom Google DNG preview gainmap.
        private const val RAW_HIGH_SCENE_GAIN_EV = 1.941732f
        private const val RAW_HIGH_SCENE_MAX_GAIN_RATIO = 3.8417f
        private const val EPSILON = 1e-4f
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

        private val GAINMAP_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            in vec2 vTexCoord;
            out vec4 fragColor;
            uniform sampler2D uSdrTexture;
            uniform sampler2D uHdrTexture;
            uniform float uFullHdrRatio;
            uniform float uMinGainRatio;
            uniform float uMaxGainRatio;
            uniform float uStrength;
            uniform vec2 uLocalContrastTexelSize;
            uniform int uHasHdrReference;
            uniform float uBaseSceneLift;
            uniform float uGlobalSceneLift;
            uniform float uShoulderSceneLift;
            uniform float uGlobalStart;
            uniform float uGlobalEnd;
            uniform float uGlobalPower;
            uniform float uDarkStart;
            uniform float uDarkEnd;
            uniform float uShoulderStart;
            uniform float uShoulderEnd;
            uniform float uShoulderPower;
            uniform float uSaturationPenalty;
            uniform float uReferenceSceneStart;
            uniform float uReferenceSceneEnd;
            uniform float uReferenceScenePower;
            uniform float uReferenceSceneWeight;
            uniform float uReferenceSaturationPenalty;
            uniform float uReferenceTonalStart;
            uniform float uReferenceTonalEnd;
            uniform float uReferenceHdrStart;
            uniform float uReferenceHdrEnd;
            uniform float uReferenceDeltaStart;
            uniform float uReferenceDeltaEnd;
            uniform float uReferenceHdrWeight;
            uniform float uReferenceDeltaWeight;
            uniform float uReferenceExtraScale;
            uniform float uReferenceDisplayMapWeight;
            uniform float uNonBlackFloorLowEv;
            uniform float uNonBlackFloorHighEv;
            uniform float uMidtoneFeatureLift;
            uniform float uDetailFeatureLift;
            uniform float uBlueSkySuppression;

            float srgbToLinear(float value) {
                return value <= 0.04045 ? value / 12.92 : pow((value + 0.055) / 1.055, 2.4);
            }

            vec3 srgbToLinear(vec3 value) {
                return vec3(
                    srgbToLinear(value.r),
                    srgbToLinear(value.g),
                    srgbToLinear(value.b)
                );
            }

            float sdrLumaAt(vec2 uv) {
                vec3 linearRgb = srgbToLinear(texture(uSdrTexture, clamp(uv, vec2(0.0), vec2(1.0))).rgb);
                return max(dot(linearRgb, vec3(0.2126, 0.7152, 0.0722)), 0.0);
            }

            float gainmapSmoothstep(float edge0, float edge1, float x) {
                float t = clamp((x - edge0) / (edge1 - edge0), 0.0, 1.0);
                return t * t * (3.0 - 2.0 * t);
            }

            float localLumaContrast(vec2 uv, float centerLuma) {
                vec2 texel = max(uLocalContrastTexelSize, vec2(0.000001));
                float left = sdrLumaAt(uv - vec2(texel.x, 0.0));
                float right = sdrLumaAt(uv + vec2(texel.x, 0.0));
                float up = sdrLumaAt(uv - vec2(0.0, texel.y));
                float down = sdrLumaAt(uv + vec2(0.0, texel.y));
                float averageDelta = (
                    abs(left - centerLuma) +
                    abs(right - centerLuma) +
                    abs(up - centerLuma) +
                    abs(down - centerLuma)
                ) * 0.25;
                return clamp(averageDelta / max(centerLuma + 0.05, 0.08), 0.0, 1.0);
            }

            float displayLuma(float sceneLuma, float fullHdrRatio) {
                float effectiveHeadroom = clamp(fullHdrRatio, 1.15, 3.2);
                if (sceneLuma <= 1.0) return max(sceneLuma, 0.0);
                float systemGamma = clamp(1.03 + (effectiveHeadroom - 1.0) * 0.16, 1.0, 1.25);
                float normalized = pow(max(sceneLuma, 0.0), systemGamma);
                float aboveWhite = max(normalized - 1.0, 0.0);
                float compressedBoost = 1.0 - exp(-aboveWhite * 0.85);
                return 1.0 + (effectiveHeadroom - 1.0) * compressedBoost;
            }

            void main() {
                vec3 sdrEncoded = texture(uSdrTexture, vTexCoord).rgb;
                vec3 sdr = srgbToLinear(sdrEncoded);
                float sdrLuma = max(dot(sdr, vec3(0.2126, 0.7152, 0.0722)), 0.0);
                float maxChannel = max(sdr.r, max(sdr.g, sdr.b));
                float minChannel = min(sdr.r, min(sdr.g, sdr.b));
                float saturation = maxChannel <= 0.0001 ? 0.0 : clamp((maxChannel - minChannel) / maxChannel, 0.0, 1.0);
                float localContrast = localLumaContrast(vTexCoord, sdrLuma);

                float displayHeadroom = clamp(uFullHdrRatio, 1.1, uMaxGainRatio);
                float tonalPosition = max(sdrLuma * 0.72 + maxChannel * 0.28, 0.0);
                float globalRamp = pow(gainmapSmoothstep(uGlobalStart, uGlobalEnd, tonalPosition), uGlobalPower);
                float shoulderRamp = pow(gainmapSmoothstep(uShoulderStart, uShoulderEnd, maxChannel), uShoulderPower);
                float chromaPenalty = 1.0 - saturation * uSaturationPenalty;
                float darkGate = gainmapSmoothstep(uDarkStart, uDarkEnd, tonalPosition);
                float blueDominance = clamp((sdr.b - max(sdr.r, sdr.g)) / max(maxChannel, 0.0001), 0.0, 1.0);
                float lowContrastWeight = 1.0 - gainmapSmoothstep(0.025, 0.12, localContrast);
                float blueSkyMask = clamp(
                    gainmapSmoothstep(0.32, 0.74, saturation) *
                    gainmapSmoothstep(0.08, 0.30, blueDominance) *
                    gainmapSmoothstep(0.12, 0.62, tonalPosition) *
                    lowContrastWeight *
                    (1.0 - gainmapSmoothstep(0.84, 1.0, minChannel)),
                    0.0,
                    1.0
                );
                float neutralDetailMask = clamp(
                    (1.0 - gainmapSmoothstep(0.28, 0.68, saturation)) *
                    gainmapSmoothstep(0.20, 0.78, tonalPosition) *
                    gainmapSmoothstep(0.025, 0.14, localContrast),
                    0.0,
                    1.0
                );
                float midtoneLiftMask = clamp(
                    gainmapSmoothstep(0.08, 0.30, tonalPosition) *
                    (1.0 - gainmapSmoothstep(0.78, 0.96, maxChannel)) *
                    (1.0 - gainmapSmoothstep(0.45, 0.82, saturation)) *
                    (1.0 - blueSkyMask),
                    0.0,
                    1.0
                );
                float featureLiftScale = 1.0 +
                    uMidtoneFeatureLift * midtoneLiftMask +
                    uDetailFeatureLift * neutralDetailMask;
                float skyProtection = 1.0 - clamp(uBlueSkySuppression, 0.0, 0.95) * blueSkyMask;
                float lift = (uBaseSceneLift + uGlobalSceneLift * globalRamp + uShoulderSceneLift * shoulderRamp) *
                    chromaPenalty * darkGate * featureLiftScale * skyProtection;
                float toneRatio = clamp(1.0 + (displayHeadroom - 1.0) * lift, 1.0, uMaxGainRatio);
                float lowHeadroomWeight = 1.0 - gainmapSmoothstep(1.80, 3.20, displayHeadroom);
                float nonBlackFloorEv = mix(
                    max(uNonBlackFloorHighEv, 0.0),
                    max(uNonBlackFloorLowEv, 0.0),
                    lowHeadroomWeight
                );
                float nonBlackGate = gainmapSmoothstep(0.004, 0.030, tonalPosition);
                float floorSkyProtection = mix(1.0, skyProtection, 0.60);
                float nonBlackFloorRatio = exp(log(2.0) * nonBlackFloorEv * nonBlackGate * floorSkyProtection);
                toneRatio = max(toneRatio, clamp(nonBlackFloorRatio, 1.0, uMaxGainRatio));

                float targetRatio = toneRatio;
                if (uHasHdrReference == 1) {
                    vec3 hdr = max(texture(uHdrTexture, vTexCoord).rgb, vec3(0.0));
                    float hdrSceneLuma = max(dot(hdr, vec3(0.2627, 0.6780, 0.0593)), 0.0);
                    float hdrMaxChannel = max(hdr.r, max(hdr.g, hdr.b));
                    float hdrMinChannel = min(hdr.r, min(hdr.g, hdr.b));
                    float hdrSaturation = hdrMaxChannel <= 0.0001 ? 0.0 : clamp((hdrMaxChannel - hdrMinChannel) / hdrMaxChannel, 0.0, 1.0);
                    float hdrDisplayLuma = displayLuma(hdrSceneLuma, uFullHdrRatio);
                    float hdrMappedLuma = mix(
                        hdrSceneLuma,
                        hdrDisplayLuma,
                        clamp(uReferenceDisplayMapWeight, 0.0, 1.0)
                    );
                    float referenceRatio = clamp(hdrMappedLuma / max(sdrLuma, 0.0001), uMinGainRatio, uMaxGainRatio);
                    float referenceWeight = clamp(
                        gainmapSmoothstep(uReferenceTonalStart, uReferenceTonalEnd, sdrLuma * 0.70 + maxChannel * 0.30) *
                        (
                            uReferenceHdrWeight * gainmapSmoothstep(uReferenceHdrStart, uReferenceHdrEnd, hdrSceneLuma) +
                            uReferenceDeltaWeight * gainmapSmoothstep(uReferenceDeltaStart, uReferenceDeltaEnd, hdrMappedLuma - sdrLuma)
                        ),
                        0.0,
                        1.0
                    );
                    referenceWeight = clamp(
                        referenceWeight * skyProtection * (1.0 + uDetailFeatureLift * 0.5 * neutralDetailMask),
                        0.0,
                        1.0
                    );
                    targetRatio = toneRatio + max(referenceRatio - toneRatio, 0.0) * referenceWeight * uReferenceExtraScale;

                    float referenceSignal = max(hdrSceneLuma, hdrMaxChannel);
                    float referenceSceneLevel = pow(
                        gainmapSmoothstep(uReferenceSceneStart, uReferenceSceneEnd, referenceSignal),
                        uReferenceScenePower
                    );
                    float referenceSceneChroma = clamp(1.0 - hdrSaturation * uReferenceSaturationPenalty, 0.0, 1.0);
                    float referenceSceneEv = log(uMaxGainRatio / uMinGainRatio) *
                        clamp(referenceSceneLevel * referenceSceneChroma * uReferenceSceneWeight * skyProtection, 0.0, 1.0);
                    float referenceSceneRatio = uMinGainRatio * exp(referenceSceneEv);
                    targetRatio = max(targetRatio, referenceSceneRatio);
                }
                targetRatio = clamp(targetRatio, uMinGainRatio, uMaxGainRatio);
                float normalizedStrength = clamp(uStrength, 0.25, 2.0);
                float strengthRatio = clamp((targetRatio - 1.0) * normalizedStrength + 1.0, uMinGainRatio, uMaxGainRatio);
                float encoded = log(strengthRatio / uMinGainRatio) / log(uMaxGainRatio / uMinGainRatio);
                fragColor = vec4(vec3(clamp(encoded, 0.0, 1.0)), 1.0);
            }
        """.trimIndent()

        private val BLUR_H_FRAGMENT_SHADER = blurShader(horizontal = true)
        private val BLUR_V_FRAGMENT_SHADER = blurShader(horizontal = false)

        private fun blurShader(horizontal: Boolean): String {
            val offset = if (horizontal) "vec2(float(i) * uTexelSize.x, 0.0)" else "vec2(0.0, float(i) * uTexelSize.y)"
            return """
                #version 300 es
                precision highp float;
                in vec2 vTexCoord;
                out vec4 fragColor;
                uniform sampler2D uInputTexture;
                uniform vec2 uTexelSize;
                void main() {
                    float sum = 0.0;
                    for (int i = -3; i <= 3; i++) {
                        sum += texture(uInputTexture, vTexCoord + $offset).r;
                    }
                    float value = sum / 7.0;
                    fragColor = vec4(vec3(value), 1.0);
                }
            """.trimIndent()
        }
    }
}
