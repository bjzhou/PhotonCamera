package com.hinnka.mycamera.raw

import kotlin.math.ceil
import kotlin.math.ln
import kotlin.math.min

/**
 * GLES 3.1 compute passes for the Photon max-RGB Local Laplacian + scalar Google BGU pipeline.
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
        const float SOURCE_EPS = 1e-6;

        void main() {
            ivec2 position = ivec2(gl_GlobalInvocationID.xy);
            if (any(greaterThanEqual(position, uSampleSize))) return;
            int index = position.y * uSampleSize.x + position.x;
            float minimumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[0]) + SOURCE_EPS
            );
            float maximumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[1]) + SOURCE_EPS
            );
            float logRange = maximumLog - minimumLog;
            float value = log(uExposureGain * sourceValues[index] + SOURCE_EPS);
            gaussian[uOutputOffset + index] = logRange > SOURCE_EPS
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
        const float SOURCE_EPS = 1e-6;

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uCount) return;
            float minimumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[0]) + SOURCE_EPS
            );
            float maximumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[1]) + SOURCE_EPS
            );
            float sigma = uRangeSigma / max(maximumLog - minimumLog, SOURCE_EPS);
            float delta = gaussian[uSourceOffset + index] - uReference;
            float magnitude = abs(delta);
            float direction = sign(delta);
            float remappedMagnitude = magnitude <= sigma
                ? sigma * pow(magnitude / max(sigma, SOURCE_EPS), uDetailExponent)
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
        const float SOURCE_EPS = 1e-6;

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
                uExposureGain * uintBitsToFloat(sourceRange[0]) + SOURCE_EPS
            );
            float maximumLog = log(
                uExposureGain * uintBitsToFloat(sourceRange[1]) + SOURCE_EPS
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
                max(rangeMaximum - rangeMinimum, SOURCE_EPS);
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
        const float SOURCE_EPS = 1e-6;

        void main() {
            int index = int(gl_GlobalInvocationID.x);
            if (index >= uCount) return;
            float minimumLog = log(
                uPreToneMapExposureGain * uintBitsToFloat(sourceRange[0]) + SOURCE_EPS
            );
            float maximumLog = log(
                uPreToneMapExposureGain * uintBitsToFloat(sourceRange[1]) + SOURCE_EPS
            );
            float filteredLog = minimumLog +
                reconstructed[uSourceOffset + index] * (maximumLog - minimumLog);
            // Photon PGTM has a normalized SDR output contract. Keep max RGB inside that
            // contract before later nonlinear profile stages can change channel ratios.
            target[index] = clamp(exp(filteredLog) - SOURCE_EPS, 0.0, 1.0);
        }
    """.trimIndent()

    private val bguHistogram = """
        #version 310 es
        layout(local_size_x = 64, local_size_y = 1, local_size_z = 1) in;
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
        uniform float uBaselineExposureGain;

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
                    // Fit the final Local Laplacian SDR target directly. The renderer applies
                    // BaselineExposure after PGTM, so divide it out of the fit target here.
                    float x = sourceValue;
                    float y = max(
                        targetValues[sampleIndex] / uBaselineExposureGain,
                        0.0
                    );
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
            float sumYX = blurred[offset + 3];
            // ProfileGainTableMap can only express y = gain * x. Fit that model
            // directly instead of fitting an affine intercept that would later
            // become the unstable term intercept / x.
            coefficients[index] =
                (sumYX + uRegularization * uIdentitySlope) /
                (sumXX + uRegularization);
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
            gainCurves[outputIndex] = clamp(
                finalGain,
                uMinTableGain,
                uMaxTableGain
            );
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
