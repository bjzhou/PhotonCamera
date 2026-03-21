package com.hinnka.mycamera.raw

import android.graphics.Bitmap
import com.hinnka.mycamera.utils.PLog
import com.hinnka.mycamera.utils.SplineInterpolator
import java.nio.FloatBuffer
import kotlin.math.abs
import kotlin.math.max
import kotlin.math.pow
import kotlin.math.roundToInt

/**
 * Histogram matching tuned for RAW tone shaping.
 *
 * Instead of fitting a dense 256-point mapping directly from the JPEG preview,
 * we extract only low-frequency percentile landmarks and build a smooth,
 * monotonic curve. This avoids baking JPEG quantization/highlight clipping
 * artifacts into the luminance gain curve, which can otherwise show up as
 * bright speckling on smooth highlights.
 */
object HistogramMatching {
    private const val TAG = "HistogramMatching"
    private const val LUT_SIZE = 256
    private const val MIN_REFERENCE_PIXELS = 19_200
    private const val MIN_X_STEP = 1e-4f
    private const val MIN_CURVE_STEP = 1e-5f

    private val PERCENTILES = floatArrayOf(
        0f, 0.12f, 0.25f, 0.5f, 0.75f, 1f
    )

    fun analyze(
        neutralBuffer: FloatBuffer,
        width: Int,
        height: Int,
        logCurve: LogCurve,
        referenceBitmap: Bitmap?
    ): FloatArray {
        if (referenceBitmap == null) {
            PLog.d(TAG, "No embedded preview found, using default ACR3 S-curve")
            return buildDefaultStandardCurve(logCurve)
        }

        val reference = prepareReference(referenceBitmap, width, height) ?: run {
            PLog.d(TAG, "Embedded preview too small or invalid, using default ACR3 S-curve")
            return buildDefaultStandardCurve(logCurve)
        }

        val targetHistogram = smoothHistogram(buildHistogramFromNeutral(neutralBuffer, width, height, logCurve))
        val sourceHistogram = smoothHistogram(buildHistogramFromBitmap(reference, logCurve))
        val curve = buildPercentileCurve(targetHistogram, sourceHistogram, logCurve)

        return curve
    }

    private fun prepareReference(bitmap: Bitmap, targetWidth: Int, targetHeight: Int): Bitmap? {
        val sourcePixels = bitmap.width * bitmap.height
        if (sourcePixels < MIN_REFERENCE_PIXELS) {
            return null
        }

        val sourceRatio = bitmap.width.toFloat() / max(bitmap.height, 1)
        val targetRatio = targetWidth.toFloat() / max(targetHeight, 1)
        val ratioDiff = abs(sourceRatio - targetRatio)

        val cropped = if (ratioDiff > 0.01f) {
            cropToAspect(bitmap, targetRatio)
        } else {
            bitmap
        }

        val scaledWidth = targetWidth.coerceAtLeast(1)
        val scaledHeight = targetHeight.coerceAtLeast(1)
        return if (cropped.width != scaledWidth || cropped.height != scaledHeight) {
            Bitmap.createScaledBitmap(cropped, scaledWidth, scaledHeight, false)
        } else {
            cropped
        }
    }

    private fun cropToAspect(bitmap: Bitmap, targetRatio: Float): Bitmap {
        val currentRatio = bitmap.width.toFloat() / max(bitmap.height, 1)
        return if (currentRatio > targetRatio) {
            val newWidth = (bitmap.height * targetRatio).roundToInt().coerceAtMost(bitmap.width)
            val x = ((bitmap.width - newWidth) / 2).coerceAtLeast(0)
            Bitmap.createBitmap(bitmap, x, 0, newWidth, bitmap.height)
        } else {
            val newHeight = (bitmap.width / targetRatio).roundToInt().coerceAtMost(bitmap.height)
            val y = ((bitmap.height - newHeight) / 2).coerceAtLeast(0)
            Bitmap.createBitmap(bitmap, 0, y, bitmap.width, newHeight)
        }
    }

