package com.hinnka.mycamera.processor

import android.util.Half
import java.nio.ByteBuffer
import java.nio.ByteOrder
import kotlin.math.ceil
import kotlin.math.floor
import kotlin.math.sqrt

/**
 * CPU planning of the previous renderer's swirl highlights and soap bubbles,
 * unchanged, with its defocus curve ([legacyCocPixels], original-image
 * pixels) and maximum radius ([legacyMaxBlurRadius]). Inputs are the
 * working-resolution readbacks of the classifier / bubble-source fields and
 * of the layered depth ([DepthClassification]).
 */
internal object BokehHighlightPlanner {
    private const val HIGHLIGHT_MASK_THRESHOLD = 0.03f
    private const val MIN_ANALYTIC_COC_PIXELS = 20f
    private const val FOCUS_DEPTH_DEAD_BAND = 0.015f
    // Synthetic-highlight defocus gate. A depth sample is accepted when
    // its absolute focus gap is >= X. The low-depth branch retains the
    // established far-background allowance for normalized disparity maps.
    private const val MIN_HIGHLIGHT_SUBJECT_DEPTH_GAP = 0.4f // X
    private const val MAX_HIGHLIGHT_BACKGROUND_DEPTH = 0.2f // Y
    const val HIGHLIGHT_CLASSIFICATION_F_NUMBER = 2.8f
    // Tunable highlight-quality gate measured in linear RGB.
    const val MIN_HIGHLIGHT_NEIGHBOR_LUMA_DIFFERENCE = 0.11f
    private const val HIGHLIGHT_MIN_CENTER_SPACING_SCALE = 0.9f
    private const val HIGHLIGHT_PEAK_DISCOVERY_CELL_SCALE = 0.5f
    private const val PREEXISTING_BOKEH_RADIUS_SCALE = 0.05f
    private const val MAX_PREEXISTING_BOKEH_RADIUS_SCALE = 1.5f
    private const val MIN_PREEXISTING_BOKEH_RADIUS_PIXELS = 2.0f
    private const val MIN_PREEXISTING_BOKEH_FILL_RATIO = 0.45f
    private const val MIN_PREEXISTING_BOKEH_ASPECT_RATIO = 0.5f
    const val HIGHLIGHT_INSTANCE_STRIDE_FLOATS = 6

    // Soap-bubble planning. Sizes are in original-image pixels.
    // Soap-bubble optics are over-corrected for spherical aberration: only
    // sources behind focus form a bright rim. A source becomes a bubble once
    // its normalized depth gap behind focus (same normalization as CoC)
    // reaches this value; front and near-focus highlights stay soft.
    const val MIN_BUBBLE_DEPTH_GAP = 0.3f
    // Renderability floor only: a ring needs a few pixels to exist.
    const val MIN_BUBBLE_COC_PIXELS = 10f
    // The source pass compares each pixel with a bubble-scale neighborhood.
    const val BUBBLE_BACKGROUND_RADIUS_SCALE = 0.6f
    // A connected source whose equivalent radius does not exceed its bubble
    // radius is one light and forms exactly one bubble.
    private const val BUBBLE_POINT_SOURCE_RADIUS_SCALE = 1.0f
    // One source forms one bubble; bubbles of neighboring sources only
    // overlap partially. Split centers stay at least this many radii apart.
    private const val BUBBLE_SOURCE_SPACING_SCALE = 1.25f
    private const val HEXAGONAL_CELL_AREA_SCALE = 0.8660254f
    private const val MAX_BUBBLES_PER_COMPONENT = 256
    private const val MAX_BUBBLES = 4096

    /** Maximum CoC of the previous renderer, in original pixels. */
    fun legacyMaxBlurRadius(originalWidth: Int): Float = originalWidth / 26f

    /** CoC of the previous renderer in original pixels; the shaders' `computeCoc`. */
    fun legacyCocPixels(depth: Float, focusDepth: Float, aperture: Float, maxBlurRadius: Float): Float {
        val gap = (kotlin.math.abs(focusDepth - depth) - FOCUS_DEPTH_DEAD_BAND)
            .coerceAtLeast(0.0f)
        val availableFocusSpan = (
            maxOf(focusDepth, 1.0f - focusDepth) - FOCUS_DEPTH_DEAD_BAND
        ).coerceAtLeast(0.15f)
        val normalizedGap = (gap / availableFocusSpan).coerceIn(0.0f, 1.0f)
        val defocus = Math.pow(normalizedGap.toDouble(), 1.25).toFloat()
        val apertureScale = (1.4f / maxOf(aperture, 0.7f)).coerceAtMost(1.25f)
        return (defocus * maxBlurRadius * apertureScale)
            .coerceIn(0.0f, maxBlurRadius)
    }

