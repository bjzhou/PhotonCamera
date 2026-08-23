package com.hinnka.mycamera.raw

import android.graphics.Rect
import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.processor.GlesComputeWorkGroup
import com.hinnka.mycamera.processor.GlesGpuCompletion
import com.hinnka.mycamera.processor.GlesGpuScheduler
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.roundToInt


/**
 * GLES 3.1 compute passes for the current Photon Local Laplacian + legacy Google BGU generator.
 *
 * The equations and boundary handling intentionally mirror [DngPhotonLocalToneMapper]. Each
 * pyramid level occupies a disjoint range in one SSBO so a pass can read one level and write the
 * next without allocating or copying full-resolution CPU arrays.
 */
internal object DngPhotonLocalToneMapGpuShaders {
    enum class Pass {
        PREPARE_SOURCE,
        NORMALIZE_LOG,
        CLEAR_UINT,
        DOWNSAMPLE,
        REMAP,
        ACCUMULATE_LAPLACIAN,
        COPY_RANGE,
        RECONSTRUCT,
        FILTERED_LOG_RANGE,
        LOG_HISTOGRAM,
        FINALIZE_SDR_TARGET,
        BGU_HISTOGRAM,
        BGU_BLUR_Z,
        BGU_BLUR_Y,
        BGU_BLUR_X,
        BGU_SOLVE,
        GAIN_CURVES,
    }

    const val HISTOGRAM_BIN_COUNT = 32_768
    const val BGU_FILTER_RADIUS = 3
    const val BGU_COMPONENT_COUNT = 5
    const val BGU_HISTOGRAM_LOCAL_SIZE = 128

    val sources: Array<String> by lazy {
        arrayOf(
            prepareSource,
            normalizeLog,
            clearUint,
            downsample,
            remap,
            accumulateLaplacian,
            copyRange,
            reconstruct,
            filteredLogRange,
            logHistogram,
            finalizeSdrTarget,
            bguHistogram,
            bguBlurZ,
            bguBlurY,
            bguBlurX,
            bguSolve,
            gainCurves,
        ).also { require(it.size == Pass.entries.size) }
    }

    private val prepareSource = """
        #version 310 es
        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer CellSamples {
            float cellSamples[];
        };
        layout(std430, binding = 1) writeonly buffer LinearSource {
            float sourceValues[];
        };
        layout(std430, binding = 2) buffer SourceRange {
            uint sourceRange[];
        };
        uniform ivec2 uGridSize;
        uniform ivec2 uSampleSize;

        void main() {
            ivec2 position = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(position, uSampleSize))) return;
            ivec2 cell = position >> 4;
            ivec2 localPosition = position & 15;
            int cellIndex = cell.y * uGridSize.x + cell.x;
            int localIndex = localPosition.y * 16 + localPosition.x;
            float value = max(cellSamples[cellIndex * 256 + localIndex], 0.0);
            sourceValues[position.y * uSampleSize.x + position.x] = value;
            // Source values are non-negative, so IEEE-754 bit order is numerical order.
            uint bits = floatBitsToUint(value);
            atomicMin(sourceRange[0], bits);
            atomicMax(sourceRange[1], bits);
        }
    """.trimIndent()

    private val normalizeLog = """
        #version 310 es
        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer LinearSource {
            float sourceValues[];
        };
        layout(std430, binding = 1) readonly buffer SourceRange {
            uint sourceRange[];
        };
        layout(std430, binding = 2) writeonly buffer GaussianPyramid {
            float gaussian[];
        };
        uniform ivec2 uSampleSize;
        uniform int uOutputOffset;
        uniform float uExposureGain;
        const float PAPER_EPS = 2.220446e-16;
        const float RANGE_EPS = 1e-5;

        void main() {
            ivec2 position = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(position, uSampleSize))) return;
            int index = position.y * uSampleSize.x + position.x;
            float minimumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[0]) + PAPER_EPS
            );
            float maximumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[1]) + PAPER_EPS
            );
            float logRange = maximumLog - minimumLog;
            float value = log(uExposureGain * sourceValues[index] + PAPER_EPS);
            gaussian[uOutputOffset + index] = logRange > RANGE_EPS
                ? clamp((value - minimumLog) / logRange, 0.0, 1.0)
                : 1.0;
        }
    """.trimIndent()

    private val clearUint = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp int;