    private fun buildHistogramFromNeutral(
        neutralBuffer: FloatBuffer,
        width: Int,
        height: Int,
        logCurve: LogCurve
    ): IntArray {
        val histogram = IntArray(LUT_SIZE)
        neutralBuffer.position(0)
        repeat(width * height) {
            val r = neutralBuffer.get()
            val g = neutralBuffer.get()
            val b = neutralBuffer.get()
            neutralBuffer.get()

            val luma = (r * 0.2126f + g * 0.7152f + b * 0.0722f).coerceAtLeast(0f)
            val logValue = logCurve.linearToLog(luma).coerceIn(0f, 1f)
            val bin = (logValue * (LUT_SIZE - 1)).roundToInt().coerceIn(0, LUT_SIZE - 1)
            histogram[bin]++
        }
        neutralBuffer.position(0)
        return histogram
    }

    private fun buildDefaultStandardCurve(logCurve: LogCurve): FloatArray {
        val curve = FloatArray(LUT_SIZE)
        for (i in curve.indices) {
            val inputLog = i.toFloat() / (curve.size - 1)
            val inputLinear = logCurve.logToLinear(inputLog).coerceAtLeast(0f)
            curve[i] = interpolateAcr3DefaultCurve(inputLinear.coerceIn(0f, 1f))
        }
        curve[0] = 0f
        curve[curve.lastIndex] = 1f
        return curve
    }

    private fun interpolateAcr3DefaultCurve(x: Float): Float {
        val clampedX = x.coerceIn(0f, 1f)
        val y = clampedX * (ACR3_DEFAULT_CURVE.size - 1)
        val index = y.toInt().coerceIn(0, ACR3_DEFAULT_CURVE.lastIndex - 1)
        val fraction = y - index
        return ACR3_DEFAULT_CURVE[index] * (1f - fraction) + ACR3_DEFAULT_CURVE[index + 1] * fraction
    }

    private fun buildHistogramFromBitmap(bitmap: Bitmap, logCurve: LogCurve): IntArray {
        val histogram = IntArray(LUT_SIZE)
        val pixels = IntArray(bitmap.width * bitmap.height)
        bitmap.getPixels(pixels, 0, bitmap.width, 0, 0, bitmap.width, bitmap.height)
        for (pixel in pixels) {
            val r = ((pixel shr 16) and 0xFF) / 255f
            val g = ((pixel shr 8) and 0xFF) / 255f
            val b = (pixel and 0xFF) / 255f
            val linearR = srgbToLinear(r)
            val linearG = srgbToLinear(g)
            val linearB = srgbToLinear(b)
            val luma = linearR * 0.2126f + linearG * 0.7152f + linearB * 0.0722f
            val logValue = logCurve.linearToLog(luma).coerceIn(0f, 1f)
            val bin = (logValue * (LUT_SIZE - 1)).roundToInt().coerceIn(0, LUT_SIZE - 1)
            histogram[bin]++
        }
        return histogram
    }

    private fun smoothHistogram(histogram: IntArray): IntArray {
        var current = histogram.copyOf()
        repeat(3) {
            val next = IntArray(current.size)
            for (i in current.indices) {
                val left = current[(i - 1).coerceAtLeast(0)]
                val center = current[i]
                val right = current[(i + 1).coerceAtMost(current.lastIndex)]
                next[i] = (left + center * 2 + right + 2) / 4
            }
            current = next
        }
        return current
    }

