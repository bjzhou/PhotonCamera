package com.hinnka.mycamera.raw

import android.opengl.GLES30
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.float
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.int
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.rgb
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.texture
import com.hinnka.mycamera.raw.SpektrafilmGraphGl.Companion.xy
import com.hinnka.mycamera.raw.SpektrafilmOpticsKernels.ZERO
import kotlin.math.sqrt

/** Develops grain in the film density domain before the enlarger or direct scan. */
internal class SpektrafilmGrainPass(
    private val gl: SpektrafilmGraphGl,
    private val optics: SpektrafilmOpticsPass,
) {
    fun render(
        density: SpektrafilmGraphGl.Surface,
        region: SpektrafilmOpticsPass.Region,
        graph: SpectralFilmGraph,
        params: SpectralGrain,
    ): Int {
        if (!params.active) return density.texture
        val plan = GrainPlan.from(region, graph, params)
        val particles = gl.target("grainParticles", region.width, region.height, GLES30.GL_RGBA16F)
        val sumA = gl.target("grainSumA", region.width, region.height, GLES30.GL_RGBA16F)
        val prepared = if (params.sublayers) {
            val sumB = gl.target("grainSumB", region.width, region.height, GLES30.GL_RGBA16F)
            var sum = sumA
            for ((index, layer) in plan.layers.withIndex()) {
                drawParticles(density, particles, region, graph, params, layer, index, subLayers = 1)
                val blurred = optics.gaussian(particles.texture, region, layer.dyeSigma)
                if (index == 0) {
                    gl.copy(blurred, sum)
                } else {
                    val next = if (sum === sumA) sumB else sumA
                    gl.draw("grainCombine", SpektrafilmGraphShaders.GRAIN_COMBINE, next) { program ->
                        texture(program, "uAccumulated", 0, sum.texture)
                        texture(program, "uLayer", 1, blurred)
                    }
                    sum = next
                }
            }
            val noise = if (plan.microSigma > 0f) {
                val noiseTarget = if (sum === sumA) sumB else sumA
                gl.draw("grainMicro", SpektrafilmGraphShaders.GRAIN_MICRO, noiseTarget) { program ->
                    xy(program, "uOrigin", region.originX, region.originY)
                    float(program, "uSigma", plan.microSigma)
                }
                optics.gaussian(noiseTarget.texture, region, plan.microBlur)
            } else 0
            finish(sum.texture, noise, particles, params.densityMin)
            particles.texture
        } else {
            gl.releaseTarget("grainSumB")
            drawParticles(density, particles, region, graph, params, plan.layers.single(), -1, params.subLayerCount)
            finish(particles.texture, 0, sumA, params.densityMin)
            sumA.texture
        }
        return optics.gaussian(prepared, region, plan.finalBlur)
    }

    fun releaseTargets() {
        gl.releaseTarget("grainParticles")
        gl.releaseTarget("grainSumA")
        gl.releaseTarget("grainSumB")
    }

    private fun drawParticles(
        source: SpektrafilmGraphGl.Surface,
        destination: SpektrafilmGraphGl.Surface,
        region: SpektrafilmOpticsPass.Region,
        graph: SpectralFilmGraph,
        params: SpectralGrain,
        layer: Layer,
        index: Int,
        subLayers: Int,
    ) {
        gl.draw("grainParticles", SpektrafilmGraphShaders.GRAIN, destination) { program ->
            texture(program, "uSource", 0, source.texture)
            gl.tables.filmCurves.bind(program, "uCurves", 1)
            int(program, "uCurveWidth", graph.filmCurveSize)
            rgb(program, "uMin", layer.minimum)
            rgb(program, "uMax", layer.maximum)
            rgb(program, "uCount", layer.particleCount)
            rgb(program, "uUniformity", params.uniformity)
            float(program, "uSign", if (graph.positive) -1f else 1f)
            int(program, "uLayer", index)
            int(program, "uSubLayerCount", subLayers)
            xy(program, "uOrigin", region.originX, region.originY)
        }
    }

    private fun finish(source: Int, noise: Int, target: SpektrafilmGraphGl.Surface, minimum: SpectralRgb) {
        gl.draw("grainFinish", SpektrafilmGraphShaders.GRAIN_FINISH, target) { program ->
            texture(program, "uSource", 0, source)
            texture(program, "uMicro", 1, if (noise != 0) noise else source)
            rgb(program, "uMinimum", minimum)
            int(program, "uUseMicro", if (noise != 0) 1 else 0)
        }
    }

    private data class Layer(
        val minimum: SpectralRgb,
        val maximum: SpectralRgb,
        val particleCount: SpectralRgb,
        val dyeSigma: SpectralRgb,
    )

    private data class GrainPlan(
        val layers: List<Layer>,
        val microSigma: Float,
        val microBlur: Float,
        val finalBlur: Float,
    ) {
        companion object {
            fun from(region: SpektrafilmOpticsPass.Region, graph: SpectralFilmGraph, params: SpectralGrain): GrainPlan {
                val pitch = region.pixelSizeUm
                val area = pitch * pitch / params.particleAreaUm2
                val scale = params.particleScale.values()
                val minimum = params.densityMin.values()
                if (!params.sublayers) {
                    val maximum = graph.densityMax.values()
                    val layer = Layer(
                        params.densityMin,
                        rgbByChannel { maximum[it] + minimum[it] },
                        rgbByChannel { area / (scale[it] * params.subLayerCount) },
                        ZERO,
                    )
                    return GrainPlan(listOf(layer), 0f, 0f, params.blur.takeIf { it > 0.4f } ?: 0f)
                }

                check(graph.filmCurveRows == 5) { "Spektrafilm grain layer tables are missing" }
                val maxima = graph.layerMax.map(SpectralRgb::values)
                val totals = FloatArray(3) { c -> maxima[0][c] + maxima[1][c] + maxima[2][c] }
                val layerScales = params.particleScaleLayers.values()
                val layers = maxima.mapIndexed { index, maximum ->
                    val fractions = FloatArray(3) { c -> if (totals[c] > 0f) maximum[c] / totals[c] else 0f }
                    val floor = FloatArray(3) { c -> minimum[c] * fractions[c] }
                    val ceiling = FloatArray(3) { c -> maximum[c] + floor[c] }
                    val counts = FloatArray(3) { c -> area * fractions[c] / (scale[c] * layerScales[index]) }
                    Layer(
                        rgbByChannel { floor[it] },
                        rgbByChannel { ceiling[it] },
                        rgbByChannel { counts[it] },
                        rgbByChannel { c ->
                            if (counts[c] > 0f) params.blurDyeCloudsUm * sqrt(ceiling[c] / counts[c]) else 0f
                        },
                    )
                }
                val microSigma = (params.microClumpNm * 0.001f / pitch).takeIf { it > 0.05f } ?: 0f
                val microBlur = (params.microBlurUm / pitch).takeIf { microSigma > 0f && it > 0.4f } ?: 0f
                return GrainPlan(layers, microSigma, microBlur, params.blur)
            }

            private inline fun rgbByChannel(value: (Int) -> Float) = SpectralRgb(value(0), value(1), value(2))
        }
    }

    companion object {
        fun support(region: SpektrafilmOpticsPass.Region, graph: SpectralFilmGraph, params: SpectralGrain): Int {
            if (!params.active) return 0
            val plan = GrainPlan.from(region, graph, params)
            val dyeSupport = plan.layers.maxOf { SpektrafilmOpticsPass.gaussianSupport(it.dyeSigma) }
            return maxOf(dyeSupport, SpektrafilmOpticsPass.gaussianSupport(plan.microBlur)) +
                SpektrafilmOpticsPass.gaussianSupport(plan.finalBlur)
        }
    }
}
