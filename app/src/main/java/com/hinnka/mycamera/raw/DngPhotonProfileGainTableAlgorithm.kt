package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Rect
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.lut.RawAdrcPgtmExportGl
import com.hinnka.mycamera.lut.RawAdrcPreviewLtmGl
import com.hinnka.mycamera.lut.RawAdrcPreviewStatsGl
import com.hinnka.mycamera.lut.RawAdrcPreviewTmcGl
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.max

/** Compute shaders for capture-time DNG ProfileGainTableMap preparation. */
internal object DngPhotonProfileGainTableInputShader {
    val PROFILE_INPUT = """
        #version 310 es

        layout(
            local_size_x = ${GlesComputeWorkGroup.IMAGE_TILE_SIZE},
            local_size_y = ${GlesComputeWorkGroup.IMAGE_TILE_SIZE},
            local_size_z = 1
        ) in;

        precision highp float;
        precision highp int;
        precision highp sampler2D;

        uniform sampler2D uLinearRgbTexture;
        uniform ivec2 uImageSize;
        uniform ivec4 uStatsBounds;
        uniform mat3 uColorCorrectionMatrix;
        uniform int uWarpCount;
        uniform bool uPreserveSignedRgb;

        layout(rgba32f, binding = 0) writeonly uniform highp image2D uProfileInput;
        layout(std430, binding = 1) readonly buffer WarpRectilinearBuffer {
            float warpParameters[];
        };

        vec2 warpDestinationToSource(vec2 destinationPixel) {
            vec2 sourcePixel = destinationPixel;
            for (int warpIndex = uWarpCount - 1; warpIndex >= 0; --warpIndex) {
                int offset = warpIndex * 8;
                float radial0 = warpParameters[offset];
                float radial1 = warpParameters[offset + 1];
                float radial2 = warpParameters[offset + 2];
                float radial3 = warpParameters[offset + 3];
                float tangential0 = warpParameters[offset + 4];
                float tangential1 = warpParameters[offset + 5];
                float center0 = warpParameters[offset + 6];
                float center1 = warpParameters[offset + 7];
                vec4 radial = vec4(radial0, radial1, radial2, radial3);
                vec2 tangential = vec2(tangential0, tangential1);
                vec2 center = vec2(center0, center1) * vec2(uImageSize);
                vec2 difference = sourcePixel - center;
                vec2 farthest = max(center, vec2(uImageSize) - center);
                float normalizationRadius = max(length(farthest), 1.0);
                vec2 normalized = difference / normalizationRadius;
                float radiusSquared = min(dot(normalized, normalized), 1.0);
                float ratio = radial.x + radial.y * radiusSquared +
                    radial.z * radiusSquared * radiusSquared +
                    radial.w * radiusSquared * radiusSquared * radiusSquared;
                float horizontal = normalized.x;
                float vertical = normalized.y;
                vec2 tangent = vec2(
                    tangential.y * (radiusSquared + 2.0 * horizontal * horizontal) +
                        2.0 * tangential.x * horizontal * vertical,
                    tangential.x * (radiusSquared + 2.0 * vertical * vertical) +
                        2.0 * tangential.y * horizontal * vertical
                );
                sourcePixel = center + normalizationRadius * (normalized * ratio + tangent);
            }
            return clamp(sourcePixel, vec2(0.0), vec2(uImageSize - ivec2(1)));
        }

        void main() {
            ivec2 outputPosition = ivec2(gl_GlobalInvocationID.xy);
            const ivec2 OUTPUT_SIZE = ivec2(
                ${RawAdrcPreviewStatsGl.WIDTH},
                ${RawAdrcPreviewStatsGl.HEIGHT}
            );
            if (any(greaterThanEqual(outputPosition, OUTPUT_SIZE))) return;

            ivec2 statsSize = uStatsBounds.zw - uStatsBounds.xy;
            ivec2 sourceStart = uStatsBounds.xy +
                (outputPosition * statsSize) / OUTPUT_SIZE;
            ivec2 sourceEnd = uStatsBounds.xy +
                ((outputPosition + ivec2(1)) * statsSize) / OUTPUT_SIZE;
            sourceEnd = max(sourceEnd, sourceStart + ivec2(1));
            sourceStart = clamp(sourceStart, ivec2(0), uImageSize - ivec2(1));
            sourceEnd = clamp(sourceEnd, sourceStart + ivec2(1), uImageSize);

            vec3 profileRgbSum = vec3(0.0);
            float maximumIntensity = 0.0;
            bool validIntensity = true;
            int sampleCount = 0;
            for (int y = sourceStart.y; y < sourceEnd.y; ++y) {
                for (int x = sourceStart.x; x < sourceEnd.x; ++x) {
                    ivec2 sourceCoordinate = ivec2(round(
                        warpDestinationToSource(vec2(x, y))
                    ));
                    vec3 storedCameraRgb = texelFetch(
                        uLinearRgbTexture,
                        sourceCoordinate,
                        0
                    ).rgb;
                    vec3 unclippedProfileRgb = uColorCorrectionMatrix * storedCameraRgb;
                    vec3 rangeRgb = max(unclippedProfileRgb, vec3(0.0));
                    float tableIntensity = dot(rangeRgb, vec3(
                        ${DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS[0]},
                        ${DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS[1]},
                        ${DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS[2]}
                    )) + min(rangeRgb.r, min(rangeRgb.g, rangeRgb.b)) *
                        ${DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS[3]} +
                        max(rangeRgb.r, max(rangeRgb.g, rangeRgb.b)) *
                        ${DngPhotonProfileGainTableGenerator.PXL_PROFILE_GAIN_TABLE_INPUT_WEIGHTS[4]};
                    validIntensity = validIntensity && !any(isnan(unclippedProfileRgb)) &&
                        !any(isinf(unclippedProfileRgb)) && !isnan(tableIntensity) && !isinf(tableIntensity);
                    maximumIntensity = max(maximumIntensity, tableIntensity);
                    profileRgbSum += uPreserveSignedRgb ? unclippedProfileRgb : rangeRgb;
                    ++sampleCount;
                }
            }
            vec3 meanLinearRgb = profileRgbSum / float(max(sampleCount, 1));
            validIntensity = validIntensity && !any(isnan(meanLinearRgb)) && !any(isinf(meanLinearRgb));
            imageStore(uProfileInput, outputPosition, vec4(meanLinearRgb, validIntensity ? maximumIntensity : -1.0));
        }
    """.trimIndent()
}

