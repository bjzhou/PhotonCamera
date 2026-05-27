.class public final Lbid;
.super Lbhs;


# instance fields
.field protected e:Lbkc;

.field protected f:Lbkc;

.field private final g:Landroid/graphics/PointF;

.field private final h:Landroid/graphics/PointF;

.field private final i:Lbhs;

.field private final j:Lbhs;


# direct methods
.method public constructor <init>(Lbhs;Lbhs;)V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lbhs;-><init>(Ljava/util/List;)V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lbid;->g:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lbid;->h:Landroid/graphics/PointF;

    iput-object p1, p0, Lbid;->i:Lbhs;

    iput-object p2, p0, Lbid;->j:Lbhs;

    iget p1, p0, Lbhs;->c:F

    invoke-virtual {p0, p1}, Lbhs;->i(F)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic e()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lbid;->k()Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f(Lblt;F)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lbid;->k()Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final i(F)V
    .locals 2

    iget-object v0, p0, Lbid;->i:Lbhs;

    invoke-virtual {v0, p1}, Lbhs;->i(F)V

    iget-object v0, p0, Lbid;->j:Lbhs;

    invoke-virtual {v0, p1}, Lbhs;->i(F)V

    iget-object p1, p0, Lbid;->g:Landroid/graphics/PointF;

    iget-object v0, p0, Lbid;->i:Lbhs;

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lbid;->j:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lbid;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lbid;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbhn;

    invoke-interface {v0}, Lbhn;->c()V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final k()Landroid/graphics/PointF;
    .locals 4

    iget-object v0, p0, Lbid;->e:Lbkc;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbid;->i:Lbhs;

    invoke-virtual {v0}, Lbhs;->d()Lblt;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lbid;->i:Lbhs;

    invoke-virtual {v2}, Lbhs;->b()F

    iget-object v2, v0, Lblt;->h:Ljava/lang/Float;

    iget-object v3, p0, Lbid;->e:Lbkc;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    :cond_0
    iget-object v2, v0, Lblt;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    iget-object v0, v0, Lblt;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    iget-object v0, v3, Lbkc;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lbid;->f:Lbkc;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lbid;->j:Lbhs;

    invoke-virtual {v2}, Lbhs;->d()Lblt;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v1, p0, Lbid;->j:Lbhs;

    invoke-virtual {v1}, Lbhs;->b()F

    iget-object v1, v2, Lblt;->h:Ljava/lang/Float;

    iget-object v3, p0, Lbid;->f:Lbkc;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    :cond_2
    iget-object v1, v2, Lblt;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    iget-object v1, v2, Lblt;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    iget-object v1, v3, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    goto :goto_1

    :cond_3
    :goto_1
    const/4 v2, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbid;->h:Landroid/graphics/PointF;

    iget-object v3, p0, Lbid;->g:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v3, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lbid;->h:Landroid/graphics/PointF;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v3, v0, v2}, Landroid/graphics/PointF;->set(FF)V

    :goto_2
    if-nez v1, :cond_5

    iget-object v0, p0, Lbid;->h:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lbid;->g:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lbid;->h:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/PointF;->set(FF)V

    :goto_3
    iget-object v0, p0, Lbid;->h:Landroid/graphics/PointF;

    return-object v0
.end method