    data class AnalyticHighlight(
        val centerU: Float,
        val centerV: Float,
        val cocPixels: Float,
        val signalRed: Float,
        val signalGreen: Float,
        val signalBlue: Float,
    )

    data class AnalyticHighlightExtraction(
        val highlights: List<AnalyticHighlight>,
        val eligibleCandidateCount: Int,
        val depthGateRejectedCount: Int,
        val preExistingBokehCount: Int,
        val densitySuppressedCount: Int,
    )

    data class AnalyticHighlightCandidate(
        val highlight: AnalyticHighlight,
        val centerXInOriginalPixels: Float,
        val centerYInOriginalPixels: Float,
        val isPreExistingBokeh: Boolean,
        val selectionScore: Float,
    )

    data class ComponentPeak(
        val pixelIndex: Int,
        val score: Float,
        val red: Float,
        val green: Float,
        val blue: Float,
        val alpha: Float,
    )

    data class BubblePlan(
        val bubbles: List<AnalyticHighlight>,
        val componentCount: Int,
        val splitComponentCount: Int,
        val plannedCount: Int,
        val cappedCount: Int,
    )

    data class DepthClassification(
        val otherDepth: ByteArray,
        val subjectMask: ByteArray,
    )

    /**
     * Swirl: compact highlights of the classifier field [buffer] (RGBA8, or
     * RGBA16F when [halfFloat]) as analytic disc centers with their CoC.
     */
    fun extractAnalyticHighlights(
        buffer: ByteBuffer,
        width: Int,
        height: Int,
        halfFloat: Boolean,
        refinedDepthPixels: ByteArray,
        subjectMaskPixels: ByteArray,
        originalWidth: Int,
        originalHeight: Int,
        focusDepth: Float,
        cocPixels: (Float) -> Float,
        maxBlurRadius: Float,
    ): AnalyticHighlightExtraction {
        val pixelCount = width.toLong() * height.toLong()
        check(pixelCount == refinedDepthPixels.size.toLong()) {
            "Highlight/depth working domains do not match"
        }
        check(subjectMaskPixels.size == refinedDepthPixels.size) { "Subject mask/depth domains do not match" }

        run {
            buffer.order(ByteOrder.nativeOrder())
            buffer.position(0)

            // Connected topology is used only to identify coherent pre-existing
            // bokeh. A dense point-light component is split into spatial cells so
            // that it can retain several strong representative centers instead of
            // collapsing to one centroid or being rejected as a whole.
            val activeMask = ByteArray(pixelCount.toInt())
            val halfPixels = if (halfFloat) buffer.asShortBuffer() else null

            fun readPeak(index: Int): ComponentPeak {
                val channelOffset = index * 4
                val red: Float
                val green: Float
                val blue: Float
                val alpha: Float
                if (halfPixels != null) {
                    red = Half.toFloat(halfPixels.get(channelOffset))
                    green = Half.toFloat(halfPixels.get(channelOffset + 1))
                    blue = Half.toFloat(halfPixels.get(channelOffset + 2))
                    alpha = Half.toFloat(halfPixels.get(channelOffset + 3))
                } else {
                    red = (buffer.get(channelOffset).toInt() and 0xff) / 255.0f
                    green = (buffer.get(channelOffset + 1).toInt() and 0xff) / 255.0f
                    blue = (buffer.get(channelOffset + 2).toInt() and 0xff) / 255.0f
                    alpha = (buffer.get(channelOffset + 3).toInt() and 0xff) / 255.0f
                }
                val finiteRed = if (red.isFinite()) red.coerceAtLeast(0.0f) else 0.0f
                val finiteGreen = if (green.isFinite()) green.coerceAtLeast(0.0f) else 0.0f
                val finiteBlue = if (blue.isFinite()) blue.coerceAtLeast(0.0f) else 0.0f
                val finiteAlpha = if (alpha.isFinite()) alpha.coerceAtLeast(0.0f) else 0.0f
                return ComponentPeak(
                    pixelIndex = index,
                    score = finiteRed * 0.2126f +
                        finiteGreen * 0.7152f + finiteBlue * 0.0722f,
                    red = finiteRed,
                    green = finiteGreen,
                    blue = finiteBlue,
                    alpha = finiteAlpha,
                )
            }

            if (halfPixels != null) {
                for (index in activeMask.indices) {
                    val alpha = Half.toFloat(halfPixels.get(index * 4 + 3))
                    if (alpha.isFinite() && alpha >= HIGHLIGHT_MASK_THRESHOLD) {
                        activeMask[index] = 1
                    }
                }
            } else {
                for (index in activeMask.indices) {
                    val alpha = (buffer.get(index * 4 + 3).toInt() and 0xff) / 255.0f
                    if (alpha >= HIGHLIGHT_MASK_THRESHOLD) {
                        activeMask[index] = 1
                    }
                }
            }

            val originalPixelsPerWorkingX = originalWidth.toFloat() / width.toFloat()
            val originalPixelsPerWorkingY = originalHeight.toFloat() / height.toFloat()
            val minimumSpacing = minimumHighlightCenterSpacing(maxBlurRadius)
            val discoveryCellSize = maxOf(
                minimumSpacing * HIGHLIGHT_PEAK_DISCOVERY_CELL_SCALE,
                1.0f,
            )
            val candidates = ArrayList<AnalyticHighlightCandidate>()
            var depthGateRejectedCount = 0

            fun cellKey(x: Int, y: Int): Long =
                (x.toLong() shl 32) xor (y.toLong() and 0xffffffffL)

            fun addCandidate(
                centerX: Float,
                centerY: Float,
                peak: ComponentPeak,
                isPreExistingBokeh: Boolean,
                sourceRadiusPixels: Float = 0.0f,
            ) {
                if (sampleWorkingDepth(subjectMaskPixels, width, height, centerX, centerY) > 0.01f) {
                    depthGateRejectedCount++
                    return
                }
                val centerDepth = sampleWorkingDepth(
                    refinedDepthPixels,
                    width,
                    height,
                    centerX,
                    centerY,
                    interpolate = false,
                )

                val depthCocPixels = cocPixels(centerDepth)
                if (depthCocPixels < MIN_ANALYTIC_COC_PIXELS && !isPreExistingBokeh) return
                if (!isSyntheticHighlightDefocusedDepth(centerDepth, focusDepth)) {
                    depthGateRejectedCount++
                    return
                }
                val discCocPixels = if (isPreExistingBokeh) {
                    maxOf(depthCocPixels, sourceRadiusPixels * 1.05f)
                        .coerceAtMost(maxBlurRadius * 1.2f)
                } else {
                    depthCocPixels
                }
                if (discCocPixels < MIN_ANALYTIC_COC_PIXELS) return
                if (!hasEligibleDefocusedSupport(
                        refinedDepthPixels = refinedDepthPixels,
                        subjectMaskPixels = subjectMaskPixels,
                        width = width,
                        height = height,
                        originalWidth = originalWidth,
                        originalHeight = originalHeight,
                        centerX = centerX,
                        centerY = centerY,
                        focusDepth = focusDepth,
                        cocPixels = discCocPixels,
                    )
                ) {
                    depthGateRejectedCount++
                    return
                }

                // Optical discs are premultiplied by classifier alpha.
                val sourceSignalScale = if (isPreExistingBokeh) {
                    1.0f / maxOf(
                        peak.alpha,
                        0.001f,
                    )
                } else {
                    1.0f
                }
                val highlight = AnalyticHighlight(
                    centerU = (centerX + 0.5f) / width.toFloat(),
                    centerV = (centerY + 0.5f) / height.toFloat(),
                    cocPixels = discCocPixels,
                    signalRed = peak.red * sourceSignalScale,
                    signalGreen = peak.green * sourceSignalScale,
                    signalBlue = peak.blue * sourceSignalScale,
                )
                candidates += AnalyticHighlightCandidate(
                    highlight = highlight,
                    centerXInOriginalPixels = highlight.centerU * originalWidth.toFloat(),
                    centerYInOriginalPixels = highlight.centerV * originalHeight.toFloat(),
                    isPreExistingBokeh = isPreExistingBokeh,
                    selectionScore = peak.score,
                )
            }

            for (startIndex in activeMask.indices) {
                if (activeMask[startIndex].toInt() == 0) continue

                var componentPixels = IntArray(64)
                var head = 0
                var tail = 0
                componentPixels[tail++] = startIndex
                activeMask[startIndex] = 0

                var bestPeak: ComponentPeak? = null
                var componentMinX = startIndex % width
                var componentMaxX = componentMinX
                var componentMinY = startIndex / width
                var componentMaxY = componentMinY
                val componentPeaks = HashMap<Long, ComponentPeak>()

                while (head < tail) {
                    val index = componentPixels[head++]
                    val x = index % width
                    val y = index / width
                    componentMinX = minOf(componentMinX, x)
                    componentMaxX = maxOf(componentMaxX, x)
                    componentMinY = minOf(componentMinY, y)
                    componentMaxY = maxOf(componentMaxY, y)

                    val peak = readPeak(index)
                    val previousBestPeak = bestPeak
                    if (previousBestPeak == null || peak.score > previousBestPeak.score) {
                        bestPeak = peak
                    }

                    val originalX = (x.toFloat() + 0.5f) * originalPixelsPerWorkingX
                    val originalY = (y.toFloat() + 0.5f) * originalPixelsPerWorkingY
                    val peakCellX = floor(originalX / discoveryCellSize).toInt()
                    val peakCellY = floor(originalY / discoveryCellSize).toInt()
                    val peakCellKey = cellKey(peakCellX, peakCellY)
                    val previousPeak = componentPeaks[peakCellKey]
                    if (previousPeak == null ||
                        peak.score > previousPeak.score ||
                        peak.score == previousPeak.score && peak.pixelIndex < previousPeak.pixelIndex
                    ) {
                        componentPeaks[peakCellKey] = peak
                    }

                    val minX = maxOf(x - 1, 0)
                    val maxX = minOf(x + 1, width - 1)
                    val minY = maxOf(y - 1, 0)
                    val maxY = minOf(y + 1, height - 1)
                    for (neighborY in minY..maxY) {
                        for (neighborX in minX..maxX) {
                            val neighbor = neighborY * width + neighborX
                            if (activeMask[neighbor].toInt() == 0) continue
                            activeMask[neighbor] = 0
                            if (tail == componentPixels.size) {
                                componentPixels = componentPixels.copyOf(componentPixels.size * 2)
                            }
                            componentPixels[tail++] = neighbor
                        }
                    }
                }

                val strongestPeak = bestPeak ?: continue
                if (strongestPeak.score <= 0.0f) continue

                val componentAreaInOriginalPixels = tail.toFloat() *
                    originalPixelsPerWorkingX * originalPixelsPerWorkingY
                val componentRadiusInOriginalPixels = sqrt(
                    componentAreaInOriginalPixels / Math.PI.toFloat()
                )
                val componentWidth = componentMaxX - componentMinX + 1
                val componentHeight = componentMaxY - componentMinY + 1
                val componentFillRatio = tail.toFloat() /
                    (componentWidth * componentHeight).toFloat()
                val componentAspectRatio = minOf(componentWidth, componentHeight).toFloat() /
                    maxOf(componentWidth, componentHeight).toFloat()
                val minimumPreExistingRadius = maxOf(
                    MIN_PREEXISTING_BOKEH_RADIUS_PIXELS,
                    maxBlurRadius * PREEXISTING_BOKEH_RADIUS_SCALE,
                )
                val maximumPreExistingRadius = maxOf(
                    minimumPreExistingRadius,
                    maxBlurRadius * MAX_PREEXISTING_BOKEH_RADIUS_SCALE,
                )
                val isPreExistingBokeh =
                    componentRadiusInOriginalPixels in
                        minimumPreExistingRadius..maximumPreExistingRadius &&
                        componentFillRatio >= MIN_PREEXISTING_BOKEH_FILL_RATIO &&
                        componentAspectRatio >= MIN_PREEXISTING_BOKEH_ASPECT_RATIO

                if (isPreExistingBokeh) {
                    // Keep the final center on a pixel that passed the shader's
                    // complete dark-ring test. A component centroid can fall on
                    // an unclassified pixel and would break that invariant.
                    addCandidate(
                        centerX = (strongestPeak.pixelIndex % width).toFloat(),
                        centerY = (strongestPeak.pixelIndex / width).toFloat(),
                        peak = strongestPeak,
                        isPreExistingBokeh = true,
                        sourceRadiusPixels = componentRadiusInOriginalPixels,
                    )
                } else {
                    // Cell maxima are only discovery candidates. The global pass
                    // below sorts them by strength and applies the exact spacing,
                    // guaranteeing that every dense cluster keeps its strongest
                    // viable center before weaker neighbors are considered.
                    for (peak in componentPeaks.values.sortedBy { it.pixelIndex }) {
                        addCandidate(
                            centerX = (peak.pixelIndex % width).toFloat(),
                            centerY = (peak.pixelIndex / width).toFloat(),
                            peak = peak,
                            isPreExistingBokeh = false,
                            sourceRadiusPixels = componentRadiusInOriginalPixels,
                        )
                    }
                }
            }

            // Preserve every coherent pre-existing bokeh disc. Dense clusters of
            // tiny point responses are reduced with brightness-priority spatial
            // thinning: every neighborhood retains its strongest representative
            // instead of invalidating the whole cluster.
            val selectedCandidates = selectDensityLimitedHighlights(
                candidates,
                maxBlurRadius,
            )
            val highlights = ArrayList<AnalyticHighlight>(candidates.size)
            var preExistingBokehCount = 0
            var densitySuppressedCount = 0
            for (candidateIndex in candidates.indices) {
                val candidate = candidates[candidateIndex]
                if (candidate.isPreExistingBokeh) preExistingBokehCount++
                if (!selectedCandidates[candidateIndex]) {
                    densitySuppressedCount++
                    continue
                }
                highlights += candidate.highlight
            }

            return AnalyticHighlightExtraction(
                highlights = highlights,
                eligibleCandidateCount = candidates.size,
                depthGateRejectedCount = depthGateRejectedCount,
                preExistingBokehCount = preExistingBokehCount,
                densitySuppressedCount = densitySuppressedCount,
            )
        }
    }

