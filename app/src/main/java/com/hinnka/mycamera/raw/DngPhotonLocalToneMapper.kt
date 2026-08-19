package com.hinnka.mycamera.raw

/*
 * Local Laplacian portions are based on the MIT-licensed reference implementation:
 * Copyright (c) 2011 Sam Hasinoff.
 *
 * Halide and Google BGU portions are based on the MIT/Apache-2.0 reference implementations:
 * Copyright (c) 2012-2020 MIT CSAIL, Google, Facebook, Adobe, NVIDIA CORPORATION,
 * and other contributors; Copyright 2016 Google Inc.
 *
 * Full notices and the exact pinned-source comparison are in
 * docs/third-party/local-tone-mapping and docs/photon-local-tone-mapping.md.
 */

import android.util.Log
import com.hinnka.mycamera.utils.PLog
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.exp
import kotlin.math.floor
import kotlin.math.ln
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.roundToInt

/**
 * Photon local tone mapping for DNG ProfileGainTableMap.
 *
 * Algorithm lineage:
 *  1. Paris/Hasinoff/Kautz Local Laplacian HDR remapping on paper-weighted RGB intensity.
 *  2. Aubry et al. intensity-discretized Local Laplacian evaluation.
 *  3. Google's fit-and-slice affine bilateral grid (BGU).
 *
 * BGU's RGB 3x4 matrix is reduced to the multiplicative scalar model that DNG PGTM can represent.
 * The curved guide, histogram, 7-tap blur, fixed identity regularization, and range slicing follow
 * the pinned Google implementation plus the regularizer correction in current Halide BGU.
 */
internal object DngPhotonLocalToneMapper {
    private const val TAG = "DngPhotonLocalToneMapper"

    const val SAMPLES_PER_CELL_SIDE = 16
    const val SAMPLES_PER_CELL = SAMPLES_PER_CELL_SIDE * SAMPLES_PER_CELL_SIDE

    private const val PYRAMID_FILTER_RADIUS = 2
    private const val BILATERAL_FILTER_RADIUS = 3
    private const val BILATERAL_COMPONENTS = 5
    internal const val SOURCE_EPSILON = 2.220446e-16f
    internal const val DYNAMIC_RANGE_BLACK_FLOOR = 1e-6f
    private const val CURVE_EPS = 1e-6f

    // pyramid_filter.m: [.05, .25, .4, .25, .05].
    internal val localLaplacianPyramidFilter =
        floatArrayOf(0.05f, 0.25f, 0.40f, 0.25f, 0.05f)

    // Google BGU: center=1, distance 1=1/8, distance 2=1/27, distance 3=1/64.
    internal val bilateralBlurWeights =
        floatArrayOf(1f, 1f / 8f, 1f / 27f, 1f / 64f)

    fun generate(
        plan: PhotonProfileGainTablePlan,
        cellSamples: FloatArray,
    ): FloatArray? {
        val photonPlan = plan.photonPlan
        val cellCount = plan.cellCount
        val expectedSamples = cellCount * SAMPLES_PER_CELL
        if (cellSamples.size != expectedSamples) {
            PLog.e(TAG, "Photon sample count=${cellSamples.size}, expected=$expectedSamples")
            return null
        }
        if (cellSamples.any { !it.isFinite() || it !in 0f..1f }) {
            PLog.e(TAG, "Photon sample buffer contains scene input outside [0, 1]")
            return null
        }

        val sampleWidth = plan.grid.mapPointsH * SAMPLES_PER_CELL_SIDE
        val sampleHeight = plan.grid.mapPointsV * SAMPLES_PER_CELL_SIDE
        val source = unpackCellMajorSamples(
            samples = cellSamples,
            gridWidth = plan.grid.mapPointsH,
            gridHeight = plan.grid.mapPointsV,
        )
        val preToneMapExposureGain = photonPlan.exposureGain *
            2.0f.pow(photonPlan.parameters.preToneMapExposureBoostEv)
        val localToneMap = localLaplacianToneMap(
            source = source,
            width = sampleWidth,
            height = sampleHeight,
            exposureGain = preToneMapExposureGain,
            parameters = photonPlan.parameters,
        )
        val gainGrid = fitScalarGainBilateralGrid(
            source = source,
            fitInput = source,
            target = localToneMap.target,
            width = sampleWidth,
            height = sampleHeight,
            gridWidth = plan.grid.mapPointsH,
            gridHeight = plan.grid.mapPointsV,
            identitySlope = 1f,
            parameters = photonPlan.parameters,
        )
        return buildGainCurves(
            plan = plan,
            photonPlan = photonPlan,
            gainGrid = gainGrid,
        )
    }

