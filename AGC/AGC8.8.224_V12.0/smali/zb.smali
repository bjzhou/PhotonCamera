.class public final Lzb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lyv;

.field public static b:I

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lyv;

    invoke-direct {v0}, Lyv;-><init>()V

    sput-object v0, Lzb;->a:Lyv;

    const/4 v0, 0x0

    sput v0, Lzb;->b:I

    sput v0, Lzb;->c:I

    return-void
.end method

.method public static a(Lyn;)Z
    .locals 8

    invoke-virtual {p0}, Lyn;->O()I

    move-result v0

    invoke-virtual {p0}, Lyn;->P()I

    move-result v1

    iget-object v2, p0, Lyn;->V:Lyn;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lyn;->O()I

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lyn;->P()I

    :cond_2
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_6

    invoke-virtual {p0}, Lyn;->e()Z

    move-result v7

    if-nez v7, :cond_6

    if-eq v0, v2, :cond_6

    if-ne v0, v4, :cond_3

    iget v0, p0, Lyn;->t:I

    if-nez v0, :cond_5

    iget v0, p0, Lyn;->Y:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_5

    invoke-virtual {p0, v5}, Lyn;->I(I)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_3
    if-eq v0, v4, :cond_5

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    iget v0, p0, Lyn;->t:I

    if-ne v0, v6, :cond_4

    invoke-virtual {p0}, Lyn;->j()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lyn;->J(II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x1

    :goto_1
    if-eq v1, v6, :cond_a

    invoke-virtual {p0}, Lyn;->f()Z

    move-result v7

    if-nez v7, :cond_a

    if-eq v1, v2, :cond_a

    if-ne v1, v4, :cond_7

    iget v1, p0, Lyn;->u:I

    if-nez v1, :cond_9

    iget v1, p0, Lyn;->Y:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_9

    invoke-virtual {p0, v6}, Lyn;->I(I)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    :cond_7
    if-eq v1, v4, :cond_9

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    :goto_2
    iget v1, p0, Lyn;->u:I

    if-ne v1, v6, :cond_8

    invoke-virtual {p0}, Lyn;->h()I

    move-result v1

    invoke-virtual {p0, v6, v1}, Lyn;->J(II)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x1

    :goto_3
    iget p0, p0, Lyn;->Y:F

    cmpl-float p0, p0, v3

    if-lez p0, :cond_c

    if-nez v0, :cond_b

    if-nez v1, :cond_b

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_4

    :cond_b
    return v6

    :cond_c
    :goto_4
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    return v6

    :cond_d
    return v5
.end method

.method public static b(ILyn;Lzn;Z)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    iget-boolean v3, v0, Lyn;->o:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    sget v3, Lzb;->b:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    sput v3, Lzb;->b:I

    instance-of v3, v0, Lyo;

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Lyn;->M()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static/range {p1 .. p1}, Lzb;->a(Lyn;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lyv;

    invoke-direct {v3}, Lyv;-><init>()V

    invoke-static {v0, v1, v3}, Lyo;->Z(Lyn;Lzn;Lyv;)V

    :cond_1
    sget-object v3, Lyl;->b:Lyl;

    invoke-virtual {v0, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    sget-object v5, Lyl;->d:Lyl;

    invoke-virtual {v0, v5}, Lyn;->m(Lyl;)Lym;

    move-result-object v5

    invoke-virtual {v3}, Lym;->a()I

    move-result v6

    invoke-virtual {v5}, Lym;->a()I

    move-result v7

    iget-object v8, v3, Lym;->a:Ljava/util/HashSet;

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x3

    if-eqz v8, :cond_11

    iget-boolean v3, v3, Lym;->c:Z

    if-eqz v3, :cond_11

    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lym;

    iget-object v13, v8, Lym;->d:Lyn;

    add-int/lit8 v14, p0, 0x1

    invoke-static {v13}, Lzb;->a(Lyn;)Z

    move-result v15

    invoke-virtual {v13}, Lyn;->M()Z

    move-result v16

    if-eqz v16, :cond_2

    if-eqz v15, :cond_2

    new-instance v12, Lyv;

    invoke-direct {v12}, Lyv;-><init>()V

    invoke-static {v13, v1, v12}, Lyo;->Z(Lyn;Lzn;Lyv;)V

    :cond_2
    iget-object v12, v13, Lyn;->K:Lym;

    if-ne v8, v12, :cond_4

    iget-object v4, v13, Lyn;->M:Lym;

    iget-object v4, v4, Lym;->f:Lym;

    if-eqz v4, :cond_4

    iget-boolean v4, v4, Lym;->c:Z

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v4, v13, Lyn;->M:Lym;

    if-ne v8, v4, :cond_5

    iget-object v4, v12, Lym;->f:Lym;

    if-eqz v4, :cond_5

    iget-boolean v4, v4, Lym;->c:Z

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v13}, Lyn;->O()I

    move-result v12

    if-ne v12, v11, :cond_b

    if-eqz v15, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v13}, Lyn;->O()I

    move-result v8

    if-ne v8, v11, :cond_a

    iget v8, v13, Lyn;->x:I

    if-ltz v8, :cond_a

    iget v8, v13, Lyn;->w:I

    if-ltz v8, :cond_a

    iget v8, v13, Lyn;->ai:I

    if-eq v8, v10, :cond_7

    iget v8, v13, Lyn;->t:I

    if-nez v8, :cond_a

    iget v8, v13, Lyn;->Y:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_a

    :cond_7
    invoke-virtual {v13}, Lyn;->K()Z

    move-result v8

    if-nez v8, :cond_9

    if-eqz v4, :cond_9

    invoke-virtual {v13}, Lyn;->K()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-static {v14, v0, v1, v13, v2}, Lzb;->f(ILyn;Lzn;Lyn;Z)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_8
    const/4 v4, 0x1

    goto :goto_0

    :cond_9
    const/4 v4, 0x1

    goto :goto_0

    :cond_a
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_3
    invoke-virtual {v13}, Lyn;->M()Z

    move-result v12

    if-nez v12, :cond_10

    iget-object v12, v13, Lyn;->K:Lym;

    if-ne v8, v12, :cond_c

    iget-object v15, v13, Lyn;->M:Lym;

    iget-object v15, v15, Lym;->f:Lym;

    if-nez v15, :cond_c

    invoke-virtual {v12}, Lym;->b()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v13}, Lyn;->j()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v13, v4, v8}, Lyn;->y(II)V

    invoke-static {v14, v13, v1, v2}, Lzb;->b(ILyn;Lzn;Z)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_c
    iget-object v15, v13, Lyn;->M:Lym;

    if-ne v8, v15, :cond_d

    iget-object v8, v12, Lym;->f:Lym;

    if-nez v8, :cond_d

    invoke-virtual {v15}, Lym;->b()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v13}, Lyn;->j()I

    move-result v8

    sub-int v8, v4, v8

    invoke-virtual {v13, v8, v4}, Lyn;->y(II)V

    invoke-static {v14, v13, v1, v2}, Lzb;->b(ILyn;Lzn;Z)V

    goto :goto_4

    :cond_d
    if-eqz v4, :cond_f

    invoke-virtual {v13}, Lyn;->K()Z

    move-result v4

    if-nez v4, :cond_e

    invoke-static {v14, v1, v13, v2}, Lzb;->e(ILzn;Lyn;Z)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_f
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_11
    instance-of v3, v0, Lyq;

    if-nez v3, :cond_1d

    iget-object v3, v5, Lym;->a:Ljava/util/HashSet;

    if-eqz v3, :cond_1c

    iget-boolean v4, v5, Lym;->c:Z

    if-eqz v4, :cond_1c

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lym;

    iget-object v5, v4, Lym;->d:Lyn;

    const/4 v6, 0x1

    add-int/lit8 v8, p0, 0x1

    invoke-static {v5}, Lzb;->a(Lyn;)Z

    move-result v6

    invoke-virtual {v5}, Lyn;->M()Z

    move-result v12

    if-eqz v12, :cond_13

    if-eqz v6, :cond_13

    new-instance v12, Lyv;

    invoke-direct {v12}, Lyv;-><init>()V

    invoke-static {v5, v1, v12}, Lyo;->Z(Lyn;Lzn;Lyv;)V

    :cond_13
    iget-object v12, v5, Lyn;->K:Lym;

    if-ne v4, v12, :cond_15

    iget-object v13, v5, Lyn;->M:Lym;

    iget-object v13, v13, Lym;->f:Lym;

    if-eqz v13, :cond_15

    iget-boolean v13, v13, Lym;->c:Z

    if-nez v13, :cond_14

    goto :goto_6

    :cond_14
    const/4 v12, 0x1

    goto :goto_7

    :cond_15
    :goto_6
    iget-object v13, v5, Lyn;->M:Lym;

    if-ne v4, v13, :cond_16

    iget-object v12, v12, Lym;->f:Lym;

    if-eqz v12, :cond_16

    iget-boolean v12, v12, Lym;->c:Z

    if-eqz v12, :cond_16

    const/4 v12, 0x1

    goto :goto_7

    :cond_16
    const/4 v12, 0x0

    :goto_7
    invoke-virtual {v5}, Lyn;->O()I

    move-result v13

    if-ne v13, v11, :cond_19

    if-eqz v6, :cond_17

    goto :goto_8

    :cond_17
    invoke-virtual {v5}, Lyn;->O()I

    move-result v4

    if-ne v4, v11, :cond_12

    iget v4, v5, Lyn;->x:I

    if-ltz v4, :cond_12

    iget v4, v5, Lyn;->w:I

    if-ltz v4, :cond_12

    iget v4, v5, Lyn;->ai:I

    if-eq v4, v10, :cond_18

    iget v4, v5, Lyn;->t:I

    if-nez v4, :cond_12

    iget v4, v5, Lyn;->Y:F

    cmpl-float v4, v4, v9

    if-nez v4, :cond_12

    :cond_18
    invoke-virtual {v5}, Lyn;->K()Z

    move-result v4

    if-nez v4, :cond_12

    if-eqz v12, :cond_12

    invoke-virtual {v5}, Lyn;->K()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {v8, v0, v1, v5, v2}, Lzb;->f(ILyn;Lzn;Lyn;Z)V

    goto :goto_5

    :cond_19
    :goto_8
    invoke-virtual {v5}, Lyn;->M()Z

    move-result v6

    if-nez v6, :cond_12

    iget-object v6, v5, Lyn;->K:Lym;

    if-ne v4, v6, :cond_1a

    iget-object v13, v5, Lyn;->M:Lym;

    iget-object v13, v13, Lym;->f:Lym;

    if-nez v13, :cond_1a

    invoke-virtual {v6}, Lym;->b()I

    move-result v4

    add-int/2addr v4, v7

    invoke-virtual {v5}, Lyn;->j()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v5, v4, v6}, Lyn;->y(II)V

    invoke-static {v8, v5, v1, v2}, Lzb;->b(ILyn;Lzn;Z)V

    goto/16 :goto_5

    :cond_1a
    iget-object v13, v5, Lyn;->M:Lym;

    if-ne v4, v13, :cond_1b

    iget-object v4, v6, Lym;->f:Lym;

    if-nez v4, :cond_1b

    invoke-virtual {v13}, Lym;->b()I

    move-result v4

    sub-int v4, v7, v4

    invoke-virtual {v5}, Lyn;->j()I

    move-result v6

    sub-int v6, v4, v6

    invoke-virtual {v5, v6, v4}, Lyn;->y(II)V

    invoke-static {v8, v5, v1, v2}, Lzb;->b(ILyn;Lzn;Z)V

    goto/16 :goto_5

    :cond_1b
    if-eqz v12, :cond_12

    invoke-virtual {v5}, Lyn;->K()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {v8, v1, v5, v2}, Lzb;->e(ILzn;Lyn;Z)V

    goto/16 :goto_5

    :cond_1c
    const/4 v1, 0x1

    iput-boolean v1, v0, Lyn;->o:Z

    :cond_1d
    return-void
