.class public final Ljun;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/os/Handler;

.field public volatile b:Lpci;

.field public final c:Lixe;

.field public final d:Lpzi;

.field public final e:Lmhz;

.field private final f:Landroid/content/res/Resources;

.field private final g:Landroid/content/SharedPreferences;

.field private final h:Ljava/util/concurrent/ScheduledExecutorService;

.field private final i:Z

.field private j:Lnga;

.field private k:Lpci;

.field private l:Ljava/util/concurrent/ScheduledFuture;

.field private final m:Lfwv;

.field private final n:Lfdo;


# direct methods
.method private final declared-synchronized 23ce148e54b083367f51e25c7971761em()V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    const v1, 0x1b

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

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v0, Ljsp;

    nop

    nop

    nop

    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Ljsp;-><init>(Ljava/lang/Object;I)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Ljun;->h:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    const-wide/16 v3, 0xbb8

    nop

    nop

    nop

    nop

    invoke-interface {v2, v0, v3, v4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    nop

    iput-object v0, p0, Ljun;->l:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized 7ecc92917e9c4556cc19f457ddc41af8m()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_4

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
    goto/32 :goto_d

    nop

    nop

    :goto_4
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

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Ljun;->l:Ljava/util/concurrent/ScheduledFuture;

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

    const/4 v2, 0x0

    nop

    nop

    nop

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    iput-object v1, p0, Ljun;->l:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iget-object v0, p0, Ljun;->b:Lpci;

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljun;->b:Lpci;

    nop

    nop

    invoke-interface {v0}, Lpci;->close()V

    iput-object v1, p0, Ljun;->b:Lpci;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lfwv;Lpzi;Landroid/content/res/Resources;Landroid/content/SharedPreferences;Lixe;Lfdo;Lmhz;Lhoh;Ljava/util/concurrent/ScheduledExecutorService;Landroid/os/Handler;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p10, p0, Ljun;->a:Landroid/os/Handler;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Ljun;->f:Landroid/content/res/Resources;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_4
    iput-object v0, p0, Ljun;->b:Lpci;

    nop

    goto/32 :goto_17

    nop

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
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p8, p2}, Lhoh;->p(Lhmn;)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

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
    goto/32 :goto_1

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Lixa;-><init>(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p2, Lhmz;->t:Lhmn;

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

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Ljun;->m:Lfwv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    iput-object p7, p0, Ljun;->e:Lmhz;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lixa;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p4, p0, Ljun;->g:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p6, p0, Ljun;->n:Lfdo;

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

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p5, p0, Ljun;->c:Lixe;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_17
    iput-object p2, p0, Ljun;->d:Lpzi;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    iput-boolean p2, p0, Ljun;->i:Z

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Ljun;->k:Lpci;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    iput-object v0, p0, Ljun;->l:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1c
    iput-object p9, p0, Ljun;->h:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 7

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/32 :goto_5

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

    :catchall_0
    move-exception v0

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

    goto/32 :goto_6

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljun;->n:Lfdo;

    nop

    nop

    const-string v1, "long_press"

    nop

    const/4 v3, 0x1

    nop

    new-array v3, v3, [Ljava/lang/Object;

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    aput-object v1, v3, v5

    nop

    nop

    nop

    const/16 v5, 0x276

    nop

    nop

    nop

    nop

    invoke-static {v5, v0, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljun;->n:Lfdo;

    nop

    const-string v2, "long_press"

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    aput-object v2, v3, v5

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    const/4 v6, 0x1

    nop

    nop

    nop

    aput-object v4, v3, v6

    nop

    nop

    const/16 v5, 0x277

    nop

    invoke-static {v5, v1, v3}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    const v0, 0x6

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

.method public final declared-synchronized b(Lnga;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    :goto_2
    goto/32 :goto_7

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

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean v0, p0, Ljun;->i:Z

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

    iget-object v0, p0, Ljun;->j:Lnga;

    nop

    sget-object v1, Lnga;->a:Lnga;

    nop

    nop

    nop

    nop

    if-eq v0, v1, :cond_0

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    :cond_0
    sget-object v0, Lnga;->J:Lnga;

    nop

    nop

    if-ne p1, v0, :cond_1

    nop

    nop

    nop

    invoke-direct {p0}, Ljun;->23ce148e54b083367f51e25c7971761em()V

    :cond_1
    iget-object v0, p0, Ljun;->j:Lnga;

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lnga;->g:Lnga;

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    sget-object v0, Lnga;->f:Lnga;

    nop

    if-ne p1, v0, :cond_2

    nop

    nop

    iget-object v0, p0, Ljun;->g:Landroid/content/SharedPreferences;

    nop

    const-string v1, "finish_video_capture"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljun;->g:Landroid/content/SharedPreferences;

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "finish_video_capture"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    iget-object v0, p0, Ljun;->j:Lnga;

    nop

    sget-object v1, Lnga;->J:Lnga;

    nop

    nop

    nop

    nop

    nop

    if-eq v0, v1, :cond_3

    nop

    nop

    sget-object v1, Lnga;->K:Lnga;

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    nop

    :cond_3
    sget-object v0, Lnga;->a:Lnga;

    nop

    nop

    if-ne p1, v0, :cond_5

    nop

    nop

    nop

    nop

    iget-boolean v0, p0, Ljun;->i:Z

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    invoke-direct {p0}, Ljun;->7ecc92917e9c4556cc19f457ddc41af8m()V

    :cond_4
    iget-object v0, p0, Ljun;->g:Landroid/content/SharedPreferences;

    nop

    nop

    const-string v1, "finish_long_shot_capture"

    nop

    nop

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_5

    nop

    nop

    iget-object v0, p0, Ljun;->g:Landroid/content/SharedPreferences;

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "finish_long_shot_capture"

    nop

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    sget-object v0, Lnga;->a:Lnga;

    nop

    nop

    nop

    if-eq p1, v0, :cond_6

    nop

    nop

    iget-object v0, p0, Ljun;->k:Lpci;

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpci;->close()V

    :cond_6
    iput-object p1, p0, Ljun;->j:Lnga;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_9
    monitor-exit p0

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

    :goto_a
    const v0, 0xa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

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

    :goto_c
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_7
    goto/32 :goto_4

    nop
.end method

.method final declared-synchronized c()Z
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    return v2

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

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

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljun;->j:Lnga;

    nop

    nop

    nop

    sget-object v1, Lnga;->a:Lnga;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    if-ne v0, v1, :cond_0

    nop

    nop

    iget-object v0, p0, Ljun;->n:Lfdo;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "long_press"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lfdo;->G(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    iget-object v0, p0, Ljun;->g:Landroid/content/SharedPreferences;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "finish_video_capture"

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    iget-object v0, p0, Ljun;->g:Landroid/content/SharedPreferences;

    nop

    const-string v1, "finish_long_shot_capture"

    nop

    nop

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    const v1, 0x1e

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized d()V
    .locals 4

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljun;->d:Lpzi;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpzi;->f:Ljava/lang/Object;

    nop

    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getHeight()I

    move-result v0

    nop

    invoke-virtual {p0}, Ljun;->c()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Ljun;->d:Lpzi;

    nop

    nop

    nop

    nop

    iget-object v0, v0, Lpzi;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->getHeight()I

    move-result v0

    nop

    nop

    nop

    neg-int v0, v0

    nop

    nop

    nop

    iget-object v1, p0, Ljun;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    const v2, 0x7f0703a0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    add-int/2addr v0, v1

    nop

    iget-object v1, p0, Ljun;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    nop

    const v2, 0x7f07039e

    nop

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljun;->f:Landroid/content/res/Resources;

    nop

    nop

    nop

    nop

    new-instance v2, Lnif;

    nop

    const v3, 0x7f1402ea

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-direct {v2, v1}, Lnif;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljun;->d:Lpzi;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lpzi;->f:Ljava/lang/Object;

    nop

    check-cast v1, Landroid/view/View;

    nop

    invoke-virtual {v2, v1, v0}, Lnif;->c(Landroid/view/View;I)V

    invoke-virtual {v2}, Lnif;->h()V

    invoke-virtual {v2}, Lnif;->k()V

    invoke-virtual {v2}, Lnif;->n()V

    invoke-virtual {v2}, Lnif;->o()V

    const/16 v0, 0x5dc

    nop

    nop

    nop

    iput v0, v2, Lnif;->e:I

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lnif;->l()V

    invoke-virtual {v2}, Lnif;->m()V

    new-instance v0, Ljsp;

    nop

    nop

    nop

    nop

    const/4 v1, 0x6

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Ljsp;-><init>(Ljava/lang/Object;I)V

    iget-object v1, p0, Ljun;->h:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    invoke-virtual {v2, v0, v1}, Lnif;->f(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v0, p0, Ljun;->c:Lixe;

    nop

    nop

    iput-object v0, v2, Lnif;->m:Lixe;

    nop

    nop

    nop

    const/4 v0, 0x4

    nop

    nop

    nop

    iput v0, v2, Lnif;->l:I

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    iput-boolean v0, v2, Lnif;->g:Z

    nop

    nop

    invoke-virtual {v2}, Lnif;->a()Lpci;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, p0, Ljun;->k:Lpci;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Ljun;->m:Lfwv;

    nop

    invoke-virtual {v0}, Lfwv;->i()Lows;

    move-result-object v0

    nop

    nop

    iget-object v1, p0, Ljun;->k:Lpci;

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_5
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

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :cond_2
    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_c
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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    const v1, 0x11

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
