package com.hinnka.mycamera.lut.creator

import kotlin.math.*

/**
 * Generator for applying the LutRecipe parameters to a color grid
 * and interpolating it into a 33x33x33 3D Matrix (Cube LUT) using RBF 
 * (Radial Basis Function) interpolation.
 */
object LutGenerator {

    /**
     * Given an existing Style Recipe (which maps Source -> Target),
     * and a list of specific Local Target points, this function uses Inverse RBF
     * to deduce what the original Source colors must have been to yield those targets.
     * 
     * It does this by building an RBF that maps Target -> Source.
     */
    fun inverseInterpolate(styleRecipe: LutRecipe, localTargets: List<ControlPoint>): List<ControlPoint> {
        val n = styleRecipe.controlPoints.size
        if (n == 0) return localTargets

        val matrixSize = n + 4
        val M = Array(matrixSize) { DoubleArray(matrixSize) }
        val B = Array(matrixSize) { DoubleArray(3) }

        val pts = styleRecipe.controlPoints

        // Build system mapping Target -> Source Residual (Source - Target)
        for (i in 0 until n) {
            val p1 = pts[i]
            // We fit the inverse residual: Source - Target
            B[i][0] = (p1.sourceR - p1.targetR).toDouble()
            B[i][1] = (p1.sourceG - p1.targetG).toDouble()
            B[i][2] = (p1.sourceB - p1.targetB).toDouble()

            for (j in 0 until n) {
                val p2 = pts[j]
                val dr = p1.targetR - p2.targetR
                val dg = p1.targetG - p2.targetG
                val db = p1.targetB - p2.targetB
                val dist = sqrt((dr * dr + dg * dg + db * db).toDouble())
                M[i][j] = phi(dist)
            }
            M[i][i] += 1e-4 // Regularization for Cubic RBF

            // Polynomial P block (based on Target as input)
            M[i][n] = 1.0
            M[i][n + 1] = p1.targetR.toDouble()
            M[i][n + 2] = p1.targetG.toDouble()
            M[i][n + 3] = p1.targetB.toDouble()

            // Polynomial P^T block
            M[n][i] = 1.0
            M[n + 1][i] = p1.targetR.toDouble()
            M[n + 2][i] = p1.targetG.toDouble()
            M[n + 3][i] = p1.targetB.toDouble()
        }

        val W = solveLinearSystem(M, B)

        // Evaluate Inverse RBF for each local target
        return localTargets.map { local ->
            val tInR = local.targetR.toDouble()
            val tInG = local.targetG.toDouble()
            val tInB = local.targetB.toDouble()

            // Base affine output
            var sOutR = tInR + W[n][0] + W[n + 1][0] * tInR + W[n + 2][0] * tInG + W[n + 3][0] * tInB
            var sOutG = tInG + W[n][1] + W[n + 1][1] * tInR + W[n + 2][1] * tInG + W[n + 3][1] * tInB
            var sOutB = tInB + W[n][2] + W[n + 1][2] * tInR + W[n + 2][2] * tInG + W[n + 3][2] * tInB

            // RBF kernel contributions
            for (i in 0 until n) {
                val p = pts[i]
                val dr = tInR - p.targetR
                val dg = tInG - p.targetG
                val db = tInB - p.targetB
                val dist = sqrt(dr * dr + dg * dg + db * db)
                val rbfVal = phi(dist)

                sOutR += W[i][0] * rbfVal
                sOutG += W[i][1] * rbfVal
                sOutB += W[i][2] * rbfVal
            }

            ControlPoint(
                sourceR = sOutR.toFloat().coerceIn(0f, 1f),
                sourceG = sOutG.toFloat().coerceIn(0f, 1f),
                sourceB = sOutB.toFloat().coerceIn(0f, 1f),
                targetR = local.targetR,
                targetG = local.targetG,
                targetB = local.targetB
            )
        }
    }

