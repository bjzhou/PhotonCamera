package com.hinnka.mycamera.raw

/** CPU tables produced by the same spectral model as the realtime point transform. */
class SpectralFilmGraph internal constructor(
    internal val sourceKey: String,
    internal val size: Int,
    stages: Array<FloatArray>,
) {
    internal val filmExposure = stages[2]
    internal val filmCurves = stages[3]
    internal val paperExposure = stages[4]
    internal val paperCurves = stages[5]
    internal val scan = stages[6]
    internal val gamut = stages[7]

    private val parameters = stages[8].also {
        require(it.size == 50 && it.all(Float::isFinite)) { "Invalid native Spektrafilm graph metadata" }
    }
    internal val filmCurveSize = parameters[0].toInt()
    internal val filmCurveRows = parameters[1].toInt()
    internal val positive = parameters[2] == 1f
    internal val filmExposureCorrection = parameters[3]
    internal val gamma = parameters.vec(4)
    internal val densityMax = parameters.vec(7)
    internal val dirMatrix = parameters.copyOfRange(10, 19)
    internal val filmLow = parameters.vec(19)
    internal val filmHigh = parameters.vec(22)
    internal val scanLow = parameters.vec(25)
    internal val scanHigh = parameters.vec(28)
    internal val glareWhite = parameters.vec(31)
    internal val gamutLow = parameters.vec(34)
    internal val gamutHigh = parameters.vec(37)
    internal val layerMax = List(3) { parameters.vec(40 + 3 * it) }
    internal val linearScan = parameters[49] == 1f

    internal val printing get() = paperExposure.isNotEmpty()
    internal val usesGlare get() = gamut.isNotEmpty()
    internal val usesDir get() = dirMatrix.any { it != 0f }

    init {
        val cube = size * size * size * 4
        require(filmCurveSize in 2..4096 && filmCurveRows in setOf(2, 5))
        require(filmExposure.size == cube && scan.size == cube)
        require(filmCurves.size == filmCurveSize * filmCurveRows * 4)
        require(paperExposure.isEmpty() || paperExposure.size == cube)
        require(paperCurves.size == if (printing) 4096 * 4 else 0)
        require(gamut.isEmpty() || gamut.size == cube)
    }

    private fun FloatArray.vec(offset: Int) = SpectralRgb(this[offset], this[offset + 1], this[offset + 2])
}