        layout(std430, binding = 0) writeonly buffer Destination {
            uint values[];
        };
        uniform int uCount;
        uniform uint uValue;

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index < uCount) values[index] = uValue;
        }
    """.trimIndent()

    private val downsample = """
        #version 310 es
        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer SourceBuffer {
            float sourceValues[];
        };
        layout(std430, binding = 1) writeonly buffer DestinationBuffer {
            float destinationValues[];
        };
        uniform ivec2 uSourceSize;
        uniform ivec2 uDestinationSize;
        uniform int uSourceOffset;
        uniform int uDestinationOffset;

        float filterWeight(int delta) {
            int distance = abs(delta);
            return distance == 0 ? 0.40 : (distance == 1 ? 0.25 : 0.05);
        }

        void main() {
            ivec2 outputPosition = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(outputPosition, uDestinationSize))) return;
            ivec2 center = outputPosition * 2;
            float sum = 0.0;
            float weightSum = 0.0;
            for (int dy = -2; dy <= 2; ++dy) {
                int sourceY = center.y + dy;
                if (sourceY < 0 || sourceY >= uSourceSize.y) continue;
                float wy = filterWeight(dy);
                for (int dx = -2; dx <= 2; ++dx) {
                    int sourceX = center.x + dx;
                    if (sourceX < 0 || sourceX >= uSourceSize.x) continue;
                    float weight = wy * filterWeight(dx);
                    sum += sourceValues[
                        uSourceOffset + sourceY * uSourceSize.x + sourceX
                    ] * weight;
                    weightSum += weight;
                }
            }
            int outputIndex =
                uDestinationOffset + outputPosition.y * uDestinationSize.x + outputPosition.x;
            destinationValues[outputIndex] = sum / max(weightSum, 1e-8);
        }
    """.trimIndent()

    private val remap = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer GaussianPyramid {
            float gaussian[];
        };
        layout(std430, binding = 1) writeonly buffer RemappedPyramid {
            float remapped[];
        };
        layout(std430, binding = 2) readonly buffer SourceRange {
            uint sourceRange[];
        };
        uniform int uCount;
        uniform int uSourceOffset;
        uniform int uDestinationOffset;
        uniform float uReference;
        uniform float uRangeSigma;
        uniform float uDetailExponent;
        uniform float uEdgeSlope;
        uniform float uExposureGain;
        const float PAPER_EPS = 2.220446e-16;
        const float RANGE_EPS = 1e-5;

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uCount) return;
            float minimumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[0]) + PAPER_EPS
            );
            float maximumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[1]) + PAPER_EPS
            );
            float sigma = uRangeSigma / max(maximumLog - minimumLog, RANGE_EPS);
            float delta = gaussian[uSourceOffset + index] - uReference;
            float magnitude = abs(delta);
            float direction = sign(delta);
            float remappedMagnitude = magnitude <= sigma
                ? sigma * pow(magnitude / max(sigma, PAPER_EPS), uDetailExponent)
                : sigma + uEdgeSlope * (magnitude - sigma);
            remapped[uDestinationOffset + index] = direction * remappedMagnitude;
        }
    """.trimIndent()

    private val accumulateLaplacian = """
        #version 310 es
        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer GuidePyramid {
            float guideValues[];
        };
        layout(std430, binding = 1) readonly buffer RemappedPyramid {
            float remappedValues[];
        };
        layout(std430, binding = 2) buffer OutputLaplacian {
            float outputValues[];
        };
        uniform ivec2 uCurrentSize;
        uniform ivec2 uNextSize;
        uniform int uGuideOffset;
        uniform int uCurrentOffset;
        uniform int uNextOffset;
        uniform int uOutputOffset;
        uniform float uReference;
        uniform float uIntensityStep;

        float filterWeight(int delta) {
            int distance = abs(delta);
            return distance == 0 ? 0.40 : (distance == 1 ? 0.25 : 0.05);
        }

        float expandedValue(ivec2 position) {
            float sum = 0.0;
            float weightSum = 0.0;
            for (int dy = -2; dy <= 2; ++dy) {
                int insertedY = position.y + dy;
                if ((insertedY & 1) != 0) continue;
                int sourceY = insertedY / 2;
                if (sourceY < 0 || sourceY >= uNextSize.y) continue;
                float wy = filterWeight(dy);
                for (int dx = -2; dx <= 2; ++dx) {
                    int insertedX = position.x + dx;
                    if ((insertedX & 1) != 0) continue;
                    int sourceX = insertedX / 2;
                    if (sourceX < 0 || sourceX >= uNextSize.x) continue;
                    float weight = wy * filterWeight(dx);
                    sum += remappedValues[
                        uNextOffset + sourceY * uNextSize.x + sourceX
                    ] * weight;
                    weightSum += weight;
                }
            }
            return sum / max(weightSum, 1e-8);
        }

        void main() {
            ivec2 position = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(position, uCurrentSize))) return;
            int index = position.y * uCurrentSize.x + position.x;
            float distance = abs(guideValues[uGuideOffset + index] - uReference);
            if (distance >= uIntensityStep) return;
            float interpolationWeight = 1.0 - distance / uIntensityStep;
            float laplacian = remappedValues[uCurrentOffset + index] -
                expandedValue(position);
            outputValues[uOutputOffset + index] += interpolationWeight * laplacian;
        }
    """.trimIndent()

    private val copyRange = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer SourceBuffer {
            float sourceValues[];
        };
        layout(std430, binding = 1) writeonly buffer DestinationBuffer {
            float destinationValues[];
        };
        uniform int uCount;
        uniform int uSourceOffset;
        uniform int uDestinationOffset;

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index < uCount) {
                destinationValues[uDestinationOffset + index] =
                    sourceValues[uSourceOffset + index];
            }
        }
    """.trimIndent()

    private val reconstruct = """
        #version 310 es
        layout(local_size_x = 8, local_size_y = 8, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer OutputLaplacian {
            float laplacianValues[];
        };
        layout(std430, binding = 1) buffer ReconstructedPyramid {
            float reconstructedValues[];
        };
        uniform ivec2 uCurrentSize;
        uniform ivec2 uNextSize;
        uniform int uLaplacianOffset;
        uniform int uCurrentOffset;
        uniform int uNextOffset;

        float filterWeight(int delta) {
            int distance = abs(delta);
            return distance == 0 ? 0.40 : (distance == 1 ? 0.25 : 0.05);
        }

        float expandedValue(ivec2 position) {
            float sum = 0.0;
            float weightSum = 0.0;
            for (int dy = -2; dy <= 2; ++dy) {
                int insertedY = position.y + dy;
                if ((insertedY & 1) != 0) continue;
                int sourceY = insertedY / 2;
                if (sourceY < 0 || sourceY >= uNextSize.y) continue;
                float wy = filterWeight(dy);
                for (int dx = -2; dx <= 2; ++dx) {
                    int insertedX = position.x + dx;
                    if ((insertedX & 1) != 0) continue;
                    int sourceX = insertedX / 2;
                    if (sourceX < 0 || sourceX >= uNextSize.x) continue;
                    float weight = wy * filterWeight(dx);
                    sum += reconstructedValues[
                        uNextOffset + sourceY * uNextSize.x + sourceX
                    ] * weight;
                    weightSum += weight;
                }
            }
            return sum / max(weightSum, 1e-8);
        }

        void main() {
            ivec2 position = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(position, uCurrentSize))) return;
            int index = position.y * uCurrentSize.x + position.x;
            reconstructedValues[uCurrentOffset + index] =
                expandedValue(position) + laplacianValues[uLaplacianOffset + index];
        }
    """.trimIndent()

    private val filteredLogRange = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer ReconstructedPyramid {
            float reconstructed[];
        };
        layout(std430, binding = 1) readonly buffer SourceRange {
            uint sourceRange[];
        };
        layout(std430, binding = 2) buffer FilteredRange {
            uint filteredRange[];
        };
        uniform int uCount;
        uniform int uSourceOffset;
        uniform float uExposureGain;
        const float PAPER_EPS = 2.220446e-16;

        uint orderedFloatBits(float value) {
            uint bits = floatBitsToUint(value);
            return (bits & 0x80000000u) != 0u ? ~bits : (bits ^ 0x80000000u);
        }

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uCount) return;
            float minimumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[0]) + PAPER_EPS
            );
            float maximumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[1]) + PAPER_EPS
            );
            float value = reconstructed[uSourceOffset + index];
            uint ordered = orderedFloatBits(
                minimumLog + value * (maximumLog - minimumLog)
            );
            atomicMin(filteredRange[0], ordered);
            atomicMax(filteredRange[1], ordered);
        }
    """.trimIndent()

    private val logHistogram = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer ReconstructedPyramid {
            float reconstructed[];
        };
        layout(std430, binding = 1) readonly buffer SourceRange {
            uint sourceRange[];
        };
        layout(std430, binding = 2) readonly buffer HistogramRange {
            uint histogramRange[];
        };
        layout(std430, binding = 3) buffer Histogram {
            uint histogram[];
        };
        uniform int uCount;
        uniform int uSourceOffset;
        uniform int uBinCount;
        uniform float uExposureGain;
        const float PAPER_EPS = 2.220446e-16;
        const float RANGE_EPS = 1e-5;

        float orderedFloatValue(uint ordered) {
            uint bits = (ordered & 0x80000000u) != 0u
                ? (ordered ^ 0x80000000u)
                : ~ordered;
            return uintBitsToFloat(bits);
        }

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uCount) return;
            float minimumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[0]) + PAPER_EPS
            );
            float maximumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[1]) + PAPER_EPS
            );
            float filteredLog = minimumLog +
                reconstructed[uSourceOffset + index] * (maximumLog - minimumLog);
            // Mali r44p1 preserves the readonly SSBO access qualifier when an array element is
            // passed directly to a user function, then rejects the call because the value
            // parameter is unqualified. Materialize plain local values before conversion.
            uint rangeMinimumOrdered = histogramRange[0];
            uint rangeMaximumOrdered = histogramRange[1];
            float rangeMinimum = orderedFloatValue(rangeMinimumOrdered);
            float rangeMaximum = orderedFloatValue(rangeMaximumOrdered);
            float coordinate = (filteredLog - rangeMinimum) /
                max(rangeMaximum - rangeMinimum, RANGE_EPS);
            int binIndex = int(floor(clamp(coordinate, 0.0, 1.0) * float(uBinCount - 1)));
            atomicAdd(histogram[binIndex], 1u);
        }
    """.trimIndent()

    private val finalizeSdrTarget = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer ReconstructedPyramid {
            float reconstructed[];
        };
        layout(std430, binding = 1) readonly buffer SourceRange {
            uint sourceRange[];
        };
        layout(std430, binding = 2) writeonly buffer ToneMappedTarget {
            float target[];
        };
        uniform int uCount;
        uniform int uSourceOffset;
        uniform float uPreToneMapExposureGain;
        uniform float uFilteredUpper;
        uniform float uOutputExponent;
        uniform float uOutputUpper;
        const float PAPER_EPS = 2.220446e-16;

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uCount) return;
            float minimumLog = log(
                uPreToneMapExposureGain * uintBitsToFloat(sourceRange[0]) + PAPER_EPS
            );
            float maximumLog = log(
                uPreToneMapExposureGain * uintBitsToFloat(sourceRange[1]) + PAPER_EPS
            );
            float filteredLog = minimumLog +
                reconstructed[uSourceOffset + index] * (maximumLog - minimumLog);
            float filteredLinear = max(exp(filteredLog) - PAPER_EPS, 0.0);
            float normalized = uFilteredUpper > 0.0
                ? filteredLinear / uFilteredUpper
                : 0.0;
            float mapped = uOutputUpper *
                pow(max(normalized, 0.0), uOutputExponent);
            target[index] = mapped / uPreToneMapExposureGain;
        }
    """.trimIndent()

    private val bguHistogram = """
        #version 310 es
        layout(local_size_x = $BGU_HISTOGRAM_LOCAL_SIZE, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer LinearSource {
            float sourceValues[];
        };
        layout(std430, binding = 1) readonly buffer ToneMappedTarget {
            float targetValues[];
        };
        layout(std430, binding = 2) writeonly buffer BilateralHistogram {
            float histogram[];
        };
        uniform ivec2 uSampleSize;
        uniform ivec2 uExtendedGridSize;
        uniform int uRangeBinCount;
        uniform int uRangePlaneCount;
        uniform float uGuideAlpha;

        float curvedGuide(float value) {
            float x = clamp(value, 0.0, 1.0);
            return clamp(x / max((1.0 - uGuideAlpha) + uGuideAlpha * x, 1e-6), 0.0, 1.0);
        }

        void main() {
            int item = int(gl_LocalInvocationIndex);
            int itemCount = uRangePlaneCount * 5;
            if (item >= itemCount) return;
            ivec2 extendedCell = ivec2(gl_WorkGroupID.xy);
            int z = item / 5;
            int component = item - z * 5;
            ivec2 gridCell = extendedCell - ivec2(3);
            float sum = 0.0;
            for (int localY = 0; localY < 16; ++localY) {
                int sampleY = clamp(gridCell.y * 16 + localY, 0, uSampleSize.y - 1);
                for (int localX = 0; localX < 16; ++localX) {
                    int sampleX = clamp(gridCell.x * 16 + localX, 0, uSampleSize.x - 1);
                    int sampleIndex = sampleY * uSampleSize.x + sampleX;
                    float sourceValue = clamp(sourceValues[sampleIndex], 0.0, 1.0);
                    int sampleZ = clamp(
                        int(round(curvedGuide(sourceValue) * float(uRangeBinCount))),
                        0,
                        uRangeBinCount
                    );
                    if (sampleZ != z) continue;
                    // Fit the unexposed Local Laplacian target. Rendering applies the resulting
                    // scalar gain after the engine's BaselineExposure stage.
                    float x = sourceValue;
                    float y = max(targetValues[sampleIndex], 0.0);
                    if (component == 0) sum += x * x;
                    else if (component == 1) sum += x;
                    else if (component == 2) sum += 1.0;
                    else if (component == 3) sum += y * x;
                    else sum += y;
                }
            }
            int cellIndex = extendedCell.y * uExtendedGridSize.x + extendedCell.x;
            histogram[(cellIndex * uRangePlaneCount + z) * 5 + component] = sum;
        }
    """.trimIndent()

    private val bguBlurZ = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer InputGrid {
            float inputValues[];
        };
        layout(std430, binding = 1) writeonly buffer OutputGrid {
            float outputValues[];
        };
        uniform ivec2 uGridSize;
        uniform int uRangePlaneCount;
        uniform int uElementCount;

        float blurWeight(int distance) {
            return distance == 0 ? 1.0 :
                (distance == 1 ? 0.125 :
                (distance == 2 ? (1.0 / 27.0) : (1.0 / 64.0)));
        }

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uElementCount) return;
            int component = index % 5;
            int planeIndex = index / 5;
            int z = planeIndex % uRangePlaneCount;
            int cellIndex = planeIndex / uRangePlaneCount;
            float sum = 0.0;
            for (int delta = -3; delta <= 3; ++delta) {
                int sampleZ = z + delta;
                if (sampleZ < 0 || sampleZ >= uRangePlaneCount) continue;
                int sourceIndex =
                    (cellIndex * uRangePlaneCount + sampleZ) * 5 + component;
                sum += inputValues[sourceIndex] * blurWeight(abs(delta));
            }
            outputValues[index] = sum;
        }
    """.trimIndent()

    private val bguBlurY = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer InputGrid {
            float inputValues[];
        };
        layout(std430, binding = 1) writeonly buffer OutputGrid {
            float outputValues[];
        };
        uniform ivec2 uExtendedGridSize;
        uniform int uOutputHeight;
        uniform int uRangePlaneCount;
        uniform int uElementCount;

        float blurWeight(int distance) {
            return distance == 0 ? 1.0 :
                (distance == 1 ? 0.125 :
                (distance == 2 ? (1.0 / 27.0) : (1.0 / 64.0)));
        }

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uElementCount) return;
            int component = index % 5;
            int planeIndex = index / 5;
            int z = planeIndex % uRangePlaneCount;
            int cellIndex = planeIndex / uRangePlaneCount;
            int x = cellIndex % uExtendedGridSize.x;
            int y = cellIndex / uExtendedGridSize.x;
            float sum = 0.0;
            for (int delta = -3; delta <= 3; ++delta) {
                int sourceY = y + 3 + delta;
                int sourceCell = sourceY * uExtendedGridSize.x + x;
                int sourceIndex =
                    (sourceCell * uRangePlaneCount + z) * 5 + component;
                sum += inputValues[sourceIndex] * blurWeight(abs(delta));
            }
            outputValues[index] = sum;
        }
    """.trimIndent()

    private val bguBlurX = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer InputGrid {
            float inputValues[];
        };
        layout(std430, binding = 1) writeonly buffer OutputGrid {
            float outputValues[];
        };
        uniform ivec2 uOutputGridSize;
        uniform int uInputWidth;
        uniform int uRangePlaneCount;
        uniform int uElementCount;

        float blurWeight(int distance) {
            return distance == 0 ? 1.0 :
                (distance == 1 ? 0.125 :
                (distance == 2 ? (1.0 / 27.0) : (1.0 / 64.0)));
        }

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uElementCount) return;
            int component = index % 5;
            int planeIndex = index / 5;
            int z = planeIndex % uRangePlaneCount;
            int cellIndex = planeIndex / uRangePlaneCount;
            int x = cellIndex % uOutputGridSize.x;
            int y = cellIndex / uOutputGridSize.x;
            float sum = 0.0;
            for (int delta = -3; delta <= 3; ++delta) {
                int sourceX = x + 3 + delta;
                int sourceCell = y * uInputWidth + sourceX;
                int sourceIndex =
                    (sourceCell * uRangePlaneCount + z) * 5 + component;
                sum += inputValues[sourceIndex] * blurWeight(abs(delta));
            }
            outputValues[index] = sum;
        }
    """.trimIndent()

    private val bguSolve = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer BlurredGrid {
            float blurred[];
        };
        layout(std430, binding = 1) writeonly buffer GainCoefficients {
            float coefficients[];
        };
        uniform int uCoefficientCount;
        uniform float uRegularization;
        uniform float uIdentitySlope;

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uCoefficientCount) return;
            int offset = index * 5;
            float sumXX = blurred[offset];
            float sumWeight = blurred[offset + 2];
            float sumYX = blurred[offset + 3];
            // ProfileGainTableMap can only express y = gain * x. Fit that model
            // directly instead of fitting an affine intercept that would later
            // become the unstable term intercept / x.
            //
            // Halide's regularizer represents one tenth of an identity sample.
            // Scale that synthetic sample by this cell's mean input energy;
            // adding the raw lambda would be an x=1 sample that dominates dark cells.
            if (sumXX > 0.0 && sumWeight > 0.0) {
                float identityPriorXX = uRegularization * (sumXX / sumWeight);
                coefficients[index] =
                    (sumYX + identityPriorXX * uIdentitySlope) /
                    (sumXX + identityPriorXX);
            } else {
                coefficients[index] = uIdentitySlope;
            }
        }
    """.trimIndent()

    private val gainCurves = """
        #version 310 es
        layout(local_size_x = 128, local_size_y = 1, local_size_z = 1) in;
        precision highp float;
        precision highp int;

        layout(std430, binding = 0) readonly buffer GainCoefficients {
            float coefficients[];
        };
        layout(std430, binding = 1) writeonly buffer GainCurves {
            float gainCurves[];
        };
        layout(r32f, binding = 0) writeonly uniform highp image2D uGainTexture;
        uniform int uCellCount;
        uniform int uPointCount;
        uniform int uRangeBinCount;
        uniform int uRangePlaneCount;
        uniform float uGuideAlpha;
        uniform float uMinTableGain;
        uniform float uMaxTableGain;
        uniform int uDiagnosticMode;
        uniform float uDiagnosticStart;
        uniform float uDiagnosticEnd;
        uniform float uDiagnosticFeather;
        const float CURVE_EPS = 1e-6;

        float smoothUnit(float edge0, float edge1, float value) {
            float amount = clamp(
                (value - edge0) / max(edge1 - edge0, CURVE_EPS),
                0.0,
                1.0
            );
            return amount * amount * (3.0 - 2.0 * amount);
        }

        float diagnosticMask(float inputValue) {
            float enter = uDiagnosticStart <= 0.0 || uDiagnosticFeather <= 0.0
                ? (inputValue >= uDiagnosticStart ? 1.0 : 0.0)
                : smoothUnit(
                    uDiagnosticStart - uDiagnosticFeather,
                    uDiagnosticStart + uDiagnosticFeather,
                    inputValue
                );
            float exit = uDiagnosticEnd >= 1.0 || uDiagnosticFeather <= 0.0
                ? (inputValue <= uDiagnosticEnd ? 1.0 : 0.0)
                : 1.0 - smoothUnit(
                    uDiagnosticEnd - uDiagnosticFeather,
                    uDiagnosticEnd + uDiagnosticFeather,
                    inputValue
                );
            return clamp(min(enter, exit), 0.0, 1.0);
        }

        void main() {
            int outputIndex = int(gl_GlobalInvocationID.x);
            int outputCount = uCellCount * uPointCount;
            if (outputIndex >= outputCount) return;
            int cell = outputIndex / uPointCount;
            int point = outputIndex - cell * uPointCount;
            // Exact black has zero output in a multiplicative DNG map. Reusing the first positive
            // interval's gain keeps the curve continuous without inventing a nonzero intercept.
            int evaluatedPoint = point == 0 ? 1 : point;
            float sourceInput = evaluatedPoint == uPointCount - 1
                ? 1.0
                : float(evaluatedPoint) / float(uPointCount);
            float guide = clamp(
                sourceInput /
                    max((1.0 - uGuideAlpha) + uGuideAlpha * sourceInput, CURVE_EPS),
                0.0,
                1.0
            );
            float rangeCoordinate = guide * float(uRangeBinCount);
            int first = clamp(int(floor(rangeCoordinate)), 0, uRangeBinCount);
            int second = first + 1;
            float amount = rangeCoordinate - float(first);
            int coefficientOffset = cell * uRangePlaneCount;
            float fittedGain = mix(
                coefficients[coefficientOffset + first],
                coefficients[coefficientOffset + second],
                amount
            );
            float trueGain = clamp(
                fittedGain,
                uMinTableGain,
                uMaxTableGain
            );
            float finalGain = trueGain;
            if (uDiagnosticMode >= 0) {
                float mask = diagnosticMask(sourceInput);
                finalGain = uDiagnosticMode == 0
                    ? mix(1.0, trueGain, mask)
                    : mix(trueGain, 1.0, mask);
            }
            float outputGain = clamp(
                finalGain,
                uMinTableGain,
                uMaxTableGain
            );
            gainCurves[outputIndex] = outputGain;
            imageStore(uGainTexture, ivec2(point, cell), vec4(outputGain, 0.0, 0.0, 1.0));
        }
    """.trimIndent()

}