.end method

.method public static c(ILyn;Lzn;)V
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lyn;->p:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    sget v2, Lzb;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    sput v2, Lzb;->c:I

    instance-of v2, v0, Lyo;

    if-nez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lyn;->M()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lzb;->a(Lyn;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lyv;

    invoke-direct {v2}, Lyv;-><init>()V

    invoke-static {v0, v1, v2}, Lyo;->Z(Lyn;Lzn;Lyv;)V

    :cond_1
    sget-object v2, Lyl;->c:Lyl;

    invoke-virtual {v0, v2}, Lyn;->m(Lyl;)Lym;

    move-result-object v2

    sget-object v4, Lyl;->e:Lyl;

    invoke-virtual {v0, v4}, Lyn;->m(Lyl;)Lym;

    move-result-object v4

    invoke-virtual {v2}, Lym;->a()I

    move-result v5

    invoke-virtual {v4}, Lym;->a()I

    move-result v6

    iget-object v7, v2, Lym;->a:Ljava/util/HashSet;

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x3

    if-eqz v7, :cond_c

    iget-boolean v2, v2, Lym;->c:Z

    if-eqz v2, :cond_c

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lym;

    iget-object v12, v7, Lym;->d:Lyn;

    add-int/lit8 v13, p0, 0x1

    invoke-static {v12}, Lzb;->a(Lyn;)Z

    move-result v14

    invoke-virtual {v12}, Lyn;->M()Z

    move-result v15

    if-eqz v15, :cond_3

    if-eqz v14, :cond_3

    new-instance v15, Lyv;

    invoke-direct {v15}, Lyv;-><init>()V

    invoke-static {v12, v1, v15}, Lyo;->Z(Lyn;Lzn;Lyv;)V

    :cond_3
    iget-object v15, v12, Lyn;->L:Lym;

    if-ne v7, v15, :cond_5

    iget-object v11, v12, Lyn;->N:Lym;

    iget-object v11, v11, Lym;->f:Lym;

    if-eqz v11, :cond_5

    iget-boolean v11, v11, Lym;->c:Z

    if-nez v11, :cond_4

    goto :goto_1

    :cond_4
    const/4 v11, 0x1

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v11, v12, Lyn;->N:Lym;

    if-ne v7, v11, :cond_6

    iget-object v11, v15, Lym;->f:Lym;

    if-eqz v11, :cond_6

    iget-boolean v11, v11, Lym;->c:Z

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v12}, Lyn;->P()I

    move-result v15

    if-ne v15, v10, :cond_9

    if-eqz v14, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v12}, Lyn;->P()I

    move-result v7

    if-ne v7, v10, :cond_2

    iget v7, v12, Lyn;->A:I

    if-ltz v7, :cond_2

    iget v7, v12, Lyn;->z:I

    if-ltz v7, :cond_2

    iget v7, v12, Lyn;->ai:I

    if-eq v7, v9, :cond_8

    iget v7, v12, Lyn;->u:I

    if-nez v7, :cond_2

    iget v7, v12, Lyn;->Y:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    :cond_8
    invoke-virtual {v12}, Lyn;->L()Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v12}, Lyn;->L()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v0, v1, v12}, Lzb;->h(ILyn;Lzn;Lyn;)V

    goto :goto_0

    :cond_9
    :goto_3
    invoke-virtual {v12}, Lyn;->M()Z

    move-result v14

    if-nez v14, :cond_2

    iget-object v14, v12, Lyn;->L:Lym;

    if-ne v7, v14, :cond_a

    iget-object v15, v12, Lyn;->N:Lym;

    iget-object v15, v15, Lym;->f:Lym;

    if-nez v15, :cond_a

    invoke-virtual {v14}, Lym;->b()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v12}, Lyn;->h()I

    move-result v11

    add-int/2addr v11, v7

    invoke-virtual {v12, v7, v11}, Lyn;->z(II)V

    invoke-static {v13, v12, v1}, Lzb;->c(ILyn;Lzn;)V

    goto/16 :goto_0

    :cond_a
    iget-object v15, v12, Lyn;->N:Lym;

    if-ne v7, v15, :cond_b

    iget-object v7, v14, Lym;->f:Lym;

    if-nez v7, :cond_b

    invoke-virtual {v15}, Lym;->b()I

    move-result v7

    sub-int v7, v5, v7

    invoke-virtual {v12}, Lyn;->h()I

    move-result v11

    sub-int v11, v7, v11

    invoke-virtual {v12, v11, v7}, Lyn;->z(II)V

    invoke-static {v13, v12, v1}, Lzb;->c(ILyn;Lzn;)V

    goto/16 :goto_0

    :cond_b
    if-eqz v11, :cond_2

    invoke-virtual {v12}, Lyn;->L()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v13, v1, v12}, Lzb;->g(ILzn;Lyn;)V

    goto/16 :goto_0

    :cond_c
    instance-of v2, v0, Lyq;

    if-nez v2, :cond_1d

    iget-object v2, v4, Lym;->a:Ljava/util/HashSet;

    if-eqz v2, :cond_17

    iget-boolean v4, v4, Lym;->c:Z

    if-eqz v4, :cond_17

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lym;

    iget-object v5, v4, Lym;->d:Lyn;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v5}, Lzb;->a(Lyn;)Z

    move-result v11

    invoke-virtual {v5}, Lyn;->M()Z

    move-result v12

    if-eqz v12, :cond_e

    if-eqz v11, :cond_e

    new-instance v12, Lyv;

    invoke-direct {v12}, Lyv;-><init>()V

    invoke-static {v5, v1, v12}, Lyo;->Z(Lyn;Lzn;Lyv;)V

    :cond_e
    iget-object v12, v5, Lyn;->L:Lym;

    if-ne v4, v12, :cond_10

    iget-object v13, v5, Lyn;->N:Lym;

    iget-object v13, v13, Lym;->f:Lym;

    if-eqz v13, :cond_10

    iget-boolean v13, v13, Lym;->c:Z

    if-nez v13, :cond_f

    goto :goto_5

    :cond_f
    const/4 v12, 0x1

    goto :goto_6

    :cond_10
    :goto_5
    iget-object v13, v5, Lyn;->N:Lym;

    if-ne v4, v13, :cond_11

    iget-object v12, v12, Lym;->f:Lym;

    if-eqz v12, :cond_11

    iget-boolean v12, v12, Lym;->c:Z

    if-eqz v12, :cond_11

    const/4 v12, 0x1

    goto :goto_6

    :cond_11
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v5}, Lyn;->P()I

    move-result v13

    if-ne v13, v10, :cond_14

    if-eqz v11, :cond_12

    goto :goto_7

    :cond_12
    invoke-virtual {v5}, Lyn;->P()I

    move-result v4

    if-ne v4, v10, :cond_d

    iget v4, v5, Lyn;->A:I

    if-ltz v4, :cond_d

    iget v4, v5, Lyn;->z:I

    if-ltz v4, :cond_d

    iget v4, v5, Lyn;->ai:I

    if-eq v4, v9, :cond_13

    iget v4, v5, Lyn;->u:I

    if-nez v4, :cond_d

    iget v4, v5, Lyn;->Y:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_d

    :cond_13
    invoke-virtual {v5}, Lyn;->L()Z

    move-result v4

    if-nez v4, :cond_d

    if-eqz v12, :cond_d

    invoke-virtual {v5}, Lyn;->L()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v7, v0, v1, v5}, Lzb;->h(ILyn;Lzn;Lyn;)V

    goto :goto_4

    :cond_14
    :goto_7
    invoke-virtual {v5}, Lyn;->M()Z

    move-result v11

    if-nez v11, :cond_d

    iget-object v11, v5, Lyn;->L:Lym;

    if-ne v4, v11, :cond_15

    iget-object v13, v5, Lyn;->N:Lym;

    iget-object v13, v13, Lym;->f:Lym;

    if-nez v13, :cond_15

    invoke-virtual {v11}, Lym;->b()I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v5}, Lyn;->h()I

    move-result v11

    add-int/2addr v11, v4

    invoke-virtual {v5, v4, v11}, Lyn;->z(II)V

    invoke-static {v7, v5, v1}, Lzb;->c(ILyn;Lzn;)V

    goto/16 :goto_4

    :cond_15
    iget-object v13, v5, Lyn;->N:Lym;

    if-ne v4, v13, :cond_16

    iget-object v4, v11, Lym;->f:Lym;

    if-nez v4, :cond_16

    invoke-virtual {v13}, Lym;->b()I

    move-result v4

    sub-int v4, v6, v4

    invoke-virtual {v5}, Lyn;->h()I

    move-result v11

    sub-int v11, v4, v11

    invoke-virtual {v5, v11, v4}, Lyn;->z(II)V

    invoke-static {v7, v5, v1}, Lzb;->c(ILyn;Lzn;)V

    goto/16 :goto_4

    :cond_16
    if-eqz v12, :cond_d

    invoke-virtual {v5}, Lyn;->L()Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {v7, v1, v5}, Lzb;->g(ILzn;Lyn;)V

    goto/16 :goto_4

    :cond_17
    sget-object v2, Lyl;->f:Lyl;

    invoke-virtual {v0, v2}, Lyn;->m(Lyl;)Lym;

    move-result-object v2

    iget-object v4, v2, Lym;->a:Ljava/util/HashSet;

    if-eqz v4, :cond_1c

    iget-boolean v4, v2, Lym;->c:Z

    if-eqz v4, :cond_1c

    invoke-virtual {v2}, Lym;->a()I

    move-result v4

    iget-object v2, v2, Lym;->a:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lym;

    iget-object v6, v5, Lym;->d:Lyn;

    add-int/lit8 v7, p0, 0x1

    invoke-static {v6}, Lzb;->a(Lyn;)Z

    move-result v8

    invoke-virtual {v6}, Lyn;->M()Z

    move-result v9

    if-eqz v9, :cond_19

    if-eqz v8, :cond_19

    new-instance v9, Lyv;

    invoke-direct {v9}, Lyv;-><init>()V

    invoke-static {v6, v1, v9}, Lyo;->Z(Lyn;Lzn;Lyv;)V

    :cond_19
    invoke-virtual {v6}, Lyn;->P()I

    move-result v9

    if-ne v9, v10, :cond_1a

    if-eqz v8, :cond_18

    :cond_1a
    invoke-virtual {v6}, Lyn;->M()Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, v6, Lyn;->O:Lym;

    if-ne v5, v8, :cond_18

    invoke-virtual {v5}, Lym;->b()I

    move-result v5

    add-int/2addr v5, v4

    iget-boolean v8, v6, Lyn;->G:Z

    if-eqz v8, :cond_1b

    iget v8, v6, Lyn;->ac:I

    sub-int v8, v5, v8

    iget v9, v6, Lyn;->X:I

    add-int/2addr v9, v8

    iput v8, v6, Lyn;->ab:I

    iget-object v11, v6, Lyn;->L:Lym;

    invoke-virtual {v11, v8}, Lym;->e(I)V

    iget-object v8, v6, Lyn;->N:Lym;

    invoke-virtual {v8, v9}, Lym;->e(I)V

    iget-object v8, v6, Lyn;->O:Lym;

    invoke-virtual {v8, v5}, Lym;->e(I)V

    iput-boolean v3, v6, Lyn;->n:Z

    :cond_1b
    :try_start_0
    invoke-static {v7, v6, v1}, Lzb;->c(ILyn;Lzn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_8

    :cond_1c
    iput-boolean v3, v0, Lyn;->p:Z

    :cond_1d
    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method public static d(Lyj;Lzn;IZ)V
    .locals 1

    invoke-virtual {p0}, Lyj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-static {v0, p0, p1, p3}, Lzb;->b(ILyn;Lzn;Z)V

    return-void

    :cond_0
    invoke-static {v0, p0, p1}, Lzb;->c(ILyn;Lzn;)V

    :cond_1
    return-void
.end method

.method private static e(ILzn;Lyn;Z)V
    .locals 6

    iget v0, p2, Lyn;->af:F

    iget-object v1, p2, Lyn;->K:Lym;

    iget-object v1, v1, Lym;->f:Lym;

    invoke-virtual {v1}, Lym;->a()I

    move-result v1

    iget-object v2, p2, Lyn;->M:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    iget-object v3, p2, Lyn;->K:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p2, Lyn;->M:Lym;

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    sub-int v4, v2, v4

    if-ne v1, v2, :cond_0

    move v4, v2

    :cond_0
    if-ne v1, v2, :cond_1

    move v3, v1

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_2
    invoke-virtual {p2}, Lyn;->j()I

    move-result v1

    sub-int v2, v4, v3

    sub-int/2addr v2, v1

    if-le v3, v4, :cond_3

    sub-int v2, v3, v4

    sub-int/2addr v2, v1

    :cond_3
    if-lez v2, :cond_4

    int-to-float v2, v2

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    :goto_0
    add-int/2addr v0, v3

    add-int v2, v0, v1

    if-le v3, v4, :cond_5

    sub-int v2, v0, v1

    goto :goto_1

    :cond_5
    :goto_1
    invoke-virtual {p2, v0, v2}, Lyn;->y(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p1, p3}, Lzb;->b(ILyn;Lzn;Z)V

    return-void
.end method

.method private static f(ILyn;Lzn;Lyn;Z)V
    .locals 7

    iget v0, p3, Lyn;->af:F

    iget-object v1, p3, Lyn;->K:Lym;

    iget-object v1, v1, Lym;->f:Lym;

    invoke-virtual {v1}, Lym;->a()I

    move-result v1

    iget-object v2, p3, Lyn;->K:Lym;

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p3, Lyn;->M:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    iget-object v3, p3, Lyn;->M:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    invoke-virtual {p3}, Lyn;->j()I

    move-result v3

    iget v4, p3, Lyn;->ai:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lyn;->t:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v3, p1, Lyo;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lyn;->j()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lyn;->V:Lyn;

    invoke-virtual {p1}, Lyn;->j()I

    move-result p1

    :goto_0
    iget v3, p3, Lyn;->af:F

    mul-float v3, v3, v6

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v2, v1

    :cond_2
    :goto_1
    iget p1, p3, Lyn;->w:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p3, Lyn;->x:I

    if-lez p1, :cond_3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    :cond_3
    :goto_2
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v3, v1

    invoke-virtual {p3, v1, v3}, Lyn;->y(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p3, p2, p4}, Lzb;->b(ILyn;Lzn;Z)V

    return-void

    :cond_4
    return-void
.end method

.method private static g(ILzn;Lyn;)V
    .locals 6

    iget v0, p2, Lyn;->ag:F

    iget-object v1, p2, Lyn;->L:Lym;

    iget-object v1, v1, Lym;->f:Lym;

    invoke-virtual {v1}, Lym;->a()I

    move-result v1

    iget-object v2, p2, Lyn;->N:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    iget-object v3, p2, Lyn;->L:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p2, Lyn;->N:Lym;

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    sub-int v4, v2, v4

    if-ne v1, v2, :cond_0

    move v4, v2

    :cond_0
    if-ne v1, v2, :cond_1

    move v3, v1

    :cond_1
    const/high16 v5, 0x3f000000    # 0.5f

    if-ne v1, v2, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_2
    invoke-virtual {p2}, Lyn;->h()I

    move-result v1

    sub-int v2, v4, v3

    sub-int/2addr v2, v1

    if-le v3, v4, :cond_3

    sub-int v2, v3, v4

    sub-int/2addr v2, v1

    :cond_3
    if-lez v2, :cond_4

    int-to-float v2, v2

    mul-float v0, v0, v2

    add-float/2addr v0, v5

    float-to-int v0, v0

    goto :goto_0

    :cond_4
    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    :goto_0
    add-int v2, v3, v0

    add-int v5, v2, v1

    if-le v3, v4, :cond_5

    sub-int v2, v3, v0

    sub-int v5, v2, v1

    goto :goto_1

    :cond_5
    :goto_1
    invoke-virtual {p2, v2, v5}, Lyn;->z(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p2, p1}, Lzb;->c(ILyn;Lzn;)V

    return-void
.end method

.method private static h(ILyn;Lzn;Lyn;)V
    .locals 7

    iget v0, p3, Lyn;->ag:F

    iget-object v1, p3, Lyn;->L:Lym;

    iget-object v1, v1, Lym;->f:Lym;

    invoke-virtual {v1}, Lym;->a()I

    move-result v1

    iget-object v2, p3, Lyn;->L:Lym;

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p3, Lyn;->N:Lym;

    iget-object v2, v2, Lym;->f:Lym;

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    iget-object v3, p3, Lyn;->N:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v2, v1, :cond_4

    invoke-virtual {p3}, Lyn;->h()I

    move-result v3

    iget v4, p3, Lyn;->ai:I

    const/16 v5, 0x8

    const/high16 v6, 0x3f000000    # 0.5f

    if-eq v4, v5, :cond_3

    iget v4, p3, Lyn;->u:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    instance-of v3, p1, Lyo;

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lyn;->h()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lyn;->V:Lyn;

    invoke-virtual {p1}, Lyn;->h()I

    move-result p1

    :goto_0
    mul-float v3, v0, v6

    int-to-float p1, p1

    mul-float v3, v3, p1

    float-to-int v3, v3

    goto :goto_1

    :cond_1
    if-nez v4, :cond_2

    sub-int v3, v2, v1

    :cond_2
    :goto_1
    iget p1, p3, Lyn;->z:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget p1, p3, Lyn;->A:I

    if-lez p1, :cond_3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_2

    :cond_3
    :goto_2
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    int-to-float p1, v2

    mul-float v0, v0, p1

    add-float/2addr v0, v6

    float-to-int p1, v0

    add-int/2addr v1, p1

    add-int/2addr v3, v1

    invoke-virtual {p3, v1, v3}, Lyn;->z(II)V

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0, p3, p2}, Lzb;->c(ILyn;Lzn;)V

    return-void

    :cond_4
    return-void
.end method