internal class DngPhotonProfileGainTableAlgorithm {
    enum class Mode {
        QUALCOMM_ADRC,
        HDR_NET,
    }

    data class Input(
        val mode: Mode,
        val context: Context,
        val linearRgbTextureId: Int,
        val width: Int,
        val height: Int,
        val linearRgbTextureWidth: Int = width,
        val linearRgbTextureHeight: Int = height,
        val metadata: RawMetadata,
        val statsBounds: Rect?,
        /** Total BaselineExposure used by DNG ProfileGainTableMap lookup. */
        val rendererBaselineExposureEv: Float,
        val hdrNetMaxRatio: Float = RawSceneExposureMath.FAST_MOMENTS_MAX_HDR_RATIO,
        val hdrNetExposureOverride: Pair<Float, Float>? = null,
        val colorCorrectionMatrix: FloatArray,
        val warpRectilinear: FloatArray? = null,
        val installProfileGainTableTexture: (DngProfileGainTableMap, Int) -> Unit,
        val isNoOpWarp: (FloatArray) -> Boolean,
    )

    data class Output(
        val map: DngProfileGainTableMap,
        val hdrRatio: Float? = null,
        val sourceToShortGain: Float? = null,
    )

    private var captureInputProgram = 0
    private var captureInputTexture = 0
    private val hdrNet = RawHdrNetGl()
    private val hdrNetExport = RawHdrNetPgtmExportGl()
    private val qualcommStats = RawAdrcPreviewStatsGl()
    private val qualcommTmc = RawAdrcPreviewTmcGl()
    private val qualcommLtm = RawAdrcPreviewLtmGl()
    private val qualcommExport = RawAdrcPgtmExportGl()
    private val replayTransfer = RawFloatTextureTransfer()

