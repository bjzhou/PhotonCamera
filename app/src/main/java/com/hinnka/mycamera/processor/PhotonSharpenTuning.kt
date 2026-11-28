package com.hinnka.mycamera.processor

/**
 * Local final-sharpening defaults; no preferences or photo-metadata serialization.
 * See docs/photon-sharpen-tuning.md for units, equations and editing examples.
 *
 * [nodes] must be ordered by reference-frame SNR, not merged-frame SNR.
 * [amount] scales each interpolated curve's departure from y=x. It does not
 * change SNR interpolation. The user slider scales the same departure across all bands.
 * Halo suppression is a separate input to the kernel.
 */
data class PhotonSharpenTuning(
    val nodes: List<PhotonSharpenSnrNode>,
    val amount: PhotonSharpenBands = PhotonSharpenBands(),
) {
    init {
        require(nodes.isNotEmpty()) { "Sharpen tuning needs at least one SNR node" }
        require(nodes.zipWithNext().all { (a, b) -> a.snr < b.snr }) {
            "Sharpen SNR nodes must be strictly increasing"
        }
    }

    companion object {
        val DEFAULT = PhotonSharpenTuning(
            nodes = listOf(
                PhotonSharpenSnrNode(5f,
                    band0 = PhotonSharpenCurve(lowContrastInput = .02f, lowContrastGain = 1f, mainContrastGain = 1.6f),
                    band1 = PhotonSharpenCurve(lowContrastInput = .03f, lowContrastGain = 1f, mainContrastGain = 1.8f),
                    band2 = PhotonSharpenCurve(lowContrastInput = .02f, lowContrastGain = 1f, mainContrastGain = 1.2f)),
                PhotonSharpenSnrNode(10f,
                    band0 = PhotonSharpenCurve(lowContrastInput = .01f, lowContrastGain = 1.25f, mainContrastGain = 2.5f),
                    band1 = PhotonSharpenCurve(lowContrastInput = .03f, lowContrastGain = 1.2f, mainContrastGain = 2.2f),
                    band2 = PhotonSharpenCurve(lowContrastInput = .02f, lowContrastGain = 1f, mainContrastGain = 1.3f)),
                PhotonSharpenSnrNode(20f,
                    band0 = PhotonSharpenCurve(lowContrastInput = .01f, lowContrastGain = 1.6f, mainContrastGain = 3.2f),
                    band1 = PhotonSharpenCurve(lowContrastInput = .03f, lowContrastGain = 1.4f, mainContrastGain = 2.6f),
                    band2 = PhotonSharpenCurve(lowContrastInput = .02f, lowContrastGain = 1f, mainContrastGain = 1.4f)),
                PhotonSharpenSnrNode(40f,
                    band0 = PhotonSharpenCurve(lowContrastInput = .008f, lowContrastGain = 2.6f, mainContrastGain = 5.2f),
                    band1 = PhotonSharpenCurve(lowContrastInput = .02f, lowContrastGain = 1.15f, mainContrastGain = 2.1f),
                    band2 = PhotonSharpenCurve(lowContrastInput = .02f, lowContrastGain = 1f, mainContrastGain = 1.4f)),
                PhotonSharpenSnrNode(80f,
                    band0 = PhotonSharpenCurve(lowContrastInput = .008f, lowContrastGain = 2.35f, mainContrastGain = 4.7f),
                    band1 = PhotonSharpenCurve(lowContrastInput = .02f, lowContrastGain = 1.15f, mainContrastGain = 2.1f),
                    band2 = PhotonSharpenCurve(lowContrastInput = .02f, lowContrastGain = 1f, mainContrastGain = 1.4f)),
            ),
        )
    }
}

/**
 * Dimensionless enhancement amounts, indexed exactly like the MGC frequency axis.
 * 0 = identity curve, 1 = configured curve; >1 extrapolates its enhancement or
 * suppression. These are frequency groups, not RGB channels or denoise levels.
 */
data class PhotonSharpenBands(val band0: Float = 1f, val band1: Float = 1f, val band2: Float = 1f) {
    init {
        require(listOf(band0, band1, band2).all { it.isFinite() && it >= 0f })
    }

    operator fun get(band: Int): Float = when (band) {
        0 -> band0
        1 -> band1
        2 -> band2
        else -> error("Invalid sharpening frequency index: $band")
    }
}

/** One positive, linear reference SNR and one contrast curve per native frequency group. */
data class PhotonSharpenSnrNode(
    val snr: Float,
    val band0: PhotonSharpenCurve,
    val band1: PhotonSharpenCurve,
    val band2: PhotonSharpenCurve,
) {
    init { require(snr.isFinite() && snr > 0f) }

    operator fun get(band: Int): PhotonSharpenCurve = when (band) {
        0 -> band0
        1 -> band1
        2 -> band2
        else -> error("Invalid sharpening frequency index: $band")
    }
}

/**
 * Five-point response: origin, three explicit contrast knots, then a unit-slope tail.
 * Input coordinates are in the MGC response-curve domain, NOT pixel radius,
 * scene brightness or an ISO value. Gains are output/input at each knot;
 * only [lowContrastGain] is also the slope from the origin.
 *
 * The high-contrast gain may be smaller than the main gain (roll-off). Output
 * knots therefore need not be monotonic. Input knots must always increase.
 */
data class PhotonSharpenCurve(
    /** First knot x; marks the end of the initial constant-gain segment. */
    val lowContrastInput: Float = .02f,
    /** Gain throughout the segment from zero to lowContrastInput. */
    val lowContrastGain: Float = 1f,
    /** Second knot x; center of the configurable contrast enhancement. */
    val mainContrastInput: Float = 1f,
    /** Second knot y/x, not a multiplier of the other gains. */
    val mainContrastGain: Float = 1f,
    /** Third knot x; end of the transition from the main gain to the high gain. */
    val highContrastInput: Float = 2f,
    /** Third knot y/x; 1 rejoins identity at this knot, >1 retains enhancement. */
    val highContrastGain: Float = 1f,
    /** x span to the final knot; y increases by the same span (slope exactly 1). */
    val tailSpan: Float = 1f,
) {
    init {
        require(listOf(lowContrastInput, mainContrastInput, highContrastInput, tailSpan)
            .all { it.isFinite() && it > 0f })
        require(lowContrastInput < mainContrastInput && mainContrastInput < highContrastInput)
        require(listOf(lowContrastGain, mainContrastGain, highContrastGain)
            .all { it.isFinite() && it >= 0f })
        require((lowContrastInput * lowContrastGain).isFinite())
        require((mainContrastInput * mainContrastGain).isFinite())
        require((highContrastInput * highContrastGain + tailSpan).isFinite())
        require((highContrastInput + tailSpan).isFinite() && highContrastInput + tailSpan > highContrastInput)
    }
}
