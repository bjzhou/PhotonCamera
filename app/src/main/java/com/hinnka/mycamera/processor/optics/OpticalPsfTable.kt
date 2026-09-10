package com.hinnka.mycamera.processor.optics

import kotlin.math.PI
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.sqrt

/**
 * Finite-area geometrical PSFs, obtained by transporting a uniformly illuminated pupil.
 *
 * Rows run from disparity 0 to 1. Columns are concentric, equal-width annuli in output
 * pixels. Each texel stores energy per square output pixel, not energy per radial bin.
 * Consequently a caustic remains finite and each row integrates to unit energy without
 * choosing a ring profile, applying a brightness gain, or discarding crossing rays.
 *
 * Sample radial columns with nearest lookup and interpolate only between depth rows.
 * Radial linear texture filtering would change the annular energy represented here.
 */
class OpticalPsfTable private constructor(
    val lens: OpticalLensState,
    val calibration: OpticalSceneCalibration,
    val radialBinCount: Int,
    val depthCount: Int,
    val binWidthPixels: Float,
    val densities: FloatArray,
    /** Row-major energy at annulus edges; each row has radialBinCount + 1 entries. */
    val cumulativeEnergy: FloatArray,
    val supportPixels: FloatArray,
    val maximumSupportPixels: Float,
) {
    /** Includes the finite annulus containing the outermost ray. */
    val tableSupportPixels: Float get() = radialBinCount * binWidthPixels

    /** Integrate finite annular density; interpolate within a bin by radius squared. */
    fun cumulativeEnergyAt(disparity: Float, radiusPixels: Float): Float {
        require(disparity.isFinite() && radiusPixels.isFinite())
        if (radiusPixels <= 0f) return 0f
        if (radiusPixels >= tableSupportPixels) return 1f
        val radialPosition = radiusPixels / binWidthPixels
        val bin = floor(radialPosition).toInt().coerceAtMost(radialBinCount - 1)
        val annularFraction = ((radialPosition * radialPosition - bin.toFloat() * bin) /
            (2f * bin + 1f)).coerceIn(0f, 1f)
        val depthPosition = disparity.coerceIn(0f, 1f) * (depthCount - 1)
        val low = floor(depthPosition).toInt()
        val high = (low + 1).coerceAtMost(depthCount - 1)
        fun rowEnergy(row: Int): Float {
            val start = row * (radialBinCount + 1) + bin
            val a = cumulativeEnergy[start]
            return a + (cumulativeEnergy[start + 1] - a) * annularFraction
        }
        val a = rowEnergy(low)
        return a + (rowEnergy(high) - a) * (depthPosition - low)
    }

    /** Reference for the shader's nearest-radius, linear-depth lookup. */
    fun densityAt(disparity: Float, radiusPixels: Float): Float {
        require(disparity.isFinite() && radiusPixels.isFinite())
        if (radiusPixels < 0f || radiusPixels >= tableSupportPixels) return 0f
        val bin = floor(radiusPixels / binWidthPixels).toInt()
        if (bin >= radialBinCount) return 0f
        val depthPosition = disparity.coerceIn(0f, 1f) * (depthCount - 1)
        val low = floor(depthPosition).toInt()
        val high = (low + 1).coerceAtMost(depthCount - 1)
        val fraction = depthPosition - low
        val a = densities[low * radialBinCount + bin]
        val b = densities[high * radialBinCount + bin]
        return a + (b - a) * fraction
    }

    /** Conservative support of both rows used in a lookup, including annulus width. */
    fun supportAt(disparity: Float): Float {
        require(disparity.isFinite())
        val position = disparity.coerceIn(0f, 1f) * (depthCount - 1)
        val low = floor(position).toInt()
        val high = ceil(position).toInt()
        val physicalSupport = max(supportPixels[low], supportPixels[high])
        return max(1f, ceil(physicalSupport / binWidthPixels)) * binWidthPixels
    }

    companion object {
        private const val DEPTH_ROWS = 257
        private const val PUPIL_SAMPLES = 16_384

        fun build(
            profile: OpticalLensProfile,
            aperture: Float,
            focusDepth: Float,
            imageLongEdge: Int,
            renderLongEdge: Int,
            checkCancellation: () -> Unit = {},
            sceneReferenceProfile: OpticalLensProfile? = null,
        ): OpticalPsfTable {
            checkCancellation()
            require(imageLongEdge > 0 && renderLongEdge > 0)
            val lens = profile.atAperture(aperture.toDouble(), imageLongEdge)
            val calibration = OpticalSceneCalibration(focusDepth.toDouble(), sceneReferenceProfile)
            // Resolve a quarter of a working pixel, without pretending to resolve
            // finer than half an output pixel in the geometrical approximation.
            val binWidth = max(0.5, 0.25 * imageLongEdge / renderLongEdge).toFloat()
            val maximumSupport = calibration.maximumSupportPixels(lens)
            val bins = max(1, ceil(maximumSupport / binWidth).toInt())
            val densities = FloatArray(bins * DEPTH_ROWS)
            val cumulativeEnergy = FloatArray((bins + 1) * DEPTH_ROWS)
            val supports = FloatArray(DEPTH_ROWS)
            val counts = IntArray(bins)
            // t = rho^2 has uniform pupil-area measure. Midpoint quadrature never
            // samples the singular axis or assigns special weight to a caustic.
            val rho = DoubleArray(PUPIL_SAMPLES) { sqrt((it + 0.5) / PUPIL_SAMPLES) }
            val sphericalRay = DoubleArray(PUPIL_SAMPLES) {
                lens.sphericalRayPixels * rho[it].pow(profile.sphericalOrder - 1)
            }
            val densityPerRay = DoubleArray(bins) {
                1.0 / (PUPIL_SAMPLES * PI * binWidth.toDouble() * binWidth * (2.0 * it + 1.0))
            }
            repeat(DEPTH_ROWS) { row ->
                checkCancellation()
                val disparity = row.toDouble() / (DEPTH_ROWS - 1)
                val delta = calibration.inverseDepthDifference(disparity, lens)
                val defocusRay = lens.defocusPixelsPerDiopter * delta + lens.focusRayPixels
                supports[row] = lens.supportRadiusPixels(delta).toFloat()
                counts.fill(0)
                repeat(PUPIL_SAMPLES) { pupil ->
                    // A negative signed radius crosses the axis. Its energy belongs
                    // at the positive radius with the opposite azimuth, not at zero.
                    val radius = abs(defocusRay * rho[pupil] + sphericalRay[pupil])
                    val bin = floor(radius / binWidth).toInt().coerceAtMost(bins - 1)
                    counts[bin]++
                }
                var cumulativeCount = 0
                repeat(bins) { bin ->
                    densities[row * bins + bin] = (counts[bin] * densityPerRay[bin]).toFloat()
                    cumulativeCount += counts[bin]
                    cumulativeEnergy[row * (bins + 1) + bin + 1] = cumulativeCount.toFloat() / PUPIL_SAMPLES
                }
            }
            checkCancellation()
            return OpticalPsfTable(
                lens, calibration, bins, DEPTH_ROWS, binWidth, densities, cumulativeEnergy, supports,
                maximumSupport.toFloat(),
            )
        }
    }
}