    fun execute(input: Input): Output? {
        if (input.linearRgbTextureId == 0 || input.width <= 0 || input.height <= 0 ||
            input.linearRgbTextureWidth <= 0 || input.linearRgbTextureHeight <= 0 ||
            !input.rendererBaselineExposureEv.isFinite()
        ) return null
        val stage3Bounds = sanitizePgtmStatsBounds(input.statsBounds, input.width, input.height)
            ?: return null
        val sourceBounds = Rect(
            floor(stage3Bounds.left.toDouble() * input.linearRgbTextureWidth / input.width).toInt(),
            floor(stage3Bounds.top.toDouble() * input.linearRgbTextureHeight / input.height).toInt(),
            ceil(stage3Bounds.right.toDouble() * input.linearRgbTextureWidth / input.width).toInt(),
            ceil(stage3Bounds.bottom.toDouble() * input.linearRgbTextureHeight / input.height).toInt(),
        )
        if (!sourceBounds.intersect(Rect(0, 0, input.linearRgbTextureWidth, input.linearRgbTextureHeight)) ||
            sourceBounds.isEmpty
        ) return null
        val samplingArea = PhotonPgtmSamplingArea(
            originH = stage3Bounds.left.toDouble() / input.width,
            originV = stage3Bounds.top.toDouble() / input.height,
            extentH = stage3Bounds.width().toDouble() / input.width,
            extentV = stage3Bounds.height().toDouble() / input.height,
        )
        val colorMatrix = input.colorCorrectionMatrix.takeIf { matrix ->
            matrix.size >= 9 && (0..8).all { matrix[it].isFinite() }
        } ?: return null
        if (!prepareCaptureInput(input, sourceBounds, colorMatrix)) return null

        return try {
            when (input.mode) {
                Mode.QUALCOMM_ADRC -> generateQualcommAdrc(input, stage3Bounds, samplingArea, colorMatrix)
                Mode.HDR_NET -> generateHdrNet(input, samplingArea, sourceBounds)
            }
        } catch (error: RuntimeException) {
            PLog.e(TAG, "${input.mode} DNG ProfileGainTableMap generation failed", error)
            null
        }
    }

    private fun generateHdrNet(
        input: Input,
        samplingArea: PhotonPgtmSamplingArea,
        sourceBounds: Rect,
    ): Output? {
        val prepared = hdrNet.prepare(
            context = input.context,
            profileTexture = captureInputTexture,
            width = CAPTURE_INPUT_WIDTH,
            height = CAPTURE_INPUT_HEIGHT,
            profileToLinearSrgb = PROFILE_TO_LINEAR_SRGB,
            metadata = input.metadata,
            maxHdrRatio = input.hdrNetMaxRatio,
            exposureOverride = input.hdrNetExposureOverride,
            profileAlphaHasPeak = true,
            boxedSourceWidth = sourceBounds.width(),
            boxedSourceHeight = sourceBounds.height(),
        ) ?: return null
        val baked = hdrNetExport.bake(hdrNet, prepared, input.rendererBaselineExposureEv, samplingArea)
            ?: return null
        var installed = false
        try {
            input.installProfileGainTableTexture(baked.map, baked.textureId)
            installed = true
            val plan = baked.plan
            PLog.i(
                TAG,
                "HDRNET_PGTM physicalShortGain=${plan.sourceToShortGain} " +
                    "hdrRatio=${plan.hdrRatio} pointsN=${plan.pointCount} GPU",
            )
            return Output(baked.map, plan.hdrRatio, plan.sourceToShortGain)
        } finally {
            if (!installed) GLES30.glDeleteTextures(1, intArrayOf(baked.textureId), 0)
        }
    }

