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
 * gain. AGC's native Pixel 5 model stores gain-domain coefficients and adds the shot
 * intercept after digital gain. These formats keep separate evaluation paths.
 */
data class CalibratedRawNoiseProfile(
    val id: String,
    val shotSlopeA: DoubleArray,
    val shotInterceptB: DoubleArray,
    val readQuadraticC: DoubleArray,
    val readDigitalGainD: DoubleArray,
    /** Digital-gain divisor written into an external `.c`; absent for native override tables. */
    val maxAnalogSensitivity: Int?,
    private val evaluation: Evaluation = Evaluation.ISO_POLYNOMIAL,
) {
    enum class Evaluation { ISO_POLYNOMIAL, LEGACY_MGC_GAIN, NATIVE_GAIN }

    private val usesMgcNativeGainSplit: Boolean
        get() = evaluation == Evaluation.LEGACY_MGC_GAIN

    val requiresCameraGainLimits: Boolean
        get() = evaluation == Evaluation.NATIVE_GAIN

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
        if (requiresCameraGainLimits) {
            require(maxAnalogSensitivity == null)
            require(shotSlopeA.all { it > 0.0 } && shotInterceptB.all { it >= 0.0 })
            require(readQuadraticC.all { it >= 0.0 } && readDigitalGainD.all { it > 0.0 })
        }
    }

    /** Highest integer ISO whose evaluated read variance remains positive in every plane. */
    val maximumCompatibleSensitivity: Int = maximumCompatibleReadSensitivity().also { maximum ->
        require(maximum > 0) {
            "RAW noise model has no sensitivity with positive read variance in every plane"
        }
    }

    /** Lowest integer ISO whose read variance is positive in every plane. */
    val minimumCompatibleSensitivity: Int = minimumCompatibleReadSensitivity().also { minimum ->
        require(minimum <= maximumCompatibleSensitivity) {
            "RAW noise model has no common sensitivity with positive read variance in every plane"
        }
    }

    fun evaluate(
        sensitivity: Int,
        minimumSensitivityIso: Int = 0,
        maximumAnalogSensitivityIso: Int = 0,
    ): RawNoiseModel? {
        val compatibleSensitivity = compatibleSensitivityAt(sensitivity) ?: return null
        if (requiresCameraGainLimits) {
            val gains = nativeGainSplitAt(
                compatibleSensitivity, minimumSensitivityIso, maximumAnalogSensitivityIso,
            ) ?: return null
            // Match AGC 9.6 ARM64's separate float32 operations. B is added AFTER digital
            // gain; D is multiplied by digital gain squared. No user-strength multiplier.
            val analog = gains.analogGain.toFloat()
            val digital = gains.digitalGain.toFloat()
            val analogSquared = analog * analog
            val digitalSquared = digital * digital
            val shot = FloatArray(CHANNEL_COUNT) { plane ->
                val analogShot = shotSlopeA[plane].toFloat() * analog
                val amplifiedShot = analogShot * digital
                amplifiedShot + shotInterceptB[plane].toFloat()
            }
            val read = FloatArray(CHANNEL_COUNT) { plane ->
                val analogRead = analogSquared * readQuadraticC[plane].toFloat()
                val readFloor = analogRead + readDigitalGainD[plane].toFloat()
                readFloor * digitalSquared
            }
            return RawNoiseModel.fromCanonicalBayerChannels(shot, read)
        }
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
        sensitivity.takeIf { it > 0 }?.coerceIn(minimumCompatibleSensitivity, maximumCompatibleSensitivity)

    /** MGC's total gain, or the legacy ISO/100 display coordinate for an external `.c`. */
    fun overallGainAt(sensitivity: Int, minimumSensitivityIso: Int = 0): Double? =
        sensitivity.takeIf { it > 0 }?.let { validSensitivity ->
            if (requiresCameraGainLimits) {
                minimumSensitivityIso.takeIf { it > 0 }?.let {
                    (validSensitivity.toFloat() / it.toFloat()).toDouble()
                }
            } else if (usesMgcNativeGainSplit) {
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
        if (requiresCameraGainLimits) {
            nativeGainSplitAt(
                validSensitivity, minimumSensitivityIso, maximumAnalogSensitivityIso,
            )?.analogGain
        } else if (usesMgcNativeGainSplit) {
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
            if (requiresCameraGainLimits) {
                nativeGainSplitAt(
                    validSensitivity, minimumSensitivityIso, maximumAnalogSensitivityIso,
                )?.digitalGain
            } else if (usesMgcNativeGainSplit) {
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

    /** AGC tbt.R(): split the current camera's ISO using float32 division. */
    private fun nativeGainSplitAt(
        sensitivity: Int,
        minimumSensitivityIso: Int,
        maximumAnalogSensitivityIso: Int,
    ): MgcGainSplit? {
        if (minimumSensitivityIso <= 0 || maximumAnalogSensitivityIso < minimumSensitivityIso) {
            return null
        }
        val iso = sensitivity.toFloat()
        val minimum = minimumSensitivityIso.toFloat()
        val maximumAnalog = maximumAnalogSensitivityIso.toFloat()
        return if (iso > maximumAnalog) {
            MgcGainSplit((maximumAnalog / minimum).toDouble(), (iso / maximumAnalog).toDouble())
        } else {
            MgcGainSplit((iso / minimum).toDouble(), 1.0)
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

    private fun minimumCompatibleReadSensitivity(): Int {
        var minimum = 1
        for (plane in 0 until CHANNEL_COUNT) {
            val quadratic = readQuadraticC[plane]
            val digital = readDigitalGainD[plane]
            if (quadratic <= 0.0 || digital > 0.0) continue
            // Above the external analog limit, digital gain preserves the variance sign.
            var low = 1
            var high = minOf(maxAnalogSensitivity ?: Int.MAX_VALUE, maximumCompatibleSensitivity)
            fun positiveRead(iso: Int): Boolean =
                (quadratic * iso.toDouble() * iso.toDouble() + digital).toFloat() > 0f
            require(positiveRead(high)) {
                "RAW noise model has no sensitivity with positive read variance in plane $plane"
            }
            // Evaluate the polynomial itself to exclude exact roots and rounded zeroes.
            while (low < high) {
                val middle = low + (high - low) / 2
                if (positiveRead(middle)) high = middle else low = middle + 1
            }
            minimum = maxOf(minimum, low)
        }
        return minimum
    }

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
            evaluation = Evaluation.LEGACY_MGC_GAIN,
        )

        /**
         * AGC9.6.19 V7 redfin/bramble rear override, native R/Gr/Gb/B coefficients.
         * A/C already include the native table's reference ISO 55; the input gain still
         * uses the TARGET camera's minimum/maximum analog ISO. No ISZ-specific scaling.
         * Extracted and ARM64-verified: research/agc_96_v7_defaults/pixel5_rear.json.
         */
        val AGC_GOOGLE_REDFIN_REAR = CalibratedRawNoiseProfile(
            id = "google/redfin/sensor0-rear",
            shotSlopeA = doubleArrayOf(
                0.00013521294749807566, 0.0001346482604276389,
                0.0001347979559795931, 0.00013473285071086138,
            ),
            shotInterceptB = doubleArrayOf(
                3.605693791541853e-6, 1.6270003470708616e-5,
                1.589249040989671e-5, 1.0428503628645558e-5,
            ),
            readQuadraticC = doubleArrayOf(
                1.449235611516997e-7, 1.4010380766649178e-7,
                1.5088589577771927e-7, 1.4449709340169647e-7,
            ),
            readDigitalGainD = doubleArrayOf(
                6.26161806849268e-7, 4.825284918297257e-7,
                4.93514221489022e-7, 5.935516469435242e-7,
            ),
            maxAnalogSensitivity = null,
            evaluation = Evaluation.NATIVE_GAIN,
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