internal data class PhotonGpuPyramidLevel(
    val width: Int,
    val height: Int,
    val offset: Int,
) {
    val size: Int
        get() = width * height
}

internal data class PhotonGpuPyramidLayout(
    val levels: List<PhotonGpuPyramidLevel>,
    val floatCount: Int,
) {
    companion object {
        fun create(width: Int, height: Int): PhotonGpuPyramidLayout {
            require(width > 0 && height > 0)
            val minimumDimension = min(width, height)
            val requested = ceil(ln(minimumDimension.toDouble()) - ln(2.0)).toInt() + 2
            var possible = 1
            var dimension = minimumDimension
            while (dimension > 1) {
                possible++
                dimension = (dimension + 1) / 2
            }
            val levelCount = requested.coerceIn(1, possible)
            val levels = ArrayList<PhotonGpuPyramidLevel>(levelCount)
            var levelWidth = width
            var levelHeight = height
            var offset = 0
            repeat(levelCount) {
                levels += PhotonGpuPyramidLevel(levelWidth, levelHeight, offset)
                offset += levelWidth * levelHeight
                levelWidth = (levelWidth + 1) / 2
                levelHeight = (levelHeight + 1) / 2
            }
            return PhotonGpuPyramidLayout(levels, offset)
        }
    }
}

/** Compute shaders for capture-time DNG ProfileGainTableMap preparation. */
internal object DngPhotonProfileGainTableInputShader {
    val CELL_SAMPLES = """
        #version 310 es

        layout(local_size_x = 16, local_size_y = 8, local_size_z = 1) in;

        precision highp float;
        precision highp int;
        precision highp usampler2D;
        precision highp sampler3D;

        uniform highp usampler2D uRawTexture;
        uniform sampler2D uLensShadingMap;
        uniform sampler3D uHueSatMap;
        uniform ivec2 uImageSize;
        uniform ivec2 uRawTextureOrigin;
        uniform ivec4 uSampleSourceBounds;
        uniform ivec4 uStatsBounds;
        uniform ivec2 uGridSize;
        uniform int uSamplesPerPixel;
        uniform int uCfaPattern;
        uniform vec4 uBlackLevel;
        uniform float uWhiteLevel;
        uniform mat3 uColorCorrectionMatrix;
        uniform int uLensShadingEnabled;
        uniform int uLensShadingUsesDngGrid;
        uniform vec2 uLensShadingMapSize;
        uniform vec4 uLensShadingGrid;
        uniform vec2 uLensShadingBoundsOrigin;
        uniform vec2 uLensShadingBoundsSize;
        uniform int uHueSatEnabled;
        uniform ivec3 uHueSatDivisions;
        uniform int uHueSatEncoding;
        uniform int uHueSatSupportOverrange;
        uniform int uWarpCount;

        layout(std430, binding = 0) writeonly buffer CellSampleBuffer {
            float cellSamples[];
        };
        layout(std430, binding = 1) readonly buffer WarpRectilinearBuffer {
            float warpParameters[];
        };

        const uint CELL_SAMPLE_COUNT = 256u;
        const uint CELL_LANE_COUNT = 128u;

        ${DcpHueSatMapGl.SHADER_FUNCTIONS}

        int expandedBlockSize(int cfaPattern) {
            if (cfaPattern >= 8 && cfaPattern <= 11) return 4;
            if (cfaPattern >= 4 && cfaPattern <= 7) return 2;
            return 1;
        }

        int baseBayerPattern(int cfaPattern) {
            if (cfaPattern >= 8 && cfaPattern <= 11) return cfaPattern - 8;
            if (cfaPattern >= 4 && cfaPattern <= 7) return cfaPattern - 4;
            return clamp(cfaPattern, 0, 3);
        }

        int bayerChannelIndex(int cfaPattern, int xParity, int yParity) {
            if (cfaPattern == 1) {
                if (yParity == 0 && xParity == 0) return 1;
                if (yParity == 0 && xParity == 1) return 0;
                if (yParity == 1 && xParity == 0) return 3;
                return 2;
            }
            if (cfaPattern == 2) {
                if (yParity == 0 && xParity == 0) return 2;
                if (yParity == 0 && xParity == 1) return 3;
                if (yParity == 1 && xParity == 0) return 0;
                return 1;
            }
            if (cfaPattern == 3) {
                if (yParity == 0 && xParity == 0) return 3;
                if (yParity == 0 && xParity == 1) return 2;
                if (yParity == 1 && xParity == 0) return 1;
                return 0;
            }
            if (yParity == 0 && xParity == 0) return 0;
            if (yParity == 0 && xParity == 1) return 1;
            if (yParity == 1 && xParity == 0) return 2;
            return 3;
        }

        int channelIndexForPixel(ivec2 coord) {
            int blockSize = expandedBlockSize(uCfaPattern);
            return bayerChannelIndex(
                baseBayerPattern(uCfaPattern),
                (coord.x / blockSize) & 1,
                (coord.y / blockSize) & 1
            );
        }

        float normalizeRaw(uint raw, int channelIndex) {
            float black = uBlackLevel[clamp(channelIndex, 0, 3)];
            float range = max(uWhiteLevel - black, 1.0);
            return clamp((float(raw) - black) / range, 0.0, 1.0);
        }

        int lensShadingChannelAt(int channelIndex, ivec2 coord) {
            if (uLensShadingUsesDngGrid != 0 || channelIndex == 0 || channelIndex == 3) {
                return channelIndex;
            }
            return (coord.y & 1) == 0 ? 1 : 2;
        }

        float lensShadingGainAt(int channelIndex, ivec2 coord) {
            if (uLensShadingEnabled == 0) return 1.0;
            vec2 norm = (vec2(coord) + vec2(0.5)) / vec2(uImageSize);
            vec2 uv = norm;
            if (uLensShadingUsesDngGrid != 0) {
                vec2 boundsSize = max(uLensShadingBoundsSize, vec2(1.0));
                norm = (vec2(coord) + vec2(0.5) - uLensShadingBoundsOrigin) / boundsSize;
                vec2 mapIndex = (norm - uLensShadingGrid.xy) /
                    max(uLensShadingGrid.zw, vec2(1e-8));
                uv = (mapIndex + vec2(0.5)) / max(uLensShadingMapSize, vec2(1.0));
            }
            vec4 gains = texture(uLensShadingMap, uv);
            return max(gains[lensShadingChannelAt(channelIndex, coord)], 0.0);
        }

        float profileSceneInput(vec3 cameraRgb) {
            vec3 profileRgb = max(uColorCorrectionMatrix * cameraRgb, vec3(0.0));
            if (uHueSatEnabled != 0) {
                profileRgb = dngApplyHueSatMap(
                    profileRgb,
                    uHueSatMap,
                    uHueSatDivisions,
                    uHueSatEncoding,
                    uHueSatSupportOverrange != 0
                );
            }
            const vec3 PAPER_INTENSITY_WEIGHTS = vec3(20.0, 40.0, 1.0) / 61.0;
            // DNG ProfileGainTableMap is defined over a finite [0, 1] scalar input domain.
            // Keep LL, BGU fitting, and the renderer's table coordinate on that exact domain.
            return clamp(dot(profileRgb, PAPER_INTENSITY_WEIGHTS), 0.0, 1.0);
        }

        float sampleSceneInput(ivec2 baseCoord) {
            if (uSamplesPerPixel >= 3) {
                ivec2 coord = clamp(baseCoord, ivec2(0), uImageSize - ivec2(1));
                uvec3 rawRgb = texelFetch(uRawTexture, coord - uRawTextureOrigin, 0).rgb;
                return profileSceneInput(vec3(
                    normalizeRaw(rawRgb.r, 0) * lensShadingGainAt(0, coord),
                    normalizeRaw(rawRgb.g, 1) * lensShadingGainAt(1, coord),
                    normalizeRaw(rawRgb.b, 3) * lensShadingGainAt(3, coord)
                ));
            }

            vec3 sums = vec3(0.0);
            vec3 counts = vec3(0.0);
            for (int dy = 0; dy < 2; ++dy) {
                for (int dx = 0; dx < 2; ++dx) {
                    ivec2 coord = clamp(baseCoord + ivec2(dx, dy), ivec2(0), uImageSize - ivec2(1));
                    int channel = channelIndexForPixel(coord);
                    float value =
                        normalizeRaw(
                            texelFetch(uRawTexture, coord - uRawTextureOrigin, 0).r,
                            channel
                        ) *
                        lensShadingGainAt(channel, coord);
                    if (channel == 0) {
                        sums.r += value;
                        counts.r += 1.0;
                    } else if (channel == 3) {
                        sums.b += value;
                        counts.b += 1.0;
                    } else {
                        sums.g += value;
                        counts.g += 1.0;
                    }
                }
            }
            float fallback = (sums.r + sums.g + sums.b) /
                max(counts.r + counts.g + counts.b, 1.0);
            return profileSceneInput(vec3(
                counts.r > 0.0 ? sums.r / counts.r : fallback,
                counts.g > 0.0 ? sums.g / counts.g : fallback,
                counts.b > 0.0 ? sums.b / counts.b : fallback
            ));
        }

        vec2 warpDestinationToSource(vec2 destinationPixel) {
            vec2 sourcePixel = destinationPixel;
            // Rendering applies opcodes in file order. Sampling the original RAW from the final
            // output coordinate composes their destination-to-source mappings in reverse order.
            for (int warpIndex = uWarpCount - 1; warpIndex >= 0; --warpIndex) {
                int offset = warpIndex * 8;
                vec4 radial = vec4(
                    warpParameters[offset],
                    warpParameters[offset + 1],
                    warpParameters[offset + 2],
                    warpParameters[offset + 3]
                );
                vec2 tangential = vec2(
                    warpParameters[offset + 4],
                    warpParameters[offset + 5]
                );
                vec2 center = vec2(
                    warpParameters[offset + 6],
                    warpParameters[offset + 7]
                ) * vec2(uImageSize);
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
            ivec2 cell = ivec2(gl_WorkGroupID.xy);
            uint localIndex = gl_LocalInvocationIndex;
            int cellIndex = cell.y * uGridSize.x + cell.x;
            int statsWidth = uStatsBounds.z - uStatsBounds.x;
            int statsHeight = uStatsBounds.w - uStatsBounds.y;

            int startX = uStatsBounds.x + (cell.x * statsWidth) / uGridSize.x;
            int endX = uStatsBounds.x +
                (((cell.x + 1) * statsWidth + uGridSize.x - 1) / uGridSize.x);
            int startY = uStatsBounds.y + (cell.y * statsHeight) / uGridSize.y;
            int endY = uStatsBounds.y +
                (((cell.y + 1) * statsHeight + uGridSize.y - 1) / uGridSize.y);
            startX = (startX + 1) & ~1;
            startY = (startY + 1) & ~1;
            endX = min(endX & ~1, uStatsBounds.z);
            endY = min(endY & ~1, uStatsBounds.w);
            bool validCell = endX - startX >= 2 && endY - startY >= 2;

            for (
                uint sampleIndex = localIndex;
                sampleIndex < CELL_SAMPLE_COUNT;
                sampleIndex += CELL_LANE_COUNT
            ) {
                float inputValue = 0.0;
                if (validCell) {
                    int localX = int(sampleIndex & 15u);
                    int localY = int(sampleIndex >> 4u);
                    int cellWidth = max(endX - startX, 2);
                    int cellHeight = max(endY - startY, 2);
                    int x = startX + ((localX * 2 + 1) * cellWidth) / 32;
                    int y = startY + ((localY * 2 + 1) * cellHeight) / 32;
                    vec2 sourcePixel = warpDestinationToSource(vec2(x, y));
                    ivec2 sourceCoord = ivec2(round(sourcePixel)) & ~ivec2(1);
                    sourceCoord = clamp(sourceCoord, ivec2(0), uImageSize - ivec2(2));
                    // A streamed dispatch owns only its non-overlapping source core. The uploaded
                    // texture also contains the right/bottom support needed by the 2x2 CFA read.
                    // Dispatching every cell for every source tile preserves the exact global
                    // sampling coordinates, including WarpRectilinear, without a full RAW texture.
                    if (any(lessThan(sourceCoord, uSampleSourceBounds.xy)) ||
                        any(greaterThanEqual(sourceCoord, uSampleSourceBounds.zw))) {
                        continue;
                    }
                    inputValue = sampleSceneInput(sourceCoord);
                }
                cellSamples[cellIndex * 256 + int(sampleIndex)] = inputValue;
            }
        }
    """.trimIndent()

}