    private fun generateQualcommAdrc(
        input: Input,
        stage3Bounds: Rect,
        samplingArea: PhotonPgtmSamplingArea,
        colorMatrix: FloatArray,
    ): Output? {
        val baselineGain = DngBaselineExposure.exactGain(input.rendererBaselineExposureEv)
        val faces = DngQualcommAdrcPgtm.facesInSamplingArea(input.metadata.faceRects, samplingArea)
        if (!qualcommStats.prepareCapture(captureInputTexture, baselineGain, PROFILE_TO_LINEAR_SRGB, faces) ||
            !qualcommTmc.prepare(qualcommStats.statisticsBuffer, input.metadata)
        ) return null
        val guideTexture = qualcommLtm.prepareGuide(
            qualcommStats.profileTexture, qualcommTmc.curveTexture, baselineGain,
        )
        if (guideTexture == 0) return null

        // Only the four-float metering header is needed for the DNG grid geometry.
        GLES31.glMemoryBarrier(GLES31.GL_BUFFER_UPDATE_BARRIER_BIT)
        val meter = readFloatStorageBuffer(qualcommStats.statisticsBuffer, 4, "Qualcomm ADRC metering") ?: return null
        val maxLinearIntensity = meter[3] / baselineGain
        val maxTextureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
        val layout = DngQualcommAdrcPgtm.layout(maxLinearIntensity, maxTextureSize[0]) ?: return null
        val baked = qualcommExport.bake(
            qualcommTmc.curveTexture, guideTexture, baselineGain, layout.pointCount, layout.rangeScale,
        ) ?: return null
        var installed = false
        try {
            val map = DngQualcommAdrcPgtm.map(layout, baselineGain, samplingArea, baked.gains) ?: return null
            val diag = DngQualcommAdrcPgtm.diagnostics(baked.diagnostics) ?: return null
            recordQualcommReplay(input, stage3Bounds, colorMatrix, maxLinearIntensity, diag, map)
            PLog.i(
                TAG,
                "QUALCOMM_ADRC_PGTM drcGain=${diag.drcGain} drcGainDark=${diag.drcGainDark} " +
                    "ltmPct=${diag.ltmPercentage} yRatioMax=${diag.yRatioMax} " +
                    "drEv=${diag.sceneDynamicRangeEv} logAvg=${diag.weightedLogAvgLuma} " +
                    "p05=${diag.lumaP05} p992=${diag.lumaP992} " +
                    "maxLinear=$maxLinearIntensity pointsN=${map.mapPointsN} " +
                    "faces=${input.metadata.faceRects.size}",
            )
            input.installProfileGainTableTexture(map, baked.textureId)
            installed = true
            return Output(map = map)
        } finally {
            if (!installed) GLES30.glDeleteTextures(1, intArrayOf(baked.textureId), 0)
        }
    }