    /**
     * CPU reference for the current Local Laplacian equations used by the GPU PGTM generator.
     * The caller supplies paper intensity and [exposureGain] contains BaselineExposure plus the
     * temporary 0.7 EV gray-placement boost. The returned target removes that temporary gain.
     */
    internal fun localLaplacianToneMap(
        source: FloatArray,
        width: Int,
        height: Int,
        exposureGain: Float,
        parameters: PhotonLocalToneMappingParameters,
    ): PhotonLocalToneMapResult {
        require(width > 0 && height > 0 && source.size == width * height)
        require(source.all { it.isFinite() && it >= 0f })
        require(exposureGain.isFinite() && exposureGain > 0f)

        val exposedInput = FloatArray(source.size)
        val logInput = FloatArray(source.size)
        var logMinimum = Float.POSITIVE_INFINITY
        var logMaximum = Float.NEGATIVE_INFINITY
        source.forEachIndexed { index, value ->
            val exposedValue = exposureGain.toDouble() * value.toDouble()
            exposedInput[index] = exposedValue.toFloat()
            // The paper epsilon exists only to make the logarithm finite. It is removed again
            // before percentile clipping, exactly like from_domain() in lapfilter.m.
            val logValue = ln(exposedValue + SOURCE_EPSILON.toDouble()).toFloat()
            logInput[index] = logValue
            logMinimum = min(logMinimum, logValue)
            logMaximum = max(logMaximum, logValue)
        }
        val sortedInput = exposedInput.copyOf().also { it.sort() }
        val inputLower = percentile(sortedInput, parameters.percentileClip)
            .coerceAtLeast(SOURCE_EPSILON)
        val inputUpper = percentile(sortedInput, 1f - parameters.percentileClip)
            .coerceAtLeast(inputLower)
        val edgeSlope = localLaplacianEdgeSlope(
            inputLower = inputLower,
            inputUpper = inputUpper,
            targetDynamicRange = parameters.targetDynamicRange,
        )
        PLog.d(TAG, "localLaplacianToneMap: edgeSlope=$edgeSlope")
        val logRange = logMaximum - logMinimum
        if (!logRange.isFinite() || logRange <= CURVE_EPS) {
            return PhotonLocalToneMapResult(
                target = FloatArray(source.size) { index ->
                    exposedInput[index] / exposureGain
                },
            )
        }

        val normalized = FloatArray(logInput.size) { index ->
            ((logInput[index] - logMinimum) / logRange).coerceIn(0f, 1f)
        }
        val levelCount = referencePyramidLevelCount(width, height)
        val inputGaussian = gaussianPyramid(normalized, width, height, levelCount)
        val outputLaplacian = Array(levelCount) { level ->
            FloatArray(inputGaussian[level].data.size)
        }
        outputLaplacian[levelCount - 1] = inputGaussian[levelCount - 1].data.copyOf()

        val intensityLevels = parameters.localLaplacianIntensityLevels
        val intensityStep = 1f / (intensityLevels - 1)
        val normalizedSigma = parameters.localLaplacianRangeSigma / logRange
        repeat(intensityLevels) { referenceIndex ->
            val reference = referenceIndex * intensityStep
            val remapped = FloatArray(normalized.size) { index ->
                remapLocalLaplacianDelta(
                    delta = normalized[index] - reference,
                    sigma = normalizedSigma,
                    detailExponent = parameters.localLaplacianDetailExponent,
                    edgeSlope = edgeSlope,
                )
            }
            val remappedGaussian = gaussianPyramid(remapped, width, height, levelCount)
            for (level in 0 until levelCount - 1) {
                val current = remappedGaussian[level]
                val expanded = upsample(
                    source = remappedGaussian[level + 1],
                    targetWidth = current.width,
                    targetHeight = current.height,
                )
                val guide = inputGaussian[level].data
                val output = outputLaplacian[level]
                for (index in output.indices) {
                    val distance = abs(guide[index] - reference)
                    if (distance < intensityStep) {
                        val interpolationWeight = 1f - distance / intensityStep
                        output[index] += interpolationWeight *
                            (current.data[index] - expanded[index])
                    }
                }
            }
        }

        var reconstructed = Plane(
            width = inputGaussian.last().width,
            height = inputGaussian.last().height,
            data = outputLaplacian.last(),
        )
        for (level in levelCount - 2 downTo 0) {
            val guide = inputGaussian[level]
            val expanded = upsample(reconstructed, guide.width, guide.height)
            val laplacian = outputLaplacian[level]
            for (index in expanded.indices) expanded[index] += laplacian[index]
            reconstructed = Plane(guide.width, guide.height, expanded)
        }

        val filteredLinear = FloatArray(source.size) { index ->
            val filteredLog = logMinimum + reconstructed.data[index] * logRange
            (exp(filteredLog.toDouble()) - SOURCE_EPSILON.toDouble())
                .coerceAtLeast(0.0)
                .toFloat()
        }
        val sortedFiltered = filteredLinear.copyOf().also { it.sort() }
        val filteredLower = percentile(sortedFiltered, parameters.percentileClip)
        val filteredUpper = percentile(sortedFiltered, 1f - parameters.percentileClip)
            .coerceAtLeast(filteredLower)
        val outputExponent = outputPercentileExponent(
            filteredLower = filteredLower,
            filteredUpper = filteredUpper,
            exposureGain = exposureGain,
            targetDynamicRange = parameters.targetDynamicRange,
        )
        val outputUpper = outputUpperPercentile(
            filteredUpper = filteredUpper,
            outputExponent = outputExponent,
        )
        return PhotonLocalToneMapResult(
            target = FloatArray(source.size) { index ->
                val normalized = if (filteredUpper > 0f) {
                    filteredLinear[index] / filteredUpper
                } else {
                    0f
                }
                val value = outputUpper *
                    normalized.toDouble().pow(outputExponent.toDouble()).toFloat() /
                    exposureGain
                value.also { output ->
                    require(output.isFinite() && output >= 0f) {
                        "Local Laplacian produced invalid radiance at $index: $output"
                    }
                }
            },
        )
    }

