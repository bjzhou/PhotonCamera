.class public Ljfg;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Ljava/util/Map;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lpdf;

.field private final f:Lkqj;

.field private final g:Ljava/util/Set;

.field private final h:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Ljfg;->a:Lsdb;

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

    :goto_1
    return-void

    nop

    :goto_2
    const-string v0, "jfg"

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpdf;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lkqj;-><init>(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

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

    :goto_2
    iput-object p1, p0, Ljfg;->e:Lpdf;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    const v1, 0x4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Ljfg;->f:Lkqj;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    iput-object v0, p0, Ljfg;->h:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_10
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Ljfg;->g:Ljava/util/Set;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v1, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    iput-object p2, p0, Ljfg;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_19

    nop

    nop

    :goto_19
    new-instance v0, Lkqj;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    iput-object v0, p0, Ljfg;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1c
    iput-object v0, p0, Ljfg;->c:Ljava/util/Map;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_12

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(IZLjava/lang/Runnable;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    :try_start_0
    sget-object v0, Ljfg;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    const/16 v2, 0x8b0

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Aborting task %s"

    nop

    invoke-interface {v1, v2, p1}, Lscz;->t(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, p3}, Ljfg;->e(ILjava/lang/Runnable;)V

    if-eqz p2, :cond_1

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    const/16 p3, 0x8b1

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    const-string p3, "Marking %s as pending shot in fatal state."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3, p1}, Lscz;->t(Ljava/lang/String;I)V

    iget-object p2, p0, Ljfg;->h:Ljava/util/Set;

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, p2}, Ljfg;->b(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_b
    return-void

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1f

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(IZ)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljfg;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljff;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p2}, Ljff;->c(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    :try_start_1
    sget-object p2, Ljfg;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    const/16 v0, 0x8b2

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->afHLerE:Ljava/lang/String;

    nop

    nop

    invoke-interface {p2, v0, p1}, Lscz;->t(Ljava/lang/String;I)V

    iget-object p1, p0, Ljfg;->g:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

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

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x18

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized c(ILjava/lang/Runnable;)Z
    .locals 9

    goto/32 :goto_f

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    :cond_1
    :try_start_1
    sget-object p2, Ljfg;->a:Lsdb;

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    const/16 v0, 0x8b9

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    const-string v0, "Cannot start task %s, already aborted"

    nop

    nop

    nop

    nop

    invoke-interface {p2, v0, p1}, Lscz;->t(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    const v1, 0x1f

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

    :goto_f
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    monitor-enter p0

    nop

    :try_start_2
    iget-object v0, p0, Ljfg;->g:Ljava/util/Set;

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    new-instance v0, Ljff;

    nop

    new-instance v8, Lmw;

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0x9

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v2, v8

    nop

    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    move v4, p1

    nop

    nop

    move-object v5, p2

    nop

    invoke-direct/range {v2 .. v7}, Lmw;-><init>(Ljava/lang/Object;ILjava/lang/Object;I[B)V

    invoke-direct {v0, p0, p1, v8}, Ljff;-><init>(Ljfg;ILjava/lang/Runnable;)V

    iget-object p2, p0, Ljfg;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Ljfg;->f:Lkqj;

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Lkqj;->a(Lkqg;)Lsui;

    move-result-object p2

    nop

    new-instance v0, Ldtv;

    nop

    nop

    nop

    nop

    const/16 v1, 0x14

    nop

    nop

    nop

    invoke-direct {v0, p0, p1, v1}, Ldtv;-><init>(Ljava/lang/Object;II)V

    sget-object p1, Lstd;->a:Lstd;

    nop

    nop

    invoke-interface {p2, v0, p1}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 9

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_6
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x20

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_0
    sget-object p2, Ljfg;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 p3, 0x8ad

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    const-string p3, "Cannot execute, task already done: %s"

    nop

    invoke-interface {p2, p3, p1}, Lscz;->t(Ljava/lang/String;I)V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Ljfg;->c:Ljava/util/Map;

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljff;

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Ljfg;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 p3, 0x8af

    nop

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    const-string p3, "Task not found: %s"

    nop

    nop

    nop

    invoke-interface {p2, p3, p1}, Lscz;->t(Ljava/lang/String;I)V

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Ljfg;->h:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    :cond_2
    :try_start_2
    iget-object v1, v0, Ljff;->a:Lsuu;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lsuu;->isDone()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    new-instance v1, Ljfd;

    nop

    nop

    nop

    nop

    const/4 v8, 0x2

    nop

    move-object v3, v1

    nop

    move-object v4, p0

    nop

    nop

    nop

    nop

    nop

    move-object v5, p2

    nop

    nop

    move v6, p1

    nop

    nop

    nop

    nop

    nop

    move-object v7, p3

    nop

    invoke-direct/range {v3 .. v8}, Ljfd;-><init>(Ljfg;Ljava/lang/String;ILjava/lang/Runnable;I)V

    invoke-virtual {v0, v1, p4}, Ljff;->d(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_14
    monitor-exit p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_3
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e(ILjava/lang/Runnable;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    :try_start_0
    new-instance v0, Lgbg;

    nop

    const/16 v1, 0xd

    nop

    nop

    invoke-direct {v0, v1}, Lgbg;-><init>(I)V

    const-string v1, "abortRunnable"

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1, v1, p2, v0}, Ljfg;->d(ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    :goto_8
    goto/32 :goto_b

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

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final f(Ljava/lang/Runnable;)V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, v0}, Lgbg;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljff;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1, v1}, Ljff;->d(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljfg;->f:Lkqj;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0, p1, v1}, Ljff;-><init>(Ljfg;ILjava/lang/Runnable;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x9

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-direct {p1, v0, v1}, Ljcl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v2, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    new-instance v1, Lgbg;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    const/4 p1, -0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    new-instance p1, Lgbg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    :goto_13
    invoke-direct {v1, p1, v2}, Ljcl;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Lkqj;->a(Lkqg;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, v2}, Lgbg;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, p1, v0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    new-instance v1, Ljcl;

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

    :goto_1b
    new-instance p1, Ljcl;

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

    :goto_1c
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    const v0, 0x10

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop
.end method
