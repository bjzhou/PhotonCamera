package com.hinnka.mycamera.raw

import kotlin.math.pow

/**
 * Qualcomm Spectra IPE Gamma15 (257-point uniform linear-x LUT) -> sRGB decode -> inverse ACR3.
 *
 * Uses the authentic 257-entry 10-bit (0..1023) daylight `gamma15_ipe` table extracted from
 * Qualcomm Chromatix (`com.qti.tuned.venus_semco_s5khmx_wide.bin`, `mod_gamma15_channel_data`)
 * so that Qualcomm ADRC/TMC12 + LTM runs strictly in its native [0, 1] scene-linear domain while
 * downstream ACR3 rendering reproduces the exact Qualcomm IPE Gamma15 tone response.
 */
internal object QcomGamma15OutputCurve {
    private const val SAMPLE_COUNT = 65537
    private const val TABLE_MAX = 1023.0

    // 257-point Qualcomm IPE Gamma15 LUT sampled uniformly at x_i = i / 256 (i = 0..256),
    // 10-bit output codes [0..1023], R=G=B.
    internal val GAMMA15_TABLE = floatArrayOf(
        0f, 14f, 26f, 38f, 50f, 62f, 74f, 86f, 100f, 114f, 127f, 141f, 155f, 167f, 179f, 193f,
        207f, 219f, 231f, 241f, 251f, 263f, 275f, 285f, 295f, 305f, 315f, 325f, 333f, 343f, 353f, 361f,
        369f, 377f, 386f, 394f, 402f, 410f, 418f, 424f, 430f, 438f, 444f, 450f, 458f, 464f, 470f, 476f,
        482f, 488f, 494f, 500f, 506f, 512f, 518f, 524f, 528f, 534f, 540f, 544f, 548f, 554f, 560f, 564f,
        568f, 572f, 578f, 582f, 588f, 592f, 596f, 600f, 604f, 608f, 612f, 618f, 622f, 626f, 630f, 634f,
        638f, 643f, 647f, 649f, 653f, 657f, 661f, 665f, 669f, 672f, 675f, 679f, 683f, 687f, 689f, 693f,
        697f, 700f, 703f, 707f, 709f, 713f, 716f, 719f, 723f, 725f, 728f, 731f, 735f, 737f, 740f, 743f,
        747f, 749f, 752f, 755f, 757f, 760f, 763f, 765f, 768f, 771f, 773f, 776f, 779f, 781f, 784f, 787f,
        789f, 792f, 794f, 796f, 799f, 801f, 804f, 806f, 808f, 811f, 813f, 816f, 818f, 820f, 822f, 824f,
        827f, 829f, 831f, 833f, 835f, 837f, 840f, 842f, 844f, 846f, 848f, 850f, 852f, 854f, 856f, 858f,
        860f, 862f, 864f, 866f, 868f, 870f, 872f, 874f, 875f, 877f, 879f, 881f, 883f, 885f, 887f, 888f,
        890f, 892f, 894f, 895f, 897f, 899f, 901f, 903f, 905f, 907f, 909f, 911f, 912f, 914f, 915f, 917f,
        919f, 920f, 922f, 923f, 925f, 927f, 929f, 931f, 932f, 934f, 935f, 937f, 939f, 940f, 942f, 943f,
        945f, 947f, 948f, 950f, 951f, 953f, 955f, 956f, 958f, 959f, 961f, 963f, 964f, 966f, 967f, 969f,
        971f, 972f, 974f, 975f, 977f, 979f, 980f, 982f, 983f, 985f, 987f, 988f, 990f, 991f, 993f, 995f,
        996f, 998f, 999f, 1001f, 1003f, 1005f, 1007f, 1008f, 1010f, 1011f, 1013f, 1015f, 1017f, 1019f, 1020f, 1022f,
        1023f,
    )

    private val preAcrSamples by lazy {
        FloatArray(SAMPLE_COUNT) { index ->
            val encoded = evaluateGamma15(index.toDouble() / (SAMPLE_COUNT - 1))
            val linear = if (encoded <= 0.04045) {
                encoded / 12.92
            } else {
                ((encoded + 0.055) / 1.055).pow(2.4)
            }
            ACR3Curve.inputForOutput(linear.toFloat())
        }
    }

    fun samples(): FloatArray = preAcrSamples

    internal fun evaluateGamma15(input: Double): Double {
        val clamped = input.coerceIn(0.0, 1.0)
        val lastIndex = GAMMA15_TABLE.lastIndex
        val pos = clamped * lastIndex
        val index = pos.toInt().coerceAtMost(lastIndex - 1)
        val t = pos - index
        val y0 = GAMMA15_TABLE[index].toDouble()
        val y1 = GAMMA15_TABLE[index + 1].toDouble()
        return ((y0 + (y1 - y0) * t) / TABLE_MAX).coerceIn(0.0, 1.0)
    }
}
