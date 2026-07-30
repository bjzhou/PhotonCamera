package com.hinnka.mycamera.lut.creator

import kotlin.math.*

/**
 * Generator for applying the LutRecipe parameters to a color grid
 * and interpolating it into a 33x33x33 3D Matrix (Cube LUT) using
 * confidence-weighted local residual interpolation in Oklab.
 */
object LutGenerator {
    private const val INTERPOLATION_NEIGHBORS = 20
    private const val INTERPOLATION_POWER = 2.4
    private const val SMOOTH_ITERATIONS = 2
    private const val SMOOTH_STRENGTH = 0.28f
    private const val CLOSEST_PROJECTION_BLEND = 0.14f
    private const val MONOTONIC_EPSILON = 1e-5f
    private const val RESIDUAL_RANGE_SIGMA = 0.07f

    private data class OklabMapping(
        val source: FloatArray,
        val residual: FloatArray,
        val confidence: Float
    )

    /**
     * Generate a 33x33x33 Cube LUT representation from a LutRecipe.
     * Returns a float array of size 33 * 33 * 33 * 3
     * where each RGB element is stored sequentially.
     */
    fun generateLut(recipe: LutRecipe, size: Int = 33): FloatArray {
        require(size >= 2) { "LUT size must be at least 2" }
        if (recipe.controlPoints.isEmpty()) return createIdentityLut(size)

        validateControlPoints(recipe.controlPoints)
        val identity = createIdentityLut(size)
        val mappings = recipe.controlPoints.map(::toOklabMapping)
        val rawLut = interpolateOklabResiduals(identity, mappings, recipe.isMonochrome)
        return constrainSmoothMonotonic(
            rawLut = rawLut,
            identityLut = identity,
            size = size,
            isMonochrome = recipe.isMonochrome
        )
    }

    /**
     * Projects the LUT onto a smooth monotonic result while retaining the closest
     * style-preserving projection as an attractor.
     */
    private fun constrainSmoothMonotonic(
        rawLut: FloatArray,
        identityLut: FloatArray,
        size: Int,
        isMonochrome: Boolean
    ): FloatArray {
        val closestMonotonic = if (isMonochrome) {
            projectMonochromePava(rawLut, size)
        } else {
            projectPrimaryChannelsPava(rawLut, size)
        }
        var current = closestMonotonic

        repeat(SMOOTH_ITERATIONS) {
            val smoothed = if (isMonochrome) {
                smoothMonochromeResidual(current, identityLut, size, SMOOTH_STRENGTH)
            } else {
                smoothColorResidual(current, identityLut, size, SMOOTH_STRENGTH)
            }
            val projected = if (isMonochrome) {
                projectMonochromePava(smoothed, size)
            } else {
                projectPrimaryChannelsPava(smoothed, size)
            }
            current = FloatArray(projected.size) { index ->
                projected[index] * (1f - CLOSEST_PROJECTION_BLEND) +
                    closestMonotonic[index] * CLOSEST_PROJECTION_BLEND
            }
        }

        return FloatArray(current.size) { index ->
            val value = current[index]
            require(value.isFinite()) { "Generated LUT contains a non-finite value at index $index" }
            value.coerceIn(0f, 1f)
        }
    }

