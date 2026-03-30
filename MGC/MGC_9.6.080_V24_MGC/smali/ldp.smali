.class public final Lldp;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Ljava/lang/Byte;

.field private static final c:Ljava/lang/Byte;


# instance fields
.field public final a:Lkcs;

.field private final d:Ltbt;

.field private final e:Z

.field public final f:Lhoh;

.field private final g:Z

.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    sget-object v2, Lnyn;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lldp;->c:Ljava/lang/Byte;

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

    nop

    :goto_6
    if-nez v2, :cond_0

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    :goto_c
    sput-object v1, Lldp;->b:Ljava/lang/Byte;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    const v1, 0x13

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    :goto_15
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Ltbt;Lpnu;Lkcs;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "c2hhc3RhX2tleQ=="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lldp;->a:Lkcs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p2, Lcom/a;->camera_recompute_frame:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p2, Lpog;->a:Lpog;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p2, Lnne;->k:Lnne;

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

    :goto_8
    if-gtz p2, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Lldp;->h:I

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

    nop

    :goto_b
    const/4 p1, 0x0

    nop

    :goto_c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p1, Lcom/a;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-boolean p2, p0, Lldp;->g:Z

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    if-ne p1, p2, :cond_1

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p1, p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_11

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop

    :goto_15
    invoke-interface {p3}, Lpnu;->l()Lpog;

    move-result-object p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    sget p1, Lcom/a;->eg:I

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p2, p0, Lldp;->d:Ltbt;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Lldp;->f:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_17

    nop

    :goto_1d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean p1, p0, Lldp;->e:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget p1, Lcom/a;->ef:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p2}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Lqgk;Lcom/google/googlex/gcam/FrameRequest;Lpro;)Lmhz;
    .locals 19

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v7, v8, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FrameRequest__SWIG_1(JLcom/google/googlex/gcam/FrameRequest;)J

    move-result-wide v7

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_1
    if-gez v15, :cond_0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v10, v14}, Lcom/google/googlex/gcam/FloatArray4;->a(I)F

    move-result v14

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_3
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_OIS_DATA_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v14, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_5
    invoke-static {v7, v8, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_digital_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpl-float v6, v6, v16

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v12, Landroid/util/Rational;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_b
    new-instance v0, Lmhz;

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/FrameRequest;->e()Lcom/google/googlex/gcam/CyclopsParameters;

    move-result-object v6

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_d
    const-string v3, "ZmFjZV9kZXRlY3Rfa2V5"

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    mul-float/2addr v7, v9

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_11
    aget v14, v9, v5

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    cmpl-float v15, v15, v16

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_d5

    nop

    :goto_15
    goto/32 :goto_92

    nop

    nop

    :goto_16
    move-object v3, v6

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static/range {p1 .. p1}, Lqgk;->g(Lqgk;)Lqgk;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    aput-object v12, v7, v11

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v12}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v12

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v8, v12}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_b9

    nop

    nop

    :goto_1d
    goto/32 :goto_eb

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v4, v3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v3, Lnyn;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v4}, Lpnu;->k()Lpof;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_22
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_23
    cmp-long v7, v9, v12

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v9, v10}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_25
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v12, 0x0

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_c9

    nop

    nop

    :goto_28
    invoke-virtual {v10, v7}, Lcom/google/googlex/gcam/FloatArray4;->a(I)F

    move-result v7

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_29
    invoke-static {v9, v10, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->CyclopsParameters_apply_isp_tonemapping_get(JLcom/google/googlex/gcam/CyclopsParameters;)Z

    move-result v6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v12, v9, v13}, Landroid/util/Rational;-><init>(II)V

    goto/32 :goto_19

    nop

    nop

    :goto_2b
    invoke-static {v9, v10, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_rgb2rgb_get(JLcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/FrameRequest;->b()F

    move-result v7

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v4}, Ltbt;->r(Lpnu;)Ljava/lang/Integer;

    move-result-object v9

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_2e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    if-nez v13, :cond_2

    nop

    goto/32 :goto_da

    nop

    nop

    :cond_2
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-wide v9, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v12, "Y19jX21fcXVhbGl0eV9rZXk"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v0, v3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    :goto_34
    invoke-static {v9, v10, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatArray9_size(JLcom/google/googlex/gcam/FloatArray9;)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_35
    invoke-static {v2, v3}, Lcom/a;->ExpAnalogISODigitISOCorrector_desired(Lcom/google/googlex/gcam/FrameRequest;Lpro;)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v6, Lnym;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1, v6, v7}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_39
    cmp-long v10, v12, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v9, v10, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_IsValid(JLcom/google/googlex/gcam/AwbInfo;)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3b
    if-eqz v3, :cond_3

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_3c
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v9, :cond_4

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-object v0

    nop

    :goto_40
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_41
    add-long/2addr v13, v9

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-wide v13, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v9, v12}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_45
    move-object/from16 v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_46
    sget-object v6, Lnym;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_47
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v12, v13, v3, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->FloatArray9_get(JLcom/google/googlex/gcam/FloatArray9;I)F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-wide v9, v6, Lcom/google/googlex/gcam/CyclopsParameters;->a:J

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4b
    iget-wide v9, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4e
    iget-wide v12, v3, Lcom/google/googlex/gcam/FloatArray9;->a:J

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4f
    aget v7, v9, v7

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_50
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_51
    sget-object v4, Lsxd;->f:Lsxd;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_52
    if-eqz v3, :cond_5

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_53
    move-object v8, v10

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

    :goto_54
    invoke-static {v9, v10, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_awb_get(JLcom/google/googlex/gcam/FrameRequest;)J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_55
    sget-object v4, Lsxd;->c:Lsxd;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1, v6, v7}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_57
    goto/32 :goto_c

    nop

    nop

    :goto_58
    array-length v13, v3

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/16 v16, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5a
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_5b
    goto/16 :goto_9e

    nop

    nop

    :goto_5c
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    cmp-long v3, v9, v17

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-wide v12, v3, Lcom/google/googlex/gcam/AwbInfo;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_60
    const/16 v10, 0x9

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_61
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_62
    goto/32 :goto_40

    nop

    :goto_63
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_64
    move-object/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_65
    const/4 v11, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_66
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/16 v13, 0x2710

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_68
    goto/16 :goto_f4

    nop

    :goto_69
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-ge v13, v15, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_6b
    sget-object v8, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_6c
    invoke-direct {v0, v1, v3, v6}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_6d
    add-int/lit8 v12, v12, -0x1

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_6e
    if-ne v3, v4, :cond_8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, v6, v12}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_71
    cmp-long v3, v9, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_72
    invoke-virtual {v1, v7, v3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_73
    goto/32 :goto_10c

    nop

    nop

    :goto_74
    invoke-virtual {v1, v5, v8}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v4, v3}, Ltbt;->g(Lpro;)Lpnu;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_77
    sget-object v13, Lnym;->c:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {v6, v7, v2, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_focus_distance_diopters_set(JLcom/google/googlex/gcam/FrameRequest;F)V

    :goto_7a
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-wide v9, v3, Lcom/google/googlex/gcam/FloatArray9;->a:J

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

    :goto_7d
    iget-wide v7, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v2, 0x1

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    sget v7, Lcom/a;->sCorrectorDigital_desired_gain:F

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->BLACK_LEVEL_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_81
    invoke-static {v7, v9, v10}, Lrrf;->o(ZLjava/lang/String;I)V

    goto/32 :goto_f8

    nop

    nop

    :goto_82
    if-lez v4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    :cond_9
    goto/32 :goto_84

    nop

    nop

    nop

    :goto_83
    iget-wide v9, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_84
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_85
    new-instance v3, Lcom/google/googlex/gcam/FrameRequest;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_86
    if-ne v3, v4, :cond_a

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_a
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v12, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    :cond_b
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-eqz v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_d3

    nop

    nop

    :goto_8b
    sput v7, Lcom/a;->sCorrectorDigital_desired_gain:F

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    const-string v9, "ccm must have length %s."

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_8e
    invoke-static {v12, v13, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->AwbInfo_rggb_gains_get(JLcom/google/googlex/gcam/AwbInfo;)J

    move-result-wide v12

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    float-to-int v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_90
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_92
    new-instance v3, Lcom/google/googlex/gcam/AwbInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_93
    sget-object v0, Lnyn;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_94
    if-lt v11, v10, :cond_d

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-static {v9}, Ltbt;->f(F)J

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_96
    goto/16 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_a5

    nop

    nop

    :goto_98
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/FrameRequest;->b()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    new-instance v12, Landroid/hardware/camera2/params/RggbChannelVector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const/16 v3, 0x80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v1, v3, v8}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    move v7, v11

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_a2
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_a3
    iget-wide v6, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_a4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    new-instance v3, Landroid/hardware/camera2/params/ColorSpaceTransform;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_a7
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-interface {v3, v13}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v1, v8, v10}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    if-eqz v7, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_e
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-direct {v10, v12, v13, v11}, Lcom/google/googlex/gcam/FloatArray4;-><init>(JZ)V

    :goto_ac
    goto/32 :goto_99

    nop

    nop

    :goto_ad
    goto :goto_ac

    nop

    :goto_ae
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const/4 v15, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    goto/16 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v10, v13}, Lcom/google/googlex/gcam/FloatArray4;->a(I)F

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-static {v9, v10, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_try_to_lock_black_level_get(JLcom/google/googlex/gcam/FrameRequest;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_b4
    sget v3, Lcom/a;->ab:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-static {v3}, Lrrf;->Z(Ljava/util/Collection;)[F

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_b6
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_GAINS:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_b7
    iget-wide v9, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_b8
    invoke-static {v0, v1}, Lhhg;->O(Lhoh;Lqgk;)V

    :goto_b9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v1, v9, v12}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_bb
    invoke-static/range {p2 .. p2}, Lcom/google/googlex/gcam/FrameRequest;->c(Lcom/google/googlex/gcam/FrameRequest;)J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_bc
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-interface {v3, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_be
    iget-object v4, v0, Lldp;->d:Ltbt;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    const v12, 0x461c4000    # 10000.0f

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {v6, v7, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_analog_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_c1
    move-object/from16 v0, p0

    nop

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

    :goto_c2
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/FrameRequest;->b()F

    move-result v6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-static {v9}, Ltbt;->v(I)[I

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    if-gez v6, :cond_f

    nop

    nop

    goto/32 :goto_57

    nop

    :cond_f
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v1, v6, v3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-wide v9, v3, Lcom/google/googlex/gcam/AwbInfo;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    const-wide/16 v12, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/FrameRequest;->a()F

    move-result v5

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_ca
    sget-object v3, Lldp;->c:Ljava/lang/Byte;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_cb
    invoke-static {v13, v14, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_portrait_tet_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v10

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_cc
    sget v6, Lcom/a;->sCorrectorAnalog_desired_gain:F

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    sput v5, Lcom/a;->sCorrectorExposure_desired_time_ms:F

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_cf
    float-to-int v9, v9

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_d0
    invoke-direct {v12, v13, v14, v15, v7}, Landroid/hardware/camera2/params/RggbChannelVector;-><init>(FFFF)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-static {v3}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v3

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    move-object v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_d3
    sget-object v3, Lnyl;->k:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d4
    invoke-direct {v3, v9, v10, v11}, Lcom/google/googlex/gcam/AwbInfo;-><init>(JZ)V

    :goto_d5
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_d6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_d7
    new-instance v3, Lcom/google/googlex/gcam/FloatArray9;

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_d9
    aget v14, v3, v7

    nop

    nop

    nop

    nop

    :goto_da
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_db
    sget-object v9, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_dc
    sget-object v4, Lhmu;->a:Lhmo;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_dd
    iget-wide v9, v3, Lcom/google/googlex/gcam/AwbInfo;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    long-to-float v15, v9

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_df
    invoke-direct {v3, v7, v8, v2}, Lcom/google/googlex/gcam/FrameRequest;-><init>(JZ)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-direct {v3, v7}, Landroid/hardware/camera2/params/ColorSpaceTransform;-><init>([Landroid/util/Rational;)V

    goto/32 :goto_e3

    nop

    nop

    :goto_e1
    mul-float/2addr v9, v12

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e2
    const/4 v15, 0x4

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_e3
    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->COLOR_CORRECTION_TRANSFORM:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    check-cast v3, [F

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_e5
    sget v5, Lcom/a;->sCorrectorExposure_desired_time_ms:F

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v1, v3, v8}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_e7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v10, v15}, Lcom/google/googlex/gcam/FloatArray4;->a(I)F

    move-result v15

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_ea
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_eb
    iget-object v0, v0, Lldp;->f:Lhoh;

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_ec
    invoke-static {v9, v10, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_short_tet_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    const-wide/16 v17, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_ee
    if-nez v6, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :cond_10
    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v1, v6, v3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_f0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual/range {p2 .. p2}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    aget v9, v9, v11

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    :goto_f3
    invoke-direct {v3, v9, v10, v11}, Lcom/google/googlex/gcam/FloatArray9;-><init>(JZ)V

    :goto_f4
    goto/32 :goto_7c

    nop

    nop

    :goto_f5
    invoke-virtual {v1, v7, v12}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_f6
    new-instance v10, Lcom/google/googlex/gcam/FloatArray4;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    if-nez v3, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_f8
    new-array v7, v10, [Landroid/util/Rational;

    nop

    :goto_f9
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-static {v9, v10, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_additional_sensor_frame_duration_ms_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    sput v6, Lcom/a;->sCorrectorAnalog_desired_gain:F

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_fc
    if-lez v0, :cond_12

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_62

    nop

    :goto_fd
    aget v15, v9, v15

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_fe
    const/16 v5, 0x0

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_ff
    iget-wide v9, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_100
    if-nez v6, :cond_13

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_101
    iget v3, v3, Lpof;->e:I

    nop

    :goto_102
    goto/32 :goto_ea

    nop

    nop

    :goto_103
    mul-float/2addr v7, v6

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-static {v5}, Ltbt;->f(F)J

    move-result-wide v13

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v1}, Lqgk;->b()Lphz;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_106
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v1, v9, v10}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_108
    iget-wide v6, v2, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_109
    aget v13, v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    move-object v10, v6

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-static {v9, v10, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_long_tet_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_10d
    if-eqz v10, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    const/4 v5, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10f
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    if-nez v3, :cond_15

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_112
    invoke-static {v4}, Ltbt;->u(Lpnu;)[F

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_113
    cmpl-float v4, v4, v5

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_114
    invoke-interface {v3, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop
.end method


# virtual methods
.method final a()I
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lldp;->f:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lldp;->f:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

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

    :goto_6
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    :goto_8
    const-string v0, "aGRyX25ldF9rZXk="

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

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lcom/a;->aa_mb(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_d
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return p0

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_13
    sget-object v1, Lhmq;->ay:Lhmn;

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

    :goto_14
    iget-boolean p0, p0, Lldp;->e:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    const/4 p0, 0x1

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

    :goto_18
    if-nez v0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_19
    return p0

    nop

    :goto_1a
    goto/32 :goto_4

    nop

    nop
.end method

.method public final b(Lcom/google/googlex/gcam/FrameRequestVector;)I
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v0

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    return v2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    :goto_b
    long-to-int v2, v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(JLqgk;Lcom/google/googlex/gcam/FrameRequestVector;Lpro;I)Ljava/util/List;
    .locals 17

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v4, v6, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v8, v8, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2
    move-object/from16 v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    invoke-static {v6, v3}, Lcom/a;->ExpAnalogISODigitISOCorrector_desired(Lcom/google/googlex/gcam/FrameRequest;Lpro;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_4
    if-ge v9, v8, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static/range {v11 .. v16}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_Equals(JLcom/google/googlex/gcam/FrameRequest;JLcom/google/googlex/gcam/FrameRequest;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    if-lt v9, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move/from16 v4, p6

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_4a

    nop

    nop

    :goto_d
    if-eqz v10, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_e
    invoke-static {v4, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_analog_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    new-instance v5, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    return-object v5

    nop

    :goto_11
    goto/32 :goto_2c

    nop

    nop

    :goto_12
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2}, Lldp;->b(Lcom/google/googlex/gcam/FrameRequestVector;)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    iget-wide v4, v6, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    int-to-float v4, v4

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_18
    if-lt v4, v5, :cond_3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_19
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    if-lez v0, :cond_4

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    :goto_1b
    sput v5, Lcom/a;->sCorrectorAnalog_desired_gain:F

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

    :goto_1c
    invoke-virtual {v2, v9}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v8

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1e
    goto :goto_1d

    nop

    :goto_1f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_20
    if-nez v4, :cond_5

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

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move/from16 v4, v5

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-wide v14, v6, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v4, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_digital_gain_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object/from16 v2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_27
    invoke-static {v4, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_desired_exposure_time_ms_get(JLcom/google/googlex/gcam/FrameRequest;)F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_28
    invoke-static {v9}, Lcom/a;->zf(Z)I

    move-result v4

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_29
    div-float/2addr v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    float-to-int v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2b
    iget-wide v4, v6, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2d
    sput v5, Lcom/a;->sCorrectorExposure_desired_time_ms:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2e
    iget-boolean v8, v0, Lldp;->g:Z

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x9

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-wide v11, v8, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_32
    move/from16 v4, v5

    nop

    nop

    :goto_33
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v2, v8}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_35
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    move-object/from16 v1, p3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_38
    move-object v13, v8

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_39
    invoke-virtual {v2, v9}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v6

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

    :goto_3a
    if-nez v8, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3d
    if-lez v4, :cond_7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget v5, Lcom/a;->sCorrectorExposure_desired_time_ms:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v16, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v5, v0, Lldp;->h:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_45
    goto :goto_3c

    nop

    :goto_46
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sput v5, Lcom/a;->sCorrectorDigital_desired_gain:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-gt v4, v5, :cond_8

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_49
    sget v4, Lcom/a;->ee:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v0, v1, v6, v3}, Lldp;->da190e616797844b591057d0190e7728m(Lqgk;Lcom/google/googlex/gcam/FrameRequest;Lpro;)Lmhz;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4b
    const v0, 0xf

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v0, v1, v8, v3}, Lldp;->da190e616797844b591057d0190e7728m(Lqgk;Lcom/google/googlex/gcam/FrameRequest;Lpro;)Lmhz;

    move-result-object v8

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_31

    nop

    nop
.end method

.method public final b_old(JLqgk;Lcom/google/googlex/gcam/FrameRequestVector;Lpro;I)Ljava/util/List;
    .locals 9

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p4}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide p1

    nop

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

    :goto_1
    invoke-virtual {p4}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v1

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

    nop

    :goto_2
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v7, p2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_35

    nop

    nop

    :goto_7
    const v0, 0x1a

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    move p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    invoke-direct {p1, p6}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p4, v0}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    cmp-long p1, v1, v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    new-instance p1, Ljava/util/ArrayList;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    return-object p1

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    :goto_f
    int-to-long v0, p6

    nop

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

    nop

    :goto_10
    invoke-direct {p0, p3, p2, p5}, Lldp;->da190e616797844b591057d0190e7728m(Lqgk;Lcom/google/googlex/gcam/FrameRequest;Lpro;)Lmhz;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long p1, p1, v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_12
    move p1, p2

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_14
    const-wide/16 v3, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v0, p6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_13

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v2, v8, Lcom/google/googlex/gcam/FrameRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p2}, Lcom/google/googlex/gcam/FrameRequest;->c(Lcom/google/googlex/gcam/FrameRequest;)J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_1

    nop

    nop

    :goto_1d
    move-object v4, v8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequest_Equals(JLcom/google/googlex/gcam/FrameRequest;JLcom/google/googlex/gcam/FrameRequest;)Z

    move-result v2

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    if-gtz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_21
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_22
    if-gez p1, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move p1, p2

    nop

    :goto_25
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_26
    goto :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_29
    const/4 p2, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object v1, p2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p3, v8, p5}, Lldp;->da190e616797844b591057d0190e7728m(Lqgk;Lcom/google/googlex/gcam/FrameRequest;Lpro;)Lmhz;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v0, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2e
    invoke-virtual {p4, p2}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    :goto_30
    move-object p2, v8

    nop

    nop

    :goto_31
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_d

    nop

    nop

    :goto_34
    goto/32 :goto_e

    nop

    :goto_35
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lqgk;Lktp;Lpgo;IILkqa;)V
    .locals 0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p3, Lldo;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    check-cast p0, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2, p4}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

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

    :goto_6
    iget-object p0, p0, Lkcs;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, p0}, Lqgk;->f(Ljava/util/Set;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-interface {p2, p4}, Lktp;->e(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    invoke-virtual {p1, p0, p3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, p3}, Lqgk;->h(Lpuq;)V

    goto/32 :goto_11

    nop

    nop

    :goto_d
    invoke-direct {p3, p2}, Lldo;-><init>(Lktp;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p2, :cond_2

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p2, Lnyj;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p2, p0, Lldp;->f:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object p2, Lnyj;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p2}, Lj$/util/Optional;->isPresent()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lldp;->a()I

    move-result p4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    invoke-static {p4}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_27

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, p3}, Lqgk;->c(Lpgo;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p6, Lkqa;->a:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lldp;->a:Lkcs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

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

    :goto_1d
    invoke-virtual {p1, p2, p4}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/2addr p4, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2, p3}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_20
    const-string p4, "Y19jX2lfcXVhbGl0eV9rZXk"

    nop

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

    :goto_21
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    add-int/lit8 p4, p4, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    sget-object p3, Lhmq;->ah:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    iget-object p2, p2, Lkcs;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    iget-object p2, p0, Lldp;->a:Lkcs;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, p2, p3}, Lqgk;->e(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_27
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    sget-object p2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_CAPTURE_INTENT:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2a
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop
.end method
