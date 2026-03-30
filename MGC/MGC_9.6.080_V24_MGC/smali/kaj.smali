.class public final Lkaj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Libo;
.implements Lkah;


# static fields
.field private static final e:J


# instance fields
.field public final a:Libn;

.field public final b:J

.field public final c:Loyn;

.field public volatile d:J

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final h:Ljava/util/List;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Lrss;

.field private final k:Loyd;

.field private final l:Ljava/util/List;

.field private final m:Loyd;

.field private final n:Lrss;

.field private o:Lrss;

.field private volatile p:Llsc;

.field private volatile q:Lkag;

.field private volatile r:J

.field private volatile s:J

.field private t:Lpci;

.field private volatile u:I

.field private final v:Lhoh;

.field private final w:Llsn;

.field private final x:Llsn;

.field private final y:Liof;


# direct methods
.method private final declared-synchronized 1478a1c7833aac5e360e0ba4b0c0c568m()Z
    .locals 9

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_0
    add-int/2addr v6, v5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    int-to-float v1, v5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    div-float/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

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

    :goto_9
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_c
    div-float/2addr v7, v3

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-ltz v1, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    cmpl-float v8, v7, v8

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    cmpl-float v7, v7, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    :goto_15
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-gtz v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    :goto_17
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lkaj;->l:Ljava/util/List;

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    move v3, v1

    nop

    nop

    nop

    nop

    move v4, v2

    nop

    nop

    :goto_19
    if-ge v4, v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lkaj;->l:Ljava/util/List;

    nop

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Llsc;

    nop

    nop

    nop

    nop

    nop

    iget v6, v5, Llsc;->i:F

    nop

    nop

    nop

    nop

    nop

    add-float/2addr v1, v6

    nop

    nop

    iget v5, v5, Llsc;->p:F

    nop

    nop

    cmpl-float v6, v5, v3

    nop

    nop

    nop

    nop

    nop

    if-lez v6, :cond_4

    nop

    nop

    nop

    move v3, v5

    nop

    nop

    nop

    :cond_4
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    :cond_5
    iget-object v0, p0, Lkaj;->l:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    div-float/2addr v1, v0

    nop

    iget-object v0, p0, Lkaj;->w:Llsn;

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lkaj;->x:Llsn;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lkaj;->v:Lhoh;

    nop

    nop

    nop

    invoke-static {v1, v0}, Lkaj;->j(FLlsn;)F

    move-result v0

    nop

    nop

    nop

    nop

    invoke-static {v1, v4}, Lkaj;->j(FLlsn;)F

    move-result v4

    nop

    nop

    sget-object v6, Lhna;->R:Lhmn;

    nop

    invoke-virtual {v5, v6}, Lhoh;->p(Lhmn;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    float-to-double v5, v1

    nop

    nop

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    nop

    nop

    nop

    nop

    nop

    cmpg-double v1, v5, v7

    nop

    nop

    nop

    nop

    if-gez v1, :cond_6

    nop

    nop

    const v4, 0x3f4ccccd    # 0.8f

    nop

    const v0, 0x3f19999a    # 0.6f

    nop

    :cond_6
    iget-object v1, p0, Lkaj;->l:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    move v5, v2

    nop

    move v6, v5

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_1

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    check-cast v7, Llsc;

    nop

    nop

    nop

    nop

    nop

    iget v7, v7, Llsc;->p:F

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    :goto_1f
    cmpg-float v1, v1, v4

    nop

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

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    if-eqz v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    int-to-float v3, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_23
    if-gtz v8, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_8
    goto/32 :goto_c

    nop

    nop

    :goto_24
    const v8, 0x3dcccccd    # 0.1f

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_25
    return v2

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_13

    nop

    nop
.end method

.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m()Z
    .locals 9

    goto/32 :goto_18

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    const v1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lkaj;->p:Llsc;

    nop

    nop

    iget-wide v0, v0, Llsc;->c:J

    nop

    iget-object v2, p0, Lkaj;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lrsx;

    nop

    nop

    nop

    iget-object v2, v2, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0, v1}, Llsp;->a(J)Llso;

    move-result-object v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    cmpl-float v0, v0, v2

    nop

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

    :goto_c
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    const v2, 0x3f19999a    # 0.6f

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v1

    nop

    nop

    nop

    :goto_13
    :try_start_2
    iget-object v2, p0, Lkaj;->l:Ljava/util/List;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    move v4, v3

    nop

    nop

    nop

    :cond_3
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Llsc;

    nop

    nop

    iget-object v6, p0, Lkaj;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    iget-wide v7, v5, Llsc;->c:J

    nop

    nop

    nop

    check-cast v6, Lrsx;

    nop

    nop

    nop

    nop

    iget-object v5, v6, Lrsx;->a:Ljava/lang/Object;

    nop

    invoke-interface {v5, v7, v8}, Llsp;->a(J)Llso;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    move v5, v3

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    nop

    :cond_4
    iget v5, v5, Llso;->b:F

    nop

    nop

    :goto_15
    cmpl-float v6, v5, v4

    nop

    nop

    nop

    nop

    if-lez v6, :cond_3

    nop

    nop

    move v4, v5

    nop

    goto :goto_14

    nop

    :cond_5
    iget-object v2, p0, Lkaj;->v:Lhoh;

    nop

    sget-object v3, Lhna;->o:Lhmn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    iget v0, v0, Llso;->b:F

    nop

    sub-float/2addr v4, v0

    nop

    nop

    invoke-static {v4, v2}, Ljzh;->a(FZ)F

    move-result v0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    return p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x15

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method private final 23ce148e54b083367f51e25c7971761em(Llsc;)Lrss;
    .locals 9

    goto/32 :goto_24

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lkaj;->7ecc92917e9c4556cc19f457ddc41af8m(Llsc;)V

    goto/32 :goto_d

    nop

    nop

    :goto_1
    if-nez v5, :cond_0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_50

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_33

    nop

    nop

    :goto_a
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_2d

    nop

    nop

    :goto_d
    iget-wide v1, p0, Lkaj;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v5, v5, Lrsx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_10
    const-wide/32 v6, 0x59682f00

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    if-gtz v1, :cond_4

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

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_15
    check-cast v1, Lkar;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Lkak;->b:Lkak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1b
    invoke-interface {v1, p1, v0}, Lkar;->b(Llsc;Llsc;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lkaj;->p:Llsc;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide v7, 0xb2d05e00L

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    cmp-long v1, v3, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    check-cast v5, Lrsx;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {v1}, Lkar;->a()Lkak;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_21
    if-lt v5, v8, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v5, p0, Lkaj;->n:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v8, 0x3

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_26
    if-gez v5, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4f

    nop

    nop

    :goto_27
    iget-object v5, p0, Lkaj;->c:Loyn;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_28
    check-cast v5, Loyn;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-long/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v5, Loyn;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-wide v5, p0, Lkaj;->s:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object p0, p0, Lkaj;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2e
    add-long/2addr v1, v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2f
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_34

    nop

    :goto_31
    sget-object p0, Lkak;->b:Lkak;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_32
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    nop

    :goto_33
    goto/32 :goto_4c

    nop

    nop

    :goto_34
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_19

    nop

    :goto_37
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_38
    cmp-long v5, v3, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_39
    check-cast v5, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v1}, Lkar;->a()Lkak;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v5, Lrsx;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3d
    iget-wide v3, p1, Llsc;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    :goto_3f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_41
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-wide v6, p0, Lkaj;->s:J

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_43
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v5, v5, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_45
    int-to-long v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v5, v6}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4c
    iput-wide v6, p0, Lkaj;->s:J

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4d
    const-wide/32 v7, 0x3b9aca00

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4e
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v5, p0, Lkaj;->m:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v5, p0, Lkaj;->n:Lrss;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(Ljava/util/List;)I
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_9

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
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v1, v1, Llsc;->c:J

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lkaj;->p:Llsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    cmp-long v1, v1, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-gtz v1, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_c
    add-long/2addr v3, v5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_11
    check-cast p1, Llsc;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    if-gt v0, v1, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    check-cast v1, Llsc;

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

    :goto_18
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-wide v3, p0, Lkaj;->b:J

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    sget-wide v5, Lkaj;->e:J

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method private final declared-synchronized 7ecc92917e9c4556cc19f457ddc41af8m(Llsc;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lkaj;->l:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_2
    throw p1

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    nop

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

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    const v0, 0x4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    sput-wide v0, Lkaj;->e:J

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const-wide v0, 0x416fca0555555555L    # 1.6666666666666666E7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Libn;JLjava/util/List;ILjava/util/concurrent/Executor;Liof;Lhoh;Lrss;Loyd;Loyd;Loyn;Lrss;)V
    .locals 1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lkaj;->a:Libn;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1
    const p1, 0x3f4ccccd    # 0.8f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iput-object v0, p0, Lkaj;->o:Lrss;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lkaj;->w:Llsn;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p13, p0, Lkaj;->n:Lrss;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const p3, 0x3f19999a    # 0.6f

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p6, p0, Lkaj;->i:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    new-instance p2, Llsn;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p5, Lhna;->R:Lhmn;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b
    const p2, 0x3e99999a    # 0.3f

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p7, p0, Lkaj;->y:Liof;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    const/4 p4, 0x0

    nop

    nop

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

    :goto_e
    const/high16 p3, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p5, p0, Lkaj;->w:Llsn;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance p5, Llsn;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p11, p0, Lkaj;->k:Loyd;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lkaj;->l:Ljava/util/List;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-direct {p2, p3, p1, p4}, Llsn;-><init>(FF[B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    iput-object p12, p0, Lkaj;->c:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p8, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object p1, p0, Lkaj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object p10, p0, Lkaj;->m:Loyd;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_1f
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p8, p0, Lkaj;->v:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_21
    invoke-direct {p5, p2, p3, p4}, Llsn;-><init>(FF[B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p2, p3, p1, p4}, Llsn;-><init>(FF[B)V

    :goto_23
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_24
    iput-object p4, p0, Lkaj;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_25
    new-instance p5, Llsn;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_26
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object p1, p0, Lkaj;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_28
    invoke-direct {p5, p2, p3, p4}, Llsn;-><init>(FF[B)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p5, p0, Lkaj;->w:Llsn;

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

    nop

    :goto_2a
    sget-object p5, Lhmz;->g:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-wide p2, p0, Lkaj;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2c
    iput-object p2, p0, Lkaj;->x:Llsn;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p2, p3, p1, p4}, Llsn;-><init>(FF[B)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance p2, Llsn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    new-instance p5, Llsn;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p8, p5}, Lhoh;->p(Lhmn;)Z

    move-result p5

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

    nop

    :goto_32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_23

    nop

    :goto_34
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez p5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    :goto_36
    new-instance p2, Llsn;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-direct {p5, p2, p3, p4}, Llsn;-><init>(FF[B)V

    goto/32 :goto_29

    nop

    nop

    :goto_38
    iput p5, p0, Lkaj;->u:I

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

    nop

    :goto_39
    iput-wide p1, p0, Lkaj;->r:J

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3a
    new-instance p1, Ljava/util/ArrayList;

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

    nop

    :goto_3b
    invoke-virtual {p8, p5}, Lhoh;->p(Lhmn;)Z

    move-result p5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-wide p1, 0x7fffffffffffffffL

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object p9, p0, Lkaj;->j:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Lkak;)V
    .locals 8

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v0, p0, Lkaj;->b:J

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lkak;->c:Lkak;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide v2, p0, Lkaj;->r:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sget-wide v4, Libw;->j:J

    nop

    nop

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

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-wide/16 v6, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x1f

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sub-long/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_e
    iput-wide v0, p0, Lkaj;->r:J

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    mul-long/2addr v4, v6

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1, v0}, Lkak;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method private static final j(FLlsn;)F
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float/2addr v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    div-float/2addr p0, v0

    nop

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

    nop

    :goto_2
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    iget v1, p1, Llsn;->a:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    add-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    mul-float/2addr p0, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/high16 v0, -0x40800000    # -1.0f

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sub-float/2addr v0, p0

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

    :goto_10
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    return p0

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xc

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

    :goto_14
    iget p0, p1, Llsn;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr p0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop
.end method


# virtual methods
.method public final a()J
    .locals 18

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_0
    if-lez v16, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_2a

    nop

    :goto_2
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Lrss;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_5
    iget-wide v12, v0, Lkaj;->b:J

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v8}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    invoke-interface {v13}, Lkar;->a()Lkak;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    :goto_9
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_a
    add-long v12, v12, v16

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v1

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_d
    invoke-virtual {v1, v5, v6, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_f
    iget-wide v5, v5, Llsc;->c:J

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, v0, Lkaj;->a:Libn;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_5f

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v8, v0, Lkaj;->o:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_14
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_15
    cmp-long v16, v14, v12

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    sget-wide v1, Libw;->j:J

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v7, 0x6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_5d

    nop

    :goto_19
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1a
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v0, v0, Lkaj;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-wide v0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    :goto_1f
    iget-object v1, v0, Lkaj;->o:Lrss;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v13, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_21
    iget-object v5, v0, Lkaj;->p:Llsc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_23
    goto :goto_19

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2d

    nop

    nop

    :goto_25
    if-nez v11, :cond_4

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

    :cond_4
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_26
    mul-long/2addr v1, v7

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmp-long v12, v14, v12

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int/lit8 v7, v2, -0x1

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/lit8 v7, v7, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v0, Lkaj;->p:Llsc;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v0, v8}, Lkaj;->7ecc92917e9c4556cc19f457ddc41af8m(Llsc;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v8, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v1, Lkak;->b:Lkak;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_32
    check-cast v8, Llsc;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v0, v1}, Lkaj;->33f5b80483094659737b73d90f80a8a4m(Ljava/util/List;)I

    move-result v2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1}, Libn;->d()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1e

    nop

    :goto_36
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_39
    if-gez v7, :cond_6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v13, v8, v11}, Lkar;->b(Llsc;Llsc;)Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_3c
    const-wide/32 v3, -0x16e360

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3d
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3e
    goto :goto_45

    nop

    nop

    :goto_3f
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v8, Lkak;->b:Lkak;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v14, :cond_8

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-le v7, v2, :cond_9

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_18

    nop

    nop

    :goto_43
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_44
    iput-object v8, v0, Lkaj;->o:Lrss;

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v2}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_47
    check-cast v13, Lkar;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v2, Lkak;->c:Lkak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_49
    add-long/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-wide v14, v8, Llsc;->c:J

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4b
    invoke-static {v1}, Lcom/google/android/apps/camera/moments/api/GroupPhotoUtils;->a(Llsc;)I

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-wide v9, v8, Llsc;->c:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_4d
    iget-wide v5, v0, Lkaj;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4e
    if-ltz v12, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    add-long/2addr v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_51
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_52
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    nop

    nop

    :goto_54
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-wide/32 v16, -0x59682f00

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_56
    iget-wide v0, v0, Lkaj;->b:J

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v2, v0, v1, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v12, v0, Lkaj;->h:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_59
    invoke-virtual {v5, v3, v4, v6}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5a
    sget-object v8, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_5b
    add-long/2addr v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_5c
    iput-object v1, v0, Lkaj;->o:Lrss;

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5e
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_60
    add-int v0, v0, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_61
    const v1, 0x4

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    move-wide v5, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_63
    return-wide v0

    nop

    :goto_64
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v7, v5, v6, v8}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_66
    iput-wide v1, v0, Lkaj;->d:J

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_67
    iget-wide v3, v0, Lkaj;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v8}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v11, v0, Lkaj;->p:Llsc;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lkag;JLkak;)V
    .locals 11

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_1
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    sget-object p0, Ljzx;->d:Ljzx;

    nop

    nop

    nop

    goto/32 :goto_5e

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
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    throw v5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_a
    if-nez v7, :cond_0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_50

    nop

    nop

    :goto_b
    sget-object p0, Ljzx;->f:Ljzx;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    move v0, v2

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_d
    sub-long v7, v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, p0}, Lkag;->a(Ljzx;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lkaj;->19e596a3e324281407eb5c11093c0152m()Z

    move-result v6

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_1
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lkaj;->v:Lhoh;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    cmp-long p0, v0, p2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_14
    const-wide/32 v9, 0xf4240

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v0, p0, Lkaj;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_18
    add-long/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1, p0}, Lkag;->a(Ljzx;)V

    goto/32 :goto_67

    nop

    nop

    :goto_1a
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_84

    nop

    nop

    :goto_1b
    const-wide/16 v2, 0xa

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v7, p0, Lkaj;->m:Loyd;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_1d
    invoke-direct {p0}, Lkaj;->1478a1c7833aac5e360e0ba4b0c0c568m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v6, p0, Lkaj;->y:Liof;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1f
    const v1, 0xb

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_21
    throw v5

    nop

    nop

    :goto_22
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_25
    invoke-virtual {v6}, Liof;->l()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1, v3, v4, p4}, Lkag;->b(JLkak;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    throw v5

    nop

    :goto_28
    goto/32 :goto_1

    nop

    nop

    :goto_29
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lkaj;->t:Lpci;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_2d
    if-eq v6, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v7, :cond_5

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_62

    nop

    nop

    :goto_2f
    iget-wide v5, p0, Lkaj;->b:J

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_30
    cmp-long v7, v7, v9

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_31
    move v7, v1

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_33
    sub-long/2addr v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_34
    if-ltz p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_36
    iget v0, p0, Lkaj;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_39
    iget v8, p0, Lkaj;->u:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3b
    mul-long/2addr p2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3c
    throw v5

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_2

    nop

    nop

    :goto_3f
    goto/32 :goto_27

    nop

    nop

    :goto_40
    invoke-interface {v7}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v6, :cond_7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_7
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-long v3, p2, v9

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v8, :cond_8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_45
    sget-wide p2, Libw;->i:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_46
    iget v6, p0, Lkaj;->u:I

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v7, :cond_9

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_31

    nop

    nop

    :goto_4c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object p0, Ljzx;->e:Ljzx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_53
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-eq v0, v2, :cond_b

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-gez v7, :cond_c

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_59
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move v6, v1

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5c
    sget-object p0, Ljzx;->e:Ljzx;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {p1, p0}, Lkag;->a(Ljzx;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    nop

    :goto_60
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_61
    if-nez v8, :cond_d

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    sget-object v7, Lhms;->a:Lhmo;

    nop

    :goto_63
    goto/32 :goto_d

    nop

    nop

    :goto_64
    move v1, v6

    nop

    :goto_65
    goto/32 :goto_44

    nop

    nop

    :goto_66
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_67
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_69
    invoke-interface {p1, v3, v4, p4}, Lkag;->b(JLkak;)V

    goto/32 :goto_4

    nop

    nop

    :goto_6a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6b
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_6c
    if-lez v0, :cond_f

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_f
    goto/32 :goto_54

    nop

    :goto_6d
    iget-wide v3, p0, Lkaj;->r:J

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6e
    goto :goto_65

    nop

    nop

    :goto_6f
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-wide v7, p0, Lkaj;->s:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_71
    if-nez p1, :cond_10

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_4c

    nop

    nop

    :goto_72
    if-eq v8, v2, :cond_11

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :cond_11
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_75
    sget-object p0, Ljzx;->f:Ljzx;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_76
    sget-object v0, Lhmz;->a:Lhmo;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast v7, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_79
    iget-object v0, p0, Lkaj;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7a
    if-nez v0, :cond_13

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_13
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v6, :cond_14

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_14
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    move v7, v2

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v8, p0, Lkaj;->u:I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object p0, Ljzx;->d:Ljzx;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-interface {v0}, Lpci;->close()V

    :goto_80
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p0, v0, v1, p4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_82
    goto/16 :goto_60

    nop

    :goto_83
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_84
    if-eqz v6, :cond_15

    nop

    nop

    goto/32 :goto_6f

    nop

    :cond_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_85
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop
.end method

.method public final d(Lkag;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lkai;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    iget-object v0, p0, Lkaj;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    new-instance v0, Ljyl;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lkaj;->a:Libn;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lkaj;->t:Lpci;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lkaj;->q:Lkag;

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

    :goto_8
    iget-object p1, p0, Lkaj;->i:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    const v0, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, p1, v1}, Ljyl;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lkaj;->k:Loyd;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, p0, v0}, Libn;->c(Libo;Ljava/util/concurrent/Executor;)Lpci;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1, v0, p1}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, p0, p1}, Lkai;-><init>(Lkaj;Lkag;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final declared-synchronized dz(Llsc;)V
    .locals 8

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x8

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    iget-wide v0, p1, Llsc;->c:J

    nop

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lkaj;->r:J

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    invoke-direct {p0, p1}, Lkaj;->23ce148e54b083367f51e25c7971761em(Llsc;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v4

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lkak;

    nop

    nop

    nop

    invoke-direct {p0, p1}, Lkaj;->d5484163cd8d335e6b17663474ff5f2bm(Lkak;)V

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Lkak;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1, v2, v3, p1}, Lkaj;->b(Lkag;JLkak;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_14

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object v0, p0, Lkaj;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    iget-object v1, p0, Lkaj;->q:Lkag;

    nop

    nop

    nop

    iget-wide v2, p0, Lkaj;->d:J

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    const/4 v5, 0x1

    nop

    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Lkaj;->a:Libn;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Libn;->d()Ljava/util/List;

    move-result-object p1

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, p0, Lkaj;->b:J

    nop

    nop

    nop

    nop

    nop

    iput-wide v6, p0, Lkaj;->r:J

    nop

    invoke-direct {p0, p1}, Lkaj;->33f5b80483094659737b73d90f80a8a4m(Ljava/util/List;)I

    move-result v0

    nop

    nop

    nop

    nop

    add-int/2addr v0, v5

    nop

    :goto_d
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    if-ge v0, v4, :cond_0

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Llsc;

    nop

    nop

    nop

    invoke-direct {p0, v4}, Lkaj;->23ce148e54b083367f51e25c7971761em(Llsc;)Lrss;

    move-result-object v5

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_4

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lkak;

    nop

    invoke-direct {p0, v4}, Lkaj;->d5484163cd8d335e6b17663474ff5f2bm(Lkak;)V

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lkak;

    nop

    nop

    invoke-virtual {p0, v1, v2, v3, v4}, Lkaj;->b(Lkag;JLkak;)V

    goto :goto_e

    nop

    nop

    :cond_4
    iget-wide v4, v4, Llsc;->c:J

    nop

    iput-wide v4, p0, Lkaj;->r:J

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x8

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

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v0, v0, 0x1

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

    :goto_14
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method
