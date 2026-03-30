.class public Llqr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llqq;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Lsuu;

.field public final c:Ljava/lang/Object;

.field public d:I

.field private final e:Ljava/util/Set;

.field private final f:Llra;

.field private final g:Llqo;


# direct methods
.method public constructor <init>(Llqo;Llra;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Llqr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    iput-object v0, p0, Llqr;->b:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object p2, p0, Llqr;->f:Llra;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    iput-object v0, p0, Llqr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    const v0, 0xf

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Llqr;->g:Llqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/lang/Object;

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

    :goto_11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_18
    const v1, 0x1e

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

    :goto_19
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Llqr;->e:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Llqr;->d:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 8

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    invoke-virtual {p0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Llqr;->g:Llqo;

    nop

    nop

    nop

    goto/32 :goto_13

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

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v4, :cond_1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_9
    monitor-enter v6

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v7, v4, Llqo;->g:Ljava/util/Set;

    nop

    invoke-interface {v7, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_3

    nop

    nop

    iget-object v7, v4, Llqo;->g:Ljava/util/Set;

    nop

    nop

    invoke-interface {v7, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v7, v4, Llqo;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v7, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget v5, v4, Llqo;->h:I

    nop

    add-int/lit8 v5, v5, -0x1

    nop

    nop

    nop

    nop

    nop

    iput v5, v4, Llqo;->h:I

    nop

    nop

    monitor-exit v6

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit v6

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit v6

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v2, v0, Llqo;->g:Ljava/util/Set;

    nop

    nop

    iget-object v3, v0, Llqo;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    nop

    invoke-interface {v2, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Llqo;->g:Ljava/util/Set;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_14

    nop

    nop

    :goto_c
    iget v0, p0, Llqr;->d:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Llqr;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_f
    goto/16 :goto_8

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    check-cast v3, Llqw;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    iget-object v1, v0, Llqo;->e:Ljava/util/Map;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Ljava/util/HashSet;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_15
    throw p0

    nop

    :goto_16
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_2
    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v4, p0, Llqr;->g:Llqo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Llqr;->b:Lsuu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    :try_start_3
    monitor-exit v1

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_21
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_23
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Llqr;->e:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_20

    nop

    :goto_26
    goto/32 :goto_c

    nop

    nop

    :goto_27
    const v1, 0x17

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_26

    nop

    nop

    :goto_29
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_36

    nop

    nop

    :goto_2b
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v6, v4, Llqo;->e:Ljava/util/Map;

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

    :goto_31
    iget-object v4, v3, Llqw;->a:Lprw;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_32
    if-nez v3, :cond_6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Llqr;->b:Lsuu;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v5, v3, Llqw;->a:Lprw;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_37
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Llqw;Llxa;)V
    .locals 16

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const v1, 0x16

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Interrupt should NOT happen, because call is non-blocking"

    nop

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    throw v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xf

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
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_2
    iget-object v2, v1, Llqr;->c:Ljava/lang/Object;

    nop

    nop

    monitor-enter v2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v0, v1, Llqr;->d:I

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    const/4 v5, 0x1

    nop

    if-ne v0, v3, :cond_1

    nop

    nop

    nop

    nop

    move v0, v5

    nop

    nop

    goto :goto_8

    nop

    nop

    :cond_1
    move v0, v4

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Lrrf;->x(Z)V

    iget-object v0, v1, Llqr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    nop

    nop

    nop

    nop

    if-lez v0, :cond_2

    nop

    move v4, v5

    nop

    nop

    :cond_2
    invoke-static {v4}, Lrrf;->x(Z)V

    iget-object v0, v1, Llqr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, v1, Llqr;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Llmx;

    nop

    nop

    nop

    nop

    const/4 v4, 0x7

    nop

    invoke-direct {v0, v1, v4}, Llmx;-><init>(Llqr;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v4, v1, Llqr;->g:Llqo;

    nop

    iget-object v6, v1, Llqr;->f:Llra;

    nop

    nop

    nop

    nop

    new-instance v15, Llrh;

    nop

    nop

    nop

    nop

    iget-object v8, v6, Llra;->a:Ljava/util/concurrent/Executor;

    nop

    iget-object v9, v6, Llra;->e:Llqo;

    nop

    nop

    nop

    iget-object v10, v6, Llra;->b:Llqx;

    nop

    nop

    iget-object v12, v6, Llra;->f:Llqy;

    nop

    nop

    nop

    nop

    iget-object v13, v6, Llra;->c:Ljrj;

    nop

    nop

    nop

    iget-object v14, v6, Llra;->d:Lpdf;

    nop

    nop

    nop

    move-object v6, v15

    nop

    nop

    nop

    nop

    move-object/from16 v7, p1

    nop

    nop

    nop

    nop

    move-object/from16 v11, p2

    nop

    nop

    nop

    invoke-direct/range {v6 .. v14}, Llrh;-><init>(Llqw;Ljava/util/concurrent/Executor;Llqo;Llqx;Llxa;Llqy;Ljrj;Lpdf;)V

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v11

    nop

    nop

    nop

    new-instance v8, Ljava/util/HashSet;

    nop

    nop

    invoke-direct {v8, v5}, Ljava/util/HashSet;-><init>(I)V

    invoke-interface {v8, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v7, v15, Llrg;->f:Llxa;

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    move-object v6, v4

    nop

    invoke-virtual/range {v6 .. v11}, Llqo;->c(Llxa;Ljava/util/Set;ZZLrss;)Z
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    move-object/from16 v1, p0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop
.end method

.method public declared-synchronized close()V
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :cond_0
    :try_start_0
    iput v4, p0, Llqr;->d:I

    nop

    iget-object v1, p0, Llqr;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Llqr;->a()V

    :cond_1
    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    throw v0

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    :try_start_3
    iget-object v0, p0, Llqr;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget v1, p0, Llqr;->d:I

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v2, :cond_4

    nop

    if-ne v1, v4, :cond_3

    nop

    nop

    goto :goto_d

    nop

    nop

    :cond_3
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :cond_4
    :goto_d
    invoke-static {v3}, Lrrf;->x(Z)V

    iget v1, p0, Llqr;->d:I

    nop

    nop

    nop

    nop

    if-ne v1, v4, :cond_0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_e
    const v0, 0x4

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

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