    internal fun projectPrimaryChannelsPava(lut: FloatArray, size: Int): FloatArray {
        require(lut.size == size * size * size * 3)
        val result = lut.copyOf()
        val sequence = FloatArray(size)

        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    sequence[r] = result[gridOffset(b, g, r, size)]
                }
                val projected = pavaNonDecreasing(sequence)
                for (r in 0 until size) {
                    result[gridOffset(b, g, r, size)] = projected[r]
                }
            }
        }

        for (b in 0 until size) {
            for (r in 0 until size) {
                for (g in 0 until size) {
                    sequence[g] = result[gridOffset(b, g, r, size) + 1]
                }
                val projected = pavaNonDecreasing(sequence)
                for (g in 0 until size) {
                    result[gridOffset(b, g, r, size) + 1] = projected[g]
                }
            }
        }

        for (g in 0 until size) {
            for (r in 0 until size) {
                for (b in 0 until size) {
                    sequence[b] = result[gridOffset(b, g, r, size) + 2]
                }
                val projected = pavaNonDecreasing(sequence)
                for (b in 0 until size) {
                    result[gridOffset(b, g, r, size) + 2] = projected[b]
                }
            }
        }

        return result
    }

    internal fun pavaNonDecreasing(sequence: FloatArray): FloatArray {
        if (sequence.isEmpty()) return sequence.copyOf()
        require(sequence.all(Float::isFinite)) { "PAVA input must be finite" }

        val levels = FloatArray(sequence.size)
        val weights = IntArray(sequence.size)
        val starts = IntArray(sequence.size)
        val ends = IntArray(sequence.size)
        var blockCount = 0

        sequence.forEachIndexed { index, value ->
            levels[blockCount] = value
            weights[blockCount] = 1
            starts[blockCount] = index
            ends[blockCount] = index
            blockCount++

            while (blockCount >= 2 && levels[blockCount - 2] > levels[blockCount - 1]) {
                val left = blockCount - 2
                val right = blockCount - 1
                val mergedWeight = weights[left] + weights[right]
                levels[left] =
                    (levels[left] * weights[left] + levels[right] * weights[right]) / mergedWeight
                weights[left] = mergedWeight
                ends[left] = ends[right]
                blockCount--
            }
        }

        return FloatArray(sequence.size).also { result ->
            for (block in 0 until blockCount) {
                for (index in starts[block]..ends[block]) {
                    result[index] = levels[block]
                }
            }
        }
    }

    internal fun maxPrimaryMonotonicViolation(lut: FloatArray, size: Int): Float {
        var maxViolation = 0f
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 1 until size) {
                    val current = lut[gridOffset(b, g, r, size)]
                    val previous = lut[gridOffset(b, g, r - 1, size)]
                    maxViolation = max(maxViolation, previous - current)
                }
            }
        }
        for (b in 0 until size) {
            for (r in 0 until size) {
                for (g in 1 until size) {
                    val current = lut[gridOffset(b, g, r, size) + 1]
                    val previous = lut[gridOffset(b, g - 1, r, size) + 1]
                    maxViolation = max(maxViolation, previous - current)
                }
            }
        }
        for (g in 0 until size) {
            for (r in 0 until size) {
                for (b in 1 until size) {
                    val current = lut[gridOffset(b, g, r, size) + 2]
                    val previous = lut[gridOffset(b - 1, g, r, size) + 2]
                    maxViolation = max(maxViolation, previous - current)
                }
            }
        }
        return maxViolation
    }

    private fun projectMonochromePava(lut: FloatArray, size: Int): FloatArray {
        val gray = FloatArray(size * size * size) { index ->
            val offset = index * 3
            rec709Luma(lut[offset], lut[offset + 1], lut[offset + 2])
        }
        val sequence = FloatArray(size)

        repeat(8) {
            for (b in 0 until size) {
                for (g in 0 until size) {
                    for (r in 0 until size) sequence[r] = gray[gridIndex(b, g, r, size)]
                    val projected = pavaNonDecreasing(sequence)
                    for (r in 0 until size) gray[gridIndex(b, g, r, size)] = projected[r]
                }
            }
            for (b in 0 until size) {
                for (r in 0 until size) {
                    for (g in 0 until size) sequence[g] = gray[gridIndex(b, g, r, size)]
                    val projected = pavaNonDecreasing(sequence)
                    for (g in 0 until size) gray[gridIndex(b, g, r, size)] = projected[g]
                }
            }
            for (g in 0 until size) {
                for (r in 0 until size) {
                    for (b in 0 until size) sequence[b] = gray[gridIndex(b, g, r, size)]
                    val projected = pavaNonDecreasing(sequence)
                    for (b in 0 until size) gray[gridIndex(b, g, r, size)] = projected[b]
                }
            }
            if (maxScalarMonotonicViolation(gray, size) <= MONOTONIC_EPSILON) {
                return expandGray(gray)
            }
        }

        enforceScalarCumulativeFallback(gray, size)
        return expandGray(gray)
    }

    private fun maxScalarMonotonicViolation(gray: FloatArray, size: Int): Float {
        var maxViolation = 0f
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 1 until size) {
                    maxViolation = max(
                        maxViolation,
                        gray[gridIndex(b, g, r - 1, size)] - gray[gridIndex(b, g, r, size)]
                    )
                }
            }
        }
        for (b in 0 until size) {
            for (r in 0 until size) {
                for (g in 1 until size) {
                    maxViolation = max(
                        maxViolation,
                        gray[gridIndex(b, g - 1, r, size)] - gray[gridIndex(b, g, r, size)]
                    )
                }
            }
        }
        for (g in 0 until size) {
            for (r in 0 until size) {
                for (b in 1 until size) {
                    maxViolation = max(
                        maxViolation,
                        gray[gridIndex(b - 1, g, r, size)] - gray[gridIndex(b, g, r, size)]
                    )
                }
            }
        }
        return maxViolation
    }

    private fun enforceScalarCumulativeFallback(gray: FloatArray, size: Int) {
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 1 until size) {
                    val index = gridIndex(b, g, r, size)
                    gray[index] = max(gray[index], gray[gridIndex(b, g, r - 1, size)])
                }
            }
        }
        for (b in 0 until size) {
            for (r in 0 until size) {
                for (g in 1 until size) {
                    val index = gridIndex(b, g, r, size)
                    gray[index] = max(gray[index], gray[gridIndex(b, g - 1, r, size)])
                }
            }
        }
        for (g in 0 until size) {
            for (r in 0 until size) {
                for (b in 1 until size) {
                    val index = gridIndex(b, g, r, size)
                    gray[index] = max(gray[index], gray[gridIndex(b - 1, g, r, size)])
                }
            }
        }
    }

    private fun interpolateOklabResiduals(
        identityLut: FloatArray,
        mappings: List<OklabMapping>,
        isMonochrome: Boolean
    ): FloatArray {
        val result = FloatArray(identityLut.size)
        val nearestCount = min(INTERPOLATION_NEIGHBORS, mappings.size)
        val nearestIndices = IntArray(nearestCount)
        val nearestDistances = DoubleArray(nearestCount)

        for (offset in identityLut.indices step 3) {
            val input = srgbToOklab(
                identityLut[offset],
                identityLut[offset + 1],
                identityLut[offset + 2]
            )
            nearestDistances.fill(Double.POSITIVE_INFINITY)

            mappings.forEachIndexed { mappingIndex, mapping ->
                val dL = (input[0] - mapping.source[0]).toDouble()
                val da = (input[1] - mapping.source[1]).toDouble()
                val db = (input[2] - mapping.source[2]).toDouble()
                val distanceSquared = dL * dL + da * da + db * db

                var insertionIndex = -1
                for (candidate in 0 until nearestCount) {
                    if (distanceSquared < nearestDistances[candidate]) {
                        insertionIndex = candidate
                        break
                    }
                }
                if (insertionIndex >= 0) {
                    for (candidate in nearestCount - 1 downTo insertionIndex + 1) {
                        nearestDistances[candidate] = nearestDistances[candidate - 1]
                        nearestIndices[candidate] = nearestIndices[candidate - 1]
                    }
                    nearestDistances[insertionIndex] = distanceSquared
                    nearestIndices[insertionIndex] = mappingIndex
                }
            }

            var weightSum = 0.0
            var residualL = 0.0
            var residualA = 0.0
            var residualB = 0.0
            for (neighbor in 0 until nearestCount) {
                val mapping = mappings[nearestIndices[neighbor]]
                val confidenceWeight = 0.25 + 0.75 * sqrt(mapping.confidence.toDouble())
                val distanceWeight =
                    1.0 / (nearestDistances[neighbor].pow(INTERPOLATION_POWER / 2.0) + 1e-9)
                val weight = confidenceWeight * distanceWeight
                weightSum += weight
                residualL += mapping.residual[0] * weight
                residualA += mapping.residual[1] * weight
                residualB += mapping.residual[2] * weight
            }

            val outputL = input[0] + (residualL / weightSum).toFloat()
            val outputA = if (isMonochrome) 0f else input[1] + (residualA / weightSum).toFloat()
            val outputB = if (isMonochrome) 0f else input[2] + (residualB / weightSum).toFloat()
            val output = oklabToSrgb(outputL, outputA, outputB)
            result[offset] = output[0]
            result[offset + 1] = output[1]
            result[offset + 2] = output[2]
        }

        return result
    }

    private fun smoothColorResidual(
        lut: FloatArray,
        identity: FloatArray,
        size: Int,
        strength: Float
    ): FloatArray {
        val result = FloatArray(lut.size)
        val sigmaDenominator = 2f * RESIDUAL_RANGE_SIGMA * RESIDUAL_RANGE_SIGMA * 3f

        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val offset = gridOffset(b, g, r, size)
                    val centerR = lut[offset] - identity[offset]
                    val centerG = lut[offset + 1] - identity[offset + 1]
                    val centerB = lut[offset + 2] - identity[offset + 2]
                    var sumR = 0.0
                    var sumG = 0.0
                    var sumB = 0.0
                    var weightSum = 0.0

                    for (db in -1..1) {
                        for (dg in -1..1) {
                            for (dr in -1..1) {
                                val neighborOffset = gridOffset(
                                    (b + db).coerceIn(0, size - 1),
                                    (g + dg).coerceIn(0, size - 1),
                                    (r + dr).coerceIn(0, size - 1),
                                    size
                                )
                                val neighborR = lut[neighborOffset] - identity[neighborOffset]
                                val neighborG = lut[neighborOffset + 1] - identity[neighborOffset + 1]
                                val neighborB = lut[neighborOffset + 2] - identity[neighborOffset + 2]
                                val deltaR = neighborR - centerR
                                val deltaG = neighborG - centerG
                                val deltaB = neighborB - centerB
                                val rangeDistance =
                                    deltaR * deltaR + deltaG * deltaG + deltaB * deltaB
                                val spatialDistance = (db * db + dg * dg + dr * dr).toDouble()
                                val weight =
                                    exp(-spatialDistance / 2.0) *
                                        exp((-rangeDistance / sigmaDenominator).toDouble())
                                sumR += neighborR * weight
                                sumG += neighborG * weight
                                sumB += neighborB * weight
                                weightSum += weight
                            }
                        }
                    }

                    result[offset] =
                        identity[offset] + centerR * (1f - strength) + (sumR / weightSum).toFloat() * strength
                    result[offset + 1] =
                        identity[offset + 1] + centerG * (1f - strength) + (sumG / weightSum).toFloat() * strength
                    result[offset + 2] =
                        identity[offset + 2] + centerB * (1f - strength) + (sumB / weightSum).toFloat() * strength
                }
            }
        }
        return result
    }

    private fun smoothMonochromeResidual(
        lut: FloatArray,
        identity: FloatArray,
        size: Int,
        strength: Float
    ): FloatArray {
        val pointCount = size * size * size
        val gray = FloatArray(pointCount)
        val identityGray = FloatArray(pointCount)
        for (index in 0 until pointCount) {
            val offset = index * 3
            gray[index] = rec709Luma(lut[offset], lut[offset + 1], lut[offset + 2])
            identityGray[index] =
                rec709Luma(identity[offset], identity[offset + 1], identity[offset + 2])
        }

        val smoothed = FloatArray(pointCount)
        val sigmaDenominator = 2f * RESIDUAL_RANGE_SIGMA * RESIDUAL_RANGE_SIGMA
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val index = gridIndex(b, g, r, size)
                    val center = gray[index] - identityGray[index]
                    var weightedSum = 0.0
                    var weightSum = 0.0
                    for (db in -1..1) {
                        for (dg in -1..1) {
                            for (dr in -1..1) {
                                val neighborIndex = gridIndex(
                                    (b + db).coerceIn(0, size - 1),
                                    (g + dg).coerceIn(0, size - 1),
                                    (r + dr).coerceIn(0, size - 1),
                                    size
                                )
                                val neighbor = gray[neighborIndex] - identityGray[neighborIndex]
                                val rangeDistance = (neighbor - center) * (neighbor - center)
                                val spatialDistance = (db * db + dg * dg + dr * dr).toDouble()
                                val weight =
                                    exp(-spatialDistance / 2.0) *
                                        exp((-rangeDistance / sigmaDenominator).toDouble())
                                weightedSum += neighbor * weight
                                weightSum += weight
                            }
                        }
                    }
                    smoothed[index] =
                        identityGray[index] + center * (1f - strength) +
                            (weightedSum / weightSum).toFloat() * strength
                }
            }
        }
        return expandGray(smoothed)
    }

    private fun validateControlPoints(controlPoints: List<ControlPoint>) {
        controlPoints.forEachIndexed { index, point ->
            val values = floatArrayOf(
                point.sourceR,
                point.sourceG,
                point.sourceB,
                point.targetR,
                point.targetG,
                point.targetB,
                point.matchConfidence
            )
            require(values.all(Float::isFinite)) {
                "LUT control point $index contains a non-finite value"
            }
            require(values.all { it in 0f..1f }) {
                "LUT control point $index contains a value outside [0, 1]"
            }
        }
    }

    private fun toOklabMapping(point: ControlPoint): OklabMapping {
        val source = srgbToOklab(point.sourceR, point.sourceG, point.sourceB)
        val target = srgbToOklab(point.targetR, point.targetG, point.targetB)
        return OklabMapping(
            source = source,
            residual = floatArrayOf(
                target[0] - source[0],
                target[1] - source[1],
                target[2] - source[2]
            ),
            confidence = point.matchConfidence
        )
    }

    private fun srgbToOklab(r: Float, g: Float, b: Float): FloatArray =
        OklchConverter.linearSrgbToOklab(
            OklchConverter.srgbToLinear(r),
            OklchConverter.srgbToLinear(g),
            OklchConverter.srgbToLinear(b)
        )

    private fun oklabToSrgb(l: Float, a: Float, b: Float): FloatArray {
        val linear = OklchConverter.oklabToLinearSrgb(l, a, b)
        return floatArrayOf(
            OklchConverter.linearToSrgb(linear[0]),
            OklchConverter.linearToSrgb(linear[1]),
            OklchConverter.linearToSrgb(linear[2])
        )
    }

    private fun createIdentityLut(size: Int): FloatArray {
        val result = FloatArray(size * size * size * 3)
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val offset = gridOffset(b, g, r, size)
                    result[offset] = r.toFloat() / (size - 1)
                    result[offset + 1] = g.toFloat() / (size - 1)
                    result[offset + 2] = b.toFloat() / (size - 1)
                }
            }
        }
        return result
    }

    private fun expandGray(gray: FloatArray): FloatArray =
        FloatArray(gray.size * 3) { index -> gray[index / 3] }

    private fun rec709Luma(r: Float, g: Float, b: Float): Float =
        r * 0.2126f + g * 0.7152f + b * 0.0722f

    private fun gridIndex(b: Int, g: Int, r: Int, size: Int): Int =
        b * size * size + g * size + r

    private fun gridOffset(b: Int, g: Int, r: Int, size: Int): Int =
        gridIndex(b, g, r, size) * 3

    /**
     * Converts raw 3D FloatArray back to the .cube file format as a String
     */
    fun exportToCubeString(lutData: FloatArray, size: Int = 33, title: String = "Custom LUT"): String {
        val sb = StringBuilder()
        sb.append("TITLE \"").append(title).append("\"\n")
        sb.append("LUT_3D_SIZE ").append(size).append("\n")
        sb.append("DOMAIN_MIN 0.0 0.0 0.0\n")
        sb.append("DOMAIN_MAX 1.0 1.0 1.0\n\n")

        var index = 0
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 0 until size) {
                    val rVal = lutData[index++]
                    val gVal = lutData[index++]
                    val bVal = lutData[index++]
                    sb.append(String.format(java.util.Locale.US, "%.6f %.6f %.6f\n", rVal, gVal, bVal))
                }
            }
        }
        return sb.toString()
    }
}
