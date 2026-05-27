.class public final Lyj;
.super Lyr;


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lyr;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lyj;->a:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lyj;->b:Z

    iput v0, p0, Lyj;->c:I

    iput-boolean v0, p0, Lyj;->d:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lyj;->a:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lyc;Z)V
    .locals 13

    iget-object p2, p0, Lyj;->S:[Lym;

    iget-object v0, p0, Lyj;->K:Lym;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lyj;->L:Lym;

    const/4 v2, 0x2

    aput-object v0, p2, v2

    iget-object v0, p0, Lyj;->M:Lym;

    const/4 v3, 0x1

    aput-object v0, p2, v3

    iget-object v0, p0, Lyj;->N:Lym;

    const/4 v4, 0x3

    aput-object v0, p2, v4

    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lyj;->S:[Lym;

    array-length v5, v0

    const/4 v5, 0x6

    if-ge p2, v5, :cond_0

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v5

    iput-object v5, v0, Lym;->i:Lyh;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    iget p2, p0, Lyj;->a:I

    if-ltz p2, :cond_1f

    const/4 v5, 0x4

    if-ge p2, v5, :cond_1f

    aget-object p2, v0, p2

    iget-boolean v0, p0, Lyj;->d:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lyj;->c()Z

    :cond_1
    iget-boolean v0, p0, Lyj;->d:Z

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lyj;->d:Z

    iget p2, p0, Lyj;->a:I

    if-eqz p2, :cond_5

    if-ne p2, v3, :cond_2

    goto :goto_2

    :cond_2
    if-eq p2, v2, :cond_4

    if-ne p2, v4, :cond_3

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_1
    iget-object p2, p0, Lyj;->L:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget v0, p0, Lyj;->ab:I

    invoke-virtual {p1, p2, v0}, Lyc;->f(Lyh;I)V

    iget-object p2, p0, Lyj;->N:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget v0, p0, Lyj;->ab:I

    invoke-virtual {p1, p2, v0}, Lyc;->f(Lyh;I)V

    return-void

    :cond_5
    :goto_2
    iget-object p2, p0, Lyj;->K:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget v0, p0, Lyj;->aa:I

    invoke-virtual {p1, p2, v0}, Lyc;->f(Lyh;I)V

    iget-object p2, p0, Lyj;->M:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget v0, p0, Lyj;->aa:I

    invoke-virtual {p1, p2, v0}, Lyc;->f(Lyh;I)V

    return-void

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget v6, p0, Lyj;->at:I

    if-ge v0, v6, :cond_c

    iget-object v6, p0, Lyj;->as:[Lyn;

    aget-object v6, v6, v0

    iget-boolean v7, p0, Lyj;->b:Z

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lyn;->d()Z

    move-result v7

    if-nez v7, :cond_7

    goto :goto_4

    :cond_7
    iget v7, p0, Lyj;->a:I

    if-eqz v7, :cond_8

    if-ne v7, v3, :cond_9

    :cond_8
    invoke-virtual {v6}, Lyn;->O()I

    move-result v7

    if-ne v7, v4, :cond_9

    iget-object v7, v6, Lyn;->K:Lym;

    iget-object v7, v7, Lym;->f:Lym;

    if-eqz v7, :cond_9

    iget-object v7, v6, Lyn;->M:Lym;

    iget-object v7, v7, Lym;->f:Lym;

    if-eqz v7, :cond_9

    const/4 v0, 0x1

    goto :goto_5

    :cond_9
    iget v7, p0, Lyj;->a:I

    if-eq v7, v2, :cond_a

    if-ne v7, v4, :cond_b

    :cond_a
    invoke-virtual {v6}, Lyn;->P()I

    move-result v7

    if-ne v7, v4, :cond_b

    iget-object v7, v6, Lyn;->L:Lym;

    iget-object v7, v7, Lym;->f:Lym;

    if-eqz v7, :cond_b

    iget-object v6, v6, Lyn;->N:Lym;

    iget-object v6, v6, Lym;->f:Lym;

    if-eqz v6, :cond_b

    const/4 v0, 0x1

    goto :goto_5

    :cond_b
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_c
    const/4 v0, 0x0

    :goto_5
    iget-object v6, p0, Lyj;->K:Lym;

    invoke-virtual {v6}, Lym;->f()Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lyj;->M:Lym;

    invoke-virtual {v6}, Lym;->f()Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_6

    :cond_d
    const/4 v6, 0x0

    goto :goto_6

    :cond_e
    const/4 v6, 0x1

    :goto_6
    iget-object v7, p0, Lyj;->L:Lym;

    invoke-virtual {v7}, Lym;->f()Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lyj;->N:Lym;

    invoke-virtual {v7}, Lym;->f()Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v7, 0x1

    goto :goto_7

    :cond_f
    const/4 v7, 0x0

    goto :goto_7

    :cond_10
    const/4 v7, 0x1

    :goto_7
    if-nez v0, :cond_15

    iget v0, p0, Lyj;->a:I

    const/4 v8, 0x5

    if-nez v0, :cond_12

    if-nez v6, :cond_11

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_8

    :cond_11
    goto :goto_9

    :cond_12
    :goto_8
    if-ne v0, v2, :cond_13

    if-nez v7, :cond_11

    const/4 v7, 0x0

    :cond_13
    if-ne v0, v3, :cond_14

    if-nez v6, :cond_11

    :cond_14
    if-ne v0, v4, :cond_15

    if-eqz v7, :cond_15

    goto :goto_9

    :cond_15
    const/4 v8, 0x4

    :goto_9
    const/4 v0, 0x0

    :goto_a
    iget v6, p0, Lyj;->at:I

    if-ge v0, v6, :cond_1a

    iget-object v6, p0, Lyj;->as:[Lyn;

    aget-object v6, v6, v0

    iget-boolean v7, p0, Lyj;->b:Z

    if-nez v7, :cond_16

    invoke-virtual {v6}, Lyn;->d()Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_e

    :cond_16
    iget-object v7, v6, Lyn;->S:[Lym;

    iget v9, p0, Lyj;->a:I

    aget-object v7, v7, v9

    invoke-virtual {p1, v7}, Lyc;->b(Ljava/lang/Object;)Lyh;

    move-result-object v7

    iget-object v6, v6, Lyn;->S:[Lym;

    iget v9, p0, Lyj;->a:I

    aget-object v6, v6, v9

    iput-object v7, v6, Lym;->i:Lyh;

    iget-object v10, v6, Lym;->f:Lym;

    if-eqz v10, :cond_17

    iget-object v10, v10, Lym;->d:Lyn;

    if-ne v10, p0, :cond_17

    iget v6, v6, Lym;->g:I

    goto :goto_b

    :cond_17
    const/4 v6, 0x0

    :goto_b
    if-eqz v9, :cond_19

    if-ne v9, v2, :cond_18

    goto :goto_c

    :cond_18
    iget-object v9, p2, Lym;->i:Lyh;

    iget v10, p0, Lyj;->c:I

    add-int/2addr v10, v6

    invoke-virtual {p1}, Lyc;->a()Lyb;

    move-result-object v11

    invoke-virtual {p1}, Lyc;->c()Lyh;

    move-result-object v12

    iput v1, v12, Lyh;->e:I

    invoke-virtual {v11, v9, v7, v12, v10}, Lyb;->h(Lyh;Lyh;Lyh;I)V

    invoke-virtual {p1, v11}, Lyc;->e(Lyb;)V

    goto :goto_d

    :cond_19
    :goto_c
    iget-object v9, p2, Lym;->i:Lyh;

    iget v10, p0, Lyj;->c:I

    sub-int/2addr v10, v6

    invoke-virtual {p1}, Lyc;->a()Lyb;

    move-result-object v11

    invoke-virtual {p1}, Lyc;->c()Lyh;

    move-result-object v12

    iput v1, v12, Lyh;->e:I

    invoke-virtual {v11, v9, v7, v12, v10}, Lyb;->i(Lyh;Lyh;Lyh;I)V

    invoke-virtual {p1, v11}, Lyc;->e(Lyb;)V

    :goto_d
    iget-object v9, p2, Lym;->i:Lyh;

    iget v10, p0, Lyj;->c:I

    add-int/2addr v10, v6

    invoke-virtual {p1, v9, v7, v10, v8}, Lyc;->m(Lyh;Lyh;II)V

    :goto_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    iget p2, p0, Lyj;->a:I

    const/16 v0, 0x8

    if-nez p2, :cond_1b

    iget-object p2, p0, Lyj;->M:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v2, p0, Lyj;->K:Lym;

    iget-object v2, v2, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v2, v1, v0}, Lyc;->m(Lyh;Lyh;II)V

    iget-object p2, p0, Lyj;->K:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v0, p0, Lyj;->V:Lyn;

    iget-object v0, v0, Lyn;->M:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v0, v1, v5}, Lyc;->m(Lyh;Lyh;II)V

    iget-object p2, p0, Lyj;->K:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v0, p0, Lyj;->V:Lyn;

    iget-object v0, v0, Lyn;->K:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v0, v1, v1}, Lyc;->m(Lyh;Lyh;II)V

    return-void

    :cond_1b
    if-ne p2, v3, :cond_1c

    iget-object p2, p0, Lyj;->K:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v2, p0, Lyj;->M:Lym;

    iget-object v2, v2, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v2, v1, v0}, Lyc;->m(Lyh;Lyh;II)V

    iget-object p2, p0, Lyj;->K:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v0, p0, Lyj;->V:Lyn;

    iget-object v0, v0, Lyn;->K:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v0, v1, v5}, Lyc;->m(Lyh;Lyh;II)V

    iget-object p2, p0, Lyj;->K:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v0, p0, Lyj;->V:Lyn;

    iget-object v0, v0, Lyn;->M:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v0, v1, v1}, Lyc;->m(Lyh;Lyh;II)V

    return-void

    :cond_1c
    if-ne p2, v2, :cond_1d

    iget-object p2, p0, Lyj;->N:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v2, p0, Lyj;->L:Lym;

    iget-object v2, v2, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v2, v1, v0}, Lyc;->m(Lyh;Lyh;II)V

    iget-object p2, p0, Lyj;->L:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v0, p0, Lyj;->V:Lyn;

    iget-object v0, v0, Lyn;->N:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v0, v1, v5}, Lyc;->m(Lyh;Lyh;II)V

    iget-object p2, p0, Lyj;->L:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v0, p0, Lyj;->V:Lyn;

    iget-object v0, v0, Lyn;->L:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v0, v1, v1}, Lyc;->m(Lyh;Lyh;II)V

    return-void

    :cond_1d
    if-ne p2, v4, :cond_1e

    iget-object p2, p0, Lyj;->L:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v2, p0, Lyj;->N:Lym;

    iget-object v2, v2, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v2, v1, v0}, Lyc;->m(Lyh;Lyh;II)V

    iget-object p2, p0, Lyj;->L:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v0, p0, Lyj;->V:Lyn;

    iget-object v0, v0, Lyn;->L:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v0, v1, v5}, Lyc;->m(Lyh;Lyh;II)V

    iget-object p2, p0, Lyj;->L:Lym;

    iget-object p2, p2, Lym;->i:Lyh;

    iget-object v0, p0, Lyj;->V:Lyn;

    iget-object v0, v0, Lyn;->N:Lym;

    iget-object v0, v0, Lym;->i:Lyh;

    invoke-virtual {p1, p2, v0, v1, v1}, Lyc;->m(Lyh;Lyh;II)V

    :cond_1e
    return-void

    :cond_1f
    return-void
