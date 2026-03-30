.class public Lcom/google/android/apps/camera/coach/CameraCoachHudView;
.super Landroid/view/View;
.source "PG"


# instance fields
.field public a:F

.field public b:Lrss;

.field public c:Lrss;

.field public d:Lrss;

.field public volatile e:Z

.field public final f:Lrss;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p2, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iput-boolean p2, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->e:Z

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    check-cast p1, Landroid/os/PowerManager;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->f:Lrss;

    nop

    nop

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
    const-string p2, "power"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p1

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

    :goto_9
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p2, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

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

    :goto_b
    const/4 p2, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getDisplay()Landroid/view/Display;

    move-result-object p0

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v2, 0x3bc

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-array v0, v0, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget p0, p0, Lpcg;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    aput-object p0, v0, v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    invoke-static {v2, v3, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p0, Lpcg;

    nop

    goto/32 :goto_7

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
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    :goto_14
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v15, v14, Lhiz;->l:Lhtc;

    nop

    :goto_2
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v9, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    double-to-float v8, v8

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    div-double/2addr v1, v4

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v2, 0x5a

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v3, Landroid/util/Pair;

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    :goto_8
    sub-float v2, v9, v2

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :goto_9
    neg-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    float-to-double v8, v6

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v1, v15, Lhtc;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v8, v9}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->setRotation(F)V

    goto/32 :goto_1a2

    nop

    nop

    :goto_d
    div-float v10, v1, v13

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_e
    iget-object v6, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_f
    sub-float v4, v8, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v2, v14, Lhiz;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_11
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmpg-double v4, v4, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_14
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :cond_0
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    float-to-double v9, v9

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    :goto_16
    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, v14, Lhiz;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v8, v15, Lhtc;->c:F

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_19
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :cond_1
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1a
    iget-object v6, v1, Lhjg;->e:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v7, v1, v4, v9, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_1d
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_a2

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v2, :cond_2

    nop

    goto/32 :goto_11d

    nop

    :cond_2
    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v7, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_23
    sget v1, Lhir;->b:F

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_25
    if-ltz v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v4, v1, Lhjg;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    :goto_27
    iget-object v4, v14, Lhiz;->n:Liof;

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v3, v3, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a:F

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c0

    nop

    nop

    :goto_2b
    goto/16 :goto_151

    nop

    nop

    :goto_2c
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2d
    double-to-float v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_2e
    iget-object v1, v14, Lhiz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_2f
    move v13, v6

    nop

    :goto_30
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sub-float v2, v8, v0

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v1}, Lkjj;->e(Landroid/content/Context;)V

    :goto_34
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_35
    mul-float/2addr v8, v10

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v1}, Lnnr;->b(F)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :goto_37
    iget-boolean v1, v14, Lhiz;->i:Z

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_38
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_3a
    goto/32 :goto_7a

    nop

    nop

    :goto_3b
    invoke-virtual {v9}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a()F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    :goto_3c
    add-float v4, v10, v2

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :goto_3d
    iget-object v8, v1, Lhjg;->f:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_3e
    iget v6, v1, Lhjg;->i:F

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_3f
    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_40
    sub-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/high16 v9, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v6, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v7, v1, v4, v2, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v4, v0, Lhir;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v9, v1, Lhjg;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

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

    nop

    :goto_47
    iget v6, v0, Lhir;->o:F

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v4, v8, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_110

    nop

    nop

    :goto_4a
    goto/32 :goto_10f

    nop

    nop

    :goto_4b
    neg-float v1, v13

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_4d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    :goto_4e
    sub-float v1, v6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :goto_4f
    neg-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    :goto_50
    iget-object v9, v0, Lhir;->f:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_51
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_52
    div-float/2addr v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    mul-float/2addr v6, v10

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_54
    float-to-double v1, v1

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v7, v3, v10, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_57
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move v3, v9

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    :goto_59
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_5a
    iget-object v6, v1, Lhjg;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_11d

    nop

    :goto_5c
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v9

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    cmpl-double v1, v1, v4

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_62
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_63

    nop

    nop

    :goto_63
    iget-object v0, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_64
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget v3, v3, Lhtc;->c:F

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    check-cast v14, Lhiz;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_68
    const/high16 v10, 0x40000000    # 2.0f

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_69
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v3, v14, Lhiz;->k:Lhtc;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_6c
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v7, v1, v10, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v1, v14, Lhiz;->c:F

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    iget v4, v15, Lhtc;->b:F

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_70
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v3}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_72
    iget-boolean v1, v0, Lhir;->i:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v5, v1, Lhjg;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_74
    div-float/2addr v0, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v5}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getHeight()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    :goto_76
    int-to-float v1, v1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_77
    iget-object v4, v14, Lhiz;->l:Lhtc;

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    :goto_78
    add-float v1, v6, v0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    move-object/from16 v0, p1

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_7a
    return-void

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    const/high16 v13, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_7f
    float-to-double v9, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v8}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a()F

    move-result v8

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_82
    invoke-static {v4, v5, v6, v8, v7}, Lhjg;->a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_83
    const/4 v4, 0x0

    nop

    :goto_84
    goto/32 :goto_150

    nop

    nop

    nop

    :goto_85
    if-eq v9, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_86
    new-instance v9, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_87
    long-to-double v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_88
    goto/16 :goto_3a

    nop

    :goto_89
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v4, v5, v9, v10, v7}, Lhjg;->a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_8b
    if-ltz v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v9, v1, Lhjg;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    :goto_8d
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-static {v4}, Lkjj;->e(Landroid/content/Context;)V

    :goto_8f
    goto/32 :goto_139

    nop

    nop

    nop

    :goto_90
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const-wide v4, 0x3f947ae140000000L    # 0.019999999552965164

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_92
    move-object v6, v1

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_94
    invoke-direct {v3, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_95
    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_96
    mul-float/2addr v8, v10

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_97
    div-float/2addr v4, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-interface {v4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v4

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_99
    float-to-double v4, v4

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

    :goto_9a
    iget v2, v14, Lhiz;->d:F

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

    :goto_9b
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    :goto_9d
    double-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_9e
    iget-object v1, v8, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_9f
    if-eqz v4, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_8
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-direct {v3, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_125

    nop

    nop

    :goto_a1
    const/4 v1, 0x1

    nop

    nop

    :goto_a2
    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_a3
    move-object/from16 v0, p1

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v4, v1, Lhjg;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_a6
    move-object v14, v1

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_a7
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v9, v1, Lhjg;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_a9
    invoke-direct {v9, v6, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_aa
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_ac
    float-to-double v1, v1

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_ae
    move v3, v6

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_af
    mul-float/2addr v5, v6

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_b0
    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    goto/16 :goto_84

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_8c

    nop

    nop

    :goto_b3
    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_b5
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_b6
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_b7
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b8
    move v13, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_b9
    iget v8, v1, Lhjg;->j:F

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_ba
    if-eqz v15, :cond_a

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_a
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_be
    iget-object v8, v1, Lhjg;->f:Landroid/graphics/Paint;

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

    nop

    :goto_bf
    if-nez v1, :cond_b

    nop

    goto/32 :goto_2

    nop

    :cond_b
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget v1, v3, Lhtc;->c:F

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_c1
    neg-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    if-eq v8, v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_c
    goto/32 :goto_10e

    nop

    nop

    :goto_c3
    invoke-virtual {v4}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getContext()Landroid/content/Context;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    mul-float/2addr v6, v2

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    return-void

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_90

    nop

    nop

    nop

    :goto_c8
    goto/16 :goto_aa

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-gez v3, :cond_d

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    sub-float v2, v4, v3

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_cc
    new-instance v3, Landroid/util/Pair;

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

    :goto_cd
    invoke-direct {v3, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v3, v14, Lhiz;->l:Lhtc;

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    :goto_cf
    new-instance v9, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object v8, v0, Lhir;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v7, v1, v10, v9}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_d4
    double-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_d5
    cmpl-double v1, v1, v3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d6
    sget v0, Lhir;->a:F

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    :goto_d7
    cmp-long v2, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_d8
    move v1, v6

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-eq v9, v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    :cond_e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_db
    goto/16 :goto_aa

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-object v15, v14, Lhiz;->k:Lhtc;

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_de
    if-nez v2, :cond_f

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_df
    mul-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    new-instance v9, Landroid/util/Pair;

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_e2
    iget-object v1, v14, Lhiz;->k:Lhtc;

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_e4
    const/high16 v10, 0x40800000    # 4.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_e5
    neg-float v8, v8

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_e6
    add-float v4, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_e7
    iget v1, v1, Lhtc;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    iget v3, v14, Lhiz;->a:F

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_ea
    add-float v3, v6, v1

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    mul-float/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_ed
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    div-float/2addr v5, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    move v5, v9

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget-wide v4, v1, Lhtc;->a:J

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

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

    :goto_f4
    iget-object v0, v0, Lhir;->g:Landroid/graphics/Paint;

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

    :goto_f5
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget v3, v14, Lhiz;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_f7
    const v0, 0x1d

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_f8
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    if-ltz v4, :cond_10

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_164

    nop

    nop

    :goto_fa
    cmpg-double v9, v9, v11

    nop

    nop

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

    :goto_fb
    add-float v4, v10, v1

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_fc
    iget-boolean v4, v1, Lhjg;->m:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    double-to-float v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v2, v14, Lhiz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_ff
    sget v0, Lhir;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    :goto_100
    int-to-float v4, v4

    nop

    goto/32 :goto_18b

    nop

    nop

    :goto_101
    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_102
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

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

    :goto_103
    iget-boolean v1, v14, Lhiz;->h:Z

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_104
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    iget-object v3, v14, Lhiz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_106
    float-to-double v3, v3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_107
    sub-float/2addr v4, v6

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    check-cast v17, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_109
    invoke-static {v4, v5, v6, v8, v7}, Lhjg;->a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    mul-float/2addr v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_10b
    if-eqz v2, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_10c
    float-to-int v8, v8

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_10d
    sub-float v1, v10, v1

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_10e
    neg-float v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_10f
    iget-object v4, v14, Lhiz;->o:Liof;

    nop

    nop

    nop

    nop

    nop

    :goto_110
    goto/32 :goto_19f

    nop

    nop

    :goto_111
    iget-object v6, v1, Lhjg;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    :goto_112
    sget v0, Lhir;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :goto_113
    iget-object v1, v0, Lhir;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    check-cast v3, Landroid/graphics/Paint;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_115
    iget-object v1, v14, Lhiz;->g:Ljava/util/function/BooleanSupplier;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_116
    float-to-double v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_117
    iget-object v8, v0, Lhir;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_118
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v9, v10}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->setRotation(F)V

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    iget-object v3, v14, Lhiz;->k:Lhtc;

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_11c
    iput-boolean v1, v14, Lhiz;->j:Z

    nop

    :goto_11d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    iget-object v4, v1, Lhjg;->g:Ljava/util/function/BooleanSupplier;

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_11f
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_120
    if-nez v1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_12
    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    invoke-virtual {v7, v6, v8, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_ff

    nop

    nop

    :goto_122
    neg-float v2, v6

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_123
    sub-double/2addr v1, v3

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_125
    goto/16 :goto_95

    nop

    nop

    nop

    :goto_126
    goto/32 :goto_122

    nop

    nop

    nop

    :goto_127
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v16

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_129
    iget v6, v0, Lhir;->l:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12a
    double-to-float v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    int-to-float v4, v4

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    sub-float v8, v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_12d
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget-object v6, v14, Lhiz;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    :goto_12f
    iget-object v4, v14, Lhiz;->m:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_130
    cmpg-double v3, v3, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_131
    add-float v2, v8, v0

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_132
    goto/16 :goto_110

    nop

    nop

    :goto_133
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_134
    move-object/from16 v17, v4

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_135
    iget v2, v14, Lhiz;->b:F

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_136
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_137
    if-eq v8, v2, :cond_13

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_138
    move-object v6, v4

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_139
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    sub-float v3, v10, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_13c
    check-cast v1, Lhjg;

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    :goto_13d
    sget v1, Lhir;->b:F

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

    :goto_13e
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_13f
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_140
    float-to-double v8, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_141
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    if-lez v0, :cond_14

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_17f

    nop

    :goto_143
    iget v1, v14, Lhiz;->c:F

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_144
    if-nez v1, :cond_15

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_145
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    mul-float/2addr v5, v6

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_147
    move v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    :goto_148
    invoke-static {v4, v5, v6, v8, v7}, Lhjg;->a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_149
    iget-object v0, v0, Lhir;->h:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    :goto_14a
    sub-float v2, v10, v1

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    sget v9, Lhir;->c:F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_14e
    const/16 v3, 0x10e

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    iput-boolean v4, v1, Lhjg;->m:Z

    nop

    nop

    nop

    nop

    nop

    :goto_151
    goto/32 :goto_f5

    nop

    nop

    :goto_152
    sub-float v5, v9, v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_153
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_154
    new-instance v3, Landroid/util/Pair;

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

    nop

    :goto_155
    iget v6, v0, Lhir;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_156
    add-float/2addr v1, v10

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v2}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    const-string v2, "%3.0f\u00b0"

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_159
    sub-long/2addr v4, v8

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    iget v6, v0, Lhir;->o:F

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_15b
    goto/16 :goto_30

    nop

    nop

    nop

    :goto_15c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    div-float/2addr v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_15e
    iget-boolean v2, v0, Lhir;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_15f
    move v3, v9

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_160
    sub-float v6, v1, v2

    nop

    goto/32 :goto_16d

    nop

    nop

    :goto_161
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_162
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    :goto_163
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_164
    cmpg-double v4, v8, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    :goto_165
    if-ltz v9, :cond_16

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    :cond_16
    goto/32 :goto_111

    nop

    nop

    :goto_166
    iget-object v8, v1, Lhjg;->f:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_167
    sget v1, Lhir;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_168
    add-float v4, v8, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_169
    iget v4, v4, Lhtc;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_16a
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_16b
    goto/16 :goto_110

    nop

    nop

    nop

    :goto_16c
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_16d
    iget-object v1, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    iget-boolean v1, v14, Lhiz;->j:Z

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

    :goto_16f
    iget-object v4, v8, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_170
    iget-object v3, v8, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_171
    iget-object v6, v14, Lhiz;->l:Lhtc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_172
    if-nez v1, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    :cond_17
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    if-nez v1, :cond_18

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    :cond_18
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_174
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    mul-float/2addr v6, v10

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_176
    invoke-virtual {v4}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_177
    move-object/from16 v6, v17

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_178
    mul-float/2addr v2, v6

    nop

    goto/32 :goto_1b4

    nop

    nop

    :goto_179
    iget v3, v15, Lhtc;->c:F

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    if-eqz v4, :cond_19

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_17c
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_17d
    invoke-virtual {v4}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_17e
    move-object v5, v9

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_180
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_181
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_182
    int-to-float v1, v1

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    :goto_183
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_184
    sub-float/2addr v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_185
    add-float/2addr v2, v1

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_186
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    iget-boolean v4, v1, Lhjg;->h:Z

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_188
    const/high16 v10, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_189
    iget-object v10, v1, Lhjg;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    iget v3, v3, Lhtc;->c:F

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    :goto_18b
    iget v5, v0, Lhir;->k:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    invoke-direct {v9, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_db

    nop

    nop

    :goto_18d
    move v5, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    sget v2, Lhir;->d:F

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_18f
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_190
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    :goto_191
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_112

    nop

    nop

    :goto_192
    iget-object v4, v14, Lhiz;->p:Liof;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_193
    div-float/2addr v0, v10

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_194
    iget-wide v8, v6, Lhtc;->a:J

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_195
    iget v2, v0, Lhir;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_196
    sub-float/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_197
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :goto_198
    div-float v9, v2, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_199
    if-nez v1, :cond_1a

    nop

    goto/32 :goto_151

    nop

    nop

    :cond_1a
    goto/32 :goto_e8

    nop

    nop

    :goto_19a
    iget-wide v4, v3, Lhtc;->a:J

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    float-to-double v5, v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19c
    cmpg-double v4, v8, v11

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

    :goto_19d
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    check-cast v6, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    move-object v8, v4

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_1a0
    move v2, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_1a1
    cmpg-double v9, v9, v11

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_1a2
    iget-object v8, v0, Lhir;->f:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1a3
    mul-float/2addr v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a4
    iget v2, v14, Lhiz;->c:F

    nop

    goto/32 :goto_13b

    nop

    nop

    :goto_1a5
    check-cast v6, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    int-to-float v5, v5

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    sub-float v4, v1, v2

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    iget-wide v2, v2, Lhtc;->a:J

    nop

    goto/32 :goto_f1

    nop

    nop

    :goto_1aa
    sget v1, Lhir;->b:F

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    if-ltz v9, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    :cond_1b
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1ac
    move v3, v5

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    if-nez v4, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    :cond_1c
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_1ae
    iget-object v2, v14, Lhiz;->l:Lhtc;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    iget-object v1, v14, Lhiz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_1b0
    float-to-double v9, v8

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

    :goto_1b1
    float-to-double v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b2
    float-to-int v9, v9

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_1b3
    move v4, v8

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_1b4
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

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

    :goto_1b5
    move v1, v6

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    goto/16 :goto_20

    nop

    nop

    nop

    :goto_1b7
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_1b8
    cmpg-float v3, v3, v4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b9
    sub-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    sget v0, Lhir;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    if-ltz v4, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    move v3, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    check-cast v0, Lhir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_1be
    iget v6, v0, Lhir;->o:F

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    iget v6, v0, Lhir;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-direct {v1, p0, v0}, Lhiz;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;Ljava/util/function/BooleanSupplier;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    new-instance v1, Lhiz;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Lhir;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lhik;

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

    :goto_8
    iput-object v0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lrss;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    iput-object v0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lrss;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v1, Lhjg;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

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

    :goto_13
    invoke-direct {v1, p0, v0}, Lhjg;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;Ljava/util/function/BooleanSupplier;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Lhik;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;)V

    goto/32 :goto_3

    nop

    nop

    :goto_15
    new-instance v0, Lhir;

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

    :goto_16
    iput-object v1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lrss;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method