    private fun buildPercentileCurve(
        targetHistogram: IntArray,
        sourceHistogram: IntArray,
        logCurve: LogCurve
    ): FloatArray {
        val targetCdf = buildCdf(targetHistogram)
        val sourceCdf = buildCdf(sourceHistogram)

        val rawX = FloatArray(PERCENTILES.size + 1)
        val rawY = FloatArray(PERCENTILES.size + 1)

        for (i in PERCENTILES.indices) {
            val percentile = PERCENTILES[i]
            val targetBin = findPercentileBin(targetCdf, percentile)
            val sourceBin = findPercentileBin(sourceCdf, percentile)

            val inputLog = targetBin.toFloat() / (LUT_SIZE - 1)
            val outputLog = sourceBin.toFloat() / (LUT_SIZE - 1)

            rawX[i] = inputLog
            rawY[i] = logCurve.logToLinear(outputLog).coerceAtLeast(0f)
        }

        rawX[rawX.lastIndex] = 1f
        rawY[rawY.lastIndex] = logCurve.logToLinear(1f).coerceAtLeast(0f)

        val (x, y) = buildStrictControlPoints(rawX, rawY)
        val curve = SplineInterpolator(x, y).generateLut(LUT_SIZE)
        val smoothedCurve = smoothCurve(curve)
        val stabilizedCurve = stabilizeHighlights(smoothedCurve, logCurve)

        val xDescription = x.joinToString(prefix = "[", postfix = "]")
        val yDescription = y.joinToString(prefix = "[", postfix = "]")
        PLog.d(TAG, "buildPercentileCurve: x=$xDescription y=$yDescription")

        return stabilizedCurve
    }

    private fun buildCdf(histogram: IntArray): FloatArray {
        val total = histogram.sum().coerceAtLeast(1)
        val cdf = FloatArray(histogram.size)
        var running = 0
        for (i in histogram.indices) {
            running += histogram[i]
            cdf[i] = running.toFloat() / total
        }
        return cdf
    }

    private fun findPercentileBin(cdf: FloatArray, percentile: Float): Int {
        val target = percentile.coerceIn(0f, 1f)
        for (i in cdf.indices) {
            if (cdf[i] >= target) return i
        }
        return cdf.lastIndex
    }

    private fun buildStrictControlPoints(
        x: FloatArray,
        y: FloatArray
    ): Pair<FloatArray, FloatArray> {
        val strictX = ArrayList<Float>(x.size)
        val strictY = ArrayList<Float>(y.size)

        for (i in x.indices) {
            val nextX = x[i].coerceIn(0f, 1f)
            val nextY = y[i].coerceAtLeast(0f)
            val lastIndex = strictX.lastIndex

            if (lastIndex >= 0 && nextX <= strictX[lastIndex] + MIN_X_STEP) {
                strictX[lastIndex] = nextX.coerceAtLeast(strictX[lastIndex])
                strictY[lastIndex] = max(strictY[lastIndex], nextY)
                continue
            }

            strictX.add(nextX)
            strictY.add(nextY)
        }

        if (strictX.size < 2) {
            return floatArrayOf(0f, 1f) to floatArrayOf(0f, y.lastOrNull() ?: 1f)
        }

        return strictX.toFloatArray() to strictY.toFloatArray()
    }

    private fun smoothCurve(curve: FloatArray): FloatArray {
        var current = curve.copyOf()
        repeat(2) {
            val next = FloatArray(current.size)
            for (i in current.indices) {
                val left2 = current[(i - 2).coerceAtLeast(0)]
                val left1 = current[(i - 1).coerceAtLeast(0)]
                val center = current[i]
                val right1 = current[(i + 1).coerceAtMost(current.lastIndex)]
                val right2 = current[(i + 2).coerceAtMost(current.lastIndex)]
                next[i] = (
                    left2 +
                        left1 * 2f +
                        center * 4f +
                        right1 * 2f +
                        right2
                    ) / 10f
            }
            current = next
        }
        return current
    }

    private fun stabilizeHighlights(curve: FloatArray, logCurve: LogCurve): FloatArray {
        val result = FloatArray(curve.size)
        var previous = 0f

        for (i in curve.indices) {
            val x = i.toFloat() / (curve.size - 1)
            val identity = logCurve.logToLinear(x).coerceAtLeast(0f)
            val blendToIdentity = smoothStep(0.90f, 1f, x) * 0.85f
            val gainLimit = lerp(1.18f, 1.0f, smoothStep(0.82f, 1f, x))

            var value = lerp(curve[i], identity, blendToIdentity)
            value = minOf(value, identity * gainLimit)
            value = max(value, previous + MIN_CURVE_STEP)

            result[i] = value
            previous = value
        }

        result[0] = 0f
        result[result.lastIndex] = logCurve.logToLinear(1f).coerceAtLeast(result[result.lastIndex])
        return result
    }

