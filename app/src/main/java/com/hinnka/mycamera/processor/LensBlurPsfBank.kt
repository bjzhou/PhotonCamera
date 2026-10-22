package com.hinnka.mycamera.processor

import android.os.SystemClock
import java.util.concurrent.CompletableFuture
import kotlin.math.PI
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.cos
import kotlin.math.floor
import kotlin.math.max
import kotlin.math.min
import kotlin.math.pow
import kotlin.math.sin
import kotlin.math.sqrt

/**
 * Lens Blur PSF cache of one splat domain (docs/lrmobile-lens-blur-evidence.md §7):
 * two-level aperture masks (rim 1.0, interior from spherical aberration),
 * posterized, normalized to unit sum and stored as row gradient fields `(dy, dx, Δ)` that the scatter
 * shader adds and the integrate shader prefix-sums along each row.
 *
 * Packed int layout (one SSBO):
 * `[0] psfCount, [1] maxIntegerRadius, [2] headerOffset,`
 * `[3 + 2n] firstPsf(n), [4 + 2n] psfCount(n)` for n in 0..maxIntegerRadius,
 * `header[p] = (halfSize, rowTableOffset, entryOffset)`,
 * `rowTable[p] = 2*halfSize+2 entry indices`, `entry = (dy << 16 | dx & 0xffff, floatBits(Δ))`.
 */