    /**
     * Generate a 33x33x33 Cube LUT representation from a LutRecipe.
     * Returns a float array of size 33 * 33 * 33 * 3 
     * where each RGB element is stored sequentially.
     */
    fun generateLut(recipe: LutRecipe, size: Int = 33): FloatArray {
        val lutData = FloatArray(size * size * size * 3)
        var index = 0

        val n = recipe.controlPoints.size

        // If no control points, return Identity LUT
        if (n == 0) {
            for (bIdx in 0 until size) {
                val bIn = bIdx.toFloat() / (size - 1)
                for (gIdx in 0 until size) {
                    val gIn = gIdx.toFloat() / (size - 1)
                    for (rIdx in 0 until size) {
                        val rIn = rIdx.toFloat() / (size - 1)
                        lutData[index++] = rIn
                        lutData[index++] = gIn
                        lutData[index++] = bIn
                    }
                }
            }
            return lutData
        }

        // --- RBF Solver Setup (Using Affine Linear RBF System) ---
        // We solve for weights W that map Source colors to residuals: (Target - Source).
        // This ensures the affine polynomial P(x) can default to Identity.
        // The size of the system is (N + 4) x (N + 4)
        val matrixSize = n + 4
        val M = Array(matrixSize) { DoubleArray(matrixSize) }
        val B = Array(matrixSize) { DoubleArray(3) }

        val pts = recipe.controlPoints

        for (i in 0 until n) {
            val p1 = pts[i]
            // We fit the residual: Target - Source
            B[i][0] = (p1.targetR - p1.sourceR).toDouble()
            B[i][1] = (p1.targetG - p1.sourceG).toDouble()
            B[i][2] = (p1.targetB - p1.sourceB).toDouble()

            for (j in 0 until n) {
                val p2 = pts[j]
                val dr = p1.sourceR - p2.sourceR
                val dg = p1.sourceG - p2.sourceG
                val db = p1.sourceB - p2.sourceB
                val dist = sqrt((dr * dr + dg * dg + db * db).toDouble())
                M[i][j] = phi(dist)
            }
            M[i][i] += 1e-4 // Regularization

            // Polynomial P block
            M[i][n] = 1.0
            M[i][n + 1] = p1.sourceR.toDouble()
            M[i][n + 2] = p1.sourceG.toDouble()
            M[i][n + 3] = p1.sourceB.toDouble()

            // Polynomial P^T block
            M[n][i] = 1.0
            M[n + 1][i] = p1.sourceR.toDouble()
            M[n + 2][i] = p1.sourceG.toDouble()
            M[n + 3][i] = p1.sourceB.toDouble()
        }

        // The remaining bottom-right 4x4 of M is 0.0 (already default)
        // The remaining bottom 4 rows of B are 0.0 (already default)

        // Solve M * W = B for W
        val W = solveLinearSystem(M, B)

        // Generate LUT
        for (bIdx in 0 until size) {
            val bIn = bIdx.toDouble() / (size - 1)
            for (gIdx in 0 until size) {
                val gIn = gIdx.toDouble() / (size - 1)
                for (rIdx in 0 until size) {
                    val rIn = rIdx.toDouble() / (size - 1)

                    // Start with affine polynomial part. Note: we are fitting the *residual*,
                    // so the base output is just the input: (rIn, gIn, bIn)
                    var rOut = rIn + W[n][0] + W[n + 1][0] * rIn + W[n + 2][0] * gIn + W[n + 3][0] * bIn
                    var gOut = gIn + W[n][1] + W[n + 1][1] * rIn + W[n + 2][1] * gIn + W[n + 3][1] * bIn
                    var bOut = bIn + W[n][2] + W[n + 1][2] * rIn + W[n + 2][2] * gIn + W[n + 3][2] * bIn

                    // Add RBF kernel contributions
                    for (i in 0 until n) {
                        val p = pts[i]
                        val dr = rIn - p.sourceR
                        val dg = gIn - p.sourceG
                        val db = bIn - p.sourceB
                        val dist = sqrt(dr * dr + dg * dg + db * db)
                        val rbfVal = phi(dist)

                        rOut += W[i][0] * rbfVal
                        gOut += W[i][1] * rbfVal
                        bOut += W[i][2] * rbfVal
                    }

                    lutData[index++] = rOut.toFloat().coerceIn(0f, 1f)
                    lutData[index++] = gOut.toFloat().coerceIn(0f, 1f)
                    lutData[index++] = bOut.toFloat().coerceIn(0f, 1f)
                }
            }
        }
        
        enforceMonotonicity(lutData, size)
        return lutData
    }