internal class DngPhotonProfileGainTableAlgorithm {
    fun interface StreamingRawUploader {
        fun upload(
            buffer: ByteBuffer,
            rowStride: Int,
            region: RawTileRect,
            samplesPerPixel: Int,
        ): Int
    }

    data class Input(
        val rawTextureId: Int,
        val streamingRawData: ByteBuffer? = null,
        val streamingRowStride: Int = 0,
        val width: Int,
        val height: Int,
        val rawTextureWidth: Int = width,
        val rawTextureHeight: Int = height,
        val samplesPerPixel: Int,
        val metadata: RawMetadata,
        val statsBounds: Rect?,
        val baselineExposureEv: Float,
        val colorCorrectionMatrix: FloatArray,
        val hueSatMap: DcpHueSatMap?,
        val hueSatMapSupportsOverrange: Boolean,
        val warpRectilinear: FloatArray? = null,
        val lensShadingDescription: String,
        val bindLensShading: (programId: Int) -> Unit,
        val ensureHueSatTexture: (DcpHueSatMap) -> Int,
        val ensureDummyHueSatTexture: () -> Int,
        val installProfileGainTableTexture: (DngProfileGainTableMap, Int) -> Unit,
        val isNoOpWarp: (FloatArray) -> Boolean,
        val streamingRawUploader: StreamingRawUploader? = null,
        val releaseStreamingRawTexture: () -> Unit = {},
    )

    data class Output(val map: DngProfileGainTableMap)

    private data class GpuPhotonGainCurves(
        val gains: FloatArray,
        val textureId: Int,
    )

    private var cellSamplesProgram = 0
    private val photonPrograms = IntArray(DngPhotonLocalToneMapGpuShaders.Pass.entries.size)

    fun initialize(): Boolean {
        if (cellSamplesProgram == 0) {
            cellSamplesProgram = RawGlesProgram.compileCompute(
                DngPhotonProfileGainTableInputShader.CELL_SAMPLES,
                "DNG_PGTM_CELL_SAMPLES",
            )
        }
        DngPhotonLocalToneMapGpuShaders.sources.forEachIndexed { index, source ->
            if (photonPrograms[index] == 0) {
                val pass = DngPhotonLocalToneMapGpuShaders.Pass.entries[index]
                photonPrograms[index] = RawGlesProgram.compileCompute(
                    source,
                    "DNG_PHOTON_PGTM_${pass.name}",
                )
            }
        }
        return cellSamplesProgram != 0 && photonPrograms.all { it != 0 }
    }

    fun execute(input: Input): Output? {
        if (!initialize()) return null
        return generate(input)?.let(::Output)
    }

    fun release() {
        if (cellSamplesProgram != 0) GLES31.glDeleteProgram(cellSamplesProgram)
        cellSamplesProgram = 0
        photonPrograms.forEachIndexed { index, program ->
            if (program != 0) GLES31.glDeleteProgram(program)
            photonPrograms[index] = 0
        }
    }