internal class LensBlurPsfBank private constructor(
    val data: IntArray,
    val psfCount: Int,
    val maxHalfSize: Int,
    /** Wall time of the build that produced this bank. */
    val buildMillis: Long,
) {

    private data class Key(
        val params: LensBlurParams,
        val maxRadius: Float,
        val domainScale: Float,
        val originalLongEdge: Int,
    )

    companion object {
        /** Banks of the last few apertures / image sizes; re-renders of a photo reuse them. */
        private const val CACHE_CAPACITY = 4
        private val cache = object : LinkedHashMap<Key, CompletableFuture<LensBlurPsfBank>>(CACHE_CAPACITY, 0.75f, true) {
            override fun removeEldestEntry(eldest: MutableMap.MutableEntry<Key, CompletableFuture<LensBlurPsfBank>>) =
                size > CACHE_CAPACITY
        }
        private const val EDGE_SAMPLE_MARGIN = 0.70711f
        private const val INTERIOR_FIXED_BITS = 1024f
        private const val POSTERIZE_MAX_ITERATIONS = 5
        private const val POSTERIZE_CONVERGENCE = 0.05f

        /**
         * The cached bank of these parameters; a miss is built on a CPU worker
         * and shared with concurrent requests. A failed build leaves the cache.
         */
        fun obtain(
            params: LensBlurParams,
            maxRadius: Float,
            domainScale: Float,
            originalLongEdge: Int,
        ): CompletableFuture<LensBlurPsfBank> {
            val key = Key(params, maxRadius, domainScale, originalLongEdge)
            synchronized(cache) {
                cache[key]?.let { return it }
                val future = CompletableFuture.supplyAsync { build(params, maxRadius, domainScale, originalLongEdge) }
                cache[key] = future
                future.whenComplete { _, error ->
                    if (error != null) synchronized(cache) { cache.remove(key, future) }
                }
                return future
            }
        }

        /**
         * @param maxRadius largest PSF radius in domain pixels.
         * @param domainScale RadiusScale of the domain relative to the original image.
         * @param originalLongEdge long edge of the original image in pixels.
         */
        fun build(
            params: LensBlurParams,
            maxRadius: Float,
            domainScale: Float,
            originalLongEdge: Int,
        ): LensBlurPsfBank {
            val startedAtMs = SystemClock.elapsedRealtime()
            val maxIntegerRadius = max(ceil(maxRadius).toInt(), 0)
            val counts = IntArray(maxIntegerRadius + 1) { psfsPerUnitRadius(it) }
            val rim = 0.00025f * domainScale * originalLongEdge
            val interiorStart = 0.001f * domainScale * originalLongEdge
            val interiorEnd = 0.002f * domainScale * originalLongEdge
            val aberration = params.sphericalAberration.coerceIn(0f, 1f).pow(0.25f)
            val rotation = (params.bokehRotationDegrees * PI / 180.0).toFloat()

            val radii = ArrayList<Float>()
            for (n in 0..maxIntegerRadius) {
                for (j in 0 until counts[n]) radii += n + j.toFloat() / counts[n]
            }
            val psfCount = radii.size
            val halves = IntArray(psfCount) { ceil(radii[it]).toInt() }
            val rowTables = arrayOfNulls<IntArray>(psfCount)
            val entries = arrayOfNulls<IntArray>(psfCount)
            for (p in 0 until psfCount) {
                val radius = radii[p]
                val ramp = ((radius - interiorStart) / (interiorEnd - interiorStart)).coerceIn(0f, 1f)
                val interior = 1f - 0.99f * aberration * ramp
                val values = computePsf(radius, halves[p], params, rotation, rim, interior)
                posterize(values, LensBlurParams.PSF_POSTERIZE_LEVELS, interior)
                val (rowTable, packed) = gradientField(values, halves[p])
                rowTables[p] = rowTable
                entries[p] = packed
            }
            val maxHalfSize = halves.maxOrNull() ?: 0

            val headerOffset = 3 + 2 * (maxIntegerRadius + 1)
            var cursor = headerOffset + 3 * psfCount
            val rowTableOffsets = IntArray(psfCount)
            for (p in 0 until psfCount) {
                rowTableOffsets[p] = cursor
                cursor += rowTables[p]!!.size
            }
            val entryOffsets = IntArray(psfCount)
            for (p in 0 until psfCount) {
                entryOffsets[p] = cursor
                cursor += entries[p]!!.size
            }
            val data = IntArray(cursor)
            data[0] = psfCount
            data[1] = maxIntegerRadius
            data[2] = headerOffset
            var first = 0
            for (n in 0..maxIntegerRadius) {
                data[3 + 2 * n] = first
                data[4 + 2 * n] = counts[n]
                first += counts[n]
            }
            for (p in 0 until psfCount) {
                val h = headerOffset + 3 * p
                data[h] = halves[p]
                data[h + 1] = rowTableOffsets[p]
                data[h + 2] = entryOffsets[p]
                rowTables[p]!!.copyInto(data, rowTableOffsets[p])
                entries[p]!!.copyInto(data, entryOffsets[p])
            }
            return LensBlurPsfBank(data, psfCount, maxHalfSize, SystemClock.elapsedRealtime() - startedAtMs)
        }

        /** `cr_lens_blur_psf_cache`: 2^3 PSFs per pixel of radius up to 20 px, one at 50 px and beyond. */
        private fun psfsPerUnitRadius(radius: Int): Int {
            val full = LensBlurParams.PSF_DENSITY_FULL_RADIUS.toFloat()
            val unit = LensBlurParams.PSF_DENSITY_UNIT_RADIUS.toFloat()
            val density = (1 shl LensBlurParams.PSF_DENSITY_LOG2).toFloat()
            val clamped = radius.toFloat().coerceIn(full, unit)
            return ((1f - density) * (clamped - full) / (unit - full) + density).toInt()
        }

        /** `ComputePsf`: aperture mask over a (2*half+1)^2 canvas, supersampled at boundaries. */
        private fun computePsf(
            radius: Float,
            half: Int,
            params: LensBlurParams,
            rotation: Float,
            rim: Float,
            interior: Float,
        ): FloatArray {
            val size = 2 * half + 1
            val values = FloatArray(size * size)
            val shape = ApertureShape(radius, params, rim)
            val cosR = cos(rotation)
            val sinR = sin(rotation)
            val aspect = params.bokehAspect
            val firstAxisScale = if (aspect < 0f) 1f / (aspect * 0.5f + 1f) else 1f
            val secondAxisScale = if (aspect > 0f) 1f / (aspect * -0.5f + 1f) else 1f
            val margin = EDGE_SAMPLE_MARGIN * max(firstAxisScale, secondAxisScale)
            val subsamples = 4 * ceil(1f / min(rim, 1f)).toInt()
            val step = 1f / subsamples
            var total = 0f

            fun classAt(row: Float, column: Float): Int {
                val u = firstAxisScale * (cosR * row - sinR * column)
                val v = secondAxisScale * (sinR * row + cosR * column)
                return shape.classify(u, v)
            }

            for (i in 0 until size) {
                val row = (i - half).toFloat()
                for (j in 0 until size) {
                    val column = (j - half).toFloat()
                    val u = firstAxisScale * (cosR * row - sinR * column)
                    val v = secondAxisScale * (sinR * row + cosR * column)
                    val value = if (shape.boundaryDistance(u, v) > margin) {
                        levelValue(shape.classify(u, v), interior)
                    } else {
                        var sum = 0f
                        for (sy in 0 until subsamples) {
                            val r = row + (sy + 0.5f) * step - 0.5f
                            for (sx in 0 until subsamples) {
                                val c = column + (sx + 0.5f) * step - 0.5f
                                sum += levelValue(classAt(r, c), interior)
                            }
                        }
                        sum / (subsamples * subsamples)
                    }
                    values[i * size + j] = value
                    total += value
                }
            }
            // A sub-pixel radius with no covered sample degenerates to an impulse.
            if (total <= 0f) values[half * size + half] = 1f
            return values
        }

        private fun levelValue(zone: Int, interior: Float): Float = when (zone) {
            ApertureShape.INTERIOR -> interior
            ApertureShape.RIM -> 1f
            else -> 0f
        }

        /**
         * `KMeansPosterize`: zeros and the interior level stay exact; the
         * remaining edge values are clustered into [levels] centers (initial
         * centers (i + 1) / (levels + 1), at most 5 iterations) with their
         * energy preserved. Finally the whole PSF is divided by its sum, so the
         * scattered weight W is a coverage fraction.
         */
        private fun posterize(values: FloatArray, levels: Int, interior: Float) {
            val interiorFixed = (interior * INTERIOR_FIXED_BITS).toInt()
            val indices = ArrayList<Int>()
            var fixedSum = 0f
            var clusteredSum = 0f
            for (i in values.indices) {
                val value = values[i]
                if (value == 0f || (value * INTERIOR_FIXED_BITS).toInt() == interiorFixed) {
                    fixedSum += value
                    continue
                }
                indices += i
                clusteredSum += value
            }
            if (indices.isNotEmpty()) cluster(values, indices, levels, clusteredSum)
            val total = fixedSum + clusteredSum
            if (total <= 0f) return
            for (i in values.indices) values[i] /= total
        }

        private fun cluster(values: FloatArray, indices: List<Int>, levels: Int, originalSum: Float) {
            val centers = FloatArray(levels) { (it + 1f) / (levels + 1f) }
            val assignment = IntArray(indices.size)
            fun nearest(value: Float): Int {
                var best = 0
                var bestDistance = Float.MAX_VALUE
                for (c in centers.indices) {
                    val d = (value - centers[c]) * (value - centers[c])
                    if (d < bestDistance) {
                        bestDistance = d
                        best = c
                    }
                }
                return best
            }
            for (k in indices.indices) assignment[k] = nearest(values[indices[k]])
            val sums = FloatArray(levels)
            val counts = IntArray(levels)
            for (iteration in 0 until min(levels, POSTERIZE_MAX_ITERATIONS)) {
                sums.fill(0f)
                counts.fill(0)
                for (k in indices.indices) {
                    sums[assignment[k]] += values[indices[k]]
                    counts[assignment[k]]++
                }
                var shift = 0f
                for (c in centers.indices) {
                    if (counts[c] == 0) continue
                    val updated = sums[c] / counts[c]
                    shift = max(shift, abs(updated - centers[c]))
                    centers[c] = updated
                }
                if (iteration > 0 && shift < POSTERIZE_CONVERGENCE) break
                for (k in indices.indices) assignment[k] = nearest(values[indices[k]])
            }
            var quantizedSum = 0f
            for (k in indices.indices) quantizedSum += centers[assignment[k]]
            if (quantizedSum <= 0f) return
            val energy = originalSum / quantizedSum
            for (k in indices.indices) values[indices[k]] = centers[assignment[k]] * energy
        }

        /** `cr_lens_blur_psf::ComputeGradientField`: per-row differences along x. */
        private fun gradientField(values: FloatArray, half: Int): Pair<IntArray, IntArray> {
            val size = 2 * half + 1
            val rowTable = IntArray(size + 1)
            val packed = ArrayList<Int>()
            var count = 0
            for (i in 0 until size) {
                rowTable[i] = count
                var previous = 0f
                for (j in 0..size) {
                    val current = if (j < size) values[i * size + j] else 0f
                    val delta = current - previous
                    previous = current
                    if (delta == 0f) continue
                    val dy = i - half
                    val dx = j - half
                    packed += (dy shl 16) or (dx and 0xffff)
                    packed += java.lang.Float.floatToRawIntBits(delta)
                    count++
                }
            }
            rowTable[size] = count
            return rowTable to packed.toIntArray()
        }
    }

    /** Circle, curved iris blades (arcs of radius 2R through the polygon vertices) or ring. */
    private class ApertureShape(private val radius: Float, params: LensBlurParams, private val rim: Float) {
        companion object {
            const val OUTSIDE = 0
            const val INTERIOR = 1
            const val RIM = 2
        }

        private val bladeCount = if (params.bokehShape == 0 && params.bokehShapeDetail > 0) {
            params.bokehShapeDetail + 4
        } else {
            0
        }
        private val hole = if (params.bokehShape == 1) (params.bokehShapeDetail + 1) / 8f * radius else 0f
        private val boundary = if (bladeCount > 0) radius * 2f else radius
        private val boundarySquared = boundary * boundary
        private val rimSquared = (boundary - rim) * (boundary - rim)
        private val holeSquared = hole * hole
        private val centersU = FloatArray(bladeCount)
        private val centersV = FloatArray(bladeCount)

        init {
            if (bladeCount > 0) {
                val halfSector = PI.toFloat() / bladeCount
                val c = cos(halfSector) * radius
                val offset = c - sqrt(4f * radius * radius - radius * radius + c * c)
                for (i in 0 until bladeCount) {
                    val theta = 2f * PI.toFloat() * i / bladeCount + PI.toFloat() / 2f
                    centersU[i] = -sin(theta) * offset
                    centersV[i] = cos(theta) * offset
                }
            }
        }

        fun classify(u: Float, v: Float): Int {
            if (bladeCount == 0) {
                val r2 = u * u + v * v
                if (r2 > boundarySquared || r2 < holeSquared) return OUTSIDE
                return if (r2 <= rimSquared) INTERIOR else RIM
            }
            var zone = INTERIOR
            for (i in 0 until bladeCount) {
                val du = u - centersU[i]
                val dv = v - centersV[i]
                val d2 = du * du + dv * dv
                if (d2 > boundarySquared) return OUTSIDE
                if (d2 > rimSquared) zone = RIM
            }
            return zone
        }

        /** Distance to the nearest zone boundary, used to skip supersampling of uniform pixels. */
        fun boundaryDistance(u: Float, v: Float): Float {
            if (bladeCount == 0) {
                val r = sqrt(u * u + v * v)
                var distance = min(abs(r - boundary), abs(r - (boundary - rim)))
                if (hole > 0f) distance = min(distance, abs(r - hole))
                return distance
            }
            var distance = Float.MAX_VALUE
            for (i in 0 until bladeCount) {
                val du = u - centersU[i]
                val dv = v - centersV[i]
                val d = sqrt(du * du + dv * dv)
                distance = min(distance, min(abs(d - boundary), abs(d - (boundary - rim))))
            }
            return distance
        }
    }
}