    /**
     * DNG-constrained scalar form of Google BGU. [source] is the guide and [fitInput]/[target] are
     * the source/SDR pairs being encoded. Each bilateral cell directly solves
     * `target = gain * fitInput`; no second tone-mapping curve is introduced after Local
     * Laplacian. ProfileGainTableMap has no additive term, so the affine BGU intercept is omitted
     * instead of later turning it into the unstable term `intercept / input`.
     *
     * Spatial grid coordinates are translated by half a bin so the interior histogram windows are
     * the non-overlapping GPU sample tiles. Translation does not alter the filter; the DNG map
     * origin carries the same half-bin offset.
     */
    internal fun fitScalarGainBilateralGrid(
        source: FloatArray,
        fitInput: FloatArray = source,
        target: FloatArray,
        width: Int,
        height: Int,
        gridWidth: Int,
        gridHeight: Int,
        identitySlope: Float = 1f,
        parameters: PhotonLocalToneMappingParameters,
    ): ScalarGainBilateralGrid {
        require(width > 0 && height > 0 && source.size == width * height)
        require(fitInput.size == source.size)
        require(target.size == source.size)
        require(gridWidth > 0 && gridHeight > 0)
        require(identitySlope.isFinite() && identitySlope > 0f)
        require(parameters.bilateralSpatialBinSize == SAMPLES_PER_CELL_SIDE)
        require(width == gridWidth * parameters.bilateralSpatialBinSize)
        require(height == gridHeight * parameters.bilateralSpatialBinSize)

        val spatialRadius = BILATERAL_FILTER_RADIUS
        val extendedWidth = gridWidth + 2 * spatialRadius
        val extendedHeight = gridHeight + 2 * spatialRadius
        val rangeBinCount = (1f / parameters.bilateralRangeSigma).roundToInt()
        val rangePlaneCount = rangeBinCount + 2
        val histogram = FloatArray(
            extendedWidth * extendedHeight * rangePlaneCount * BILATERAL_COMPONENTS
        )
        for (extendedY in 0 until extendedHeight) {
            val gridY = extendedY - spatialRadius
            for (extendedX in 0 until extendedWidth) {
                val gridX = extendedX - spatialRadius
                for (localY in 0 until parameters.bilateralSpatialBinSize) {
                    val sampleY = (
                        gridY * parameters.bilateralSpatialBinSize + localY
                        ).coerceIn(0, height - 1)
                    for (localX in 0 until parameters.bilateralSpatialBinSize) {
                        val sampleX = (
                            gridX * parameters.bilateralSpatialBinSize + localX
                            ).coerceIn(0, width - 1)
                        val sampleIndex = sampleY * width + sampleX
                        val sourceValue = source[sampleIndex].coerceIn(0f, 1f)
                        val x = fitInput[sampleIndex].coerceAtLeast(0f)
                        val y = target[sampleIndex].coerceAtLeast(0f)
                        val guide = curvedBilateralGuide(
                            value = sourceValue,
                            alpha = parameters.bilateralGuideCurveAlpha,
                        )
                        val z = (guide * rangeBinCount).roundToInt()
                            .coerceIn(0, rangeBinCount)
                        val offset = bilateralIndex(
                            x = extendedX,
                            y = extendedY,
                            z = z,
                            component = 0,
                            width = extendedWidth,
                            rangePlanes = rangePlaneCount,
                        )
                        // Sufficient statistics for the constrained model y = gain * x.
                        histogram[offset] += x * x
                        histogram[offset + 1] += x
                        histogram[offset + 2] += 1f
                        histogram[offset + 3] += y * x
                        histogram[offset + 4] += y
                    }
                }
            }
        }

        val blurredZ = FloatArray(histogram.size)
        for (y in 0 until extendedHeight) {
            for (x in 0 until extendedWidth) {
                for (z in 0 until rangePlaneCount) {
                    for (component in 0 until BILATERAL_COMPONENTS) {
                        var sum = 0f
                        for (delta in -BILATERAL_FILTER_RADIUS..BILATERAL_FILTER_RADIUS) {
                            val sampleZ = z + delta
                            if (sampleZ !in 0 until rangePlaneCount) continue
                            sum += histogram[
                                bilateralIndex(
                                    x,
                                    y,
                                    sampleZ,
                                    component,
                                    extendedWidth,
                                    rangePlaneCount,
                                )
                            ] * bilateralBlurWeights[abs(delta)]
                        }
                        blurredZ[
                            bilateralIndex(
                                x,
                                y,
                                z,
                                component,
                                extendedWidth,
                                rangePlaneCount,
                            )
                        ] = sum
                    }
                }
            }
        }

        val blurredY = FloatArray(
            extendedWidth * gridHeight * rangePlaneCount * BILATERAL_COMPONENTS
        )
        for (y in 0 until gridHeight) {
            for (x in 0 until extendedWidth) {
                for (z in 0 until rangePlaneCount) {
                    for (component in 0 until BILATERAL_COMPONENTS) {
                        var sum = 0f
                        for (delta in -BILATERAL_FILTER_RADIUS..BILATERAL_FILTER_RADIUS) {
                            sum += blurredZ[
                                bilateralIndex(
                                    x,
                                    y + spatialRadius + delta,
                                    z,
                                    component,
                                    extendedWidth,
                                    rangePlaneCount,
                                )
                            ] * bilateralBlurWeights[abs(delta)]
                        }
                        blurredY[
                            bilateralIndex(
                                x,
                                y,
                                z,
                                component,
                                extendedWidth,
                                rangePlaneCount,
                            )
                        ] = sum
                    }
                }
            }
        }

        val blurred = FloatArray(
            gridWidth * gridHeight * rangePlaneCount * BILATERAL_COMPONENTS
        )
        for (y in 0 until gridHeight) {
            for (x in 0 until gridWidth) {
                for (z in 0 until rangePlaneCount) {
                    for (component in 0 until BILATERAL_COMPONENTS) {
                        var sum = 0f
                        for (delta in -BILATERAL_FILTER_RADIUS..BILATERAL_FILTER_RADIUS) {
                            sum += blurredY[
                                bilateralIndex(
                                    x + spatialRadius + delta,
                                    y,
                                    z,
                                    component,
                                    extendedWidth,
                                    rangePlaneCount,
                                )
                            ] * bilateralBlurWeights[abs(delta)]
                        }
                        blurred[
                            bilateralIndex(
                                x,
                                y,
                                z,
                                component,
                                gridWidth,
                                rangePlaneCount,
                            )
                        ] = sum
                    }
                }
            }
        }

        val gains = FloatArray(gridWidth * gridHeight * rangePlaneCount)
        val lambda = parameters.bilateralRegularization
        for (y in 0 until gridHeight) {
            for (x in 0 until gridWidth) {
                for (z in 0 until rangePlaneCount) {
                    val sourceOffset = bilateralIndex(
                        x,
                        y,
                        z,
                        component = 0,
                        width = gridWidth,
                        rangePlanes = rangePlaneCount,
                    )
                    val sumXX = blurred[sourceOffset]
                    val sumWeight = blurred[sourceOffset + 2]
                    val sumYX = blurred[sourceOffset + 3]
                    val coefficientOffset = (y * gridWidth + x) * rangePlaneCount + z
                    val gain = solveRegularizedScalarGain(
                        sumXX = sumXX,
                        sumWeight = sumWeight,
                        sumYX = sumYX,
                        identitySlope = identitySlope,
                        regularization = lambda,
                    )
                    require(gain.isFinite() && gain >= 0f) {
                        "Invalid scalar BGU gain at ($x,$y,$z): $gain"
                    }
                    gains[coefficientOffset] = gain
                }
            }
        }
        return ScalarGainBilateralGrid(
            width = gridWidth,
            height = gridHeight,
            rangeBinCount = rangeBinCount,
            rangePlaneCount = rangePlaneCount,
            guideCurveAlpha = parameters.bilateralGuideCurveAlpha,
            gains = gains,
        )
    }

