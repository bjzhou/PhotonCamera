.class public Lcom/ColorTune;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static WB1:F = 1.0f

.field public static WB2:F = 1.0f

.field public static WB3:F = 1.0f

.field public static WB_ColorSpace:Z = false

.field public static WB_Correction:Z = false

.field public static WB_Intensity:F = 1.0f

.field public static WB_Offset:F = 1.0f

.field public static hueB:F = 0.0f

.field public static hueC:F = 0.0f

.field public static hueG:F = 0.0f

.field public static hueGlo:F = 0.0f

.field public static hueR:F = 0.0f

.field public static hueY:F = 0.0f

.field public static satB:F = 1.0f

.field public static satC:F = 1.0f

.field public static satG:F = 1.0f

.field public static satGlo:F = 1.0f

.field public static satR:F = 1.0f

.field public static satY:F = 1.0f


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AutoCT([F)[F
    .locals 23

    const-string v0, "color"

    const-string v1, "pref_wb_correction_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/Utils/Pref;->getColorsIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/ColorTune;->WB_Correction:Z

    const-string v1, "pref_wb_color_space_key"

    invoke-static {v0, v1, v2}, Lcom/Utils/Pref;->getColorsIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sput-boolean v3, Lcom/ColorTune;->WB_ColorSpace:Z

    const-string v1, "pref_cct_wb_offset_key"

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->WB_Offset:F

    const-string v1, "pref_cct_wb_intensity_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->WB_Intensity:F

    const-string v1, "pref_satcct_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->satGlo:F

    const-string v1, "pref_satcct_r_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->satR:F

    const-string v1, "pref_satcct_g_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->satG:F

    const-string v1, "pref_satcct_b_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->satB:F

    const-string v1, "pref_satcct_y_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->satY:F

    const-string v1, "pref_satcct_c_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->satC:F

    const-string v1, "pref_global_hue_key"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->hueGlo:F

    const-string v1, "pref_r_hue_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->hueR:F

    const-string v1, "pref_g_hue_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->hueG:F

    const-string v1, "pref_b_hue_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->hueB:F

    const-string v1, "pref_y_hue_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v1

    sput v1, Lcom/ColorTune;->hueY:F

    const-string v1, "pref_c_hue_key"

    invoke-static {v0, v1, v3}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    move/from16 v22, v0

    sput v0, Lcom/ColorTune;->hueC:F

    sget-boolean v4, Lcom/ColorTune;->WB_Correction:Z

    sget-boolean v5, Lcom/ColorTune;->WB_ColorSpace:Z

    sget v6, Lcom/ColorTune;->WB1:F

    sget v7, Lcom/ColorTune;->WB2:F

    sget v8, Lcom/ColorTune;->WB3:F

    sget v9, Lcom/ColorTune;->WB_Offset:F

    sget v10, Lcom/ColorTune;->WB_Intensity:F

    sget v11, Lcom/ColorTune;->satGlo:F

    sget v12, Lcom/ColorTune;->hueGlo:F

    sget v13, Lcom/ColorTune;->satR:F

    sget v14, Lcom/ColorTune;->satG:F

    sget v15, Lcom/ColorTune;->satB:F

    sget v16, Lcom/ColorTune;->satY:F

    sget v17, Lcom/ColorTune;->satC:F

    sget v18, Lcom/ColorTune;->hueR:F

    sget v19, Lcom/ColorTune;->hueG:F

    sget v20, Lcom/ColorTune;->hueB:F

    sget v21, Lcom/ColorTune;->hueY:F

    invoke-static/range {v4 .. v22}, Lagc/Agc;->initColorTune(ZZFFFFFFFFFFFFFFFFF)V

    :goto_2
    const/16 v0, 0x9

    if-ge v2, v0, :cond_2

    invoke-static {v2}, Lagc/Agc;->computeColorTransformEntryVal(I)F

    move-result v0

    aput v0, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public static CCTSaturation([FF)[F
    .locals 1

    invoke-static {p1}, Lcom/ColorTune;->saturationMatrix(F)[F

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object p0

    sget-boolean p1, Lcom/ColorTune;->WB_Correction:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/ColorTune;->WB_ColorSpace:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x9

    new-array v0, p1, [F

    fill-array-data v0, :array_0

    invoke-static {p0, v0}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object p0

    invoke-static {}, Lcom/ColorTune;->CCT_WB()[F

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object p0

    new-array p1, p1, [F

    fill-array-data p1, :array_1

    invoke-static {p1, p0}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/ColorTune;->CCT_WB()[F

    move-result-object p1

    invoke-static {p0, p1}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0

    :array_0
    .array-data 4
        0x3f652546    # 0.8951f
        -0x40bff2e5    # -0.7502f
        0x3d1f559b    # 0.0389f
        0x3e886595    # 0.2664f
        0x3fdb53f8    # 1.7135f
        0x3d8c49ba    # 0.0685f
        -0x41dab9f5    # -0.1614f
        0x3d1652bd    # 0.0367f
        0x3f83c9ef    # 1.0296f
    .end array-data

    :array_1
    .array-data 4
        0x3f7a42e1
        0x3edbdb1a
        -0x4279d990
        -0x41dddca5
        0x3f03cf5f
        -0x43186339    # -0.028273f
        0x3e22b40f    # 0.15889f
        0x3d488b54
        0x3f7644fa    # 0.96199f
    .end array-data
.end method

.method public static CCT_WB()[F
    .locals 8

    sget v0, Lcom/ColorTune;->WB_Offset:F

    const/high16 v1, 0x40e00000    # 7.0f

    mul-float/2addr v0, v1

    const v1, 0x3d28aaa0

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    sget v3, Lcom/ColorTune;->WB1:F

    mul-float/2addr v1, v3

    const v3, -0x42d75550

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    sget v3, Lcom/ColorTune;->WB3:F

    mul-float/2addr v0, v3

    const v3, 0x3e555555

    add-float/2addr v1, v3

    const v4, 0x3fb55555

    div-float/2addr v1, v4

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    add-float/2addr v0, v3

    div-float/2addr v0, v4

    add-float/2addr v0, v5

    div-float/2addr v0, v1

    const v1, 0x45cb2000    # 6500.0f

    mul-float v3, v0, v1

    mul-float/2addr v3, v0

    div-float/2addr v1, v3

    const v0, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v0

    mul-float/2addr v1, v1

    const/high16 v0, 0x41800000    # 16.0f

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_0

    const/high16 v1, 0x41200000    # 10.0f

    :cond_0
    float-to-int v0, v1

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    :goto_0
    float-to-double v0, v3

    invoke-static {v0, v1}, Lcom/ColorTune;->getRgbFromTemperature(D)[F

    move-result-object v0

    sget v1, Lcom/ColorTune;->WB_Intensity:F

    mul-float/2addr v1, v5

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v1, v3

    const/4 v3, 0x0

    aget v4, v0, v3

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    sub-float/2addr v4, v2

    mul-float/2addr v4, v1

    add-float/2addr v4, v2

    const/4 v6, 0x1

    aget v6, v0, v6

    div-float/2addr v6, v5

    sub-float/2addr v6, v2

    mul-float/2addr v6, v1

    add-float/2addr v6, v2

    const/4 v7, 0x2

    aget v0, v0, v7

    div-float/2addr v0, v5

    sub-float/2addr v0, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    add-float v1, v4, v6

    add-float/2addr v1, v0

    const/high16 v2, 0x40400000    # 3.0f

    sub-float v1, v2, v1

    div-float/2addr v1, v2

    const/16 v2, 0x9

    new-array v2, v2, [F

    add-float/2addr v4, v1

    aput v4, v2, v3

    add-float/2addr v6, v1

    const/4 v3, 0x4

    aput v6, v2, v3

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aput v0, v2, v1

    return-object v2
.end method

.method public static CCT_WB([F)[F
    .locals 7

    sget p0, Lcom/ColorTune;->WB1:F

    sget v0, Lcom/ColorTune;->WB3:F

    sget v1, Lcom/ColorTune;->WB_Offset:F

    const/high16 v2, 0x40e00000    # 7.0f

    mul-float/2addr v1, v2

    const v2, 0x3d28aaa0

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    mul-float/2addr v2, p0

    const p0, -0x42d75550

    mul-float/2addr v1, p0

    add-float/2addr v1, v3

    mul-float/2addr v1, v0

    const p0, 0x3e555555

    add-float/2addr v2, p0

    const v0, 0x3fb55555

    div-float/2addr v2, v0

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    add-float/2addr v1, p0

    div-float/2addr v1, v0

    add-float/2addr v1, v4

    div-float/2addr v1, v2

    const p0, 0x45cb2000    # 6500.0f

    mul-float v0, v1, p0

    mul-float/2addr v0, v1

    div-float/2addr p0, v0

    const v1, 0x3f19999a    # 0.6f

    sub-float/2addr p0, v1

    mul-float/2addr p0, p0

    float-to-int v1, p0

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    const/high16 p0, 0x41200000    # 10.0f

    :cond_0
    float-to-int v1, p0

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, p0

    :goto_0
    float-to-double v0, v0

    invoke-static {v0, v1}, Lcom/ColorTune;->getRgbFromTemperature(D)[F

    move-result-object p0

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x1

    aget v2, p0, v2

    sget v5, Lcom/ColorTune;->WB_Intensity:F

    mul-float/2addr v5, v4

    const v4, 0x3d4ccccd    # 0.05f

    mul-float/2addr v5, v4

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v1, v4

    sub-float/2addr v1, v3

    mul-float/2addr v1, v5

    add-float/2addr v1, v3

    div-float/2addr v2, v4

    sub-float/2addr v2, v3

    mul-float/2addr v2, v5

    add-float/2addr v2, v3

    const/4 v6, 0x2

    aget p0, p0, v6

    div-float/2addr p0, v4

    sub-float/2addr p0, v3

    mul-float/2addr p0, v5

    add-float/2addr p0, v3

    add-float v3, v1, v2

    add-float/2addr v3, p0

    const/high16 v4, 0x40400000    # 3.0f

    sub-float v3, v4, v3

    div-float/2addr v3, v4

    const/16 v4, 0x9

    new-array v4, v4, [F

    add-float/2addr v1, v3

    aput v1, v4, v0

    add-float/2addr v2, v3

    const/4 v0, 0x4

    aput v2, v4, v0

    add-float/2addr p0, v3

    const/16 v0, 0x8

    aput p0, v4, v0

    return-object v4
.end method

.method public static CalcHueSaturation([F)[F
    .locals 5

    sget v0, Lcom/ColorTune;->satGlo:F

    invoke-static {p0, v0}, Lcom/ColorTune;->CCTSaturation([FF)[F

    move-result-object p0

    sget v0, Lcom/ColorTune;->hueR:F

    invoke-static {p0, v0}, Lcom/ColorTune;->ColorModifyHue([FF)[F

    move-result-object v0

    sget v1, Lcom/ColorTune;->satR:F

    invoke-static {v0, v1}, Lcom/ColorTune;->CCTSaturation([FF)[F

    move-result-object v0

    sget v1, Lcom/ColorTune;->hueG:F

    invoke-static {p0, v1}, Lcom/ColorTune;->ColorModifyHue([FF)[F

    move-result-object v1

    sget v2, Lcom/ColorTune;->satG:F

    invoke-static {v1, v2}, Lcom/ColorTune;->CCTSaturation([FF)[F

    move-result-object v1

    sget v2, Lcom/ColorTune;->hueB:F

    invoke-static {p0, v2}, Lcom/ColorTune;->ColorModifyHue([FF)[F

    move-result-object v2

    sget v3, Lcom/ColorTune;->satB:F

    invoke-static {v2, v3}, Lcom/ColorTune;->CCTSaturation([FF)[F

    move-result-object v2

    const/4 v3, 0x0

    aget v4, v0, v3

    aput v4, p0, v3

    const/4 v3, 0x1

    aget v4, v0, v3

    aput v4, p0, v3

    const/4 v3, 0x2

    aget v0, v0, v3

    aput v0, p0, v3

    const/4 v0, 0x3

    aget v3, v1, v0

    aput v3, p0, v0

    const/4 v0, 0x4

    aget v3, v1, v0

    aput v3, p0, v0

    const/4 v0, 0x5

    aget v1, v1, v0

    aput v1, p0, v0

    const/4 v0, 0x6

    aget v1, v2, v0

    aput v1, p0, v0

    const/4 v0, 0x7

    aget v1, v2, v0

    aput v1, p0, v0

    const/16 v0, 0x8

    aget v1, v2, v0

    aput v1, p0, v0

    sget v0, Lcom/ColorTune;->hueGlo:F

    invoke-static {p0, v0}, Lcom/ColorTune;->ColorModifyHue([FF)[F

    move-result-object p0

    return-object p0
.end method

.method public static ColorModifyHue([FF)[F
    .locals 5

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    const/16 p1, 0x9

    new-array v2, p1, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v2, v3}, Lcom/ColorTune;->MMulONE([FF)[F

    move-result-object v2

    new-array v3, p1, [F

    fill-array-data v3, :array_1

    invoke-static {v3, v2}, Lcom/ColorTune;->MADD([F[F)[F

    move-result-object v2

    new-array p1, p1, [F

    fill-array-data p1, :array_2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {p1, v0}, Lcom/ColorTune;->MMulONE([FF)[F

    move-result-object p1

    invoke-static {v2, p1}, Lcom/ColorTune;->MADD([F[F)[F

    move-result-object p1

    invoke-static {p1, p0}, Lcom/ColorTune;->MMulP2([F[F)[F

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f4978d5    # 0.787f
        -0x41a5e354    # -0.213f
        -0x41a5e354    # -0.213f
        -0x40c8f5c3    # -0.715f
        0x3e91eb85    # 0.285f
        -0x40c8f5c3    # -0.715f
        -0x426c8b44    # -0.072f
        -0x426c8b44    # -0.072f
        0x3f6d9168    # 0.928f
    .end array-data

    :array_1
    .array-data 4
        0x3e5a1cac    # 0.213f
        0x3e5a1cac    # 0.213f
        0x3e5a1cac    # 0.213f
        0x3f370a3d    # 0.715f
        0x3f370a3d    # 0.715f
        0x3f370a3d    # 0.715f
        0x3d9374bc    # 0.072f
        0x3d9374bc    # 0.072f
        0x3d9374bc    # 0.072f
    .end array-data

    :array_2
    .array-data 4
        -0x41a5e354    # -0.213f
        0x3e126e98    # 0.143f
        -0x40b6872b    # -0.787f
        -0x40c8f5c3    # -0.715f
        0x3e0f5c29    # 0.14f
        0x3f370a3d    # 0.715f
        0x3f6d9168    # 0.928f
        -0x416f1aa0    # -0.283f
        0x3d9374bc    # 0.072f
    .end array-data
.end method

.method public static MADD([F[F)[F
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x4

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x5

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x6

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x7

    aget v2, p0, v1

    aget v3, p1, v1

    add-float/2addr v2, v3

    aput v2, v0, v1

    const/16 v1, 0x8

    aget p0, p0, v1

    aget p1, p1, v1

    add-float/2addr p0, p1

    aput p0, v0, v1

    return-object v0
.end method

.method public static MMulONE([FF)[F
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x1

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x2

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x3

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x4

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x5

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x6

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/4 v0, 0x7

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    const/16 v0, 0x8

    aget v1, p0, v0

    mul-float/2addr v1, p1

    aput v1, p0, v0

    return-object p0
.end method

.method public static MMulP2([F[F)[F
    .locals 19

    const/16 v0, 0x9

    new-array v0, v0, [F

    const/4 v1, 0x0

    aget v2, p0, v1

    aget v3, p1, v1

    mul-float/2addr v2, v3

    const/4 v3, 0x1

    aget v4, p0, v3

    aget v5, p1, v3

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    const/4 v4, 0x2

    aget v6, p0, v4

    aget v7, p1, v4

    mul-float/2addr v6, v7

    add-float/2addr v2, v6

    aput v2, v0, v1

    const/4 v2, 0x3

    aget v6, p0, v2

    aget v8, p1, v1

    mul-float/2addr v6, v8

    const/4 v9, 0x4

    aget v10, p0, v9

    mul-float/2addr v5, v10

    add-float/2addr v6, v5

    const/4 v5, 0x5

    aget v11, p0, v5

    mul-float v12, v11, v7

    add-float/2addr v6, v12

    aput v6, v0, v3

    const/4 v6, 0x6

    aget v12, p0, v6

    mul-float/2addr v8, v12

    const/4 v13, 0x7

    aget v14, p0, v13

    aget v15, p1, v3

    mul-float/2addr v15, v14

    add-float/2addr v8, v15

    const/16 v15, 0x8

    aget v16, p0, v15

    mul-float v7, v7, v16

    add-float/2addr v8, v7

    aput v8, v0, v4

    aget v1, p0, v1

    aget v7, p1, v2

    mul-float/2addr v7, v1

    aget v3, p0, v3

    aget v8, p1, v9

    mul-float v17, v3, v8

    add-float v7, v7, v17

    aget v4, p0, v4

    aget v17, p1, v5

    mul-float v18, v4, v17

    add-float v7, v7, v18

    aput v7, v0, v2

    aget v7, p0, v2

    aget v2, p1, v2

    mul-float v18, v7, v2

    mul-float/2addr v10, v8

    add-float v18, v18, v10

    mul-float v11, v11, v17

    add-float v18, v18, v11

    aput v18, v0, v9

    mul-float/2addr v12, v2

    aget v2, p1, v9

    mul-float/2addr v14, v2

    add-float/2addr v12, v14

    mul-float v17, v17, v16

    add-float v12, v12, v17

    aput v12, v0, v5

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aget v2, p1, v13

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    aget v3, p1, v15

    mul-float/2addr v4, v3

    add-float/2addr v1, v4

    aput v1, v0, v6

    aget v1, p1, v6

    mul-float/2addr v7, v1

    aget v4, p0, v9

    mul-float/2addr v4, v2

    add-float/2addr v7, v4

    aget v2, p0, v5

    mul-float/2addr v2, v3

    add-float/2addr v7, v2

    aput v7, v0, v13

    aget v2, p0, v6

    mul-float/2addr v2, v1

    aget v1, p0, v13

    aget v4, p1, v13

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    mul-float v16, v16, v3

    add-float v2, v2, v16

    aput v2, v0, v15

    return-object v0
.end method

.method public static clamp(DDD)D
    .locals 0

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    invoke-static {p0, p1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static clamp(FFF)F
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static clamp(III)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static getRgbFromTemperature(D)[F
    .locals 12

    const-wide v2, 0x408f400000000000L    # 1000.0

    const-wide v4, 0x40e3880000000000L    # 40000.0

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lcom/ColorTune;->clamp(DDD)D

    move-result-wide p0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double/2addr p0, v0

    const-wide v0, 0x4050800000000000L    # 66.0

    cmpl-double v2, p0, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    const/16 v7, 0xff

    if-gtz v2, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    sub-double v8, p0, v5

    const-wide v10, -0x403ef3257dc83fbbL    # -0.1332047592

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const-wide v10, 0x40749b2dfcd49634L    # 329.698727446

    mul-double/2addr v8, v10

    double-to-int v8, v8

    invoke-static {v8, v4, v7}, Lcom/ColorTune;->clamp(III)I

    move-result v8

    :goto_1
    if-gtz v2, :cond_3

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide v5

    const-wide v9, 0x4058de21a12b8afeL    # 99.4708025861

    mul-double/2addr v5, v9

    const-wide v9, 0x406423d3809e615aL    # 161.1195681661

    sub-double/2addr v5, v9

    goto :goto_2

    :cond_3
    sub-double v5, p0, v5

    const-wide v9, -0x404cab0f1052d94dL    # -0.0755148492

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    const-wide v9, 0x407201f4680909dcL    # 288.1221695283

    mul-double/2addr v5, v9

    :goto_2
    double-to-int v2, v5

    invoke-static {v2, v4, v7}, Lcom/ColorTune;->clamp(III)I

    move-result v2

    cmpg-double v0, p0, v0

    if-gez v0, :cond_5

    const-wide/high16 v0, 0x4033000000000000L    # 19.0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_4

    move v7, v4

    goto :goto_3

    :cond_4
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    sub-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    const-wide v0, 0x406150914111eaa4L    # 138.5177312231

    mul-double/2addr p0, v0

    const-wide v0, 0x407310b778951748L    # 305.0447927307

    sub-double/2addr p0, v0

    double-to-int p0, p0

    invoke-static {p0, v4, v7}, Lcom/ColorTune;->clamp(III)I

    move-result v7

    :cond_5
    :goto_3
    const/4 p0, 0x3

    new-array p0, p0, [F

    int-to-float p1, v8

    aput p1, p0, v4

    int-to-float p1, v2

    aput p1, p0, v3

    int-to-float p1, v7

    const/4 v0, 0x2

    aput p1, p0, v0

    return-object p0
.end method

.method public static saturationMatrix(F)[F
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [F

    const v1, 0x3f4978d5    # 0.787f

    mul-float/2addr v1, p0

    const v2, 0x3e5a1cac    # 0.213f

    add-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    mul-float v1, p0, v2

    sub-float/2addr v2, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    const v1, 0x3f370a3d    # 0.715f

    mul-float v2, p0, v1

    sub-float v2, v1, v2

    const/4 v3, 0x3

    aput v2, v0, v3

    const v3, 0x3e91eb85    # 0.285f

    mul-float/2addr v3, p0

    add-float/2addr v3, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const v1, 0x3d9374bc    # 0.072f

    mul-float v2, p0, v1

    sub-float v2, v1, v2

    const/4 v3, 0x6

    aput v2, v0, v3

    const/4 v3, 0x7

    aput v2, v0, v3

    const v2, 0x3f6d9168    # 0.928f

    mul-float/2addr p0, v2

    add-float/2addr p0, v1

    const/16 v1, 0x8

    aput p0, v0, v1

    return-object v0
.end method
