.class public LAGC;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static gcaConfig:Ldit;

.field public static linearMinibarImpl:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

.field public static rawFormat:I

.field public static sMaxISO:F


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

.method public static GetAwbSliderValue(Lkgl;Lgll;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object p1, p1, Lgll;->b:Lmvv;

    invoke-static {p1}, Lnsy;->Y(Ljava/util/Collection;)[F

    move-result-object p1

    const/4 v1, 0x0

    aget p1, p1, v1

    invoke-static {p1}, Lcom/Globals;->CustomWBValue(F)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lkgl;->i(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static ProcIndicatorSwitch(I)V
    .locals 2

    sget-object v0, LAGC;->linearMinibarImpl:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "proc_indecator"

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->h(Z)V

    sget-object v0, LAGC;->linearMinibarImpl:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    invoke-static {v1}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;->h(Z)V

    sget-object p0, LAGC;->linearMinibarImpl:Lcom/google/android/apps/camera/optionsbar/view/LinearMinibarImpl;

    invoke-static {v1}, Lcom/agc/Res;->getIdID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static convertToNrg(I)Lnrg;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lnrg;->a:Lnrg;

    return-object p0

    :pswitch_0
    sget-object p0, Lnrg;->p:Lnrg;

    return-object p0

    :pswitch_1
    sget-object p0, Lnrg;->o:Lnrg;

    return-object p0

    :pswitch_2
    sget-object p0, Lnrg;->g:Lnrg;

    return-object p0

    :pswitch_3
    sget-object p0, Lnrg;->d:Lnrg;

    return-object p0

    :pswitch_4
    sget-object p0, Lnrg;->c:Lnrg;

    return-object p0

    :pswitch_5
    sget-object p0, Lnrg;->i:Lnrg;

    return-object p0

    :pswitch_6
    sget-object p0, Lnrg;->h:Lnrg;

    return-object p0

    :pswitch_7
    sget-object p0, Lnrg;->f:Lnrg;

    return-object p0

    :pswitch_8
    sget-object p0, Lnrg;->n:Lnrg;

    return-object p0

    :pswitch_9
    sget-object p0, Lnrg;->j:Lnrg;

    return-object p0

    :pswitch_a
    sget-object p0, Lnrg;->e:Lnrg;

    return-object p0

    :pswitch_b
    sget-object p0, Lnrg;->m:Lnrg;

    return-object p0

    :pswitch_c
    sget-object p0, Lnrg;->l:Lnrg;

    return-object p0

    :pswitch_d
    sget-object p0, Lnrg;->k:Lnrg;

    return-object p0

    :pswitch_e
    sget-object p0, Lnrg;->b:Lnrg;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static createCaptureRequest(Landroid/hardware/camera2/CameraDevice;I)Lkkr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkdf;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lkkr;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    invoke-direct {v0, p0}, Lkkr;-><init>(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const-string p0, "pref_ois_key"

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCamera()Lcom/agc/Camera;

    move-result-object v1

    if-ne p0, p1, :cond_0

    invoke-virtual {v1}, Lcom/agc/Camera;->isOisSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    const-string p0, "pref_ois_data_key"

    invoke-static {p0, p1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result p0

    if-ne p0, p1, :cond_1

    invoke-virtual {v1}, Lcom/agc/Camera;->isOisSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lagc/Agc;->isSonyDevice()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_1
    const-string p0, "pref_antibanding_key"

    invoke-static {p0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_2

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_ANTIBANDING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_2
    const-string p0, "pref_hot_pixel_key"

    invoke-static {p0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_3

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->HOT_PIXEL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_3
    invoke-static {}, Lcom/agc/AdvancedSettings;->getShading()I

    move-result p0

    if-ltz p0, :cond_4

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SHADING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    sget-object p0, Lcom/DeveloperOptions;->c2api_color_correction_ambition_mode:Ldhk;

    invoke-static {p0}, Lcom/DeveloperOptions;->getInt(Ldhk;)I

    move-result p0

    if-eqz p0, :cond_5

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_ABERRATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_5
    sget-object p0, Lcom/DeveloperOptions;->c2api_distortion_correction_mode:Ldhk;

    invoke-static {p0}, Lcom/DeveloperOptions;->getInt(Ldhk;)I

    move-result p0

    if-eqz p0, :cond_6

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->DISTORTION_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_6
    sget-object p0, Lcom/DeveloperOptions;->c2api_color_correction_mode:Ldhk;

    invoke-static {p0}, Lcom/DeveloperOptions;->getInt(Ldhk;)I

    move-result p0

    if-eqz p0, :cond_7

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_7
    sget-object p0, Lcom/DeveloperOptions;->c2api_tone_mode:Ldhk;

    invoke-static {p0}, Lcom/DeveloperOptions;->getInt(Ldhk;)I

    move-result p0

    if-eqz p0, :cond_8

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->TONEMAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_8
    sget-object p0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string p1, "samsung"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    sget-object p0, Lcom/CameraAPI2Keys;->CONTROL_METERING_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const-string p1, "pref_metering_mode_key"

    invoke-static {p1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/CameraAPI2Keys;->CONTROL_LIVE_HDR_LEVEL:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object p0, Lcom/CameraAPI2Keys;->LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/agc/AdvancedSettings;->getAperture()F

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_1

    :cond_9
    invoke-static {}, Lagc/Agc;->isXiaomi13Ultra()Z

    move-result p0

    if-eqz p0, :cond_a

    sget-object p0, Lcom/CameraAPI2Keys;->XIAOMI_LENS_APERTURE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/agc/AdvancedSettings;->getAperture()F

    move-result p1

    goto :goto_0

    :goto_1
    invoke-virtual {v0, p0, p1}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    return-object v0

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_2

    :catch_3
    move-exception p0

    goto :goto_2

    :catch_4
    move-exception p0

    :goto_2
    new-instance p1, Lkdf;

    invoke-direct {p1, p0}, Lkdf;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static getAstroEnabled(Lfcn;Z)Z
    .locals 1

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Lfcn;->c:Lgzm;

    sget-object p1, Lgzd;->ao:Lgzs;

    invoke-interface {p0, p1}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1}, Linb;->D(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method

.method public static getFixResolutionList([Landroid/util/Size;[Landroid/util/Size;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Size;",
            "[",
            "Landroid/util/Size;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Landroid/util/Size;

    invoke-static {p0}, Lmvv;->k([Ljava/lang/Object;)Lmvv;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    new-array p1, v0, [Landroid/util/Size;

    :cond_1
    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v3, v1, [Landroid/util/Size;

    const v4, 0x5f5e100

    move v5, v0

    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_3

    aget-object v6, p1, v5

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v4

    aput-object v6, v3, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    array-length p1, p0

    if-ge v2, p1, :cond_5

    aget-object p1, p0, v2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_4

    aput-object p1, v3, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v0, v1, :cond_7

    aget-object p1, v3, v0

    if-eqz p1, :cond_6

    new-instance v2, Lkaf;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {v2, v4, p1}, Lkaf;-><init>(II)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-object p0
.end method

.method public static getFocusDistance(Lgyp;)F
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const v0, 0x3f553f7d    # 0.833f

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v2, Lgyp;->c:Lgyp;

    if-ne p0, v2, :cond_1

    const-string p0, "pref_manual_focus_near_key"

    :goto_1
    invoke-static {p0, v1}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result p0

    goto :goto_2

    :cond_1
    sget-object v2, Lgyp;->d:Lgyp;

    if-ne p0, v2, :cond_2

    const-string p0, "pref_manual_focus_far_key"

    goto :goto_1

    :cond_2
    const-string p0, "pref_manual_focus_infinity_key"

    goto :goto_1

    :goto_2
    cmpl-float v1, p0, v1

    if-eqz v1, :cond_3

    move v0, p0

    :cond_3
    sput v0, Lcom/agc/LogData$Device;->focusDistance:F

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v0
.end method

.method public static getGcamSensorId(Lkli;Lkou;)Lnrg;
    .locals 1

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, p1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p1, 0x1

    sub-int/2addr p0, p1

    mul-int/lit8 p0, p0, -0x1

    if-ne p0, p1, :cond_0

    invoke-static {p0}, LAGC;->convertToNrg(I)Lnrg;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "pref_gcam_lens_logic_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 p0, v0, -0x1

    :cond_1
    invoke-static {p0}, LAGC;->convertToNrg(I)Lnrg;

    move-result-object p0

    return-object p0
.end method

.method public static getLogicalMultiCameraActivePhysicalID(Lkou;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getSet(Ljava/util/Set;Ljava/util/Set;)I
    .locals 1

    const-string v0, "getSet"

    invoke-static {v0, p0}, Lcom/agc/Log;->e(Ljava/lang/Object;Ljava/lang/Object;)I

    const-string p0, "getSet2"

    invoke-static {p0, p1}, Lcom/agc/Log;->e(Ljava/lang/Object;Ljava/lang/Object;)I

    const/4 p0, 0x0

    return p0
.end method

.method public static getSupportedOutputSizes(ILandroid/hardware/camera2/params/StreamConfigurationMap;)Ljava/util/List;
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/agc/LensSettings;->getFixResolution(I)I

    move-result v0

    invoke-static {}, Lcom/agc/AdvancedSettings;->get48m()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p1

    invoke-static {p0, p1}, LAGC;->getFixResolutionList([Landroid/util/Size;[Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p1, p0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    invoke-static {p0}, Lkba;->h([Landroid/util/Size;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static manualFocus(Lkkr;)V
    .locals 3

    invoke-static {}, Lcom/custom/slider;->getFocusMode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/custom/slider;->getFocusDistance()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lkkr;->b(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static mergeSetting(Lcom/google/googlex/gcam/ShotParams;)V
    .locals 8

    const-string v0, "pref_merge_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sput v0, Lcom/agc/LogData$Device;->mergeMethod:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    const-string v2, "lib_hardmerge_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const-string v3, "Off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/agc/LogData$Device;->mergeMethod:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    :cond_2
    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_3

    sget-object v2, Ldhq;->L:Ldhj;

    :goto_2
    invoke-static {v2}, Lcom/DeveloperOptions;->getPhenotypeBoolean(Ldhj;)Z

    goto :goto_3

    :cond_3
    if-ne v2, v3, :cond_4

    sget-object v2, Ldib;->F:Ldhj;

    goto :goto_2

    :cond_4
    const/4 v5, 0x4

    if-ne v2, v5, :cond_5

    sget-object v2, Ldhq;->K:Ldhj;

    goto :goto_2

    :cond_5
    :goto_3
    iget-wide v5, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    sget v2, LAGC;->rawFormat:I

    const/16 v7, 0x25

    if-ne v2, v7, :cond_6

    move v2, v1

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_4
    invoke-static {v5, v6, p0, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    if-ltz v0, :cond_7

    iget-wide v5, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v5, v6, p0, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    if-ne v0, v1, :cond_7

    sget v2, LAGC;->rawFormat:I

    const/16 v5, 0x20

    if-ne v2, v5, :cond_7

    iget-wide v5, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v5, v6, p0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    :cond_7
    iget-wide v2, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    const/4 v5, 0x3

    if-ne v0, v5, :cond_8

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    invoke-static {v2, v3, p0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    return-void
.end method

.method public static returnCameraId(FF)Z
    .locals 0

    const p1, 0x40f947ae    # 7.79f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_0

    const-string p1, "physicalCameraIdFocalLengths"

    invoke-static {p1, p0}, Lcom/agc/Log;->e(Ljava/lang/Object;F)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setDeveloperSettings()V
    .locals 4

    invoke-static {}, Lcom/DeveloperOptions;->setDefaultValue()V

    sget-object v0, Lcom/Developer;->gcaConfig:Ldit;

    sput-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhq;->X:Ldhj;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhq;->V:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhq;->Y:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhq;->au:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->r:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldim;->a:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->m:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->o:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->p:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhx;->g:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhx;->e:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhx;->f:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->bb:Ldhj;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhq;->RR:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->A:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->y:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->J:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhg;->d:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhy;->i:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhd;->a:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->u:Ldhj;

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->n:Ldhk;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhq;->d:Ldhk;

    invoke-static {v1}, Lcom/DeveloperOptions;->getInt(Ldhk;)I

    move-result v2

    invoke-static {v2}, Lcom/agc/LensSettings;->getZslFrameCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhq;->o:Ldhk;

    invoke-static {v1}, Lcom/DeveloperOptions;->getInt(Ldhk;)I

    move-result v2

    invoke-static {v2}, Lcom/agc/LensSettings;->getZslFrameCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhq;->e:Ldhk;

    invoke-static {v1}, Lcom/DeveloperOptions;->getInt(Ldhk;)I

    move-result v2

    invoke-static {v2}, Lcom/agc/LensSettings;->getZslFrameCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhy;->d:Ldhk;

    invoke-static {v1}, Lcom/DeveloperOptions;->getInt(Ldhk;)I

    move-result v2

    invoke-static {v2}, Lcom/agc/LensSettings;->getZslFrameCount(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, LAGC;->setDeveloperSettingsNonPixel()V

    :cond_0
    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->ah:Ldhj;

    invoke-static {}, Lagc/Agc;->isTeleLens()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->ap:Ldhj;

    invoke-static {}, Lagc/Agc;->ultraTeleZoomRatioFacingBack()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    const-string v0, "lib_max_exp_ms_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    sget-object v2, LAGC;->gcaConfig:Ldit;

    sget-object v3, Ldhq;->B:Ldhj;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    :cond_1
    const-string v0, "lib_shasta_max_exp_ms_key"

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->N:Ldhj;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    :cond_2
    return-void
.end method

.method public static setDeveloperSettingsNonPixel()V
    .locals 6

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCamera()Lcom/agc/Camera;

    move-result-object v0

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldgu;->aj:Ldhj;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldif;->d:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldgu;->ad:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldgu;->ae:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldgu;->Y:Ldhj;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldih;->b:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhh;->g:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldho;->cc:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldho;->cb:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldho;->bX:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhg;->n:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->as:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->z:Ldhj;

    invoke-virtual {v1, v2, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->R:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->T:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->ar:Ldhj;

    invoke-virtual {v1, v2, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->y:Ldhj;

    const-string v5, "camera.cuttle.motion_metadata"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->Q:Ldhj;

    const-string v5, "SABRE_ALLOWED"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->S:Ldhj;

    const-string v5, "camera.wiener_force"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->L:Ldhj;

    const-string v5, "camera.shasta_zsl"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->K:Ldhj;

    const-string v5, "camera.shasta_psl"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldib;->F:Ldhj;

    const-string v5, "camera.gouda.shasta_zsl"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhw;->W:Ldhj;

    const-string v5, "camera.mts_gpu_yuv"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhw;->s:Ldhj;

    const-string v5, "camera.mts_fast_hdr"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhw;->n:Ldhj;

    const-string v5, "camera.mts_4k"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldgu;->t:Ldhj;

    const-string v5, "camcorder.trk_yuv"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldgu;->q:Ldhj;

    const-string v5, "camcorder.codec_video"

    invoke-static {v5}, Lagc/Agc;->devSetting(Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldhq;->ao:Ldhj;

    invoke-virtual {v0}, Lcom/agc/Camera;->isRaw10Supported()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldic;->a:Ldhk;

    invoke-static {}, Lagc/Agc;->isSamsExynosDevice()Z

    move-result v5

    xor-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Ldit;->q(Ldhk;Ljava/lang/Integer;)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldho;->bn:Ldhj;

    invoke-virtual {v0}, Lcom/agc/Camera;->isLogical()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldho;->ag:Ldhj;

    invoke-virtual {v0}, Lcom/agc/Camera;->isLogical()Z

    move-result v5

    invoke-virtual {v1, v2, v5}, Ldit;->u(Ldhj;Z)V

    sget-object v1, LAGC;->gcaConfig:Ldit;

    sget-object v2, Ldho;->ai:Ldhj;

    invoke-virtual {v0}, Lcom/agc/Camera;->isLogical()Z

    move-result v0

    invoke-virtual {v1, v2, v0}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhu;->i:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhw;->q:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->am:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhh;->f:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhf;->b:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->az:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldgu;->N:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldgu;->V:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldgu;->W:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldgu;->X:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldgu;->O:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldgu;->Z:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldgu;->p:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldgu;->o:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->aa:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->aP:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->aW:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->bJ:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->X:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldho;->Y:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->E:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhh;->e:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldil;->c:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldil;->d:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhh;->c:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhc;->c:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhc;->d:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhc;->e:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhc;->f:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhc;->g:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhc;->h:Ldhj;

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhc;->i:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->q:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->s:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->i:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldib;->f:Ldhj;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldit;->t(Ldhj;Ljava/lang/Float;)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhv;->g:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhv;->i:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhv;->j:Ldhj;

    invoke-virtual {v0, v1, v4}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhv;->k:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    sget-object v0, LAGC;->gcaConfig:Ldit;

    sget-object v1, Ldhv;->l:Ldhj;

    invoke-virtual {v0, v1, v3}, Ldit;->u(Ldhj;Z)V

    return-void
.end method

.method public static setSensorISO(Lkou;)V
    .locals 1

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sput p0, Lcom/Globals;->ISOsystem:I

    return-void
.end method

.method public static setShasta(Lkou;Lcom/google/googlex/gcam/ShotParams;Z)V
    .locals 2

    const-string p2, "pref_shasta_key"

    invoke-static {p2}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p2

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_GREEN_SPLIT:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p0, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    if-lez v0, :cond_0

    mul-float/2addr p0, p2

    :cond_0
    iget-wide v0, p1, Lcom/google/googlex/gcam/ShotParams;->a:J

    const/4 p2, 0x1

    invoke-static {v0, v1, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    iget-wide v0, p1, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v0, v1, p1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_factor_set(JLcom/google/googlex/gcam/ShotParams;F)V

    iget-wide v0, p1, Lcom/google/googlex/gcam/ShotParams;->a:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_force_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    :cond_1
    return-void
.end method

.method public static setShotMaxISO(Lkli;)V
    .locals 2

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_SENSITIVITY_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v0}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v1}, Lkli;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const/16 p0, 0x184

    :goto_0
    int-to-float p0, p0

    int-to-float v0, v0

    div-float/2addr p0, v0

    sput p0, LAGC;->sMaxISO:F

    const-string v0, "setShotMaxISO"

    invoke-static {v0, p0}, Lcom/agc/Log;->w(Ljava/lang/Object;F)I

    return-void
.end method
