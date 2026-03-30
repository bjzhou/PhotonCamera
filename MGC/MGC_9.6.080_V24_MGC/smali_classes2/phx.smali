.class public final Lphx;
.super Lpuq;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field private final a:Lpiv;

.field private final b:Ljava/util/Set;

.field private final c:Lpdf;

.field private d:Ljava/util/Set;

.field private e:Lryy;

.field private f:Z

.field private g:Z

.field private final h:Z

.field private final i:Lhon;

.field private final k:Lrbh;


# direct methods
.method public constructor <init>(Lhon;Lrbh;Lpiv;Lryy;Lpdf;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lphx;->b:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p4, p1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lphx;->k:Lrbh;

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

    nop

    :goto_4
    iput-object p1, p0, Lphx;->i:Lhon;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lphx;->h:Z

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

    :goto_6
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lphx;->a:Lpiv;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Lphx;->g:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    invoke-static {p7}, Lryy;->E(Ljava/util/Collection;)Lryy;

    move-result-object p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    iput-boolean v0, p0, Lphx;->f:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lphx;->e:Lryy;

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

    nop

    :goto_e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p5, p0, Lphx;->c:Lpdf;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p1, p0, Lphx;->d:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized cH(Lphh;J)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lphx;->e:Lryy;

    nop

    nop

    nop

    invoke-virtual {v0}, Lryy;->em()Lscp;

    move-result-object v0

    nop

    nop

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lpma;

    nop

    nop

    nop

    nop

    if-ne p1, v1, :cond_0

    nop

    nop

    iget-object v1, v1, Lpma;->a:Lpmk;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2, p3}, Lpmk;->b(Lphh;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    return-void

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x12

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized cI(Lpna;)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    goto/16 :goto_11

    nop

    :cond_0
    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    return-void

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const v0, 0x16

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lphx;->d:Ljava/util/Set;

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lpna;->c()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :cond_2
    iget-boolean v2, p0, Lphx;->h:Z

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    iget-boolean v2, p0, Lphx;->g:Z

    nop

    nop

    nop

    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_3
    if-nez v1, :cond_5

    nop

    nop

    :goto_f
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpir;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lpir;->h()V

    invoke-virtual {v1}, Lpir;->g()V

    goto :goto_10

    nop

    nop

    nop

    :cond_4
    const/4 v0, 0x0

    nop

    iput-object v0, p0, Lphx;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    :cond_5
    if-nez p1, :cond_6

    nop

    nop

    goto/16 :goto_5

    nop

    :cond_6
    invoke-virtual {p1}, Lpna;->b()J

    move-result-wide v0

    nop

    nop

    iget-object p1, p0, Lphx;->e:Lryy;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lryy;->em()Lscp;

    move-result-object p1

    nop

    nop

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lpma;

    nop

    nop

    iget-object v3, v2, Lpma;->a:Lpmk;

    nop

    invoke-virtual {v3, v2, v0, v1}, Lpmk;->b(Lphh;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lpir;->h()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Lphx;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_0
    const/4 v0, 0x1

    nop

    iput-boolean v0, p0, Lphx;->f:Z

    nop

    nop

    nop

    iget-object v0, p0, Lphx;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    iput-object v1, p0, Lphx;->d:Ljava/util/Set;

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_11
    check-cast v0, Lpir;

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

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    :goto_17
    const v1, 0x13

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

    nop
.end method

.method public final declared-synchronized l(Lpgi;)V
    .locals 14

    goto/32 :goto_1c

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

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p1

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-virtual {v2}, Lows;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto/32 :goto_18

    nop

    nop

    :goto_1
    goto/16 :goto_12

    nop

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    :try_start_3
    monitor-exit v1

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    throw p1

    nop

    :cond_0
    iget-object p1, p0, Lphx;->c:Lpdf;

    nop

    invoke-interface {p1}, Lpdf;->g()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Lpir;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpir;->h()V

    goto :goto_2

    nop

    nop

    :cond_1
    if-eqz v3, :cond_2

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lphx;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :try_start_5
    invoke-virtual {v2}, Lows;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object p1, p0, Lphx;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Lpdf;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_4
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_7
    iget-object v0, p0, Lphx;->c:Lpdf;

    nop

    const-string v1, "FrameDistributor#onStarted"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lphx;->g:Z

    nop

    nop

    nop

    iget-object v1, p0, Lphx;->e:Lryy;

    nop

    nop

    iget-boolean v2, p0, Lphx;->f:Z

    nop

    nop

    nop

    nop

    xor-int/2addr v2, v0

    nop

    nop

    nop

    nop

    const-string v3, "on started invoked after FrameDistributor was closed!"

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Lrrf;->y(ZLjava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :try_start_8
    new-instance v2, Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Lows;-><init>()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v3, p0, Lphx;->c:Lpdf;

    nop

    const-string v4, "frameAllocation"

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, p0, Lphx;->i:Lhon;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lhon;->d()Lpci;

    move-result-object v3

    nop

    nop

    invoke-virtual {v2, v3}, Lows;->d(Lpci;)V

    invoke-virtual {v1}, Lryy;->em()Lscp;

    move-result-object v3

    nop

    nop

    nop

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lpma;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lpma;->e:Lpic;

    nop

    nop

    invoke-virtual {v4}, Lpic;->r()Lpci;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Lows;->d(Lpci;)V

    goto :goto_9

    nop

    nop

    :cond_4
    iget-object v3, p0, Lphx;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    iput-object v4, p0, Lphx;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_6

    nop

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_5

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-object v5, p0, Lphx;->i:Lhon;

    nop

    iget-object v6, p0, Lphx;->b:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6, v3}, Lhon;->g(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_7

    nop

    nop

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lpir;

    nop

    nop

    nop

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    invoke-static {v7}, Lrrf;->x(Z)V

    goto :goto_a

    nop

    nop

    nop

    :cond_6
    :goto_b
    iget-object v5, p0, Lphx;->i:Lhon;

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lphx;->b:Ljava/util/Set;

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Lhon;->f(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    nop

    nop

    nop

    :cond_7
    iget-object v6, p0, Lphx;->c:Lpdf;

    nop

    nop

    nop

    invoke-interface {v6}, Lpdf;->g()V

    new-instance v6, Ljava/util/HashMap;

    nop

    nop

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    if-eqz v9, :cond_a

    nop

    nop

    nop

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    check-cast v9, Lpir;

    nop

    nop

    nop

    iget-object v10, v9, Lpir;->a:Lpgo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Lpgo;->d()Ljava/util/Set;

    move-result-object v10

    nop

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    nop

    nop

    nop

    nop

    :cond_8
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_9

    nop

    nop

    nop

    nop

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    check-cast v11, Lphh;

    nop

    nop

    instance-of v12, v11, Lpmm;

    nop

    nop

    nop

    nop

    if-eqz v12, :cond_8

    nop

    nop

    nop

    nop

    move-object v12, v11

    nop

    nop

    nop

    nop

    nop

    check-cast v12, Lpmm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Lpmm;->i()Lphm;

    move-result-object v12

    nop

    nop

    nop

    sget-object v13, Lphm;->a:Lphm;

    nop

    nop

    nop

    nop

    nop

    if-ne v12, v13, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v11}, Lpir;->c(Lphh;)Lpmo;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_9
    invoke-virtual {v9, p1}, Lpir;->j(Lpgi;)V

    iget-object v10, v9, Lpir;->a:Lpgo;

    nop

    nop

    nop

    invoke-interface {v6, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    nop

    :cond_a
    iget-object p1, p0, Lphx;->c:Lpdf;

    nop

    nop

    nop

    nop

    const-string v8, "MetadataDistributor#onFrameStarted"

    nop

    nop

    nop

    invoke-interface {p1, v8}, Lpdf;->f(Ljava/lang/String;)V

    iget-object p1, p0, Lphx;->a:Lpiv;

    nop

    nop

    invoke-virtual {p1, v5}, Lpiv;->r(Ljava/util/Collection;)V

    iget-object p1, p0, Lphx;->c:Lpdf;

    nop

    const-string v8, "ImageDistributors#onResultStarted"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1, v8}, Lpdf;->h(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :cond_b
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_f

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lpmo;

    nop

    invoke-interface {v7}, Lpmo;->d()Lphh;

    move-result-object v9

    nop

    nop

    instance-of v10, v9, Lpma;

    nop

    nop

    nop

    if-eqz v10, :cond_b

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v9}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    nop

    nop

    if-eqz v10, :cond_e

    nop

    check-cast v9, Lpma;

    nop

    iget-object v9, v9, Lpma;->a:Lpmk;

    nop

    nop

    iget-object v9, v9, Lpmk;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    nop

    nop

    invoke-virtual {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    nop

    nop

    nop

    nop

    move v10, v8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    nop

    nop

    if-eqz v11, :cond_d

    nop

    nop

    nop

    nop

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Lpmg;

    nop

    invoke-interface {v7}, Lpmo;->d()Lphh;

    move-result-object v11

    nop

    invoke-interface {v11}, Lphh;->a()I

    move-result v11

    nop

    nop

    iget v12, v10, Lpmg;->b:I

    nop

    nop

    nop

    if-ne v11, v12, :cond_c

    nop

    move v11, v0

    nop

    goto :goto_10

    nop

    nop

    nop

    :cond_c
    move v11, v8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v11}, La;->au(Z)V

    iget-object v11, v10, Lpmg;->h:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-interface {v11, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v11, v10, Lpmg;->c:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    iget-object v10, v10, Lpmg;->d:Ljava/lang/Runnable;

    nop

    nop

    invoke-interface {v11, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    move v10, v0

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    :cond_d
    if-nez v10, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v4}, Lpmo;->i(Lphk;)V

    goto/16 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_e
    invoke-interface {v7, v4}, Lpmo;->i(Lphk;)V

    goto/16 :goto_e

    nop

    nop

    :cond_f
    iget-object p1, p0, Lphx;->c:Lpdf;

    nop

    nop

    nop

    const-string v1, "FrameBuffers#add"

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lpdf;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lphx;->k:Lrbh;

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Lryw;

    nop

    nop

    nop

    invoke-direct {v4}, Lryw;-><init>()V

    monitor-enter p1

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    iget-object v7, p1, Lrbh;->c:Ljava/lang/Object;

    nop

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    :cond_10
    :goto_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    nop

    if-eqz v9, :cond_11

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    check-cast v9, Lphw;

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lphw;->s()Lpip;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v10}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v10

    nop

    nop

    if-eqz v10, :cond_10

    nop

    nop

    nop

    invoke-virtual {v4, v9}, Lryw;->h(Ljava/lang/Object;)V

    goto :goto_11

    nop

    :cond_11
    monitor-exit p1

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    invoke-virtual {v4}, Lryw;->g()Lryy;

    move-result-object p1

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lphw;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lphw;->s()Lpip;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lpir;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v4, Lpir;->a:Lpgo;

    nop

    nop

    new-instance v9, Lpjo;

    nop

    nop

    nop

    invoke-virtual {v4, v8}, Lpir;->a(Z)Lpci;

    move-result-object v10

    nop

    nop

    invoke-direct {v9, v7, v4, v10}, Lpjo;-><init>(Lpgo;Lpir;Lpci;)V

    iget-object v4, v9, Lpjo;->a:Lpgo;

    nop

    iget-object v7, v1, Lphw;->b:Lpgo;

    nop

    nop

    nop

    nop

    if-ne v4, v7, :cond_12

    nop

    move v4, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_12
    move v4, v8

    nop

    nop

    :goto_13
    const-string v7, "Frame does not match source!"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v7}, Lrrf;->m(ZLjava/lang/Object;)V

    iget-object v4, v1, Lphw;->c:Lpdf;

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    const-string v10, "#add"

    nop

    nop

    nop

    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-interface {v4, v7}, Lpdf;->f(Ljava/lang/String;)V

    monitor-enter v1

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    iget-boolean v4, v1, Lphw;->i:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_13

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Lpjo;->c()V

    goto/16 :goto_16

    nop

    nop

    :cond_13
    iget-object v4, v1, Lphw;->d:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v9}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    invoke-virtual {v9}, Lpjo;->d()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_14

    nop

    iget-object v4, v1, Lphw;->f:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v4, v9}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_14

    nop

    :cond_14
    iget-object v4, v1, Lphw;->e:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v4, v9}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :goto_14
    invoke-virtual {v1}, Lphw;->t()V

    iget-object v4, v1, Lphw;->c:Lpdf;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    const-string v10, "#invokeListeners-direct"

    nop

    invoke-virtual {v7, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    invoke-interface {v4, v7}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v4, v1, Lphw;->h:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_15

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lpgf;

    nop

    nop

    nop

    nop

    nop

    iget-object v10, v1, Lphw;->c:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    const-string v12, "#onFrameAvailable"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    invoke-interface {v10, v11}, Lpdf;->f(Ljava/lang/String;)V

    invoke-interface {v7, v9}, Lpgf;->d(Lpjo;)V

    iget-object v7, v1, Lphw;->c:Lpdf;

    nop

    invoke-interface {v7}, Lpdf;->g()V

    goto :goto_15

    nop

    :cond_15
    iget-object v4, v1, Lphw;->c:Lpdf;

    nop

    invoke-interface {v4}, Lpdf;->g()V

    iget-object v4, v1, Lphw;->a:Ljava/util/concurrent/Executor;

    nop

    nop

    new-instance v7, Lpho;

    nop

    const/4 v10, 0x2

    nop

    nop

    invoke-direct {v7, v1, v9, v10}, Lpho;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v4, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_16
    monitor-exit v1

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    iget-object v1, v1, Lphw;->c:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    :goto_18
    goto :goto_19

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_e
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_19
    throw p1

    nop

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p1

    nop

    :try_start_f
    iget-object v0, p0, Lphx;->c:Lpdf;

    nop

    nop

    nop

    invoke-interface {v0}, Lpdf;->g()V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    const v0, 0xe

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw p1

    nop

    nop

    :goto_1e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized m(Ljava/util/Set;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

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

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    new-instance v0, Lryw;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lryw;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lphh;

    nop

    nop

    nop

    nop

    instance-of v2, v1, Lpma;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    check-cast v1, Lpma;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lryw;->h(Ljava/lang/Object;)V

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v0}, Lryw;->g()Lryy;

    move-result-object p1

    nop

    nop

    iput-object p1, p0, Lphx;->e:Lryy;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method
