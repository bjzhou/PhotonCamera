.class public final Lihv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppe;


# instance fields
.field public final a:Ljava/util/Set;

.field private final b:Lppe;

.field private final c:Lows;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lppe;Lows;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lihv;->a:Ljava/util/Set;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lihv;->c:Lows;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_a
    const v1, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    iput-object v0, p0, Lihv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    :goto_d
    iput-object p1, p0, Lihv;->b:Lppe;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lppd;
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0xc

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

    :goto_2
    const/4 p0, 0x0

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

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p1, p0, Lihv;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    nop

    nop

    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1, p0, v2}, Lhjc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-direct {v0, p0, p1}, Lihu;-><init>(Lihv;Lppd;)V

    goto/32 :goto_3

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lihv;->c:Lows;

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

    :goto_d
    new-instance v0, Lihu;

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
    if-lez v0, :cond_1

    nop

    nop

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

    :goto_f
    iget-object v0, p0, Lihv;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_17

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

    nop

    :goto_12
    new-instance v1, Lhjc;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    iget-object v0, p0, Lihv;->b:Lppe;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v0, p1}, Lppe;->a(Ljava/lang/String;)Lppd;

    move-result-object p1

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

    :goto_16
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    :goto_17
    goto/32 :goto_d

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    throw p1

    nop

    nop

    :goto_1a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

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

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x20

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lihv;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    :goto_d
    return-void

    nop

    :goto_e
    :try_start_1
    iget-object v0, p0, Lihv;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lihv;->a:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Lppd;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lppd;->a()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    nop

    const-string v3, "%d gyro sessions, e.g. %s, leaked"

    nop

    nop

    nop

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method