    /**
     * 泡泡高光规划：按连通域把焦外光源场拆成能形成泡泡的点光源。
     *
     * 每个 8 连通域是一块连续发光区域，泡泡半径取区域的能量加权 CoC。
     * 区域等效半径不超过泡泡半径时视为单个光源，只形成一个泡泡（位于能量重心）；
     * 否则按区域面积与泡泡间距（六边形堆积，间距 1.25 倍半径，仅部分重叠）规划数量，
     * 由亮到暗选出满足间距的中心，再把区域内每个像素的能量分给最近的中心。
     * 每个泡泡的能量、颜色、位置与尺寸都来自其所属像素，区域总能量守恒。
     */
    fun planBubbleHighlights(
        buffer: ByteBuffer,
        width: Int,
        height: Int,
        depthClassification: DepthClassification,
        originalWidth: Int,
        originalHeight: Int,
        cocPixels: (Float) -> Float,
        maxBlurRadius: Float,
    ): BubblePlan {
        val pixelCount = width * height
        check(depthClassification.otherDepth.size == pixelCount) {
            "Bubble source/depth domains do not match"
        }

        run {
            buffer.order(ByteOrder.nativeOrder())
            buffer.position(0)
            val pixels = buffer.asShortBuffer()

            fun channel(index: Int, component: Int): Float {
                val value = Half.toFloat(pixels.get(index * 4 + component))
                return if (value.isFinite()) value.coerceAtLeast(0.0f) else 0.0f
            }

            val energyLuma = FloatArray(pixelCount)
            val active = BooleanArray(pixelCount)
            for (index in 0 until pixelCount) {
                if (channel(index, 3) <= 0.0f) continue
                active[index] = true
                energyLuma[index] = channel(index, 0) * 0.2126f +
                    channel(index, 1) * 0.7152f + channel(index, 2) * 0.0722f
            }

            // Depth is quantized to 8 bits, so CoC and focus side are exact tables.
            val cocByDepth = FloatArray(256) { depthByte ->
                cocPixels(depthByte / 255.0f)
            }
            val depthPixels = depthClassification.otherDepth
            val originalPixelsPerWorkingX = originalWidth.toFloat() / width.toFloat()
            val originalPixelsPerWorkingY = originalHeight.toFloat() / height.toFloat()
            val workingPixelArea = originalPixelsPerWorkingX * originalPixelsPerWorkingY

            val bubbles = ArrayList<AnalyticHighlight>()
            val bubbleEnergies = ArrayList<Float>()
            var componentPixels = IntArray(256)
            var componentCount = 0
            var splitComponentCount = 0
            var plannedCount = 0

            for (startIndex in 0 until pixelCount) {
                if (!active[startIndex]) continue

                var head = 0
                var tail = 0
                componentPixels[tail++] = startIndex
                active[startIndex] = false
                var componentEnergy = 0.0f
                var componentCocMoment = 0.0f
                while (head < tail) {
                    val index = componentPixels[head++]
                    val depthByte = depthPixels[index].toInt() and 0xff
                    componentEnergy += energyLuma[index]
                    componentCocMoment += energyLuma[index] * cocByDepth[depthByte]
                    val x = index % width
                    val y = index / width
                    for (neighborY in maxOf(y - 1, 0)..minOf(y + 1, height - 1)) {
                        for (neighborX in maxOf(x - 1, 0)..minOf(x + 1, width - 1)) {
                            val neighbor = neighborY * width + neighborX
                            if (!active[neighbor]) continue
                            active[neighbor] = false
                            if (tail == componentPixels.size) {
                                componentPixels = componentPixels.copyOf(componentPixels.size * 2)
                            }
                            componentPixels[tail++] = neighbor
                        }
                    }
                }
                if (componentEnergy <= 0.0f) continue
                componentCount++

                // Highlight planning: the component area against the bubble
                // footprint decides how many distinguishable sources it holds.
                val bubbleRadius = (componentCocMoment / componentEnergy)
                    .coerceIn(MIN_BUBBLE_COC_PIXELS, maxBlurRadius)
                val componentArea = tail * workingPixelArea
                val pointSourceRadius = bubbleRadius * BUBBLE_POINT_SOURCE_RADIUS_SCALE
                val spacing = bubbleRadius * BUBBLE_SOURCE_SPACING_SCALE
                val planned = if (componentArea <= Math.PI.toFloat() * pointSourceRadius * pointSourceRadius) {
                    1
                } else {
                    ceil(componentArea / (HEXAGONAL_CELL_AREA_SCALE * spacing * spacing))
                        .toInt()
                        .coerceIn(1, MAX_BUBBLES_PER_COMPONENT)
                }
                plannedCount += planned

                val centerX = FloatArray(planned)
                val centerY = FloatArray(planned)
                var centerCount = 1
                if (planned > 1) {
                    splitComponentCount++
                    // Brightest-first greedy placement keeps every source peak
                    // and fills the remaining area at the planned spacing.
                    val order = LongArray(tail) { position ->
                        val index = componentPixels[position]
                        (Int.MAX_VALUE - energyLuma[index].toRawBits()).toLong() shl 32 or
                            index.toLong()
                    }
                    order.sort()
                    val spacingSquared = spacing * spacing
                    centerCount = 0
                    for (key in order) {
                        val index = (key and 0xffffffffL).toInt()
                        val x = (index % width + 0.5f) * originalPixelsPerWorkingX
                        val y = (index / width + 0.5f) * originalPixelsPerWorkingY
                        var separated = true
                        for (center in 0 until centerCount) {
                            val deltaX = centerX[center] - x
                            val deltaY = centerY[center] - y
                            if (deltaX * deltaX + deltaY * deltaY < spacingSquared) {
                                separated = false
                                break
                            }
                        }
                        if (!separated) continue
                        centerX[centerCount] = x
                        centerY[centerCount] = y
                        centerCount++
                        if (centerCount == planned) break
                    }
                }

                // Assign every pixel's energy to its nearest center. A single
                // bubble sits at the component's energy centroid; split bubbles
                // keep their planned centers so the spacing contract holds.
                val red = FloatArray(centerCount)
                val green = FloatArray(centerCount)
                val blue = FloatArray(centerCount)
                val luma = FloatArray(centerCount)
                val momentX = FloatArray(centerCount)
                val momentY = FloatArray(centerCount)
                val cocMoment = FloatArray(centerCount)
                for (position in 0 until tail) {
                    val index = componentPixels[position]
                    val x = (index % width + 0.5f) * originalPixelsPerWorkingX
                    val y = (index / width + 0.5f) * originalPixelsPerWorkingY
                    var owner = 0
                    if (centerCount > 1) {
                        var nearestDistance = Float.MAX_VALUE
                        for (center in 0 until centerCount) {
                            val deltaX = centerX[center] - x
                            val deltaY = centerY[center] - y
                            val distance = deltaX * deltaX + deltaY * deltaY
                            if (distance < nearestDistance) {
                                nearestDistance = distance
                                owner = center
                            }
                        }
                    }
                    val weight = energyLuma[index]
                    val depthByte = depthPixels[index].toInt() and 0xff
                    red[owner] += channel(index, 0)
                    green[owner] += channel(index, 1)
                    blue[owner] += channel(index, 2)
                    luma[owner] += weight
                    momentX[owner] += x * weight
                    momentY[owner] += y * weight
                    cocMoment[owner] += cocByDepth[depthByte] * weight
                }
                for (center in 0 until centerCount) {
                    val weight = luma[center]
                    if (weight <= 0.0f) continue
                    val coc = (cocMoment[center] / weight)
                        .coerceIn(MIN_BUBBLE_COC_PIXELS, maxBlurRadius)
                    val bubbleX = if (centerCount > 1) centerX[center] else momentX[center] / weight
                    val bubbleY = if (centerCount > 1) centerY[center] else momentY[center] / weight
                    bubbles += AnalyticHighlight(
                        centerU = bubbleX / originalWidth.toFloat(),
                        centerV = bubbleY / originalHeight.toFloat(),
                        cocPixels = coc,
                        signalRed = red[center] * workingPixelArea,
                        signalGreen = green[center] * workingPixelArea,
                        signalBlue = blue[center] * workingPixelArea,
                    )
                    bubbleEnergies += weight
                }
            }

            val drawn = if (bubbles.size > MAX_BUBBLES) {
                bubbles.indices
                    .sortedByDescending { bubbleEnergies[it] }
                    .take(MAX_BUBBLES)
                    .map { bubbles[it] }
            } else {
                bubbles
            }
            return BubblePlan(
                bubbles = drawn,
                componentCount = componentCount,
                splitComponentCount = splitComponentCount,
                plannedCount = plannedCount,
                cappedCount = bubbles.size - drawn.size,
            )
        }
    }

