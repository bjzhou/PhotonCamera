.class public final Lbhi;
.super Ljava/lang/Object;

# interfaces
.implements Lbhn;
.implements Lbhe;
.implements Lbhg;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/RectF;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lbgj;

.field private final f:Lbhs;

.field private final g:Lbhs;

.field private final h:Lbhs;

.field private i:Z

.field private final j:Lbkb;


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbjh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbhi;->a:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbhi;->b:Landroid/graphics/RectF;

    new-instance v0, Lbkb;

    invoke-direct {v0}, Lbkb;-><init>()V

    iput-object v0, p0, Lbhi;->j:Lbkb;

    iget-object v0, p3, Lbjh;->a:Ljava/lang/String;

    iput-object v0, p0, Lbhi;->c:Ljava/lang/String;

    iget-boolean v0, p3, Lbjh;->e:Z

    iput-boolean v0, p0, Lbhi;->d:Z

    iput-object p1, p0, Lbhi;->e:Lbgj;

    iget-object p1, p3, Lbjh;->b:Lbiz;

    invoke-interface {p1}, Lbiz;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhi;->f:Lbhs;

    iget-object v0, p3, Lbjh;->c:Lbiz;

    invoke-interface {v0}, Lbiz;->a()Lbhs;

    move-result-object v0

    iput-object v0, p0, Lbhi;->g:Lbhs;

    iget-object p3, p3, Lbjh;->d:Lbip;

    invoke-virtual {p3}, Lbip;->a()Lbhs;

    move-result-object p3

    iput-object p3, p0, Lbhi;->h:Lbhs;

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p2, v0}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p2, p3}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {v0, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p3, p0}, Lbhs;->g(Lbhn;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbhi;->i:Z

    iget-object v0, p0, Lbhi;->e:Lbgj;

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

    iget-object v1, p0, Lbhi;->j:Lbkb;

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

    sget-object v0, Lbgo;->j:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lbhi;->g:Lbhs;

    :goto_0
    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_0
    sget-object v0, Lbgo;->l:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbhi;->f:Lbhs;

    goto :goto_0

    :cond_1
    sget-object v0, Lbgo;->k:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lbhi;->h:Lbhs;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbhi;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Landroid/graphics/Path;
    .locals 14

    iget-boolean v0, p0, Lbhi;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhi;->a:Landroid/graphics/Path;

    return-object v0

    :cond_0
    iget-object v0, p0, Lbhi;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-boolean v0, p0, Lbhi;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lbhi;->i:Z

    iget-object v0, p0, Lbhi;->a:Landroid/graphics/Path;

    return-object v0

    :cond_1
    iget-object v0, p0, Lbhi;->g:Lbhs;

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    iget-object v3, p0, Lbhi;->h:Lbhs;

    check-cast v3, Lbhu;

    invoke-virtual {v3}, Lbhu;->k()F

    move-result v3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v4

    cmpl-float v5, v3, v4

    if-lez v5, :cond_2

    move v3, v4

    :cond_2
    iget-object v4, p0, Lbhi;->f:Lbhs;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, p0, Lbhi;->a:Landroid/graphics/Path;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v2

    iget v7, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v0

    add-float/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v5, p0, Lbhi;->a:Landroid/graphics/Path;

    iget v6, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v2

    iget v7, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v0

    sub-float/2addr v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v5, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    cmpl-float v8, v3, v7

    if-lez v8, :cond_3

    iget-object v8, p0, Lbhi;->b:Landroid/graphics/RectF;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v2

    add-float v10, v3, v3

    iget v11, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    iget v12, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v2

    iget v13, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v0

    sub-float/2addr v9, v10

    sub-float/2addr v11, v10

    invoke-virtual {v8, v9, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, p0, Lbhi;->a:Landroid/graphics/Path;

    iget-object v9, p0, Lbhi;->b:Landroid/graphics/RectF;

    invoke-virtual {v8, v9, v7, v6, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_3
    iget-object v8, p0, Lbhi;->a:Landroid/graphics/Path;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v2

    add-float/2addr v9, v3

    iget v10, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v8, v3, v7

    if-lez v8, :cond_4

    iget-object v8, p0, Lbhi;->b:Landroid/graphics/RectF;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v2

    iget v10, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v10, v0

    add-float v11, v3, v3

    iget v12, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v2

    iget v13, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v0

    sub-float/2addr v10, v11

    add-float/2addr v12, v11

    invoke-virtual {v8, v9, v10, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, p0, Lbhi;->a:Landroid/graphics/Path;

    iget-object v9, p0, Lbhi;->b:Landroid/graphics/RectF;

    invoke-virtual {v8, v9, v6, v6, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_4
    iget-object v8, p0, Lbhi;->a:Landroid/graphics/Path;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v2

    iget v10, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    add-float/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v8, v3, v7

    if-lez v8, :cond_5

    iget-object v8, p0, Lbhi;->b:Landroid/graphics/RectF;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v9, v2

    iget v10, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    iget v11, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v11, v2

    add-float v12, v3, v3

    iget v13, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v13, v0

    add-float/2addr v11, v12

    add-float/2addr v13, v12

    invoke-virtual {v8, v9, v10, v11, v13}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v8, p0, Lbhi;->a:Landroid/graphics/Path;

    iget-object v9, p0, Lbhi;->b:Landroid/graphics/RectF;

    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual {v8, v9, v10, v6, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_5
    iget-object v8, p0, Lbhi;->a:Landroid/graphics/Path;

    iget v9, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v2

    sub-float/2addr v9, v3

    iget v10, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v10, v0

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    cmpl-float v7, v3, v7

    if-lez v7, :cond_6

    iget-object v7, p0, Lbhi;->b:Landroid/graphics/RectF;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    add-float/2addr v3, v3

    iget v9, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v0

    iget v10, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    iget v2, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    add-float/2addr v2, v3

    sub-float/2addr v8, v3

    invoke-virtual {v7, v8, v9, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lbhi;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lbhi;->b:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v3, v6, v5}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    :cond_6
    iget-object v0, p0, Lbhi;->a:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    iget-object v0, p0, Lbhi;->j:Lbkb;

    iget-object v2, p0, Lbhi;->a:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lbkb;->e(Landroid/graphics/Path;)V

    iput-boolean v1, p0, Lbhi;->i:Z

    iget-object v0, p0, Lbhi;->a:Landroid/graphics/Path;

    return-object v0
.end method
