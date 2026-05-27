.class public final Lbgz;
.super Ljava/lang/Object;

# interfaces
.implements Lbhg;
.implements Lbhn;
.implements Lbhe;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Ljava/lang/String;

.field private final c:Lbgj;

.field private final d:Lbhs;

.field private final e:Lbhs;

.field private final f:Lbjb;

.field private g:Z

.field private final h:Lbkb;


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbjb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbgz;->a:Landroid/graphics/Path;

    new-instance v0, Lbkb;

    invoke-direct {v0}, Lbkb;-><init>()V

    iput-object v0, p0, Lbgz;->h:Lbkb;

    iget-object v0, p3, Lbjb;->a:Ljava/lang/String;

    iput-object v0, p0, Lbgz;->b:Ljava/lang/String;

    iput-object p1, p0, Lbgz;->c:Lbgj;

    iget-object p1, p3, Lbjb;->c:Lbit;

    invoke-virtual {p1}, Lbit;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbgz;->d:Lbhs;

    iget-object v0, p3, Lbjb;->b:Lbiz;

    invoke-interface {v0}, Lbiz;->a()Lbhs;

    move-result-object v0

    iput-object v0, p0, Lbgz;->e:Lbhs;

    iput-object p3, p0, Lbgz;->f:Lbjb;

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p2, v0}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {v0, p0}, Lbhs;->g(Lbhn;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgz;->g:Z

    iget-object v0, p0, Lbgz;->c:Lbgj;

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

    iget-object v1, p0, Lbgz;->h:Lbkb;

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

    sget-object v0, Lbgo;->i:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lbgz;->d:Lbhs;

    :goto_0
    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_0
    sget-object v0, Lbgo;->l:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbgz;->e:Lbhs;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbgz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Landroid/graphics/Path;
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lbgz;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbgz;->a:Landroid/graphics/Path;

    return-object v1

    :cond_0
    iget-object v1, v0, Lbgz;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, v0, Lbgz;->f:Lbjb;

    iget-boolean v1, v1, Lbjb;->e:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iput-boolean v2, v0, Lbgz;->g:Z

    iget-object v1, v0, Lbgz;->a:Landroid/graphics/Path;

    return-object v1

    :cond_1
    iget-object v1, v0, Lbgz;->d:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    iget-object v4, v0, Lbgz;->a:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lbgz;->f:Lbjb;

    iget-boolean v4, v4, Lbjb;->d:Z

    const v5, 0x3f0d6239    # 0.55228f

    mul-float v12, v1, v5

    mul-float v13, v3, v5

    const/4 v14, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v0, Lbgz;->a:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lbgz;->a:Landroid/graphics/Path;

    neg-float v4, v13

    neg-float v11, v3

    neg-float v10, v12

    const/16 v16, 0x0

    move v6, v4

    move v7, v15

    move v8, v11

    move v9, v10

    move/from16 v17, v10

    move v10, v11

    move/from16 v18, v11

    move/from16 v11, v16

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lbgz;->a:Landroid/graphics/Path;

    add-float/2addr v12, v14

    const/4 v10, 0x0

    move/from16 v6, v18

    move v7, v12

    move v8, v4

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lbgz;->a:Landroid/graphics/Path;

    add-float v4, v13, v14

    const/4 v11, 0x0

    move v6, v4

    move v7, v1

    move v8, v3

    move v9, v12

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lbgz;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v17

    move v8, v4

    move v9, v15

    move v11, v15

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lbgz;->a:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, v0, Lbgz;->a:Landroid/graphics/Path;

    add-float v4, v13, v14

    neg-float v11, v12

    const/16 v16, 0x0

    move v6, v4

    move v7, v15

    move v8, v3

    move v9, v11

    move v10, v3

    move/from16 v17, v11

    move/from16 v11, v16

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lbgz;->a:Landroid/graphics/Path;

    add-float/2addr v12, v14

    const/4 v10, 0x0

    move v6, v3

    move v7, v12

    move v8, v4

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lbgz;->a:Landroid/graphics/Path;

    neg-float v4, v13

    neg-float v3, v3

    const/4 v11, 0x0

    move v6, v4

    move v7, v1

    move v8, v3

    move v9, v12

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v5, v0, Lbgz;->a:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v17

    move v8, v4

    move v9, v15

    move v11, v15

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_0
    iget-object v1, v0, Lbgz;->e:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v3, v0, Lbgz;->a:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    iget-object v1, v0, Lbgz;->a:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, v0, Lbgz;->h:Lbkb;

    iget-object v3, v0, Lbgz;->a:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lbkb;->e(Landroid/graphics/Path;)V

    iput-boolean v2, v0, Lbgz;->g:Z

    iget-object v1, v0, Lbgz;->a:Landroid/graphics/Path;

    return-object v1
.end method
