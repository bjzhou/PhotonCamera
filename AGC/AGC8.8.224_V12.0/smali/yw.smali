.class public final Lyw;
.super Lzi;


# instance fields
.field a:Ljava/util/ArrayList;

.field private b:I


# direct methods
.method public constructor <init>(Lyn;I)V
    .locals 5

    invoke-direct {p0, p1}, Lzi;-><init>(Lyn;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lyw;->a:Ljava/util/ArrayList;

    iput p2, p0, Lyw;->g:I

    iget-object p1, p0, Lyw;->d:Lyn;

    invoke-virtual {p1, p2}, Lyn;->o(I)Lyn;

    move-result-object p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_0
    if-eqz p1, :cond_0

    iget p2, p0, Lyw;->g:I

    invoke-virtual {p1, p2}, Lyn;->o(I)Lyn;

    move-result-object p2

    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lyw;->d:Lyn;

    iget-object p1, p0, Lyw;->a:Ljava/util/ArrayList;

    iget v0, p0, Lyw;->g:I

    invoke-virtual {p2, v0}, Lyn;->p(I)Lzi;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p1, p0, Lyw;->g:I

    invoke-virtual {p2, p1}, Lyn;->n(I)Lyn;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_1

    iget-object p2, p0, Lyw;->a:Ljava/util/ArrayList;

    iget v0, p0, Lyw;->g:I

    invoke-virtual {p1, v0}, Lyn;->p(I)Lzi;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p2, p0, Lyw;->g:I

    invoke-virtual {p1, p2}, Lyn;->n(I)Lyn;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x1

    if-ge v0, p2, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzi;

    iget v3, p0, Lyw;->g:I

    if-nez v3, :cond_2

    iget-object v1, v2, Lzi;->d:Lyn;

    iput-object p0, v1, Lyn;->f:Lyw;

    goto :goto_3

    :cond_2
    if-ne v3, v1, :cond_3

    iget-object v1, v2, Lzi;->d:Lyn;

    iput-object p0, v1, Lyn;->g:Lyw;

    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget p1, p0, Lyw;->g:I

    if-nez p1, :cond_5

    iget-object p1, p0, Lyw;->d:Lyn;

    iget-object p1, p1, Lyn;->V:Lyn;

    check-cast p1, Lyo;

    iget-boolean p1, p1, Lyo;->c:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v1, :cond_5

    iget-object p1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lzi;

    iget-object p1, p1, Lzi;->d:Lyn;

    iput-object p1, p0, Lyw;->d:Lyn;

    :cond_5
    iget p1, p0, Lyw;->g:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lyw;->d:Lyn;

    iget p1, p1, Lyn;->ak:I

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lyw;->d:Lyn;

    iget p1, p1, Lyn;->al:I

    :goto_4
    iput p1, p0, Lyw;->b:I

    return-void
.end method

.method private final g()Lyn;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi;

    iget-object v1, v1, Lzi;->d:Lyn;

    iget v2, v1, Lyn;->ai:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final n()Lyn;
    .locals 4

    iget-object v0, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi;

    iget-object v1, v1, Lzi;->d:Lyn;

    iget v2, v1, Lyn;->ai:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final a()J
    .locals 7

    iget-object v0, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzi;

    iget-object v5, v4, Lzi;->i:Lyz;

    iget v5, v5, Lyz;->e:I

    int-to-long v5, v5

    add-long/2addr v2, v5

    invoke-virtual {v4}, Lzi;->a()J

    move-result-wide v5

    add-long/2addr v2, v5

    iget-object v4, v4, Lzi;->j:Lyz;

    iget v4, v4, Lyz;->e:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzi;

    invoke-virtual {v4}, Lzi;->b()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi;

    iget-object v1, v1, Lzi;->d:Lyn;

    iget-object v3, p0, Lyw;->a:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzi;

    iget-object v0, v0, Lzi;->d:Lyn;

    iget v3, p0, Lyw;->g:I

    if-nez v3, :cond_5

    iget-object v1, v1, Lyn;->K:Lym;

    iget-object v0, v0, Lyn;->M:Lym;

    invoke-static {v1, v2}, Lyw;->l(Lym;I)Lyz;

    move-result-object v3

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    invoke-direct {p0}, Lyw;->g()Lyn;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v1, v4, Lyn;->K:Lym;

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    :cond_2
    if-eqz v3, :cond_3

    iget-object v4, p0, Lyw;->i:Lyz;

    invoke-static {v4, v3, v1}, Lyw;->j(Lyz;Lyz;I)V

    :cond_3
    invoke-static {v0, v2}, Lyw;->l(Lym;I)Lyz;

    move-result-object v1

    invoke-virtual {v0}, Lym;->b()I

    move-result v0

    invoke-direct {p0}, Lyw;->n()Lyn;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v0, v2, Lyn;->M:Lym;

    invoke-virtual {v0}, Lym;->b()I

    move-result v0

    :cond_4
    if-eqz v1, :cond_9

    iget-object v2, p0, Lyw;->j:Lyz;

    neg-int v0, v0

    invoke-static {v2, v1, v0}, Lyw;->j(Lyz;Lyz;I)V

    goto :goto_1

    :cond_5
    iget-object v1, v1, Lyn;->L:Lym;

    iget-object v0, v0, Lyn;->N:Lym;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lyw;->l(Lym;I)Lyz;

    move-result-object v3

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    invoke-direct {p0}, Lyw;->g()Lyn;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v1, v4, Lyn;->L:Lym;

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    :cond_6
    if-eqz v3, :cond_7

    iget-object v4, p0, Lyw;->i:Lyz;

    invoke-static {v4, v3, v1}, Lyw;->j(Lyz;Lyz;I)V

    :cond_7
    invoke-static {v0, v2}, Lyw;->l(Lym;I)Lyz;

    move-result-object v1

    invoke-virtual {v0}, Lym;->b()I

    move-result v0

    invoke-direct {p0}, Lyw;->n()Lyn;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v0, v2, Lyn;->N:Lym;

    invoke-virtual {v0}, Lym;->b()I

    move-result v0

    :cond_8
    if-eqz v1, :cond_9

    iget-object v2, p0, Lyw;->j:Lyz;

    neg-int v0, v0

    invoke-static {v2, v1, v0}, Lyw;->j(Lyz;Lyz;I)V

    :cond_9
    :goto_1
    iget-object v0, p0, Lyw;->i:Lyz;

    iput-object p0, v0, Lyz;->a:Lyx;

    iget-object v0, p0, Lyw;->j:Lyz;

    iput-object p0, v0, Lyz;->a:Lyx;

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzi;

    invoke-virtual {v1}, Lzi;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lyw;->e:Lzf;

    iget-object v0, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzi;

    invoke-virtual {v3}, Lzi;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 4

    iget-object v0, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzi;

    invoke-virtual {v3}, Lzi;->e()Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final f()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lyw;->i:Lyz;

    iget-boolean v2, v1, Lyz;->i:Z

    if-eqz v2, :cond_59

    iget-object v2, v0, Lyw;->j:Lyz;

    iget-boolean v3, v2, Lyz;->i:Z

    if-nez v3, :cond_0

    goto/16 :goto_39

    :cond_0
    iget-object v3, v0, Lyw;->d:Lyn;

    iget-object v3, v3, Lyn;->V:Lyn;

    instance-of v4, v3, Lyo;

    if-eqz v4, :cond_1

    check-cast v3, Lyo;

    iget-boolean v3, v3, Lyo;->c:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget v2, v2, Lyz;->f:I

    iget v1, v1, Lyz;->f:I

    sub-int/2addr v2, v1

    iget-object v1, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_1
    const/16 v7, 0x8

    if-ge v4, v1, :cond_2

    iget-object v8, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzi;

    iget-object v8, v8, Lzi;->d:Lyn;

    iget v8, v8, Lyn;->ai:I

    if-ne v8, v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, -0x1

    :cond_3
    add-int/lit8 v8, v1, -0x1

    move v9, v8

    :goto_2
    if-ltz v9, :cond_4

    iget-object v10, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lzi;

    iget-object v10, v10, Lzi;->d:Lyn;

    iget v10, v10, Lyn;->ai:I

    if-ne v10, v7, :cond_5

    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    :cond_4
    const/4 v9, -0x1

    :cond_5
    const/4 v10, 0x0

    :goto_3
    const/4 v12, 0x3

    const/4 v13, 0x2

    if-ge v10, v13, :cond_15

    const/4 v6, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    :goto_4
    if-ge v15, v1, :cond_12

    iget-object v5, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lzi;

    iget-object v13, v5, Lzi;->d:Lyn;

    iget v11, v13, Lyn;->ai:I

    if-eq v11, v7, :cond_11

    add-int/lit8 v17, v17, 0x1

    if-lez v15, :cond_6

    if-lt v15, v4, :cond_6

    iget-object v11, v5, Lzi;->i:Lyz;

    iget v11, v11, Lyz;->e:I

    add-int/2addr v6, v11

    :cond_6
    iget-object v11, v5, Lzi;->f:Lza;

    iget v7, v11, Lza;->f:I

    iget v14, v5, Lzi;->k:I

    if-eq v14, v12, :cond_7

    const/4 v14, 0x1

    goto :goto_5

    :cond_7
    const/4 v14, 0x0

    :goto_5
    if-eqz v14, :cond_c

    iget v11, v0, Lyw;->g:I

    if-nez v11, :cond_9

    iget-object v11, v13, Lyn;->h:Lze;

    iget-object v11, v11, Lze;->f:Lza;

    iget-boolean v11, v11, Lza;->i:Z

    if-eqz v11, :cond_8

    move/from16 v20, v7

    goto :goto_7

    :cond_8
    return-void

    :cond_9
    const/4 v12, 0x1

    if-ne v11, v12, :cond_b

    iget-object v11, v13, Lyn;->i:Lzg;

    iget-object v11, v11, Lzg;->f:Lza;

    iget-boolean v11, v11, Lza;->i:Z

    if-eqz v11, :cond_a

    goto :goto_6

    :cond_a
    return-void

    :cond_b
    :goto_6
    move/from16 v20, v7

    goto :goto_7

    :cond_c
    iget v12, v5, Lzi;->c:I

    move/from16 v20, v7

    const/4 v7, 0x1

    if-ne v12, v7, :cond_d

    if-nez v10, :cond_d

    iget v7, v11, Lza;->m:I

    add-int/lit8 v16, v16, 0x1

    const/4 v14, 0x1

    goto :goto_8

    :cond_d
    iget-boolean v7, v11, Lza;->i:Z

    if-eqz v7, :cond_e

    move/from16 v7, v20

    const/4 v14, 0x1

    goto :goto_8

    :cond_e
    :goto_7
    move/from16 v7, v20

    :goto_8
    if-nez v14, :cond_f

    add-int/lit8 v16, v16, 0x1

    iget-object v7, v13, Lyn;->am:[F

    iget v11, v0, Lyw;->g:I

    aget v7, v7, v11

    const/4 v11, 0x0

    cmpl-float v12, v7, v11

    if-ltz v12, :cond_10

    add-float v18, v18, v7

    goto :goto_9

    :cond_f
    add-int/2addr v6, v7

    :cond_10
    :goto_9
    if-ge v15, v8, :cond_11

    if-ge v15, v9, :cond_11

    iget-object v5, v5, Lzi;->j:Lyz;

    iget v5, v5, Lyz;->e:I

    neg-int v5, v5

    add-int/2addr v6, v5

    goto :goto_a

    :cond_11
    :goto_a
    add-int/lit8 v15, v15, 0x1

    const/16 v7, 0x8

    const/4 v12, 0x3

    const/4 v13, 0x2

    goto/16 :goto_4

    :cond_12
    if-lt v6, v2, :cond_14

    if-nez v16, :cond_13

    goto :goto_b

    :cond_13
    add-int/lit8 v10, v10, 0x1

    const/16 v7, 0x8

    goto/16 :goto_3

    :cond_14
    :goto_b
    move/from16 v5, v16

    move/from16 v7, v17

    goto :goto_c

    :cond_15
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    :goto_c
    iget-object v10, v0, Lyw;->i:Lyz;

    iget v10, v10, Lyz;->f:I

    if-eqz v3, :cond_16

    iget-object v10, v0, Lyw;->j:Lyz;

    iget v10, v10, Lyz;->f:I

    :cond_16
    const/high16 v11, 0x3f000000    # 0.5f

    if-le v6, v2, :cond_18

    const/high16 v12, 0x40000000    # 2.0f

    if-eqz v3, :cond_17

    sub-int v13, v6, v2

    int-to-float v13, v13

    div-float/2addr v13, v12

    add-float/2addr v13, v11

    float-to-int v12, v13

    add-int/2addr v10, v12

    goto :goto_d

    :cond_17
    sub-int v13, v6, v2

    int-to-float v13, v13

    div-float/2addr v13, v12

    add-float/2addr v13, v11

    float-to-int v12, v13

    sub-int/2addr v10, v12

    :cond_18
    :goto_d
    if-lez v5, :cond_27

    sub-int v12, v2, v6

    int-to-float v12, v12

    int-to-float v13, v5

    div-float v13, v12, v13

    add-float/2addr v13, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_e
    if-ge v14, v1, :cond_20

    iget-object v11, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lzi;

    move/from16 v17, v6

    iget-object v6, v11, Lzi;->d:Lyn;

    move/from16 v20, v10

    iget v10, v6, Lyn;->ai:I

    move/from16 v21, v3

    const/16 v3, 0x8

    if-eq v10, v3, :cond_1f

    iget v3, v11, Lzi;->k:I

    const/4 v10, 0x3

    if-ne v3, v10, :cond_1e

    iget-object v3, v11, Lzi;->f:Lza;

    iget-boolean v10, v3, Lza;->i:Z

    if-nez v10, :cond_1e

    float-to-int v10, v13

    const/16 v19, 0x0

    cmpl-float v22, v18, v19

    if-lez v22, :cond_19

    iget-object v10, v6, Lyn;->am:[F

    move/from16 v22, v13

    iget v13, v0, Lyw;->g:I

    aget v10, v10, v13

    mul-float v10, v10, v12

    div-float v10, v10, v18

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v10, v13

    float-to-int v10, v10

    goto :goto_f

    :cond_19
    move/from16 v22, v13

    :goto_f
    iget v13, v0, Lyw;->g:I

    if-nez v13, :cond_1a

    iget v13, v6, Lyn;->x:I

    iget v6, v6, Lyn;->w:I

    goto :goto_10

    :cond_1a
    iget v13, v6, Lyn;->A:I

    iget v6, v6, Lyn;->z:I

    :goto_10
    move/from16 v23, v12

    iget v12, v11, Lzi;->c:I

    move/from16 v24, v7

    const/4 v7, 0x1

    if-ne v12, v7, :cond_1b

    iget v3, v3, Lza;->m:I

    invoke-static {v10, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_11

    :cond_1b
    move v3, v10

    :goto_11
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    if-lez v13, :cond_1c

    invoke-static {v13, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_12

    :cond_1c
    :goto_12
    if-eq v3, v10, :cond_1d

    add-int/lit8 v15, v15, 0x1

    move v10, v3

    goto :goto_13

    :cond_1d
    :goto_13
    iget-object v3, v11, Lzi;->f:Lza;

    invoke-virtual {v3, v10}, Lyz;->c(I)V

    goto :goto_14

    :cond_1e
    move/from16 v24, v7

    move/from16 v23, v12

    move/from16 v22, v13

    const/16 v19, 0x0

    goto :goto_14

    :cond_1f
    move/from16 v24, v7

    move/from16 v23, v12

    move/from16 v22, v13

    const/16 v19, 0x0

    :goto_14
    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v17

    move/from16 v10, v20

    move/from16 v3, v21

    move/from16 v13, v22

    move/from16 v12, v23

    move/from16 v7, v24

    const/high16 v11, 0x3f000000    # 0.5f

    goto/16 :goto_e

    :cond_20
    move/from16 v21, v3

    move/from16 v17, v6

    move/from16 v24, v7

    move/from16 v20, v10

    if-lez v15, :cond_25

    sub-int/2addr v5, v15

    const/4 v3, 0x0

    const/4 v6, 0x0

    :goto_15
    if-ge v3, v1, :cond_24

    iget-object v7, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lzi;

    iget-object v10, v7, Lzi;->d:Lyn;

    iget v10, v10, Lyn;->ai:I

    const/16 v11, 0x8

    if-ne v10, v11, :cond_21

    goto :goto_16

    :cond_21
    if-lez v3, :cond_22

    if-lt v3, v4, :cond_22

    iget-object v10, v7, Lzi;->i:Lyz;

    iget v10, v10, Lyz;->e:I

    add-int/2addr v6, v10

    :cond_22
    iget-object v10, v7, Lzi;->f:Lza;

    iget v10, v10, Lza;->f:I

    add-int/2addr v6, v10

    if-ge v3, v8, :cond_23

    if-ge v3, v9, :cond_23

    iget-object v7, v7, Lzi;->j:Lyz;

    iget v7, v7, Lyz;->e:I

    neg-int v7, v7

    add-int/2addr v6, v7

    :cond_23
    :goto_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_24
    goto :goto_17

    :cond_25
    move/from16 v6, v17

    :goto_17
    iget v3, v0, Lyw;->b:I

    const/4 v7, 0x2

    if-ne v3, v7, :cond_26

    if-nez v15, :cond_26

    const/4 v3, 0x0

    iput v3, v0, Lyw;->b:I

    goto :goto_18

    :cond_26
    const/4 v3, 0x0

    goto :goto_18

    :cond_27
    move/from16 v21, v3

    move/from16 v17, v6

    move/from16 v24, v7

    move/from16 v20, v10

    const/4 v3, 0x0

    :goto_18
    if-le v6, v2, :cond_28

    const/4 v7, 0x2

    iput v7, v0, Lyw;->b:I

    goto :goto_19

    :cond_28
    const/4 v7, 0x2

    :goto_19
    if-lez v24, :cond_2a

    if-nez v5, :cond_2a

    if-ne v4, v9, :cond_29

    iput v7, v0, Lyw;->b:I

    const/4 v5, 0x0

    goto :goto_1a

    :cond_29
    const/4 v5, 0x0

    :cond_2a
    :goto_1a
    iget v7, v0, Lyw;->b:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3a

    move/from16 v11, v24

    if-le v11, v10, :cond_2b

    sub-int/2addr v2, v6

    const/4 v6, -0x1

    add-int/lit8 v7, v11, -0x1

    div-int/2addr v2, v7

    goto :goto_1b

    :cond_2b
    if-ne v11, v10, :cond_2c

    sub-int/2addr v2, v6

    const/4 v6, 0x2

    div-int/2addr v2, v6

    goto :goto_1b

    :cond_2c
    const/4 v2, 0x0

    :goto_1b
    if-lez v5, :cond_2d

    const/4 v2, 0x0

    :cond_2d
    move/from16 v10, v20

    const/4 v5, 0x0

    :goto_1c
    if-ge v5, v1, :cond_58

    if-eqz v21, :cond_2e

    add-int/lit8 v3, v5, 0x1

    sub-int v3, v1, v3

    goto :goto_1d

    :cond_2e
    move v3, v5

    :goto_1d
    iget-object v6, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzi;

    iget-object v6, v3, Lzi;->d:Lyn;

    iget v6, v6, Lyn;->ai:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2f

    iget-object v6, v3, Lzi;->i:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    iget-object v3, v3, Lzi;->j:Lyz;

    invoke-virtual {v3, v10}, Lyz;->c(I)V

    goto :goto_24

    :cond_2f
    if-lez v5, :cond_31

    if-eqz v21, :cond_30

    sub-int/2addr v10, v2

    goto :goto_1e

    :cond_30
    add-int/2addr v10, v2

    :cond_31
    :goto_1e
    if-lez v5, :cond_33

    if-lt v5, v4, :cond_33

    if-eqz v21, :cond_32

    iget-object v6, v3, Lzi;->i:Lyz;

    iget v6, v6, Lyz;->e:I

    sub-int/2addr v10, v6

    goto :goto_1f

    :cond_32
    iget-object v6, v3, Lzi;->i:Lyz;

    iget v6, v6, Lyz;->e:I

    add-int/2addr v10, v6

    :cond_33
    :goto_1f
    if-eqz v21, :cond_34

    iget-object v6, v3, Lzi;->j:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    goto :goto_20

    :cond_34
    iget-object v6, v3, Lzi;->i:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    :goto_20
    iget-object v6, v3, Lzi;->f:Lza;

    iget v7, v6, Lza;->f:I

    iget v11, v3, Lzi;->k:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_35

    iget v11, v3, Lzi;->c:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_35

    iget v7, v6, Lza;->m:I

    goto :goto_21

    :cond_35
    :goto_21
    if-eqz v21, :cond_36

    sub-int/2addr v10, v7

    goto :goto_22

    :cond_36
    add-int/2addr v10, v7

    :goto_22
    if-eqz v21, :cond_37

    iget-object v6, v3, Lzi;->i:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    goto :goto_23

    :cond_37
    iget-object v6, v3, Lzi;->j:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    :goto_23
    const/4 v6, 0x1

    iput-boolean v6, v3, Lzi;->h:Z

    if-ge v5, v8, :cond_39

    if-ge v5, v9, :cond_39

    if-eqz v21, :cond_38

    iget-object v3, v3, Lzi;->j:Lyz;

    iget v3, v3, Lyz;->e:I

    neg-int v3, v3

    sub-int/2addr v10, v3

    goto :goto_24

    :cond_38
    iget-object v3, v3, Lzi;->j:Lyz;

    iget v3, v3, Lyz;->e:I

    neg-int v3, v3

    add-int/2addr v10, v3

    :cond_39
    :goto_24
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1c

    :cond_3a
    move/from16 v11, v24

    if-nez v7, :cond_47

    sub-int/2addr v2, v6

    const/4 v6, 0x1

    add-int/lit8 v7, v11, 0x1

    div-int/2addr v2, v7

    if-lez v5, :cond_3b

    const/4 v2, 0x0

    :cond_3b
    move/from16 v10, v20

    const/4 v5, 0x0

    :goto_25
    if-ge v5, v1, :cond_58

    if-eqz v21, :cond_3c

    add-int/lit8 v3, v5, 0x1

    sub-int v3, v1, v3

    goto :goto_26

    :cond_3c
    move v3, v5

    :goto_26
    iget-object v6, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzi;

    iget-object v6, v3, Lzi;->d:Lyn;

    iget v6, v6, Lyn;->ai:I

    const/16 v7, 0x8

    if-ne v6, v7, :cond_3d

    iget-object v6, v3, Lzi;->i:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    iget-object v3, v3, Lzi;->j:Lyz;

    invoke-virtual {v3, v10}, Lyz;->c(I)V

    goto :goto_2d

    :cond_3d
    if-eqz v21, :cond_3e

    sub-int/2addr v10, v2

    goto :goto_27

    :cond_3e
    add-int/2addr v10, v2

    :goto_27
    if-lez v5, :cond_40

    if-lt v5, v4, :cond_40

    if-eqz v21, :cond_3f

    iget-object v6, v3, Lzi;->i:Lyz;

    iget v6, v6, Lyz;->e:I

    sub-int/2addr v10, v6

    goto :goto_28

    :cond_3f
    iget-object v6, v3, Lzi;->i:Lyz;

    iget v6, v6, Lyz;->e:I

    add-int/2addr v10, v6

    :cond_40
    :goto_28
    if-eqz v21, :cond_41

    iget-object v6, v3, Lzi;->j:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    goto :goto_29

    :cond_41
    iget-object v6, v3, Lzi;->i:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    :goto_29
    iget-object v6, v3, Lzi;->f:Lza;

    iget v7, v6, Lza;->f:I

    iget v11, v3, Lzi;->k:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_42

    iget v11, v3, Lzi;->c:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_42

    iget v6, v6, Lza;->m:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_2a

    :cond_42
    :goto_2a
    if-eqz v21, :cond_43

    sub-int/2addr v10, v7

    goto :goto_2b

    :cond_43
    add-int/2addr v10, v7

    :goto_2b
    if-eqz v21, :cond_44

    iget-object v6, v3, Lzi;->i:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    goto :goto_2c

    :cond_44
    iget-object v6, v3, Lzi;->j:Lyz;

    invoke-virtual {v6, v10}, Lyz;->c(I)V

    :goto_2c
    if-ge v5, v8, :cond_46

    if-ge v5, v9, :cond_46

    if-eqz v21, :cond_45

    iget-object v3, v3, Lzi;->j:Lyz;

    iget v3, v3, Lyz;->e:I

    neg-int v3, v3

    sub-int/2addr v10, v3

    goto :goto_2d

    :cond_45
    iget-object v3, v3, Lzi;->j:Lyz;

    iget v3, v3, Lyz;->e:I

    neg-int v3, v3

    add-int/2addr v10, v3

    :cond_46
    :goto_2d
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_25

    :cond_47
    const/4 v10, 0x2

    if-ne v7, v10, :cond_58

    iget v7, v0, Lyw;->g:I

    if-nez v7, :cond_48

    iget-object v7, v0, Lyw;->d:Lyn;

    iget v7, v7, Lyn;->af:F

    goto :goto_2e

    :cond_48
    iget-object v7, v0, Lyw;->d:Lyn;

    iget v7, v7, Lyn;->ag:F

    :goto_2e
    if-eqz v21, :cond_49

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v7, v10, v7

    :cond_49
    sub-int/2addr v2, v6

    int-to-float v2, v2

    mul-float v2, v2, v7

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v2, v6

    float-to-int v2, v2

    if-ltz v2, :cond_4a

    if-lez v5, :cond_4b

    const/4 v2, 0x0

    goto :goto_2f

    :cond_4a
    const/4 v2, 0x0

    :cond_4b
    :goto_2f
    if-eqz v21, :cond_4c

    sub-int v10, v20, v2

    goto :goto_30

    :cond_4c
    add-int v10, v20, v2

    :goto_30
    const/4 v5, 0x0

    :goto_31
    if-ge v5, v1, :cond_58

    if-eqz v21, :cond_4d

    add-int/lit8 v2, v5, 0x1

    sub-int v2, v1, v2

    goto :goto_32

    :cond_4d
    move v2, v5

    :goto_32
    iget-object v3, v0, Lyw;->a:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lzi;

    iget-object v3, v2, Lzi;->d:Lyn;

    iget v3, v3, Lyn;->ai:I

    const/16 v6, 0x8

    if-ne v3, v6, :cond_4e

    iget-object v3, v2, Lzi;->i:Lyz;

    invoke-virtual {v3, v10}, Lyz;->c(I)V

    iget-object v2, v2, Lzi;->j:Lyz;

    invoke-virtual {v2, v10}, Lyz;->c(I)V

    const/4 v12, 0x3

    const/4 v13, 0x1

    goto :goto_38

    :cond_4e
    if-lez v5, :cond_50

    if-lt v5, v4, :cond_50

    if-eqz v21, :cond_4f

    iget-object v3, v2, Lzi;->i:Lyz;

    iget v3, v3, Lyz;->e:I

    sub-int/2addr v10, v3

    goto :goto_33

    :cond_4f
    iget-object v3, v2, Lzi;->i:Lyz;

    iget v3, v3, Lyz;->e:I

    add-int/2addr v10, v3

    :cond_50
    :goto_33
    if-eqz v21, :cond_51

    iget-object v3, v2, Lzi;->j:Lyz;

    invoke-virtual {v3, v10}, Lyz;->c(I)V

    goto :goto_34

    :cond_51
    iget-object v3, v2, Lzi;->i:Lyz;

    invoke-virtual {v3, v10}, Lyz;->c(I)V

    :goto_34
    iget-object v3, v2, Lzi;->f:Lza;

    iget v7, v3, Lza;->f:I

    iget v11, v2, Lzi;->k:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_52

    iget v11, v2, Lzi;->c:I

    const/4 v13, 0x1

    if-ne v11, v13, :cond_53

    iget v7, v3, Lza;->m:I

    goto :goto_35

    :cond_52
    const/4 v13, 0x1

    :cond_53
    :goto_35
    if-eqz v21, :cond_54

    sub-int/2addr v10, v7

    goto :goto_36

    :cond_54
    add-int/2addr v10, v7

    :goto_36
    if-eqz v21, :cond_55

    iget-object v3, v2, Lzi;->i:Lyz;

    invoke-virtual {v3, v10}, Lyz;->c(I)V

    goto :goto_37

    :cond_55
    iget-object v3, v2, Lzi;->j:Lyz;

    invoke-virtual {v3, v10}, Lyz;->c(I)V

    :goto_37
    if-ge v5, v8, :cond_57

    if-ge v5, v9, :cond_57

    if-eqz v21, :cond_56

    iget-object v2, v2, Lzi;->j:Lyz;

    iget v2, v2, Lyz;->e:I

    neg-int v2, v2

    sub-int/2addr v10, v2

    goto :goto_38

    :cond_56
    iget-object v2, v2, Lzi;->j:Lyz;

    iget v2, v2, Lyz;->e:I

    neg-int v2, v2

    add-int/2addr v10, v2

    :cond_57
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_31

    :cond_58
    return-void

    :cond_59
    :goto_39
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChainRun "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lyw;->g:I

    if-nez v1, :cond_0

    const-string v1, "horizontal : "

    goto :goto_0

    :cond_0
    const-string v1, "vertical : "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyw;->a:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lzi;

    const-string v5, "<"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