    /**
     * Ensures that as input RGB increases, output RGB also increases (or stays same).
     * Prevents "solarization" and extreme color inversion artifacts.
     */
    private fun enforceMonotonicity(lut: FloatArray, size: Int) {
        // We iterate through the 3D grid and ensure that each channel 
        // respects a basic growth trend relative to its own axis.
        
        // 1. Red channel: must be non-decreasing as input Red increases
        for (b in 0 until size) {
            for (g in 0 until size) {
                for (r in 1 until size) {
                    val currIdx = (b * size * size + g * size + r) * 3
                    val prevIdx = (b * size * size + g * size + (r - 1)) * 3
                    lut[currIdx] = max(lut[currIdx], lut[prevIdx])
                }
            }
        }
        
        // 2. Green channel: must be non-decreasing as input Green increases
        for (b in 0 until size) {
            for (r in 0 until size) {
                for (g in 1 until size) {
                    val currIdx = (b * size * size + g * size + r) * 3 + 1
                    val prevIdx = (b * size * size + (g - 1) * size + r) * 3 + 1
                    lut[currIdx] = max(lut[currIdx], lut[prevIdx])
                }
            }
        }
        
        // 3. Blue channel: must be non-decreasing as input Blue increases
        for (g in 0 until size) {
            for (r in 0 until size) {
                for (b in 1 until size) {
                    val currIdx = (b * size * size + g * size + r) * 3 + 2
                    val prevIdx = ((b - 1) * size * size + g * size + r) * 3 + 2
                    lut[currIdx] = max(lut[currIdx], lut[prevIdx])
                }
            }
        }
    }

    private fun phi(r: Double): Double {
        // Cubic radial basis phi(r) = r^3 provides C2 continuity and much smoother 
        // color transitions, effectively suppressing "ringing" and color casts.
        return r * r * r
    }

    /**
     * Solves linear system A * X = B using Gaussian elimination with partial pivoting.
     * A is N x N, B is N x M. Returns X as N x M.
     */
    private fun solveLinearSystem(A: Array<DoubleArray>, B: Array<DoubleArray>): Array<DoubleArray> {
        val n = A.size
        val m = B[0].size
        val M = Array(n) { i -> DoubleArray(n + m) { j -> if (j < n) A[i][j] else B[i][j - n] } }

        for (i in 0 until n) {
            var maxRow = i
            for (k in i + 1 until n) {
                if (abs(M[k][i]) > abs(M[maxRow][i])) maxRow = k
            }
            val temp = M[i]
            M[i] = M[maxRow]
            M[maxRow] = temp

            val pivot = M[i][i]
            if (abs(pivot) < 1e-12) {
                // If the matrix is singular (e.g., highly collinear or identical control points),
                // we gracefully continue. The fallback polynomial handles it.
                continue
            }

            for (j in i until n + m) {
                M[i][j] /= pivot
            }

            for (k in 0 until n) {
                if (k != i) {
                    val factor = M[k][i]
                    for (j in i until n + m) {
                        M[k][j] -= factor * M[i][j]
                    }
                }
            }
        }

        val X = Array(n) { DoubleArray(m) }
        for (i in 0 until n) {
            for (j in 0 until m) {
                X[i][j] = M[i][n + j]
            }
        }
        return X
    }

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
