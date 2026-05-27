.class public final Lyy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lyo;

.field public b:Z

.field public c:Z

.field public final d:Lyo;

.field public final e:Ljava/util/ArrayList;

.field final f:Ljava/util/ArrayList;

.field public g:Lzn;

.field private final h:Lyv;


# direct methods
.method public constructor <init>(Lyo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lyy;->b:Z

    iput-boolean v0, p0, Lyy;->c:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyy;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lyy;->g:Lzn;

    new-instance v0, Lyv;

    invoke-direct {v0}, Lyv;-><init>()V

    iput-object v0, p0, Lyy;->h:Lyv;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lyy;->f:Ljava/util/ArrayList;

    iput-object p1, p0, Lyy;->a:Lyo;

    iput-object p1, p0, Lyy;->d:Lyo;

    return-void
.end method

.method private final e(Lzi;ILjava/util/ArrayList;)V
    .locals 9

    iget-object v0, p1, Lzi;->i:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyx;

    instance-of v2, v1, Lyz;

    if-eqz v2, :cond_1

    move-object v4, v1

    check-cast v4, Lyz;

    iget-object v6, p1, Lzi;->j:Lyz;

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lzi;

    if-eqz v2, :cond_0

    check-cast v1, Lzi;

    iget-object v3, v1, Lzi;->i:Lyz;

    iget-object v5, p1, Lzi;->j:Lyz;

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lzi;->j:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyx;

    instance-of v2, v1, Lyz;

    if-eqz v2, :cond_4

    move-object v4, v1

    check-cast v4, Lyz;

    iget-object v6, p1, Lzi;->i:Lyz;

    const/4 v8, 0x0

    move-object v3, p0

    move v5, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_1

    :cond_4
    instance-of v2, v1, Lzi;

    if-eqz v2, :cond_3

    check-cast v1, Lzi;

    iget-object v3, v1, Lzi;->j:Lyz;

    iget-object v5, p1, Lzi;->i:Lyz;

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v7}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_7

    check-cast p1, Lzg;

    iget-object p1, p1, Lzg;->a:Lyz;

    iget-object p1, p1, Lyz;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lyx;

    instance-of v0, p2, Lyz;

    if-eqz v0, :cond_6

    move-object v2, p2

    check-cast v2, Lyz;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private final f(Lyn;IIII)V
    .locals 1

    iget-object v0, p0, Lyy;->h:Lyv;

    iput p2, v0, Lyv;->i:I

    iput p4, v0, Lyv;->j:I

    iput p3, v0, Lyv;->a:I

    iput p5, v0, Lyv;->b:I

    iget-object p2, p0, Lyy;->g:Lzn;

    invoke-virtual {p2, p1, v0}, Lzn;->a(Lyn;Lyv;)V

    iget-object p2, p0, Lyy;->h:Lyv;

    iget p2, p2, Lyv;->c:I

    invoke-virtual {p1, p2}, Lyn;->F(I)V

    iget-object p2, p0, Lyy;->h:Lyv;

    iget p2, p2, Lyv;->d:I

    invoke-virtual {p1, p2}, Lyn;->A(I)V

    iget-object p2, p0, Lyy;->h:Lyv;

    iget-boolean p3, p2, Lyv;->f:Z

    iput-boolean p3, p1, Lyn;->G:Z

    iget p2, p2, Lyv;->e:I

    invoke-virtual {p1, p2}, Lyn;->x(I)V

    return-void
.end method