/** Lens Blur `cr_trunc_tent`: rises over [a, b], flat over [b, c], falls over [c, d]. */
internal data class LensBlurTent(val a: Float, val b: Float, val c: Float, val d: Float) {
    fun evaluate(r: Float): Float = when {
        r >= b && r <= c -> 1f
        r <= a -> if (a == b) 1f else 0f
        r >= d -> if (c == d) 1f else 0f
        r < b -> (r - a) / (b - a)
        else -> 1f - (r - c) / (d - c)
    }

    fun overlaps(minRadius: Float, maxRadius: Float): Boolean = minRadius <= d && maxRadius >= a
}

/** One Lens Blur splat domain: a 2^level downsampled scatter target for a radius range. */
internal data class LensBlurSplatDomain(
    val level: Int,
    val minRadius: Float,
    val maxRadius: Float,
    val tent: LensBlurTent,
    val cocSpreadRadius: Float,
) {
    val scale: Float get() = 1f / (1 shl level)
}

/**
 * Radius geometry of Lens Blur in working pixels (§3–§5). Constants that
 * Camera Raw states in pipeline pixels are interpreted as full-resolution
 * pixels and multiplied by [radiusScale], matching a render of the original.
 */
internal class LensBlurLayout(
    originalLongEdge: Int,
    val radiusScale: Float,
    params: LensBlurParams,
) {
    /** Blur radius at BlurAmount 1 (times the aperture's radius gain), in working pixels. */
    val maxRadius: Float
    val maxRadiusFull: Float
    val domains: List<LensBlurSplatDomain>
    val bands: List<LensBlurTent>

    init {
        maxRadiusFull = min(
            Math.round(LensBlurParams.MAX_BLUR_RADIUS_FRACTION * params.radiusGain * originalLongEdge),
            LensBlurParams.MAX_BLUR_RADIUS_LIMIT,
        ).toFloat()
        maxRadius = maxRadiusFull * radiusScale

        data class Descriptor(val level: Int, val minRadius: Float, val maxRadius: Float)
        val descriptors = if (originalLongEdge >= 2017) {
            val t = ((4032f - originalLongEdge) / 2016f).coerceIn(0f, 1f)
            val split = t * (maxRadiusFull - 8f) + 8f
            listOf(Descriptor(0, 0f, split), Descriptor(1, split - 2f, -1f))
        } else {
            listOf(Descriptor(0, 0f, -1f))
        }
        val effective = min(params.blurAmount * maxRadiusFull + 1f, maxRadiusFull)
        val active = descriptors.filter { effective >= it.minRadius }.map { descriptor ->
            val clamped = if (descriptor.maxRadius == -1f || effective < descriptor.maxRadius) {
                effective
            } else {
                descriptor.maxRadius
            }
            Descriptor(descriptor.level, descriptor.minRadius * radiusScale, clamped * radiusScale)
        }
        var spread = active.first().maxRadius
        for (descriptor in active.drop(1)) {
            if (descriptor.level != 0) spread = min(spread, descriptor.minRadius)
        }
        domains = active.mapIndexed { index, descriptor ->
            val rise = if (index == 0) descriptor.minRadius else active[index - 1].maxRadius
            val fall = if (index == active.lastIndex) descriptor.maxRadius else active[index + 1].minRadius
            val minFull = descriptor.minRadius / radiusScale
            LensBlurSplatDomain(
                level = descriptor.level,
                minRadius = descriptor.minRadius,
                maxRadius = descriptor.maxRadius,
                tent = LensBlurTent(descriptor.minRadius, rise, fall, descriptor.maxRadius),
                cocSpreadRadius = if (minFull <= 10f) spread / (1 shl descriptor.level) else 0f,
            )
        }
        val s = radiusScale
        bands = listOf(
            LensBlurTent(0f, 0f, 4f * s, 6f * s),
            LensBlurTent(2f * s, 4f * s, 24f * s, 30f * s),
            LensBlurTent(18f * s, 24f * s, 300f, 300f),
        )
    }

    /** `Process_32` band selection: bands whose radius range holds at least one source. */
    fun activeBands(histogram: IntArray): List<Int> {
        val cumulative = IntArray(histogram.size)
        var running = 0
        for (i in histogram.indices) {
            running += histogram[i]
            cumulative[i] = running
        }
        return bands.indices.filter { index ->
            val band = bands[index]
            val low = floor(band.a).toInt().coerceIn(0, cumulative.lastIndex)
            val high = ceil(band.d).toInt().coerceIn(0, cumulative.lastIndex)
            cumulative[high] > cumulative[low] || (low == 0 && cumulative[0] >= 1)
        }
    }
}
