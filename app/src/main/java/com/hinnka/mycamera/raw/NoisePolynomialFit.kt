package com.hinnka.mycamera.raw

internal data class NonNegativeNoisePolynomial(
    val read: Double,
    val shot: Double,
    val quadratic: Double,
    val squaredError: Double,
)

/** Fits variance = read + shot * signal + quadratic * signal^2 with all terms non-negative. */
internal fun fitNonNegativeNoisePolynomial(
    signals: DoubleArray,
    variances: DoubleArray,
    fixedRead: Double? = null,
): NonNegativeNoisePolynomial? {
    if (signals.size != variances.size || signals.isEmpty() ||
        signals.any { !it.isFinite() || it < 0.0 } ||
        variances.any { !it.isFinite() || it < 0.0 } ||
        fixedRead?.let { !it.isFinite() || it < 0.0 } == true
    ) {
        return null
    }

    val design = Array(signals.size) { sample ->
        val signal = signals[sample]
        doubleArrayOf(1.0, signal, signal * signal)
    }
    var best: NonNegativeNoisePolynomial? = null
    for (activeMask in 0 until (1 shl TERM_COUNT)) {
        if (fixedRead != null && activeMask and (1 shl READ) != 0) continue
        val activeTerms = (0 until TERM_COUNT).filter { term ->
            activeMask and (1 shl term) != 0
        }
        val coefficients = DoubleArray(TERM_COUNT)
        if (fixedRead != null) coefficients[READ] = fixedRead
        if (activeTerms.isNotEmpty()) {
            val normal = Array(activeTerms.size) { DoubleArray(activeTerms.size) }
            val rightHandSide = DoubleArray(activeTerms.size)
            for (sample in signals.indices) {
                val target = variances[sample] - coefficients[READ]
                for (row in activeTerms.indices) {
                    val rowValue = design[sample][activeTerms[row]]
                    rightHandSide[row] += rowValue * target
                    for (column in activeTerms.indices) {
                        normal[row][column] +=
                            rowValue * design[sample][activeTerms[column]]
                    }
                }
            }
            val solution = solveLinearSystem(normal, rightHandSide) ?: continue
            if (solution.any { !it.isFinite() || it < -COEFFICIENT_EPSILON }) continue
            for (index in activeTerms.indices) {
                coefficients[activeTerms[index]] = solution[index].coerceAtLeast(0.0)
            }
        }
        val squaredError = signals.indices.sumOf { sample ->
            val predicted =
                coefficients[READ] +
                    coefficients[SHOT] * signals[sample] +
                    coefficients[QUADRATIC] * signals[sample] * signals[sample]
            val residual = predicted - variances[sample]
            residual * residual
        }
        if (!squaredError.isFinite()) continue
        if (best == null || squaredError < best.squaredError) {
            best = NonNegativeNoisePolynomial(
                read = coefficients[READ],
                shot = coefficients[SHOT],
                quadratic = coefficients[QUADRATIC],
                squaredError = squaredError,
            )
        }
    }
    return best
}

private fun solveLinearSystem(
    matrix: Array<DoubleArray>,
    rightHandSide: DoubleArray,
): DoubleArray? {
    val size = rightHandSide.size
    if (matrix.size != size || matrix.any { it.size != size }) return null
    val augmented = Array(size) { row ->
        DoubleArray(size + 1) { column ->
            if (column < size) matrix[row][column] else rightHandSide[row]
        }
    }
    for (pivotColumn in 0 until size) {
        var pivotRow = pivotColumn
        for (candidate in pivotColumn + 1 until size) {
            if (kotlin.math.abs(augmented[candidate][pivotColumn]) >
                kotlin.math.abs(augmented[pivotRow][pivotColumn])
            ) {
                pivotRow = candidate
            }
        }
        val pivot = augmented[pivotRow][pivotColumn]
        if (!pivot.isFinite() || kotlin.math.abs(pivot) <= PIVOT_EPSILON) return null
        if (pivotRow != pivotColumn) {
            val swap = augmented[pivotColumn]
            augmented[pivotColumn] = augmented[pivotRow]
            augmented[pivotRow] = swap
        }
        for (row in pivotColumn + 1 until size) {
            val factor = augmented[row][pivotColumn] / augmented[pivotColumn][pivotColumn]
            for (column in pivotColumn until size + 1) {
                augmented[row][column] -= factor * augmented[pivotColumn][column]
            }
        }
    }
    val result = DoubleArray(size)
    for (row in size - 1 downTo 0) {
        var value = augmented[row][size]
        for (column in row + 1 until size) {
            value -= augmented[row][column] * result[column]
        }
        result[row] = value / augmented[row][row]
    }
    return result
}

private const val READ = 0
private const val SHOT = 1
private const val QUADRATIC = 2
private const val TERM_COUNT = 3
private const val COEFFICIENT_EPSILON = 1e-12
private const val PIVOT_EPSILON = 1e-20
