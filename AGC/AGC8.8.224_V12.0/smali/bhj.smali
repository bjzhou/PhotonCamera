.class public final Lbhj;
.super Ljava/lang/Object;

# interfaces
.implements Lbgy;
.implements Lbhg;
.implements Lbhd;
.implements Lbhn;
.implements Lbhe;


# instance fields
.field private final a:Landroid/graphics/Matrix;

.field private final b:Landroid/graphics/Path;

.field private final c:Lbgj;

.field private final d:Lbjq;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lbhs;

.field private final h:Lbhs;

.field private final i:Lbif;

.field private j:Lbgx;


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbji;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbhj;->a:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbhj;->b:Landroid/graphics/Path;

    iput-object p1, p0, Lbhj;->c:Lbgj;

    iput-object p2, p0, Lbhj;->d:Lbjq;

    iget-object p1, p3, Lbji;->a:Ljava/lang/String;

    iput-object p1, p0, Lbhj;->e:Ljava/lang/String;

    iget-boolean p1, p3, Lbji;->e:Z

    iput-boolean p1, p0, Lbhj;->f:Z

    iget-object p1, p3, Lbji;->b:Lbip;

    invoke-virtual {p1}, Lbip;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhj;->g:Lbhs;

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p3, Lbji;->c:Lbip;

    invoke-virtual {p1}, Lbip;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhj;->h:Lbhs;

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p3, Lbji;->d:Lbiy;

    invoke-virtual {p1}, Lbiy;->b()Lbif;

    move-result-object p1

    iput-object p1, p0, Lbhj;->i:Lbif;

    invoke-virtual {p1, p2}, Lbif;->c(Lbjq;)V

    invoke-virtual {p1, p0}, Lbif;->d(Lbhn;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 9

    iget-object v0, p0, Lbhj;->g:Lbhs;

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lbhj;->h:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lbhj;->i:Lbif;

    iget-object v2, v2, Lbif;->h:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v4, p0, Lbhj;->i:Lbif;

    iget-object v4, v4, Lbif;->i:Lbhs;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    div-float/2addr v4, v3

    float-to-int v3, v0

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_0

    iget-object v5, p0, Lbhj;->a:Landroid/graphics/Matrix;

    invoke-virtual {v5, p2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v5, p0, Lbhj;->a:Landroid/graphics/Matrix;

    iget-object v6, p0, Lbhj;->i:Lbif;

    int-to-float v7, v3

    add-float v8, v7, v1

    invoke-virtual {v6, v8}, Lbif;->b(F)Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    int-to-float v5, p3

    div-float/2addr v7, v0

    sget-object v6, Lbln;->a:Landroid/graphics/PointF;

    sub-float v6, v4, v2

    mul-float v7, v7, v6

    add-float/2addr v7, v2

    iget-object v6, p0, Lbhj;->j:Lbgx;

    iget-object v8, p0, Lbhj;->a:Landroid/graphics/Matrix;

    mul-float v5, v5, v7

    float-to-int v5, v5

    invoke-virtual {v6, p1, v8, v5}, Lbgx;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    iget-object v0, p0, Lbhj;->j:Lbgx;

    invoke-virtual {v0, p1, p2, p3}, Lbgx;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lbhj;->c:Lbgj;

    invoke-virtual {v0}, Lbgj;->invalidateSelf()V

    return-void
.end method

.method public final d(Lbik;ILjava/util/List;Lbik;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lbln;->d(Lbik;ILjava/util/List;Lbik;Lbhe;)V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lbhj;->j:Lbgx;

    invoke-virtual {v0, p1, p2}, Lbgx;->e(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Lbkc;)V
    .locals 1

    iget-object v0, p0, Lbhj;->i:Lbif;

    invoke-virtual {v0, p1, p2}, Lbif;->e(Ljava/lang/Object;Lbkc;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lbgo;->s:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbhj;->g:Lbhs;

    :goto_0
    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_1
    sget-object v0, Lbgo;->t:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lbhj;->h:Lbhs;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbhj;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/util/ListIterator;)V
    .locals 8

    iget-object v0, p0, Lbhj;->j:Lbgx;

    if-nez v0, :cond_3

    :cond_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_0

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgw;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    new-instance p1, Lbgx;

    iget-object v2, p0, Lbhj;->c:Lbgj;

    iget-object v3, p0, Lbhj;->d:Lbjq;

    iget-boolean v5, p0, Lbhj;->f:Z

    const-string v4, "Repeater"

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lbgx;-><init>(Lbgj;Lbjq;Ljava/lang/String;ZLjava/util/List;Lbiy;)V

    iput-object p1, p0, Lbhj;->j:Lbgx;

    :cond_3
    return-void
.end method

.method public final i()Landroid/graphics/Path;
    .locals 6

    iget-object v0, p0, Lbhj;->j:Lbgx;

    invoke-virtual {v0}, Lbgx;->i()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lbhj;->b:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    iget-object v1, p0, Lbhj;->g:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lbhj;->h:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lbhj;->a:Landroid/graphics/Matrix;

    iget-object v4, p0, Lbhj;->i:Lbif;

    int-to-float v5, v1

    add-float/2addr v5, v2

    invoke-virtual {v4, v5}, Lbif;->b(F)Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v3, p0, Lbhj;->b:Landroid/graphics/Path;

    iget-object v4, p0, Lbhj;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbhj;->b:Landroid/graphics/Path;

    return-object v0
.end method