    /**
     * Solves `y=gain*x` with Halide's [regularization]-sample identity prior.
     *
     * A synthetic identity observation at the cell's RMS input contributes
     * `regularization * mean(x²)` to both normal-equation sides. Adding the raw regularization
     * instead would be an `x=1` observation and would overwhelm real evidence in dark cells.
     */
    internal fun solveRegularizedScalarGain(
        sumXX: Float,
        sumWeight: Float,
        sumYX: Float,
        identitySlope: Float,
        regularization: Float,
    ): Float {
        require(sumXX.isFinite() && sumXX >= 0f)
        require(sumWeight.isFinite() && sumWeight >= 0f)
        require(sumYX.isFinite() && sumYX >= 0f)
        require(identitySlope.isFinite() && identitySlope > 0f)
        require(regularization.isFinite() && regularization > 0f)
        if (sumXX <= 0f || sumWeight <= 0f) return identitySlope
        val identityPriorXX = regularization * (sumXX / sumWeight)
        return (
            sumYX + identityPriorXX * identitySlope
            ) / (
            sumXX + identityPriorXX
            )
    }

    private fun buildGainCurves(
        plan: PhotonProfileGainTablePlan,
        photonPlan: PhotonPgtmPlan,
        gainGrid: ScalarGainBilateralGrid,
    ): FloatArray {
        val result = FloatArray(plan.cellCount * plan.pointCount)
        repeat(plan.cellCount) { cell ->
            val outputOffset = cell * plan.pointCount
            for (point in 0 until plan.pointCount) {
                val evaluatedPoint = if (point == 0) 1 else point
                val sourceInput = tableInput(evaluatedPoint, plan.pointCount)
                val fittedGain = gainGrid.gain(cell, sourceInput).coerceIn(
                    photonPlan.minTableGain,
                    photonPlan.maxTableGain,
                )
                val diagnosticGain = applyDiagnostic(
                    trueGain = fittedGain,
                    tableInput = sourceInput,
                    plan = plan,
                )
                result[outputOffset + point] = diagnosticGain.coerceIn(
                    photonPlan.minTableGain,
                    photonPlan.maxTableGain,
                )
            }
        }
        return result
    }

