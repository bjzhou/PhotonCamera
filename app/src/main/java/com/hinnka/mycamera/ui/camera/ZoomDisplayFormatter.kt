package com.hinnka.mycamera.ui.camera

import java.util.Locale
import kotlin.math.roundToInt

/**
 * 格式化变焦倍率显示。
 */
internal fun formatZoomRatioLabel(ratio: Float): String {
    val roundedToTenth = (ratio * 10).roundToInt() / 10f
    return if (roundedToTenth < 10f) {
        String.format(Locale.US, "%.1fx", roundedToTenth)
    } else {
        "${ratio.roundToInt()}x"
    }
}
