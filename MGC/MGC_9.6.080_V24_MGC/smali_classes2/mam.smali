.class final Lmam;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "PG"


# instance fields
.field public a:Ldqo;

.field private final b:[Ljava/lang/String;

.field private final c:Z

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;

.field private final e:Ljava/util/Map;

.field private f:Z

.field private g:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lmam;->d:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmam;->b:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lmam;->c:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x1

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

    :goto_5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_7

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

    :goto_7
    iput-object v0, p0, Lmam;->e:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onCameraAvailable(Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lmam;->g:Ljava/util/concurrent/ScheduledFuture;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

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
    iget-object v0, p0, Lmam;->e:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

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
    const v0, 0x19

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p1

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    iget-object p0, p0, Lmam;->a:Ldqo;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_16

    nop

    :goto_d
    new-instance v0, Lmaq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    :try_start_3
    iget-object p1, p0, Lmam;->e:Ljava/util/Map;

    nop

    nop

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lmam;->b:[Ljava/lang/String;

    nop

    nop

    nop

    array-length v0, v0

    nop

    nop

    nop

    nop

    nop

    if-ge p1, v0, :cond_1

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

    return-void

    nop

    nop

    :cond_1
    iget-object p1, p0, Lmam;->e:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_3
    monitor-exit p0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    const-wide/16 v1, 0x3e8

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    iget-boolean p1, p0, Lmam;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Ldqo;->c(Ljava/lang/Object;)Z

    goto/32 :goto_8

    nop

    nop

    :goto_14
    throw p1

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    if-nez p1, :cond_4

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

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lmam;->d:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0, p0, v1}, Lmaq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public final onCameraUnavailable(Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    iget-object p0, p0, Lmam;->a:Ldqo;

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
    iget-object v2, p0, Lmam;->g:Ljava/util/concurrent/ScheduledFuture;

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

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v1}, Ldqo;->c(Ljava/lang/Object;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    iput-boolean v0, p0, Lmam;->f:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lmam;->e:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    nop

    nop

    nop

    return-void

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

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lmam;->g:Ljava/util/concurrent/ScheduledFuture;

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    invoke-interface {v2, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const v1, 0x1b

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

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    throw p1

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_18
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_1a
    iget-boolean v0, p0, Lmam;->c:Z

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
.end method