.end method

.method public final c()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget v4, p0, Lyj;->at:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lyj;->as:[Lyn;

    aget-object v4, v4, v2

    iget-boolean v7, p0, Lyj;->b:Z

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lyn;->d()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    iget v7, p0, Lyj;->a:I

    if-eqz v7, :cond_1

    if-ne v7, v1, :cond_2

    :cond_1
    invoke-virtual {v4}, Lyn;->e()Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    iget v7, p0, Lyj;->a:I

    if-eq v7, v6, :cond_3

    if-ne v7, v5, :cond_4

    :cond_3
    invoke-virtual {v4}, Lyn;->f()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_12

    if-lez v4, :cond_12

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lyj;->at:I

    if-ge v0, v4, :cond_f

    iget-object v4, p0, Lyj;->as:[Lyn;

    aget-object v4, v4, v0

    iget-boolean v7, p0, Lyj;->b:Z

    if-nez v7, :cond_6

    invoke-virtual {v4}, Lyn;->d()Z

    move-result v7

    if-nez v7, :cond_6

    goto/16 :goto_5

    :cond_6
    if-nez v3, :cond_a

    iget v3, p0, Lyj;->a:I

    if-nez v3, :cond_7

    sget-object v2, Lyl;->b:Lyl;

    invoke-virtual {v4, v2}, Lyn;->m(Lyl;)Lym;

    move-result-object v2

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    goto :goto_3

    :cond_7
    if-ne v3, v1, :cond_8

    sget-object v2, Lyl;->d:Lyl;

    invoke-virtual {v4, v2}, Lyn;->m(Lyl;)Lym;

    move-result-object v2

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    goto :goto_3

    :cond_8
    if-ne v3, v6, :cond_9

    sget-object v2, Lyl;->c:Lyl;

    invoke-virtual {v4, v2}, Lyn;->m(Lyl;)Lym;

    move-result-object v2

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    goto :goto_3

    :cond_9
    if-ne v3, v5, :cond_a

    sget-object v2, Lyl;->e:Lyl;

    invoke-virtual {v4, v2}, Lyn;->m(Lyl;)Lym;

    move-result-object v2

    invoke-virtual {v2}, Lym;->a()I

    move-result v2

    :cond_a
    :goto_3
    iget v3, p0, Lyj;->a:I

    if-nez v3, :cond_b

    sget-object v3, Lyl;->b:Lyl;

    invoke-virtual {v4, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    invoke-virtual {v3}, Lym;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_5

    :cond_b
    if-ne v3, v1, :cond_c

    sget-object v3, Lyl;->d:Lyl;

    invoke-virtual {v4, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    invoke-virtual {v3}, Lym;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    if-ne v3, v6, :cond_d

    sget-object v3, Lyl;->c:Lyl;

    invoke-virtual {v4, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    invoke-virtual {v3}, Lym;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    goto :goto_5

    :cond_d
    if-ne v3, v5, :cond_e

    sget-object v3, Lyl;->e:Lyl;

    invoke-virtual {v4, v3}, Lyn;->m(Lyl;)Lym;

    move-result-object v3

    invoke-virtual {v3}, Lym;->a()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_4

    :cond_e
    :goto_4
    const/4 v3, 0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_f
    iget v0, p0, Lyj;->c:I

    add-int/2addr v2, v0

    iget v0, p0, Lyj;->a:I

    if-eqz v0, :cond_11

    if-ne v0, v1, :cond_10

    goto :goto_6

    :cond_10
    invoke-virtual {p0, v2, v2}, Lyn;->z(II)V

    goto :goto_7

    :cond_11
    :goto_6
    invoke-virtual {p0, v2, v2}, Lyn;->y(II)V

    :goto_7
    iput-boolean v1, p0, Lyj;->d:Z

    return v1

    :cond_12
    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Lyj;->d:Z

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lyj;->d:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Barrier] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lyn;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lyj;->at:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lyj;->as:[Lyn;

    aget-object v2, v2, v1

    if-lez v1, :cond_0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object v2, v2, Lyn;->aj:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
