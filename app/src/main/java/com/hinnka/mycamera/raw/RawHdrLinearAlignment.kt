package com.hinnka.mycamera.raw

import android.opengl.GLES30
import android.opengl.GLES31
import com.hinnka.mycamera.utils.PLog
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.abs
import kotlin.math.max

internal class RawHdrLinearAlignment(
    private val width: Int,
    private val height: Int,
    private val noiseAlpha: Float,
    private val noiseBeta: Float,
) : AutoCloseable {
    private data class TextureLevel(val texture: Int, val width: Int, val height: Int)
    private data class FlowSample(val x: Float, val y: Float, val dx: Float, val dy: Float, val confidence: Float)
    private data class AffineFlow(val x: FloatArray, val y: FloatArray) {
        companion object {
            val ZERO = AffineFlow(floatArrayOf(0f, 0f, 0f), floatArrayOf(0f, 0f, 0f))
        }
    }

    private val planeWidth = max(1, width / 2)
    private val planeHeight = max(1, height / 2)
    private val gridWidth = (planeWidth + FLOW_GRID_SPACING - 1) / FLOW_GRID_SPACING
    private val gridHeight = (planeHeight + FLOW_GRID_SPACING - 1) / FLOW_GRID_SPACING

    private val programs = ArrayList<Int>()
    private val textures = ArrayList<Int>()
    private val framebuffers = ArrayList<Int>()

    private val proxyProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, LINEAR_PROXY_FRAGMENT_SHADER, "linear_proxy")
    private val downsampleProgram =
        linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, DOWNSAMPLE_FRAGMENT_SHADER, "linear_downsample")
    private val alignProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, ALIGN_FRAGMENT_SHADER, "linear_align")
    private val lkRefineProgram = linkComputeProgram(LK_REFINE_COMPUTE_SHADER, "linear_lk_refine")
    private val smoothFlowProgram =
        linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, SMOOTH_FLOW_FRAGMENT_SHADER, "linear_smooth_flow")
    private val robustnessProgram = linkComputeProgram(ROBUSTNESS_COMPUTE_SHADER, "linear_robustness")
    private val tileMaskProgram = linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, TILE_MASK_FRAGMENT_SHADER, "linear_tile_mask")
    private val exportProgram =
        linkGraphicsProgram(FULLSCREEN_VERTEX_SHADER, ALIGNMENT_ROBUSTNESS_EXPORT_FRAGMENT_SHADER, "linear_map_export")

    private val renderFbo = createFramebuffer()
    private val refProxy = createTexture2D(planeWidth, planeHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
    private val curProxy = createTexture2D(planeWidth, planeHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
    private val flowTexture = createTexture2D(gridWidth, gridHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
    private val flowScratchTexture = createTexture2D(gridWidth, gridHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
    private val robustnessTexture = createTexture2D(planeWidth, planeHeight, GLES30.GL_R32F, GLES30.GL_NEAREST)
    private val tileMaskTexture = createTexture2D(gridWidth, gridHeight, GLES30.GL_R16F, GLES30.GL_LINEAR)
    val mapTextureId: Int = createTexture2D(planeWidth, planeHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR)
    val mapWidth: Int = planeWidth
    val mapHeight: Int = planeHeight

    private val refPyramid = createPyramid(refProxy)
    private val curPyramid = createPyramid(curProxy)

    fun buildReference(referenceTextureId: Int) {
        buildProxy(referenceTextureId, refProxy, exposureScale = 1.0f, label = "linear alignment reference")
        buildPyramid(refPyramid)
    }

    fun computeMap(currentTextureId: Int, currentToReferenceScale: Float, label: String): Int {
        buildProxy(
            inputTextureId = currentTextureId,
            outputTextureId = curProxy,
            exposureScale = currentToReferenceScale.coerceIn(0.0001f, 64.0f),
            label = "$label proxy",
        )
        buildPyramid(curPyramid)
        alignCurrentToReference(refPyramid, curPyramid)
        refineFlow()
        smoothFlow()
        val affineFlow = estimateGlobalAffineFlow(label)
        computeRobustness(affineFlow)
        computeTileMask()
        exportAlignmentRobustnessMap(affineFlow)
        return mapTextureId
    }

    private fun buildProxy(inputTextureId: Int, outputTextureId: Int, exposureScale: Float, label: String) {
        bindFramebufferOutput(outputTextureId, label)
        GLES30.glViewport(0, 0, planeWidth, planeHeight)
        GLES30.glUseProgram(proxyProgram)
        bindTexture(proxyProgram, "uInput", 0, inputTextureId)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(proxyProgram, "uInputSize"), width, height)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(proxyProgram, "uExposureScale"), exposureScale)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(proxyProgram, "uNoiseAlpha"), noiseAlpha)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(proxyProgram, "uNoiseBeta"), noiseBeta)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
    }

    private fun createPyramid(baseTexture: Int): List<TextureLevel> {
        val levels = ArrayList<TextureLevel>(PYRAMID_LEVELS)
        levels += TextureLevel(baseTexture, planeWidth, planeHeight)
        var levelWidth = planeWidth
        var levelHeight = planeHeight
        repeat(PYRAMID_LEVELS - 1) {
            levelWidth = max(1, levelWidth / 2)
            levelHeight = max(1, levelHeight / 2)
            levels += TextureLevel(
                texture = createTexture2D(levelWidth, levelHeight, GLES30.GL_RGBA16F, GLES30.GL_LINEAR),
                width = levelWidth,
                height = levelHeight,
            )
        }
        return levels
    }

    private fun buildPyramid(levels: List<TextureLevel>) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        GLES30.glDisable(GLES30.GL_BLEND)
        GLES30.glUseProgram(downsampleProgram)
        for (index in 1 until levels.size) {
            val input = levels[index - 1]
            val output = levels[index]
            GLES30.glFramebufferTexture2D(
                GLES30.GL_FRAMEBUFFER,
                GLES30.GL_COLOR_ATTACHMENT0,
                GLES30.GL_TEXTURE_2D,
                output.texture,
                0,
            )
            GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
            checkFramebuffer("buildPyramid level $index")
            GLES30.glViewport(0, 0, output.width, output.height)
            bindTexture(downsampleProgram, "uInput", 0, input.texture)
            GLES30.glUniform2i(GLES30.glGetUniformLocation(downsampleProgram, "uInputSize"), input.width, input.height)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
            checkGlError("buildPyramid level $index")
        }
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun alignCurrentToReference(reference: List<TextureLevel>, current: List<TextureLevel>) {
        val levelIndex = ALIGN_LEVEL.coerceAtMost(reference.lastIndex).coerceAtMost(current.lastIndex)
        val ref = reference[levelIndex]
        val cur = current[levelIndex]
        bindFramebufferOutput(flowTexture, "linear alignCurrentToReference")
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(alignProgram)
        bindTexture(alignProgram, "uReference", 0, ref.texture)
        bindTexture(alignProgram, "uCurrent", 1, cur.texture)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(alignProgram, "uLevelSize"), ref.width, ref.height)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(alignProgram, "uGridSize"), gridWidth, gridHeight)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(alignProgram, "uTileSize"), FLOW_GRID_SPACING)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(alignProgram, "uAlignWindowSize"), ALIGN_WINDOW_SIZE)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(alignProgram, "uLevelScale"), 1 shl levelIndex)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(alignProgram, "uSearchRadius"), SEARCH_RADIUS_LEVEL)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(alignProgram, "uSampleStep"), ALIGN_SAMPLE_STEP)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("linear alignCurrentToReference")
    }

    private fun refineFlow() {
        repeat(LK_REFINE_PASSES) { pass ->
            val input = if (pass % 2 == 0) flowTexture else flowScratchTexture
            val output = if (pass % 2 == 0) flowScratchTexture else flowTexture
            GLES31.glUseProgram(lkRefineProgram)
            bindTexture(lkRefineProgram, "uReference", 0, refProxy)
            bindTexture(lkRefineProgram, "uCurrent", 1, curProxy)
            bindTexture(lkRefineProgram, "uInputFlow", 2, input)
            bindImage(3, output, GLES31.GL_WRITE_ONLY, GLES30.GL_RGBA16F)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(lkRefineProgram, "uPlaneSize"), planeWidth, planeHeight)
            GLES31.glUniform2i(GLES31.glGetUniformLocation(lkRefineProgram, "uGridSize"), gridWidth, gridHeight)
            GLES31.glUniform1i(GLES31.glGetUniformLocation(lkRefineProgram, "uTileSize"), FLOW_GRID_SPACING)
            GLES31.glDispatchCompute(groupCount(gridWidth), groupCount(gridHeight), 1)
            GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
            checkGlError("linear refineFlow pass $pass")
        }
        if (LK_REFINE_PASSES % 2 != 0) {
            copyFlow(flowScratchTexture, flowTexture, "linear refineFlow copy")
        }
    }

    private fun smoothFlow() {
        repeat(FLOW_SMOOTH_PASSES) { pass ->
            val input = if (pass % 2 == 0) flowTexture else flowScratchTexture
            val output = if (pass % 2 == 0) flowScratchTexture else flowTexture
            bindFramebufferOutput(output, "linear smoothFlow pass $pass")
            GLES30.glViewport(0, 0, gridWidth, gridHeight)
            GLES30.glUseProgram(smoothFlowProgram)
            bindTexture(smoothFlowProgram, "uInputFlow", 0, input)
            GLES30.glUniform2i(GLES30.glGetUniformLocation(smoothFlowProgram, "uGridSize"), gridWidth, gridHeight)
            GLES30.glUniform1f(GLES30.glGetUniformLocation(smoothFlowProgram, "uOutlierThreshold"), FLOW_OUTLIER_THRESHOLD_PX)
            GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
            finishFramebufferPass("linear smoothFlow pass $pass")
        }
    }

    private fun copyFlow(input: Int, output: Int, label: String) {
        bindFramebufferOutput(output, label)
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(smoothFlowProgram)
        bindTexture(smoothFlowProgram, "uInputFlow", 0, input)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(smoothFlowProgram, "uGridSize"), gridWidth, gridHeight)
        GLES30.glUniform1f(GLES30.glGetUniformLocation(smoothFlowProgram, "uOutlierThreshold"), 100000.0f)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass(label)
    }

    private fun estimateGlobalAffineFlow(label: String): AffineFlow {
        val samples = readFlowSamples(label)
        if (samples.size < AFFINE_MIN_SAMPLES) {
            PLog.w(TAG, "$label affine flow skipped: only ${samples.size} confident tiles")
            return AffineFlow.ZERO
        }
        val medianDx = medianOf(samples.map { it.dx })
        val medianDy = medianOf(samples.map { it.dy })
        val medianResidual = medianOf(samples.map { abs(it.dx - medianDx) + abs(it.dy - medianDy) })
        val residualGate = max(2.5f, medianResidual * 3.0f)
        val filtered = samples.filter {
            abs(it.dx - medianDx) + abs(it.dy - medianDy) <= residualGate &&
                abs(it.dx) <= AFFINE_MAX_FLOW_PX &&
                abs(it.dy) <= AFFINE_MAX_FLOW_PX
        }
        if (filtered.size < AFFINE_MIN_SAMPLES) {
            PLog.w(TAG, "$label affine flow fallback: ${filtered.size}/${samples.size} tiles after residual gate")
            return AffineFlow(
                x = floatArrayOf(medianDx, 0f, 0f),
                y = floatArrayOf(medianDy, 0f, 0f),
            )
        }
        val xCoeffs = fitAffineAxis(filtered, useDx = true, fallback = medianDx)
        val yCoeffs = fitAffineAxis(filtered, useDx = false, fallback = medianDy)
        PLog.d(
            TAG,
            "$label affine flow tiles=${filtered.size}/${samples.size} " +
                "x=[${xCoeffs[0]}, ${xCoeffs[1]}, ${xCoeffs[2]}] " +
                "y=[${yCoeffs[0]}, ${yCoeffs[1]}, ${yCoeffs[2]}]"
        )
        return AffineFlow(xCoeffs, yCoeffs)
    }

    private fun readFlowSamples(label: String): List<FlowSample> {
        val floatCount = gridWidth * gridHeight * 4
        val buffer = ByteBuffer
            .allocateDirect(floatCount * java.lang.Float.BYTES)
            .order(ByteOrder.nativeOrder())
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            flowTexture,
            0,
        )
        GLES30.glReadBuffer(GLES30.GL_COLOR_ATTACHMENT0)
        GLES30.glPixelStorei(GLES30.GL_PACK_ALIGNMENT, 1)
        checkFramebuffer("$label read flow")
        GLES30.glReadPixels(0, 0, gridWidth, gridHeight, GLES30.GL_RGBA, GLES30.GL_FLOAT, buffer)
        checkGlError("$label read flow")
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)

        buffer.rewind()
        val values = buffer.asFloatBuffer()
        val samples = ArrayList<FlowSample>(gridWidth * gridHeight)
        for (y in 0 until gridHeight) {
            for (x in 0 until gridWidth) {
                val index = (y * gridWidth + x) * 4
                val dx = values.get(index)
                val dy = values.get(index + 1)
                val confidence = values.get(index + 2).coerceIn(0f, 1f)
                if (!dx.isFinite() || !dy.isFinite() || confidence < AFFINE_MIN_CONFIDENCE) continue
                val centerX = (x * FLOW_GRID_SPACING + FLOW_GRID_SPACING * 0.5f)
                    .coerceAtMost((planeWidth - 1).toFloat())
                val centerY = (y * FLOW_GRID_SPACING + FLOW_GRID_SPACING * 0.5f)
                    .coerceAtMost((planeHeight - 1).toFloat())
                samples += FlowSample(centerX, centerY, dx, dy, confidence)
            }
        }
        return samples
    }

    private fun fitAffineAxis(samples: List<FlowSample>, useDx: Boolean, fallback: Float): FloatArray {
        var weights = FloatArray(samples.size) { samples[it].confidence }
        var coeffs = solveWeightedAffineAxis(samples, weights, useDx) ?: return floatArrayOf(fallback, 0f, 0f)
        repeat(AFFINE_ROBUST_PASSES) {
            val residuals = samples.mapIndexed { index, sample ->
                abs(axisValue(sample, useDx) - predictAxis(coeffs, sample))
            }
            val sigma = max(0.35f, medianOf(residuals) * 1.4826f)
            weights = FloatArray(samples.size) { index ->
                val sample = samples[index]
                val residual = abs(axisValue(sample, useDx) - predictAxis(coeffs, sample))
                val normalized = residual / sigma
                sample.confidence / (1.0f + normalized * normalized)
            }
            coeffs = solveWeightedAffineAxis(samples, weights, useDx) ?: coeffs
        }
        coeffs[1] = coeffs[1].coerceIn(-AFFINE_MAX_SLOPE_PX, AFFINE_MAX_SLOPE_PX)
        coeffs[2] = coeffs[2].coerceIn(-AFFINE_MAX_SLOPE_PX, AFFINE_MAX_SLOPE_PX)
        return coeffs
    }

    private fun solveWeightedAffineAxis(
        samples: List<FlowSample>,
        weights: FloatArray,
        useDx: Boolean,
    ): FloatArray? {
        val ata = DoubleArray(9)
        val atb = DoubleArray(3)
        for (index in samples.indices) {
            val sample = samples[index]
            val w = weights[index].toDouble()
            if (w <= 1.0e-6) continue
            val basis0 = 1.0
            val basis1 = normalizedX(sample.x).toDouble()
            val basis2 = normalizedY(sample.y).toDouble()
            val target = axisValue(sample, useDx).toDouble()
            ata[0] += w * basis0 * basis0
            ata[1] += w * basis0 * basis1
            ata[2] += w * basis0 * basis2
            ata[3] += w * basis1 * basis0
            ata[4] += w * basis1 * basis1
            ata[5] += w * basis1 * basis2
            ata[6] += w * basis2 * basis0
            ata[7] += w * basis2 * basis1
            ata[8] += w * basis2 * basis2
            atb[0] += w * basis0 * target
            atb[1] += w * basis1 * target
            atb[2] += w * basis2 * target
        }
        val solved = solve3x3(ata, atb) ?: return null
        return floatArrayOf(solved[0].toFloat(), solved[1].toFloat(), solved[2].toFloat())
    }

    private fun solve3x3(matrix: DoubleArray, vector: DoubleArray): DoubleArray? {
        val a = Array(3) { row ->
            doubleArrayOf(
                matrix[row * 3],
                matrix[row * 3 + 1],
                matrix[row * 3 + 2],
                vector[row],
            )
        }
        for (col in 0 until 3) {
            var pivot = col
            var pivotAbs = abs(a[col][col])
            for (row in col + 1 until 3) {
                val candidate = abs(a[row][col])
                if (candidate > pivotAbs) {
                    pivot = row
                    pivotAbs = candidate
                }
            }
            if (pivotAbs < 1.0e-9) return null
            if (pivot != col) {
                val tmp = a[col]
                a[col] = a[pivot]
                a[pivot] = tmp
            }
            val pivotValue = a[col][col]
            for (c in col until 4) {
                a[col][c] /= pivotValue
            }
            for (row in 0 until 3) {
                if (row == col) continue
                val factor = a[row][col]
                for (c in col until 4) {
                    a[row][c] -= factor * a[col][c]
                }
            }
        }
        return doubleArrayOf(a[0][3], a[1][3], a[2][3])
    }

    private fun medianOf(values: List<Float>): Float {
        if (values.isEmpty()) return 0f
        val sorted = values.sorted()
        val middle = sorted.size / 2
        return if (sorted.size % 2 == 0) {
            (sorted[middle - 1] + sorted[middle]) * 0.5f
        } else {
            sorted[middle]
        }
    }

    private fun predictAxis(coeffs: FloatArray, sample: FlowSample): Float =
        coeffs[0] + coeffs[1] * normalizedX(sample.x) + coeffs[2] * normalizedY(sample.y)

    private fun axisValue(sample: FlowSample, useDx: Boolean): Float =
        if (useDx) sample.dx else sample.dy

    private fun normalizedX(x: Float): Float =
        (x - planeWidth * 0.5f) / max(planeWidth.toFloat(), 1f)

    private fun normalizedY(y: Float): Float =
        (y - planeHeight * 0.5f) / max(planeHeight.toFloat(), 1f)

    private fun computeRobustness(affineFlow: AffineFlow) {
        GLES31.glUseProgram(robustnessProgram)
        bindTexture(robustnessProgram, "uReference", 0, refProxy)
        bindTexture(robustnessProgram, "uCurrent", 1, curProxy)
        bindImage(3, robustnessTexture, GLES31.GL_WRITE_ONLY, GLES30.GL_R32F)
        GLES31.glUniform2i(GLES31.glGetUniformLocation(robustnessProgram, "uPlaneSize"), planeWidth, planeHeight)
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(robustnessProgram, "uFlowX"),
            affineFlow.x[0],
            affineFlow.x[1],
            affineFlow.x[2],
        )
        GLES31.glUniform3f(
            GLES31.glGetUniformLocation(robustnessProgram, "uFlowY"),
            affineFlow.y[0],
            affineFlow.y[1],
            affineFlow.y[2],
        )
        GLES31.glDispatchCompute(groupCount(planeWidth), groupCount(planeHeight), 1)
        GLES31.glMemoryBarrier(GLES31.GL_SHADER_IMAGE_ACCESS_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError("linear computeRobustness")
    }

    private fun computeTileMask() {
        bindFramebufferOutput(tileMaskTexture, "linear computeTileMask")
        GLES30.glViewport(0, 0, gridWidth, gridHeight)
        GLES30.glUseProgram(tileMaskProgram)
        bindTexture(tileMaskProgram, "uReference", 0, refProxy)
        bindTexture(tileMaskProgram, "uRobustness", 1, robustnessTexture)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(tileMaskProgram, "uPlaneSize"), planeWidth, planeHeight)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(tileMaskProgram, "uGridSize"), gridWidth, gridHeight)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(tileMaskProgram, "uTileSize"), FLOW_GRID_SPACING)
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("linear computeTileMask")
    }

    private fun exportAlignmentRobustnessMap(affineFlow: AffineFlow) {
        bindFramebufferOutput(mapTextureId, "linear exportAlignmentRobustnessMap")
        GLES30.glViewport(0, 0, planeWidth, planeHeight)
        GLES30.glUseProgram(exportProgram)
        bindTexture(exportProgram, "uRobustness", 0, robustnessTexture)
        bindTexture(exportProgram, "uTileMask", 1, tileMaskTexture)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(exportProgram, "uPlaneSize"), planeWidth, planeHeight)
        GLES30.glUniform2i(GLES30.glGetUniformLocation(exportProgram, "uGridSize"), gridWidth, gridHeight)
        GLES30.glUniform1i(GLES30.glGetUniformLocation(exportProgram, "uTileSize"), FLOW_GRID_SPACING)
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(exportProgram, "uFlowX"),
            affineFlow.x[0],
            affineFlow.x[1],
            affineFlow.x[2],
        )
        GLES30.glUniform3f(
            GLES30.glGetUniformLocation(exportProgram, "uFlowY"),
            affineFlow.y[0],
            affineFlow.y[1],
            affineFlow.y[2],
        )
        GLES30.glDrawArrays(GLES30.GL_TRIANGLES, 0, 3)
        finishFramebufferPass("linear exportAlignmentRobustnessMap")
    }

    private fun bindFramebufferOutput(textureId: Int, label: String) {
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, renderFbo)
        GLES30.glFramebufferTexture2D(
            GLES30.GL_FRAMEBUFFER,
            GLES30.GL_COLOR_ATTACHMENT0,
            GLES30.GL_TEXTURE_2D,
            textureId,
            0,
        )
        GLES30.glDrawBuffers(1, intArrayOf(GLES30.GL_COLOR_ATTACHMENT0), 0)
        checkFramebuffer(label)
    }

    private fun finishFramebufferPass(label: String) {
        GLES31.glMemoryBarrier(GLES31.GL_FRAMEBUFFER_BARRIER_BIT or GLES31.GL_TEXTURE_FETCH_BARRIER_BIT)
        checkGlError(label)
        GLES30.glBindFramebuffer(GLES30.GL_FRAMEBUFFER, 0)
    }

    private fun createTexture2D(width: Int, height: Int, internalFormat: Int, filter: Int): Int {
        val ids = IntArray(1)
        GLES30.glGenTextures(1, ids, 0)
        val texture = ids[0]
        textures += texture
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, texture)
        GLES30.glTexStorage2D(GLES30.GL_TEXTURE_2D, 1, internalFormat, width, height)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MIN_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_MAG_FILTER, filter)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_S, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glTexParameteri(GLES30.GL_TEXTURE_2D, GLES30.GL_TEXTURE_WRAP_T, GLES30.GL_CLAMP_TO_EDGE)
        GLES30.glBindTexture(GLES30.GL_TEXTURE_2D, 0)
        checkGlError("linear alignment createTexture2D")
        return texture
    }

    private fun createFramebuffer(): Int {
        val ids = IntArray(1)
        GLES30.glGenFramebuffers(1, ids, 0)
        framebuffers += ids[0]
        return ids[0]
    }

    private fun bindTexture(program: Int, name: String, unit: Int, texture: Int) {
        GLES31.glActiveTexture(GLES31.GL_TEXTURE0 + unit)
        GLES31.glBindTexture(GLES31.GL_TEXTURE_2D, texture)
        GLES31.glUniform1i(GLES31.glGetUniformLocation(program, name), unit)
    }

    private fun bindImage(unit: Int, texture: Int, access: Int, format: Int) {
        GLES31.glBindImageTexture(unit, texture, 0, false, 0, access, format)
    }

    private fun linkGraphicsProgram(vertexSource: String, fragmentSource: String, name: String): Int {
        val vertexShader = compileShader(GLES30.GL_VERTEX_SHADER, vertexSource, "$name vertex")
        val fragmentShader = compileShader(GLES30.GL_FRAGMENT_SHADER, fragmentSource, "$name fragment")
        val program = GLES30.glCreateProgram()
        GLES30.glAttachShader(program, vertexShader)
        GLES30.glAttachShader(program, fragmentShader)
        GLES30.glLinkProgram(program)
        val linked = IntArray(1)
        GLES30.glGetProgramiv(program, GLES30.GL_LINK_STATUS, linked, 0)
        GLES30.glDeleteShader(vertexShader)
        GLES30.glDeleteShader(fragmentShader)
        if (linked[0] == 0) {
            val log = GLES30.glGetProgramInfoLog(program)
            GLES30.glDeleteProgram(program)
            throw IllegalStateException("Program $name linking failed: $log")
        }
        programs += program
        return program
    }

    private fun linkComputeProgram(source: String, name: String): Int {
        val shader = compileShader(GLES31.GL_COMPUTE_SHADER, source, "$name compute")
        val program = GLES31.glCreateProgram()
        GLES31.glAttachShader(program, shader)
        GLES31.glLinkProgram(program)
        val linked = IntArray(1)
        GLES31.glGetProgramiv(program, GLES31.GL_LINK_STATUS, linked, 0)
        GLES31.glDeleteShader(shader)
        if (linked[0] == 0) {
            val log = GLES31.glGetProgramInfoLog(program)
            GLES31.glDeleteProgram(program)
            throw IllegalStateException("Compute program $name linking failed: $log")
        }
        programs += program
        return program
    }

    private fun compileShader(type: Int, source: String, name: String): Int {
        val shader = GLES31.glCreateShader(type)
        GLES31.glShaderSource(shader, source)
        GLES31.glCompileShader(shader)
        val compiled = IntArray(1)
        GLES31.glGetShaderiv(shader, GLES31.GL_COMPILE_STATUS, compiled, 0)
        if (compiled[0] == 0) {
            val log = GLES31.glGetShaderInfoLog(shader)
            GLES31.glDeleteShader(shader)
            throw IllegalStateException("Shader $name compilation failed: $log")
        }
        return shader
    }

    private fun checkFramebuffer(label: String) {
        val status = GLES30.glCheckFramebufferStatus(GLES30.GL_FRAMEBUFFER)
        if (status != GLES30.GL_FRAMEBUFFER_COMPLETE) {
            throw IllegalStateException("$label framebuffer incomplete: 0x${status.toString(16)}")
        }
    }

    private fun checkGlError(label: String) {
        var error: Int
        while (GLES30.glGetError().also { error = it } != GLES30.GL_NO_ERROR) {
            PLog.e(TAG, "$label: glError $error")
        }
    }

    private fun groupCount(size: Int): Int = (size + LOCAL_SIZE - 1) / LOCAL_SIZE

    override fun close() {
        if (textures.isNotEmpty()) {
            GLES30.glDeleteTextures(textures.size, textures.toIntArray(), 0)
            textures.clear()
        }
        if (framebuffers.isNotEmpty()) {
            GLES30.glDeleteFramebuffers(framebuffers.size, framebuffers.toIntArray(), 0)
            framebuffers.clear()
        }
        programs.forEach { GLES30.glDeleteProgram(it) }
        programs.clear()
    }

    private companion object {
        private const val TAG = "RawHdrLinearAlignment"
        private const val LOCAL_SIZE = 16
        private const val PYRAMID_LEVELS = 4
        private const val ALIGN_LEVEL = 2
        private const val FLOW_GRID_SPACING = 8
        private const val ALIGN_WINDOW_SIZE = 32
        private const val SEARCH_RADIUS_LEVEL = 6
        private const val ALIGN_SAMPLE_STEP = 2
        private const val LK_REFINE_PASSES = 2
        private const val FLOW_SMOOTH_PASSES = 2
        private const val FLOW_OUTLIER_THRESHOLD_PX = 12.0f
        private const val AFFINE_MIN_SAMPLES = 24
        private const val AFFINE_MIN_CONFIDENCE = 0.08f
        private const val AFFINE_MAX_FLOW_PX = 96.0f
        private const val AFFINE_MAX_SLOPE_PX = 32.0f
        private const val AFFINE_ROBUST_PASSES = 3

        private val FULLSCREEN_VERTEX_SHADER = """
            #version 300 es
            precision highp float;
            out vec2 vTexCoord;
            void main() {
                vec2 positions[3] = vec2[3](
                    vec2(-1.0, -1.0),
                    vec2( 3.0, -1.0),
                    vec2(-1.0,  3.0)
                );
                vec2 texCoords[3] = vec2[3](
                    vec2(0.0, 0.0),
                    vec2(2.0, 0.0),
                    vec2(0.0, 2.0)
                );
                gl_Position = vec4(positions[gl_VertexID], 0.0, 1.0);
                vTexCoord = texCoords[gl_VertexID];
            }
        """.trimIndent()

        private val LINEAR_PROXY_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uInput;
            uniform ivec2 uInputSize;
            uniform float uExposureScale;
            uniform float uNoiseAlpha;
            uniform float uNoiseBeta;
            out vec4 fragColor;

            const vec3 LINEAR_LUMA = vec3(0.25, 0.50, 0.25);

            vec3 readRgb(ivec2 p) {
                p = clamp(p, ivec2(0), uInputSize - ivec2(1));
                return max(texelFetch(uInput, p, 0).rgb, vec3(0.0));
            }

            float lumaOf(vec3 rgb) {
                return dot(rgb, LINEAR_LUMA);
            }

            float blockScaledLuma(ivec2 planeCoord) {
                ivec2 base = clamp(planeCoord * 2, ivec2(0), uInputSize - ivec2(2));
                float sum = 0.0;
                for (int y = 0; y <= 1; ++y) {
                    for (int x = 0; x <= 1; ++x) {
                        sum += lumaOf(clamp(readRgb(base + ivec2(x, y)) * uExposureScale, vec3(0.0), vec3(1.0)));
                    }
                }
                return sum * 0.25;
            }

            float blockRawSignal(ivec2 planeCoord) {
                ivec2 base = clamp(planeCoord * 2, ivec2(0), uInputSize - ivec2(2));
                float signal = 0.0;
                for (int y = 0; y <= 1; ++y) {
                    for (int x = 0; x <= 1; ++x) {
                        vec3 rgb = readRgb(base + ivec2(x, y));
                        signal = max(signal, max(lumaOf(rgb), max(rgb.r, max(rgb.g, rgb.b))));
                    }
                }
                return signal;
            }

            float blockMaxChannel(ivec2 planeCoord, float scale) {
                ivec2 base = clamp(planeCoord * 2, ivec2(0), uInputSize - ivec2(2));
                float value = 0.0;
                for (int y = 0; y <= 1; ++y) {
                    for (int x = 0; x <= 1; ++x) {
                        vec3 rgb = clamp(readRgb(base + ivec2(x, y)) * scale, vec3(0.0), vec3(1.0));
                        value = max(value, max(rgb.r, max(rgb.g, rgb.b)));
                    }
                }
                return value;
            }

            float blockNoiseVariance(ivec2 planeCoord) {
                ivec2 base = clamp(planeCoord * 2, ivec2(0), uInputSize - ivec2(2));
                float variance = 0.0;
                for (int y = 0; y <= 1; ++y) {
                    for (int x = 0; x <= 1; ++x) {
                        vec3 rgb = readRgb(base + ivec2(x, y));
                        float signal = max(lumaOf(rgb), 0.0);
                        variance += max(uNoiseAlpha * signal + uNoiseBeta, 2.25e-6);
                    }
                }
                return variance * 0.25 * uExposureScale * uExposureScale;
            }

            float detailAt(ivec2 p, float center) {
                float gx = abs(blockScaledLuma(p + ivec2(1, 0)) - blockScaledLuma(p - ivec2(1, 0)));
                float gy = abs(blockScaledLuma(p + ivec2(0, 1)) - blockScaledLuma(p - ivec2(0, 1)));
                float lap = abs(4.0 * center -
                    blockScaledLuma(p + ivec2(1, 0)) -
                    blockScaledLuma(p - ivec2(1, 0)) -
                    blockScaledLuma(p + ivec2(0, 1)) -
                    blockScaledLuma(p - ivec2(0, 1)));
                return gx + gy + 0.5 * lap;
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                float center = blockScaledLuma(p);
                float sum = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        sum += blockScaledLuma(p + ivec2(x, y));
                    }
                }
                float mean = sum / 9.0;
                float rawSignal = blockRawSignal(p);
                float rawMax = blockMaxChannel(p, 1.0);
                float scaledMax = blockMaxChannel(p, uExposureScale);
                float shadowValid = smoothstep(0.004, 0.035, rawSignal) * smoothstep(0.010, 0.060, center);
                float clipValid = (1.0 - smoothstep(0.90, 0.995, rawMax)) *
                    (1.0 - smoothstep(0.965, 1.0, scaledMax));
                float validity = clamp(shadowValid * clipValid, 0.0, 1.0);
                float detail = detailAt(p, center);
                float noiseStd = sqrt(max(blockNoiseVariance(p), 2.25e-6));
                float structure = smoothstep(2.2, 6.5, detail / max(noiseStd, 1.0e-5));
                fragColor = vec4(
                    clamp(center + 0.35 * (center - mean) * structure, 0.0, 1.0),
                    validity,
                    structure,
                    1.0
                );
            }
        """.trimIndent()

        private val DOWNSAMPLE_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uInput;
            uniform ivec2 uInputSize;
            out vec4 fragColor;

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                ivec2 src = p * 2;
                vec3 sum = vec3(0.0);
                for (int y = 0; y < 2; ++y) {
                    for (int x = 0; x < 2; ++x) {
                        ivec2 q = clamp(src + ivec2(x, y), ivec2(0), uInputSize - ivec2(1));
                        sum += texelFetch(uInput, q, 0).rgb;
                    }
                }
                fragColor = vec4(sum * 0.25, 1.0);
            }
        """.trimIndent()

        private val ALIGN_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform ivec2 uLevelSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform int uAlignWindowSize;
            uniform int uLevelScale;
            uniform int uSearchRadius;
            uniform int uSampleStep;
            out vec4 fragColor;

            vec3 readProxy(sampler2D tex, ivec2 p) {
                p = clamp(p, ivec2(0), uLevelSize - ivec2(1));
                return texelFetch(tex, p, 0).rgb;
            }

            void main() {
                ivec2 tile = ivec2(gl_FragCoord.xy);
                ivec2 fullCenter = tile * uTileSize;
                ivec2 levelCenter = fullCenter / uLevelScale;
                int levelTile = max(4, uAlignWindowSize / uLevelScale);
                ivec2 levelStart = levelCenter - ivec2(levelTile / 2);
                float bestSad = 1e20;
                float bestCoverage = 0.0;
                ivec2 bestShift = ivec2(0);

                for (int dy = -uSearchRadius; dy <= uSearchRadius; ++dy) {
                    for (int dx = -uSearchRadius; dx <= uSearchRadius; ++dx) {
                        float sad = 0.0;
                        float count = 0.0;
                        float sampleCount = 0.0;
                        for (int sy = 1; sy < levelTile - 1; sy += uSampleStep) {
                            for (int sx = 1; sx < levelTile - 1; sx += uSampleStep) {
                                ivec2 rp = levelStart + ivec2(sx, sy);
                                vec3 rv = readProxy(uReference, rp);
                                vec3 cv = readProxy(uCurrent, rp + ivec2(dx, dy));
                                float w = min(rv.g, cv.g) * min(rv.b, cv.b);
                                sad += abs(rv.r - cv.r) * w;
                                count += w;
                                sampleCount += 1.0;
                            }
                        }
                        float coverage = count / max(sampleCount, 1.0);
                        sad = sad / max(count, 1e-4) +
                            0.08 * (1.0 - clamp(coverage, 0.0, 1.0)) +
                            0.0006 * float(dx * dx + dy * dy);
                        if (sad < bestSad) {
                            bestSad = sad;
                            bestCoverage = coverage;
                            bestShift = ivec2(dx, dy);
                        }
                    }
                }
                fragColor = vec4(vec2(bestShift) * float(uLevelScale), bestCoverage, 1.0);
            }
        """.trimIndent()

        private val LK_REFINE_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            uniform sampler2D uInputFlow;
            layout(rgba16f, binding = 3) writeonly uniform highp image2D uOutputFlow;
            uniform ivec2 uPlaneSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;

            vec3 sampleProxy(sampler2D tex, vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(tex, uv).rgb;
            }

            void main() {
                ivec2 tile = ivec2(gl_GlobalInvocationID.xy);
                if (tile.x >= uGridSize.x || tile.y >= uGridSize.y) return;
                vec3 inputFlow = texelFetch(uInputFlow, tile, 0).rgb;
                vec2 flow = inputFlow.rg;
                vec2 tileCenter = vec2(tile * uTileSize + ivec2(uTileSize / 2));
                float sIxIx = 0.0;
                float sIyIy = 0.0;
                float sIxIy = 0.0;
                float sIxIt = 0.0;
                float sIyIt = 0.0;
                float totalWeight = 0.0;
                const int windowRadius = 3;
                const float sigma2 = 10.0;
                for (int oy = -windowRadius; oy <= windowRadius; ++oy) {
                    for (int ox = -windowRadius; ox <= windowRadius; ++ox) {
                        vec2 basePoint = tileCenter + vec2(float(ox), float(oy));
                        if (basePoint.x < 1.0 || basePoint.y < 1.0 ||
                            basePoint.x > float(uPlaneSize.x - 2) ||
                            basePoint.y > float(uPlaneSize.y - 2)) {
                            continue;
                        }
                        vec3 refValue = sampleProxy(uReference, basePoint);
                        vec3 curValue = sampleProxy(uCurrent, basePoint + flow);
                        float tx = 0.5 * (sampleProxy(uReference, basePoint + vec2(1.0, 0.0)).r -
                                          sampleProxy(uReference, basePoint - vec2(1.0, 0.0)).r);
                        float ty = 0.5 * (sampleProxy(uReference, basePoint + vec2(0.0, 1.0)).r -
                                          sampleProxy(uReference, basePoint - vec2(0.0, 1.0)).r);
                        float structure = refValue.b;
                        float validity = min(refValue.g, curValue.g);
                        float spatialW = exp(-0.5 * float(ox * ox + oy * oy) / sigma2);
                        float w = spatialW * structure * validity;
                        float it = curValue.r - refValue.r;
                        sIxIx += w * tx * tx;
                        sIyIy += w * ty * ty;
                        sIxIy += w * tx * ty;
                        sIxIt += w * tx * it;
                        sIyIt += w * ty * it;
                        totalWeight += w;
                    }
                }
                float trace = sIxIx + sIyIy;
                float lambda = max(1e-4, 0.015 * trace + 5e-4);
                sIxIx += lambda;
                sIyIy += lambda;
                float det = sIxIx * sIyIy - sIxIy * sIxIy;
                vec2 delta = vec2(0.0);
                if (det > 1e-7 && totalWeight > 1e-4) {
                    delta.x = (sIyIy * sIxIt - sIxIy * sIyIt) / det;
                    delta.y = (sIxIx * sIyIt - sIxIy * sIxIt) / det;
                    delta = -delta;
                }
                float len = length(delta);
                if (isnan(len) || isinf(len)) {
                    delta = vec2(0.0);
                } else if (len > 1.25) {
                    delta *= 1.25 / len;
                }
                vec2 updated = flow + delta;
                if (isnan(updated.x) || isnan(updated.y) || isinf(updated.x) || isinf(updated.y)) {
                    updated = flow;
                }
                float confidence = clamp(max(inputFlow.b, totalWeight / 8.0), 0.0, 1.0);
                imageStore(uOutputFlow, tile, vec4(updated, confidence, 1.0));
            }
        """.trimIndent()

        private val SMOOTH_FLOW_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uInputFlow;
            uniform ivec2 uGridSize;
            uniform float uOutlierThreshold;
            out vec4 fragColor;

            vec3 readFlow(ivec2 p) {
                p = clamp(p, ivec2(0), uGridSize - ivec2(1));
                return texelFetch(uInputFlow, p, 0).rgb;
            }

            void main() {
                ivec2 p = ivec2(gl_FragCoord.xy);
                vec3 center = readFlow(p);
                vec2 sum = center.rg * max(center.b, 0.05) * 4.0;
                float weight = max(center.b, 0.05) * 4.0;
                float confidenceSum = center.b * 4.0;
                float confidenceWeight = 4.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        if (x == 0 && y == 0) continue;
                        vec3 f = readFlow(p + ivec2(x, y));
                        float d = length(f.rg - center.rg);
                        float spatialW = d > uOutlierThreshold ? 0.15 : 1.0;
                        float sampleW = spatialW * max(f.b, 0.05);
                        sum += f.rg * sampleW;
                        weight += sampleW;
                        confidenceSum += f.b * spatialW;
                        confidenceWeight += spatialW;
                    }
                }
                fragColor = vec4(sum / max(weight, 1e-4), confidenceSum / max(confidenceWeight, 1e-4), 1.0);
            }
        """.trimIndent()

        private val ROBUSTNESS_COMPUTE_SHADER = """
            #version 310 es
            precision highp float;
            precision highp int;
            layout(local_size_x = 16, local_size_y = 16) in;
            uniform sampler2D uReference;
            uniform sampler2D uCurrent;
            layout(r32f, binding = 3) writeonly uniform highp image2D uRobustness;
            uniform ivec2 uPlaneSize;
            uniform vec3 uFlowX;
            uniform vec3 uFlowY;

            vec3 refProxy(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                return texelFetch(uReference, p, 0).rgb;
            }

            vec3 curProxy(vec2 p) {
                vec2 uv = (clamp(p, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) / vec2(uPlaneSize);
                return texture(uCurrent, uv).rgb;
            }

            vec2 flowAt(vec2 planePos) {
                vec2 n = (planePos - 0.5 * vec2(uPlaneSize)) / vec2(uPlaneSize);
                vec3 basis = vec3(1.0, n.x, n.y);
                return vec2(dot(uFlowX, basis), dot(uFlowY, basis));
            }

            void main() {
                ivec2 p = ivec2(gl_GlobalInvocationID.xy);
                if (p.x >= uPlaneSize.x || p.y >= uPlaneSize.y) return;
                vec2 flow = flowAt(vec2(p));
                vec2 curCenter = vec2(p) + flow;
                if (curCenter.x < 1.0 || curCenter.y < 1.0 ||
                    curCenter.x > float(uPlaneSize.x - 2) ||
                    curCenter.y > float(uPlaneSize.y - 2)) {
                    imageStore(uRobustness, p, vec4(0.0));
                    return;
                }

                vec3 centerRef = refProxy(p);
                float centerStructure = clamp(centerRef.b, 0.0, 1.0);
                float center = centerRef.r;
                float sum = 0.0;
                float sum2 = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        float v = refProxy(p + ivec2(x, y)).r;
                        sum += v;
                        sum2 += v * v;
                    }
                }
                float mean = sum / 9.0;
                float sigma2Spatial = max(sum2 / 9.0 - mean * mean, 0.0);
                float sigma2 = max(sigma2Spatial, 2.25e-6);
                float gradX = 0.5 * (refProxy(p + ivec2(1, 0)).r - refProxy(p - ivec2(1, 0)).r);
                float gradY = 0.5 * (refProxy(p + ivec2(0, 1)).r - refProxy(p - ivec2(0, 1)).r);
                float edgeStrength = sqrt(max((gradX * gradX + gradY * gradY) / max(sigma2, 1e-8), 0.0));
                float edgeRelax = smoothstep(1.2, 5.0, edgeStrength);

                float minR = 1.0;
                float sumR = 0.0;
                float centerR = 1.0;
                float weightSum = 0.0;
                for (int y = -1; y <= 1; ++y) {
                    for (int x = -1; x <= 1; ++x) {
                        ivec2 rp = p + ivec2(x, y);
                        vec3 r = refProxy(rp);
                        vec3 c = curProxy(vec2(rp) + flow);
                        float diff = r.r - c.r;
                        float d2 = diff * diff;
                        float sampleValid = min(r.g, c.g);
                        float sampleStructure = clamp(r.b, 0.0, 1.0);
                        float noiseFloor = mix(4.5 * sigma2, 1.0e-5, edgeRelax);
                        float den = mix(sigma2, 2.25e-6, edgeRelax);
                        float residual = max(0.0, d2 - noiseFloor) / max(den, 1e-10);
                        float tau = 1.0 + 0.75 * edgeRelax;
                        float residualRobust = exp(-0.5 * pow(residual / tau, 8.0)) * sampleValid;
                        float robust = mix(1.0, residualRobust, sampleStructure);
                        float w = (x == 0 && y == 0) ? 2.0 : 1.0;
                        sumR += robust * w;
                        weightSum += w;
                        minR = min(minR, robust);
                        if (x == 0 && y == 0) centerR = robust;
                    }
                }
                float avgR = sumR / max(weightSum, 1.0);
                float minMix = mix(0.35, 0.15, edgeRelax);
                float centerMix = mix(0.35, 0.65, edgeRelax);
                float outR = clamp(minMix * minR + centerMix * centerR + (1.0 - minMix - centerMix) * avgR, 0.0, 1.0);
                outR = mix(1.0, outR, smoothstep(0.08, 0.45, centerStructure));
                imageStore(uRobustness, p, vec4(outR));
            }
        """.trimIndent()

        private val TILE_MASK_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uReference;
            uniform sampler2D uRobustness;
            uniform ivec2 uPlaneSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            out float fragColor;

            vec3 readRef(ivec2 p) {
                p = clamp(p, ivec2(0), uPlaneSize - ivec2(1));
                return texelFetch(uReference, p, 0).rgb;
            }

            void main() {
                ivec2 tile = ivec2(gl_FragCoord.xy);
                ivec2 start = tile * uTileSize;
                float robustSum = 0.0;
                float weakCount = 0.0;
                float structureSum = 0.0;
                float count = 0.0;
                for (int y = 0; y < uTileSize; y += 4) {
                    for (int x = 0; x < uTileSize; x += 4) {
                        ivec2 p = start + ivec2(x, y);
                        if (p.x >= uPlaneSize.x || p.y >= uPlaneSize.y) continue;
                        float r = texelFetch(uRobustness, p, 0).r;
                        vec3 refValue = readRef(p);
                        float structure = refValue.b;
                        robustSum += r;
                        weakCount += r < 0.5 ? 1.0 : 0.0;
                        structureSum += structure;
                        count += 1.0;
                    }
                }
                float meanR = robustSum / max(count, 1.0);
                float weak = weakCount / max(count, 1.0);
                float structure = structureSum / max(count, 1.0);
                float robustNorm = clamp((meanR - 0.62) / 0.22, 0.0, 1.0);
                float weakPenalty = clamp(1.0 - max(0.0, weak - 0.08) / 0.26, 0.0, 1.0);
                float structureGate = smoothstep(0.18, 0.62, structure);
                float mask = clamp(0.60 * robustNorm + 0.40 * weakPenalty, 0.0, 1.0);
                if (structure > 0.62) {
                    mask = max(mask, 0.28 * robustNorm);
                } else if (structure > 0.30) {
                    mask = max(mask, 0.14 * robustNorm);
                }
                fragColor = max(mask * structureGate, 1.0 - structureGate);
            }
        """.trimIndent()

        private val ALIGNMENT_ROBUSTNESS_EXPORT_FRAGMENT_SHADER = """
            #version 300 es
            precision highp float;
            uniform sampler2D uRobustness;
            uniform sampler2D uTileMask;
            uniform ivec2 uPlaneSize;
            uniform ivec2 uGridSize;
            uniform int uTileSize;
            uniform vec3 uFlowX;
            uniform vec3 uFlowY;
            out vec4 fragColor;

            vec2 flowAt(vec2 planePos) {
                vec2 n = (planePos - 0.5 * vec2(uPlaneSize)) / vec2(uPlaneSize);
                vec3 basis = vec3(1.0, n.x, n.y);
                return vec2(dot(uFlowX, basis), dot(uFlowY, basis));
            }

            float robustnessAt(vec2 planePos) {
                vec2 uv = (clamp(planePos, vec2(0.0), vec2(uPlaneSize - ivec2(1))) + vec2(0.5)) /
                    vec2(uPlaneSize);
                return texture(uRobustness, uv).r;
            }

            float tileMaskAt(vec2 planePos) {
                vec2 grid = planePos / float(uTileSize);
                vec2 uv = (grid + vec2(0.5)) / vec2(uGridSize);
                return texture(uTileMask, clamp(uv, vec2(0.0), vec2(1.0))).r;
            }

            void main() {
                vec2 planePos = vec2(ivec2(gl_FragCoord.xy));
                fragColor = vec4(flowAt(planePos), robustnessAt(planePos), tileMaskAt(planePos));
            }
        """.trimIndent()
    }
}