    private fun selectDensityLimitedHighlights(
        candidates: List<AnalyticHighlightCandidate>,
        maxBlurRadius: Float,
    ): BooleanArray {
        if (candidates.isEmpty()) return BooleanArray(0)

        // The spacing is fixed for the image and independent of requested CoC.
        // It controls source-center density only; selected sources still draw at
        // their full physical CoC for the requested f-number.
        val minimumSpacing = minimumHighlightCenterSpacing(maxBlurRadius)
        val minimumSpacingSquared = minimumSpacing * minimumSpacing
        val cellSize = minimumSpacing
        val bins = HashMap<Long, MutableList<Int>>()
        val selected = BooleanArray(candidates.size)

        fun cellKey(x: Int, y: Int): Long =
            (x.toLong() shl 32) xor (y.toLong() and 0xffffffffL)

        fun addSelected(index: Int) {
            val candidate = candidates[index]
            val x = floor(candidate.centerXInOriginalPixels / cellSize).toInt()
            val y = floor(candidate.centerYInOriginalPixels / cellSize).toInt()
            bins.getOrPut(cellKey(x, y)) { ArrayList() }.add(index)
            selected[index] = true
        }

        // Existing optical bokeh is evidence from the source image, not a
        // synthetic density choice, so it is never removed.
        for (index in candidates.indices) {
            if (candidates[index].isPreExistingBokeh) addSelected(index)
        }

        val pointCandidateOrder = candidates.indices
            .filter { !candidates[it].isPreExistingBokeh }
            .sortedWith(
                compareByDescending<Int> { candidates[it].selectionScore }
                    .thenBy { it }
            )
        for (index in pointCandidateOrder) {
            val candidate = candidates[index]
            val cellX = floor(candidate.centerXInOriginalPixels / cellSize).toInt()
            val cellY = floor(candidate.centerYInOriginalPixels / cellSize).toInt()
            var hasSelectedNeighbor = false
            for (neighborCellY in cellY - 1..cellY + 1) {
                for (neighborCellX in cellX - 1..cellX + 1) {
                    val neighbors = bins[cellKey(neighborCellX, neighborCellY)] ?: continue
                    for (selectedIndex in neighbors) {
                        val selectedCandidate = candidates[selectedIndex]
                        val deltaX = selectedCandidate.centerXInOriginalPixels -
                            candidate.centerXInOriginalPixels
                        val deltaY = selectedCandidate.centerYInOriginalPixels -
                            candidate.centerYInOriginalPixels
                        if (deltaX * deltaX + deltaY * deltaY < minimumSpacingSquared) {
                            hasSelectedNeighbor = true
                            break
                        }
                    }
                    if (hasSelectedNeighbor) break
                }
                if (hasSelectedNeighbor) break
            }
            if (!hasSelectedNeighbor) {
                addSelected(index)
            }
        }
        return selected
    }

