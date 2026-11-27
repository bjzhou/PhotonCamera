package com.hinnka.mycamera.raw

import android.content.Context
import android.graphics.Rect
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.utils.PLog
import org.tensorflow.lite.DataType
import org.tensorflow.lite.Interpreter
import com.google.ai.edge.litert.support.common.FileUtil
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.max

/** Compute shaders for capture-time DNG ProfileGainTableMap preparation. */
internal object DngPhotonProfileGainTableInputShader {
    val HDRNET_INPUT = """
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
        uniform float uSourceToShortGain;
        uniform float uHdrRatio;
        uniform int uWarpCount;

        layout(std430, binding = 0) writeonly buffer HdrNetInputBuffer {
            float hdrNetInput[];
        };
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
                ${DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH},
                ${DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT}
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
            float maximumShortIntensity = 0.0;
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
                    vec3 cameraRgb = storedCameraRgb * uSourceToShortGain;
                    vec3 unclippedProfileRgb = uColorCorrectionMatrix * cameraRgb;
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
                    maximumShortIntensity = max(maximumShortIntensity, tableIntensity);
                    vec3 profileRgb = min(unclippedProfileRgb, vec3(1.0));
                    profileRgbSum += profileRgb;
                    ++sampleCount;
                }
            }
            vec3 modelRgb = clamp(
                profileRgbSum / float(max(sampleCount, 1)),
                vec3(0.0), vec3(1.0)
            );
            const vec3 HDRNET_LUMA_WEIGHTS = vec3(
                0.298828125,
                0.5869140625,
                0.1142578125
            );
            float longLuma = min(dot(modelRgb, HDRNET_LUMA_WEIGHTS) * uHdrRatio, 12.0);

            int outputIndex =
                (outputPosition.y * OUTPUT_SIZE.x + outputPosition.x) * 4;
            hdrNetInput[outputIndex] = modelRgb.r;
            hdrNetInput[outputIndex + 1] = modelRgb.g;
            hdrNetInput[outputIndex + 2] = modelRgb.b;
            hdrNetInput[outputIndex + 3] = longLuma;
            int rangeIndex = OUTPUT_SIZE.x * OUTPUT_SIZE.y * 4 +
                outputPosition.y * OUTPUT_SIZE.x + outputPosition.x;
            hdrNetInput[rangeIndex] = validIntensity ? maximumShortIntensity : -1.0;
        }
    """.trimIndent()

