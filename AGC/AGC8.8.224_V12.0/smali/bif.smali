.class public final Lbif;
.super Ljava/lang/Object;


# instance fields
.field public a:Lbhs;

.field public b:Lbhs;

.field public c:Lbhs;

.field public d:Lbhs;

.field public e:Lbhs;

.field public final f:Lbhu;

.field public final g:Lbhu;

.field public final h:Lbhs;

.field public final i:Lbhs;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Matrix;

.field private final l:Landroid/graphics/Matrix;

.field private final m:Landroid/graphics/Matrix;

.field private final n:[F


# direct methods
.method public constructor <init>(Lbiy;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbif;->j:Landroid/graphics/Matrix;

    iget-object v0, p1, Lbiy;->a:Lbis;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbis;->a()Lbhs;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lbif;->a:Lbhs;

    iget-object v0, p1, Lbiy;->b:Lbiz;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lbiz;->a()Lbhs;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lbif;->b:Lbhs;

    iget-object v0, p1, Lbiy;->c:Lbiu;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lbiu;->a()Lbhs;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lbif;->c:Lbhs;

    iget-object v0, p1, Lbiy;->d:Lbip;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Lbip;->a()Lbhs;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lbif;->d:Lbhs;

    iget-object v0, p1, Lbiy;->f:Lbip;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Lbip;->a()Lbhs;

    move-result-object v0

    :goto_4
    check-cast v0, Lbhu;

    iput-object v0, p0, Lbif;->f:Lbhu;

    if-eqz v0, :cond_5

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbif;->k:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbif;->l:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbif;->m:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lbif;->n:[F

    goto :goto_5

    :cond_5
    iput-object v1, p0, Lbif;->k:Landroid/graphics/Matrix;

    iput-object v1, p0, Lbif;->l:Landroid/graphics/Matrix;

    iput-object v1, p0, Lbif;->m:Landroid/graphics/Matrix;

    iput-object v1, p0, Lbif;->n:[F

    :goto_5
    iget-object v0, p1, Lbiy;->g:Lbip;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v0}, Lbip;->a()Lbhs;

    move-result-object v0

    :goto_6
    check-cast v0, Lbhu;

    iput-object v0, p0, Lbif;->g:Lbhu;

    iget-object v0, p1, Lbiy;->e:Lbir;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lbir;->a()Lbhs;

    move-result-object v0

    iput-object v0, p0, Lbif;->e:Lbhs;

    :cond_7
    iget-object v0, p1, Lbiy;->h:Lbip;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lbip;->a()Lbhs;

    move-result-object v0

    iput-object v0, p0, Lbif;->h:Lbhs;

    goto :goto_7

    :cond_8
    iput-object v1, p0, Lbif;->h:Lbhs;

    :goto_7
    iget-object p1, p1, Lbiy;->i:Lbip;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lbip;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbif;->i:Lbhs;

    return-void

    :cond_9
    iput-object v1, p0, Lbif;->i:Lbhs;

    return-void
.end method

.method private final f()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbif;->n:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Matrix;
    .locals 13

    iget-object v0, p0, Lbif;->j:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lbif;->b:Lbhs;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_0

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lbif;->j:Landroid/graphics/Matrix;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_1
    iget-object v0, p0, Lbif;->d:Lbhs;

    if-eqz v0, :cond_3

    instance-of v2, v0, Lbig;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_2
    check-cast v0, Lbhu;

    invoke-virtual {v0}, Lbhu;->k()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbif;->j:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_3
    iget-object v0, p0, Lbif;->f:Lbhu;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbif;->g:Lbhu;

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lbhu;->k()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    :goto_1
    iget-object v4, p0, Lbif;->g:Lbhu;

    if-nez v4, :cond_5

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lbhu;->k()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    :goto_2
    iget-object v4, p0, Lbif;->f:Lbhu;

    invoke-virtual {v4}, Lbhu;->k()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-direct {p0}, Lbif;->f()V

    iget-object v5, p0, Lbif;->n:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    aput v3, v5, v7

    neg-float v8, v3

    const/4 v9, 0x3

    aput v8, v5, v9

    const/4 v10, 0x4

    aput v0, v5, v10

    const/16 v11, 0x8

    aput v2, v5, v11

    iget-object v12, p0, Lbif;->k:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lbif;->f()V

    iget-object v5, p0, Lbif;->n:[F

    aput v2, v5, v6

    aput v4, v5, v9

    aput v2, v5, v10

    aput v2, v5, v11

    iget-object v4, p0, Lbif;->l:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    invoke-direct {p0}, Lbif;->f()V

    iget-object v4, p0, Lbif;->n:[F

    aput v0, v4, v6

    aput v8, v4, v7

    aput v3, v4, v9

    aput v0, v4, v10

    aput v2, v4, v11

    iget-object v0, p0, Lbif;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    iget-object v0, p0, Lbif;->l:Landroid/graphics/Matrix;

    iget-object v3, p0, Lbif;->k:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lbif;->m:Landroid/graphics/Matrix;

    iget-object v3, p0, Lbif;->l:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    iget-object v0, p0, Lbif;->j:Landroid/graphics/Matrix;

    iget-object v3, p0, Lbif;->m:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_6
    iget-object v0, p0, Lbif;->c:Lbhs;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblu;

    iget v3, v0, Lblu;->a:F

    cmpl-float v4, v3, v2

    if-nez v4, :cond_7

    iget v4, v0, Lblu;->b:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lbif;->j:Landroid/graphics/Matrix;

    iget v0, v0, Lblu;->b:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_8
    iget-object v0, p0, Lbif;->a:Lbhs;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v1

    if-nez v2, :cond_9

    iget v2, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_a

    :cond_9
    iget-object v1, p0, Lbif;->j:Landroid/graphics/Matrix;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_a
    iget-object v0, p0, Lbif;->j:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public final b(F)Landroid/graphics/Matrix;
    .locals 9

    iget-object v0, p0, Lbif;->b:Lbhs;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    :goto_0
    iget-object v2, p0, Lbif;->c:Lbhs;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lblu;

    :goto_1
    iget-object v3, p0, Lbif;->j:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    iget-object v3, p0, Lbif;->j:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float v4, v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v0, v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    iget-object v0, p0, Lbif;->j:Landroid/graphics/Matrix;

    iget v3, v2, Lblu;->a:F

    float-to-double v3, v3

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    iget v2, v2, Lblu;->b:F

    float-to-double v7, v2

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    iget-object v0, p0, Lbif;->d:Lbhs;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lbif;->a:Lbhs;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    :goto_2
    iget-object v2, p0, Lbif;->j:Landroid/graphics/Matrix;

    mul-float v0, v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    :cond_7
    iget-object p1, p0, Lbif;->j:Landroid/graphics/Matrix;

    return-object p1
.end method

.method public final c(Lbjq;)V
    .locals 1

    iget-object v0, p0, Lbif;->e:Lbhs;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    iget-object v0, p0, Lbif;->h:Lbhs;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    iget-object v0, p0, Lbif;->i:Lbhs;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    iget-object v0, p0, Lbif;->a:Lbhs;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    iget-object v0, p0, Lbif;->b:Lbhs;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    iget-object v0, p0, Lbif;->c:Lbhs;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    iget-object v0, p0, Lbif;->d:Lbhs;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    iget-object v0, p0, Lbif;->f:Lbhu;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    iget-object v0, p0, Lbif;->g:Lbhu;

    invoke-virtual {p1, v0}, Lbjq;->h(Lbhs;)V

    return-void
.end method

.method public final d(Lbhn;)V
    .locals 1

    iget-object v0, p0, Lbif;->e:Lbhs;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_0
    iget-object v0, p0, Lbif;->h:Lbhs;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_1
    iget-object v0, p0, Lbif;->i:Lbhs;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_2
    iget-object v0, p0, Lbif;->a:Lbhs;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_3
    iget-object v0, p0, Lbif;->b:Lbhs;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_4
    iget-object v0, p0, Lbif;->c:Lbhs;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_5
    iget-object v0, p0, Lbif;->d:Lbhs;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_6
    iget-object v0, p0, Lbif;->f:Lbhu;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_7
    iget-object v0, p0, Lbif;->g:Lbhu;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lbhs;->g(Lbhn;)V

    :cond_8
    return-void
.end method

.method public final e(Ljava/lang/Object;Lbkc;)Z
    .locals 3

    sget-object v0, Lbgo;->e:Landroid/graphics/PointF;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbif;->a:Lbhs;

    if-nez p1, :cond_0

    new-instance p1, Lbig;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v1, v1}, Lbig;-><init>(Lbkc;[B[B)V

    iput-object p1, p0, Lbif;->a:Lbhs;

    goto/16 :goto_2

    :cond_0
    iput-object p2, p1, Lbhs;->d:Lbkc;

    goto/16 :goto_2

    :cond_1
    sget-object v0, Lbgo;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lbif;->b:Lbhs;

    if-nez p1, :cond_2

    new-instance p1, Lbig;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v1, v1}, Lbig;-><init>(Lbkc;[B[B)V

    iput-object p1, p0, Lbif;->b:Lbhs;

    goto/16 :goto_2

    :cond_2
    iput-object p2, p1, Lbhs;->d:Lbkc;

    goto/16 :goto_2

    :cond_3
    sget-object v0, Lbgo;->g:Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lbif;->b:Lbhs;

    instance-of v2, v0, Lbid;

    if-eqz v2, :cond_4

    check-cast v0, Lbid;

    iget-object p1, v0, Lbid;->e:Lbkc;

    iput-object p2, v0, Lbid;->e:Lbkc;

    goto/16 :goto_2

    :cond_4
    sget-object v0, Lbgo;->h:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lbif;->b:Lbhs;

    instance-of v2, v0, Lbid;

    if-eqz v2, :cond_5

    check-cast v0, Lbid;

    iget-object p1, v0, Lbid;->f:Lbkc;

    iput-object p2, v0, Lbid;->f:Lbkc;

    goto/16 :goto_2

    :cond_5
    sget-object v0, Lbgo;->m:Lblu;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lbif;->c:Lbhs;

    if-nez p1, :cond_6

    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1, v1}, Lbig;-><init>(Lbkc;[B[B)V

    iput-object p1, p0, Lbif;->c:Lbhs;

    goto :goto_2

    :cond_6
    iput-object p2, p1, Lbhs;->d:Lbkc;

    goto :goto_2

    :cond_7
    sget-object v0, Lbgo;->n:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lbif;->d:Lbhs;

    if-nez p1, :cond_8

    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1, v1}, Lbig;-><init>(Lbkc;[B[B)V

    iput-object p1, p0, Lbif;->d:Lbhs;

    goto :goto_2

    :cond_8
    iput-object p2, p1, Lbhs;->d:Lbkc;

    goto :goto_2

    :cond_9
    sget-object v0, Lbgo;->c:Ljava/lang/Integer;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lbif;->e:Lbhs;

    if-nez p1, :cond_a

    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1, v1}, Lbig;-><init>(Lbkc;[B[B)V

    iput-object p1, p0, Lbif;->e:Lbhs;

    goto :goto_2

    :cond_a
    :goto_0
    iput-object p2, p1, Lbhs;->d:Lbkc;

    goto :goto_2

    :cond_b
    sget-object v0, Lbgo;->A:Ljava/lang/Float;

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lbif;->h:Lbhs;

    if-eqz v0, :cond_c

    :goto_1
    iput-object p2, v0, Lbhs;->d:Lbkc;

    goto :goto_2

    :cond_c
    sget-object v0, Lbgo;->B:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lbif;->i:Lbhs;

    if-eqz v0, :cond_d

    goto :goto_1

    :cond_d
    sget-object v0, Lbgo;->o:Ljava/lang/Float;

    if-ne p1, v0, :cond_e

    iget-object v0, p0, Lbif;->f:Lbhu;

    if-eqz v0, :cond_e

    goto :goto_1

    :cond_e
    sget-object v0, Lbgo;->p:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object p1, p0, Lbif;->g:Lbhu;

    if-eqz p1, :cond_f

    goto :goto_0

    :goto_2
    const/4 p1, 0x1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method
