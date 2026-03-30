.class public final Lgfm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field private final a:Ljava/util/Queue;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lgfm;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    const v1, 0x13

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, v2}, Lkfl;-><init>(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_c
    new-instance v0, Ljava/util/PriorityQueue;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v0, p0, Lgfm;->a:Ljava/util/Queue;

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

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v1, Lkfl;

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

    :goto_10
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(J)Lj$/util/Optional;
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x15

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    return-object p1

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

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lgfm;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Llie;

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-direct {v1, p1, p2, v2}, Llie;-><init>(JI)V

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object p1

    nop

    invoke-interface {v0, p1}, Lj$/util/stream/Stream;->min(Ljava/util/Comparator;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lj$/util/Optional;->isPresent()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lgfm;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p2, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x3

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

    :goto_9
    return-object p1

    nop

    nop

    nop

    :cond_1
    :try_start_2
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

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

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p1

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lgeq;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_b

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    :goto_a
    throw p1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lgfm;->b:Z

    nop

    if-nez v0, :cond_1

    nop

    :goto_d
    iget-object v0, p0, Lgfm;->a:Ljava/util/Queue;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    const/16 v1, 0xa

    nop

    nop

    if-lt v0, v1, :cond_2

    nop

    nop

    iget-object v0, p0, Lgfm;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lgeq;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lgeq;->close()V

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Lgfm;->a:Ljava/util/Queue;

    nop

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    :goto_f
    add-int v0, v0, v1

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

    nop
.end method

.method public final declared-synchronized close()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-void

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

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xe

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    :try_start_1
    iput-boolean v0, p0, Lgfm;->b:Z

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lgfl;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Lgfl;-><init>(I)V

    iget-object v1, p0, Lgfm;->a:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-static {v1, v0}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lgfm;->a:Ljava/util/Queue;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Queue;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
