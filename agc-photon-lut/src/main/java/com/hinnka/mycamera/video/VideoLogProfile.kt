package com.hinnka.mycamera.video

import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.raw.ColorSpace

enum class VideoLogProfile(
    val logCurve: TransferCurve,
    val colorSpace: ColorSpace
) {
    OFF(TransferCurve.SRGB, ColorSpace.SRGB),
    APPLE_LOG2(TransferCurve.APPLE_LOG, ColorSpace.AppleLog2),
    FLOG2_BT2020(TransferCurve.FLOG2, ColorSpace.BT2020),
    V_LOG(TransferCurve.VLOG, ColorSpace.VGamut),
    LOGC4_ARRI4(TransferCurve.LOGC4, ColorSpace.ARRI4),
    ACESCCT_AP1(TransferCurve.ACES_CCT, ColorSpace.ACES_AP1);

    val isEnabled: Boolean
        get() = this != OFF
}
