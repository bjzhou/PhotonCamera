.class public final Lgsn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Lowr;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private final f:Lgvg;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    :goto_4
    const v0, 0xb

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

    :goto_5
    add-int v0, v0, v1

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
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lgsn;->d:Z

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    nop

    const-string v2, "CamcorderCameraHandler"

    nop

    nop

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lgsn;->a:Landroid/os/HandlerThread;

    nop

    nop

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lgsn;->a:Landroid/os/HandlerThread;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lgsn;->b:Landroid/os/Handler;

    nop

    nop

    nop

    new-instance v1, Lowr;

    nop

    nop

    iget-object v2, p0, Lgsn;->b:Landroid/os/Handler;

    nop

    invoke-direct {v1, v2}, Lowr;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lgsn;->c:Lowr;

    nop

    iget-object v1, p0, Lgsn;->f:Lgvg;

    nop

    sget-object v2, Lgst;->b:Lgst;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lgvg;->k(Lgst;)Lows;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0}, Lows;->d(Lpci;)V

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lgsn;->d:Z

    nop

    nop

    monitor-exit v0

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lgsn;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>(Lgvg;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lgsn;->d:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object v0, p0, Lgsn;->e:Ljava/lang/Object;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lgsn;->f:Lgvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lgsn;->b:Landroid/os/Handler;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lgsn;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()Lowr;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lgsn;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lgsn;->c:Lowr;

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

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const v1, 0x15

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

    :goto_2
    const v0, 0x19

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lgsn;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-boolean v1, p0, Lgsn;->d:Z

    nop

    nop

    nop

    nop

    if-nez v1, :cond_1

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

    :cond_1
    iget-object v1, p0, Lgsn;->a:Landroid/os/HandlerThread;

    nop

    if-eqz v1, :cond_2

    nop

    nop

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    const/4 v1, 0x0

    nop

    nop

    iput-object v1, p0, Lgsn;->a:Landroid/os/HandlerThread;

    nop

    nop

    nop

    iput-object v1, p0, Lgsn;->b:Landroid/os/Handler;

    nop

    nop

    iput-object v1, p0, Lgsn;->c:Lowr;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Lgsn;->d:Z

    nop

    nop

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

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

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

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
