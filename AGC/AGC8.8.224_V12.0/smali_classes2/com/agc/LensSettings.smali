.class public Lcom/agc/LensSettings;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkVideoOpmodeEnabled(Z)Z
    .locals 1

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    const-string p0, "pref_enable_operation_mode_key"

    invoke-static {p0, v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "pref_operation_mode_video_key"

    invoke-static {p0, v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "pref_operation_mode_motion_key"

    invoke-static {p0, v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "pref_enable_custom_operation_mode_key"

    invoke-static {p0, v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const-string p0, "pref_custom_operation_mode_video_key"

    invoke-static {p0, v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "pref_custom_operation_mode_motion_key"

    invoke-static {p0, v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static deviceProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/agc/LensSettings;->getPixelDeviceID()I

    move-result v0

    invoke-static {v0}, Lcom/agc/LensSettings;->getPixelDeviceName(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/agc/LogData$Device;->device:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Interface CameraID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCameraID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " => "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/agc/Log;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    return-object v1
.end method

.method public static forceGcamSensorId()Z
    .locals 1

    const-string v0, "pref_gcam_lens_logic_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getBitrate(I)I
    .locals 2

    const-string v0, "pref_bitrate_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    return p0

    :cond_0
    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    const p0, 0x2faf0800

    return p0

    :pswitch_1
    const p0, 0x2aea5400

    return p0

    :pswitch_2
    const p0, 0x2625a000

    return p0

    :pswitch_3
    const p0, 0x2160ec00

    return p0

    :pswitch_4
    const p0, 0x1c9c3800

    return p0

    :pswitch_5
    const p0, 0x17d78400

    return p0

    :pswitch_6
    const p0, 0x1312d000

    return p0

    :pswitch_7
    const p0, 0xe4e1c00

    return p0

    :pswitch_8
    const p0, 0x9896800

    return p0

    :pswitch_9
    const p0, 0x7270e00

    return p0

    :pswitch_a
    const p0, 0x5b8d800

    return p0

    :pswitch_b
    const p0, 0x4c4b400

    return p0

    :pswitch_c
    const p0, 0x44aa200

    return p0

    :pswitch_d
    const p0, 0x3d09000

    return p0

    :pswitch_e
    const p0, 0x3567e00

    return p0

    :pswitch_f
    const p0, 0x2dc6c00

    return p0

    :pswitch_10
    const p0, 0x2625a00

    return p0

    :pswitch_11
    const p0, 0x2255100

    return p0

    :pswitch_12
    const p0, 0x1e84800

    return p0

    :pswitch_13
    const p0, 0x1ab3f00

    return p0

    :pswitch_14
    const p0, 0x16e3600

    return p0

    :pswitch_15
    const p0, 0x1312d00

    return p0

    :pswitch_16
    const p0, 0xf42400

    return p0

    :pswitch_17
    const p0, 0xb71b00

    return p0

    :pswitch_18
    const p0, 0x7a1200

    return p0

    :pswitch_19
    const p0, 0x3d0900

    return p0

    :pswitch_1a
    const p0, 0xc3500

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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

.method public static getBlackLevel(Lkli;[F)[F
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [F

    const-string v2, "pref_black_level_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    goto/16 :goto_1

    :pswitch_1
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    goto/16 :goto_1

    :pswitch_2
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    goto :goto_1

    :pswitch_3
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    goto :goto_1

    :pswitch_4
    new-array v1, v0, [F

    fill-array-data v1, :array_4

    goto :goto_1

    :pswitch_5
    new-array v1, v0, [F

    fill-array-data v1, :array_5

    goto :goto_1

    :pswitch_6
    new-array v1, v0, [F

    fill-array-data v1, :array_6

    goto :goto_1

    :pswitch_7
    new-array v1, v0, [F

    fill-array-data v1, :array_7

    goto :goto_1

    :pswitch_8
    new-array v1, v0, [F

    fill-array-data v1, :array_8

    goto :goto_1

    :pswitch_9
    if-eqz p1, :cond_0

    :pswitch_a
    move-object v1, p1

    goto :goto_1

    :cond_0
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, v2}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/BlackLevelPattern;

    if-eqz p0, :cond_1

    :goto_0
    if-ge v3, v0, :cond_1

    rem-int/lit8 v2, v3, 0x2

    div-int/lit8 v4, v3, 0x2

    invoke-virtual {p0, v2, v4}, Landroid/hardware/camera2/params/BlackLevelPattern;->getOffsetForIndex(II)I

    move-result v2

    int-to-float v2, v2

    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_b
    new-array v1, v0, [F

    const-string p0, "black_level_0_key"

    invoke-static {p0}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p0

    aput p0, v1, v3

    const-string p0, "black_level_1_key"

    invoke-static {p0}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x1

    aput p0, v1, v0

    const-string p0, "black_level_2_key"

    invoke-static {p0}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x2

    aput p0, v1, v0

    const-string p0, "black_level_3_key"

    invoke-static {p0}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result p0

    const/4 v0, 0x3

    aput p0, v1, v0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    invoke-static {v1, p1}, Lcom/agc/LensSettings;->getCorrectionBlackLevelDynamic([F[F)[F

    move-result-object v1

    :cond_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_b
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
        0x42800000    # 64.0f
    .end array-data

    :array_1
    .array-data 4
        0x42800000    # 64.0f
        0x42806666    # 64.2f
        0x42803333    # 64.1f
        0x42800000    # 64.0f
    .end array-data

    :array_2
    .array-data 4
        0x427f70a4    # 63.86f
        0x427fb852    # 63.93f
        0x427fb852    # 63.93f
        0x428047ae    # 64.14f
    .end array-data

    :array_3
    .array-data 4
        0x44800000    # 1024.0f
        0x44800000    # 1024.0f
        0x44800000    # 1024.0f
        0x44800000    # 1024.0f
    .end array-data

    :array_4
    .array-data 4
        0x44000000    # 512.0f
        0x44000000    # 512.0f
        0x44000000    # 512.0f
        0x44000000    # 512.0f
    .end array-data

    :array_5
    .array-data 4
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
        0x43800000    # 256.0f
    .end array-data

    :array_6
    .array-data 4
        0x43000000    # 128.0f
        0x43000000    # 128.0f
        0x43000000    # 128.0f
        0x43000000    # 128.0f
    .end array-data

    :array_7
    .array-data 4
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
        0x42c80000    # 100.0f
    .end array-data

    :array_8
    .array-data 4
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
        0x41800000    # 16.0f
    .end array-data
.end method

.method public static getCorrectionBlackLevelDynamic([F[F)[F
    .locals 6

    const-string v0, "pref_black_level_dynamic_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    const/4 v1, 0x4

    new-array v2, v1, [F

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, p0, v3

    aget v5, p1, v3

    sub-float v5, v4, v5

    mul-float/2addr v5, v0

    sub-float/2addr v4, v5

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static getExpastro(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 4

    const-string v0, "pref_expastro_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-static {}, Lagc/Agc;->isGoogleDevice()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x46fa0000    # 32000.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p0

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "=>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->expastro:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    const-string p0, "getExpastro"

    invoke-static {p0, v1}, Lcom/agc/Log;->e(Ljava/lang/Object;Ljava/lang/Object;)I

    return-object v1
.end method

.method public static getExpcomp(I)I
    .locals 2

    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "pref_expcomp_key"

    goto :goto_0

    :cond_0
    const-string v0, "pref_expcomp_ns_key"

    goto :goto_0

    :cond_1
    const-string v0, "pref_expcomp_portrait_key"

    :goto_0
    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move p0, v0

    :goto_1
    return p0
.end method

.method public static getFixResolution(I)I
    .locals 1

    const-string v0, "pref_fix_resolution_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lagc/Agc;->getFixResolution(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getFrameCount(I)I
    .locals 6

    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, "lib_pref_frame_count_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "pref_frame_count_key"

    goto :goto_0

    :pswitch_0
    const-string v0, "pref_frame_count_oneshot_key"

    goto :goto_0

    :pswitch_1
    const-string v0, "pref_frame_count_astro_key"

    :goto_0
    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :pswitch_2
    const-string v0, "lib_pref_frame_count_ns_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "pref_frame_count_ns_key"

    goto :goto_0

    :cond_0
    :goto_1
    if-nez v1, :cond_1

    move v1, p0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "=>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "getFrameCount"

    invoke-static {v5, v2}, Lcom/agc/Log;->e(Ljava/lang/Object;Ljava/lang/Object;)I

    sget-object v2, Lcom/Globals;->mParameters:Lcom/Parameters;

    iput v1, v2, Lcom/Parameters;->frameCount:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->frameCount:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getGoudaDefaultZoom(F)F
    .locals 2

    const-string v0, "lib_gouda_default_zoom_key"

    invoke-static {v0, p0}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v1, v0, p0

    if-eqz v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method public static getHardwareLevel(I)I
    .locals 4

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "HUAWEI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string v0, "pref_c2a_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v1

    :cond_1
    if-nez v1, :cond_2

    move v1, p0

    :cond_2
    const/4 v0, 0x6

    if-ne v1, v0, :cond_3

    const/4 v1, 0x3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/agc/LogData$HardwareLevel;->format(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " => "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Lcom/agc/LogData$HardwareLevel;->format(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Hardware Level:"

    invoke-static {v3, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;Ljava/lang/Object;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/agc/LogData$HardwareLevel;->format(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Lcom/agc/LogData$HardwareLevel;->format(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/agc/LogData$Device;->hardwareLevel:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v1
.end method

.method public static getHdrModel(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x1

    invoke-static {p0}, Lagc/Agc;->getDefaultDeviceProperties(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "lib_pref_model_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_model_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-lez v0, :cond_2

    invoke-static {v0}, Lcom/PixelDevice;->getName(I)Lcom/PixelDevice;

    move-result-object v0

    invoke-virtual {v0}, Lcom/PixelDevice;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, p0

    :goto_1
    sput-object v0, Lcom/agc/LogData$Device;->model:Ljava/lang/String;

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDR+ Model CameraID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCameraID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " => "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/agc/Log;->i(Ljava/lang/Object;Ljava/lang/Object;)I

    return-object v0
.end method

.method public static getImageFormat()I
    .locals 1

    const-string v0, "pref_raw_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lagc/Agc;->getImageFormat(I)I

    move-result v0

    return v0
.end method

.method public static getImageFormatArr([I)[I
    .locals 2

    invoke-static {}, Lcom/agc/LensSettings;->getImageFormat()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    new-array v0, p0, [I

    fill-array-data v0, :array_0

    :goto_0
    const-string p0, "getImageFormatArr"

    invoke-static {p0, v0}, Lcom/agc/Log;->i(Ljava/lang/Object;[I)I

    return-object v0

    nop

    :array_0
    .array-data 4
        0x25
        0x26
        0x20
        0x23
    .end array-data
.end method

.method public static getInitialZoom(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "lib_initial_zoom_key"

    invoke-static {v1, v0}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getLensInfoFocusDistance(Ljava/lang/String;Landroid/util/Range;)Landroid/util/Range;
    .locals 3

    const-string v0, "pref_minimum_focus_distance_key"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-static {}, Lagc/Agc;->isXiaomi13Pro()Z

    move-result v0

    const-string v1, "2"

    if-eqz v0, :cond_3

    const-string v0, "3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p0, 0x413a0be8

    :goto_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p0, 0x41eb4b4a

    goto :goto_1

    :cond_2
    const-string v0, "7"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x4112c9fc

    goto :goto_1

    :cond_3
    invoke-static {}, Lagc/Agc;->isXiaomi14()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p0, 0x41480000    # 12.5f

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const p0, 0x4140cccd    # 12.05f

    goto :goto_1

    :cond_5
    :goto_2
    return-object p1
.end method

.method public static getLongExposureImageFormat(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLongExposureImageFormat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " => "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    return v0
.end method

.method public static getManualVideoResHeight()I
    .locals 2

    const-string v0, "pref_manual_video_res_height_key"

    const/16 v1, 0x1e00

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getManualVideoResWidth()I
    .locals 2

    const-string v0, "pref_manual_video_res_width_key"

    const/16 v1, 0x10e0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxBracketingFrames()I
    .locals 2

    const-string v0, "pref_max_bracketing_frames_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMaxShortFrames()I
    .locals 2

    const-string v0, "pref_max_short_frames_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMerge(I)I
    .locals 2

    const-string v0, "pref_merge_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p0, v0, -0x1

    :cond_0
    return p0
.end method

.method public static getMicroVideo()I
    .locals 2

    const-string v0, "pref_micro_video_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMicroVideoHeight()I
    .locals 3

    invoke-static {}, Lcom/agc/LensSettings;->getMicroVideo()I

    move-result v0

    const/16 v1, 0x1e0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x870

    return v0

    :cond_1
    const/16 v0, 0x438

    return v0

    :cond_2
    const/16 v0, 0x2d0

    return v0

    :cond_3
    const-string v0, "pref_micro_video_height_key"

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMicroVideoWeight()I
    .locals 3

    invoke-static {}, Lcom/agc/LensSettings;->getMicroVideo()I

    move-result v0

    const/16 v1, 0x280

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0xf00

    return v0

    :cond_1
    const/16 v0, 0x780

    return v0

    :cond_2
    const/16 v0, 0x500

    return v0

    :cond_3
    const-string v0, "pref_micro_video_width_key"

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMinBracketingFrames()I
    .locals 2

    const-string v0, "pref_min_bracketing_frames_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getMinShortFrames()I
    .locals 2

    const-string v0, "pref_min_short_frames_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOverrideTargetFps()Z
    .locals 2

    const-string v0, "pref_vffps_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getPckImageFormat(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPckImageFormat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " => "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    return v0
.end method

.method public static getPixelDeviceID()I
    .locals 2

    const-string v0, "pref_device_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v1

    :cond_0
    return v1
.end method

.method public static getPixelDeviceName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/agc/LensSettings;->getPixelDeviceID()I

    move-result v0

    invoke-static {v0}, Lcom/agc/LensSettings;->getPixelDeviceName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPixelDeviceName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lagc/Agc;->getDefaultDeviceProperties(I)Ljava/lang/String;

    move-result-object v0

    if-lez p0, :cond_0

    invoke-static {p0}, Lcom/PixelDevice;->getName(I)Lcom/PixelDevice;

    move-result-object p0

    invoke-virtual {p0}, Lcom/PixelDevice;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getPortraitImageFormat(I)I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPortraitImageFormat "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " => "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->w(Ljava/lang/Object;)I

    return v0
.end method

.method public static getSabre(Z)Z
    .locals 3

    const-string v0, "pref_sabre_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v1

    :cond_1
    :goto_0
    return p0
.end method

.method public static getSensorInfoColorFilter(I)I
    .locals 1

    const-string v0, "pref_sensor_color_filter_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, v0, -0x1

    :goto_0
    return p0
.end method

.method public static getSensorInfoColorFilter()Ljava/lang/Integer;
    .locals 1

    const-string v0, "pref_sensor_color_filter_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static getShasta()Z
    .locals 2

    const-string v0, "pref_shasta_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getSlowMotion4x()I
    .locals 2

    const-string v0, "pref_slow4x_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x78

    :cond_0
    return v0
.end method

.method public static getSlowMotion8x()I
    .locals 2

    const-string v0, "pref_slow8x_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xf0

    :cond_0
    return v0
.end method

.method public static getStreamConfig()I
    .locals 5

    invoke-static {}, Lagc/Agc;->getSMode()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb

    if-eq v0, v2, :cond_5

    packed-switch v0, :pswitch_data_0

    const-string v2, "pref_opmode_photo_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :pswitch_0
    const-string v2, "pref_opmode_ns_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v3, v1, :cond_9

    const-string v2, "pref_manual_opmode_ns_key"

    goto :goto_1

    :pswitch_1
    const-string v2, "pref_opmode_slowmo_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v1, :cond_9

    const-string v2, "pref_manual_opmode_slowmo_key"

    goto :goto_1

    :pswitch_2
    const-string v2, "pref_opmode_portrait_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    if-ne v3, v1, :cond_9

    const-string v2, "pref_manual_opmode_portrait_key"

    goto :goto_1

    :pswitch_3
    const-string v2, "pref_opmode_video_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    if-ne v3, v1, :cond_9

    const-string v2, "pref_manual_opmode_video_key"

    goto :goto_1

    :cond_4
    if-ne v3, v1, :cond_9

    const-string v2, "pref_manual_opmode_photo_key"

    goto :goto_1

    :cond_5
    const-string v2, "pref_opmode_amber_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    if-ne v3, v1, :cond_9

    const-string v2, "pref_manual_opmode_amber_key"

    goto :goto_1

    :cond_7
    const-string v2, "pref_opmode_time_lapse_key"

    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_8

    :goto_0
    invoke-static {v3}, Lagc/Agc;->getStreamConfig(I)I

    move-result v3

    goto :goto_2

    :cond_8
    if-ne v3, v1, :cond_9

    const-string v2, "pref_manual_opmode_time_lapse_key"

    :goto_1
    invoke-static {v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v3

    :cond_9
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamConfig sMode:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " key:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->d(Ljava/lang/Object;)I

    sput v3, Lcom/agc/LogData$Device;->opMode:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getStreamMode()I
    .locals 2

    invoke-static {}, Lcom/agc/LensSettings;->getStreamConfig()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "getStreamMode"

    invoke-static {v1, v0}, Lcom/agc/Log;->d(Ljava/lang/Object;I)I

    sput v0, Lcom/agc/LogData$Device;->streamOpMode:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return v0
.end method

.method public static getTargetFps()Landroid/util/Range;
    .locals 3

    const-string v0, "pref_vffps_low_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const-string v1, "pref_vffps_high_key"

    invoke-static {v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v2
.end method

.method public static getUpscale(I)I
    .locals 3

    const-string v0, "pref_upscaling_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getBoolValue(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/high16 v0, 0x41a00000    # 20.0f

    const-string v2, "pref_manual_upscale_key"

    invoke-static {v2, v0}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    goto :goto_0

    :cond_0
    const-string v0, "lib_pref_upscale_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;)F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "pref_upscale_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefFloatValue(Ljava/lang/String;)F

    move-result v0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    int-to-float p0, p0

    mul-float/2addr p0, v0

    const/high16 v0, 0x41200000    # 10.0f

    div-float/2addr p0, v0

    float-to-int p0, p0

    :cond_3
    return p0
.end method

.method public static getViewfinderFormat(I)I
    .locals 1

    const-string p0, "pref_preview_key"

    invoke-static {p0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lagc/Agc;->getViewfinderFormat()I

    move-result p0

    :cond_0
    const-string v0, "getViewfinderFormat"

    invoke-static {v0, p0}, Lcom/agc/Log;->w(Ljava/lang/Object;I)I

    sput p0, Lcom/agc/LogData$Device;->preview:I

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    return p0
.end method

.method public static getWhiteLevel(I)I
    .locals 1

    const-string v0, "pref_white_level_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCamera()Lcom/agc/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/Camera;->isRaw10Supported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p0, 0x3ff

    goto :goto_0

    :cond_0
    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method

.method public static getWhiteLevel(Lkli;Lkou;)I
    .locals 2

    const-string v0, "pref_white_level_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x3ff

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0xfff

    goto :goto_1

    :pswitch_1
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->SENSOR_DYNAMIC_WHITE_LEVEL:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, p0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :pswitch_2
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {p0, p1}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    :pswitch_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method public static getZoomRatio(Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const-string v1, "lib_zoom_ratio_key"

    invoke-static {v1, v0}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getZslFrameCount(I)I
    .locals 2

    const-string v0, "lib_pref_frame_count_zsl_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxProfilePrefIntValue(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pref_frame_count_zsl_key"

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    const-string v0, "getZslFrameCount"

    invoke-static {v0, p0}, Lcom/agc/Log;->i(Ljava/lang/Object;I)I

    return p0
.end method

.method public static isOpenAWB(Z)Z
    .locals 2

    const-string p0, "pref_awb_switch_key"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/Utils/Pref;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static isSupportLEVEL3()Z
    .locals 3

    const-string v0, "pref_c2a_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    const/4 v0, 0x1

    if-eqz v2, :cond_1

    if-eq v2, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/Utils/Lens;->getCurrentCamera()Lcom/agc/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/agc/Camera;->isLevel3Supported()Z

    move-result v1

    :cond_2
    :goto_0
    sput-boolean v1, Lcom/agc/LogData$Device;->isSupportLEVEL3:Z

    invoke-static {}, Lcom/agc/LogData$Device;->log()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsSupportLEVEL3 CameraID:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/Utils/Lens;->getCurrentCameraID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/agc/Log;->i(Ljava/lang/Object;Z)I

    return v1
.end method

.method public static needFixAWBGains()Z
    .locals 1

    const-string v0, "pref_fix_awbgains_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lagc/Agc;->needFixAWBGains()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static needFixResolution()Z
    .locals 3

    invoke-static {}, Lagc/Agc;->needFixResolution()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_fix_aspect_ratio_key"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1
.end method

.method public static needFixSpatialGainMap()Z
    .locals 2

    const-string v0, "pref_fix_spatial_gain_map_key"

    invoke-static {v0}, Lcom/Utils/Pref;->getAuxPrefIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lagc/Agc;->getFixSpatialGainMap()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDefaultZoomFloat()Ljava/lang/Float;
    .locals 3

    const-string v0, "lib_initial_zoom_key"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/Utils/Pref;->getAuxProfilePrefFloatValue(Ljava/lang/String;F)F

    move-result v0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
