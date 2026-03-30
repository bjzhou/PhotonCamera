.class public final Lbxn;
.super Lbxm;
.source "PG"


# instance fields
.field private final k:Lbxm;

.field private l:Z


# direct methods
.method private final 21017490f1e4e968f513520349816008m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lbxn;->l:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lbxn;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lbxm;->g()V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(ILbxz;Lubk;Lubk;Lbxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p5}, Lbxm;->f()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lbxm;-><init>(ILbxz;Lubk;Lubk;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p5, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c()Lbxw;
    .locals 7

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1
    invoke-static {v0, p0, v4}, Lbyg;->o(Lbxm;Lbxm;Lbxz;)Ljava/util/Map;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    :goto_4
    monitor-enter v4

    nop

    :try_start_0
    invoke-static {p0}, Lbyg;->w(Lbxt;)V

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    iget v5, v1, Lyj;->d:I

    nop

    nop

    nop

    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    :cond_0
    iget-object v5, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lbxt;->v()I

    move-result v5

    nop

    nop

    iget-object v6, p0, Lbxn;->k:Lbxm;

    nop

    nop

    invoke-virtual {v6}, Lbxt;->x()Lbxz;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v5, v1, v0, v6}, Lbxm;->t(ILyj;Ljava/util/Map;Lbxz;)Lbxw;

    move-result-object v0

    nop

    nop

    nop

    nop

    sget-object v5, Lbxv;->a:Lbxv;

    nop

    nop

    nop

    invoke-static {v0, v5}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lbxt;->x()Lbxz;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    monitor-exit v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    monitor-exit v4

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    monitor-exit v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    :goto_d
    :try_start_1
    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lbxm;->s()Lyj;

    move-result-object v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lyj;->f(Lyj;)V

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lbxm;->u(Lyj;)V

    iput-object v3, p0, Lbxm;->f:Lyj;

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    :cond_2
    :goto_e
    invoke-virtual {p0}, Lbxt;->y()V

    :goto_f
    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    invoke-virtual {v0}, Lbxt;->v()I

    move-result v0

    nop

    nop

    nop

    nop

    if-ge v0, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    invoke-virtual {v0}, Lbxm;->l()V

    :cond_3
    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lbxt;->x()Lbxz;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lbxz;->b(I)Lbxz;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lbxm;->c:Lbxz;

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Lbxz;->a(Lbxz;)Lbxz;

    move-result-object v1

    nop

    nop

    invoke-virtual {v0, v1}, Lbxt;->B(Lbxz;)V

    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lbxm;->o(I)V

    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    iget v1, p0, Lbxt;->j:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v2, p0, Lbxt;->j:I

    nop

    nop

    nop

    nop

    nop

    if-ltz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lbxm;->d:[I

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v3, v2

    nop

    add-int/lit8 v5, v3, 0x1

    nop

    nop

    nop

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    aput v1, v2, v3

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lbxm;->d:[I

    nop

    :cond_4
    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    iget-object v1, p0, Lbxm;->c:Lbxz;

    nop

    nop

    sget-object v2, Lbyg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, v0, Lbxm;->c:Lbxz;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Lbxz;->c(Lbxz;)Lbxz;

    move-result-object v1

    nop

    nop

    nop

    nop

    iput-object v1, v0, Lbxm;->c:Lbxz;

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v2

    nop

    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    iget-object v1, p0, Lbxm;->d:[I

    nop

    nop

    nop

    nop

    array-length v2, v1

    nop

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-object v3, v0, Lbxm;->d:[I

    nop

    nop

    nop

    nop

    nop

    array-length v5, v3

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int v6, v5, v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    iput-object v1, v0, Lbxm;->d:[I

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    sget-object p0, Lbxv;->a:Lbxv;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Lbxu;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    goto :goto_1f

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_18
    iget-object v1, p0, Lbxm;->f:Lyj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v4, Lbyg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_7

    nop

    goto/32 :goto_3

    nop

    :cond_7
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Lbxu;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_4
    monitor-exit v2

    nop

    nop

    throw p0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    move-object v0, v3

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    :goto_20
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_8
    goto/32 :goto_22

    nop

    nop

    :goto_21
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_22
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v2, p0, Lbxt;->h:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v1, v0, Lbxt;->i:Z

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v1, v0, Lbxm;->e:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lbxn;->k:Lbxm;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean v0, p0, Lbxm;->e:Z

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_9
    goto/32 :goto_12

    nop

    :goto_2b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2c
    if-eqz v5, :cond_a

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {p0}, Lbxn;->21017490f1e4e968f513520349816008m()V

    goto/32 :goto_11

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lbxt;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Lbxm;->d()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lbxn;->21017490f1e4e968f513520349816008m()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
