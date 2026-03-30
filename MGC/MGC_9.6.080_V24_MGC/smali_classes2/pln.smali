.class public final Lpln;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/util/List;

.field public final c:Lpcu;

.field public d:Lpko;

.field private final e:Ljava/util/Set;

.field private final f:Ljava/util/Map;

.field private final g:Ljava/util/Map;

.field private final h:Lpdf;

.field private i:Z

.field private final j:Lhdn;


# direct methods
.method public constructor <init>(Lhdn;Lows;Ljava/util/concurrent/Executor;Lpcu;Lpdf;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p5, v0}, Ljava/util/HashSet;-><init>(I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p5, "SurfaceMap"

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lpln;->h:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_7
    iput-object p5, p0, Lpln;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p4}, Lows;->d(Lpci;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_14

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p0, p4, v1}, Lgrt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p1, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lpln;->i:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x18

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance p5, Ljava/util/HashMap;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_22

    nop

    :goto_17
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_18
    new-instance p5, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_19
    invoke-direct {p5}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Lpln;->j:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p5, v0}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_2c

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_1d
    const v1, 0x1

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

    nop

    :goto_1e
    iget-object v0, p1, Lhdn;->c:Ljava/lang/Object;

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

    nop

    nop

    :goto_1f
    iput-object p5, p0, Lpln;->g:Ljava/util/Map;

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

    :goto_20
    invoke-interface {p5, v0, p3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object p4

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

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p1, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p5, p0, Lpln;->e:Ljava/util/Set;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_27
    check-cast p4, Lpmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p5, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

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

    :goto_2a
    invoke-direct {p5, v0}, Ljava/util/HashMap;-><init>(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p4, p5}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2c
    iput-object p5, p0, Lpln;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object p4, p0, Lpln;->c:Lpcu;

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

    :goto_2e
    iget-object p5, p4, Lpmb;->a:Loxv;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2f
    new-instance p5, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_32
    iget-object p1, p1, Lhdn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_33
    new-instance v0, Lgrt;

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

    :goto_34
    iput-object p5, p0, Lpln;->b:Ljava/util/List;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_35
    new-instance p5, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop
.end method


# virtual methods
.method public final a(Lpko;Ljava/util/Collection;)V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpln;->d:Lpko;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_7

    nop

    :cond_2
    move v0, v1

    nop

    nop

    :goto_7
    const-string v2, "setActiveCaptureSession must be invoked first."

    nop

    nop

    nop

    nop

    new-array v3, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v2, v3}, Lqrg;->D(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lpln;->d:Lpko;

    nop

    nop

    nop

    nop

    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    monitor-exit p0

    nop

    return-void

    nop

    :cond_3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    nop

    nop

    nop

    if-eqz p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Lprq;

    nop

    nop

    nop

    iget-object v0, p0, Lpln;->a:Ljava/util/Set;

    nop

    nop

    invoke-interface {p2}, Lprq;->a()Ljava/util/List;

    move-result-object p2

    nop

    nop

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result p2

    nop

    or-int/2addr v1, p2

    nop

    nop

    nop

    nop

    nop

    goto :goto_8

    nop

    nop

    :cond_4
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

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

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
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

    :try_start_1
    monitor-exit p0

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

    :goto_c
    throw p1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lpln;->c()V

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lpln;->b:Ljava/util/List;

    nop

    nop

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    iget-object v0, p0, Lpln;->b:Ljava/util/List;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_14

    nop

    nop

    :goto_1
    iget-object p0, p0, Lpln;->h:Lpdf;

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

    nop

    :goto_2
    sget v0, Lryb;->d:I

    nop

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

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    check-cast v1, Ljava/lang/Runnable;

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

    nop

    :goto_6
    goto/32 :goto_13

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    :goto_8
    const-string v1, "SurfaceMap#invokeCallbacks"

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpln;->h:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter v1

    nop

    :try_start_0
    iget-object v2, p0, Lpln;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    iget-object v2, p0, Lpln;->b:Ljava/util/List;

    nop

    nop

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_1
    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    :goto_10
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    throw p0

    nop

    nop

    :goto_13
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_14
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    const v0, 0x8

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Lpln;->b:Ljava/util/List;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x20

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_1
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpko;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lpln;->e()V

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpln;->d:Lpko;

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

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    if-eq v0, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lpln;->a:Ljava/util/Set;

    nop

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object p1, p0, Lpln;->d:Lpko;

    nop

    nop

    iput-boolean v1, p0, Lpln;->i:Z

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

    nop

    :cond_3
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

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

    :goto_e
    rem-int v0, v0, v1

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
.end method

.method public final e()V
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    goto :goto_7

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lpln;->j:Lhdn;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lhdn;->c:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_7

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Lpmm;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lpmm;->h()Landroid/view/Surface;

    move-result-object v3

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    if-eqz v3, :cond_5

    nop

    nop

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_5

    nop

    nop

    nop

    iget-object v5, p0, Lpln;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    if-nez v5, :cond_4

    nop

    iget-object v1, p0, Lpln;->e:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lpln;->f:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lpln;->g:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Landroid/view/Surface;

    nop

    if-eq v1, v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    iput-boolean v4, p0, Lpln;->i:Z

    nop

    nop

    nop

    goto :goto_f

    nop

    :cond_4
    iget-object v5, p0, Lpln;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Landroid/view/Surface;

    nop

    nop

    nop

    if-eq v5, v3, :cond_3

    nop

    nop

    nop

    iput-boolean v4, p0, Lpln;->i:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lpln;->e:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lpln;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lpln;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_e

    nop

    nop

    nop

    :cond_5
    iget-object v5, p0, Lpln;->f:Ljava/util/Map;

    nop

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lpln;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    check-cast v5, Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    if-eq v5, v3, :cond_3

    nop

    nop

    iget-object v1, p0, Lpln;->e:Ljava/util/Set;

    nop

    nop

    invoke-interface {v1, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lpln;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lpln;->g:Ljava/util/Map;

    nop

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_f
    move v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    nop

    :cond_7
    iget-boolean v0, p0, Lpln;->i:Z

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    return-void

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lpln;->c()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x15

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f(Landroid/view/Surface;)Z
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

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

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x3

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
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

    :goto_6
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

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

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpln;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpln;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lpln;->c:Lpcu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    iget-object v3, p0, Lpln;->d:Lpko;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is valid but deferred streams are not yet available for "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    invoke-interface {v2, p1}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_e
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    :goto_12
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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
.end method

.method public final declared-synchronized g()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v0, p0, Lpln;->i:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    return v0

    nop

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

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop
.end method
