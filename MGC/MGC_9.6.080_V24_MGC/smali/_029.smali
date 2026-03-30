.class public final L_029;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static AupdnZxxfennyDPq([[[F)Lcom/google/googlex/gcam/SpatialGainMap;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, L_029;->SHADING_MAP([[[F)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static COLOR_TUNE_WB(Ljava/lang/Object;)V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_18

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, L_029;->cmlBkGvFCZSMXnRu(Lpro;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput v2, Lcom/ColorTune;->WB2:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    sput v2, Lcom/ColorTune;->WB3:F

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2}, L_029;->GWkeuZlGFRSomynN(Landroid/util/Rational;)F

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aget-object v2, v1, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2}, L_029;->rEZslOPOyUzWEcGC(Landroid/util/Rational;)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    check-cast p0, Lpro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput v2, Lcom/ColorTune;->WB1:F

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x13

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    aget-object v2, v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_16
    check-cast v1, [Landroid/util/Rational;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    :goto_19
    invoke-static {v2}, L_029;->ZOIKpIhheMuHbCkf(Landroid/util/Rational;)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    aget-object v2, v1, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final CUSTOM_SHADING_MAP(IIFF[FIIIF)Lcom/google/googlex/gcam/SpatialGainMap;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0}, L_029;->AupdnZxxfennyDPq([[[F)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    invoke-static/range {p0 .. p8}, L_029;->QsqmXCcpOkjsZhGH(IIFF[FIIIF)[[[F

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static DgjoZUGRAUglZLxw(Lcom/google/googlex/gcam/FloatArray4;IF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static final FIX_SATURATION(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, L_029;->FbCvIoKibEEypShx(Lpro;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-le p1, v1, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v1, 0x334

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object p0, v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x3f8147ae    # 1.01f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_f

    nop

    :goto_a
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_d
    if-le p1, v1, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_e
    goto :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-gt p1, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    if-gtz p1, :cond_4

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    move-object p0, v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    if-le p1, v3, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 v1, 0x6400

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_19
    const/16 v3, 0x78

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-le p1, v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-le p1, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_f

    nop

    nop

    :goto_1d
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_1e
    const/16 v1, 0x654

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1f
    if-gtz v0, :cond_8

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object p0, v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-le p1, v3, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    move-object p0, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_28

    nop

    nop

    :goto_25
    new-array v0, v2, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v1, 0x8ac

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_27
    aget v0, p0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_28
    const/16 v1, 0xdc

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_29
    array-length v0, p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p0, [F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2b
    new-array v0, v2, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_5

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2c
    if-gt p1, v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v3, 0x4c4

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2e
    if-gt p1, v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object p0, v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_30
    const/16 v3, 0xc62

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_31
    const/16 v3, 0x1a4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_32
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p1}, L_029;->siYJxcgBcptZKQcL(Ljava/lang/Integer;)I

    move-result p1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-array v0, v2, [F

    nop

    nop

    fill-array-data v0, :array_4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-gt p1, v1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_c
    goto/32 :goto_42

    nop

    nop

    :goto_38
    new-array v0, v2, [F

    nop

    nop

    nop

    fill-array-data v0, :array_6

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v1, 0x46

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-object p0

    nop

    nop

    :array_0
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40960000    # -0.9140625f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_1
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40940000    # -0.921875f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_2
    .array-data 4
        0x3fd60000    # 1.671875f
        -0x40940000    # -0.921875f
        0x3e800000    # 0.25f
        -0x41e80000    # -0.1484375f
        0x3f890000    # 1.0703125f
        0x3da00000    # 0.078125f
        0x3dc00000    # 0.09375f
        -0x40980000    # -0.90625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_3
    .array-data 4
        0x3fd10000    # 1.6328125f
        -0x40b60000    # -0.7890625f
        0x3e200000    # 0.15625f
        -0x41e00000    # -0.15625f
        0x3f930000
        0x3c000000    # 0.0078125f
        0x3da00000    # 0.078125f
        -0x40ac0000    # -0.828125f
        0x3fe00000    # 1.75f
    .end array-data

    :array_4
    .array-data 4
        0x3fd40000    # 1.65625f
        -0x40a40000    # -0.859375f
        0x3e500000    # 0.203125f
        -0x41e00000    # -0.15625f
        0x3f8e0000    # 1.109375f
        0x3d400000    # 0.046875f
        0x3db00000    # 0.0859375f
        -0x40a20000    # -0.8671875f
        0x3fe50000    # 1.7890625f
    .end array-data

    :array_5
    .array-data 4
        0x3fd30000    # 1.6484375f
        -0x40a80000    # -0.84375f
        0x3e480000    # 0.1953125f
        -0x41e00000    # -0.15625f
        0x3f900000    # 1.125f
        0x3d000000    # 0.03125f
        0x3da00000    # 0.078125f
        -0x40a40000    # -0.859375f
        0x3fe30000    # 1.7734375f
    .end array-data

    :array_6
    .array-data 4
        0x3fd20000    # 1.640625f
        -0x40ae0000    # -0.8203125f
        0x3e380000    # 0.1796875f
        -0x41e00000    # -0.15625f
        0x3f920000    # 1.140625f
        0x3cc00000    # 0.0234375f
        0x3da00000    # 0.078125f
        -0x40a80000    # -0.84375f
        0x3fe20000    # 1.765625f
    .end array-data

    :array_7
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x40900000    # -0.9375f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40960000    # -0.9140625f
        0x3fea0000    # 1.828125f
    .end array-data

    :array_8
    .array-data 4
        0x3fd60000    # 1.671875f
        -0x40940000    # -0.921875f
        0x3e800000    # 0.25f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40960000    # -0.9140625f
        0x3fe90000    # 1.8203125f
    .end array-data

    :array_9
    .array-data 4
        0x3fd70000    # 1.6796875f
        -0x408e0000    # -0.9453125f
        0x3e840000    # 0.2578125f
        -0x41e80000    # -0.1484375f
        0x3f880000    # 1.0625f
        0x3db00000    # 0.0859375f
        0x3dc00000    # 0.09375f
        -0x40940000    # -0.921875f
        0x3fea0000    # 1.828125f
    .end array-data

    :goto_3b
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object p0, v0

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-gt p1, v3, :cond_d

    nop

    goto/32 :goto_3e

    nop

    :cond_d
    goto/32 :goto_4d

    nop

    nop

    :goto_40
    move-object p0, v0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_41
    if-gt p1, v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_42
    if-le p1, v3, :cond_f

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_43
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_47
    if-gt p1, v1, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move-object p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_32

    nop

    :goto_4a
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4c
    if-gt p1, v3, :cond_12

    nop

    goto/32 :goto_17

    nop

    :cond_12
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_4d
    if-le p1, v1, :cond_13

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_13
    goto/32 :goto_5b

    nop

    nop

    :goto_4e
    if-le p1, v1, :cond_14

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_36

    nop

    nop

    :goto_4f
    if-ltz v1, :cond_15

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_50
    move-object p0, v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-gt p1, v1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_52
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_f

    nop

    :goto_54
    goto/32 :goto_10

    nop

    nop

    :goto_55
    new-array v0, v2, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_9

    goto/32 :goto_48

    nop

    nop

    :goto_56
    new-array v0, v2, [F

    nop

    nop

    nop

    fill-array-data v0, :array_8

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_58
    if-le p1, v1, :cond_17

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_59
    new-array v0, v2, [F

    nop

    nop

    nop

    fill-array-data v0, :array_3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5a
    new-array v0, v2, [F

    nop

    fill-array-data v0, :array_7

    goto/32 :goto_15

    nop

    nop

    :goto_5b
    new-array v0, v2, [F

    nop

    nop

    nop

    fill-array-data v0, :array_2

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5c
    new-array v0, v2, [F

    nop

    nop

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5d
    const/16 v1, 0x898

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/16 v2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast p1, Lpro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static FbCvIoKibEEypShx(Lpro;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static GWkeuZlGFRSomynN(Landroid/util/Rational;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static HJFiDToHKiciJUaz(Lcom/google/googlex/gcam/FloatArray9;IF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/gcam/FloatArray9;->b(IF)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static JiUccCrBNhFThNSb(Ljava/lang/Class;[I)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static KaYpjlRWhFlzHpfI(FF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static MI_COLOR_CORRECTION_GAINS(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2, v1, v5}, L_029;->MlOmzrdotfCgHHwn(Lcom/google/googlex/gcam/FloatArray4;IF)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    aget-object p0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    div-float p0, v5, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4
    invoke-static {p0}, L_029;->yXhcvFjenVdsfdRr(Landroid/util/Rational;)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    check-cast v0, [Landroid/util/Rational;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v2, v1, p0}, L_029;->veddMuxfNtnQZDxe(Lcom/google/googlex/gcam/FloatArray4;IF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, L_029;->OUiuNCnWOaGkAiMU(Landroid/util/Rational;)F

    move-result p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v0}, L_029;->aSCcLIZisOOwgPmA(Lpro;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "CaptureResult missing COLOR_CORRECTION_GAINS FIX."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_f
    invoke-direct {v2}, Lcom/google/googlex/gcam/FloatArray4;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    aget-object p0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    const v1, 0x7

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "ERROR"

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    check-cast p0, Lpro;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    const v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1a
    move-object v0, v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    new-instance v2, Lcom/google/googlex/gcam/FloatArray4;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2, v1, v5}, L_029;->NlYdESfHdHxcGTso(Lcom/google/googlex/gcam/FloatArray4;IF)V

    goto/32 :goto_2

    nop

    nop

    :goto_1d
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_NEUTRAL_COLOR_POINT:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1f
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_12

    nop

    nop

    :goto_22
    invoke-static {v2, v1, p0}, L_029;->DgjoZUGRAUglZLxw(Lcom/google/googlex/gcam/FloatArray4;IF)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_24
    div-float p0, v5, p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0, v1}, L_029;->PDnbTaZdPuMVqXpX(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lez v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_29
    invoke-static {v2, v1, v0}, L_029;->VJUgxdsNQVdXFZOx(Lcom/google/googlex/gcam/FloatArray4;IF)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MlOmzrdotfCgHHwn(Lcom/google/googlex/gcam/FloatArray4;IF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static NlYdESfHdHxcGTso(Lcom/google/googlex/gcam/FloatArray4;IF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static OUiuNCnWOaGkAiMU(Landroid/util/Rational;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static PDnbTaZdPuMVqXpX(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static QQlQccTSdUUNfdsP(II)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_SpatialGainMap__SWIG_2(II)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public static QsqmXCcpOkjsZhGH(IIFF[FIIIF)[[[F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {p0 .. p8}, L_029;->ShadingMap(IIFF[FIIIF)[[[F

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static SHADING_MAP([[[F)Lcom/google/googlex/gcam/SpatialGainMap;
    .locals 11

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget-object v10, v10, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    if-lt v4, v8, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v5, 0x0

    nop

    nop

    :goto_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    aget-object v0, p0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v2, Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    array-length v7, p0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    aget-object v10, p0, v5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length v9, v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static/range {v0 .. v6}, L_029;->ZydfCZulPvdjXptR(JLcom/google/googlex/gcam/SpatialGainMap;IIIF)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v4, 0x0

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    array-length v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    :goto_16
    if-lt v3, v9, :cond_2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    goto/32 :goto_26

    nop

    nop

    :goto_1b
    return-object v2

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v0, p0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1e
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    iget-wide v0, v2, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    goto :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_27

    nop

    nop

    :goto_22
    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/SpatialGainMap;-><init>(J)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v9, v8}, L_029;->QQlQccTSdUUNfdsP(II)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-lt v5, v7, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    nop

    :goto_29
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2a
    aget v6, v10, v3

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public static ShadingMap(IIFF[FIIIF)[[[F
    .locals 20

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_1
    aput v3, v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    aput v0, v4, v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v9, v8}, L_029;->qUzEVVKbsKOBrGdl(FF)F

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    mul-float v12, v12, v10

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    mul-float v8, v7, v7

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_6
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_7
    invoke-static {v1, v0}, L_029;->kFugtrITWYBlAWcs(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v11, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, L_029;->aQqnoSxUGruCbMKB(D)D

    move-result-wide v0

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    mul-float v16, v16, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_b
    move/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_c
    const/4 v13, 0x0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v5, v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_10
    int-to-float v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_11
    double-to-float v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-float v10, v10, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_15
    sub-float v10, v9, p8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_17
    const/4 v5, 0x1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    float-to-double v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_19
    check-cast v4, [[[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    aget-object v18, v18, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_d

    nop

    :goto_1c
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-float v10, v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sub-int v8, p5, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    move/from16 v17, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_21
    int-to-float v8, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_24
    mul-float v17, v15, v15

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_25
    const-string v1, "channelGains must have 4 elements (R, G_even, G_odd, B)"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    move/from16 v1, p1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_27
    add-float v16, p3, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v10, v8}, L_029;->KaYpjlRWhFlzHpfI(FF)F

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_6a

    nop

    nop

    :goto_2a
    div-float v1, v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2b
    if-lt v13, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_1
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2c
    move/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-float/2addr v6, v8

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_30
    int-to-float v9, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_32
    int-to-float v15, v14

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_33
    add-float v0, v17, v18

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_34
    move/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_35
    aget v12, v2, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v7, v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move/from16 v1, p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_39
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    mul-float v19, v16, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3b
    sub-float/2addr v9, v7

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3c
    int-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3e
    invoke-static {v8, v9}, L_029;->vRNrWfEoNWmVgFxx(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3f
    sub-float v16, p2, p3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_41
    return-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_43
    div-float/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_44
    const/4 v14, 0x0

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto :goto_45

    nop

    nop

    :goto_47
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_3

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_3
    goto/32 :goto_69

    nop

    :goto_4a
    mul-float v6, v5, v5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4b
    move/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    aput v19, v18, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4e
    mul-float v18, v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_66

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    float-to-double v8, v6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_52
    sub-float/2addr v15, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_53
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_54
    move-object/from16 v2, p4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_55
    move/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_56
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_57
    new-array v4, v4, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_58
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_59
    const/4 v5, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5a
    sub-int v9, p7, p6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    move/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5c
    array-length v4, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_5e
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-lt v14, v0, :cond_4

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    throw v0

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_29

    nop

    nop

    :goto_62
    aput v1, v4, v5

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eq v4, v3, :cond_5

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_5
    goto/32 :goto_2e

    nop

    nop

    :goto_64
    div-float/2addr v8, v9

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    aget-object v18, v4, v11

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_68
    invoke-static {v5, v4}, L_029;->JiUccCrBNhFThNSb(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_55

    nop

    nop

    :goto_6b
    double-to-float v0, v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_6c
    div-float/2addr v7, v6

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static TRANSFORM_A([Landroid/util/Rational;)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    array-length v2, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_9
    aget-object v2, p0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    const v0, 0x3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    const v1, 0x1f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    goto :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v2}, L_029;->tSTseCfIXJimlnGC(Landroid/util/Rational;)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v0, 0x9

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static TRANSFORM_B([F)Ljava/lang/Object;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    const v1, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    aget v2, p0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    const v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lcom/google/googlex/gcam/FloatArray9;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    array-length v2, p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    if-lt v1, v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_13
    invoke-direct {v0}, Lcom/google/googlex/gcam/FloatArray9;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1, v2}, L_029;->HJFiDToHKiciJUaz(Lcom/google/googlex/gcam/FloatArray9;IF)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static VJUgxdsNQVdXFZOx(Lcom/google/googlex/gcam/FloatArray4;IF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZOIKpIhheMuHbCkf(Landroid/util/Rational;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ZydfCZulPvdjXptR(JLcom/google/googlex/gcam/SpatialGainMap;IIIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {p0 .. p6}, Lcom/google/googlex/gcam/GcamModuleJNI;->SpatialGainMap_WriteRggb(JLcom/google/googlex/gcam/SpatialGainMap;IIIF)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static aQqnoSxUGruCbMKB(D)D
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static aSCcLIZisOOwgPmA(Lpro;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static cmlBkGvFCZSMXnRu(Lpro;Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static kFugtrITWYBlAWcs(FF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static qUzEVVKbsKOBrGdl(FF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static rEZslOPOyUzWEcGC(Landroid/util/Rational;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static siYJxcgBcptZKQcL(Ljava/lang/Integer;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static tSTseCfIXJimlnGC(Landroid/util/Rational;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static vRNrWfEoNWmVgFxx(D)D
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xb

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop
.end method

.method public static veddMuxfNtnQZDxe(Lcom/google/googlex/gcam/FloatArray4;IF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/googlex/gcam/FloatArray4;->d(IF)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static yXhcvFjenVdsfdRr(Landroid/util/Rational;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