    private fun smoothStep(edge0: Float, edge1: Float, x: Float): Float {
        if (edge0 == edge1) return if (x >= edge1) 1f else 0f
        val t = ((x - edge0) / (edge1 - edge0)).coerceIn(0f, 1f)
        return t * t * (3f - 2f * t)
    }

    private fun lerp(a: Float, b: Float, t: Float): Float {
        return a + (b - a) * t
    }

    private fun srgbToLinear(v: Float): Float {
        return if (v <= 0.04045f) {
            v / 12.92f
        } else {
            ((v + 0.055f) / 1.055f).toDouble().pow(2.4).toFloat()
        }
    }

    private val ACR3_DEFAULT_CURVE = floatArrayOf(
        0.00000f, 0.00078f, 0.00160f, 0.00242f,
        0.00314f, 0.00385f, 0.00460f, 0.00539f,
        0.00623f, 0.00712f, 0.00806f, 0.00906f,
        0.01012f, 0.01122f, 0.01238f, 0.01359f,
        0.01485f, 0.01616f, 0.01751f, 0.01890f,
        0.02033f, 0.02180f, 0.02331f, 0.02485f,
        0.02643f, 0.02804f, 0.02967f, 0.03134f,
        0.03303f, 0.03475f, 0.03648f, 0.03824f,
        0.04002f, 0.04181f, 0.04362f, 0.04545f,
        0.04730f, 0.04916f, 0.05103f, 0.05292f,
        0.05483f, 0.05675f, 0.05868f, 0.06063f,
        0.06259f, 0.06457f, 0.06655f, 0.06856f,
        0.07057f, 0.07259f, 0.07463f, 0.07668f,
        0.07874f, 0.08081f, 0.08290f, 0.08499f,
        0.08710f, 0.08921f, 0.09134f, 0.09348f,
        0.09563f, 0.09779f, 0.09996f, 0.10214f,
        0.10433f, 0.10652f, 0.10873f, 0.11095f,
        0.11318f, 0.11541f, 0.11766f, 0.11991f,
        0.12218f, 0.12445f, 0.12673f, 0.12902f,
        0.13132f, 0.13363f, 0.13595f, 0.13827f,
        0.14061f, 0.14295f, 0.14530f, 0.14765f,
        0.15002f, 0.15239f, 0.15477f, 0.15716f,
        0.15956f, 0.16197f, 0.16438f, 0.16680f,
        0.16923f, 0.17166f, 0.17410f, 0.17655f,
        0.17901f, 0.18148f, 0.18395f, 0.18643f,
        0.18891f, 0.19141f, 0.19391f, 0.19641f,
        0.19893f, 0.20145f, 0.20398f, 0.20651f,
        0.20905f, 0.21160f, 0.21416f, 0.21672f,
        0.21929f, 0.22185f, 0.22440f, 0.22696f,
        0.22950f, 0.23204f, 0.23458f, 0.23711f,
        0.23963f, 0.24215f, 0.24466f, 0.24717f,
        0.24967f, 0.25216f, 0.25465f, 0.25713f,
        0.25961f, 0.26208f, 0.26454f, 0.26700f,
        0.26945f, 0.27189f, 0.27433f, 0.27676f,
        0.27918f, 0.28160f, 0.28401f, 0.28641f,
        0.28881f, 0.29120f, 0.29358f, 0.29596f,
        0.29833f, 0.30069f, 0.30305f, 0.30540f,
        0.30774f, 0.31008f, 0.31241f, 0.31473f,
        0.31704f, 0.31935f, 0.32165f, 0.32395f,
        0.32623f, 0.32851f, 0.33079f, 0.33305f,
        0.33531f, 0.33756f, 0.33981f, 0.34205f,
        0.34428f, 0.34650f, 0.34872f, 0.35093f,
        0.35313f, 0.35532f, 0.35751f, 0.35969f,
        0.36187f, 0.36404f, 0.36620f, 0.36835f,
        0.37050f, 0.37264f, 0.37477f, 0.37689f,
        0.37901f, 0.38112f, 0.38323f, 0.38533f,
        0.38742f, 0.38950f, 0.39158f, 0.39365f,
        0.39571f, 0.39777f, 0.39982f, 0.40186f,
        0.40389f, 0.40592f, 0.40794f, 0.40996f,
        0.41197f, 0.41397f, 0.41596f, 0.41795f,
        0.41993f, 0.42191f, 0.42388f, 0.42584f,
        0.42779f, 0.42974f, 0.43168f, 0.43362f,
        0.43554f, 0.43747f, 0.43938f, 0.44129f,
        0.44319f, 0.44509f, 0.44698f, 0.44886f,
        0.45073f, 0.45260f, 0.45447f, 0.45632f,
        0.45817f, 0.46002f, 0.46186f, 0.46369f,
        0.46551f, 0.46733f, 0.46914f, 0.47095f,
        0.47275f, 0.47454f, 0.47633f, 0.47811f,
        0.47989f, 0.48166f, 0.48342f, 0.48518f,
        0.48693f, 0.48867f, 0.49041f, 0.49214f,
        0.49387f, 0.49559f, 0.49730f, 0.49901f,
        0.50072f, 0.50241f, 0.50410f, 0.50579f,
        0.50747f, 0.50914f, 0.51081f, 0.51247f,
        0.51413f, 0.51578f, 0.51742f, 0.51906f,
        0.52069f, 0.52232f, 0.52394f, 0.52556f,
        0.52717f, 0.52878f, 0.53038f, 0.53197f,
        0.53356f, 0.53514f, 0.53672f, 0.53829f,
        0.53986f, 0.54142f, 0.54297f, 0.54452f,
        0.54607f, 0.54761f, 0.54914f, 0.55067f,
        0.55220f, 0.55371f, 0.55523f, 0.55673f,
        0.55824f, 0.55973f, 0.56123f, 0.56271f,
        0.56420f, 0.56567f, 0.56715f, 0.56861f,
        0.57007f, 0.57153f, 0.57298f, 0.57443f,
        0.57587f, 0.57731f, 0.57874f, 0.58017f,
        0.58159f, 0.58301f, 0.58443f, 0.58583f,
        0.58724f, 0.58864f, 0.59003f, 0.59142f,
        0.59281f, 0.59419f, 0.59556f, 0.59694f,
        0.59830f, 0.59966f, 0.60102f, 0.60238f,
        0.60373f, 0.60507f, 0.60641f, 0.60775f,
        0.60908f, 0.61040f, 0.61173f, 0.61305f,
        0.61436f, 0.61567f, 0.61698f, 0.61828f,
        0.61957f, 0.62087f, 0.62216f, 0.62344f,
        0.62472f, 0.62600f, 0.62727f, 0.62854f,
        0.62980f, 0.63106f, 0.63232f, 0.63357f,
        0.63482f, 0.63606f, 0.63730f, 0.63854f,
        0.63977f, 0.64100f, 0.64222f, 0.64344f,
        0.64466f, 0.64587f, 0.64708f, 0.64829f,
        0.64949f, 0.65069f, 0.65188f, 0.65307f,
        0.65426f, 0.65544f, 0.65662f, 0.65779f,
        0.65897f, 0.66013f, 0.66130f, 0.66246f,
        0.66362f, 0.66477f, 0.66592f, 0.66707f,
        0.66821f, 0.66935f, 0.67048f, 0.67162f,
        0.67275f, 0.67387f, 0.67499f, 0.67611f,
        0.67723f, 0.67834f, 0.67945f, 0.68055f,
        0.68165f, 0.68275f, 0.68385f, 0.68494f,
        0.68603f, 0.68711f, 0.68819f, 0.68927f,
        0.69035f, 0.69142f, 0.69249f, 0.69355f,
        0.69461f, 0.69567f, 0.69673f, 0.69778f,
        0.69883f, 0.69988f, 0.70092f, 0.70196f,
        0.70300f, 0.70403f, 0.70506f, 0.70609f,
        0.70711f, 0.70813f, 0.70915f, 0.71017f,
        0.71118f, 0.71219f, 0.71319f, 0.71420f,
        0.71520f, 0.71620f, 0.71719f, 0.71818f,
        0.71917f, 0.72016f, 0.72114f, 0.72212f,
        0.72309f, 0.72407f, 0.72504f, 0.72601f,
        0.72697f, 0.72794f, 0.72890f, 0.72985f,
        0.73081f, 0.73176f, 0.73271f, 0.73365f,
        0.73460f, 0.73554f, 0.73647f, 0.73741f,
        0.73834f, 0.73927f, 0.74020f, 0.74112f,
        0.74204f, 0.74296f, 0.74388f, 0.74479f,
        0.74570f, 0.74661f, 0.74751f, 0.74842f,
        0.74932f, 0.75021f, 0.75111f, 0.75200f,
        0.75289f, 0.75378f, 0.75466f, 0.75555f,
        0.75643f, 0.75730f, 0.75818f, 0.75905f,
        0.75992f, 0.76079f, 0.76165f, 0.76251f,
        0.76337f, 0.76423f, 0.76508f, 0.76594f,
        0.76679f, 0.76763f, 0.76848f, 0.76932f,
        0.77016f, 0.77100f, 0.77183f, 0.77267f,
        0.77350f, 0.77432f, 0.77515f, 0.77597f,
        0.77680f, 0.77761f, 0.77843f, 0.77924f,
        0.78006f, 0.78087f, 0.78167f, 0.78248f,
        0.78328f, 0.78408f, 0.78488f, 0.78568f,
        0.78647f, 0.78726f, 0.78805f, 0.78884f,
        0.78962f, 0.79040f, 0.79118f, 0.79196f,
        0.79274f, 0.79351f, 0.79428f, 0.79505f,
        0.79582f, 0.79658f, 0.79735f, 0.79811f,
        0.79887f, 0.79962f, 0.80038f, 0.80113f,
        0.80188f, 0.80263f, 0.80337f, 0.80412f,
        0.80486f, 0.80560f, 0.80634f, 0.80707f,
        0.80780f, 0.80854f, 0.80926f, 0.80999f,
        0.81072f, 0.81144f, 0.81216f, 0.81288f,
        0.81360f, 0.81431f, 0.81503f, 0.81574f,
        0.81645f, 0.81715f, 0.81786f, 0.81856f,
        0.81926f, 0.81996f, 0.82066f, 0.82135f,
        0.82205f, 0.82274f, 0.82343f, 0.82412f,
        0.82480f, 0.82549f, 0.82617f, 0.82685f,
        0.82753f, 0.82820f, 0.82888f, 0.82955f,
        0.83022f, 0.83089f, 0.83155f, 0.83222f,
        0.83288f, 0.83354f, 0.83420f, 0.83486f,
        0.83552f, 0.83617f, 0.83682f, 0.83747f,
        0.83812f, 0.83877f, 0.83941f, 0.84005f,
        0.84069f, 0.84133f, 0.84197f, 0.84261f,
        0.84324f, 0.84387f, 0.84450f, 0.84513f,
        0.84576f, 0.84639f, 0.84701f, 0.84763f,
        0.84825f, 0.84887f, 0.84949f, 0.85010f,
        0.85071f, 0.85132f, 0.85193f, 0.85254f,
        0.85315f, 0.85375f, 0.85436f, 0.85496f,
        0.85556f, 0.85615f, 0.85675f, 0.85735f,
        0.85794f, 0.85853f, 0.85912f, 0.85971f,
        0.86029f, 0.86088f, 0.86146f, 0.86204f,
        0.86262f, 0.86320f, 0.86378f, 0.86435f,
        0.86493f, 0.86550f, 0.86607f, 0.86664f,
        0.86720f, 0.86777f, 0.86833f, 0.86889f,
        0.86945f, 0.87001f, 0.87057f, 0.87113f,
        0.87168f, 0.87223f, 0.87278f, 0.87333f,
        0.87388f, 0.87443f, 0.87497f, 0.87552f,
        0.87606f, 0.87660f, 0.87714f, 0.87768f,
        0.87821f, 0.87875f, 0.87928f, 0.87981f,
        0.88034f, 0.88087f, 0.88140f, 0.88192f,
        0.88244f, 0.88297f, 0.88349f, 0.88401f,
        0.88453f, 0.88504f, 0.88556f, 0.88607f,
        0.88658f, 0.88709f, 0.88760f, 0.88811f,
        0.88862f, 0.88912f, 0.88963f, 0.89013f,
        0.89063f, 0.89113f, 0.89163f, 0.89212f,
        0.89262f, 0.89311f, 0.89360f, 0.89409f,
        0.89458f, 0.89507f, 0.89556f, 0.89604f,
        0.89653f, 0.89701f, 0.89749f, 0.89797f,
        0.89845f, 0.89892f, 0.89940f, 0.89987f,
        0.90035f, 0.90082f, 0.90129f, 0.90176f,
        0.90222f, 0.90269f, 0.90316f, 0.90362f,
        0.90408f, 0.90454f, 0.90500f, 0.90546f,
        0.90592f, 0.90637f, 0.90683f, 0.90728f,
        0.90773f, 0.90818f, 0.90863f, 0.90908f,
        0.90952f, 0.90997f, 0.91041f, 0.91085f,
        0.91130f, 0.91173f, 0.91217f, 0.91261f,
        0.91305f, 0.91348f, 0.91392f, 0.91435f,
        0.91478f, 0.91521f, 0.91564f, 0.91606f,
        0.91649f, 0.91691f, 0.91734f, 0.91776f,
        0.91818f, 0.91860f, 0.91902f, 0.91944f,
        0.91985f, 0.92027f, 0.92068f, 0.92109f,
        0.92150f, 0.92191f, 0.92232f, 0.92273f,
        0.92314f, 0.92354f, 0.92395f, 0.92435f,
        0.92475f, 0.92515f, 0.92555f, 0.92595f,
        0.92634f, 0.92674f, 0.92713f, 0.92753f,
        0.92792f, 0.92831f, 0.92870f, 0.92909f,
        0.92947f, 0.92986f, 0.93025f, 0.93063f,
        0.93101f, 0.93139f, 0.93177f, 0.93215f,
        0.93253f, 0.93291f, 0.93328f, 0.93366f,
        0.93403f, 0.93440f, 0.93478f, 0.93515f,
        0.93551f, 0.93588f, 0.93625f, 0.93661f,
        0.93698f, 0.93734f, 0.93770f, 0.93807f,
        0.93843f, 0.93878f, 0.93914f, 0.93950f,
        0.93986f, 0.94021f, 0.94056f, 0.94092f,
        0.94127f, 0.94162f, 0.94197f, 0.94231f,
        0.94266f, 0.94301f, 0.94335f, 0.94369f,
        0.94404f, 0.94438f, 0.94472f, 0.94506f,
        0.94540f, 0.94573f, 0.94607f, 0.94641f,
        0.94674f, 0.94707f, 0.94740f, 0.94774f,
        0.94807f, 0.94839f, 0.94872f, 0.94905f,
        0.94937f, 0.94970f, 0.95002f, 0.95035f,
        0.95067f, 0.95099f, 0.95131f, 0.95163f,
        0.95194f, 0.95226f, 0.95257f, 0.95289f,
        0.95320f, 0.95351f, 0.95383f, 0.95414f,
        0.95445f, 0.95475f, 0.95506f, 0.95537f,
        0.95567f, 0.95598f, 0.95628f, 0.95658f,
        0.95688f, 0.95718f, 0.95748f, 0.95778f,
        0.95808f, 0.95838f, 0.95867f, 0.95897f,
        0.95926f, 0.95955f, 0.95984f, 0.96013f,
        0.96042f, 0.96071f, 0.96100f, 0.96129f,
        0.96157f, 0.96186f, 0.96214f, 0.96242f,
        0.96271f, 0.96299f, 0.96327f, 0.96355f,
        0.96382f, 0.96410f, 0.96438f, 0.96465f,
        0.96493f, 0.96520f, 0.96547f, 0.96574f,
        0.96602f, 0.96629f, 0.96655f, 0.96682f,
        0.96709f, 0.96735f, 0.96762f, 0.96788f,
        0.96815f, 0.96841f, 0.96867f, 0.96893f,
        0.96919f, 0.96945f, 0.96971f, 0.96996f,
        0.97022f, 0.97047f, 0.97073f, 0.97098f,
        0.97123f, 0.97149f, 0.97174f, 0.97199f,
        0.97223f, 0.97248f, 0.97273f, 0.97297f,
        0.97322f, 0.97346f, 0.97371f, 0.97395f,
        0.97419f, 0.97443f, 0.97467f, 0.97491f,
        0.97515f, 0.97539f, 0.97562f, 0.97586f,
        0.97609f, 0.97633f, 0.97656f, 0.97679f,
        0.97702f, 0.97725f, 0.97748f, 0.97771f,
        0.97794f, 0.97817f, 0.97839f, 0.97862f,
        0.97884f, 0.97907f, 0.97929f, 0.97951f,
        0.97973f, 0.97995f, 0.98017f, 0.98039f,
        0.98061f, 0.98082f, 0.98104f, 0.98125f,
        0.98147f, 0.98168f, 0.98189f, 0.98211f,
        0.98232f, 0.98253f, 0.98274f, 0.98295f,
        0.98315f, 0.98336f, 0.98357f, 0.98377f,
        0.98398f, 0.98418f, 0.98438f, 0.98458f,
        0.98478f, 0.98498f, 0.98518f, 0.98538f,
        0.98558f, 0.98578f, 0.98597f, 0.98617f,
        0.98636f, 0.98656f, 0.98675f, 0.98694f,
        0.98714f, 0.98733f, 0.98752f, 0.98771f,
        0.98789f, 0.98808f, 0.98827f, 0.98845f,
        0.98864f, 0.98882f, 0.98901f, 0.98919f,
        0.98937f, 0.98955f, 0.98973f, 0.98991f,
        0.99009f, 0.99027f, 0.99045f, 0.99063f,
        0.99080f, 0.99098f, 0.99115f, 0.99133f,
        0.99150f, 0.99167f, 0.99184f, 0.99201f,
        0.99218f, 0.99235f, 0.99252f, 0.99269f,
        0.99285f, 0.99302f, 0.99319f, 0.99335f,
        0.99351f, 0.99368f, 0.99384f, 0.99400f,
        0.99416f, 0.99432f, 0.99448f, 0.99464f,
        0.99480f, 0.99495f, 0.99511f, 0.99527f,
        0.99542f, 0.99558f, 0.99573f, 0.99588f,
        0.99603f, 0.99619f, 0.99634f, 0.99649f,
        0.99664f, 0.99678f, 0.99693f, 0.99708f,
        0.99722f, 0.99737f, 0.99751f, 0.99766f,
        0.99780f, 0.99794f, 0.99809f, 0.99823f,
        0.99837f, 0.99851f, 0.99865f, 0.99879f,
        0.99892f, 0.99906f, 0.99920f, 0.99933f,
        0.99947f, 0.99960f, 0.99974f, 0.99987f,
        1.00000f
    )
}
