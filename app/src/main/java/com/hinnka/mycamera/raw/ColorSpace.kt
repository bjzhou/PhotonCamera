package com.hinnka.mycamera.raw

/**
 * 色彩空间定义
 */
enum class ColorSpace(
    val xr: Float, val yr: Float,
    val xg: Float, val yg: Float,
    val xb: Float, val yb: Float,
    val xw: Float, val yw: Float
) {
    SRGB(
        0.640f, 0.330f,
        0.300f, 0.600f,
        0.150f, 0.060f,
        0.3127f, 0.3290f
    ),
    DCI_P3(
        0.680f, 0.320f,
        0.265f, 0.690f,
        0.150f, 0.060f,
        0.314f, 0.351f
    ),
    BT2020(
        0.708f, 0.292f,
        0.170f, 0.797f,
        0.131f, 0.046f,
        0.3127f, 0.3290f
    ),
    ARRI4(
        0.7347f, 0.2653f,
        0.1424f, 0.8576f,
        0.0991f, -0.0308f,
        0.3127f, 0.3290f
    ),
    AppleLog2(
        0.725f, 0.301f,
        0.221f, 0.814f,
        0.068f, -0.076f,
        0.3127f, 0.3290f
    ),
    ACES_AP1(
        0.713f, 0.293f,
        0.165f, 0.83f,
        0.128f, 0.044f,
        0.32168f, 0.33767f
    ),
;

    val primaries: FloatArray
        get() = floatArrayOf(xr, yr, xg, yg, xb, yb)

    val whitePoint: FloatArray
        get() = floatArrayOf(xw, yw)
}
