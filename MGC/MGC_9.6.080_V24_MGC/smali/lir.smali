.class public final Llir;
.super Llio;
.source "PG"


# instance fields
.field public final a:Lpdf;

.field public final b:Lnpq;

.field public final c:Loyd;

.field public final d:Ltxm;

.field public final e:Ljava/util/Map;

.field public final f:Lkog;

.field public final g:Lhoh;

.field public final h:Lnpr;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Llgc;

.field private final k:Lrth;


# direct methods
.method public constructor <init>(Llgc;Liof;Lnpr;Lkog;Ljava/util/concurrent/Executor;Lpdf;Lnpq;Lhoh;Loyd;Lrth;Ltxm;)V
    .locals 0

    goto/32 :goto_b

    nop

    nop

    :goto_0
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Llir;->h:Lnpr;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p10, p0, Llir;->k:Lrth;

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

    :goto_3
    iput-object p5, p0, Llir;->i:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    new-instance p2, Ljava/util/HashMap;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Llir;->j:Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iput-object p8, p0, Llir;->g:Lhoh;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    iput-object p4, p0, Llir;->f:Lkog;

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

    :goto_8
    iput-object p7, p0, Llir;->b:Lnpq;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    iput-object p6, p0, Llir;->a:Lpdf;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p1, p2, p6}, Llio;-><init>(Llgc;Liof;Lpdf;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    iput-object p11, p0, Llir;->d:Ltxm;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Llir;->e:Ljava/util/Map;

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

    nop

    :goto_e
    iput-object p9, p0, Llir;->c:Loyd;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized b(Linb;Lpge;)V
    .locals 4

    goto/32 :goto_c

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1}, Llir;->j(Linb;)Z

    move-result v0

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Llir;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lliq;

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    iget-object v1, p0, Llir;->j:Llgc;

    nop

    nop

    nop

    nop

    new-instance v2, Loel;

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1, p2}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Loel;->g()Lprw;

    move-result-object v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    invoke-interface {p2}, Lpge;->b()Lpgi;

    move-result-object v2

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v2, v2, Lpgi;->b:J

    nop

    iget-object v0, v0, Lliq;->a:Ljava/lang/Object;

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1, p2}, Llio;->b(Linb;Lpge;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

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
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final declared-synchronized c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    invoke-super {p0, p1, p2, p3}, Llio;->c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V

    invoke-virtual {p0, p1}, Llir;->j(Linb;)Z

    move-result p2

    nop

    nop

    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    iget-object p2, p0, Llir;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    new-instance p3, Lliq;

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    invoke-direct {p3, p0, v0}, Lliq;-><init>(Llir;I)V

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final do(Linb;Lmjq;Lscn;)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_0
    iget-object p2, p0, Llir;->e:Ljava/util/Map;

    nop

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lliq;

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    check-cast p2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v2, p0, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    aput-object p1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v2, p1, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v2, 0x41

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    new-array v0, v0, [Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_10
    const/16 v2, 0x40

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v2, 0x3e

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_16

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

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2, p1, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v2, 0x3f

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

    :goto_1d
    const v1, 0x11

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

    :goto_1e
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_20
    invoke-static {v2, p2, v0}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method protected final declared-synchronized e(Linb;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
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

    nop

    :try_start_0
    monitor-exit p0

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    :try_start_1
    invoke-super {p0, p1}, Llio;->e(Linb;)V

    iget-object v0, p0, Llir;->e:Ljava/util/Map;

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Lliq;

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lliq;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_5

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final f(Linb;Lprw;J)V
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    move-object v2, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3
    move-wide v5, p3

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

    :goto_4
    move-object v3, p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_18

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

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Llir;->i:Ljava/util/concurrent/Executor;

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

    :goto_9
    new-instance v7, Llip;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Linb;->a()I

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

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

    nop

    :goto_c
    invoke-virtual {p1}, Linb;->d()Z

    move-result v0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_d
    move-object v1, v7

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2}, Lprw;->close()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    move-object v4, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct/range {v1 .. v6}, Llip;-><init>(Llir;Lprw;Linb;J)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    :goto_17
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Linb;)Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lils;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Llir;->k:Lrth;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

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

    :goto_5
    iget-object p0, p1, Linb;->m:Lils;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    if-nez p0, :cond_0

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    sget-object p1, Lils;->b:Lils;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    iget-boolean p0, p0, Lrth;->a:Z

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

    nop

    :goto_b
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

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
.end method