    val QUALCOMM_ADRC_INPUT = """
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

        layout(std430, binding = 0) writeonly buffer AdrcInputBuffer {
            float adrcInput[];
        };
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
                ${DngQualcommAdrcNative.INPUT_WIDTH},
                ${DngQualcommAdrcNative.INPUT_HEIGHT}
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
                    profileRgbSum += rangeRgb;
                    ++sampleCount;
                }
            }
            vec3 meanLinearRgb = max(profileRgbSum / float(max(sampleCount, 1)), vec3(0.0));
            int outputIndex =
                (outputPosition.y * OUTPUT_SIZE.x + outputPosition.x) * 4;
            adrcInput[outputIndex] = meanLinearRgb.r;
            adrcInput[outputIndex + 1] = meanLinearRgb.g;
            adrcInput[outputIndex + 2] = meanLinearRgb.b;
            adrcInput[outputIndex + 3] = validIntensity ? maximumIntensity : -1.0;
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
        val hdrRatio: Float,
        val sourceToShortGain: Float,
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

    private var hdrNetInputProgram = 0
    private var qualcommAdrcInputProgram = 0
    private var hdrNetInterpreter: Interpreter? = null

    fun initialize(mode: Mode): Boolean {
        return when (mode) {
            Mode.QUALCOMM_ADRC -> {
                if (qualcommAdrcInputProgram == 0) {
                    qualcommAdrcInputProgram = RawGlesProgram.compileCompute(
                        DngPhotonProfileGainTableInputShader.QUALCOMM_ADRC_INPUT,
                        "DNG_QUALCOMM_ADRC_INPUT",
                    )
                }
                qualcommAdrcInputProgram != 0
            }
            Mode.HDR_NET -> {
                if (hdrNetInputProgram == 0) {
                    hdrNetInputProgram = RawGlesProgram.compileCompute(
                        DngPhotonProfileGainTableInputShader.HDRNET_INPUT,
                        "DNG_HDRNET_INPUT",
                    )
                }
                hdrNetInputProgram != 0
            }
        }
    }

    fun execute(input: Input): Output? {
        if (!initialize(input.mode)) return null
        return when (input.mode) {
            Mode.QUALCOMM_ADRC -> generateQualcommAdrc(input)
            Mode.HDR_NET -> generateHdrNet(input)
        }
    }

    fun release() {
        hdrNetInterpreter?.close()
        hdrNetInterpreter = null
        if (hdrNetInputProgram != 0) GLES31.glDeleteProgram(hdrNetInputProgram)
        hdrNetInputProgram = 0
        if (qualcommAdrcInputProgram != 0) GLES31.glDeleteProgram(qualcommAdrcInputProgram)
        qualcommAdrcInputProgram = 0
    }

    private fun generateHdrNet(input: Input): Output? {
        val linearRgbTextureId = input.linearRgbTextureId
        val width = input.width
        val height = input.height
        val linearRgbTextureWidth = input.linearRgbTextureWidth
        val linearRgbTextureHeight = input.linearRgbTextureHeight
        if (linearRgbTextureId == 0 || width <= 0 || height <= 0 ||
            linearRgbTextureWidth <= 0 || linearRgbTextureHeight <= 0 ||
            hdrNetInputProgram == 0
        ) {
            PLog.e(
                TAG,
                "HDRNet input invalid: texture=$linearRgbTextureId " +
                    "source=${width}x$height linearRgb=" +
                    "${linearRgbTextureWidth}x$linearRgbTextureHeight " +
                    "program=$hdrNetInputProgram",
            )
            return null
        }
        val stage3Bounds = sanitizePgtmStatsBounds(input.statsBounds, width, height)
            ?: return null
        val hdrNetSourceBounds = Rect(
            floor(stage3Bounds.left.toDouble() * linearRgbTextureWidth / width).toInt(),
            floor(stage3Bounds.top.toDouble() * linearRgbTextureHeight / height).toInt(),
            ceil(stage3Bounds.right.toDouble() * linearRgbTextureWidth / width).toInt(),
            ceil(stage3Bounds.bottom.toDouble() * linearRgbTextureHeight / height).toInt(),
        ).also { bounds ->
            bounds.intersect(Rect(0, 0, linearRgbTextureWidth, linearRgbTextureHeight))
        }
        if (hdrNetSourceBounds.isEmpty) return null
        val samplingArea = PhotonPgtmSamplingArea(
            originH = stage3Bounds.left.toDouble() / width.toDouble(),
            originV = stage3Bounds.top.toDouble() / height.toDouble(),
            extentH = stage3Bounds.width().toDouble() / width.toDouble(),
            extentV = stage3Bounds.height().toDouble() / height.toDouble(),
        )
        val basePlan = DngPhotonProfileGainTableGenerator.hdrNetPlan(
            rendererBaselineExposureEv = input.rendererBaselineExposureEv,
            hdrRatio = input.hdrRatio,
            sourceToShortGain = input.sourceToShortGain,
            samplingArea = samplingArea,
        ) ?: return null
        val interpreter = ensureHdrNetInterpreter(input.context) ?: return null
        val activeWarpParameters = collectActiveWarpParameters(input)

        val inputFloatCount = DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH *
            DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT * 4
        val inputByteCount = inputFloatCount * Float.SIZE_BYTES
        val storageFloatCount = inputFloatCount + inputFloatCount / 4
        val storageByteCount = storageFloatCount * Float.SIZE_BYTES
        if (!checkSsboRequirements(storageByteCount, "HDRNet")) return null

        val bufferIds = IntArray(2)
        GLES31.glGenBuffers(bufferIds.size, bufferIds, 0)
        try {
            bindInputBuffers(bufferIds, storageByteCount, activeWarpParameters)
            GLES31.glUseProgram(hdrNetInputProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LINEAR_RGB_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, linearRgbTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(hdrNetInputProgram, "uLinearRgbTexture"),
                LINEAR_RGB_TEXTURE_UNIT,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(hdrNetInputProgram, "uImageSize"),
                linearRgbTextureWidth,
                linearRgbTextureHeight,
            )
            GLES31.glUniform4i(
                GLES31.glGetUniformLocation(hdrNetInputProgram, "uStatsBounds"),
                hdrNetSourceBounds.left,
                hdrNetSourceBounds.top,
                hdrNetSourceBounds.right,
                hdrNetSourceBounds.bottom,
            )
            val safeColorCorrectionMatrix = input.colorCorrectionMatrix.takeIf { matrix ->
                matrix.size >= 9 && matrix.take(9).all { it.isFinite() }
            } ?: run {
                PLog.e(TAG, "HDRNet color-correction matrix is invalid")
                return null
            }
            GLES31.glUniformMatrix3fv(
                GLES31.glGetUniformLocation(hdrNetInputProgram, "uColorCorrectionMatrix"),
                1,
                false,
                RawToneMappingGl.transposeMatrix3x3(safeColorCorrectionMatrix),
                0,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(hdrNetInputProgram, "uWarpCount"),
                activeWarpParameters.size / DngWarpRectilinear.SINGLE_PLANE_SIZE,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(hdrNetInputProgram, "uSourceToShortGain"),
                input.sourceToShortGain,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(hdrNetInputProgram, "uHdrRatio"),
                basePlan.hdrRatio,
            )
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(
                    DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH,
                ),
                GlesComputeWorkGroup.imageGroupCount(
                    DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT,
                ),
                1,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            RawGlesProgram.logErrors("prepare HDRNet input")

            val preparedInput = readFloatStorageBuffer(
                bufferId = bufferIds[0],
                floatCount = storageFloatCount,
                label = "HDRNet input",
            ) ?: return null
            if (preparedInput.any { !it.isFinite() }) {
                PLog.e(TAG, "HDRNet input contains a non-finite value")
                return null
            }
            var maximumShortIntensity = 0f
            for (index in inputFloatCount until storageFloatCount) {
                val intensity = preparedInput[index]
                if (intensity < 0f) {
                    PLog.e(TAG, "HDRNet PGTM range contains an invalid source intensity")
                    return null
                }
                maximumShortIntensity = max(maximumShortIntensity, intensity)
            }
            val maxTextureSize = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
            val tableTextureHeight = basePlan.grid.mapPointsH * basePlan.grid.mapPointsV
            if (maxTextureSize[0] < tableTextureHeight) {
                PLog.e(TAG, "HDRNet PGTM texture height $tableTextureHeight exceeds ${maxTextureSize[0]}")
                return null
            }
            val plan = DngPhotonProfileGainTableGenerator.hdrNetPlan(
                rendererBaselineExposureEv = input.rendererBaselineExposureEv,
                hdrRatio = input.hdrRatio,
                sourceToShortGain = input.sourceToShortGain,
                samplingArea = samplingArea,
                maximumShortIntensity = maximumShortIntensity,
                maximumTablePoints = maxTextureSize[0],
            ) ?: return null

            val modelInput = preparedInput.copyOf(inputFloatCount)
            val modelInputBuffer = ByteBuffer.allocateDirect(inputByteCount)
                .order(ByteOrder.nativeOrder())
            modelInputBuffer.asFloatBuffer().put(modelInput)
            modelInputBuffer.rewind()
            val modelOutputBuffer = ByteBuffer.allocateDirect(
                DngPhotonProfileGainTableGenerator.HDRNET_OUTPUT_FLOAT_COUNT * Float.SIZE_BYTES,
            ).order(ByteOrder.nativeOrder())
            interpreter.run(modelInputBuffer, modelOutputBuffer)
            modelOutputBuffer.rewind()
            val coefficients = FloatArray(
                DngPhotonProfileGainTableGenerator.HDRNET_OUTPUT_FLOAT_COUNT,
            )
            modelOutputBuffer.asFloatBuffer().get(coefficients)

            PLog.i(
                TAG,
                "HDRNET_PGTM physicalShortGain=${input.sourceToShortGain} " +
                    "hdrRatio=${plan.hdrRatio} maxShortIntensity=$maximumShortIntensity " +
                    "pointsN=${plan.pointCount}",
            )
            val map = DngPhotonProfileGainTableGenerator.mapFromHdrNetCoefficients(
                plan = plan,
                coefficients = coefficients,
                modelInput = modelInput,
            ) ?: return null
            val textureId = uploadProfileGainTableTexture(map) ?: return null
            try {
                input.installProfileGainTableTexture(map, textureId)
            } catch (error: Throwable) {
                GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
                throw error
            }
            return Output(
                map = map,
                hdrRatio = plan.hdrRatio,
                sourceToShortGain = input.sourceToShortGain,
            )
        } catch (error: Throwable) {
            PLog.e(TAG, "HDRNet ProfileGainTableMap generation failed", error)
            return null
        } finally {
            cleanupComputeBindings(bufferIds)
        }
    }

    private fun generateQualcommAdrc(input: Input): Output? {
        val linearRgbTextureId = input.linearRgbTextureId
        val width = input.width
        val height = input.height
        val linearRgbTextureWidth = input.linearRgbTextureWidth
        val linearRgbTextureHeight = input.linearRgbTextureHeight
        if (linearRgbTextureId == 0 || width <= 0 || height <= 0 ||
            linearRgbTextureWidth <= 0 || linearRgbTextureHeight <= 0 ||
            qualcommAdrcInputProgram == 0
        ) {
            PLog.e(
                TAG,
                "Qualcomm ADRC input invalid: texture=$linearRgbTextureId " +
                    "source=${width}x$height linearRgb=" +
                    "${linearRgbTextureWidth}x$linearRgbTextureHeight " +
                    "program=$qualcommAdrcInputProgram",
            )
            return null
        }
        val stage3Bounds = sanitizePgtmStatsBounds(input.statsBounds, width, height)
            ?: return null
        val sourceBounds = Rect(
            floor(stage3Bounds.left.toDouble() * linearRgbTextureWidth / width).toInt(),
            floor(stage3Bounds.top.toDouble() * linearRgbTextureHeight / height).toInt(),
            ceil(stage3Bounds.right.toDouble() * linearRgbTextureWidth / width).toInt(),
            ceil(stage3Bounds.bottom.toDouble() * linearRgbTextureHeight / height).toInt(),
        ).also { bounds ->
            bounds.intersect(Rect(0, 0, linearRgbTextureWidth, linearRgbTextureHeight))
        }
        if (sourceBounds.isEmpty) return null

        val samplingArea = PhotonPgtmSamplingArea(
            originH = stage3Bounds.left.toDouble() / width.toDouble(),
            originV = stage3Bounds.top.toDouble() / height.toDouble(),
            extentH = stage3Bounds.width().toDouble() / width.toDouble(),
            extentV = stage3Bounds.height().toDouble() / height.toDouble(),
        )
        val activeWarpParameters = collectActiveWarpParameters(input)
        val storageFloatCount = DngQualcommAdrcNative.INPUT_WIDTH *
            DngQualcommAdrcNative.INPUT_HEIGHT * 4
        val storageByteCount = storageFloatCount * Float.SIZE_BYTES
        if (!checkSsboRequirements(storageByteCount, "Qualcomm ADRC")) return null

        val bufferIds = IntArray(2)
        GLES31.glGenBuffers(bufferIds.size, bufferIds, 0)
        try {
            bindInputBuffers(bufferIds, storageByteCount, activeWarpParameters)
            GLES31.glUseProgram(qualcommAdrcInputProgram)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LINEAR_RGB_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, linearRgbTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(qualcommAdrcInputProgram, "uLinearRgbTexture"),
                LINEAR_RGB_TEXTURE_UNIT,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(qualcommAdrcInputProgram, "uImageSize"),
                linearRgbTextureWidth,
                linearRgbTextureHeight,
            )
            GLES31.glUniform4i(
                GLES31.glGetUniformLocation(qualcommAdrcInputProgram, "uStatsBounds"),
                sourceBounds.left,
                sourceBounds.top,
                sourceBounds.right,
                sourceBounds.bottom,
            )
            val safeColorCorrectionMatrix = input.colorCorrectionMatrix.takeIf { matrix ->
                matrix.size >= 9 && matrix.take(9).all { it.isFinite() }
            } ?: run {
                PLog.e(TAG, "Qualcomm ADRC color-correction matrix is invalid")
                return null
            }
            GLES31.glUniformMatrix3fv(
                GLES31.glGetUniformLocation(qualcommAdrcInputProgram, "uColorCorrectionMatrix"),
                1,
                false,
                RawToneMappingGl.transposeMatrix3x3(safeColorCorrectionMatrix),
                0,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(qualcommAdrcInputProgram, "uWarpCount"),
                activeWarpParameters.size / DngWarpRectilinear.SINGLE_PLANE_SIZE,
            )
            GLES31.glDispatchCompute(
                GlesComputeWorkGroup.imageGroupCount(DngQualcommAdrcNative.INPUT_WIDTH),
                GlesComputeWorkGroup.imageGroupCount(DngQualcommAdrcNative.INPUT_HEIGHT),
                1,
            )
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            RawGlesProgram.logErrors("prepare Qualcomm ADRC input")

            val linearRgba = readFloatStorageBuffer(
                bufferId = bufferIds[0],
                floatCount = storageFloatCount,
                label = "Qualcomm ADRC input",
            ) ?: return null

            var maxLinearIntensity = 0f
            val pixelCount = DngQualcommAdrcNative.INPUT_WIDTH * DngQualcommAdrcNative.INPUT_HEIGHT
            for (i in 0 until pixelCount) {
                val r = linearRgba[i * 4]
                val g = linearRgba[i * 4 + 1]
                val b = linearRgba[i * 4 + 2]
                val peak = linearRgba[i * 4 + 3]
                if (!r.isFinite() || !g.isFinite() || !b.isFinite() || !peak.isFinite() || peak < 0f) {
                    PLog.e(TAG, "Qualcomm ADRC input contains invalid sample at pixel=$i")
                    return null
                }
                maxLinearIntensity = max(maxLinearIntensity, peak)
            }

            val maxTextureSize = IntArray(1)
            GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, maxTextureSize, 0)
            val tableTextureHeight =
                DngQualcommAdrcNative.PGTM_GRID_WIDTH * DngQualcommAdrcNative.PGTM_GRID_HEIGHT
            if (maxTextureSize[0] < tableTextureHeight) {
                PLog.e(TAG, "Qualcomm ADRC PGTM texture height $tableTextureHeight exceeds ${maxTextureSize[0]}")
                return null
            }

            val result = DngQualcommAdrcNative.generateProfileGainTableMap(
                linearRgba = linearRgba,
                metadata = input.metadata,
                rendererBaselineExposureEv = input.rendererBaselineExposureEv,
                samplingArea = samplingArea,
                maxLinearIntensity = maxLinearIntensity,
                maximumTablePoints = maxTextureSize[0],
            ) ?: return null

            val diag = result.diagnostics
            RawAdrcReplayCapture.recordPreparedAdrcInput(
                linearRgba = linearRgba,
                inputWidth = DngQualcommAdrcNative.INPUT_WIDTH,
                inputHeight = DngQualcommAdrcNative.INPUT_HEIGHT,
                metadata = input.metadata,
                rendererBaselineExposureEv = input.rendererBaselineExposureEv,
                maxLinearIntensity = maxLinearIntensity,
                statsBounds = stage3Bounds,
                colorCorrectionMatrix = safeColorCorrectionMatrix,
                diagnostics = diag,
                map = result.map,
            )
            PLog.i(
                TAG,
                "QUALCOMM_ADRC_PGTM drcGain=${diag.drcGain} drcGainDark=${diag.drcGainDark} " +
                    "ltmPct=${diag.ltmPercentage} yRatioMax=${diag.yRatioMax} " +
                    "drEv=${diag.sceneDynamicRangeEv} logAvg=${diag.weightedLogAvgLuma} " +
                    "p05=${diag.lumaP05} p992=${diag.lumaP992} " +
                    "maxLinear=$maxLinearIntensity pointsN=${result.map.mapPointsN} " +
                    "faces=${input.metadata.faceRects.size}",
            )

            val textureId = uploadProfileGainTableTexture(result.map) ?: return null
            try {
                input.installProfileGainTableTexture(result.map, textureId)
            } catch (error: Throwable) {
                GLES30.glDeleteTextures(1, intArrayOf(textureId), 0)
                throw error
            }
            return Output(map = result.map)
        } catch (error: Throwable) {
            PLog.e(TAG, "Qualcomm ADRC ProfileGainTableMap generation failed", error)
            return null
        } finally {
            cleanupComputeBindings(bufferIds)
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

    private fun checkSsboRequirements(storageByteCount: Int, label: String): Boolean {
        RawGlesProgram.logErrors("before $label SSBO capability query")
        val maxSsboBytes = LongArray(1)
        GLES30.glGetInteger64v(GLES31.GL_MAX_SHADER_STORAGE_BLOCK_SIZE, maxSsboBytes, 0)
        val maxSsboError = GLES30.glGetError()
        val usableMaxSsboBytes = if (
            maxSsboError == GLES30.GL_NO_ERROR && maxSsboBytes[0] > 0L
        ) {
            maxSsboBytes[0]
        } else {
            PLog.w(TAG, "GL_MAX_SHADER_STORAGE_BLOCK_SIZE unavailable; using GLES 3.1 minimum")
            GLES31_MIN_SSBO_BYTES
        }
        val maxSsboBindings = IntArray(1)
        GLES30.glGetIntegerv(GLES31.GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS, maxSsboBindings, 0)
        if (storageByteCount > usableMaxSsboBytes || maxSsboBindings[0] < 2) {
            PLog.e(
                TAG,
                "$label SSBO requirements unavailable: bytes=$storageByteCount " +
                    "maxBlockBytes=$usableMaxSsboBytes bindings=${maxSsboBindings[0]}",
            )
            return false
        }
        return true
    }

    private fun bindInputBuffers(
        bufferIds: IntArray,
        storageByteCount: Int,
        activeWarpParameters: List<Float>,
    ) {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferIds[0])
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            storageByteCount,
            null,
            GLES31.GL_DYNAMIC_READ,
        )
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, bufferIds[0])

        val warpBuffer = ByteBuffer.allocateDirect(
            max(activeWarpParameters.size, 1) * Float.SIZE_BYTES,
        ).order(ByteOrder.nativeOrder()).asFloatBuffer()
        if (activeWarpParameters.isEmpty()) {
            warpBuffer.put(0f)
        } else {
            activeWarpParameters.forEach(warpBuffer::put)
        }
        warpBuffer.position(0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferIds[1])
        GLES31.glBufferData(
            GLES31.GL_SHADER_STORAGE_BUFFER,
            max(activeWarpParameters.size, 1) * Float.SIZE_BYTES,
            warpBuffer,
            GLES31.GL_STATIC_DRAW,
        )
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, bufferIds[1])
    }

    private fun cleanupComputeBindings(bufferIds: IntArray) {
        GLES31.glUseProgram(0)
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LINEAR_RGB_TEXTURE_UNIT)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
        GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
        GLES31.glDeleteBuffers(bufferIds.size, bufferIds, 0)
    }

    private fun ensureHdrNetInterpreter(context: Context): Interpreter? {
        hdrNetInterpreter?.let { return it }
        return runCatching {
            val candidate = Interpreter(
                FileUtil.loadMappedFile(context.applicationContext, HDRNET_MODEL_ASSET),
                Interpreter.Options().apply {
                    setNumThreads(4)
                    setUseXNNPACK(true)
                },
            )
            try {
                check(candidate.inputTensorCount == 1) {
                    "HDRNet input tensor count changed: ${candidate.inputTensorCount}"
                }
                check(candidate.outputTensorCount == 1) {
                    "HDRNet output tensor count changed: ${candidate.outputTensorCount}"
                }
                val modelInput = candidate.getInputTensor(0)
                val modelOutput = candidate.getOutputTensor(0)
                check(modelInput.dataType() == DataType.FLOAT32)
                check(
                    modelInput.shape().contentEquals(
                        intArrayOf(
                            1,
                            DngPhotonProfileGainTableGenerator.HDRNET_INPUT_HEIGHT,
                            DngPhotonProfileGainTableGenerator.HDRNET_INPUT_WIDTH,
                            4,
                        ),
                    ),
                ) { "HDRNet input shape changed: ${modelInput.shape().contentToString()}" }
                check(modelOutput.dataType() == DataType.FLOAT32)
                check(
                    modelOutput.shape().contentEquals(
                        intArrayOf(
                            1,
                            DngPhotonProfileGainTableGenerator.HDRNET_GRID_HEIGHT,
                            DngPhotonProfileGainTableGenerator.HDRNET_GRID_WIDTH,
                            DngPhotonProfileGainTableGenerator.HDRNET_GRID_DEPTH,
                            1,
                            DngPhotonProfileGainTableGenerator.HDRNET_COEFFICIENT_COUNT,
                        ),
                    ),
                ) { "HDRNet output shape changed: ${modelOutput.shape().contentToString()}" }
                hdrNetInterpreter = candidate
                PLog.i(
                    TAG,
                    "MGC HDRNet loaded: asset=$HDRNET_MODEL_ASSET input=" +
                        "${modelInput.shape().contentToString()} output=" +
                        modelOutput.shape().contentToString(),
                )
                candidate
            } catch (error: Throwable) {
                candidate.close()
                throw error
            }
        }.onFailure { error ->
            PLog.e(TAG, "Unable to initialize MGC HDRNet", error)
        }.getOrNull()
    }

    private fun uploadProfileGainTableTexture(map: DngProfileGainTableMap): Int? {
        val textureSize = IntArray(1)
        GLES30.glGetIntegerv(GLES30.GL_MAX_TEXTURE_SIZE, textureSize, 0)
        val textureWidth = map.mapPointsN
        val textureHeight = map.mapPointsH * map.mapPointsV
        if (textureWidth > textureSize[0] || textureHeight > textureSize[0]) {
            PLog.e(
                TAG,
                "PGTM gain texture ${textureWidth}x$textureHeight exceeds GL_MAX_TEXTURE_SIZE=" +
                    textureSize[0],
            )
            return null
        }
        RawGlesProgram.logErrors("before PGTM gain texture upload")
        val gainBuffer = ByteBuffer.allocateDirect(map.gains.size * Float.SIZE_BYTES)
            .order(ByteOrder.nativeOrder())
            .asFloatBuffer()
            .put(map.gains)
        gainBuffer.position(0)
        val textureIds = IntArray(1)
        GLES30.glGenTextures(1, textureIds, 0)
        if (textureIds[0] == 0) {
            PLog.e(TAG, "Unable to allocate ProfileGainTableMap texture")
            return null
        }
        GLES30.glBindBuffer(GLES30.GL_PIXEL_UNPACK_BUFFER, 0)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, textureIds[0])
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ROW_LENGTH, 0)
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 1)
        GLES30.glTexImage2D(
            GLES30.GL_TEXTURE_2D,
            0,
            GLES30.GL_R32F,
            textureWidth,
            textureHeight,
            0,
            GLES30.GL_RED,
            GLES30.GL_FLOAT,
            gainBuffer,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MIN_FILTER,
            GLES30.GL_NEAREST,
        )
        GLES30.glTexParameteri(
            GLES30.GL_TEXTURE_2D,
            GLES30.GL_TEXTURE_MAG_FILTER,
            GLES30.GL_NEAREST,
        )
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
        GLES30.glPixelStorei(GLES30.GL_UNPACK_ALIGNMENT, 4)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        val error = GLES30.glGetError()
        if (error != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "PGTM gain texture upload failed: glError=$error")
            GLES30.glDeleteTextures(1, textureIds, 0)
            return null
        }
        return textureIds[0]
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
        const val HDRNET_MODEL_ASSET = "mgc_hdrnet/hdrnet_coefficients.tflite"
        const val LINEAR_RGB_TEXTURE_UNIT = 0
        const val GLES31_MIN_SSBO_BYTES = 16L * 1024L * 1024L
    }
}
