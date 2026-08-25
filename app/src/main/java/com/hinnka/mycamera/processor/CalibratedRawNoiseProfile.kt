package com.hinnka.mycamera.processor

import java.io.InputStream
import kotlin.math.abs
import kotlin.math.ceil
import kotlin.math.roundToInt
import kotlin.math.sqrt

/**
 * Standard GCam sensor noise calibration.
 *
 * The four planes and coefficient arrays are canonical R, Gr, Gb, B. Evaluation follows the
 * generated GCam `.c` files exactly:
 *
 * S = A * sensitivity + B
 * O = C * sensitivity^2 + D * digitalGain^2
 *
 * Generated external `.c` profiles own a max-analog divisor and use
 * digitalGain=max(sensitivity/maxAnalogSensitivity, 1). MGC's native Pixel 3 override is instead
 * evaluated at the current camera's analog gain, then propagated through its applied digital
 * gain. The two profile types deliberately keep separate evaluation paths.
 */
data class CalibratedRawNoiseProfile(
    val id: String,
    val shotSlopeA: DoubleArray,
    val shotInterceptB: DoubleArray,
    val readQuadraticC: DoubleArray,
    val readDigitalGainD: DoubleArray,
    /** Digital-gain divisor written into an external `.c`; absent for native override tables. */
    val maxAnalogSensitivity: Int?,
    private val usesMgcNativeGainSplit: Boolean = false,
) {
    init {
        require(id.isNotBlank())
        require(shotSlopeA.size == CHANNEL_COUNT)
        require(shotInterceptB.size == CHANNEL_COUNT)
        require(readQuadraticC.size == CHANNEL_COUNT)
        require(readDigitalGainD.size == CHANNEL_COUNT)
        require(
            sequenceOf(shotSlopeA, shotInterceptB, readQuadraticC, readDigitalGainD)
                .flatMap { it.asSequence() }
                .all(Double::isFinite),
        )
        require(maxAnalogSensitivity == null || maxAnalogSensitivity > 0)
    }

    /** Highest integer ISO whose evaluated read variance remains positive in every plane. */
    val maximumCompatibleSensitivity: Int = maximumCompatibleReadSensitivity().also { maximum ->
        require(maximum > 0) {
            "RAW noise model has no sensitivity with positive read variance in every plane"
        }
    }

    fun evaluate(
        sensitivity: Int,
        minimumSensitivityIso: Int = 0,
        maximumAnalogSensitivityIso: Int = 0,
    ): RawNoiseModel? {
        val compatibleSensitivity = compatibleSensitivityAt(sensitivity) ?: return null
        val mgcGainSplit = if (usesMgcNativeGainSplit) {
            mgcGainSplitAt(
                sensitivity = compatibleSensitivity,
                minimumSensitivityIso = minimumSensitivityIso,
                maximumAnalogSensitivityIso = maximumAnalogSensitivityIso,
            )
        } else {
            null
        }
        val sensorSensitivity = mgcGainSplit
            ?.analogGain
            ?.times(MGC_NATIVE_TABLE_REFERENCE_ISO)
            ?: compatibleSensitivity.toDouble()
        val digitalGain = mgcGainSplit?.digitalGain
            ?: digitalGainAt(compatibleSensitivity)
            ?: return null
        val digitalGainSquared = digitalGain * digitalGain
        val shot = FloatArray(CHANNEL_COUNT) { plane ->
            val analogShot = shotSlopeA[plane] * sensorSensitivity + shotInterceptB[plane]
            sanitize(if (mgcGainSplit != null) analogShot * digitalGain else analogShot)
        }
        val read = FloatArray(CHANNEL_COUNT) { plane ->
            sanitize(
                if (mgcGainSplit != null) {
                    (
                        readQuadraticC[plane] * sensorSensitivity * sensorSensitivity +
                            readDigitalGainD[plane]
                        ) * digitalGainSquared
                } else {
                    readQuadraticC[plane] * sensorSensitivity * sensorSensitivity +
                        readDigitalGainD[plane] * digitalGainSquared
                },
            )
        }
        return RawNoiseModel.fromCanonicalBayerChannels(shot, read)
    }

    fun compatibleSensitivityAt(sensitivity: Int): Int? =
        sensitivity.takeIf { it > 0 }?.coerceAtMost(maximumCompatibleSensitivity)

    /** MGC's total gain, or the legacy ISO/100 display coordinate for an external `.c`. */
    fun overallGainAt(sensitivity: Int, minimumSensitivityIso: Int = 0): Double? =
        sensitivity.takeIf { it > 0 }?.let { validSensitivity ->
            if (usesMgcNativeGainSplit) {
                validSensitivity.toDouble() / effectiveMinimumSensitivity(minimumSensitivityIso)
            } else {
                validSensitivity.toDouble() / MGC_NATIVE_TABLE_REFERENCE_ISO
            }
        }

    /** Analog-gain coordinate used to evaluate MGC's native Pixel 3 override table. */
    fun analogGainAt(
        sensitivity: Int,
        minimumSensitivityIso: Int = 0,
        maximumAnalogSensitivityIso: Int = 0,
    ): Double? = sensitivity.takeIf { it > 0 }?.let { validSensitivity ->
        if (usesMgcNativeGainSplit) {
            mgcGainSplitAt(
                validSensitivity,
                minimumSensitivityIso,
                maximumAnalogSensitivityIso,
            ).analogGain
        } else {
            overallGainAt(validSensitivity, minimumSensitivityIso)
        }
    }

    /** Applied digital gain prescribed by the external profile or current MGC camera limits. */
    fun digitalGainAt(
        sensitivity: Int,
        minimumSensitivityIso: Int = 0,
        maximumAnalogSensitivityIso: Int = 0,
    ): Double? =
        sensitivity.takeIf { it > 0 }?.let { validSensitivity ->
            if (usesMgcNativeGainSplit) {
                mgcGainSplitAt(
                    validSensitivity,
                    minimumSensitivityIso,
                    maximumAnalogSensitivityIso,
                ).digitalGain
            } else {
                maxAnalogSensitivity?.let { maxAnalog ->
                    maxOf(validSensitivity.toDouble() / maxAnalog.toDouble(), 1.0)
                } ?: 1.0
            }
        }

    private fun mgcGainSplitAt(
        sensitivity: Int,
        minimumSensitivityIso: Int,
        maximumAnalogSensitivityIso: Int,
    ): MgcGainSplit {
        val minimum = effectiveMinimumSensitivity(minimumSensitivityIso)
        val reportedMaximumAnalog = maximumAnalogSensitivityIso
            .takeIf { it > 0 }
            ?.toDouble()
            ?: MGC_FALLBACK_MAXIMUM_ANALOG_ISO
        val overallGain = maxOf(sensitivity.toDouble() / minimum, 1.0)
        val maximumAnalogGain = maxOf(reportedMaximumAnalog / minimum, 1.0)
        val analogGain = minOf(overallGain, maximumAnalogGain)
        return MgcGainSplit(
            analogGain = analogGain,
            digitalGain = maxOf(overallGain / maximumAnalogGain, 1.0),
        )
    }

    private fun effectiveMinimumSensitivity(minimumSensitivityIso: Int): Double =
        minimumSensitivityIso
            .takeIf { it > 0 }
            ?.toDouble()
            ?: MGC_FALLBACK_MINIMUM_ISO

    private data class MgcGainSplit(
        val analogGain: Double,
        val digitalGain: Double,
    )

    private fun maximumCompatibleReadSensitivity(): Int {
        var maximum = Int.MAX_VALUE
        for (plane in 0 until CHANNEL_COUNT) {
            val quadratic = readQuadraticC[plane]
            val digital = readDigitalGainD[plane]
            val planeMaximum = maxAnalogSensitivity?.let { maxAnalog ->
                val maxAnalogDouble = maxAnalog.toDouble()
                val readAtMaxAnalog =
                    quadratic * maxAnalogDouble * maxAnalogDouble + digital
                when {
                    readAtMaxAnalog > 0.0 -> Int.MAX_VALUE
                    quadratic < 0.0 && digital > 0.0 ->
                        largestIntegerStrictlyBelow(sqrt(digital / -quadratic))
                    else -> 0
                }
            } ?: when {
                quadratic < 0.0 && digital > 0.0 ->
                    largestIntegerStrictlyBelow(sqrt(digital / -quadratic))
                quadratic > 0.0 || digital > 0.0 -> Int.MAX_VALUE
                else -> 0
            }
            maximum = minOf(maximum, planeMaximum)
        }
        return maximum
    }

    companion object {
        private const val CHANNEL_COUNT = 4
        private const val MGC_NATIVE_TABLE_REFERENCE_ISO = 100.0
        private const val MGC_FALLBACK_MINIMUM_ISO = 100.0
        private const val MGC_FALLBACK_MAXIMUM_ANALOG_ISO = 388.0

        /**
         * MGC 9.6's default google/blueline, sensor 0 (rear) override in canonical RGGB order.
         *
         * The coefficients are the unique A/B/C/D model recovered from MGC's 1x, 2x, 4x, 8x,
         * 16x and 32x runtime override table. Runtime CameraCharacteristics provide the table's
         * analog-gain limit and the digital gain applied after the table lookup.
         */
        val MGC_GOOGLE_BLUELINE_REAR = CalibratedRawNoiseProfile(
            id = "google/blueline/sensor0-rear",
            shotSlopeA = doubleArrayOf(
                1.4213517983511018e-6,
                1.4752335199502486e-6,
                1.4752335199502486e-6,
                1.4213517983511018e-6,
            ),
            shotInterceptB = doubleArrayOf(
                1.202695506467641e-5,
                -9.520264477611817e-7,
                -9.520264477611817e-7,
                1.202695506467641e-5,
            ),
            readQuadraticC = doubleArrayOf(
                5.666127207337333e-12,
                1.0680145536975357e-11,
                1.0680145536975357e-11,
                5.666127207337333e-12,
            ),
            readDigitalGainD = doubleArrayOf(
                2.907827458075682e-7,
                6.321168958810624e-7,
                6.321168958810624e-7,
                2.907827458075682e-7,
            ),
            maxAnalogSensitivity = null,
            usesMgcNativeGainSplit = true,
        )

        private val NUMBER = Regex(
            """[-+]?(?:\d+(?:\.\d*)?|\.\d+)(?:[eE][-+]?\d+)?""",
        )
        private val DIGITAL_GAIN_DIVISOR = Regex(
            """sens\s*/\s*(${NUMBER.pattern})""",
            RegexOption.IGNORE_CASE,
        )

        /** Parses the generated GCam `.c` noise-model format. */
        fun parseGcamC(
            id: String,
            source: String,
        ): CalibratedRawNoiseProfile {
            require(source.isNotBlank()) { "GCam noise model is empty" }
            val a = parseArray(source, "A")
            val b = parseArray(source, "B")
            val c = parseArray(source, "C")
            val d = parseArray(source, "D")
            val divisors = DIGITAL_GAIN_DIVISOR.findAll(source)
                .map { match -> parseFiniteDouble(match.groupValues[1], "digital gain divisor") }
                .toList()
            require(divisors.isNotEmpty()) {
                "GCam noise model is missing its sens / maxAnalogSensitivity divisor"
            }
            val divisor = divisors.first()
            val maxAnalogSensitivity = divisor.roundToInt()
            require(
                divisor > 0.0 &&
                    abs(divisor - maxAnalogSensitivity.toDouble()) <= 1e-6 &&
                    divisors.all {
                        abs(it - divisor) <= maxOf(abs(divisor), 1.0) * 1e-9
                    },
            ) { "GCam noise model has an invalid or inconsistent digital-gain divisor" }
            return CalibratedRawNoiseProfile(
                id = id,
                shotSlopeA = a,
                shotInterceptB = b,
                readQuadraticC = c,
                readDigitalGainD = d,
                maxAnalogSensitivity = maxAnalogSensitivity,
            )
        }

        fun parseGcamC(
            id: String,
            input: InputStream,
        ): CalibratedRawNoiseProfile = input.bufferedReader().use { reader ->
            parseGcamC(id, reader.readText())
        }

        private fun parseArray(source: String, name: String): DoubleArray {
            val initializer = Regex(
                // Android's ICU regex engine requires unmatched closing delimiters to be
                // escaped, while the desktop JVM tolerates them as literals.
                """noise_model_$name\s*\[\s*(?:4)?\s*\]\s*=\s*\{([^}]*)\}""",
                setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL),
            ).find(source)?.groupValues?.get(1)
            val looseList = if (initializer == null) {
                Regex(
                    """static\s+double\s+noise_model_$name\b(.*?)(?=static\s+double\s+noise_model_[ABCD]\b|\z)""",
                    setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL),
                ).find(source)?.groupValues?.get(1)
            } else {
                null
            }
            val coefficientText = initializer ?: looseList ?: throw IllegalArgumentException(
                "GCam noise model is missing noise_model_$name[4]",
            )
            val values = NUMBER.findAll(coefficientText)
                .map { match -> parseFiniteDouble(match.value, "noise_model_$name") }
                .toList()
            require(values.size == CHANNEL_COUNT) {
                "GCam noise_model_$name must contain four R, Gr, Gb, B values; found ${values.size}"
            }
            return values.toDoubleArray()
        }

        private fun parseFiniteDouble(value: String, label: String): Double =
            value.toDoubleOrNull()
                ?.takeIf(Double::isFinite)
                ?: throw IllegalArgumentException("Invalid $label coefficient: $value")

        private fun largestIntegerStrictlyBelow(value: Double): Int {
            if (!value.isFinite()) return Int.MAX_VALUE
            if (value <= 1.0) return 0
            return (ceil(value).toLong() - 1L)
                .coerceAtMost(Int.MAX_VALUE.toLong())
                .toInt()
        }

        private fun sanitize(value: Double): Float =
            value.takeIf(Double::isFinite)?.coerceAtLeast(0.0)?.toFloat() ?: 0f
    }
}
