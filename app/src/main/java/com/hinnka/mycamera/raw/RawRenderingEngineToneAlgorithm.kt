package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.util.Half
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder

internal data class RawEngineToneShaderDefinition(
    val engineUniforms: String,
    val engineFunctions: String,
    val profileUniforms: String = RawEngineTonePass.PROFILE_EXPOSURE_COMBINED_UNIFORMS,
    val profileFunctions: String = "",
    val includeAdobeProfilePipeline: Boolean = false,
)

/** Shared GLES lifecycle for one selectable rendering-engine shader. */
internal abstract class RawRenderingEngineToneAlgorithm(
    private val quad: RawFullscreenQuad,
    internal val shaderDefinition: RawEngineToneShaderDefinition,
) {
    private var program = 0
    private var hdrReferenceProgram = 0
    private var hdrBaseCurveProgram = 0
    private var hdrBaseCurveTextureId = 0
    private var hdrBaseCurveFramebufferId = 0

    private fun ensureProgram(): Int {
        if (program != 0) return program
        return quad.createProgram(
            RawEngineTonePass.fragmentShader(shaderDefinition),
            "rawEngineTone${javaClass.simpleName}",
        ).also { program = it }
    }

    private fun ensureHdrReferenceProgram(): Int {
        if (hdrReferenceProgram != 0) return hdrReferenceProgram
        return quad.createProgram(
            RawEngineTonePass.hdrReferenceFragmentShader(
                shaderDefinition = shaderDefinition,
            ),
            "rawHdrReference${javaClass.simpleName}",
        ).also { hdrReferenceProgram = it }
    }

    private fun ensureHdrBaseCurveProgram(input: RawEngineTonePass.Input): Int {
        if (hdrBaseCurveProgram != 0) return hdrBaseCurveProgram
        return quad.createProgram(
            RawEngineTonePass.hdrBaseCurveFragmentShader(
                shaderDefinition = shaderDefinition,
                isHncs = input.colorEngine.isHncs,
            ),
            "rawHdrBaseCurve${javaClass.simpleName}",
        ).also { hdrBaseCurveProgram = it }
    }

    fun render(input: RawEngineTonePass.Input): RawEngineTonePass.Output? {
        val activeProgram = ensureProgram()
        if (activeProgram == 0) return null

        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        bindSharedPipelineResources(activeProgram, input)
        // Resource binders may leave another texture unit active.
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("${javaClass.simpleName}.render")
        return RawEngineTonePass.Output(input.targetTextureId, input.width, input.height)
    }

    fun renderHdrReference(
        input: RawEngineTonePass.Input,
        sdrLinearTextureId: Int,
        coordinateInput: RawEngineTonePass.HdrCoordinateInput?,
    ): RawEngineTonePass.Output? {
        val activeProgram = ensureHdrReferenceProgram()
        if (activeProgram == 0) return null
        val curveExtension = analyzeHdrBaseCurve(input) ?: return null

        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, input.targetFramebufferId)
        GLES30.glViewport(0, 0, input.width, input.height)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + HDR_SDR_LINEAR_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sdrLinearTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uHdrSdrLinearTexture"),
            HDR_SDR_LINEAR_TEXTURE_UNIT,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + HDR_BASE_CURVE_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdrBaseCurveTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uHdrBaseCurveTexture"),
            HDR_BASE_CURVE_TEXTURE_UNIT,
        )
        bindSharedPipelineResources(activeProgram, input)
        bindHdrCoordinateInput(activeProgram, input, coordinateInput)
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHdrCurveJoinInput"),
            curveExtension.joinInput,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHdrCurveJoinOutput"),
            curveExtension.joinOutput,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHdrCurveJoinSlope"),
            curveExtension.joinSlope,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHdrCurveQuadratic"),
            curveExtension.quadraticCoefficient,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHdrCurveWhiteOutput"),
            curveExtension.whiteOutput,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHdrCurveWhiteSlope"),
            curveExtension.whiteSlope,
        )
        // Resource binders may leave another texture unit active; restore all pass inputs.
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, input.textureId)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(activeProgram, "uInputTexture"), 0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + HDR_BASE_CURVE_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdrBaseCurveTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uHdrBaseCurveTexture"),
            HDR_BASE_CURVE_TEXTURE_UNIT,
        )
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + HDR_SDR_LINEAR_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, sdrLinearTextureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(activeProgram, "uHdrSdrLinearTexture"),
            HDR_SDR_LINEAR_TEXTURE_UNIT,
        )
        if (coordinateInput != null) {
            GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + HDR_COORDINATE_TEXTURE_UNIT)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, coordinateInput.textureId)
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(activeProgram, "uHdrCoordinateTexture"),
                HDR_COORDINATE_TEXTURE_UNIT,
            )
        }
        quad.draw(activeProgram)
        RawGlesProgram.logErrors("${javaClass.simpleName}.renderHdrReference")
        return RawEngineTonePass.Output(input.targetTextureId, input.width, input.height)
    }

    private fun bindHdrCoordinateInput(
        program: Int,
        input: RawEngineTonePass.Input,
        coordinateInput: RawEngineTonePass.HdrCoordinateInput?,
    ) {
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHdrInputIsPreparedEngineRgb"),
            if (coordinateInput != null) 1 else 0,
        )
        if (coordinateInput == null) {
            // Keep the inactive sampler explicit and valid on drivers that validate every
            // declared sampler regardless of the uniform branch taken by the draw.
            GLES30.glUniform1i(
                GLES30.glGetUniformLocation(program, "uHdrCoordinateTexture"),
                0,
            )
            GLES30.glUniformMatrix3fv(
                GLES30.glGetUniformLocation(program, "uHdrCoordinateProfileToEngineTransform"),
                1,
                false,
                transpose3x3(input.profileToEngineTransform),
                0,
            )
            GLES30.glUniform1f(
                GLES30.glGetUniformLocation(program, "uHdrCoordinateExposureGain"),
                input.profileExposure.linearGain,
            )
            return
        }

        require(coordinateInput.textureId != 0) { "HDR coordinate texture is unavailable" }
        require(coordinateInput.profileToEngineTransform.size == 9) {
            "HDR coordinate transform must be 3x3"
        }
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + HDR_COORDINATE_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, coordinateInput.textureId)
        GLES30.glUniform1i(
            GLES30.glGetUniformLocation(program, "uHdrCoordinateTexture"),
            HDR_COORDINATE_TEXTURE_UNIT,
        )
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uHdrCoordinateProfileToEngineTransform"),
            1,
            false,
            transpose3x3(coordinateInput.profileToEngineTransform),
            0,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uHdrCoordinateExposureGain"),
            coordinateInput.profileExposureLinearGain
                .takeIf { it.isFinite() && it > 0f }
                ?: 1f,
        )
    }

    private fun analyzeHdrBaseCurve(
        input: RawEngineTonePass.Input,
    ): RawHdrReferenceMath.CurveExtension? {
        val activeProgram = ensureHdrBaseCurveProgram(input)
        if (activeProgram == 0 || !ensureHdrBaseCurveTarget()) return null

        GLES30.glUseProgram(activeProgram)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdrBaseCurveFramebufferId)
        GLES30.glViewport(0, 0, RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT, 1)
        GLES30.glClear(GLES30.GL_COLOR_BUFFER_BIT)
        bindSharedPipelineResources(activeProgram, input)
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(activeProgram, "uHdrEngineToLinearSrgb"),
            1,
            false,
            transpose3x3(input.outputTransform),
            0,
        )
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(activeProgram, "uHdrBaseCurveSampleCount"),
            RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT.toFloat(),
        )
        quad.bindIdentityTextureMatrix(activeProgram)
        quad.draw(activeProgram)

        val sampleCount = RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT
        val readback = ByteBuffer.allocateDirect(sampleCount * 4 * Short.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asShortBuffer()
        GLES30.glReadPixels(
            0,
            0,
            sampleCount,
            1,
            GLES30.GL_RGBA,
            GLES30.GL_HALF_FLOAT,
            readback,
        )
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(
                TAG,
                "Unable to read ${javaClass.simpleName} HDR base curve: " +
                    "glError=0x${Integer.toHexString(error)}",
            )
            return null
        }
        val measuredSamples = FloatArray(sampleCount) { index ->
            Half.toFloat(readback.get(index * 4))
        }
        val samples = RawHdrReferenceMath.sanitizeCurve(measuredSamples)
        if (!uploadHdrBaseCurve(samples)) return null
        return runCatching { RawHdrReferenceMath.solve(samples) }
            .onFailure { PLog.e(TAG, "Unable to solve ${javaClass.simpleName} HDR curve", it) }
            .getOrNull()
            ?.also { curve ->
                PLog.d(
                    TAG,
                    "RAW HDR curve engine=${input.colorEngine} " +
                        "join=${curve.joinInput}/${curve.joinOutput} " +
                        "joinSlope=${curve.joinSlope} white=${curve.whiteOutput} " +
                        "whiteSlope=${curve.whiteSlope}",
                )
            }
    }

    private fun uploadHdrBaseCurve(samples: FloatArray): Boolean {
        val upload = ByteBuffer.allocateDirect(samples.size * 4 * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
        samples.forEach { sample ->
            upload.put(sample)
            upload.put(0f)
            upload.put(0f)
            upload.put(1f)
        }
        upload.position(0)
        GLES30.glActiveTexture(GLES30.GL_TEXTURE0 + HDR_BASE_CURVE_TEXTURE_UNIT)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdrBaseCurveTextureId)
        GLES30.glTexSubImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            0,
            0,
            samples.size,
            1,
            GLES30.GL_RGBA,
            GLES30.GL_FLOAT,
            upload,
        )
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(
                TAG,
                "Unable to upload monotonic HDR base curve: " +
                    "glError=0x${Integer.toHexString(error)}",
            )
            return false
        }
        return true
    }

    private fun ensureHdrBaseCurveTarget(): Boolean {
        if (hdrBaseCurveTextureId != 0 && hdrBaseCurveFramebufferId != 0) return true

        val textures = IntArray(1)
        GLES30.glGenTextures(1, textures, 0)
        hdrBaseCurveTextureId = textures[0]
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, hdrBaseCurveTextureId)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_RGBA16F,
            RawHdrReferenceMath.BASE_CURVE_SAMPLE_COUNT,
            1,
            0,
            GLES30.GL_RGBA,
            GLES30.GL_HALF_FLOAT,
            null,
        )
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, GLES30.GL_LINEAR)
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_S,
            GLES30.GL_CLAMP_TO_EDGE,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_WRAP_T,
            GLES30.GL_CLAMP_TO_EDGE,
        )

        val framebuffers = IntArray(1)
        GLES30.glGenFramebuffers(1, framebuffers, 0)
        hdrBaseCurveFramebufferId = framebuffers[0]
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, hdrBaseCurveFramebufferId)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            hdrBaseCurveTextureId,
            0,
        )
        if (GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER) !=
            GLES30.GL_FRAMEBUFFER_COMPLETE
        ) {
            PLog.e(TAG, "Unable to create ${javaClass.simpleName} HDR base-curve target")
            releaseHdrBaseCurveTarget()
            return false
        }
        return true
    }

    private fun releaseHdrBaseCurveTarget() {
        if (hdrBaseCurveTextureId != 0) {
            GLES30.glDeleteTextures(1, intArrayOf(hdrBaseCurveTextureId), 0)
            hdrBaseCurveTextureId = 0
        }
        if (hdrBaseCurveFramebufferId != 0) {
            GLES30.glDeleteFramebuffers(1, intArrayOf(hdrBaseCurveFramebufferId), 0)
            hdrBaseCurveFramebufferId = 0
        }
    }

    private fun bindSharedPipelineResources(
        program: Int,
        input: RawEngineTonePass.Input,
    ) {
        RawToneMappingGl.bindRawToneMappingUniforms(program, input.toneMappingParameters)
        bindEngineResources(program, input)
        input.bindProfileGainTable(program)
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(program, "uGlobalUvOrigin"),
            input.globalOriginX.toFloat() / input.fullImageWidth.coerceAtLeast(1),
            input.globalOriginY.toFloat() / input.fullImageHeight.coerceAtLeast(1),
        )
        GLES30.glUniform2f(
            GLES30.glGetUniformLocation(program, "uGlobalUvScale"),
            input.width.toFloat() / input.fullImageWidth.coerceAtLeast(1),
            input.height.toFloat() / input.fullImageHeight.coerceAtLeast(1),
        )
        if (!input.colorEngine.isHncs) {
            GLES30.glUniformMatrix3fv(
                GLES30.glGetUniformLocation(program, "uOutputTransform"),
                1,
                false,
                transpose3x3(input.outputTransform),
                0,
            )
        }
        GLES30.glUniformMatrix3fv(
            GLES30.glGetUniformLocation(program, "uProfileToEngineTransform"),
            1,
            false,
            transpose3x3(input.profileToEngineTransform),
            0,
        )
        quad.bindIdentityTextureMatrix(program)
    }

    fun release() {
        if (program != 0) {
            GLES30.glDeleteProgram(program)
            program = 0
        }
        if (hdrReferenceProgram != 0) {
            GLES30.glDeleteProgram(hdrReferenceProgram)
            hdrReferenceProgram = 0
        }
        if (hdrBaseCurveProgram != 0) {
            GLES30.glDeleteProgram(hdrBaseCurveProgram)
            hdrBaseCurveProgram = 0
        }
        releaseHdrBaseCurveTarget()
        releaseEngineResources()
    }

    protected open fun bindEngineResources(
        program: Int,
        input: RawEngineTonePass.Input,
    ) {
        GLES30.glUniform1f(
            GLES30.glGetUniformLocation(program, "uProfileExposureLinearGain"),
            input.profileExposure.linearGain,
        )
    }

    protected open fun releaseEngineResources() = Unit

    private fun transpose3x3(matrix: FloatArray): FloatArray {
        require(matrix.size == 9) { "Expected a 3x3 matrix" }
        return floatArrayOf(
            matrix[0], matrix[3], matrix[6],
            matrix[1], matrix[4], matrix[7],
            matrix[2], matrix[5], matrix[8],
        )
    }

    companion object {
        // Unit 2 is reused for the separate coordinate source only by Filmic, whose engine has no
        // texture resource there. Existing engines otherwise use 0..3 and 6; PGTM uses 7.
        private const val TAG = "RawRenderingEngineToneAlgorithm"
        private const val HDR_COORDINATE_TEXTURE_UNIT = 2
        private const val HDR_BASE_CURVE_TEXTURE_UNIT = 4
        private const val HDR_SDR_LINEAR_TEXTURE_UNIT = 5
    }
}