    private fun generate(input: Input): DngProfileGainTableMap? {
        val rawTextureId = input.rawTextureId
        val streamingRawData = input.streamingRawData
        val streamingRowStride = input.streamingRowStride
        val width = input.width
        val height = input.height
        val rawTextureWidth = input.rawTextureWidth
        val rawTextureHeight = input.rawTextureHeight
        val samplesPerPixel = input.samplesPerPixel
        val metadata = input.metadata
        val statsBounds = input.statsBounds
        val baselineExposureEv = input.baselineExposureEv
        val colorCorrectionMatrix = input.colorCorrectionMatrix
        val hueSatMap = input.hueSatMap
        val hueSatMapSupportsOverrange = input.hueSatMapSupportsOverrange
        val warpRectilinear = input.warpRectilinear
        val streamingInput = streamingRawData != null
        if ((!streamingInput && rawTextureId == 0) ||
            (streamingInput && streamingRowStride <= 0) ||
            width <= 0 || height <= 0 ||
            rawTextureWidth <= 0 || rawTextureHeight <= 0 || metadata.whiteLevel <= 0f
        ) {
            PLog.e(
                TAG,
                "GPU RAW PGTM input invalid: texture=$rawTextureId streaming=$streamingInput " +
                    "size=${width}x$height " +
                    "source=${rawTextureWidth}x$rawTextureHeight white=${metadata.whiteLevel}",
            )
            return null
        }
        val photonProgramsReady = photonPrograms.all { it != 0 }
        if (cellSamplesProgram == 0 || !photonProgramsReady) {
            PLog.e(
                TAG,
                "GPU RAW PGTM programs unavailable: samples=$cellSamplesProgram " +
                    "photonProgramsReady=$photonProgramsReady",
            )
            return null
        }
        val safeStatsBounds = sanitizePgtmStatsBounds(
            statsBounds,
            rawTextureWidth,
            rawTextureHeight,
        ) ?: run {
            PLog.e(
                TAG,
                "GPU RAW PGTM stats bounds invalid: source=${rawTextureWidth}x$rawTextureHeight " +
                    "bounds=$statsBounds",
            )
            return null
        }
        val gridSize = DngPhotonProfileGainTableGenerator.gridSizeFor(width, height)
        val gridWidth = gridSize.getOrElse(0) { 0 }
        val gridHeight = gridSize.getOrElse(1) { 0 }
        if (gridWidth <= 0 || gridHeight <= 0) return null
        val activeWarpParameters = ArrayList<Float>()
        warpRectilinear
            ?.takeIf { it.isNotEmpty() && it.size % 8 == 0 }
            ?.let { warps ->
                for (offset in warps.indices step 8) {
                    val parameters = warps.copyOfRange(offset, offset + 8)
                    if (input.isNoOpWarp(parameters)) continue
                    parameters.forEach { activeWarpParameters += it }
                }
        }

        val cellCount = gridWidth * gridHeight
        val sampleFloatCount = cellCount * DngPhotonLocalToneMapper.SAMPLES_PER_CELL
        val streamingTiles = if (streamingInput) {
            RawTilePlanner.plan(
                sourceWidth = rawTextureWidth,
                sourceHeight = rawTextureHeight,
                outputSourceBounds = RawTileRect(0, 0, rawTextureWidth, rawTextureHeight),
                rotation = 0,
                coreEdgePx = STREAMING_TILE_CORE_EDGE_PX,
                supportPx = 2,
                cfaPeriod = RawCfaCorrection.repeatPatternDim(metadata.cfaPattern)[0],
            )
        } else {
            emptyList()
        }
        val bufferIds = IntArray(2)
        val totalStartNs = System.nanoTime()
        GLES31.glGenBuffers(bufferIds.size, bufferIds, 0)
        try {
            val sampleBufferId = bufferIds[0]
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, sampleBufferId)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                sampleFloatCount * Float.SIZE_BYTES,
                null,
                GLES31.GL_DYNAMIC_READ,
            )
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, sampleBufferId)

            val warpBufferId = bufferIds[1]
            val warpBuffer = ByteBuffer.allocateDirect(
                max(activeWarpParameters.size, 1) * Float.SIZE_BYTES
            )
                .order(ByteOrder.nativeOrder())
                .asFloatBuffer()
            if (activeWarpParameters.isEmpty()) {
                warpBuffer.put(0f)
            } else {
                activeWarpParameters.forEach { warpBuffer.put(it) }
            }
            warpBuffer.position(0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, warpBufferId)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                max(activeWarpParameters.size, 1) * Float.SIZE_BYTES,
                warpBuffer,
                GLES31.GL_STATIC_DRAW,
            )
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, warpBufferId)

            GLES31.glUseProgram(cellSamplesProgram)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uRawTexture"),
                RAW_TEXTURE_UNIT,
            )
            // PGTM is later applied to the demosaicked camera-linear image, whose RAW samples
            // already include lens-shading correction. Build its samples in the same domain;
            // otherwise the local map reintroduces lens vignetting into already-corrected flats.
            input.bindLensShading(cellSamplesProgram)
            val activeHueSatMap = hueSatMap?.takeIf { it.isValid }
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + HUE_SAT_TEXTURE_UNIT)
            val hueSatTextureId = activeHueSatMap?.let { map ->
                input.ensureHueSatTexture(map)
            } ?: input.ensureDummyHueSatTexture()
            GLES31.glBindTexture(GLES31.GL_TEXTURE_3D, hueSatTextureId)
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uHueSatMap"),
                HUE_SAT_TEXTURE_UNIT,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uHueSatEnabled"),
                if (activeHueSatMap != null) 1 else 0,
            )
            GLES31.glUniform3i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uHueSatDivisions"),
                activeHueSatMap?.hueDivisions ?: 1,
                activeHueSatMap?.satDivisions ?: 1,
                activeHueSatMap?.valueDivisions ?: 1,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uHueSatEncoding"),
                activeHueSatMap?.encoding ?: DcpHueSatMap.ENCODING_LINEAR,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uHueSatSupportOverrange"),
                if (hueSatMapSupportsOverrange) 1 else 0,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uImageSize"),
                rawTextureWidth,
                rawTextureHeight,
            )
            GLES31.glUniform4i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uStatsBounds"),
                safeStatsBounds.left,
                safeStatsBounds.top,
                safeStatsBounds.right,
                safeStatsBounds.bottom,
            )
            GLES31.glUniform2i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uGridSize"),
                gridWidth,
                gridHeight,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uSamplesPerPixel"),
                samplesPerPixel.coerceAtLeast(1),
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uCfaPattern"),
                metadata.cfaPattern,
            )
            val blackLevel4 = FloatArray(4) { index ->
                metadata.blackLevel.getOrElse(index) {
                    metadata.blackLevel.firstOrNull() ?: 0f
                }
            }
            GLES31.glUniform4fv(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uBlackLevel"),
                1,
                blackLevel4,
                0,
            )
            GLES31.glUniform1f(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uWhiteLevel"),
                metadata.whiteLevel,
            )
            GLES31.glUniform1i(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uWarpCount"),
                activeWarpParameters.size / 8,
            )
            val safeColorCorrectionMatrix = colorCorrectionMatrix.takeIf { matrix ->
                matrix.size >= 9 && matrix.take(9).all { it.isFinite() }
            } ?: floatArrayOf(
                1f, 0f, 0f,
                0f, 1f, 0f,
                0f, 0f, 1f,
            )
            GLES31.glUniformMatrix3fv(
                GLES31.glGetUniformLocation(cellSamplesProgram, "uColorCorrectionMatrix"),
                1,
                false,
                RawToneMappingGl.transposeMatrix3x3(safeColorCorrectionMatrix),
                0,
            )
            val samplesGpuStartNs = System.nanoTime()
            if (streamingInput) {
                val source = requireNotNull(streamingRawData)
                streamingTiles.forEachIndexed { tileIndex, tile ->
                    val working = tile.sourceWorking
                    val streamingTextureId = checkNotNull(input.streamingRawUploader)
                        .upload(
                            buffer = source,
                            rowStride = streamingRowStride,
                            region = working,
                            samplesPerPixel = samplesPerPixel,
                        )
                    GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
                    GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, streamingTextureId)
                    GLES31.glUniform2i(
                        GLES31.glGetUniformLocation(cellSamplesProgram, "uRawTextureOrigin"),
                        working.left,
                        working.top,
                    )
                    GLES31.glUniform4i(
                        GLES31.glGetUniformLocation(cellSamplesProgram, "uSampleSourceBounds"),
                        tile.sourceCore.left,
                        tile.sourceCore.top,
                        tile.sourceCore.right,
                        tile.sourceCore.bottom,
                    )
                    GLES31.glDispatchCompute(gridWidth, gridHeight, 1)
                    if (tileIndex < streamingTiles.lastIndex) {
                        // The next CPU upload overwrites this same texture. A fence is the
                        // ownership boundary required before reusing that storage while the
                        // previous compute dispatch may still be reading it.
                        GlesGpuCompletion.awaitSubmittedWork(
                            label = "PGTM sample tile ${tile.index}",
                            checkGlError = RawGlesProgram::logErrors,
                        )
                        GlesGpuScheduler.yieldToUiRenderer()
                    }
                }
            } else {
                GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
                GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, rawTextureId)
                GLES31.glUniform2i(
                    GLES31.glGetUniformLocation(cellSamplesProgram, "uRawTextureOrigin"),
                    0,
                    0,
                )
                GLES31.glUniform4i(
                    GLES31.glGetUniformLocation(cellSamplesProgram, "uSampleSourceBounds"),
                    0,
                    0,
                    rawTextureWidth,
                    rawTextureHeight,
                )
                GLES31.glDispatchCompute(gridWidth, gridHeight, 1)
            }
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
            RawGlesProgram.logErrors("generateProfileGainTableMapOnGpu sample dispatch")
            val samplesGpuReadyNs = System.nanoTime()

            val plan = DngPhotonProfileGainTableGenerator.plan(
                width = width,
                height = height,
                baselineExposureEv = baselineExposureEv,
                diagnosticBand = DngPgtmDiagnostic.activeBandForSource("$TAG GPU capture"),
                samplingArea = PhotonPgtmSamplingArea(
                    originH = safeStatsBounds.left.toDouble() / rawTextureWidth,
                    originV = safeStatsBounds.top.toDouble() / rawTextureHeight,
                    extentH = safeStatsBounds.width().toDouble() / rawTextureWidth,
                    extentV = safeStatsBounds.height().toDouble() / rawTextureHeight,
                ),
            ) ?: return null
            val planReadyNs = System.nanoTime()
            if (plan.cellCount != cellCount) {
                PLog.e(
                    TAG,
                    "GPU RAW PGTM plan count=${plan.cellCount}, expected=$cellCount",
                )
                return null
            }

            val localToneMapGpuStartNs = System.nanoTime()
            val generated = generatePhotonProfileGainCurvesOnGpu(
                plan = plan,
                sampleBufferId = sampleBufferId,
            ) ?: return null
            val localToneMapGpuReadyNs = System.nanoTime()
            val map =
                DngPhotonProfileGainTableGenerator.mapFromGpuGains(plan, generated.gains)
                    ?: run {
                        GLES30.glDeleteTextures(1, intArrayOf(generated.textureId), 0)
                        return null
                    }
            input.installProfileGainTableTexture(map, generated.textureId)
            val photonPlan = plan.photonPlan
            val photonPreToneMapGain = photonPlan.exposureGain *
                2.0f.pow(photonPlan.parameters.preToneMapExposureBoostEv)
            PLog.d(
                TAG,
                "GPU Photon HDR prepared: size=${width}x$height " +
                    "source=${rawTextureWidth}x$rawTextureHeight " +
                    "streaming=$streamingInput sampleTiles=${streamingTiles.size} " +
                    "statsBounds=$safeStatsBounds " +
                    "grid=${gridWidth}x$gridHeight samplesPerPixel=$samplesPerPixel " +
                    "lsc=${input.lensShadingDescription} " +
                    "warpCount=${activeWarpParameters.size / 8} " +
                    "photonGuide=paperIntensity " +
                    "hueSatOverrange=$hueSatMapSupportsOverrange " +
                    "photonBaselineGain=${photonPlan.exposureGain} " +
                    "photonPreToneMapGain=$photonPreToneMapGain " +
                    "photonLlfLevels=${photonPlan.parameters.localLaplacianIntensityLevels} " +
                    "photonRangeSigma=${photonPlan.parameters.localLaplacianRangeSigma} " +
                    "photonBguRangeSigma=${photonPlan.parameters.bilateralRangeSigma} " +
                    "samplesGpuMs=${(samplesGpuReadyNs - samplesGpuStartNs) / 1_000_000.0} " +
                    "planCpuMs=${(planReadyNs - samplesGpuReadyNs) / 1_000_000.0} " +
                    "localToneMapGpuMs=" +
                    "${(localToneMapGpuReadyNs - localToneMapGpuStartNs) / 1_000_000.0} " +
                    "totalMs=${(localToneMapGpuReadyNs - totalStartNs) / 1_000_000.0}",
            )
            return map
        } catch (error: Exception) {
            PLog.e(TAG, "GPU RAW PGTM preparation failed", error)
            return null
        } finally {
            GLES31.glUseProgram(0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 0, 0)
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, 1, 0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + HUE_SAT_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_3D, 0)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + LENS_SHADING_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
            GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + RAW_TEXTURE_UNIT)
            GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, 0)
            GLES31.glDeleteBuffers(bufferIds.size, bufferIds, 0)
            if (streamingInput) input.releaseStreamingRawTexture()
        }
    }

    private fun generatePhotonProfileGainCurvesOnGpu(
        plan: PhotonProfileGainTablePlan,
        sampleBufferId: Int,
    ): GpuPhotonGainCurves? {
        val photonPlan = plan.photonPlan
        val parameters = photonPlan.parameters
        val preToneMapExposureGain = photonPlan.exposureGain *
            2.0f.pow(parameters.preToneMapExposureBoostEv)
        val gridWidth = plan.grid.mapPointsH
        val gridHeight = plan.grid.mapPointsV
        val sampleWidth = gridWidth * DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val sampleHeight = gridHeight * DngPhotonLocalToneMapper.SAMPLES_PER_CELL_SIDE
        val sampleCount = sampleWidth * sampleHeight
        val pyramid = PhotonGpuPyramidLayout.create(sampleWidth, sampleHeight)
        val rangeBinCount = (1f / parameters.bilateralRangeSigma).roundToInt()
        val rangePlaneCount = rangeBinCount + 2
        val extendedGridWidth =
            gridWidth + 2 * DngPhotonLocalToneMapGpuShaders.BGU_FILTER_RADIUS
        val extendedGridHeight =
            gridHeight + 2 * DngPhotonLocalToneMapGpuShaders.BGU_FILTER_RADIUS
        val componentCount = DngPhotonLocalToneMapGpuShaders.BGU_COMPONENT_COUNT
        val histogramItemCount = rangePlaneCount * componentCount
        check(
            histogramItemCount <=
                DngPhotonLocalToneMapGpuShaders.BGU_HISTOGRAM_LOCAL_SIZE
        ) {
            "Photon BGU histogram requires $histogramItemCount lanes for " +
                "$rangePlaneCount planes x $componentCount components, but shader provides " +
                "${DngPhotonLocalToneMapGpuShaders.BGU_HISTOGRAM_LOCAL_SIZE}"
        }
        val extendedBguFloatCount =
            extendedGridWidth * extendedGridHeight * rangePlaneCount * componentCount
        val yBlurFloatCount =
            extendedGridWidth * gridHeight * rangePlaneCount * componentCount
        val fittedBguFloatCount =
            gridWidth * gridHeight * rangePlaneCount * componentCount
        val coefficientCount = gridWidth * gridHeight * rangePlaneCount
        val gainFloatCount = plan.cellCount * plan.pointCount

        val sourceBuffer = 0
        val gaussianBuffer = 1
        val remappedBuffer = 2
        val laplacianBuffer = 3
        val reconstructedBuffer = 4
        val sourceRangeBuffer = 5
        val histogramRangeBuffer = 6
        val histogramBuffer = 7
        val targetBuffer = 8
        val bguBufferA = 9
        val bguBufferB = 10
        val buffers = IntArray(11)
        val uniformLocations = HashMap<Int, MutableMap<String, Int>>()
        var generatedTextureId = 0

        fun program(pass: DngPhotonLocalToneMapGpuShaders.Pass): Int =
            photonPrograms[pass.ordinal]

        fun bindStorage(binding: Int, bufferId: Int) {
            GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, binding, bufferId)
        }

        fun allocate(bufferId: Int, byteCount: Int, usage: Int = GLES31.GL_DYNAMIC_DRAW) {
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                byteCount,
                null,
                usage,
            )
        }

        fun uploadTwoInts(bufferId: Int, first: Int, second: Int) {
            val values = ByteBuffer.allocateDirect(2 * Int.SIZE_BYTES)
                .order(ByteOrder.nativeOrder())
            values.putInt(first)
            values.putInt(second)
            values.position(0)
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
            GLES31.glBufferData(
                GLES31.GL_SHADER_STORAGE_BUFFER,
                2 * Int.SIZE_BYTES,
                values,
                GLES31.GL_DYNAMIC_DRAW,
            )
        }

        fun uniformLocation(activeProgram: Int, name: String): Int {
            val locations = uniformLocations.getOrPut(activeProgram) { HashMap() }
            return locations.getOrPut(name) {
                GLES31.glGetUniformLocation(activeProgram, name)
            }
        }

        fun uniform1i(activeProgram: Int, name: String, value: Int) {
            GLES31.glUniform1i(uniformLocation(activeProgram, name), value)
        }

        fun uniform1f(activeProgram: Int, name: String, value: Float) {
            GLES31.glUniform1f(uniformLocation(activeProgram, name), value)
        }

        fun uniform2i(activeProgram: Int, name: String, x: Int, y: Int) {
            GLES31.glUniform2i(uniformLocation(activeProgram, name), x, y)
        }

        fun dispatch1d(count: Int, localSize: Int) {
            GLES31.glDispatchCompute((count + localSize - 1) / localSize, 1, 1)
        }

        fun dispatch2d(width: Int, height: Int, localWidth: Int, localHeight: Int) {
            GLES31.glDispatchCompute(
                (width + localWidth - 1) / localWidth,
                (height + localHeight - 1) / localHeight,
                1,
            )
        }

        fun storageBarrier() {
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or
                    GLES31.GL_BUFFER_UPDATE_BARRIER_BIT,
            )
        }

        fun clearUintBuffer(bufferId: Int, count: Int, value: Int = 0) {
            val activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.CLEAR_UINT)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, bufferId)
            uniform1i(activeProgram, "uCount", count)
            GLES30.glUniform1ui(
                uniformLocation(activeProgram, "uValue"),
                value,
            )
            dispatch1d(count, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()
        }

        GLES31.glGenBuffers(buffers.size, buffers, 0)
        try {
            allocate(buffers[sourceBuffer], sampleCount * Float.SIZE_BYTES)
            allocate(buffers[gaussianBuffer], pyramid.floatCount * Float.SIZE_BYTES)
            allocate(buffers[remappedBuffer], pyramid.floatCount * Float.SIZE_BYTES)
            allocate(buffers[laplacianBuffer], pyramid.floatCount * Float.SIZE_BYTES)
            allocate(buffers[reconstructedBuffer], pyramid.floatCount * Float.SIZE_BYTES)
            allocate(buffers[targetBuffer], sampleCount * Float.SIZE_BYTES)
            uploadTwoInts(
                buffers[sourceRangeBuffer],
                Float.MAX_VALUE.toRawBits(),
                0f.toRawBits(),
            )

            var activeProgram =
                program(DngPhotonLocalToneMapGpuShaders.Pass.PREPARE_SOURCE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, sampleBufferId)
            bindStorage(1, buffers[sourceBuffer])
            bindStorage(2, buffers[sourceRangeBuffer])
            uniform2i(activeProgram, "uGridSize", gridWidth, gridHeight)
            uniform2i(activeProgram, "uSampleSize", sampleWidth, sampleHeight)
            dispatch2d(sampleWidth, sampleHeight, GlesComputeWorkGroup.IMAGE_TILE_SIZE, GlesComputeWorkGroup.IMAGE_TILE_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.NORMALIZE_LOG)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[sourceBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[gaussianBuffer])
            uniform2i(activeProgram, "uSampleSize", sampleWidth, sampleHeight)
            uniform1i(activeProgram, "uOutputOffset", pyramid.levels.first().offset)
            uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
            dispatch2d(sampleWidth, sampleHeight, GlesComputeWorkGroup.IMAGE_TILE_SIZE, GlesComputeWorkGroup.IMAGE_TILE_SIZE)
            storageBarrier()

            val sourceRange = readUintStorageBuffer(
                bufferId = buffers[sourceRangeBuffer],
                intCount = 2,
                label = "Photon source range",
            ) ?: return null
            val sourceMinimum = Float.fromBits(sourceRange[0])
            val sourceMaximum = Float.fromBits(sourceRange[1])
            if (!sourceMinimum.isFinite() || !sourceMaximum.isFinite() ||
                sourceMinimum < 0f || sourceMaximum < sourceMinimum
            ) {
                PLog.e(
                    TAG,
                    "Photon source range invalid: $sourceMinimum..$sourceMaximum",
                )
                return null
            }
            val sourceMinimumLog = ln(
                preToneMapExposureGain * sourceMinimum +
                    DngPhotonLocalToneMapper.SOURCE_EPSILON
            )
            val sourceMaximumLog = ln(
                preToneMapExposureGain * sourceMaximum +
                    DngPhotonLocalToneMapper.SOURCE_EPSILON
            )
            if (!sourceMinimumLog.isFinite() || !sourceMaximumLog.isFinite() ||
                sourceMaximumLog < sourceMinimumLog
            ) {
                PLog.e(
                    TAG,
                    "Photon source-log range invalid: $sourceMinimumLog..$sourceMaximumLog",
                )
                return null
            }
            val histogramBinCount =
                DngPhotonLocalToneMapGpuShaders.HISTOGRAM_BIN_COUNT
            allocate(buffers[histogramBuffer], histogramBinCount * Int.SIZE_BYTES)

            uploadTwoInts(
                buffers[histogramRangeBuffer],
                -1,
                0,
            )
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.FILTERED_LOG_RANGE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[gaussianBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[histogramRangeBuffer])
            uniform1i(activeProgram, "uCount", sampleCount)
            uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
            uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
            dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()
            val inputRange = readUintStorageBuffer(
                bufferId = buffers[histogramRangeBuffer],
                intCount = 2,
                label = "Photon input-log range",
            ) ?: return null
            val inputMinimumLog = orderedBitsToFloat(inputRange[0])
            val inputMaximumLog = orderedBitsToFloat(inputRange[1])
            if (!inputMinimumLog.isFinite() || !inputMaximumLog.isFinite() ||
                inputMaximumLog < inputMinimumLog
            ) {
                PLog.e(
                    TAG,
                    "Photon input-log range invalid: $inputMinimumLog..$inputMaximumLog",
                )
                return null
            }

            clearUintBuffer(buffers[histogramBuffer], histogramBinCount)
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.LOG_HISTOGRAM)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[gaussianBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[histogramRangeBuffer])
            bindStorage(3, buffers[histogramBuffer])
            uniform1i(activeProgram, "uCount", sampleCount)
            uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
            uniform1i(activeProgram, "uBinCount", histogramBinCount)
            uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
            dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()
            val inputHistogram = readUintStorageBuffer(
                bufferId = buffers[histogramBuffer],
                intCount = histogramBinCount,
                label = "Photon input-log histogram",
            ) ?: return null
            val inputDistribution = summarizePhotonLogHistogram(
                histogram = inputHistogram,
                rangeMinimum = inputMinimumLog,
                rangeMaximum = inputMaximumLog,
                percentileClip = parameters.percentileClip,
                expectedSampleCount = sampleCount,
                label = "input",
            ) ?: return null
            val inputLower = inputDistribution.lower
                .coerceAtLeast(DngPhotonLocalToneMapper.SOURCE_EPSILON)
            val inputUpper = inputDistribution.upper.coerceAtLeast(inputLower)
            val edgeSlope = DngPhotonLocalToneMapper.localLaplacianEdgeSlope(
                inputLower = inputLower,
                inputUpper = inputUpper,
                targetDynamicRange = parameters.targetDynamicRange,
            )
            PLog.d(TAG, "localLaplacianToneMap: edgeSlope=$edgeSlope")

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.DOWNSAMPLE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[gaussianBuffer])
            bindStorage(1, buffers[gaussianBuffer])
            for (levelIndex in 1 until pyramid.levels.size) {
                val sourceLevel = pyramid.levels[levelIndex - 1]
                val destinationLevel = pyramid.levels[levelIndex]
                uniform2i(
                    activeProgram,
                    "uSourceSize",
                    sourceLevel.width,
                    sourceLevel.height,
                )
                uniform2i(
                    activeProgram,
                    "uDestinationSize",
                    destinationLevel.width,
                    destinationLevel.height,
                )
                uniform1i(activeProgram, "uSourceOffset", sourceLevel.offset)
                uniform1i(activeProgram, "uDestinationOffset", destinationLevel.offset)
                dispatch2d(
                    destinationLevel.width,
                    destinationLevel.height,
                    GlesComputeWorkGroup.IMAGE_TILE_SIZE,
                    GlesComputeWorkGroup.IMAGE_TILE_SIZE,
                )
                storageBarrier()
            }

            clearUintBuffer(
                bufferId = buffers[laplacianBuffer],
                count = pyramid.floatCount,
            )
            val intensityLevels = parameters.localLaplacianIntensityLevels
            val intensityStep = 1f / (intensityLevels - 1)
            repeat(intensityLevels) { referenceIndex ->
                val reference = referenceIndex * intensityStep
                activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.REMAP)
                GLES31.glUseProgram(activeProgram)
                bindStorage(0, buffers[gaussianBuffer])
                bindStorage(1, buffers[remappedBuffer])
                bindStorage(2, buffers[sourceRangeBuffer])
                uniform1i(activeProgram, "uCount", sampleCount)
                uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
                uniform1i(
                    activeProgram,
                    "uDestinationOffset",
                    pyramid.levels.first().offset,
                )
                uniform1f(activeProgram, "uReference", reference)
                uniform1f(
                    activeProgram,
                    "uRangeSigma",
                    parameters.localLaplacianRangeSigma,
                )
                uniform1f(
                    activeProgram,
                    "uDetailExponent",
                    parameters.localLaplacianDetailExponent,
                )
                uniform1f(activeProgram, "uEdgeSlope", edgeSlope)
                uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
                dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
                storageBarrier()

                activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.DOWNSAMPLE)
                GLES31.glUseProgram(activeProgram)
                bindStorage(0, buffers[remappedBuffer])
                bindStorage(1, buffers[remappedBuffer])
                for (levelIndex in 1 until pyramid.levels.size) {
                    val sourceLevel = pyramid.levels[levelIndex - 1]
                    val destinationLevel = pyramid.levels[levelIndex]
                    uniform2i(
                        activeProgram,
                        "uSourceSize",
                        sourceLevel.width,
                        sourceLevel.height,
                    )
                    uniform2i(
                        activeProgram,
                        "uDestinationSize",
                        destinationLevel.width,
                        destinationLevel.height,
                    )
                    uniform1i(activeProgram, "uSourceOffset", sourceLevel.offset)
                    uniform1i(
                        activeProgram,
                        "uDestinationOffset",
                        destinationLevel.offset,
                    )
                    dispatch2d(
                        destinationLevel.width,
                        destinationLevel.height,
                        GlesComputeWorkGroup.IMAGE_TILE_SIZE,
                        GlesComputeWorkGroup.IMAGE_TILE_SIZE,
                    )
                    storageBarrier()
                }

                activeProgram = program(
                    DngPhotonLocalToneMapGpuShaders.Pass.ACCUMULATE_LAPLACIAN
                )
                GLES31.glUseProgram(activeProgram)
                bindStorage(0, buffers[gaussianBuffer])
                bindStorage(1, buffers[remappedBuffer])
                bindStorage(2, buffers[laplacianBuffer])
                for (levelIndex in 0 until pyramid.levels.lastIndex) {
                    val currentLevel = pyramid.levels[levelIndex]
                    val nextLevel = pyramid.levels[levelIndex + 1]
                    uniform2i(
                        activeProgram,
                        "uCurrentSize",
                        currentLevel.width,
                        currentLevel.height,
                    )
                    uniform2i(
                        activeProgram,
                        "uNextSize",
                        nextLevel.width,
                        nextLevel.height,
                    )
                    uniform1i(activeProgram, "uGuideOffset", currentLevel.offset)
                    uniform1i(activeProgram, "uCurrentOffset", currentLevel.offset)
                    uniform1i(activeProgram, "uNextOffset", nextLevel.offset)
                    uniform1i(activeProgram, "uOutputOffset", currentLevel.offset)
                    uniform1f(activeProgram, "uReference", reference)
                    uniform1f(activeProgram, "uIntensityStep", intensityStep)
                    dispatch2d(currentLevel.width, currentLevel.height, GlesComputeWorkGroup.IMAGE_TILE_SIZE, GlesComputeWorkGroup.IMAGE_TILE_SIZE)
                }
                storageBarrier()
            }

            val coarsestLevel = pyramid.levels.last()
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.COPY_RANGE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[gaussianBuffer])
            bindStorage(1, buffers[reconstructedBuffer])
            uniform1i(activeProgram, "uCount", coarsestLevel.size)
            uniform1i(activeProgram, "uSourceOffset", coarsestLevel.offset)
            uniform1i(activeProgram, "uDestinationOffset", coarsestLevel.offset)
            dispatch1d(coarsestLevel.size, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.RECONSTRUCT)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[laplacianBuffer])
            bindStorage(1, buffers[reconstructedBuffer])
            for (levelIndex in pyramid.levels.lastIndex - 1 downTo 0) {
                val currentLevel = pyramid.levels[levelIndex]
                val nextLevel = pyramid.levels[levelIndex + 1]
                uniform2i(
                    activeProgram,
                    "uCurrentSize",
                    currentLevel.width,
                    currentLevel.height,
                )
                uniform2i(
                    activeProgram,
                    "uNextSize",
                    nextLevel.width,
                    nextLevel.height,
                )
                uniform1i(activeProgram, "uLaplacianOffset", currentLevel.offset)
                uniform1i(activeProgram, "uCurrentOffset", currentLevel.offset)
                uniform1i(activeProgram, "uNextOffset", nextLevel.offset)
                dispatch2d(currentLevel.width, currentLevel.height, GlesComputeWorkGroup.IMAGE_TILE_SIZE, GlesComputeWorkGroup.IMAGE_TILE_SIZE)
                storageBarrier()
            }

            uploadTwoInts(
                buffers[histogramRangeBuffer],
                -1,
                0,
            )
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.FILTERED_LOG_RANGE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[reconstructedBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[histogramRangeBuffer])
            uniform1i(activeProgram, "uCount", sampleCount)
            uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
            uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
            dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()
            val filteredRange = readUintStorageBuffer(
                bufferId = buffers[histogramRangeBuffer],
                intCount = 2,
                label = "Photon filtered-log range",
            ) ?: return null
            val filteredMinimumLog = orderedBitsToFloat(filteredRange[0])
            val filteredMaximumLog = orderedBitsToFloat(filteredRange[1])
            if (!filteredMinimumLog.isFinite() || !filteredMaximumLog.isFinite() ||
                filteredMaximumLog < filteredMinimumLog
            ) {
                PLog.e(
                    TAG,
                    "Photon filtered-log range invalid: " +
                        "$filteredMinimumLog..$filteredMaximumLog",
                )
                return null
            }

            clearUintBuffer(buffers[histogramBuffer], histogramBinCount)
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.LOG_HISTOGRAM)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[reconstructedBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[histogramRangeBuffer])
            bindStorage(3, buffers[histogramBuffer])
            uniform1i(activeProgram, "uCount", sampleCount)
            uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
            uniform1i(activeProgram, "uBinCount", histogramBinCount)
            uniform1f(activeProgram, "uExposureGain", preToneMapExposureGain)
            dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()
            val filteredHistogram = readUintStorageBuffer(
                bufferId = buffers[histogramBuffer],
                intCount = histogramBinCount,
                label = "Photon filtered-log histogram",
            ) ?: return null
            val filteredDistribution = summarizePhotonLogHistogram(
                histogram = filteredHistogram,
                rangeMinimum = filteredMinimumLog,
                rangeMaximum = filteredMaximumLog,
                percentileClip = parameters.percentileClip,
                expectedSampleCount = sampleCount,
                label = "filtered",
            ) ?: return null
            val outputExponent = DngPhotonLocalToneMapper.outputPercentileExponent(
                filteredLower = filteredDistribution.lower,
                filteredUpper = filteredDistribution.upper,
                exposureGain = preToneMapExposureGain,
                targetDynamicRange = parameters.targetDynamicRange,
            )
            val outputUpper = DngPhotonLocalToneMapper.outputUpperPercentile(
                filteredUpper = filteredDistribution.upper,
                outputExponent = outputExponent,
            )

            PLog.d(
                TAG,
                "Photon PGTM adaptation: sourceLog=$sourceMinimumLog..$sourceMaximumLog " +
                    "filteredLog=$filteredMinimumLog..$filteredMaximumLog " +
                    "filteredPercentiles=${filteredDistribution.lower}.." +
                    "${filteredDistribution.upper} outputExponent=$outputExponent " +
                    "outputUpper=$outputUpper " +
                    "edgeSlope=$edgeSlope " +
                    "preToneMapExposureBoostEv=${parameters.preToneMapExposureBoostEv} " +
                    "preToneMapExposureGain=$preToneMapExposureGain",
            )

            activeProgram = program(
                DngPhotonLocalToneMapGpuShaders.Pass.FINALIZE_SDR_TARGET
            )
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[reconstructedBuffer])
            bindStorage(1, buffers[sourceRangeBuffer])
            bindStorage(2, buffers[targetBuffer])
            uniform1i(activeProgram, "uCount", sampleCount)
            uniform1i(activeProgram, "uSourceOffset", pyramid.levels.first().offset)
            uniform1f(
                activeProgram,
                "uPreToneMapExposureGain",
                preToneMapExposureGain,
            )
            uniform1f(activeProgram, "uFilteredUpper", filteredDistribution.upper)
            uniform1f(activeProgram, "uOutputExponent", outputExponent)
            uniform1f(activeProgram, "uOutputUpper", outputUpper)
            dispatch1d(sampleCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            allocate(buffers[bguBufferA], extendedBguFloatCount * Float.SIZE_BYTES)
            allocate(buffers[bguBufferB], extendedBguFloatCount * Float.SIZE_BYTES)
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_HISTOGRAM)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[sourceBuffer])
            bindStorage(1, buffers[targetBuffer])
            bindStorage(2, buffers[bguBufferA])
            uniform2i(activeProgram, "uSampleSize", sampleWidth, sampleHeight)
            uniform2i(
                activeProgram,
                "uExtendedGridSize",
                extendedGridWidth,
                extendedGridHeight,
            )
            uniform1i(activeProgram, "uRangeBinCount", rangeBinCount)
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1f(
                activeProgram,
                "uGuideAlpha",
                parameters.bilateralGuideCurveAlpha,
            )
            GLES31.glDispatchCompute(extendedGridWidth, extendedGridHeight, 1)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_BLUR_Z)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferA])
            bindStorage(1, buffers[bguBufferB])
            uniform2i(
                activeProgram,
                "uGridSize",
                extendedGridWidth,
                extendedGridHeight,
            )
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1i(activeProgram, "uElementCount", extendedBguFloatCount)
            dispatch1d(extendedBguFloatCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_BLUR_Y)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferB])
            bindStorage(1, buffers[bguBufferA])
            uniform2i(
                activeProgram,
                "uExtendedGridSize",
                extendedGridWidth,
                extendedGridHeight,
            )
            uniform1i(activeProgram, "uOutputHeight", gridHeight)
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1i(activeProgram, "uElementCount", yBlurFloatCount)
            dispatch1d(yBlurFloatCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_BLUR_X)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferA])
            bindStorage(1, buffers[bguBufferB])
            uniform2i(activeProgram, "uOutputGridSize", gridWidth, gridHeight)
            uniform1i(activeProgram, "uInputWidth", extendedGridWidth)
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1i(activeProgram, "uElementCount", fittedBguFloatCount)
            dispatch1d(fittedBguFloatCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.BGU_SOLVE)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferB])
            bindStorage(1, buffers[bguBufferA])
            uniform1i(activeProgram, "uCoefficientCount", coefficientCount)
            uniform1f(
                activeProgram,
                "uRegularization",
                parameters.bilateralRegularization,
            )
            uniform1f(
                activeProgram,
                "uIdentitySlope",
                1f,
            )
            dispatch1d(coefficientCount, GlesComputeWorkGroup.LINEAR_SIZE)
            storageBarrier()

            allocate(
                buffers[bguBufferB],
                gainFloatCount * Float.SIZE_BYTES,
                GLES31.GL_DYNAMIC_READ,
            )
            val gainTextures = IntArray(1)
            GLES30.glGenTextures(1, gainTextures, 0)
            generatedTextureId = gainTextures[0]
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, generatedTextureId)
            GLES30.glTexStorage2D(
                GLES30.GL_TEXTURE_2D,
                1,
                GLES30.GL_R32F,
                plan.pointCount,
                plan.cellCount,
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
            GLES31.glBindImageTexture(
                0,
                generatedTextureId,
                0,
                false,
                0,
                GLES31.GL_WRITE_ONLY,
                GLES30.GL_R32F,
            )
            activeProgram = program(DngPhotonLocalToneMapGpuShaders.Pass.GAIN_CURVES)
            GLES31.glUseProgram(activeProgram)
            bindStorage(0, buffers[bguBufferA])
            bindStorage(1, buffers[bguBufferB])
            uniform1i(activeProgram, "uCellCount", plan.cellCount)
            uniform1i(activeProgram, "uPointCount", plan.pointCount)
            uniform1i(activeProgram, "uRangeBinCount", rangeBinCount)
            uniform1i(activeProgram, "uRangePlaneCount", rangePlaneCount)
            uniform1f(
                activeProgram,
                "uGuideAlpha",
                parameters.bilateralGuideCurveAlpha,
            )
            uniform1f(activeProgram, "uMinTableGain", photonPlan.minTableGain)
            uniform1f(activeProgram, "uMaxTableGain", photonPlan.maxTableGain)
            val diagnosticMode = when (plan.diagnosticBand?.mode) {
                DngPhotonProfileGainTableGenerator.DiagnosticMode.PASS_ONLY -> 0
                DngPhotonProfileGainTableGenerator.DiagnosticMode.BLOCK_ONLY -> 1
                null -> -1
            }
            uniform1i(activeProgram, "uDiagnosticMode", diagnosticMode)
            uniform1f(
                activeProgram,
                "uDiagnosticStart",
                plan.diagnosticBand?.start ?: 0f,
            )
            uniform1f(
                activeProgram,
                "uDiagnosticEnd",
                plan.diagnosticBand?.end ?: 1f,
            )
            uniform1f(
                activeProgram,
                "uDiagnosticFeather",
                plan.diagnosticBand?.feather ?: 0f,
            )
            dispatch1d(gainFloatCount, GlesComputeWorkGroup.LINEAR_SIZE)
            GLES31.glMemoryBarrier(
                GLES31.GL_SHADER_STORAGE_BARRIER_BIT or
                    GLES31.GL_BUFFER_UPDATE_BARRIER_BIT or
                    GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or
                    GLES31.GL_TEXTURE_FETCH_BARRIER_BIT,
            )

            RawGlesProgram.logErrors("generatePhotonProfileGainCurvesOnGpu")
            val gains = readFloatStorageBuffer(
                bufferId = buffers[bguBufferB],
                floatCount = gainFloatCount,
                label = "Photon PGTM gain curves",
            ) ?: return null
            if (plan.diagnosticBand != null) {
                PLog.d(TAG, summarizePhotonGainCurves(plan, gains))
            }
            val result = GpuPhotonGainCurves(
                gains = gains,
                textureId = generatedTextureId,
            )
            generatedTextureId = 0
            return result
        } finally {
            GLES31.glUseProgram(0)
            GLES31.glBindImageTexture(0, 0, 0, false, 0, GLES31.GL_WRITE_ONLY, GLES30.GL_R32F)
            GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
            repeat(4) { binding ->
                GLES31.glBindBufferBase(GLES31.GL_SHADER_STORAGE_BUFFER, binding, 0)
            }
            GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, 0)
            GLES31.glDeleteBuffers(buffers.size, buffers, 0)
            if (generatedTextureId != 0) {
                GLES30.glDeleteTextures(1, intArrayOf(generatedTextureId), 0)
            }
        }
    }

    private fun summarizePhotonGainCurves(
        plan: PhotonProfileGainTablePlan,
        gains: FloatArray,
    ): String {
        val photonPlan = plan.photonPlan
        val pointCount = plan.pointCount
        val gridWidth = plan.grid.mapPointsH
        val gridHeight = plan.grid.mapPointsV
        val firstVisiblePoint = max(1, ceil(0.02f * pointCount).toInt())
        var gainMinimum = Float.POSITIVE_INFINITY
        var gainMaximum = Float.NEGATIVE_INFINITY
        var reversalCount = 0
        var worstOutputDrop = 0f
        var worstOutputDropCell = -1
        var worstOutputDropPoint = -1
        var maximumRangeGainRatio = 1f
        var maximumRangeGainCell = -1
        var maximumRangeGainPoint = -1
        var maximumSpatialGainRatio = 1f
        var maximumSpatialGainCell = -1
        var maximumSpatialGainPoint = -1

        fun gainRatio(first: Float, second: Float): Float {
            val low = min(first, second).coerceAtLeast(1e-12f)
            return max(first, second) / low
        }

        repeat(plan.cellCount) { cell ->
            val curveOffset = cell * pointCount
            var previousOutput = 0f
            for (point in 0 until pointCount) {
                val gain = gains[curveOffset + point]
                gainMinimum = min(gainMinimum, gain)
                gainMaximum = max(gainMaximum, gain)
                val sourceInput = when (point) {
                    0 -> 0f
                    pointCount - 1 -> 1f
                    else -> point.toFloat() / pointCount
                }
                val output = photonPlan.exposureGain * sourceInput * gain
                if (point > 0 && output < previousOutput) {
                    reversalCount++
                    val drop = previousOutput - output
                    if (drop > worstOutputDrop) {
                        worstOutputDrop = drop
                        worstOutputDropCell = cell
                        worstOutputDropPoint = point
                    }
                }
                if (point >= firstVisiblePoint) {
                    val previousGain = gains[curveOffset + point - 1]
                    val ratio = gainRatio(previousGain, gain)
                    if (ratio > maximumRangeGainRatio) {
                        maximumRangeGainRatio = ratio
                        maximumRangeGainCell = cell
                        maximumRangeGainPoint = point
                    }
                }
                previousOutput = output
            }
        }

        repeat(gridHeight) { y ->
            repeat(gridWidth) { x ->
                val cell = y * gridWidth + x
                for (point in firstVisiblePoint until pointCount) {
                    val gain = gains[cell * pointCount + point]
                    if (x > 0) {
                        val ratio = gainRatio(
                            gain,
                            gains[(cell - 1) * pointCount + point],
                        )
                        if (ratio > maximumSpatialGainRatio) {
                            maximumSpatialGainRatio = ratio
                            maximumSpatialGainCell = cell
                            maximumSpatialGainPoint = point
                        }
                    }
                    if (y > 0) {
                        val ratio = gainRatio(
                            gain,
                            gains[(cell - gridWidth) * pointCount + point],
                        )
                        if (ratio > maximumSpatialGainRatio) {
                            maximumSpatialGainRatio = ratio
                            maximumSpatialGainCell = cell
                            maximumSpatialGainPoint = point
                        }
                    }
                }
            }
        }

        fun ratioToEv(ratio: Float): Float =
            (ln(ratio.coerceAtLeast(1f).toDouble()) / ln(2.0)).toFloat()

        return "Photon PGTM curve diagnostics: gain=$gainMinimum..$gainMaximum " +
            "outputReversals=$reversalCount worstOutputDrop=$worstOutputDrop " +
            "atCell=$worstOutputDropCell point=$worstOutputDropPoint " +
            "maxRangeGainStep=${ratioToEv(maximumRangeGainRatio)}EV " +
            "atCell=$maximumRangeGainCell point=$maximumRangeGainPoint " +
            "maxSpatialNeighborStep=${ratioToEv(maximumSpatialGainRatio)}EV " +
            "atCell=$maximumSpatialGainCell point=$maximumSpatialGainPoint"
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

    private data class PhotonLinearHistogramDistribution(
        val lower: Float,
        val median: Float,
        val upper: Float,
    )

    private fun summarizePhotonLogHistogram(
        histogram: IntArray,
        rangeMinimum: Float,
        rangeMaximum: Float,
        percentileClip: Float,
        expectedSampleCount: Int,
        label: String,
    ): PhotonLinearHistogramDistribution? {
        if (histogram.isEmpty() ||
            !rangeMinimum.isFinite() ||
            !rangeMaximum.isFinite() ||
            rangeMaximum < rangeMinimum
        ) {
            PLog.e(TAG, "Photon $label histogram range invalid: $rangeMinimum..$rangeMaximum")
            return null
        }
        val sampleCount = histogram.sumOf { it.toLong() and 0xffff_ffffL }
        if (sampleCount != expectedSampleCount.toLong()) {
            PLog.e(
                TAG,
                "Photon $label histogram count=$sampleCount expected=$expectedSampleCount",
            )
            return null
        }

        fun valueAtRank(rank: Long): Float {
            var cumulative = 0L
            val boundedRank = rank.coerceIn(0L, sampleCount - 1L)
            for (bin in histogram.indices) {
                cumulative += histogram[bin].toLong() and 0xffff_ffffL
                if (cumulative <= boundedRank) continue
                if (bin == 0) return rangeMinimum
                if (bin == histogram.lastIndex) return rangeMaximum
                val coordinate = (bin + 0.5f) / (histogram.size - 1f)
                return rangeMinimum + coordinate * (rangeMaximum - rangeMinimum)
            }
            return rangeMaximum
        }

        fun percentileLinear(quantile: Float): Float {
            if (sampleCount <= 1L) {
                return (exp(rangeMinimum.toDouble()) -
                    DngPhotonLocalToneMapper.SOURCE_EPSILON).coerceAtLeast(0.0).toFloat()
            }
            // MATLAB prctile's default convention assigns sorted sample k to
            // probability (k - 0.5) / N (Hyndman-Fan type 5).
            val position = (
                quantile.coerceIn(0f, 1f).toDouble() * sampleCount.toDouble() - 0.5
                ).coerceIn(0.0, (sampleCount - 1L).toDouble())
            val lowerRank = floor(position).toLong()
            val upperRank = min(lowerRank + 1L, sampleCount - 1L)
            val lowerValue = valueAtRank(lowerRank)
            val upperValue = valueAtRank(upperRank)
            val amount = position - lowerRank
            // lapfilter.m calls from_domain() before prctile, so interpolate epsilon-free
            // radiance rather than log-radiance.
            val liftedRadiance = exp(lowerValue.toDouble()) +
                (exp(upperValue.toDouble()) - exp(lowerValue.toDouble())) * amount
            return (liftedRadiance - DngPhotonLocalToneMapper.SOURCE_EPSILON)
                .coerceAtLeast(0.0)
                .toFloat()
        }

        return PhotonLinearHistogramDistribution(
            lower = percentileLinear(percentileClip),
            median = percentileLinear(0.5f),
            upper = percentileLinear(1f - percentileClip),
        )
    }

    private fun orderedBitsToFloat(ordered: Int): Float {
        val bits = if ((ordered and Int.MIN_VALUE) != 0) {
            ordered xor Int.MIN_VALUE
        } else {
            ordered.inv()
        }
        return Float.fromBits(bits)
    }

    private fun readUintStorageBuffer(
        bufferId: Int,
        intCount: Int,
        label: String,
    ): IntArray? {
        GLES31.glBindBuffer(GLES31.GL_SHADER_STORAGE_BUFFER, bufferId)
        val byteCount = intCount * Int.SIZE_BYTES
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
            IntArray(intCount).also { values ->
                byteBuffer.order(ByteOrder.nativeOrder()).asIntBuffer().get(values)
            }
        } finally {
            GLES31.glUnmapBuffer(GLES31.GL_SHADER_STORAGE_BUFFER)
        }
    }

    private companion object {
        const val TAG = "PhotonPGTM"
        const val RAW_TEXTURE_UNIT = 0
        const val LENS_SHADING_TEXTURE_UNIT = 1
        const val HUE_SAT_TEXTURE_UNIT = 3
        const val STREAMING_TILE_CORE_EDGE_PX = 3072
    }
}
