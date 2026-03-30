.class public final Lfup;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Lfwj;

.field private final b:Lpnu;

.field private final c:Z

.field private final d:Lknb;

.field private final e:Lgvg;


# direct methods
.method public constructor <init>(Lknb;Lgvg;Lfwj;ZLpnu;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfup;->d:Lknb;

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-boolean p4, p0, Lfup;->c:Z

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

    :goto_4
    iput-object p5, p0, Lfup;->b:Lpnu;

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
    iput-object p3, p0, Lfup;->a:Lfwj;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lfup;->e:Lgvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p0, Lhmm;->a:Lhmn;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop
.end method

.method private static final q(II)F
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p1

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    div-float/2addr p0, p1

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

    :goto_3
    cmpl-float v0, p0, p1

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

    nop

    nop

    :goto_4
    cmpg-float v0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto :goto_1

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    move p0, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    if-ltz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 25

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_63

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_135

    nop

    nop

    :goto_3
    iget v7, v7, Lfwi;->a:I

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    :goto_5
    move-object v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_7
    if-gt v8, v9, :cond_0

    nop

    goto/32 :goto_73

    nop

    :cond_0
    goto/32 :goto_16e

    nop

    nop

    :goto_8
    check-cast v11, Lfwi;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f7

    nop

    nop

    :goto_b
    iput v0, v14, Lfwj;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object/from16 v2, p1

    nop

    nop

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_129

    nop

    :cond_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    goto/16 :goto_129

    nop

    :cond_2
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Llsd;->a(I)Llsd;

    move-result-object v3

    nop

    nop

    nop

    nop

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/16 :goto_129

    nop

    nop

    nop

    nop

    nop

    :cond_3
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Llse;->a(I)Llse;

    move-result-object v4

    nop

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_129

    nop

    nop

    nop

    :cond_4
    move-object v5, v0

    nop

    nop

    check-cast v5, Ljava/lang/Float;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v7, v8, v0, v9}, Lfwi;-><init>(ILandroid/graphics/Rect;I)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v12, Lfwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne v10, v9, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v8, v2}, Lpuq;->bb(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    :goto_13
    goto/32 :goto_188

    nop

    nop

    :goto_14
    const v1, 0xa

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v8, -0x2

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

    nop

    :goto_17
    if-lt v7, v9, :cond_6

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_18
    iget v10, v14, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v12, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v0, Lknb;->a:Loxv;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    mul-float v0, v0, v16

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1c
    iput v7, v14, Lfwj;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_1f
    invoke-interface {v2, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_103

    nop

    :goto_21
    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_23
    move-object/from16 v1, p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    :goto_25
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_182

    nop

    nop

    :goto_28
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_187

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v12, v9, v7}, Lgvg;->w(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_2c
    if-nez v14, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    :cond_7
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v11, 0x1e

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v9, 0x6

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2f
    new-instance v2, Lmhz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_30
    if-ltz v12, :cond_8

    nop

    goto/32 :goto_123

    nop

    :cond_8
    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    :goto_32
    iget v15, v9, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_145

    nop

    nop

    :goto_34
    if-ge v8, v9, :cond_9

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_ca

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_37
    sget-object v0, Lhmm;->a:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    :goto_38
    if-nez v0, :cond_a

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

    :cond_a
    goto/32 :goto_164

    nop

    nop

    :goto_39
    invoke-direct {v14, v8, v0, v12}, Lfwi;-><init>(ILandroid/graphics/Rect;I)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v3, v0, Lknb;->b:Lkna;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_3b
    goto/16 :goto_138

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_3d
    new-instance v0, Lfwi;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_3e
    const/16 v9, 0xf

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

    nop

    nop

    :goto_3f
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_40
    goto :goto_4a

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v14, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Lknb;->b:Lkna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_47
    float-to-int v0, v2

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    :goto_48
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_49
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_29

    nop

    :goto_4c
    goto/32 :goto_28

    nop

    nop

    :goto_4d
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move v8, v13

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_50
    iget v9, v14, Landroid/graphics/RectF;->right:F

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

    nop

    :goto_51
    const/4 v15, 0x2

    nop

    :cond_c
    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    :goto_53
    goto/16 :goto_138

    nop

    nop

    :goto_54
    goto/32 :goto_137

    nop

    nop

    :goto_55
    float-to-int v13, v0

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_57
    if-eqz v0, :cond_d

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_d
    :try_start_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_59
    iget-object v2, v1, Lfup;->b:Lpnu;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz v9, :cond_e

    nop

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

    :cond_e
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_5c
    aget-object v0, v0, v13

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    array-length v0, v7

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    :goto_5e
    if-lt v8, v0, :cond_f

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {v2}, Lpnu;->g()I

    move-result v2

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    :goto_60
    const-string v11, "InvalidProtocolBufferException"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_62
    invoke-static {v11, v12, v9, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :cond_10
    :goto_63
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_64
    throw v4

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    :goto_65
    goto/32 :goto_f9

    nop

    nop

    :goto_66
    const/16 v7, -0x3e9

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v7

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v8, v0, v7, v9}, Lfwi;-><init>(ILandroid/graphics/Rect;I)V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_69
    array-length v9, v0

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_6b
    div-float/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v7

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_198

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    :goto_70
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_71
    new-instance v8, Lfwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_99

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {v8, v9, v10, v14, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_b8

    nop

    nop

    :goto_75
    aget-object v0, v0, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget v8, v14, Lfwj;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_77
    if-nez v0, :cond_11

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_139

    nop

    nop

    :goto_78
    sget-object v7, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_29

    nop

    :goto_7a
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_7b
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_7e
    new-instance v7, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_80
    if-lez v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_133

    nop

    :goto_81
    invoke-direct/range {v2 .. v8}, Lkna;-><init>(Llsd;Llse;FLrss;II)V

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_82
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-gtz v9, :cond_13

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_85
    iget v0, v0, Lfwi;->c:I

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_87
    iget-boolean v9, v1, Lfup;->c:Z

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_88
    mul-float/2addr v2, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_89
    check-cast v7, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    :goto_8a
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_8c
    const/16 v10, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v8}, Lscs;->c()Lsdo;

    move-result-object v8

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-boolean v1, v0, Lknb;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget v15, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget v10, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_93
    invoke-virtual {v1, v2}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_c4

    nop

    nop

    :goto_94
    invoke-direct {v2, v12, v8, v11, v13}, Lkmz;-><init>(Landroid/graphics/PointF;Landroid/graphics/RectF;II)V

    goto/32 :goto_19f

    nop

    nop

    :goto_95
    iget-object v9, v9, Lfwi;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_97
    invoke-virtual {v0, v9}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_98
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget v15, v9, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_9b
    check-cast v9, Lfwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    check-cast v9, Lfwi;

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_a1
    const/high16 v16, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_a2
    new-instance v7, Lfwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_a3
    const/16 v15, 0x64

    nop

    :try_start_2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1a

    nop

    nop

    nop

    nop

    array-length v7, v0

    nop

    nop

    if-nez v7, :cond_14

    nop

    nop

    nop

    nop

    goto/16 :goto_a6

    nop

    nop

    nop

    :cond_14
    aget-object v0, v0, v13

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v7}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_15

    nop

    nop

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    nop

    const-wide/32 v19, 0x1f78a40

    nop

    nop

    nop

    nop

    cmp-long v7, v17, v19

    nop

    nop

    nop

    nop

    nop

    if-ltz v7, :cond_15

    nop

    nop

    nop

    nop

    nop

    move v7, v11

    nop

    nop

    nop

    nop

    nop

    goto :goto_a4

    nop

    nop

    nop

    nop

    nop

    :cond_15
    move v7, v13

    nop

    nop

    :goto_a4
    sget-object v11, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v11}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    check-cast v11, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    if-nez v11, :cond_16

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_4a

    nop

    :cond_16
    sget-object v18, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    array-length v8, v11

    nop

    nop

    nop

    nop

    nop

    move v12, v13

    nop

    nop

    :goto_a5
    if-ge v12, v8, :cond_19

    nop

    nop

    nop

    nop

    aget-object v21, v11, v12

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_17

    nop

    nop

    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v22

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v23

    nop

    nop

    nop

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerX()I

    move-result v24

    nop

    nop

    nop

    nop

    sub-int v23, v23, v24

    nop

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v9

    nop

    if-ge v9, v15, :cond_18

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    nop

    nop

    nop

    nop

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->centerY()I

    move-result v22

    nop

    nop

    sub-int v9, v9, v22

    nop

    nop

    nop

    nop

    nop

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    nop

    nop

    nop

    if-ge v9, v15, :cond_18

    nop

    nop

    nop

    nop

    nop

    :cond_17
    invoke-virtual/range {v21 .. v21}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v22

    nop

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    nop

    nop

    nop

    nop

    mul-int v22, v22, v9

    nop

    if-lez v22, :cond_18

    nop

    nop

    nop

    nop

    invoke-static/range {v21 .. v21}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v18

    nop

    nop

    nop

    nop

    nop

    :cond_18
    add-int/lit8 v12, v12, 0x1

    nop

    goto/16 :goto_a5

    nop

    nop

    nop

    :cond_19
    move-object/from16 v0, v18

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    :cond_1a
    :goto_a6
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_ab
    add-int/lit8 v8, v8, 0x32

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_ac
    new-instance v14, Lfwi;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    sget-object v9, Lfwj;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    goto/16 :goto_138

    nop

    nop

    :goto_af
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v0, v6}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v8, -0x2

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_1ba

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_b4
    iget v12, v12, Lfwi;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_b5
    new-instance v7, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    const/16 v10, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_b8
    new-instance v2, Lkmz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    if-eqz v2, :cond_1b

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-static {v8}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_bb
    goto/16 :goto_1b3

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-direct {v14, v8, v10, v2, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_de

    nop

    nop

    :goto_bf
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_c0
    move-object v2, v9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    goto/16 :goto_7d

    nop

    nop

    nop

    :goto_c2
    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_c3
    iget v10, v7, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_c4
    iput-object v9, v0, Lknb;->b:Lkna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/16 :goto_29

    nop

    :goto_c6
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    if-eqz v7, :cond_1c

    nop

    goto/32 :goto_21

    nop

    :cond_1c
    goto/32 :goto_1b0

    nop

    nop

    nop

    :goto_c9
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_cb
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-direct {v7, v8, v0, v9}, Lfwi;-><init>(ILandroid/graphics/Rect;I)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    mul-float/2addr v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_ce
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    check-cast v2, Lfwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    const/4 v9, 0x4

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

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

    nop

    :goto_d2
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_d3
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_d4
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-direct {v2, v3, v9, v4}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;[B)V

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_d6
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_d7
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v9, v9, Lfwi;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_d9
    aget-object v0, v0, v8

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_da
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_db
    iget v11, v14, Lfwj;->c:I

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    if-nez v6, :cond_1d

    nop

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_de
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_df
    iget v8, v14, Lfwj;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    if-eq v15, v10, :cond_1e

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_1e
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v9}, Lscs;->c()Lsdo;

    move-result-object v9

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_e3
    const/16 v10, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static/range {p1 .. p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    add-int/lit8 v0, v0, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_e6
    if-nez v1, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_e7
    add-int/lit8 v8, v8, -0x32

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_ea
    check-cast v0, [B

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_ec
    invoke-static {v15, v2}, Lfup;->q(II)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    if-nez v0, :cond_20

    nop

    goto/32 :goto_1a5

    nop

    nop

    :cond_20
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    add-int/lit8 v9, v9, -0x32

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_ef
    check-cast v9, Lfwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_f0
    new-instance v14, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_f1
    const v8, 0x3fa66666    # 1.3f

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_f3
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/16 :goto_83

    nop

    nop

    :goto_f5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget v11, v11, Lfwi;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_f7
    iget-object v14, v1, Lfup;->a:Lfwj;

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_f8
    sget-object v8, Lhmm;->a:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_fb
    if-nez v7, :cond_21

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_21
    goto/32 :goto_177

    nop

    nop

    nop

    :goto_fc
    if-eqz v7, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iput v0, v14, Lfwj;->c:I

    nop

    :goto_fe
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    add-int/lit8 v7, v7, -0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_100
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_101
    invoke-static {v14}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_102
    move-object v7, v2

    nop

    :goto_103
    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_104
    mul-float/2addr v2, v6

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

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

    :goto_106
    invoke-direct {v0, v7, v9, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_a2

    nop

    nop

    :goto_107
    iget v0, v14, Lfwj;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_108
    check-cast v7, Lfwi;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    throw v7

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    sget-object v8, Lfwj;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-interface {v2, v7}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    goto/16 :goto_99

    nop

    nop

    :goto_10e
    goto/32 :goto_f

    nop

    nop

    :goto_10f
    invoke-static {v9, v7}, Lfup;->q(II)F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iget-object v0, v14, Lfwj;->b:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_111
    invoke-static {v7, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_113
    iget v13, v12, Lfwi;->a:I

    nop

    nop

    nop

    :goto_114
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    iget-object v2, v2, Lfwi;->b:Landroid/graphics/Rect;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-interface {v2, v7}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    :goto_117
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_118
    if-nez v7, :cond_23

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_119
    invoke-static {v10, v14}, Ljava/lang/Math;->min(FF)F

    move-result v10

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    nop

    goto/32 :goto_14a

    nop

    nop

    :goto_11c
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    const/4 v10, 0x1

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    :goto_11e
    const/16 v9, 0x64

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    if-lt v8, v9, :cond_24

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_120
    invoke-direct {v7, v8, v9, v11, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_e8

    nop

    nop

    :goto_121
    if-eqz v7, :cond_25

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_122
    if-eq v12, v13, :cond_26

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    :cond_26
    :goto_123
    goto/32 :goto_179

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_125
    iget v9, v7, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_126
    invoke-static {v9, v11, v8, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_1aa

    nop

    nop

    :goto_127
    invoke-direct {v0, v7, v8, v10}, Lfwi;-><init>(ILandroid/graphics/Rect;I)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_128
    goto/16 :goto_1bd

    nop

    nop

    nop

    :catchall_0
    :goto_129
    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    goto/16 :goto_17f

    nop

    :goto_12c
    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_194

    nop

    nop

    :goto_12e
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_12f
    iget v8, v14, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_130
    invoke-static {v15, v10}, Lfup;->q(II)F

    move-result v10

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_131
    const/4 v9, 0x2

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    check-cast v12, Lfwi;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_133
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_134
    goto/32 :goto_23

    nop

    nop

    :goto_135
    sget-object v0, Lnyp;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_136
    invoke-interface {v2, v7}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_137
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    :goto_138
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_139
    array-length v14, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_13a
    goto/16 :goto_ca

    nop

    nop

    :goto_13b
    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    int-to-float v0, v0

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_13d
    if-nez v15, :cond_27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    goto/16 :goto_156

    nop

    nop

    nop

    :goto_13f
    goto/32 :goto_1d

    nop

    nop

    :goto_140
    move v6, v0

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    :goto_141
    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_142
    sget-object v0, Lnyp;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    new-instance v8, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_144
    iget v14, v7, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_145
    invoke-static {v7, v2}, Lpuq;->bb(Landroid/graphics/PointF;I)Landroid/graphics/PointF;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_146
    iget v14, v2, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_147
    if-nez v0, :cond_28

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_28
    :try_start_3
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v11

    nop

    nop

    nop

    sget-object v12, Lrrw;->a:Lrrw;

    nop

    nop

    array-length v15, v0

    nop

    invoke-static {v12, v0, v13, v15, v11}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Ltkg;->E(Ltkg;)V

    check-cast v0, Lrrw;

    nop

    nop

    nop

    nop

    new-array v11, v10, [I

    nop

    nop

    nop

    nop

    fill-array-data v11, :array_0

    move v12, v13

    nop

    nop

    :goto_148
    if-ge v12, v10, :cond_10

    nop

    nop

    aget v15, v11, v12

    nop

    nop

    nop

    nop

    nop

    iget v13, v0, Lrrw;->b:I

    nop

    nop

    add-int/lit8 v9, v15, -0x1

    nop

    nop

    nop

    if-ne v13, v9, :cond_2b

    nop

    nop

    nop

    nop

    nop

    if-eqz v15, :cond_2a

    nop

    nop

    nop

    if-ne v15, v10, :cond_29

    nop

    nop

    nop

    nop

    goto/16 :goto_63

    nop

    :cond_29
    iget-object v0, v14, Lfwj;->f:Lhoh;

    nop

    sget-object v9, Lhmm;->d:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v9}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    const/4 v9, 0x6

    nop

    nop

    nop

    if-ne v15, v9, :cond_c

    nop

    nop

    nop

    nop

    goto/16 :goto_63

    nop

    :cond_2a
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    throw v9

    nop
    :try_end_3
    .catch Ltky; {:try_start_3 .. :try_end_3} :catch_3

    :cond_2b
    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    iget v2, v2, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_14a
    add-int/lit8 v11, v11, 0x32

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    iget v7, v7, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_14c
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    :goto_14d
    iget-object v12, v1, Lfup;->e:Lgvg;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    move v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_14f
    goto/16 :goto_54

    nop

    nop

    nop

    nop

    :goto_150
    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_151
    if-ne v7, v8, :cond_2c

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_152
    iget-object v0, v1, Lfup;->d:Lknb;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_153
    check-cast v0, Lfwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_154
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_155
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    :goto_156
    goto/32 :goto_4f

    nop

    nop

    :goto_157
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    :goto_158
    goto/16 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_159
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    move-object v7, v0

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    :goto_15b
    iget-boolean v9, v1, Lfup;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_15c
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_15d
    new-instance v7, Lfwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    check-cast v7, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    nop

    :try_start_4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto/32 :goto_162

    nop

    nop

    nop

    :goto_15f
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_160
    sub-int/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_161
    invoke-static {v15, v8}, Lfup;->q(II)F

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_162
    goto/16 :goto_1ab

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_163
    sget-object v9, Lhmm;->d:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_164
    array-length v7, v0

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    invoke-direct {v7, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    const/4 v11, 0x1

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    :goto_167
    if-eq v15, v7, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    :cond_2d
    goto/32 :goto_190

    nop

    nop

    :goto_168
    return-void

    nop

    nop

    nop

    :goto_169
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v11

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    const/4 v13, 0x0

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_16c
    if-eq v9, v10, :cond_2e

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_2e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_16d
    if-nez v1, :cond_2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_16e
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_16f
    check-cast v6, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_170
    new-instance v9, Lkna;

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_171
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_172
    if-eqz v0, :cond_30

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_174
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_175
    invoke-virtual {v9, v1}, Lkna;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_176
    array-length v7, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    :goto_177
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_178
    iget v9, v9, Lfwi;->c:I

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_179
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_17a
    if-nez v0, :cond_31

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    :cond_31
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    if-gtz v0, :cond_32

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_17d
    if-nez v0, :cond_33

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_142

    nop

    nop

    nop

    :goto_17e
    move v9, v8

    nop

    nop

    nop

    :goto_17f
    goto/32 :goto_cb

    nop

    nop

    :goto_180
    check-cast v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_181
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    :goto_182
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_183
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_184
    invoke-direct {v8, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_185
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_186
    if-nez v15, :cond_34

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_187
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_188
    iget-boolean v0, v1, Lfup;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_189
    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_18a
    check-cast v7, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    const/16 v8, -0x3e8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_18c
    add-int/lit8 v9, v9, -0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_18d
    goto/16 :goto_148

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_18e
    if-nez v7, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    iget v15, v9, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_190
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    :goto_191
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_192
    invoke-virtual {v9}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v12

    nop

    goto/32 :goto_1ae

    nop

    nop

    :goto_193
    check-cast v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_194
    invoke-interface {v2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    :goto_195
    iput v8, v14, Lfwj;->d:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_196
    iget v9, v14, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_197
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_198
    move/from16 v16, v8

    nop

    nop

    :goto_199
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    new-instance v8, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_19b
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_19c
    check-cast v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v2

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_19e
    int-to-float v0, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_1a0
    if-eqz v7, :cond_36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    :cond_36
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    const/4 v7, 0x6

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    :goto_1a2
    check-cast v7, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    aget-object v9, v7, v8

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_1a4
    invoke-virtual {v0}, Landroid/hardware/camera2/params/MeteringRectangle;->getRect()Landroid/graphics/Rect;

    move-result-object v8

    nop

    nop

    :goto_1a5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1a6
    add-int/2addr v0, v11

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

    :goto_1a7
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v7

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_1a8
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

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

    :goto_1a9
    iget-object v0, v14, Lfwj;->f:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_1ab
    goto/32 :goto_1c4

    nop

    nop

    :goto_1ac
    iget-object v0, v1, Lfup;->b:Lpnu;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1ad
    sget-object v7, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_1ae
    if-eq v11, v12, :cond_37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :cond_37
    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    if-eqz v7, :cond_38

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_f3

    nop

    nop

    :goto_1b0
    sget-object v7, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b1
    if-eq v0, v10, :cond_39

    nop

    goto/32 :goto_27

    nop

    :cond_39
    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    const/4 v0, 0x0

    nop

    :goto_1b3
    goto/32 :goto_77

    nop

    nop

    :goto_1b4
    sub-int/2addr v8, v7

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    if-ne v10, v9, :cond_3a

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    :cond_3a
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1b6
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b7
    goto/16 :goto_103

    nop

    :goto_1b8
    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    goto/16 :goto_156

    nop

    nop

    nop

    :goto_1ba
    goto/32 :goto_155

    nop

    nop

    nop

    :goto_1bb
    check-cast v0, Landroid/hardware/camera2/params/Face;

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_1bc
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    goto/32 :goto_1a

    nop

    nop

    :goto_1be
    int-to-float v2, v13

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    if-nez v7, :cond_3b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    invoke-static {v14, v15}, Ljava/lang/Math;->max(FF)F

    move-result v14

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    const/4 v13, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    :goto_1c3
    if-gtz v7, :cond_3c

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_1c4
    new-instance v8, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c5
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c6
    const-string v9, "Error retrieving CONTROL_AF_REGIONS."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1c7
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c9
    add-int/lit8 v11, v11, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1ca
    if-nez v0, :cond_3d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :cond_3d
    goto/32 :goto_8a

    nop

    nop

    :goto_1cb
    new-instance v7, Landroid/graphics/PointF;

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_1cc
    float-to-int v8, v2

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_1cd
    const/4 v12, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