    private fun minimumHighlightCenterSpacing(maxBlurRadius: Float): Float =
        maxOf(maxBlurRadius * HIGHLIGHT_MIN_CENTER_SPACING_SCALE, 1.0f)

    private fun sampleWorkingDepth(
        depthPixels: ByteArray,
        width: Int,
        height: Int,
        x: Float,
        y: Float,
        interpolate: Boolean = true,
    ): Float {
        if (!interpolate) {
            val sampleX = floor(x + 0.5f).toInt().coerceIn(0, width - 1)
            val sampleY = floor(y + 0.5f).toInt().coerceIn(0, height - 1)
            return (depthPixels[sampleY * width + sampleX].toInt() and 0xff) / 255.0f
        }
        val x0 = floor(x).toInt().coerceIn(0, width - 1)
        val y0 = floor(y).toInt().coerceIn(0, height - 1)
        val x1 = minOf(x0 + 1, width - 1)
        val y1 = minOf(y0 + 1, height - 1)
        val fx = (x - x0.toFloat()).coerceIn(0.0f, 1.0f)
        val fy = (y - y0.toFloat()).coerceIn(0.0f, 1.0f)

        fun depthAt(sampleX: Int, sampleY: Int): Float =
            (depthPixels[sampleY * width + sampleX].toInt() and 0xff) / 255.0f

        val top = depthAt(x0, y0) * (1.0f - fx) + depthAt(x1, y0) * fx
        val bottom = depthAt(x0, y1) * (1.0f - fx) + depthAt(x1, y1) * fx
        return top * (1.0f - fy) + bottom * fy
    }