    private fun applyDiagnostic(
        trueGain: Float,
        tableInput: Float,
        plan: PhotonProfileGainTablePlan,
    ): Float {
        val band = plan.diagnosticBand ?: return trueGain
        val mask = diagnosticMask(tableInput, band)
        return when (band.mode) {
            DngPhotonProfileGainTableGenerator.DiagnosticMode.PASS_ONLY ->
                lerp(1f, trueGain, mask)
            DngPhotonProfileGainTableGenerator.DiagnosticMode.BLOCK_ONLY ->
                lerp(trueGain, 1f, mask)
        }
    }

    private fun diagnosticMask(
        input: Float,
        band: DngPhotonProfileGainTableGenerator.DiagnosticBand,
    ): Float {
        val enter = if (band.start <= 0f || band.feather <= 0f) {
            if (input >= band.start) 1f else 0f
        } else {
            smoothStep(band.start - band.feather, band.start + band.feather, input)
        }
        val exit = if (band.end >= 1f || band.feather <= 0f) {
            if (input <= band.end) 1f else 0f
        } else {
            1f - smoothStep(band.end - band.feather, band.end + band.feather, input)
        }
        return min(enter, exit).coerceIn(0f, 1f)
    }

    private fun smoothStep(edge0: Float, edge1: Float, value: Float): Float {
        val amount = ((value - edge0) / max(edge1 - edge0, CURVE_EPS)).coerceIn(0f, 1f)
        return amount * amount * (3f - 2f * amount)
    }

