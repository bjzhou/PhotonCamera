package com.hinnka.mycamera.processor

import java.io.InputStream
import kotlin.math.abs
import kotlin.math.roundToInt

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
 * digitalGain=max(sensitivity/maxAnalogSensitivity, 1). Native MGC override tables already
 * contain their final values at each overall-gain coordinate and therefore do not add a second
 * inferred digital-gain term.
 */
data class CalibratedRawNoiseProfile(
    val id: String,
    val shotSlopeA: DoubleArray,
    val shotInterceptB: DoubleArray,
    val readQuadraticC: DoubleArray,
    val readDigitalGainD: DoubleArray,
    /** Digital-gain divisor written into an external `.c`; absent for native override tables. */
    val maxAnalogSensitivity: Int?,
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

    fun evaluate(sensitivity: Int): RawNoiseModel? {
        if (sensitivity <= 0) return null
        val sensorSensitivity = sensitivity.toDouble()
        val digitalGain = digitalGainAt(sensitivity) ?: return null
        val digitalGainSquared = digitalGain * digitalGain
        val shot = FloatArray(CHANNEL_COUNT) { plane ->
            sanitize(shotSlopeA[plane] * sensorSensitivity + shotInterceptB[plane])
        }
        val read = FloatArray(CHANNEL_COUNT) { plane ->
            sanitize(
                readQuadraticC[plane] * sensorSensitivity * sensorSensitivity +
                    readDigitalGainD[plane] * digitalGainSquared,
            )
        }
        return RawNoiseModel.fromCanonicalBayerChannels(shot, read)
    }

    /** MGC's override-table coordinate: CaptureResult ISO expressed relative to ISO 100. */
    fun overallGainAt(sensitivity: Int): Double? =
        sensitivity.takeIf { it > 0 }?.toDouble()?.div(100.0)

    /** Digital gain prescribed by this profile, or one for an already-final override table. */
    fun digitalGainAt(sensitivity: Int): Double? =
        sensitivity.takeIf { it > 0 }?.let { validSensitivity ->
            maxAnalogSensitivity?.let { maxAnalog ->
                maxOf(validSensitivity.toDouble() / maxAnalog.toDouble(), 1.0)
            } ?: 1.0
        }

    companion object {
        private const val CHANNEL_COUNT = 4

        /**
         * MGC 9.6's default google/blueline, sensor 0 (rear) override in canonical RGGB order.
         *
         * The coefficients are the unique A/B/C/D model recovered from MGC's 1x, 2x, 4x, 8x,
         * 16x and 32x runtime override table. That table does not declare a max-analog divisor;
         * the runtime camera MaxAnalogISO maker-note field is not part of this profile.
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
                """noise_model_$name\s*\[\s*(?:4)?\s*]\s*=\s*\{([^}]*)}""",
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

        private fun sanitize(value: Double): Float =
            value.takeIf(Double::isFinite)?.coerceAtLeast(0.0)?.toFloat() ?: 0f
    }
}
