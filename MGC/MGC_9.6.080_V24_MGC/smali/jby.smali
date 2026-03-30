.class public final Ljby;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Landroid/util/Range;

.field private final b:Landroid/util/Range;

.field private final c:Landroid/util/Range;

.field private final d:Ljce;

.field private e:Ljava/util/List;

.field private f:Lj$/util/Optional;

.field private g:Lj$/util/Optional;

.field private h:I

.field private i:Z


# direct methods
.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m(Ljax;)Z
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v1

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return v1

    nop

    :cond_0
    :goto_9
    :try_start_1
    iput v1, p0, Ljby;->h:I

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Ljby;->i:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    :goto_a
    return v1

    nop

    nop

    :cond_1
    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    return v2

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    iput-boolean v2, p0, Ljby;->i:Z

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    :goto_10
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object v0, p0, Ljby;->f:Lj$/util/Optional;

    nop

    nop

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    :cond_4
    sget-object v0, Ljax;->b:Ljax;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljax;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    iget-object p1, p0, Ljby;->f:Lj$/util/Optional;

    nop

    nop

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    sget-object v0, Ljax;->a:Ljax;

    nop

    nop

    check-cast p1, Ljax;

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ljax;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    :cond_5
    iget-boolean p1, p0, Ljby;->i:Z

    nop

    nop

    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    iget p1, p0, Ljby;->h:I

    nop

    nop

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    if-ge p1, v0, :cond_2

    nop

    add-int/2addr p1, v2

    nop

    nop

    iput p1, p0, Ljby;->h:I

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method private final declared-synchronized 23ce148e54b083367f51e25c7971761em()F
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljby;->e:Ljava/util/List;

    nop

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    iget-object v0, p0, Ljby;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

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
.end method

.method private final declared-synchronized 7ecc92917e9c4556cc19f457ddc41af8m(F)Ljax;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    nop

    :cond_0
    :goto_4
    :try_start_1
    sget-object p1, Ljax;->a:Ljax;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_5
    throw p1

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Ljby;->a:Landroid/util/Range;

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Ljby;->b:Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Ljax;->b:Ljax;

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_3
    iget-object v0, p0, Ljby;->c:Landroid/util/Range;

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Ljax;->c:Ljax;

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Ljce;)V
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Ljby;->h:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x3e4ccccd    # 0.2f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Ljby;->a:Landroid/util/Range;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p1, Ljce;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    new-instance v0, Landroid/util/Range;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_d
    iput-object v0, p1, Ljce;->d:Landroid/util/Range;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Ljby;->b:Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Ljby;->i:Z

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_31

    nop

    :goto_11
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_12
    const v2, 0x3eff7cee    # 0.499f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ljby;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    new-instance v0, Landroid/util/Range;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p1, Ljce;->b:Landroid/util/Range;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p1, Ljce;->f:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_30

    nop

    :goto_20
    iput-object v0, p0, Ljby;->c:Landroid/util/Range;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_21
    iput-object v0, p0, Ljby;->g:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_23
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    iput-object v0, p0, Ljby;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object p1, p0, Ljby;->d:Ljce;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p1, Ljce;->e:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_2a
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v2, 0x3e4bc6a8    # 0.199f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Landroid/util/Range;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lhnv;->a:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v0, p1, Ljce;->c:Landroid/util/Range;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_8

    nop

    nop

    :goto_31
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized d5484163cd8d335e6b17663474ff5f2bm(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljby;->f:Lj$/util/Optional;

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    invoke-direct {p0, p1}, Ljby;->7ecc92917e9c4556cc19f457ddc41af8m(F)Ljax;

    move-result-object p1

    nop

    nop

    nop

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Ljby;->g:Lj$/util/Optional;

    nop

    nop

    nop

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Ljax;

    nop

    invoke-direct {p0, p1}, Ljby;->19e596a3e324281407eb5c11093c0152m(Ljax;)Z

    move-result p1

    nop

    if-eqz p1, :cond_0

    nop

    sget-object p1, Ljax;->a:Ljax;

    nop

    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    iput-object p1, p0, Ljby;->g:Lj$/util/Optional;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_6
    monitor-exit p0

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
.end method


# virtual methods
.method public final declared-synchronized a()Ljax;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ljby;->g:Lj$/util/Optional;

    nop

    nop

    nop

    sget-object v1, Ljax;->a:Ljax;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljax;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Ljava/util/List;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iput-object p1, p0, Ljby;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Ljby;->23ce148e54b083367f51e25c7971761em()F

    move-result p1

    nop

    nop

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    iget-object v1, p0, Ljby;->d:Ljce;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Ljce;->a:Loxv;

    nop

    nop

    invoke-interface {v1, v0}, Loyn;->a(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Ljby;->d5484163cd8d335e6b17663474ff5f2bm(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x14

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Ljax;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, p0, Ljby;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    invoke-direct {p0}, Ljby;->23ce148e54b083367f51e25c7971761em()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop
.end method
