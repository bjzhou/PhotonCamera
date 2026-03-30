.class public final Lhbs;
.super Lpuq;
.source "PG"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lpci;

.field public final d:Lneh;

.field public final e:Lixe;

.field private final f:Landroid/content/Context;

.field private final g:Ljava/util/Timer;

.field private h:Z

.field private i:Ljava/util/TimerTask;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Lpci;->close()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const-string v0, "notificationChipCloseable"

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lhbs;->a:Z

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
    const/4 v0, 0x0

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

    :goto_6
    invoke-static {v0}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lhbs;->c:Lpci;

    nop

    nop

    goto/32 :goto_2

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

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public constructor <init>(Lixe;Landroid/content/Context;Ljava/util/Timer;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const p3, 0x7f1407f0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p3, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p1, Lnei;->h:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-direct {p1}, Lnei;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhbs;->e:Lixe;

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

    :goto_7
    new-instance p1, Lnei;

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

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    const/4 p3, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

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

    nop

    :goto_b
    iput-boolean p3, p1, Lnei;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Lhbs;->g:Ljava/util/Timer;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lnei;->a()Lneh;

    move-result-object p1

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

    :goto_f
    iput-object p2, p0, Lhbs;->f:Landroid/content/Context;

    nop

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

    :goto_10
    iput-object p3, p1, Lnei;->e:Ljava/lang/String;

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

    :goto_11
    iput-object p1, p0, Lhbs;->d:Lneh;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p2, p1, Lnei;->g:Landroid/content/Context;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object v0, p0, Lhbs;->g:Ljava/util/Timer;

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

    :goto_2
    invoke-static {v0}, Luch;->b(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lhbs;->i:Ljava/util/TimerTask;

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

    :goto_9
    const/4 v0, 0x0

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

    :goto_a
    iput-boolean v0, p0, Lhbs;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    const-string v0, "chipTimerTask"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpro;)V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

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

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

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

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

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

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    invoke-static {p1}, Lnzk;->Q(F)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    cmpg-double p1, v0, v2

    nop

    nop

    nop

    if-gez p1, :cond_2

    nop

    nop

    iget-boolean p1, p0, Lhbs;->a:Z

    nop

    nop

    if-nez p1, :cond_1

    nop

    nop

    iget-boolean p1, p0, Lhbs;->b:Z

    nop

    nop

    nop

    if-nez p1, :cond_1

    nop

    nop

    nop

    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    iput-boolean p1, p0, Lhbs;->b:Z

    nop

    nop

    new-instance p1, Lhbr;

    nop

    nop

    nop

    invoke-direct {p1, p0}, Lhbr;-><init>(Lhbs;)V

    iput-object p1, p0, Lhbs;->i:Ljava/util/TimerTask;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lhbs;->g:Ljava/util/Timer;

    nop

    nop

    nop

    nop

    const-wide/16 v1, 0x3e8

    nop

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    return-void

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :cond_2
    :try_start_2
    iget-boolean p1, p0, Lhbs;->b:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    invoke-direct {p0}, Lhbs;->d116db4599d9ddc8c35e61366a4f4967m()V

    :cond_3
    iget-boolean p1, p0, Lhbs;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    invoke-direct {p0}, Lhbs;->132cd3b981019b59dc42653eea0b34b4m()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_3

    nop

    :goto_13
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    iget-boolean v0, p0, Lhbs;->h:Z

    nop

    nop

    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    nop

    :cond_5
    sget-object v0, Lnyq;->E:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    nop

    sget-object p1, Lnyq;->E:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized f()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

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
    move-exception v0

    nop

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    :try_start_1
    iput-boolean v0, p0, Lhbs;->h:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final declared-synchronized g()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_2

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

    nop

    :try_start_0
    iget-boolean v0, p0, Lhbs;->a:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    invoke-direct {p0}, Lhbs;->132cd3b981019b59dc42653eea0b34b4m()V

    :cond_0
    iget-boolean v0, p0, Lhbs;->b:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lhbs;->d116db4599d9ddc8c35e61366a4f4967m()V

    :cond_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lhbs;->h:Z

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

    nop

    nop

    :goto_2
    return-void

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

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop
.end method
