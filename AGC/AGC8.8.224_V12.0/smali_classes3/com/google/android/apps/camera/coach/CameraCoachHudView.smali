.class public Lcom/google/android/apps/camera/coach/CameraCoachHudView;
.super Landroid/view/View;


# instance fields
.field public a:F

.field public b:Lmqp;

.field public c:Lmqp;

.field public d:Lmqp;

.field public volatile e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    iput-object p1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    iput-object p1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->e:Z

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-static {v0}, Lkab;->c(Landroid/view/Display;)Lkab;

    move-result-object v0

    iget v0, v0, Lkab;->e:I

    int-to-float v0, v0

    return v0
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    const/4 v8, 0x1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ldfz;

    iget-object v15, v14, Ldfz;->k:Lfha;

    iget-boolean v1, v14, Ldfz;->h:Z

    if-eqz v1, :cond_a

    if-nez v15, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, v14, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v14, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v15, Lfha;->c:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v6, v3

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v16

    iget-object v3, v14, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a()F

    move-result v3

    iget-object v4, v14, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget v4, v4, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a:F

    sub-float/2addr v4, v3

    iget v3, v15, Lfha;->b:F

    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    iget v3, v15, Lfha;->c:F

    move-object/from16 v17, v14

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    cmpg-double v3, v9, v11

    if-gez v3, :cond_2

    cmpg-double v3, v13, v11

    if-gez v3, :cond_1

    move-object/from16 v9, v17

    iget-object v3, v9, Ldfz;->n:Ldne;

    move-object v10, v3

    goto :goto_1

    :cond_1
    move-object/from16 v9, v17

    iget-object v3, v9, Ldfz;->m:Ldne;

    goto :goto_0

    :cond_2
    move-object/from16 v9, v17

    cmpg-double v3, v13, v11

    if-gez v3, :cond_3

    iget-object v3, v9, Ldfz;->p:Ldne;

    goto :goto_0

    :cond_3
    iget-object v3, v9, Ldfz;->o:Ldne;

    :goto_0
    move-object v10, v3

    :goto_1
    neg-float v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v13, v2, v4

    div-float v14, v1, v4

    invoke-virtual {v7, v3, v14, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-boolean v1, v9, Ldfz;->i:Z

    if-eqz v1, :cond_4

    iget v1, v9, Ldfz;->c:F

    sub-float v1, v14, v1

    iget v2, v9, Ldfz;->b:F

    sub-float v4, v1, v2

    iget v1, v9, Ldfz;->a:F

    sub-float v2, v4, v1

    iget-object v1, v10, Ldne;->b:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    move v5, v13

    move v11, v6

    move-object/from16 v6, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v9, Ldfz;->c:F

    add-float/2addr v1, v14

    iget v2, v9, Ldfz;->b:F

    add-float/2addr v2, v1

    iget v1, v9, Ldfz;->a:F

    add-float v4, v2, v1

    iget-object v1, v10, Ldne;->b:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    move v11, v6

    :goto_2
    neg-float v1, v11

    invoke-virtual {v7, v1, v14, v13}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget v1, v9, Ldfz;->c:F

    sub-float v2, v14, v1

    add-float v4, v14, v1

    iget-object v1, v10, Ldne;->b:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    move v5, v13

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%3.0f\u00b0"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, v9, Ldfz;->d:F

    sub-float v2, v13, v2

    iget-object v3, v10, Ldne;->a:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v1, v15, Lfha;->b:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v1}, Likp;->b(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, v9, Ldfz;->c:F

    sub-float v3, v14, v2

    sub-float v5, v13, v1

    add-float v4, v14, v2

    iget-object v6, v9, Ldfz;->e:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v9, Ldfz;->k:Lfha;

    if-eqz v1, :cond_9

    iget-object v2, v9, Ldfz;->l:Lfha;

    if-eqz v2, :cond_9

    iget-wide v2, v2, Lfha;->a:J

    iget-wide v4, v1, Lfha;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    goto :goto_4

    :cond_5
    iget v1, v1, Lfha;->c:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    iget-object v3, v9, Ldfz;->l:Lfha;

    iget v3, v3, Lfha;->c:F

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    iget-object v3, v9, Ldfz;->k:Lfha;

    iget-wide v4, v3, Lfha;->a:J

    iget-object v6, v9, Ldfz;->l:Lfha;

    iget-wide v10, v6, Lfha;->a:J

    sub-long/2addr v4, v10

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v1, v4

    const-wide v4, 0x3f947ae140000000L    # 0.019999999552965164

    cmpl-double v6, v1, v4

    if-gtz v6, :cond_9

    iget v1, v3, Lfha;->c:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v10, v3, v5

    if-ltz v10, :cond_7

    iget-object v3, v9, Ldfz;->k:Lfha;

    iget v3, v3, Lfha;->c:F

    iget-object v4, v9, Ldfz;->l:Lfha;

    iget v4, v4, Lfha;->c:F

    mul-float v3, v3, v4

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    goto :goto_3

    :cond_6
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, v9, Ldfz;->j:Z

    goto :goto_4

    :cond_7
    :goto_3
    iget-boolean v1, v9, Ldfz;->j:Z

    if-nez v1, :cond_9

    iget-object v1, v9, Ldfz;->g:Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v9, Ldfz;->f:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnom;->e(Landroid/content/Context;)V

    :cond_8
    iput-boolean v8, v9, Ldfz;->j:Z

    :cond_9
    :goto_4
    iput-object v15, v9, Ldfz;->l:Lfha;

    :cond_a
    :goto_5
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    const/16 v2, 0x5a

    const/16 v3, 0x10e

    if-eqz v1, :cond_10

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldgl;

    iget-boolean v4, v1, Ldgl;->h:Z

    if-nez v4, :cond_b

    goto/16 :goto_7

    :cond_b
    iget-object v4, v1, Ldgl;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Ldgl;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v5}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Ldgl;->i:F

    float-to-double v9, v6

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v6, v9

    iget v9, v1, Ldgl;->j:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    double-to-float v9, v9

    iget-object v10, v1, Ldgl;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->setRotation(F)V

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v14, v10, v12

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v4, v10

    div-float/2addr v5, v10

    if-gez v14, :cond_d

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v10, v10

    cmpg-double v14, v10, v12

    if-gez v14, :cond_d

    iget-object v6, v1, Ldgl;->d:Landroid/graphics/Paint;

    iget-object v9, v1, Ldgl;->f:Landroid/graphics/Paint;

    invoke-static {v4, v5, v6, v9, v7}, Ldgl;->a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v6, v1, Ldgl;->e:Landroid/graphics/Paint;

    iget-object v9, v1, Ldgl;->f:Landroid/graphics/Paint;

    invoke-static {v4, v5, v6, v9, v7}, Ldgl;->a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-boolean v4, v1, Ldgl;->m:Z

    if-nez v4, :cond_10

    iget-object v4, v1, Ldgl;->g:Ljava/util/function/BooleanSupplier;

    invoke-interface {v4}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, v1, Ldgl;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lnom;->e(Landroid/content/Context;)V

    :cond_c
    iput-boolean v8, v1, Ldgl;->m:Z

    goto :goto_7

    :cond_d
    iget-object v8, v1, Ldgl;->b:Landroid/graphics/Paint;

    iget-object v10, v1, Ldgl;->c:Landroid/graphics/Paint;

    invoke-static {v4, v5, v8, v10, v7}, Ldgl;->a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v8, v1, Ldgl;->a:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v8}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a()F

    move-result v8

    float-to-int v8, v8

    const/high16 v10, 0x40800000    # 4.0f

    if-ne v8, v3, :cond_e

    mul-float v9, v9, v10

    mul-float v6, v6, v10

    new-instance v8, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v8, v9, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6

    :cond_e
    if-ne v8, v2, :cond_f

    neg-float v8, v9

    mul-float v8, v8, v10

    neg-float v6, v6

    mul-float v6, v6, v10

    new-instance v9, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v9, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v9

    goto :goto_6

    :cond_f
    neg-float v6, v6

    mul-float v6, v6, v10

    mul-float v9, v9, v10

    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-direct {v8, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6
    iget-object v6, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v4, v6

    iget-object v6, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, v1, Ldgl;->e:Landroid/graphics/Paint;

    iget-object v8, v1, Ldgl;->f:Landroid/graphics/Paint;

    invoke-static {v4, v5, v6, v8, v7}, Ldgl;->a(FFLandroid/graphics/Paint;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    iput-boolean v4, v1, Ldgl;->m:Z

    :cond_10
    :goto_7
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfq;

    iget-boolean v4, v1, Ldfq;->i:Z

    if-nez v4, :cond_11

    goto/16 :goto_9

    :cond_11
    iget-object v4, v1, Ldfq;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v1, Ldfq;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v5}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, v1, Ldfq;->k:F

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v6, v8

    iget v8, v1, Ldfq;->l:F

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v8, v8

    iget-object v9, v1, Ldfq;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->setRotation(F)V

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v4, v9

    div-float/2addr v5, v9

    sget v9, Ldfq;->c:F

    iget-object v10, v1, Ldfq;->f:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v9, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v9, v1, Ldfq;->e:Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    invoke-virtual {v9}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a()F

    move-result v9

    float-to-int v9, v9

    if-ne v9, v3, :cond_12

    neg-float v2, v8

    new-instance v3, Landroid/util/Pair;

    iget v8, v1, Ldfq;->o:F

    mul-float v2, v2, v8

    neg-float v6, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v8, v1, Ldfq;->o:F

    mul-float v6, v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_12
    if-ne v9, v2, :cond_13

    new-instance v3, Landroid/util/Pair;

    iget v2, v1, Ldfq;->o:F

    mul-float v8, v8, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget v8, v1, Ldfq;->o:F

    mul-float v6, v6, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-direct {v3, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_8

    :cond_13
    new-instance v3, Landroid/util/Pair;

    iget v2, v1, Ldfq;->o:F

    mul-float v6, v6, v2

    neg-float v2, v8

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget v8, v1, Ldfq;->o:F

    mul-float v2, v2, v8

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v3, v6, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_8
    iget-boolean v2, v1, Ldfq;->j:Z

    if-eqz v2, :cond_14

    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v4, v2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v5, v2

    sget v2, Ldfq;->d:F

    iget-object v1, v1, Ldfq;->h:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void

    :cond_14
    iget-object v2, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v8, v4, v2

    iget-object v2, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v9, v5, v2

    iget-object v10, v1, Ldfq;->f:Landroid/graphics/Paint;

    iget-object v1, v1, Ldfq;->g:Landroid/graphics/Paint;

    sget v2, Ldfq;->b:F

    invoke-virtual {v7, v8, v9, v2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    sget v1, Ldfq;->a:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v1, v11

    sub-float v2, v8, v1

    move-object/from16 v1, p1

    move v3, v9

    move v4, v8

    move v5, v9

    move-object v6, v10

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget v1, Ldfq;->a:F

    div-float/2addr v1, v11

    sget v2, Ldfq;->b:F

    add-float v4, v8, v2

    add-float v2, v8, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget v1, Ldfq;->a:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Ldfq;->b:F

    sub-float v5, v9, v2

    sub-float v3, v9, v1

    move-object/from16 v1, p1

    move v2, v8

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget v1, Ldfq;->a:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sget v2, Ldfq;->b:F

    add-float v5, v9, v2

    add-float v3, v9, v1

    move-object/from16 v1, p1

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void

    :cond_15
    :goto_9
    return-void
.end method

.method protected final onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    new-instance v0, Ldfe;

    invoke-direct {v0, p0}, Ldfe;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;)V

    new-instance v1, Ldfz;

    invoke-direct {v1, p0, v0}, Ldfz;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;Ljava/util/function/BooleanSupplier;)V

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    new-instance v1, Ldgl;

    invoke-direct {v1, p0, v0}, Ldgl;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;Ljava/util/function/BooleanSupplier;)V

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    new-instance v0, Ldfq;

    invoke-direct {v0, p0}, Ldfq;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    return-void
.end method