    private fun curvedBilateralGuide(value: Float, alpha: Float): Float {
        val clamped = value.coerceIn(0f, 1f)
        return (
            clamped / ((1f - alpha) + alpha * clamped).coerceAtLeast(CURVE_EPS)
            ).coerceIn(0f, 1f)
    }

    private fun unpackCellMajorSamples(
        samples: FloatArray,
        gridWidth: Int,
        gridHeight: Int,
    ): FloatArray {
        val width = gridWidth * SAMPLES_PER_CELL_SIDE
        val output = FloatArray(width * gridHeight * SAMPLES_PER_CELL_SIDE)
        repeat(gridHeight) { cellY ->
            repeat(gridWidth) { cellX ->
                val cellOffset = (cellY * gridWidth + cellX) * SAMPLES_PER_CELL
                repeat(SAMPLES_PER_CELL_SIDE) { localY ->
                    val outputOffset =
                        (cellY * SAMPLES_PER_CELL_SIDE + localY) * width +
                            cellX * SAMPLES_PER_CELL_SIDE
                    samples.copyInto(
                        destination = output,
                        destinationOffset = outputOffset,
                        startIndex = cellOffset + localY * SAMPLES_PER_CELL_SIDE,
                        endIndex = cellOffset + (localY + 1) * SAMPLES_PER_CELL_SIDE,
                    )
                }
            }
        }
        return output
    }

    private fun remapLocalLaplacianDelta(
        delta: Float,
        sigma: Float,
        detailExponent: Float,
        edgeSlope: Float,
    ): Float {
        val magnitude = abs(delta)
        val direction = when {
            delta > 0f -> 1f
            delta < 0f -> -1f
            else -> 0f
        }
        val remappedMagnitude = if (magnitude <= sigma) {
            sigma * (magnitude / max(sigma, SOURCE_EPSILON)).toDouble()
                .pow(detailExponent.toDouble())
                .toFloat()
        } else {
            sigma + edgeSlope * (magnitude - sigma)
        }
        return direction * remappedMagnitude
    }

    private fun referencePyramidLevelCount(width: Int, height: Int): Int {
        val minimumDimension = min(width, height).coerceAtLeast(1)
        // llf_general.m: ceil(log(min(height,width))-log(2))+2.
        val requested = ceil(
            ln(minimumDimension.toDouble()) - ln(2.0)
        ).toInt() + 2
        var possible = 1
        var dimension = minimumDimension
        while (dimension > 1) {
            possible++
            dimension = (dimension + 1) / 2
        }
        return requested.coerceIn(1, possible)
    }

    private fun gaussianPyramid(
        input: FloatArray,
        width: Int,
        height: Int,
        levelCount: Int,
    ): Array<Plane> {
        val result = ArrayList<Plane>(levelCount)
        var current = Plane(width, height, input)
        result += current
        repeat(levelCount - 1) {
            current = downsample(current)
            result += current
        }
        return result.toTypedArray()
    }

