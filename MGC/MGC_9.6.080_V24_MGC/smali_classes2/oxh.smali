.class public final Loxh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;
.implements Lpci;


# instance fields
.field private final a:Ljava/util/concurrent/ScheduledExecutorService;

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;

.field private final d:Ljava/lang/Object;

.field private e:Ljava/util/concurrent/ScheduledFuture;

.field private f:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Loxh;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Loxh;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-wide p2, p0, Loxh;->b:J

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

    :goto_3
    iput-object p4, p0, Loxh;->c:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/Object;

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

    :goto_5
    return-void

    nop

    :goto_6
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x0

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

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Loxh;->d:Ljava/lang/Object;

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
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Loxh;->f:Z

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_0
    invoke-virtual {p0}, Loxh;->b()V

    iget-object v1, p0, Loxh;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    nop

    iput-object p1, p0, Loxh;->e:Ljava/util/concurrent/ScheduledFuture;

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

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

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

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
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_3

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Loxh;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    const v1, 0x15

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Loxh;->e:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-interface {p0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_1
    const v1, 0xd

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    const v0, 0x10

    nop

    goto/32 :goto_1

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Loxh;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Loxh;->d:Ljava/lang/Object;

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
    const v1, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Loxh;->f:Z

    nop

    if-eqz v1, :cond_0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_0
    const/4 v1, 0x1

    nop

    nop

    nop

    iput-boolean v1, p0, Loxh;->f:Z

    nop

    nop

    nop

    iget-object p0, p0, Loxh;->a:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    invoke-interface {p0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object v2, p0, Loxh;->c:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v0, p0, Loxh;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1, v0, v1, v2}, Loxh;->a(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop
.end method
