package com.hinnka.mycamera.lut

import com.hinnka.mycamera.color.TransferCurve
import com.hinnka.mycamera.raw.ColorSpace

internal object LutShaderMappings {
    fun transferCurveId(curve: TransferCurve?): Int {
        return (curve ?: TransferCurve.SRGB).shaderId
    }

    fun colorSpaceId(colorSpace: ColorSpace): Int {
        return when (colorSpace) {
            ColorSpace.SRGB -> 0
            ColorSpace.DCI_P3 -> 1
            ColorSpace.BT2020 -> 2
            ColorSpace.ARRI4 -> 3
            ColorSpace.AppleLog2 -> 4
            ColorSpace.ProPhoto -> 0
            ColorSpace.S_GAMUT3_CINE -> 5
            ColorSpace.ACES_AP1 -> 6
            ColorSpace.VGamut -> 7
            ColorSpace.RED -> 9
            ColorSpace.FilmLightEGamut -> 0
        }
    }
}