    /**
     * Separable five-tap filtering, valid-sample reweighting, and even-coordinate decimation from
     * the published MATLAB downsample.m.
     */
    private fun downsample(source: Plane): Plane {
        val outputWidth = (source.width + 1) / 2
        val outputHeight = (source.height + 1) / 2
        val horizontal = FloatArray(outputWidth * source.height)
        for (y in 0 until source.height) {
            for (outputX in 0 until outputWidth) {
                val centerX = outputX * 2
                var sum = 0f
                var weightSum = 0f
                for (delta in -PYRAMID_FILTER_RADIUS..PYRAMID_FILTER_RADIUS) {
                    val sourceX = centerX + delta
                    if (sourceX !in 0 until source.width) continue
                    val weight = localLaplacianPyramidFilter[delta + PYRAMID_FILTER_RADIUS]
                    sum += source.data[y * source.width + sourceX] * weight
                    weightSum += weight
                }
                horizontal[y * outputWidth + outputX] = sum / weightSum
            }
        }
        val output = FloatArray(outputWidth * outputHeight)
        for (outputY in 0 until outputHeight) {
            val centerY = outputY * 2
            for (x in 0 until outputWidth) {
                var sum = 0f
                var weightSum = 0f
                for (delta in -PYRAMID_FILTER_RADIUS..PYRAMID_FILTER_RADIUS) {
                    val sourceY = centerY + delta
                    if (sourceY !in 0 until source.height) continue
                    val weight = localLaplacianPyramidFilter[delta + PYRAMID_FILTER_RADIUS]
                    sum += horizontal[sourceY * outputWidth + x] * weight
                    weightSum += weight
                }
                output[outputY * outputWidth + x] = sum / weightSum
            }
        }
        return Plane(outputWidth, outputHeight, output)
    }

    /**
     * Zero insertion, five-tap filtering, and valid-inserted-sample reweighting from upsample.m.
     */
    private fun upsample(
        source: Plane,
        targetWidth: Int,
        targetHeight: Int,
    ): FloatArray {
        val horizontal = FloatArray(targetWidth * source.height)
        for (y in 0 until source.height) {
            for (targetX in 0 until targetWidth) {
                var sum = 0f
                var weightSum = 0f
                for (delta in -PYRAMID_FILTER_RADIUS..PYRAMID_FILTER_RADIUS) {
                    val insertedX = targetX + delta
                    if ((insertedX and 1) != 0) continue
                    val sourceX = insertedX / 2
                    if (sourceX !in 0 until source.width) continue
                    val weight = localLaplacianPyramidFilter[delta + PYRAMID_FILTER_RADIUS]
                    sum += source.data[y * source.width + sourceX] * weight
                    weightSum += weight
                }
                horizontal[y * targetWidth + targetX] = sum / weightSum
            }
        }
        val output = FloatArray(targetWidth * targetHeight)
        for (targetY in 0 until targetHeight) {
            for (x in 0 until targetWidth) {
                var sum = 0f
                var weightSum = 0f
                for (delta in -PYRAMID_FILTER_RADIUS..PYRAMID_FILTER_RADIUS) {
                    val insertedY = targetY + delta
                    if ((insertedY and 1) != 0) continue
                    val sourceY = insertedY / 2
                    if (sourceY !in 0 until source.height) continue
                    val weight = localLaplacianPyramidFilter[delta + PYRAMID_FILTER_RADIUS]
                    sum += horizontal[sourceY * targetWidth + x] * weight
                    weightSum += weight
                }
                output[targetY * targetWidth + x] = sum / weightSum
            }
        }
        return output
    }

    /** MATLAB prctile's default midpoint/exact-sample convention (Hyndman-Fan type 5). */
    internal fun percentile(sorted: FloatArray, quantile: Float): Float {
        require(sorted.isNotEmpty())
        if (sorted.size == 1) return sorted[0]
        val position = (
            quantile.coerceIn(0f, 1f).toDouble() * sorted.size.toDouble() - 0.5
            ).coerceIn(0.0, sorted.lastIndex.toDouble())
        val lower = floor(position).toInt()
        val upper = min(lower + 1, sorted.lastIndex)
        return lerp(sorted[lower], sorted[upper], (position - lower).toFloat())
    }

    internal fun localLaplacianEdgeSlope(
        inputLower: Float,
        inputUpper: Float,
        targetDynamicRange: Float,
    ): Float {
        val targetLogDynamicRange = ln(targetDynamicRange.toDouble()).toFloat()
        val inputLogDynamicRange = ln((inputUpper / inputLower).toDouble()).toFloat()
        return if (!inputLogDynamicRange.isFinite() || inputLogDynamicRange <= CURVE_EPS) {
            1f
        } else {
            min(1f, targetLogDynamicRange / inputLogDynamicRange)
        }
    }

