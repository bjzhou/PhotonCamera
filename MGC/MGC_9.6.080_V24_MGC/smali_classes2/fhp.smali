.class public final Lfhp;
.super Ljava/lang/Thread;
.source "PG"


# static fields
.field private static final c:Lfht;


# instance fields
.field public final a:Ljava/util/Queue;

.field public b:Ljava/lang/Boolean;

.field private final d:Landroid/os/Handler;

.field private final e:Landroid/os/HandlerThread;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lfhp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_2

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
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lfhp;->b:Ljava/lang/Boolean;

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    goto/32 :goto_1

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

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lfhp;->c:Lfht;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1c

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

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lfht;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->MMOYrEtZAsJLK:Ljava/lang/String;

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/HandlerThread;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lfhp;->b:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lfhp;->e:Landroid/os/HandlerThread;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_5
    new-instance v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xb

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

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    iput-object v0, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const-string v0, "Camera Job Dispatch Thread"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/LinkedList;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    nop

    :goto_14
    iput-object p1, p0, Lfhp;->d:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;)V
    .locals 5

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const-string p1, "Trying to run job on interrupted dispatcher thread"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    nop

    int-to-long v1, v1

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x100

    nop

    nop

    nop

    nop

    cmp-long v1, v1, v3

    nop

    nop

    if-eqz v1, :cond_1

    nop

    iget-object v1, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    nop

    const-string p1, "Camera master thread job queue full"

    nop

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lfhp;->33f5b80483094659737b73d90f80a8a4m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
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

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final b(Ljava/lang/Runnable;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

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

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-long/2addr v0, v2

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0, p1}, Lfhp;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p2, v2, v3}, Ljava/lang/Object;->wait(J)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    nop

    nop

    nop

    cmp-long p0, p0, v0

    nop

    nop

    nop

    nop

    nop

    if-gtz p0, :cond_1

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    nop

    nop

    nop

    cmp-long p0, p0, v0

    nop

    if-gtz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p2

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p2

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    const-string v0, "Timeout waiting 3500ms for "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    monitor-enter p2

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-wide/16 v2, 0xdac

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final run()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lfhp;->e:Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    :try_start_0
    iget-object v1, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4

    nop

    nop

    nop

    invoke-direct {p0}, Lfhp;->33f5b80483094659737b73d90f80a8a4m()Z

    move-result v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_3
    iget-object v0, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    :try_start_2
    iget-object v1, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_12

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    const v1, 0x19

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    monitor-enter p0

    nop

    nop

    nop

    :try_start_3
    iget-object v0, p0, Lfhp;->d:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lesy;

    nop

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-direct {v1, p0, v2, v3}, Lesy;-><init>(Ljava/lang/Object;I[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    :try_start_5
    monitor-exit p0

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    monitor-exit p0

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :catch_1
    :try_start_6
    sget-object v1, Lfhp;->c:Lfht;

    nop

    nop

    nop

    nop

    const-string v2, "Dispatcher thread wait() interrupted, exiting"

    nop

    nop

    invoke-static {v1, v2}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    :cond_4
    :goto_17
    iget-object v1, p0, Lfhp;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    invoke-direct {p0}, Lfhp;->33f5b80483094659737b73d90f80a8a4m()Z

    move-result v0

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
.end method