.method private final g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V
    .locals 8

    iget-object p1, p1, Lyz;->d:Lzi;

    iget-object v0, p1, Lzi;->e:Lzf;

    if-nez v0, :cond_b

    iget-object v0, p0, Lyy;->a:Lyo;

    iget-object v1, v0, Lyo;->h:Lze;

    if-eq p1, v1, :cond_b

    iget-object v0, v0, Lyo;->i:Lzg;

    if-ne p1, v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p5, :cond_1

    new-instance p5, Lzf;

    invoke-direct {p5, p1}, Lzf;-><init>(Lzi;)V

    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iput-object p5, p1, Lzi;->e:Lzf;

    iget-object v0, p5, Lzf;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p1, Lzi;->i:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyx;

    instance-of v1, v0, Lyz;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lyz;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lzi;->j:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyx;

    instance-of v1, v0, Lyz;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Lyz;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_1

    :cond_5
    const/4 v6, 0x1

    if-ne p2, v6, :cond_7

    instance-of v0, p1, Lzg;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Lzg;

    iget-object v0, v0, Lzg;->a:Lyz;

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyx;

    instance-of v1, v0, Lyz;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Lyz;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_2

    :cond_7
    iget-object v0, p1, Lzi;->i:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyz;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_3

    :cond_8
    iget-object v0, p1, Lzi;->j:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lyz;

    move-object v0, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V

    goto :goto_4

    :cond_9
    if-ne p2, v6, :cond_a

    instance-of p2, p1, Lzg;

    if-eqz p2, :cond_a

    check-cast p1, Lzg;

    iget-object p1, p1, Lzg;->a:Lyz;

    iget-object p1, p1, Lyz;->k:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lyz;

    const/4 v2, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lyy;->g(Lyz;ILyz;Ljava/util/ArrayList;Lzf;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :cond_a
    return-void

    :cond_b
    :goto_6
    return-void

    :catchall_0
    move-exception p1

    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method


# virtual methods
.method public final a(Lyo;I)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lyy;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_0
    if-ge v4, v3, :cond_c

    iget-object v9, v0, Lyy;->f:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzf;

    iget-object v10, v9, Lzf;->b:Lzi;

    instance-of v11, v10, Lyw;

    if-eqz v11, :cond_0

    move-object v11, v10

    check-cast v11, Lyw;

    iget v11, v11, Lyw;->g:I

    if-eq v11, v2, :cond_2

    move-wide v14, v5

    goto/16 :goto_6

    :cond_0
    if-nez v2, :cond_1

    instance-of v11, v10, Lze;

    if-nez v11, :cond_2

    move-wide v14, v5

    goto/16 :goto_6

    :cond_1
    instance-of v11, v10, Lzg;

    if-nez v11, :cond_2

    move-wide v14, v5

    goto/16 :goto_6

    :cond_2
    if-nez v2, :cond_3

    iget-object v11, v1, Lyo;->h:Lze;

    iget-object v11, v11, Lze;->i:Lyz;

    goto :goto_1

    :cond_3
    iget-object v11, v1, Lyo;->i:Lzg;

    iget-object v11, v11, Lzg;->i:Lyz;

    :goto_1
    if-nez v2, :cond_4

    iget-object v12, v1, Lyo;->h:Lze;

    iget-object v12, v12, Lze;->j:Lyz;

    goto :goto_2

    :cond_4
    iget-object v12, v1, Lyo;->i:Lzg;

    iget-object v12, v12, Lzg;->j:Lyz;

    :goto_2
    iget-object v10, v10, Lzi;->i:Lyz;

    iget-object v10, v10, Lyz;->k:Ljava/util/List;

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    iget-object v11, v9, Lzf;->b:Lzi;

    iget-object v11, v11, Lzi;->j:Lyz;

    iget-object v11, v11, Lyz;->k:Ljava/util/List;

    invoke-interface {v11, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    iget-object v12, v9, Lzf;->b:Lzi;

    invoke-virtual {v12}, Lzi;->a()J

    move-result-wide v12

    if-eqz v10, :cond_9

    if-eqz v11, :cond_9

    iget-object v10, v9, Lzf;->b:Lzi;

    iget-object v10, v10, Lzi;->i:Lyz;

    invoke-virtual {v9, v10, v5, v6}, Lzf;->b(Lyz;J)J

    move-result-wide v10

    iget-object v14, v9, Lzf;->b:Lzi;

    iget-object v14, v14, Lzi;->j:Lyz;

    invoke-virtual {v9, v14, v5, v6}, Lzf;->a(Lyz;J)J

    move-result-wide v14

    sub-long/2addr v10, v12

    iget-object v9, v9, Lzf;->b:Lzi;

    iget-object v5, v9, Lzi;->j:Lyz;

    iget v5, v5, Lyz;->e:I

    neg-int v6, v5

    int-to-long v0, v6

    cmp-long v6, v10, v0

    if-ltz v6, :cond_5

    int-to-long v0, v5

    add-long/2addr v10, v0

    goto :goto_3

    :cond_5
    :goto_3
    neg-long v0, v14

    sub-long/2addr v0, v12

    iget-object v6, v9, Lzi;->i:Lyz;

    iget v6, v6, Lyz;->e:I

    int-to-long v14, v6

    sub-long/2addr v0, v14

    cmp-long v6, v0, v14

    if-ltz v6, :cond_6

    sub-long/2addr v0, v14

    :cond_6
    iget-object v6, v9, Lzi;->d:Lyn;

    if-nez v2, :cond_7

    iget v6, v6, Lyn;->af:F

    goto :goto_4

    :cond_7
    iget v6, v6, Lyn;->ag:F

    :goto_4
    const/4 v9, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v9

    if-lez v9, :cond_8

    long-to-float v0, v0

    div-float/2addr v0, v6

    long-to-float v1, v10

    sub-float v9, v16, v6

    div-float/2addr v1, v9

    add-float/2addr v0, v1

    float-to-long v0, v0

    goto :goto_5

    :cond_8
    const-wide/16 v0, 0x0

    :goto_5
    long-to-float v0, v0

    mul-float v1, v0, v6

    sub-float v16, v16, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v1, v6

    float-to-long v9, v1

    add-long/2addr v9, v12

    int-to-long v11, v5

    mul-float v0, v0, v16

    add-float/2addr v0, v6

    float-to-long v0, v0

    add-long/2addr v9, v0

    add-long/2addr v14, v9

    sub-long/2addr v14, v11

    goto :goto_6

    :cond_9
    if-eqz v10, :cond_a

    iget-object v0, v9, Lzf;->b:Lzi;

    iget-object v0, v0, Lzi;->i:Lyz;

    iget v1, v0, Lyz;->e:I

    int-to-long v5, v1

    invoke-virtual {v9, v0, v5, v6}, Lzf;->b(Lyz;J)J

    move-result-wide v0

    iget-object v5, v9, Lzf;->b:Lzi;

    iget-object v5, v5, Lzi;->i:Lyz;

    iget v5, v5, Lyz;->e:I

    int-to-long v5, v5

    add-long/2addr v5, v12

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    goto :goto_6

    :cond_a
    if-eqz v11, :cond_b

    iget-object v0, v9, Lzf;->b:Lzi;

    iget-object v0, v0, Lzi;->j:Lyz;

    iget v1, v0, Lyz;->e:I

    int-to-long v5, v1

    invoke-virtual {v9, v0, v5, v6}, Lzf;->a(Lyz;J)J

    move-result-wide v0

    iget-object v5, v9, Lzf;->b:Lzi;

    iget-object v5, v5, Lzi;->j:Lyz;

    iget v5, v5, Lyz;->e:I

    neg-int v5, v5

    int-to-long v5, v5

    add-long/2addr v5, v12

    neg-long v0, v0

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    goto :goto_6

    :cond_b
    iget-object v0, v9, Lzf;->b:Lzi;

    iget-object v1, v0, Lzi;->i:Lyz;

    iget v1, v1, Lyz;->e:I

    int-to-long v5, v1

    invoke-virtual {v0}, Lzi;->a()J

    move-result-wide v0

    add-long/2addr v5, v0

    iget-object v0, v9, Lzf;->b:Lzi;

    iget-object v0, v0, Lzi;->j:Lyz;

    iget v0, v0, Lyz;->e:I

    int-to-long v0, v0

    sub-long v14, v5, v0

    :goto_6
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v5, 0x0

    goto/16 :goto_0

    :cond_c
    long-to-int v0, v7

    return v0
.end method

.method public final b()V
    .locals 9

    iget-object v0, p0, Lyy;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lyy;->d:Lyo;

    iget-object v1, v1, Lyo;->h:Lze;

    invoke-virtual {v1}, Lze;->d()V

    iget-object v1, p0, Lyy;->d:Lyo;

    iget-object v1, v1, Lyo;->i:Lzg;

    invoke-virtual {v1}, Lzg;->d()V

    iget-object v1, p0, Lyy;->d:Lyo;

    iget-object v1, v1, Lyo;->h:Lze;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lyy;->d:Lyo;

    iget-object v1, v1, Lyo;->i:Lzg;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lyy;->d:Lyo;

    iget-object v1, v1, Lyo;->aK:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v2, :cond_8

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyn;

    instance-of v8, v7, Lyq;

    if-eqz v8, :cond_0

    new-instance v6, Lzc;

    invoke-direct {v6, v7}, Lzc;-><init>(Lyn;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_0
    invoke-virtual {v7}, Lyn;->K()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v7, Lyn;->f:Lyw;

    if-nez v8, :cond_1

    new-instance v8, Lyw;

    invoke-direct {v8, v7, v4}, Lyw;-><init>(Lyn;I)V

    iput-object v8, v7, Lyn;->f:Lyw;

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_2
    iget-object v8, v7, Lyn;->f:Lyw;

    invoke-virtual {v3, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v8, v7, Lyn;->h:Lze;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {v7}, Lyn;->L()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v7, Lyn;->g:Lyw;

    if-nez v8, :cond_4

    new-instance v8, Lyw;

    invoke-direct {v8, v7, v6}, Lyw;-><init>(Lyn;I)V

    iput-object v8, v7, Lyn;->g:Lyw;

    :cond_4
    if-nez v3, :cond_5

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    :cond_5
    iget-object v6, v7, Lyn;->g:Lyw;

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iget-object v6, v7, Lyn;->i:Lzg;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    instance-of v6, v7, Lyr;

    if-eqz v6, :cond_7

    new-instance v6, Lzd;

    invoke-direct {v6, v7}, Lzd;-><init>(Lyn;)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_a

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzi;

    invoke-virtual {v3}, Lzi;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v1, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lzi;

    iget-object v5, v3, Lzi;->d:Lyn;

    iget-object v7, p0, Lyy;->d:Lyo;

    if-eq v5, v7, :cond_b

    invoke-virtual {v3}, Lzi;->b()V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    iget-object v0, p0, Lyy;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sput v4, Lzf;->a:I

    iget-object v0, p0, Lyy;->a:Lyo;

    iget-object v0, v0, Lyo;->h:Lze;

    iget-object v1, p0, Lyy;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v4, v1}, Lyy;->e(Lzi;ILjava/util/ArrayList;)V

    iget-object v0, p0, Lyy;->a:Lyo;

    iget-object v0, v0, Lyo;->i:Lzg;

    iget-object v1, p0, Lyy;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v6, v1}, Lyy;->e(Lzi;ILjava/util/ArrayList;)V

    iput-boolean v4, p0, Lyy;->b:Z

    return-void
.end method

.method public final c()V
    .locals 16

    move-object/from16 v6, p0

    iget-object v0, v6, Lyy;->a:Lyo;

    iget-object v7, v0, Lyo;->aK:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v8, :cond_d

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lyn;

    iget-boolean v0, v11, Lyn;->e:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, v11, Lyn;->ar:[I

    aget v1, v0, v9

    const/4 v12, 0x1

    aget v0, v0, v12

    iget v2, v11, Lyn;->t:I

    iget v3, v11, Lyn;->u:I

    const/4 v4, 0x2

    const/4 v13, 0x3

    if-eq v1, v4, :cond_3

    if-ne v1, v13, :cond_2

    if-ne v2, v12, :cond_1

    const/4 v1, 0x1

    const/4 v14, 0x3

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v14, 0x3

    goto :goto_1

    :cond_2
    move v14, v1

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v14, v1

    const/4 v1, 0x1

    :goto_1
    if-eq v0, v4, :cond_6

    if-ne v0, v13, :cond_5

    if-ne v3, v12, :cond_4

    const/4 v0, 0x1

    const/4 v15, 0x3

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    const/4 v15, 0x3

    goto :goto_2

    :cond_5
    move v15, v0

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    move v15, v0

    const/4 v0, 0x1

    :goto_2
    iget-object v2, v11, Lyn;->h:Lze;

    iget-object v2, v2, Lze;->f:Lza;

    iget-boolean v3, v2, Lza;->i:Z

    iget-object v4, v11, Lyn;->i:Lzg;

    iget-object v4, v4, Lzg;->f:Lza;

    iget-boolean v5, v4, Lza;->i:Z

    if-eqz v3, :cond_7

    if-eqz v5, :cond_7

    const/4 v3, 0x1

    iget v5, v2, Lza;->f:I

    const/4 v13, 0x1

    iget v14, v4, Lza;->f:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v3

    move v3, v5

    move v4, v13

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lyy;->f(Lyn;IIII)V

    iput-boolean v12, v11, Lyn;->e:Z

    goto/16 :goto_3

    :cond_7
    if-eqz v3, :cond_9

    if-eqz v0, :cond_9

    const/4 v3, 0x1

    iget v5, v2, Lza;->f:I

    const/4 v14, 0x2

    iget v4, v4, Lza;->f:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v3

    move v3, v5

    move v5, v4

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lyy;->f(Lyn;IIII)V

    if-ne v15, v13, :cond_8

    iget-object v0, v11, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->f:Lza;

    invoke-virtual {v11}, Lyn;->h()I

    move-result v1

    iput v1, v0, Lza;->m:I

    goto :goto_3

    :cond_8
    iget-object v0, v11, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->f:Lza;

    invoke-virtual {v11}, Lyn;->h()I

    move-result v1

    invoke-virtual {v0, v1}, Lyz;->c(I)V

    iput-boolean v12, v11, Lyn;->e:Z

    goto :goto_3

    :cond_9
    if-eqz v5, :cond_b

    if-eqz v1, :cond_b

    const/4 v3, 0x2

    iget v5, v2, Lza;->f:I

    const/4 v15, 0x1

    iget v4, v4, Lza;->f:I

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v3

    move v3, v5

    move v5, v4

    move v4, v15

    invoke-direct/range {v0 .. v5}, Lyy;->f(Lyn;IIII)V

    if-ne v14, v13, :cond_a

    iget-object v0, v11, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->f:Lza;

    invoke-virtual {v11}, Lyn;->j()I

    move-result v1

    iput v1, v0, Lza;->m:I

    goto :goto_3

    :cond_a
    iget-object v0, v11, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->f:Lza;

    invoke-virtual {v11}, Lyn;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lyz;->c(I)V

    iput-boolean v12, v11, Lyn;->e:Z

    :cond_b
    :goto_3
    iget-boolean v0, v11, Lyn;->e:Z

    if-eqz v0, :cond_c

    iget-object v0, v11, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->b:Lza;

    if-eqz v0, :cond_c

    iget v1, v11, Lyn;->ac:I

    invoke-virtual {v0, v1}, Lyz;->c(I)V

    :cond_c
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final d(Lyo;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v1, v0, Lyo;->aK:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2a

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyn;

    iget-object v6, v5, Lyn;->ar:[I

    aget v7, v6, v3

    const/4 v12, 0x1

    aget v6, v6, v12

    iget v8, v5, Lyn;->ai:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    iput-boolean v12, v5, Lyn;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_0
    iget v8, v5, Lyn;->y:F

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v9, 0x2

    const/4 v10, 0x3

    cmpg-float v11, v8, v13

    if-gez v11, :cond_1

    if-ne v7, v10, :cond_1

    iput v9, v5, Lyn;->t:I

    const/4 v7, 0x3

    :cond_1
    iget v11, v5, Lyn;->B:F

    cmpg-float v14, v11, v13

    if-gez v14, :cond_2

    if-ne v6, v10, :cond_2

    iput v9, v5, Lyn;->u:I

    const/4 v6, 0x3

    :cond_2
    iget v14, v5, Lyn;->Y:F

    const/4 v15, 0x0

    cmpl-float v14, v14, v15

    if-lez v14, :cond_8

    if-ne v7, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-ne v6, v12, :cond_4

    :cond_3
    iput v10, v5, Lyn;->t:I

    goto :goto_1

    :cond_4
    if-ne v6, v10, :cond_6

    if-eq v7, v9, :cond_5

    if-ne v7, v12, :cond_6

    :cond_5
    iput v10, v5, Lyn;->u:I

    goto :goto_1

    :cond_6
    if-ne v7, v10, :cond_8

    if-ne v6, v10, :cond_8

    iget v14, v5, Lyn;->t:I

    if-nez v14, :cond_7

    iput v10, v5, Lyn;->t:I

    :cond_7
    iget v14, v5, Lyn;->u:I

    if-nez v14, :cond_8

    iput v10, v5, Lyn;->u:I

    :cond_8
    :goto_1
    if-ne v7, v10, :cond_a

    iget v14, v5, Lyn;->t:I

    if-ne v14, v12, :cond_a

    iget-object v14, v5, Lyn;->K:Lym;

    iget-object v14, v14, Lym;->f:Lym;

    if-eqz v14, :cond_9

    iget-object v14, v5, Lyn;->M:Lym;

    iget-object v14, v14, Lym;->f:Lym;

    if-nez v14, :cond_a

    const/4 v7, 0x2

    goto :goto_2

    :cond_9
    const/4 v7, 0x2

    :cond_a
    :goto_2
    if-ne v6, v10, :cond_c

    iget v14, v5, Lyn;->u:I

    if-ne v14, v12, :cond_c

    iget-object v14, v5, Lyn;->L:Lym;

    iget-object v14, v14, Lym;->f:Lym;

    if-eqz v14, :cond_b

    iget-object v14, v5, Lyn;->N:Lym;

    iget-object v14, v14, Lym;->f:Lym;

    if-nez v14, :cond_c

    const/4 v14, 0x2

    goto :goto_3

    :cond_b
    const/4 v14, 0x2

    goto :goto_3

    :cond_c
    move v14, v6

    :goto_3
    iget-object v6, v5, Lyn;->h:Lze;

    iput v7, v6, Lze;->k:I

    iget v15, v5, Lyn;->t:I

    iput v15, v6, Lze;->c:I

    iget-object v6, v5, Lyn;->i:Lzg;

    iput v14, v6, Lzg;->k:I

    iget v13, v5, Lyn;->u:I

    iput v13, v6, Lzg;->c:I

    const/4 v6, 0x4

    if-eq v7, v6, :cond_d

    if-eq v7, v12, :cond_d

    if-ne v7, v9, :cond_e

    const/4 v7, 0x2

    :cond_d
    if-eq v14, v6, :cond_26

    if-eq v14, v12, :cond_26

    if-ne v14, v9, :cond_e

    const/4 v13, 0x0

    goto/16 :goto_7

    :cond_e
    const/high16 v16, 0x3f000000    # 0.5f

    if-ne v7, v10, :cond_16

    if-eq v14, v9, :cond_f

    if-ne v14, v12, :cond_16

    :cond_f
    if-ne v15, v10, :cond_11

    if-ne v14, v9, :cond_10

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    :cond_10
    invoke-virtual {v5}, Lyn;->h()I

    move-result v11

    const/4 v8, 0x1

    int-to-float v6, v11

    iget v7, v5, Lyn;->Y:F

    mul-float v6, v6, v7

    add-float v6, v6, v16

    float-to-int v9, v6

    const/4 v10, 0x1

    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v6, v5, Lyn;->h:Lze;

    iget-object v6, v6, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iget-object v6, v5, Lyn;->i:Lzg;

    iget-object v6, v6, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iput-boolean v12, v5, Lyn;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_11
    if-ne v15, v12, :cond_12

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v5

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v6, v5, Lyn;->h:Lze;

    iget-object v6, v6, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v5

    iput v5, v6, Lza;->m:I

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_12
    if-ne v15, v9, :cond_14

    iget-object v9, v0, Lyo;->ar:[I

    aget v9, v9, v3

    if-eq v9, v12, :cond_13

    if-ne v9, v6, :cond_16

    :cond_13
    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Lyn;->j()I

    move-result v6

    int-to-float v6, v6

    mul-float v8, v8, v6

    add-float v8, v8, v16

    invoke-virtual {v5}, Lyn;->h()I

    move-result v11

    float-to-int v10, v8

    move-object/from16 v6, p0

    move-object v7, v5

    move v8, v9

    move v9, v10

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v6, v5, Lyn;->h:Lze;

    iget-object v6, v6, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iget-object v6, v5, Lyn;->i:Lzg;

    iget-object v6, v6, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iput-boolean v12, v5, Lyn;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_14
    iget-object v9, v5, Lyn;->S:[Lym;

    aget-object v6, v9, v3

    iget-object v6, v6, Lym;->f:Lym;

    if-eqz v6, :cond_15

    aget-object v6, v9, v12

    iget-object v6, v6, Lym;->f:Lym;

    if-nez v6, :cond_16

    :cond_15
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v5

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v6, v5, Lyn;->h:Lze;

    iget-object v6, v6, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iget-object v6, v5, Lyn;->i:Lzg;

    iget-object v6, v6, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iput-boolean v12, v5, Lyn;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_16
    if-ne v14, v10, :cond_20

    const/4 v6, 0x2

    if-eq v7, v6, :cond_18

    if-ne v7, v12, :cond_17

    goto :goto_4

    :cond_17
    move v9, v7

    goto/16 :goto_5

    :cond_18
    :goto_4
    if-ne v13, v10, :cond_1b

    const/4 v6, 0x2

    if-ne v7, v6, :cond_19

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    :cond_19
    invoke-virtual {v5}, Lyn;->j()I

    move-result v9

    iget v6, v5, Lyn;->Y:F

    iget v7, v5, Lyn;->Z:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1a

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v6, v7, v6

    :cond_1a
    const/4 v8, 0x1

    const/4 v10, 0x1

    int-to-float v7, v9

    mul-float v7, v7, v6

    add-float v7, v7, v16

    float-to-int v11, v7

    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v6, v5, Lyn;->h:Lze;

    iget-object v6, v6, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iget-object v6, v5, Lyn;->i:Lzg;

    iget-object v6, v6, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iput-boolean v12, v5, Lyn;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_1b
    if-ne v13, v12, :cond_1c

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move v8, v7

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v6, v5, Lyn;->i:Lzg;

    iget-object v6, v6, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v5

    iput v5, v6, Lza;->m:I

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_1c
    move v9, v7

    const/4 v6, 0x2

    if-ne v13, v6, :cond_1e

    iget-object v6, v0, Lyo;->ar:[I

    aget v6, v6, v12

    if-eq v6, v12, :cond_1d

    const/4 v7, 0x4

    if-ne v6, v7, :cond_21

    :cond_1d
    invoke-virtual {v5}, Lyn;->j()I

    move-result v10

    const/4 v13, 0x1

    invoke-virtual/range {p1 .. p1}, Lyn;->h()I

    move-result v6

    int-to-float v6, v6

    mul-float v11, v11, v6

    add-float v11, v11, v16

    float-to-int v11, v11

    move-object/from16 v6, p0

    move-object v7, v5

    move v8, v9

    move v9, v10

    move v10, v13

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v6, v5, Lyn;->h:Lze;

    iget-object v6, v6, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iget-object v6, v5, Lyn;->i:Lzg;

    iget-object v6, v6, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v7

    invoke-virtual {v6, v7}, Lyz;->c(I)V

    iput-boolean v12, v5, Lyn;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_1e
    iget-object v6, v5, Lyn;->S:[Lym;

    const/4 v7, 0x2

    aget-object v3, v6, v7

    iget-object v3, v3, Lym;->f:Lym;

    if-eqz v3, :cond_1f

    aget-object v3, v6, v10

    iget-object v3, v3, Lym;->f:Lym;

    if-nez v3, :cond_21

    :cond_1f
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v3, v5, Lyn;->h:Lze;

    iget-object v3, v3, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v6

    invoke-virtual {v3, v6}, Lyz;->c(I)V

    iget-object v3, v5, Lyn;->i:Lzg;

    iget-object v3, v3, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v6

    invoke-virtual {v3, v6}, Lyz;->c(I)V

    iput-boolean v12, v5, Lyn;->e:Z

    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_20
    move v9, v7

    :cond_21
    :goto_5
    if-ne v9, v10, :cond_25

    if-ne v14, v10, :cond_25

    if-eq v15, v12, :cond_24

    if-ne v13, v12, :cond_22

    const/4 v13, 0x0

    goto :goto_6

    :cond_22
    const/4 v3, 0x2

    if-ne v13, v3, :cond_23

    if-ne v15, v3, :cond_23

    iget-object v3, v0, Lyo;->ar:[I

    const/4 v13, 0x0

    aget v6, v3, v13

    if-ne v6, v12, :cond_29

    aget v3, v3, v12

    if-ne v3, v12, :cond_29

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lyn;->j()I

    move-result v6

    int-to-float v6, v6

    mul-float v8, v8, v6

    add-float v8, v8, v16

    invoke-virtual/range {p1 .. p1}, Lyn;->h()I

    move-result v6

    int-to-float v6, v6

    mul-float v11, v11, v6

    add-float v11, v11, v16

    float-to-int v11, v11

    float-to-int v9, v8

    const/4 v10, 0x1

    move-object/from16 v6, p0

    move-object v7, v5

    move v8, v3

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v3, v5, Lyn;->h:Lze;

    iget-object v3, v3, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v6

    invoke-virtual {v3, v6}, Lyz;->c(I)V

    iget-object v3, v5, Lyn;->i:Lzg;

    iget-object v3, v3, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v6

    invoke-virtual {v3, v6}, Lyz;->c(I)V

    iput-boolean v12, v5, Lyn;->e:Z

    goto/16 :goto_a

    :cond_23
    const/4 v13, 0x0

    goto/16 :goto_a

    :cond_24
    const/4 v13, 0x0

    :goto_6
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v5

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v3, v5, Lyn;->h:Lze;

    iget-object v3, v3, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v6

    iput v6, v3, Lza;->m:I

    iget-object v3, v5, Lyn;->i:Lzg;

    iget-object v3, v3, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v5

    iput v5, v3, Lza;->m:I

    goto :goto_a

    :cond_25
    const/4 v13, 0x0

    goto :goto_a

    :cond_26
    const/4 v13, 0x0

    move v9, v14

    :goto_7
    invoke-virtual {v5}, Lyn;->j()I

    move-result v3

    const/4 v6, 0x4

    if-ne v7, v6, :cond_27

    invoke-virtual/range {p1 .. p1}, Lyn;->j()I

    move-result v3

    iget-object v6, v5, Lyn;->K:Lym;

    iget v6, v6, Lym;->g:I

    sub-int/2addr v3, v6

    iget-object v6, v5, Lyn;->M:Lym;

    iget v6, v6, Lym;->g:I

    sub-int/2addr v3, v6

    const/4 v8, 0x1

    goto :goto_8

    :cond_27
    move v8, v7

    :goto_8
    invoke-virtual {v5}, Lyn;->h()I

    move-result v6

    const/4 v7, 0x4

    if-ne v9, v7, :cond_28

    invoke-virtual/range {p1 .. p1}, Lyn;->h()I

    move-result v6

    iget-object v7, v5, Lyn;->L:Lym;

    iget v7, v7, Lym;->g:I

    sub-int/2addr v6, v7

    iget-object v7, v5, Lyn;->N:Lym;

    iget v7, v7, Lym;->g:I

    sub-int/2addr v6, v7

    move v11, v6

    const/4 v10, 0x1

    goto :goto_9

    :cond_28
    move v11, v6

    move v10, v9

    :goto_9
    move-object/from16 v6, p0

    move-object v7, v5

    move v9, v3

    invoke-direct/range {v6 .. v11}, Lyy;->f(Lyn;IIII)V

    iget-object v3, v5, Lyn;->h:Lze;

    iget-object v3, v3, Lze;->f:Lza;

    invoke-virtual {v5}, Lyn;->j()I

    move-result v6

    invoke-virtual {v3, v6}, Lyz;->c(I)V

    iget-object v3, v5, Lyn;->i:Lzg;

    iget-object v3, v3, Lzg;->f:Lza;

    invoke-virtual {v5}, Lyn;->h()I

    move-result v6

    invoke-virtual {v3, v6}, Lyz;->c(I)V

    iput-boolean v12, v5, Lyn;->e:Z

    :cond_29
    :goto_a
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2a
    return-void
.end method
