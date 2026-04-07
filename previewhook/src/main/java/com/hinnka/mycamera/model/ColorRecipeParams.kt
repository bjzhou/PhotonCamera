package com.hinnka.mycamera.model

data class ColorRecipeParams(
    val exposure: Float = 0f,
    val contrast: Float = 1f,
    val saturation: Float = 1f,
    val temperature: Float = 0f,
    val tint: Float = 0f,
    val fade: Float = 0f,
    val color: Float = 0f,
    val highlights: Float = 0f,
    val shadows: Float = 0f,
    val toneToe: Float = 0f,
    val toneShoulder: Float = 0f,
    val tonePivot: Float = 0f,
    val paletteX: Float = 0.5f,
    val paletteY: Float = 0.5f,
    val paletteDensity: Float = 1f,
    val filmGrain: Float = 0f,
    val vignette: Float = 0f,
    val bleachBypass: Float = 0f,
    val halation: Float = 0f,
    val chromaticAberration: Float = 0f,
    val noise: Float = 0f,
    val lowRes: Float = 0f,
    val skinHue: Float = 0f,
    val skinChroma: Float = 0f,
    val skinLightness: Float = 0f,
    val redHue: Float = 0f,
    val redChroma: Float = 0f,
    val redLightness: Float = 0f,
    val orangeHue: Float = 0f,
    val orangeChroma: Float = 0f,
    val orangeLightness: Float = 0f,
    val yellowHue: Float = 0f,
    val yellowChroma: Float = 0f,
    val yellowLightness: Float = 0f,
    val greenHue: Float = 0f,
    val greenChroma: Float = 0f,
    val greenLightness: Float = 0f,
    val cyanHue: Float = 0f,
    val cyanChroma: Float = 0f,
    val cyanLightness: Float = 0f,
    val blueHue: Float = 0f,
    val blueChroma: Float = 0f,
    val blueLightness: Float = 0f,
    val purpleHue: Float = 0f,
    val purpleChroma: Float = 0f,
    val purpleLightness: Float = 0f,
    val magentaHue: Float = 0f,
    val magentaChroma: Float = 0f,
    val magentaLightness: Float = 0f,
    val primaryRedHue: Float = 0f,
    val primaryRedSaturation: Float = 0f,
    val primaryRedLightness: Float = 0f,
    val primaryGreenHue: Float = 0f,
    val primaryGreenSaturation: Float = 0f,
    val primaryGreenLightness: Float = 0f,
    val primaryBlueHue: Float = 0f,
    val primaryBlueSaturation: Float = 0f,
    val primaryBlueLightness: Float = 0f,
    val lutIntensity: Float = 1f,   // 0.0 ~ 1.0 (LUT强度，1为完全应用)
    val remarks: String? = "",       // 用户备注
    // 曲线控制点 [x0,y0, x1,y1, ...], null = 恒等曲线（无效果）
    val masterCurvePoints: FloatArray? = null,
    val redCurvePoints: FloatArray? = null,
    val greenCurvePoints: FloatArray? = null,
    val blueCurvePoints: FloatArray? = null,
) {
    fun isSameAs(other: ColorRecipeParams): Boolean {
        return this == other
    }

    fun isDefault(): Boolean {
        return exposure == 0f &&
            contrast == 1f &&
            saturation == 1f &&
            temperature == 0f &&
            tint == 0f &&
            fade == 0f &&
            color == 0f &&
            highlights == 0f &&
            shadows == 0f &&
            toneToe == 0f &&
            toneShoulder == 0f &&
            tonePivot == 0f &&
            paletteX == 0.5f &&
            paletteY == 0.5f &&
            paletteDensity == 1f &&
            filmGrain == 0f &&
            vignette == 0f &&
            bleachBypass == 0f &&
            halation == 0f &&
            chromaticAberration == 0f &&
            noise == 0f &&
            lowRes == 0f &&
            skinHue == 0f &&
            skinChroma == 0f &&
            skinLightness == 0f &&
            redHue == 0f &&
            redChroma == 0f &&
            redLightness == 0f &&
            orangeHue == 0f &&
            orangeChroma == 0f &&
            orangeLightness == 0f &&
            yellowHue == 0f &&
            yellowChroma == 0f &&
            yellowLightness == 0f &&
            greenHue == 0f &&
            greenChroma == 0f &&
            greenLightness == 0f &&
            cyanHue == 0f &&
            cyanChroma == 0f &&
            cyanLightness == 0f &&
            blueHue == 0f &&
            blueChroma == 0f &&
            blueLightness == 0f &&
            purpleHue == 0f &&
            purpleChroma == 0f &&
            purpleLightness == 0f &&
            magentaHue == 0f &&
            magentaChroma == 0f &&
            magentaLightness == 0f &&
            primaryRedHue == 0f &&
            primaryRedSaturation == 0f &&
            primaryRedLightness == 0f &&
            primaryGreenHue == 0f &&
            primaryGreenSaturation == 0f &&
            primaryGreenLightness == 0f &&
            primaryBlueHue == 0f &&
            primaryBlueSaturation == 0f &&
            primaryBlueLightness == 0f &&
            remarks.isNullOrEmpty() &&
            masterCurvePoints == null &&
            redCurvePoints == null &&
            greenCurvePoints == null &&
            blueCurvePoints == null
    }

    companion object {
        val DEFAULT = ColorRecipeParams()
    }
}
