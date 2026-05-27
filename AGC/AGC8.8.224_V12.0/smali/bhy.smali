.class public final Lbhy;
.super Lblt;


# instance fields
.field public a:Landroid/graphics/Path;

.field private final o:Lblt;


# direct methods
.method public constructor <init>(Lbga;Lblt;)V
    .locals 10

    iget-object v0, p2, Lblt;->b:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/graphics/PointF;

    iget-object v0, p2, Lblt;->c:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, p2, Lblt;->d:Landroid/view/animation/Interpolator;

    iget-object v6, p2, Lblt;->e:Landroid/view/animation/Interpolator;

    iget-object v7, p2, Lblt;->f:Landroid/view/animation/Interpolator;

    iget v8, p2, Lblt;->g:F

    iget-object v9, p2, Lblt;->h:Ljava/lang/Float;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lblt;-><init>(Lbga;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    iput-object p2, p0, Lbhy;->o:Lblt;

    invoke-virtual {p0}, Lbhy;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    iget-object v0, p0, Lbhy;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lbhy;->b:Ljava/lang/Object;

    if-eqz v2, :cond_0

    check-cast v2, Landroid/graphics/PointF;

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lbhy;->c:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lbhy;->b:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lbhy;->c:Ljava/lang/Object;

    if-eqz v2, :cond_3

    if-nez v1, :cond_3

    check-cast v0, Landroid/graphics/PointF;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v1, p0, Lbhy;->o:Lblt;

    iget-object v3, v1, Lblt;->m:Landroid/graphics/PointF;

    iget-object v1, v1, Lblt;->n:Landroid/graphics/PointF;

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v4

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    :cond_1
    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v4

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float v6, v0, v3

    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->x:F

    add-float v7, v0, v3

    iget v0, v2, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float v8, v0, v1

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    move-object v4, v11

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    :cond_2
    iget v0, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_1
    iput-object v11, p0, Lbhy;->a:Landroid/graphics/Path;

    return-void

    :cond_3
    return-void
.end method
