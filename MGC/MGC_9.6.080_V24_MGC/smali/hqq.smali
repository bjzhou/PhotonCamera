.class public final Lhqq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llxb;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:J

.field private final c:Ljava/util/Set;

.field private d:Lhqp;

.field private e:Ljava/util/concurrent/ScheduledFuture;

.field private final f:Lgvg;


# direct methods
.method private final declared-synchronized 33b3102b6558811a7b7629a1e8e59bd2m()V
    .locals 5

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    :try_start_0
    iget-object v0, p0, Lhqq;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    new-instance v1, Lhiv;

    nop

    nop

    nop

    const/16 v2, 0x10

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lhiv;-><init>(Ljava/lang/Object;I)V

    iget-wide v2, p0, Lhqq;->b:J

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhqq;->e:Ljava/util/concurrent/ScheduledFuture;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    return-void

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

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_a
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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter p0

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lhqq;->e:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

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

    :goto_10
    const v1, 0x3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 3fd9578e124c68aa49885b22b61b4ec8m()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lhqq;->e:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhqq;->e:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lgvg;Lhoh;)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    iput-wide p1, p0, Lhqq;->b:J

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p3, p1}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lhqq;->c:Ljava/util/Set;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhqq;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    sget-object p1, Lhmu;->A:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/HashSet;

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

    :goto_a
    iput-object p2, p0, Lhqq;->f:Lgvg;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

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

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    int-to-long p1, p1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized b1051a9d8893542362ad09051775f8f6m(Llxm;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

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

    goto/32 :goto_0

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

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lhqq;->c:Ljava/util/Set;

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lhqq;->c:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    iput-object p1, p0, Lhqq;->d:Lhqp;

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lhqq;->3fd9578e124c68aa49885b22b61b4ec8m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhqq;->d:Lhqp;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lhqp;->a:Llxo;

    nop

    nop

    sget-object v1, Llxo;->d:Llxo;

    nop

    nop

    if-ne v0, v1, :cond_1

    nop

    const/4 v0, 0x0

    nop

    iput-object v0, p0, Lhqq;->e:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    invoke-static {}, Lgvg;->o()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
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

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    return-void

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public final b(Llxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lhqq;->b1051a9d8893542362ad09051775f8f6m(Llxm;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final synthetic c(Llxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final df(Llxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lhqq;->b1051a9d8893542362ad09051775f8f6m(Llxm;)V

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

    nop
.end method

.method public final synthetic dh(Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final synthetic e(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final synthetic g(Llxm;Landroid/graphics/Bitmap;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p2}, Lkav;->I(Llxb;Landroid/graphics/Bitmap;)V

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

    nop

    nop
.end method

.method public final h(Llxm;Lpcj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final i(Llxm;Llxh;Llxp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p3, p0, Lhqq;->c:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lhqq;->c:Ljava/util/Set;

    nop

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    nop

    nop

    nop

    const/4 p3, 0x1

    nop

    if-ne p1, p3, :cond_0

    nop

    nop

    nop

    iget-object p1, p2, Llxh;->c:Llxo;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lhqp;

    nop

    invoke-direct {p2, p1}, Lhqp;-><init>(Llxo;)V

    iput-object p2, p0, Lhqq;->d:Lhqp;

    nop

    nop

    invoke-direct {p0}, Lhqq;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto :goto_1

    nop

    nop

    :cond_0
    const/4 p1, 0x0

    nop

    iput-object p1, p0, Lhqq;->d:Lhqp;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lhqq;->3fd9578e124c68aa49885b22b61b4ec8m()V

    :goto_1
    monitor-exit p0

    nop

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    nop

    nop
.end method

.method public final synthetic j(Llxm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final n(Llxm;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lhqq;->b1051a9d8893542362ad09051775f8f6m(Llxm;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