    internal fun outputPercentileExponent(
        filteredLower: Float,
        filteredUpper: Float,
        exposureGain: Float,
        targetDynamicRange: Float,
    ): Float {
        require(filteredLower.isFinite() && filteredLower >= 0f)
        require(filteredUpper.isFinite() && filteredUpper >= filteredLower)
        require(exposureGain.isFinite() && exposureGain > 0f)
        require(targetDynamicRange.isFinite() && targetDynamicRange > 1f)
        if (filteredUpper <= 0f) return 1f
        // The official HDR examples contain strictly positive radiance. RAW black can be exact
        // zero, so define the finite endpoint used by the logarithmic DR calculation without
        // changing the percentile itself or lifting zero-valued output samples.
        val dynamicRangeLower = max(
            filteredLower,
            exposureGain * DYNAMIC_RANGE_BLACK_FLOOR,
        ).coerceAtMost(filteredUpper)
        if (dynamicRangeLower >= filteredUpper) return 1f
        val filteredLogDynamicRange =
            ln((filteredUpper / dynamicRangeLower).toDouble()).toFloat()
        if (!filteredLogDynamicRange.isFinite() || filteredLogDynamicRange <= CURVE_EPS) return 1f
        return min(
            1f,
            (ln(targetDynamicRange.toDouble()) / filteredLogDynamicRange).toFloat(),
        )
    }

    internal fun outputUpperPercentile(
        filteredUpper: Float,
        outputExponent: Float,
    ): Float {
        require(filteredUpper.isFinite() && filteredUpper >= 0f)
        require(outputExponent.isFinite() && outputExponent in 0f..1f)
        if (filteredUpper <= 0f) return 0f
        if (filteredUpper >= 1f) return 1f
        val gammaMappedUpper = filteredUpper.toDouble()
            .pow(outputExponent.toDouble())
            .toFloat()
        val compressionStrength = (1f - outputExponent).coerceIn(0f, 1f)
        val blend = compressionStrength * compressionStrength *
            (3f - 2f * compressionStrength)
        return lerp(gammaMappedUpper, 1f, blend)
    }

    private fun bilateralIndex(
        x: Int,
        y: Int,
        z: Int,
        component: Int,
        width: Int,
        rangePlanes: Int,
    ): Int = (((y * width + x) * rangePlanes + z) * BILATERAL_COMPONENTS) + component

    private fun tableInput(point: Int, count: Int): Float =
        if (point == count - 1) 1f else point.toFloat() / count.toFloat()

    private fun lerp(start: Float, end: Float, amount: Float): Float =
        start + (end - start) * amount

    private data class Plane(
        val width: Int,
        val height: Int,
        val data: FloatArray,
    )
}

internal data class PhotonLocalToneMapResult(
    val target: FloatArray,
) {
    init {
        require(target.all { it.isFinite() && it >= 0f })
    }
}

internal data class ScalarGainBilateralGrid(
    val width: Int,
    val height: Int,
    val rangeBinCount: Int,
    val rangePlaneCount: Int,
    val guideCurveAlpha: Float,
    val gains: FloatArray,
) {
    init {
        val expected = width * height * rangePlaneCount
        require(width > 0 && height > 0 && rangeBinCount > 0)
        require(rangePlaneCount == rangeBinCount + 2)
        require(guideCurveAlpha.isFinite() && guideCurveAlpha in 0f..1f)
        require(gains.size == expected)
    }

    fun gain(cell: Int, source: Float): Float {
        require(cell in 0 until width * height)
        val linearSource = source.coerceIn(0f, 1f)
        val curvedGuide = (
            linearSource /
                ((1f - guideCurveAlpha) + guideCurveAlpha * linearSource).coerceAtLeast(1e-6f)
            ).coerceIn(0f, 1f)
        val rangeCoordinate = curvedGuide * rangeBinCount
        val first = floor(rangeCoordinate).toInt().coerceIn(0, rangeBinCount)
        val second = first + 1
        val amount = rangeCoordinate - first
        val offset = cell * rangePlaneCount
        return gains[offset + first] +
            (gains[offset + second] - gains[offset + first]) * amount
    }
}
