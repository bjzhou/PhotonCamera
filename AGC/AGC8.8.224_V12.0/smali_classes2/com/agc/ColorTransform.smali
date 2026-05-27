.class public Lcom/agc/ColorTransform;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ColorTransformSelector([FI)V
    .locals 11

    invoke-static {}, Lagc/Agc;->getGcamAuxKey()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {}, Lagc/Agc;->getGcamAuxKey()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/Utils/Lens;->getAuxKey()I

    move-result v0

    :goto_0
    invoke-static {v0}, Lcom/Utils/Lens;->getCameraID(I)Ljava/lang/String;

    move-result-object v10

    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    aget v4, p0, v3

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string p0, ","

    invoke-static {p0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/agc/ColorTransform;->ManualColorTransform()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "cct"

    const-string v1, "pref_color_transform_key"

    invoke-static {v0, v1, v2}, Lcom/Utils/Pref;->getColorsIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v0, "color"

    const-string v2, "pref_red_coeff_key"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v0, v2, v4}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v5

    const-string v2, "pref_green_coeff_key"

    invoke-static {v0, v2, v4}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v6

    const-string v2, "pref_blue_coeff_key"

    invoke-static {v0, v2, v4}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v7

    const-string v2, "pref_yellow_coeff_key"

    invoke-static {v0, v2, v4}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v8

    const-string v2, "pref_cyan_coeff_key"

    invoke-static {v0, v2, v4}, Lcom/Utils/Pref;->getColorsFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    move-object v2, p0

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v0

    move v9, p1

    invoke-static/range {v1 .. v10}, Lagc/Agc;->newColorTransform(ILjava/lang/String;Ljava/lang/String;FFFFFILjava/lang/String;)V

    return-void
.end method

.method public static ComputeColorTransformEntryVal(I)F
    .locals 0

    invoke-static {p0}, Lagc/Agc;->computeColorTransformEntryVal(I)F

    move-result p0

    return p0
.end method

.method public static ManualColorTransform()[Ljava/lang/String;
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cct"

    const-string v2, "rr_key"

    const-string v3, "1.679"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "rg_key"

    const-string v3, "-0.937"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "rb_key"

    const-string v3, "0.257"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    const-string v2, "gr_key"

    const-string v3, "-0.148"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    const-string v2, "gg_key"

    const-string v3, "1.062"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v0, v3

    const-string v2, "gb_key"

    const-string v3, "0.085"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v0, v3

    const-string v2, "br_key"

    const-string v3, "0.093"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v0, v3

    const-string v2, "bg_key"

    const-string v3, "-0.914"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v0, v3

    const-string v2, "bb_key"

    const-string v3, "1.828"

    invoke-static {v1, v2, v3}, Lcom/Utils/Pref;->getColorsStringValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "lib_patch_profile_key"

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    sget v1, Lcom/Utils/Pref;->DEFAUT_PATCH_COUNT:I

    sub-int/2addr v0, v1

    const-string v1, "_"

    if-ltz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lib_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, "_p"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/Utils/Lens;->getAuxKeyString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    goto :goto_0
.end method

.method public static onColorSelceted(I)[F
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p0, :pswitch_data_0

    move v0, v1

    move v2, v0

    goto/16 :goto_1

    :pswitch_0
    const-string v2, "pref_c_hue_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    const-string v2, "pref_satcct_c_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v2

    const-string v3, "pref_cyan_coeff_key"

    goto :goto_0

    :pswitch_1
    const-string v2, "pref_y_hue_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    const-string v2, "pref_satcct_y_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v2

    const-string v3, "pref_yellow_coeff_key"

    goto :goto_0

    :pswitch_2
    const-string v2, "pref_b_hue_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    const-string v2, "pref_satcct_b_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v2

    const-string v3, "pref_blue_coeff_key"

    goto :goto_0

    :pswitch_3
    const-string v2, "pref_g_hue_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    const-string v2, "pref_satcct_g_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v2

    const-string v3, "pref_green_coeff_key"

    goto :goto_0

    :pswitch_4
    const-string v2, "pref_r_hue_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    const-string v2, "pref_satcct_r_key"

    invoke-static {v2}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v2

    const-string v3, "pref_red_coeff_key"

    :goto_0
    invoke-static {v3}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/Utils/Pref;->getFloatValue(Ljava/lang/String;F)F

    move-result v1

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onColorSelceted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " hueValue:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " staValue:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, " lumValue:"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    const/4 p0, 0x3

    new-array p0, p0, [F

    const/4 v3, 0x0

    aput v1, p0, v3

    const/4 v1, 0x1

    aput v2, p0, v1

    const/4 v1, 0x2

    aput v0, p0, v1

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setColorsValue(IFFF)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setColorsValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " saturation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " luminance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->i(Ljava/lang/Object;)I

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "pref_c_hue_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_satcct_c_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_cyan_coeff_key"

    goto :goto_0

    :pswitch_1
    const-string p0, "pref_y_hue_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_satcct_y_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_yellow_coeff_key"

    goto :goto_0

    :pswitch_2
    const-string p0, "pref_b_hue_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_satcct_b_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_blue_coeff_key"

    goto :goto_0

    :pswitch_3
    const-string p0, "pref_g_hue_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_satcct_g_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_green_coeff_key"

    goto :goto_0

    :pswitch_4
    const-string p0, "pref_r_hue_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_satcct_r_key"

    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    const-string p0, "pref_red_coeff_key"

    :goto_0
    invoke-static {p0}, Lcom/agc/ColorTransform;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/Utils/Pref;->setMenuValue(Ljava/lang/String;F)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
