.class public final Lbhh;
.super Ljava/lang/Object;

# interfaces
.implements Lbhg;
.implements Lbhn;
.implements Lbhe;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lbgj;

.field private final d:Z

.field private final e:Lbhs;

.field private final f:Lbhs;

.field private final g:Lbhs;

.field private final h:Lbhs;

.field private final i:Lbhs;

.field private final j:Lbhs;

.field private final k:Lbhs;

.field private l:Z

.field private final m:I

.field private final n:Lbkb;


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbjg;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbhh;->a:Landroid/graphics/Path;

    new-instance v0, Lbkb;

    invoke-direct {v0}, Lbkb;-><init>()V

    iput-object v0, p0, Lbhh;->n:Lbkb;

    iput-object p1, p0, Lbhh;->c:Lbgj;

    iget-object p1, p3, Lbjg;->a:Ljava/lang/String;

    iput-object p1, p0, Lbhh;->b:Ljava/lang/String;

    iget p1, p3, Lbjg;->j:I

    iput p1, p0, Lbhh;->m:I

    iget-boolean v0, p3, Lbjg;->i:Z

    iput-boolean v0, p0, Lbhh;->d:Z

    iget-object v0, p3, Lbjg;->b:Lbip;

    invoke-virtual {v0}, Lbip;->a()Lbhs;

    move-result-object v0

    iput-object v0, p0, Lbhh;->e:Lbhs;

    iget-object v1, p3, Lbjg;->c:Lbiz;

    invoke-interface {v1}, Lbiz;->a()Lbhs;

    move-result-object v1

    iput-object v1, p0, Lbhh;->f:Lbhs;

    iget-object v2, p3, Lbjg;->d:Lbip;

    invoke-virtual {v2}, Lbip;->a()Lbhs;

    move-result-object v2

    iput-object v2, p0, Lbhh;->g:Lbhs;

    iget-object v3, p3, Lbjg;->f:Lbip;

    invoke-virtual {v3}, Lbip;->a()Lbhs;

    move-result-object v3

    iput-object v3, p0, Lbhh;->i:Lbhs;

    iget-object v4, p3, Lbjg;->h:Lbip;

    invoke-virtual {v4}, Lbip;->a()Lbhs;

    move-result-object v4

    iput-object v4, p0, Lbhh;->k:Lbhs;

    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    iget-object v6, p3, Lbjg;->e:Lbip;

    invoke-virtual {v6}, Lbip;->a()Lbhs;

    move-result-object v6

    iput-object v6, p0, Lbhh;->h:Lbhs;

    iget-object p3, p3, Lbjg;->g:Lbip;

    invoke-virtual {p3}, Lbip;->a()Lbhs;

    move-result-object p3

    iput-object p3, p0, Lbhh;->j:Lbhs;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    iput-object p3, p0, Lbhh;->h:Lbhs;

    iput-object p3, p0, Lbhh;->j:Lbhs;

    :goto_0
    invoke-virtual {p2, v0}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p2, v1}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p2, v2}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p2, v3}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p2, v4}, Lbjq;->h(Lbhs;)V

    if-ne p1, v5, :cond_1

    iget-object p3, p0, Lbhh;->h:Lbhs;

    invoke-virtual {p2, p3}, Lbjq;->h(Lbhs;)V

    iget-object p3, p0, Lbhh;->j:Lbhs;

    invoke-virtual {p2, p3}, Lbjq;->h(Lbhs;)V

    :cond_1
    invoke-virtual {v0, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {v1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {v2, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {v3, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {v4, p0}, Lbhs;->g(Lbhn;)V

    if-ne p1, v5, :cond_2

    iget-object p1, p0, Lbhh;->h:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbhh;->j:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhh;->l:Z

    iget-object v0, p0, Lbhh;->c:Lbgj;

    invoke-virtual {v0}, Lbgj;->invalidateSelf()V

    return-void
.end method

.method public final d(Lbik;ILjava/util/List;Lbik;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lbln;->d(Lbik;ILjava/util/List;Lbik;Lbhe;)V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 3

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgw;

    instance-of v1, v0, Lbhm;

    if-eqz v1, :cond_0

    check-cast v0, Lbhm;

    iget v1, v0, Lbhm;->e:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lbhh;->n:Lbkb;

    invoke-virtual {v1, v0}, Lbkb;->d(Lbhm;)V

    invoke-virtual {v0, p0}, Lbhm;->a(Lbhn;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/Object;Lbkc;)V
    .locals 1

    sget-object v0, Lbgo;->u:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lbhh;->e:Lbhs;

    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_0
    sget-object v0, Lbgo;->v:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbhh;->g:Lbhs;

    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_1
    sget-object v0, Lbgo;->l:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lbhh;->f:Lbhs;

    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_2
    sget-object v0, Lbgo;->w:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lbhh;->h:Lbhs;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iput-object p2, v0, Lbhs;->d:Lbkc;

    return-void

    :cond_4
    :goto_0
    sget-object v0, Lbgo;->x:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lbhh;->i:Lbhs;

    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_5
    sget-object v0, Lbgo;->y:Ljava/lang/Float;

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lbhh;->j:Lbhs;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iput-object p2, v0, Lbhs;->d:Lbkc;

    return-void

    :cond_7
    :goto_1
    sget-object v0, Lbgo;->z:Ljava/lang/Float;

    if-ne p1, v0, :cond_8

    iget-object p1, p0, Lbhh;->k:Lbhs;

    iput-object p2, p1, Lbhs;->d:Lbkc;

    :cond_8
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbhh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Landroid/graphics/Path;
    .locals 41

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lbhh;->l:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbhh;->a:Landroid/graphics/Path;

    return-object v1

    :cond_0
    iget-object v1, v0, Lbhh;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-boolean v1, v0, Lbhh;->d:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lbhh;->l:Z

    iget-object v1, v0, Lbhh;->a:Landroid/graphics/Path;

    return-object v1

    :cond_1
    iget v1, v0, Lbhh;->m:I

    if-eqz v1, :cond_11

    const-wide v3, -0x3fa9800000000000L    # -90.0

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    const/high16 v8, 0x42c80000    # 100.0f

    const/4 v11, 0x0

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lbhh;->e:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget-object v2, v0, Lbhh;->g:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v9, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    iget-object v4, v0, Lbhh;->k:Lbhs;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v8

    iget-object v7, v0, Lbhh;->i:Lbhs;

    invoke-virtual {v7}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v8, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v8

    iget-object v14, v0, Lbhh;->a:Landroid/graphics/Path;

    double-to-float v10, v10

    double-to-float v11, v12

    invoke-virtual {v14, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v12

    double-to-float v1, v5

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v5

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    const/4 v1, 0x0

    goto/16 :goto_b

    :pswitch_0
    iget-object v1, v0, Lbhh;->e:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v12, v0, Lbhh;->g:Lbhs;

    invoke-virtual {v12}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    float-to-double v14, v1

    float-to-int v7, v1

    int-to-float v7, v7

    sub-float/2addr v1, v7

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v14

    double-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    cmpl-float v7, v1, v11

    div-float v9, v5, v6

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    if-eqz v7, :cond_2

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v1

    mul-float v7, v7, v9

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v12

    :cond_2
    iget-object v7, v0, Lbhh;->i:Lbhs;

    invoke-virtual {v7}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v10, v0, Lbhh;->h:Lbhs;

    invoke-virtual {v10}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    iget-object v12, v0, Lbhh;->j:Lbhs;

    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    div-float/2addr v12, v8

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    :goto_0
    iget-object v13, v0, Lbhh;->k:Lbhs;

    invoke-virtual {v13}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    div-float/2addr v13, v8

    cmpl-float v8, v1, v11

    if-eqz v8, :cond_4

    sub-float v8, v7, v10

    mul-float v8, v8, v1

    add-float/2addr v8, v10

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    move/from16 v20, v12

    float-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v22, v7

    mul-double v6, v11, v17

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v17

    iget-object v2, v0, Lbhh;->a:Landroid/graphics/Path;

    double-to-float v6, v6

    double-to-float v7, v11

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    mul-float v2, v5, v1

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v2, v11

    float-to-double v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v11

    move/from16 v2, v22

    goto :goto_1

    :cond_4
    move/from16 v22, v7

    move/from16 v20, v12

    move/from16 v2, v22

    float-to-double v6, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v22

    iget-object v8, v0, Lbhh;->a:Landroid/graphics/Path;

    double-to-float v11, v11

    double-to-float v7, v6

    invoke-virtual {v8, v11, v7}, Landroid/graphics/Path;->moveTo(FF)V

    move v8, v7

    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v3, v6

    move v7, v8

    move v6, v11

    const/4 v8, 0x0

    :goto_1
    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    add-double/2addr v11, v11

    move v15, v7

    const/4 v7, 0x0

    const/4 v14, 0x0

    :goto_2
    move/from16 v18, v9

    move/from16 v22, v10

    int-to-double v9, v7

    cmpg-double v16, v9, v11

    if-gez v16, :cond_e

    move/from16 v23, v2

    const/4 v2, 0x1

    if-eq v2, v14, :cond_5

    move/from16 v2, v22

    goto :goto_3

    :cond_5
    move/from16 v2, v23

    :goto_3
    const/16 v16, 0x0

    cmpl-float v24, v8, v16

    if-eqz v24, :cond_6

    const-wide/high16 v24, -0x4000000000000000L    # -2.0

    add-double v24, v11, v24

    cmpl-double v16, v9, v24

    if-nez v16, :cond_6

    mul-float v16, v5, v1

    const/high16 v21, 0x40000000    # 2.0f

    div-float v16, v16, v21

    move/from16 v24, v5

    move/from16 v5, v16

    goto :goto_4

    :cond_6
    const/high16 v21, 0x40000000    # 2.0f

    move/from16 v24, v5

    move/from16 v5, v18

    :goto_4
    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    const/16 v16, 0x0

    cmpl-float v27, v8, v16

    if-eqz v27, :cond_7

    add-double v27, v11, v25

    cmpl-double v16, v9, v27

    if-nez v16, :cond_7

    move/from16 v27, v8

    goto :goto_5

    :cond_7
    move/from16 v27, v8

    move v8, v2

    :goto_5
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v28

    move-wide/from16 v30, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v32, v11

    mul-double v10, v8, v28

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v28

    const/4 v12, 0x0

    cmpl-float v16, v20, v12

    double-to-float v10, v10

    double-to-float v8, v8

    if-nez v16, :cond_8

    cmpl-float v9, v13, v12

    if-nez v9, :cond_8

    iget-object v2, v0, Lbhh;->a:Landroid/graphics/Path;

    invoke-virtual {v2, v10, v8}, Landroid/graphics/Path;->lineTo(FF)V

    move-wide/from16 v28, v3

    move/from16 v16, v5

    goto/16 :goto_a

    :cond_8
    float-to-double v11, v15

    move-wide/from16 v28, v3

    float-to-double v3, v6

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v11, -0x4006de04abbbd2e8L    # -1.5707963267948966

    add-double/2addr v3, v11

    double-to-float v3, v3

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v9, v11

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-double v11, v8

    move/from16 v16, v5

    float-to-double v4, v10

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v11, -0x4006de04abbbd2e8L    # -1.5707963267948966

    add-double/2addr v4, v11

    double-to-float v4, v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    double-to-float v11, v11

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x1

    if-eq v5, v14, :cond_9

    move v12, v13

    goto :goto_6

    :cond_9
    move/from16 v12, v20

    :goto_6
    if-eq v5, v14, :cond_a

    move/from16 v34, v20

    goto :goto_7

    :cond_a
    move/from16 v34, v13

    :goto_7
    if-eq v5, v14, :cond_b

    move/from16 v5, v23

    goto :goto_8

    :cond_b
    move/from16 v5, v22

    :goto_8
    mul-float v5, v5, v12

    mul-float v2, v2, v34

    const v12, 0x3ef4e26d    # 0.47829f

    mul-float v5, v5, v12

    mul-float v9, v9, v5

    mul-float v5, v5, v3

    mul-float v2, v2, v12

    mul-float v11, v11, v2

    mul-float v2, v2, v4

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-eqz v4, :cond_d

    if-nez v7, :cond_c

    mul-float v9, v9, v1

    mul-float v5, v5, v1

    goto :goto_9

    :cond_c
    add-double v3, v32, v25

    cmpl-double v12, v30, v3

    if-nez v12, :cond_d

    mul-float v11, v11, v1

    mul-float v2, v2, v1

    :cond_d
    :goto_9
    iget-object v3, v0, Lbhh;->a:Landroid/graphics/Path;

    sub-float v35, v6, v9

    sub-float v36, v15, v5

    add-float v37, v10, v11

    add-float v38, v8, v2

    move-object/from16 v34, v3

    move/from16 v39, v10

    move/from16 v40, v8

    invoke-virtual/range {v34 .. v40}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_a
    move/from16 v2, v16

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double v3, v28, v2

    xor-int/lit8 v14, v14, 0x1

    add-int/lit8 v7, v7, 0x1

    move v15, v8

    move v6, v10

    move/from16 v9, v18

    move/from16 v10, v22

    move/from16 v2, v23

    move/from16 v5, v24

    move/from16 v8, v27

    move-wide/from16 v11, v32

    goto/16 :goto_2

    :cond_e
    iget-object v1, v0, Lbhh;->f:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lbhh;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lbhh;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto/16 :goto_d

    :goto_b
    int-to-double v14, v1

    cmpg-double v16, v14, v12

    if-gez v16, :cond_10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v22, v12

    mul-double v12, v8, v20

    const/16 v16, 0x0

    cmpl-float v18, v4, v16

    double-to-float v14, v14

    double-to-float v12, v12

    if-eqz v18, :cond_f

    move-wide/from16 v18, v8

    float-to-double v8, v11

    move-wide/from16 v20, v2

    move v3, v1

    float-to-double v1, v10

    invoke-static {v8, v9, v1, v2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const-wide v8, -0x4006de04abbbd2e8L    # -1.5707963267948966

    add-double/2addr v1, v8

    double-to-float v1, v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    move v9, v3

    float-to-double v2, v12

    move-wide/from16 v31, v5

    float-to-double v5, v14

    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v5, -0x4006de04abbbd2e8L    # -1.5707963267948966

    add-double/2addr v2, v5

    double-to-float v2, v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v3, v7, v4

    iget-object v6, v0, Lbhh;->a:Landroid/graphics/Path;

    const/high16 v13, 0x3e800000    # 0.25f

    mul-float v3, v3, v13

    mul-float v8, v8, v3

    sub-float v25, v10, v8

    mul-float v1, v1, v3

    sub-float v26, v11, v1

    mul-float v5, v5, v3

    add-float v27, v14, v5

    mul-float v3, v3, v2

    add-float v28, v12, v3

    move-object/from16 v24, v6

    move/from16 v29, v14

    move/from16 v30, v12

    invoke-virtual/range {v24 .. v30}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_c

    :cond_f
    move-wide/from16 v20, v2

    move-wide/from16 v31, v5

    move-wide/from16 v18, v8

    move v9, v1

    iget-object v1, v0, Lbhh;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v14, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_c
    invoke-static/range {v31 .. v32}, Ljava/lang/Double;->isNaN(D)Z

    add-double v2, v20, v31

    add-int/lit8 v1, v9, 0x1

    move v11, v12

    move v10, v14

    move-wide/from16 v8, v18

    move-wide/from16 v12, v22

    move-wide/from16 v5, v31

    goto/16 :goto_b

    :cond_10
    iget-object v1, v0, Lbhh;->f:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v2, v0, Lbhh;->a:Landroid/graphics/Path;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lbhh;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    :goto_d
    iget-object v1, v0, Lbhh;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lbhh;->n:Lbkb;

    iget-object v2, v0, Lbhh;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v2}, Lbkb;->e(Landroid/graphics/Path;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lbhh;->l:Z

    iget-object v1, v0, Lbhh;->a:Landroid/graphics/Path;

    return-object v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_f

    :goto_e
    throw v1

    :goto_f
    goto :goto_e

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
