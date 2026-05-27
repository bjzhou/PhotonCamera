.class public final Lzg;
.super Lzi;


# instance fields
.field public final a:Lyz;

.field b:Lza;


# direct methods
.method public constructor <init>(Lyn;)V
    .locals 2

    invoke-direct {p0, p1}, Lzi;-><init>(Lyn;)V

    new-instance p1, Lyz;

    invoke-direct {p1, p0}, Lyz;-><init>(Lzi;)V

    iput-object p1, p0, Lzg;->a:Lyz;

    const/4 v0, 0x0

    iput-object v0, p0, Lzg;->b:Lza;

    iget-object v0, p0, Lzg;->i:Lyz;

    const/4 v1, 0x6

    iput v1, v0, Lyz;->l:I

    iget-object v0, p0, Lzg;->j:Lyz;

    const/4 v1, 0x7

    iput v1, v0, Lyz;->l:I

    const/16 v0, 0x8

    iput v0, p1, Lyz;->l:I

    const/4 p1, 0x1

    iput p1, p0, Lzg;->g:I

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 10

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v1, v0, Lyn;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzg;->f:Lza;

    invoke-virtual {v0}, Lyn;->h()I

    move-result v0

    invoke-virtual {v1, v0}, Lyz;->c(I)V

    :cond_0
    iget-object v0, p0, Lzg;->f:Lza;

    iget-boolean v0, v0, Lza;->i:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez v0, :cond_4

    iget-object v0, p0, Lzg;->d:Lyn;

    invoke-virtual {v0}, Lyn;->P()I

    move-result v0

    iput v0, p0, Lzi;->k:I

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v0, v0, Lyn;->G:Z

    if-eqz v0, :cond_1

    new-instance v0, Lza;

    invoke-direct {v0, p0}, Lza;-><init>(Lzi;)V

    iput-object v0, p0, Lzg;->b:Lza;

    :cond_1
    iget v0, p0, Lzi;->k:I

    if-eq v0, v3, :cond_5

    iget v0, p0, Lzg;->k:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-object v0, v0, Lyn;->V:Lyn;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lyn;->P()I

    move-result v4

    if-eq v4, v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lyn;->h()I

    move-result v1

    iget-object v2, p0, Lzg;->d:Lyn;

    iget-object v2, v2, Lyn;->L:Lym;

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lzg;->d:Lyn;

    iget-object v2, v2, Lyn;->N:Lym;

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lzg;->i:Lyz;

    iget-object v3, v0, Lyn;->i:Lzg;

    iget-object v3, v3, Lzg;->i:Lyz;

    iget-object v4, p0, Lzg;->d:Lyn;

    iget-object v4, v4, Lyn;->L:Lym;

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    invoke-static {v2, v3, v4}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v2, p0, Lzg;->j:Lyz;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    iget-object v3, p0, Lzg;->d:Lyn;

    iget-object v3, v3, Lyn;->N:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    neg-int v3, v3

    invoke-static {v2, v0, v3}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->f:Lza;

    invoke-virtual {v0, v1}, Lyz;->c(I)V

    return-void

    :cond_3
    :goto_0
    iget v0, p0, Lzg;->k:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lzg;->f:Lza;

    iget-object v4, p0, Lzg;->d:Lyn;

    invoke-virtual {v4}, Lyn;->h()I

    move-result v4

    invoke-virtual {v0, v4}, Lyz;->c(I)V

    goto :goto_1

    :cond_4
    iget v0, p0, Lzg;->k:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-object v0, v0, Lyn;->V:Lyn;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lyn;->P()I

    move-result v4

    if-ne v4, v2, :cond_5

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v2, v0, Lyn;->i:Lzg;

    iget-object v2, v2, Lzg;->i:Lyz;

    iget-object v3, p0, Lzg;->d:Lyn;

    iget-object v3, v3, Lyn;->L:Lym;

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    invoke-static {v1, v2, v3}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v0, v0, Lyn;->i:Lzg;

    iget-object v0, v0, Lzg;->j:Lyz;

    iget-object v2, p0, Lzg;->d:Lyn;

    iget-object v2, v2, Lyn;->N:Lym;

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Lzg;->j(Lyz;Lyz;I)V

    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lzg;->f:Lza;

    iget-boolean v4, v0, Lza;->i:Z

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v4, :cond_e

    iget-object v4, p0, Lzg;->d:Lyn;

    iget-boolean v7, v4, Lyn;->e:Z

    if-eqz v7, :cond_10

    iget-object v0, v4, Lyn;->S:[Lym;

    aget-object v7, v0, v6

    iget-object v8, v7, Lym;->f:Lym;

    if-eqz v8, :cond_9

    aget-object v9, v0, v3

    iget-object v9, v9, Lym;->f:Lym;

    if-eqz v9, :cond_9

    invoke-virtual {v4}, Lyn;->L()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v1, p0, Lzg;->d:Lyn;

    iget-object v1, v1, Lyn;->S:[Lym;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    iput v1, v0, Lyz;->e:I

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->d:Lyn;

    iget-object v1, v1, Lyn;->S:[Lym;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lyz;->e:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lzg;->d:Lyn;

    iget-object v0, v0, Lyn;->S:[Lym;

    aget-object v0, v0, v6

    invoke-static {v0}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v4, p0, Lzg;->d:Lyn;

    iget-object v4, v4, Lyn;->S:[Lym;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    invoke-static {v1, v0, v4}, Lzg;->j(Lyz;Lyz;I)V

    :cond_7
    iget-object v0, p0, Lzg;->d:Lyn;

    iget-object v0, v0, Lyn;->S:[Lym;

    aget-object v0, v0, v3

    invoke-static {v0}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v4, p0, Lzg;->d:Lyn;

    iget-object v4, v4, Lyn;->S:[Lym;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v0, v3}, Lzg;->j(Lyz;Lyz;I)V

    :cond_8
    iget-object v0, p0, Lzg;->i:Lyz;

    iput-boolean v2, v0, Lyz;->b:Z

    iget-object v0, p0, Lzg;->j:Lyz;

    iput-boolean v2, v0, Lyz;->b:Z

    :goto_2
    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v1, v0, Lyn;->G:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lzg;->a:Lyz;

    iget-object v2, p0, Lzg;->i:Lyz;

    iget v0, v0, Lyn;->ac:I

    invoke-static {v1, v2, v0}, Lzg;->j(Lyz;Lyz;I)V

    return-void

    :cond_9
    if-eqz v8, :cond_a

    invoke-static {v7}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v2, p0, Lzg;->d:Lyn;

    iget-object v2, v2, Lyn;->S:[Lym;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    invoke-static {v1, v0, v2}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v2, p0, Lzg;->f:Lza;

    iget v2, v2, Lza;->f:I

    invoke-static {v0, v1, v2}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v1, v0, Lyn;->G:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lzg;->a:Lyz;

    iget-object v2, p0, Lzg;->i:Lyz;

    iget v0, v0, Lyn;->ac:I

    invoke-static {v1, v2, v0}, Lzg;->j(Lyz;Lyz;I)V

    return-void

    :cond_a
    aget-object v2, v0, v3

    iget-object v6, v2, Lym;->f:Lym;

    if-eqz v6, :cond_c

    invoke-static {v2}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v2, p0, Lzg;->d:Lyn;

    iget-object v2, v2, Lyn;->S:[Lym;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lym;->b()I

    move-result v2

    neg-int v2, v2

    invoke-static {v1, v0, v2}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v2, p0, Lzg;->f:Lza;

    iget v2, v2, Lza;->f:I

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lzg;->j(Lyz;Lyz;I)V

    :cond_b
    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v1, v0, Lyn;->G:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lzg;->a:Lyz;

    iget-object v2, p0, Lzg;->i:Lyz;

    iget v0, v0, Lyn;->ac:I

    invoke-static {v1, v2, v0}, Lzg;->j(Lyz;Lyz;I)V

    return-void

    :cond_c
    aget-object v0, v0, v1

    iget-object v1, v0, Lym;->f:Lym;

    if-eqz v1, :cond_d

    invoke-static {v0}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lzg;->a:Lyz;

    invoke-static {v1, v0, v5}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v1, p0, Lzg;->a:Lyz;

    iget-object v2, p0, Lzg;->d:Lyn;

    iget v2, v2, Lyn;->ac:I

    neg-int v2, v2

    invoke-static {v0, v1, v2}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v2, p0, Lzg;->f:Lza;

    iget v2, v2, Lza;->f:I

    invoke-static {v0, v1, v2}, Lzg;->j(Lyz;Lyz;I)V

    return-void

    :cond_d
    instance-of v0, v4, Lyr;

    if-nez v0, :cond_1c

    iget-object v0, v4, Lyn;->V:Lyn;

    if-eqz v0, :cond_1c

    sget-object v0, Lyl;->g:Lyl;

    invoke-virtual {v4, v0}, Lyn;->m(Lyl;)Lym;

    move-result-object v0

    iget-object v0, v0, Lym;->f:Lym;

    if-nez v0, :cond_1c

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-object v1, v0, Lyn;->V:Lyn;

    iget-object v1, v1, Lyn;->i:Lzg;

    iget-object v1, v1, Lzg;->i:Lyz;

    iget-object v2, p0, Lzg;->i:Lyz;

    invoke-virtual {v0}, Lyn;->l()I

    move-result v0

    invoke-static {v2, v1, v0}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v2, p0, Lzg;->f:Lza;

    iget v2, v2, Lza;->f:I

    invoke-static {v0, v1, v2}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v1, v0, Lyn;->G:Z

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lzg;->a:Lyz;

    iget-object v2, p0, Lzg;->i:Lyz;

    iget v0, v0, Lyn;->ac:I

    invoke-static {v1, v2, v0}, Lzg;->j(Lyz;Lyz;I)V

    return-void

    :cond_e
    iget v4, p0, Lzg;->k:I

    if-ne v4, v3, :cond_10

    iget-object v4, p0, Lzg;->d:Lyn;

    iget v7, v4, Lyn;->u:I

    packed-switch v7, :pswitch_data_0

    :cond_f
    goto :goto_3

    :pswitch_0
    invoke-virtual {v4}, Lyn;->L()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lzg;->d:Lyn;

    iget v4, v0, Lyn;->t:I

    if-eq v4, v3, :cond_11

    iget-object v0, v0, Lyn;->h:Lze;

    iget-object v0, v0, Lze;->f:Lza;

    iget-object v4, p0, Lzg;->f:Lza;

    iget-object v4, v4, Lza;->k:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lyz;->j:Ljava/util/List;

    iget-object v4, p0, Lzg;->f:Lza;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzg;->f:Lza;

    iput-boolean v2, v0, Lza;->b:Z

    iget-object v0, v0, Lza;->j:Ljava/util/List;

    iget-object v4, p0, Lzg;->i:Lyz;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzg;->f:Lza;

    iget-object v0, v0, Lza;->j:Ljava/util/List;

    iget-object v4, p0, Lzg;->j:Lyz;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_1
    iget-object v4, v4, Lyn;->V:Lyn;

    if-eqz v4, :cond_f

    iget-object v4, v4, Lyn;->i:Lzg;

    iget-object v4, v4, Lzg;->f:Lza;

    iget-object v0, v0, Lza;->k:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v4, Lyz;->j:Ljava/util/List;

    iget-object v4, p0, Lzg;->f:Lza;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzg;->f:Lza;

    iput-boolean v2, v0, Lza;->b:Z

    iget-object v0, v0, Lza;->j:Ljava/util/List;

    iget-object v4, p0, Lzg;->i:Lyz;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzg;->f:Lza;

    iget-object v0, v0, Lza;->j:Ljava/util/List;

    iget-object v4, p0, Lzg;->j:Lyz;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    invoke-virtual {v0, p0}, Lyz;->a(Lyx;)V

    :cond_11
    :goto_3
    iget-object v0, p0, Lzg;->d:Lyn;

    iget-object v4, v0, Lyn;->S:[Lym;

    aget-object v7, v4, v6

    iget-object v8, v7, Lym;->f:Lym;

    if-eqz v8, :cond_15

    aget-object v9, v4, v3

    iget-object v9, v9, Lym;->f:Lym;

    if-eqz v9, :cond_15

    invoke-virtual {v0}, Lyn;->L()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v1, p0, Lzg;->d:Lyn;

    iget-object v1, v1, Lyn;->S:[Lym;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    iput v1, v0, Lyz;->e:I

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->d:Lyn;

    iget-object v1, v1, Lyn;->S:[Lym;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lym;->b()I

    move-result v1

    neg-int v1, v1

    iput v1, v0, Lyz;->e:I

    goto :goto_4

    :cond_12
    iget-object v0, p0, Lzg;->d:Lyn;

    iget-object v0, v0, Lyn;->S:[Lym;

    aget-object v0, v0, v6

    invoke-static {v0}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    iget-object v4, p0, Lzg;->d:Lyn;

    iget-object v4, v4, Lyn;->S:[Lym;

    aget-object v3, v4, v3

    invoke-static {v3}, Lzg;->k(Lym;)Lyz;

    move-result-object v3

    if-eqz v0, :cond_13

    invoke-virtual {v0, p0}, Lyz;->a(Lyx;)V

    :cond_13
    if-eqz v3, :cond_14

    invoke-virtual {v3, p0}, Lyz;->a(Lyx;)V

    :cond_14
    iput v1, p0, Lzg;->l:I

    :goto_4
    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v0, v0, Lyn;->G:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lzg;->a:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v3, p0, Lzg;->b:Lza;

    invoke-virtual {p0, v0, v1, v2, v3}, Lzi;->i(Lyz;Lyz;ILza;)V

    goto/16 :goto_5

    :cond_15
    const/4 v9, 0x0

    if-eqz v8, :cond_17

    invoke-static {v7}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v4, p0, Lzg;->d:Lyn;

    iget-object v4, v4, Lyn;->S:[Lym;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lym;->b()I

    move-result v4

    invoke-static {v1, v0, v4}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v4, p0, Lzg;->f:Lza;

    invoke-virtual {p0, v0, v1, v2, v4}, Lzi;->i(Lyz;Lyz;ILza;)V

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v0, v0, Lyn;->G:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lzg;->a:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v4, p0, Lzg;->b:Lza;

    invoke-virtual {p0, v0, v1, v2, v4}, Lzi;->i(Lyz;Lyz;ILza;)V

    :cond_16
    iget v0, p0, Lzg;->k:I

    if-ne v0, v3, :cond_1b

    iget-object v0, p0, Lzg;->d:Lyn;

    iget v1, v0, Lyn;->Y:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1b

    iget-object v0, v0, Lyn;->h:Lze;

    iget v1, v0, Lze;->k:I

    if-ne v1, v3, :cond_1b

    iget-object v0, v0, Lze;->f:Lza;

    iget-object v0, v0, Lza;->j:Ljava/util/List;

    iget-object v1, p0, Lzg;->f:Lza;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzg;->f:Lza;

    iget-object v0, v0, Lza;->k:Ljava/util/List;

    iget-object v1, p0, Lzg;->d:Lyn;

    iget-object v1, v1, Lyn;->h:Lze;

    iget-object v1, v1, Lze;->f:Lza;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzg;->f:Lza;

    iput-object p0, v0, Lza;->a:Lyx;

    goto/16 :goto_5

    :cond_17
    aget-object v6, v4, v3

    iget-object v7, v6, Lym;->f:Lym;

    const/4 v8, -0x1

    if-eqz v7, :cond_18

    invoke-static {v6}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v4, p0, Lzg;->d:Lyn;

    iget-object v4, v4, Lyn;->S:[Lym;

    aget-object v3, v4, v3

    invoke-virtual {v3}, Lym;->b()I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v0, v3}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v3, p0, Lzg;->f:Lza;

    invoke-virtual {p0, v0, v1, v8, v3}, Lzi;->i(Lyz;Lyz;ILza;)V

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v0, v0, Lyn;->G:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lzg;->a:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v3, p0, Lzg;->b:Lza;

    invoke-virtual {p0, v0, v1, v2, v3}, Lzi;->i(Lyz;Lyz;ILza;)V

    goto/16 :goto_5

    :cond_18
    aget-object v1, v4, v1

    iget-object v4, v1, Lym;->f:Lym;

    if-eqz v4, :cond_19

    invoke-static {v1}, Lzg;->k(Lym;)Lyz;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lzg;->a:Lyz;

    invoke-static {v1, v0, v5}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v1, p0, Lzg;->a:Lyz;

    iget-object v3, p0, Lzg;->b:Lza;

    invoke-virtual {p0, v0, v1, v8, v3}, Lzi;->i(Lyz;Lyz;ILza;)V

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v3, p0, Lzg;->f:Lza;

    invoke-virtual {p0, v0, v1, v2, v3}, Lzi;->i(Lyz;Lyz;ILza;)V

    goto :goto_5

    :cond_19
    instance-of v1, v0, Lyr;

    if-nez v1, :cond_1b

    iget-object v1, v0, Lyn;->V:Lyn;

    if-eqz v1, :cond_1b

    iget-object v1, v1, Lyn;->i:Lzg;

    iget-object v1, v1, Lzg;->i:Lyz;

    iget-object v4, p0, Lzg;->i:Lyz;

    invoke-virtual {v0}, Lyn;->l()I

    move-result v0

    invoke-static {v4, v1, v0}, Lzg;->j(Lyz;Lyz;I)V

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v4, p0, Lzg;->f:Lza;

    invoke-virtual {p0, v0, v1, v2, v4}, Lzi;->i(Lyz;Lyz;ILza;)V

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-boolean v0, v0, Lyn;->G:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lzg;->a:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget-object v4, p0, Lzg;->b:Lza;

    invoke-virtual {p0, v0, v1, v2, v4}, Lzi;->i(Lyz;Lyz;ILza;)V

    :cond_1a
    iget v0, p0, Lzg;->k:I

    if-ne v0, v3, :cond_1b

    iget-object v0, p0, Lzg;->d:Lyn;

    iget v1, v0, Lyn;->Y:F

    cmpl-float v1, v1, v9

    if-lez v1, :cond_1b

    iget-object v0, v0, Lyn;->h:Lze;

    iget v1, v0, Lze;->k:I

    if-ne v1, v3, :cond_1b

    iget-object v0, v0, Lze;->f:Lza;

    iget-object v0, v0, Lza;->j:Ljava/util/List;

    iget-object v1, p0, Lzg;->f:Lza;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzg;->f:Lza;

    iget-object v0, v0, Lza;->k:Ljava/util/List;

    iget-object v1, p0, Lzg;->d:Lyn;

    iget-object v1, v1, Lyn;->h:Lze;

    iget-object v1, v1, Lze;->f:Lza;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lzg;->f:Lza;

    iput-object p0, v0, Lza;->a:Lyx;

    :cond_1b
    :goto_5
    iget-object v0, p0, Lzg;->f:Lza;

    iget-object v0, v0, Lza;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lzg;->f:Lza;

    iput-boolean v2, v0, Lza;->c:Z

    return-void

    :cond_1c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-boolean v1, v0, Lyz;->i:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzg;->d:Lyn;

    iget v0, v0, Lyz;->f:I

    iput v0, v1, Lyn;->ab:I

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lzg;->e:Lzf;

    iget-object v0, p0, Lzg;->i:Lyz;

    invoke-virtual {v0}, Lyz;->b()V

    iget-object v0, p0, Lzg;->j:Lyz;

    invoke-virtual {v0}, Lyz;->b()V

    iget-object v0, p0, Lzg;->a:Lyz;

    invoke-virtual {v0}, Lyz;->b()V

    iget-object v0, p0, Lzg;->f:Lza;

    invoke-virtual {v0}, Lyz;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzg;->h:Z

    return-void
.end method

.method public final e()Z
    .locals 3

    iget v0, p0, Lzi;->k:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lzi;->d:Lyn;

    iget v0, v0, Lyn;->u:I

    if-nez v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v2
.end method

.method public final f()V
    .locals 9

    iget v0, p0, Lzg;->l:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lzg;->f:Lza;

    iget-boolean v2, v1, Lza;->c:Z

    const/4 v3, 0x3

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lza;->i:Z

    if-nez v2, :cond_0

    iget v2, p0, Lzg;->k:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lzg;->d:Lyn;

    iget v5, v2, Lyn;->u:I

    packed-switch v5, :pswitch_data_1

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lzg;->d:Lyn;

    iget-object v2, v1, Lyn;->L:Lym;

    iget-object v1, v1, Lyn;->N:Lym;

    invoke-virtual {p0, v2, v1, v0}, Lzi;->m(Lym;Lym;I)V

    return-void

    :pswitch_1
    iget-object v5, v2, Lyn;->h:Lze;

    iget-object v5, v5, Lze;->f:Lza;

    iget-boolean v6, v5, Lza;->i:Z

    if-eqz v6, :cond_0

    iget v6, v2, Lyn;->Z:I

    packed-switch v6, :pswitch_data_2

    iget v5, v5, Lza;->f:I

    int-to-float v5, v5

    iget v2, v2, Lyn;->Y:F

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    goto :goto_0

    :pswitch_2
    iget v5, v5, Lza;->f:I

    int-to-float v5, v5

    iget v2, v2, Lyn;->Y:F

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    goto :goto_0

    :pswitch_3
    iget v5, v5, Lza;->f:I

    int-to-float v5, v5

    iget v2, v2, Lyn;->Y:F

    div-float/2addr v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    :goto_0
    invoke-virtual {v1, v2}, Lyz;->c(I)V

    goto :goto_1

    :pswitch_4
    iget-object v5, v2, Lyn;->V:Lyn;

    if-eqz v5, :cond_0

    iget-object v5, v5, Lyn;->i:Lzg;

    iget-object v5, v5, Lzg;->f:Lza;

    iget-boolean v6, v5, Lza;->i:Z

    if-eqz v6, :cond_0

    iget v2, v2, Lyn;->B:F

    iget v5, v5, Lza;->f:I

    int-to-float v5, v5

    mul-float v5, v5, v2

    add-float/2addr v5, v4

    float-to-int v2, v5

    invoke-virtual {v1, v2}, Lyz;->c(I)V

    :cond_0
    :goto_1
    iget-object v1, p0, Lzg;->i:Lyz;

    iget-boolean v2, v1, Lyz;->c:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Lzg;->j:Lyz;

    iget-boolean v5, v2, Lyz;->c:Z

    if-nez v5, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-boolean v1, v1, Lyz;->i:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v2, Lyz;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lzg;->f:Lza;

    iget-boolean v1, v1, Lza;->i:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    iget-object v1, p0, Lzg;->f:Lza;

    iget-boolean v1, v1, Lza;->i:Z

    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget v1, p0, Lzg;->k:I

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lzg;->d:Lyn;

    iget v5, v1, Lyn;->t:I

    if-nez v5, :cond_5

    invoke-virtual {v1}, Lyn;->L()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyz;

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyz;

    iget v0, v0, Lyz;->f:I

    iget-object v2, p0, Lzg;->i:Lyz;

    iget v3, v2, Lyz;->e:I

    add-int/2addr v0, v3

    iget v1, v1, Lyz;->f:I

    iget-object v3, p0, Lzg;->j:Lyz;

    iget v3, v3, Lyz;->e:I

    add-int/2addr v1, v3

    invoke-virtual {v2, v0}, Lyz;->c(I)V

    iget-object v2, p0, Lzg;->j:Lyz;

    invoke-virtual {v2, v1}, Lyz;->c(I)V

    iget-object v2, p0, Lzg;->f:Lza;

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Lyz;->c(I)V

    return-void

    :cond_5
    :goto_3
    iget-object v1, p0, Lzg;->f:Lza;

    iget-boolean v1, v1, Lza;->i:Z

    if-nez v1, :cond_7

    iget v1, p0, Lzg;->k:I

    if-ne v1, v3, :cond_7

    iget v1, p0, Lzg;->c:I

    if-ne v1, v0, :cond_7

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyz;

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyz;

    iget v0, v0, Lyz;->f:I

    iget-object v3, p0, Lzg;->i:Lyz;

    iget v3, v3, Lyz;->e:I

    add-int/2addr v0, v3

    iget v1, v1, Lyz;->f:I

    iget-object v3, p0, Lzg;->j:Lyz;

    iget v3, v3, Lyz;->e:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lzg;->f:Lza;

    iget v5, v3, Lza;->m:I

    sub-int/2addr v1, v0

    if-ge v1, v5, :cond_6

    invoke-virtual {v3, v1}, Lyz;->c(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v3, v5}, Lyz;->c(I)V

    :cond_7
    :goto_4
    iget-object v0, p0, Lzg;->f:Lza;

    iget-boolean v0, v0, Lza;->i:Z

    if-nez v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lzg;->i:Lyz;

    iget-object v0, v0, Lyz;->k:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyz;

    iget-object v1, p0, Lzg;->j:Lyz;

    iget-object v1, v1, Lyz;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyz;

    iget v2, v0, Lyz;->f:I

    iget-object v3, p0, Lzg;->i:Lyz;

    iget v5, v3, Lyz;->e:I

    add-int/2addr v5, v2

    iget v6, v1, Lyz;->f:I

    iget-object v7, p0, Lzg;->j:Lyz;

    iget v7, v7, Lyz;->e:I

    add-int/2addr v7, v6

    iget-object v8, p0, Lzg;->d:Lyn;

    iget v8, v8, Lyn;->ag:F

    if-ne v0, v1, :cond_9

    const/high16 v8, 0x3f000000    # 0.5f

    :cond_9
    if-eq v0, v1, :cond_a

    move v6, v7

    :cond_a
    if-ne v0, v1, :cond_b

    goto :goto_5

    :cond_b
    move v2, v5

    :goto_5
    iget-object v0, p0, Lzg;->f:Lza;

    iget v0, v0, Lza;->f:I

    sub-int/2addr v6, v2

    sub-int/2addr v6, v0

    int-to-float v0, v2

    add-float/2addr v0, v4

    int-to-float v1, v6

    mul-float v1, v1, v8

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {v3, v0}, Lyz;->c(I)V

    iget-object v0, p0, Lzg;->j:Lyz;

    iget-object v1, p0, Lzg;->i:Lyz;

    iget v1, v1, Lyz;->f:I

    iget-object v2, p0, Lzg;->f:Lza;

    iget v2, v2, Lza;->f:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lyz;->c(I)V

    :cond_c
    return-void

    :cond_d
    :goto_6
    return-void

    :cond_e
    const/4 v0, 0x0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final g()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzg;->h:Z

    iget-object v1, p0, Lzg;->i:Lyz;

    invoke-virtual {v1}, Lyz;->b()V

    iget-object v1, p0, Lzg;->i:Lyz;

    iput-boolean v0, v1, Lyz;->i:Z

    iget-object v1, p0, Lzg;->j:Lyz;

    invoke-virtual {v1}, Lyz;->b()V

    iget-object v1, p0, Lzg;->j:Lyz;

    iput-boolean v0, v1, Lyz;->i:Z

    iget-object v1, p0, Lzg;->a:Lyz;

    invoke-virtual {v1}, Lyz;->b()V

    iget-object v1, p0, Lzg;->a:Lyz;

    iput-boolean v0, v1, Lyz;->i:Z

    iget-object v1, p0, Lzg;->f:Lza;

    iput-boolean v0, v1, Lza;->i:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lzg;->d:Lyn;

    iget-object v0, v0, Lyn;->aj:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VerticalRun "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
