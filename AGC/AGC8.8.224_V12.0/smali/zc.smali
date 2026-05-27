.class public final Lzc;
.super Lzi;


# direct methods
.method public constructor <init>(Lyn;)V
    .locals 1

    invoke-direct {p0, p1}, Lzi;-><init>(Lyn;)V

    iget-object v0, p1, Lyn;->h:Lze;

    invoke-virtual {v0}, Lze;->d()V

    iget-object v0, p1, Lyn;->i:Lzg;

    invoke-virtual {v0}, Lzg;->d()V

    check-cast p1, Lyq;

    iget p1, p1, Lyq;->as:I

    iput p1, p0, Lzc;->g:I

    return-void
.end method

.method private final g(Lyz;)V
    .locals 1

    iget-object v0, p0, Lzc;->i:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lyz;->k:Ljava/util/List;

    iget-object v0, p0, Lzc;->i:Lyz;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget-object v0, p0, Lzc;->d:Lyn;

    move-object v1, v0

    check-cast v1, Lyq;

    iget v2, v1, Lyq;->b:I

    iget v3, v1, Lyq;->c:I

    iget v4, v1, Lyq;->a:F

    iget v1, v1, Lyq;->as:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_2

    if-eq v2, v4, :cond_0

    iget-object v1, p0, Lzc;->i:Lyz;

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->i:Lyz;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->i:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    iget-object v1, p0, Lzc;->i:Lyz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->i:Lyz;

    iput v2, v0, Lyz;->e:I

    goto :goto_0

    :cond_0
    if-eq v3, v4, :cond_1

    iget-object v1, p0, Lzc;->i:Lyz;

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->j:Lyz;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->j:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    iget-object v1, p0, Lzc;->i:Lyz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->i:Lyz;

    neg-int v1, v3

    iput v1, v0, Lyz;->e:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lzc;->i:Lyz;

    iput-boolean v5, v1, Lyz;->b:Z

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->j:Lyz;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->j:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    iget-object v1, p0, Lzc;->i:Lyz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->i:Lyz;

    invoke-direct {p0, v0}, Lzc;->g(Lyz;)V

    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->j:Lyz;

    invoke-direct {p0, v0}, Lzc;->g(Lyz;)V

    return-void

    :cond_2
    if-eq v2, v4, :cond_3

    iget-object v1, p0, Lzc;->i:Lyz;

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->i:Lyz;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->i:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    iget-object v1, p0, Lzc;->i:Lyz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->i:Lyz;

    iput v2, v0, Lyz;->e:I

    goto :goto_1

    :cond_3
    if-eq v3, v4, :cond_4

    iget-object v1, p0, Lzc;->i:Lyz;

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    iget-object v1, p0, Lzc;->i:Lyz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->i:Lyz;

    neg-int v1, v3

    iput v1, v0, Lyz;->e:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lzc;->i:Lyz;

    iput-boolean v5, v1, Lyz;->b:Z

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->V:Lyn;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    iget-object v1, p0, Lzc;->i:Lyz;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->i:Lyz;

    invoke-direct {p0, v0}, Lzc;->g(Lyz;)V

    iget-object v0, p0, Lzc;->d:Lyn;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    invoke-direct {p0, v0}, Lzc;->g(Lyz;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lzc;->d:Lyn;

    move-object v1, v0

    check-cast v1, Lyq;

    iget v1, v1, Lyq;->as:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lzc;->i:Lyz;

    iget v1, v1, Lyz;->f:I

    iput v1, v0, Lyn;->aa:I

    return-void

    :cond_0
    iget-object v1, p0, Lzc;->i:Lyz;

    iget v1, v1, Lyz;->f:I

    iput v1, v0, Lyn;->ab:I

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lzc;->i:Lyz;

    invoke-virtual {v0}, Lyz;->b()V

    return-void
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lzc;->i:Lyz;

    iget-boolean v1, v0, Lyz;->c:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lyz;->i:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyz;

    iget-object v1, p0, Lzc;->d:Lyn;

    check-cast v1, Lyq;

    iget v0, v0, Lyz;->f:I

    int-to-float v0, v0

    iget v1, v1, Lyq;->a:F

    mul-float v0, v0, v1

    iget-object v1, p0, Lzc;->i:Lyz;

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lyz;->c(I)V

    return-void
.end method