    private fun isSyntheticHighlightDefocusedDepth(
        depth: Float,
        focusDepth: Float,
    ): Boolean =
        kotlin.math.abs(focusDepth - depth) >= MIN_HIGHLIGHT_SUBJECT_DEPTH_GAP ||
            (focusDepth - depth >= FOCUS_DEPTH_DEAD_BAND &&
                depth <= MAX_HIGHLIGHT_BACKGROUND_DEPTH)

    private fun hasEligibleDefocusedSupport(
        refinedDepthPixels: ByteArray,
        subjectMaskPixels: ByteArray,
        width: Int,
        height: Int,
        originalWidth: Int,
        originalHeight: Int,
        centerX: Float,
        centerY: Float,
        focusDepth: Float,
        cocPixels: Float,
    ): Boolean {
        val originalPixelsPerWorkingX = originalWidth.toFloat() / width.toFloat()
        val originalPixelsPerWorkingY = originalHeight.toFloat() / height.toFloat()
        val halfWorkingPixelDiagonal = 0.5f * sqrt(
            originalPixelsPerWorkingX * originalPixelsPerWorkingX +
                originalPixelsPerWorkingY * originalPixelsPerWorkingY
        )

        // Test every working pixel whose cell intersects the aperture disc. A
        // single cell that reaches the focus plane rejects the
        // complete synthetic highlight.
        val clearanceRadius = cocPixels + halfWorkingPixelDiagonal
        val radiusX = ceil(clearanceRadius / originalPixelsPerWorkingX).toInt()
        val radiusY = ceil(clearanceRadius / originalPixelsPerWorkingY).toInt()
        val xStart = maxOf(floor(centerX).toInt() - radiusX, 0)
        val xEnd = minOf(ceil(centerX).toInt() + radiusX, width - 1)
        val yStart = maxOf(floor(centerY).toInt() - radiusY, 0)
        val yEnd = minOf(ceil(centerY).toInt() + radiusY, height - 1)
        val clearanceRadiusSquared = clearanceRadius * clearanceRadius

        for (sampleY in yStart..yEnd) {
            val deltaY = (sampleY.toFloat() - centerY) * originalPixelsPerWorkingY
            for (sampleX in xStart..xEnd) {
                val deltaX = (sampleX.toFloat() - centerX) * originalPixelsPerWorkingX
                if (deltaX * deltaX + deltaY * deltaY > clearanceRadiusSquared) continue
                if ((subjectMaskPixels[sampleY * width + sampleX].toInt() and 0xff) > 2) return false
                val depthByte = refinedDepthPixels[sampleY * width + sampleX].toInt() and 0xff
                val depth = depthByte / 255.0f
                if (!isSyntheticHighlightDefocusedDepth(depth, focusDepth)) return false
            }
        }
        return true
    }
}