    private fun prepareCaptureInput(input: Input, sourceBounds: Rect, colorMatrix: FloatArray): Boolean {
        if (captureInputProgram == 0) {
            captureInputProgram = RawGlesProgram.compileCompute(
                DngPhotonProfileGainTableInputShader.PROFILE_INPUT, "DNG_ADAPTIVE_PROFILE_INPUT",
            )
        }
        if (captureInputProgram == 0 || !ensureCaptureInputTexture()) return false
        val program = captureInputProgram
        val warp = collectActiveWarpParameters(input)
        val buffer = IntArray(1)
        GLES31.glGenBuffers(1, buffer, 0)
        if (buffer[0] == 0) return false
        try {
            bindWarpParameters(buffer[0], warp)
            GLES31.glUseProgram(program)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, input.linearRgbTextureId)
            GLES31.glBindSampler(0, 0)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(program, "uLinearRgbTexture"), 0)
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(program, "uImageSize"),
                input.linearRgbTextureWidth, input.linearRgbTextureHeight,
            )
            GLES31.glUniform4i(
                GLES31.glGetUniformLocation(program, "uStatsBounds"),
                sourceBounds.left, sourceBounds.top, sourceBounds.right, sourceBounds.bottom,
            )
            GLES31.glUniformMatrix3fv(
                GLES31.glGetUniformLocation(program, "uColorCorrectionMatrix"), 1, false,
                RawToneMappingGl.transposeMatrix3x3(colorMatrix), 0,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(program, "uWarpCount"), warp.size / DngWarpRectilinear.SINGLE_PLANE_SIZE,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(program, "uPreserveSignedRgb"),
                if (input.mode == Mode.HDR_NET) 1 else 0,
            )
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT)
            GLES31.glBindImageTexture(0, captureInputTexture, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA32F)
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(CAPTURE_INPUT_WIDTH),
                GlesComputeWorkGroup.imageGroupCount(CAPTURE_INPUT_HEIGHT), 1,
            )
            GLES31.glMemoryBarrier(GLES31.GL_TEXTURE_FETCH_BARRIER_BIT or GLES31.GL_FRAMEBUFFER_BARRIER_BIT)
            val error = GLES31.glGetError()
            if (error == GLES31.GL_NO_ERROR) return true
            PLog.e(TAG, "Adaptive capture input failed GL=$error, renderer=${GLES31.glGetString(GLES31.GL_RENDERER)}")
            return false
        } finally {
            GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA32F)
            cleanupComputeBindings(buffer)
        }
    }

    private fun ensureCaptureInputTexture(): Boolean {
        if (captureInputTexture != 0) return true
        val names = IntArray(1)
        GLES31.glGetIntegerv(GLES31.GL_MAX_COMPUTE_IMAGE_UNIFORMS, names, 0)
        if (names[0] < 1) return false
        GLES31.glGenTextures(1, names, 0)
        val texture = names[0]
        if (texture == 0) return false
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
        GLES31.glTexStorage2D(
            GLES31.GL_TEXTURE_2D, 1, GLES30.GL_RGBA32F, CAPTURE_INPUT_WIDTH, CAPTURE_INPUT_HEIGHT,
        )
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_MIN_FILTER, GLES31.GL_NEAREST)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_MAG_FILTER, GLES31.GL_NEAREST)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_WRAP_S, GLES31.GL_CLAMP_TO_EDGE)
        GLES31.glTexParameteri(GLES31.GL_TEXTURE_2D, GLES31.GL_TEXTURE_WRAP_T, GLES31.GL_CLAMP_TO_EDGE)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        val error = GLES31.glGetError()
        if (error != GLES31.GL_NO_ERROR) {
            PLog.e(TAG, "Adaptive capture input allocation GL=$error")
            GLES31.glDeleteTextures(1, names, 0)
            return false
        }
        captureInputTexture = texture
        return true
    }

    fun release() {
        hdrNet.release()
        hdrNetExport.release()
        if (captureInputProgram != 0) GLES31.glDeleteProgram(captureInputProgram)
        captureInputProgram = 0
        if (captureInputTexture != 0) GLES30.glDeleteTextures(1, intArrayOf(captureInputTexture), 0)
        captureInputTexture = 0
        qualcommStats.release()
        qualcommTmc.release()
        qualcommLtm.release()
        qualcommExport.release()
        replayTransfer.release()
    }

    private fun recordQualcommReplay(
        input: Input,
        statsBounds: Rect,
        colorCorrectionMatrix: FloatArray,
        maxLinearIntensity: Float,
        diagnostics: DngQualcommAdrcPgtm.Diagnostics,
        map: DngProfileGainTableMap,
    ) {
        if (!RawAdrcReplayCapture.isEnabled()) return
        val width = RawAdrcPreviewStatsGl.WIDTH
        val height = RawAdrcPreviewStatsGl.HEIGHT
        try {
            replayTransfer.read(captureInputTexture, width, height, label = "ADRC replay input", writable = false) { buffer ->
                val linearRgba = FloatArray(width * height * 4)
                buffer.asFloatBuffer().get(linearRgba)
                RawAdrcReplayCapture.recordPreparedAdrcInput(
                    linearRgba, width, height, input.metadata, input.rendererBaselineExposureEv,
                    maxLinearIntensity, statsBounds, colorCorrectionMatrix, diagnostics, map,
                )
            }
        } catch (error: RuntimeException) {
            PLog.e(TAG, "Qualcomm ADRC replay input readback failed", error)
        }
    }

    private fun collectActiveWarpParameters(input: Input): ArrayList<Float> {
        val activeWarpParameters = ArrayList<Float>()
        input.warpRectilinear
            ?.takeIf { it.isNotEmpty() && it.size % DngWarpRectilinear.RECORD_SIZE == 0 }
            ?.let { warps ->
                for (offset in warps.indices step DngWarpRectilinear.RECORD_SIZE) {
                    val parameters =
                        warps.copyOfRange(offset, offset + DngWarpRectilinear.RECORD_SIZE)
                    if (input.isNoOpWarp(parameters)) continue
                    DngWarpRectilinear.referencePlaneParameters(parameters)
                        .forEach(activeWarpParameters::add)
                }
            }
        return activeWarpParameters
    }

    private fun bindWarpParameters(bufferId: Int, activeWarpParameters: List<Float>) {
        val warpBuffer = ByteBuffer.allocateDirect(
            max(activeWarpParameters.size, 1) * Float.SIZE_BYTES,
        ).order(ByteOrder.nativeOrder()).asFloatBuffer()
        if (activeWarpParameters.isEmpty()) {
            warpBuffer.put(0f)
        } else {
            activeWarpParameters.forEach(warpBuffer::put)
        }
        warpBuffer.position(0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            max(activeWarpParameters.size, 1) * Float.SIZE_BYTES,
            warpBuffer,
            GLES31.GL_STATIC_DRAW,
        )
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, bufferId)
    }

    private fun cleanupComputeBindings(bufferIds: IntArray) {
        GLES31.glUseProgram(0)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        GLES31.glDeleteBuffers(bufferIds.size, bufferIds, 0)
    }

    private fun readFloatStorageBuffer(
        bufferId: Int,
        floatCount: Int,
        label: String,
    ): FloatArray? {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
        val byteCount = floatCount * Float.SIZE_BYTES
        val mapped = GLES31.glMapBufferRange(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            0,
            byteCount,
            GLES31.GL_MAP_READ_BIT,
        ) ?: run {
            PLog.e(TAG, "$label buffer map failed")
            return null
        }
        return try {
            val byteBuffer = mapped as? ByteBuffer ?: run {
                PLog.e(TAG, "$label mapped buffer is not a ByteBuffer")
                return null
            }
            FloatArray(floatCount).also { values ->
                byteBuffer.order(ByteOrder.nativeOrder()).asFloatBuffer().get(values)
            }
        } finally {
            GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
        }
    }

    private fun sanitizePgtmStatsBounds(bounds: Rect?, width: Int, height: Int): Rect? {
        val imageBounds = Rect(0, 0, width, height)
        if (bounds == null) return imageBounds
        if (bounds.isEmpty) return null
        return Rect(bounds).takeIf {
            it.intersect(imageBounds) && it.width() >= 2 && it.height() >= 2
        }
    }

    private companion object {
        const val TAG = "PhotonPGTM"
        const val CAPTURE_INPUT_WIDTH = RawAdrcPreviewStatsGl.WIDTH
        const val CAPTURE_INPUT_HEIGHT = RawAdrcPreviewStatsGl.HEIGHT
        val PROFILE_TO_LINEAR_SRGB = RawToneMappingGl.computeWorkingToOutputTransform(ColorSpace.ProPhoto, ColorSpace.SRGB)
    }
}
