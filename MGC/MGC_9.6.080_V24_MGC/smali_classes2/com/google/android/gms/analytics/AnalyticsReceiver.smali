.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field private a:Loen;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p2, p0}, Lodi;->r(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_15

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

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Loen;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Lodi;->t(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    const-string v1, "com.google.android.gms.analytics.AnalyticsService"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Loen;

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    invoke-static {p1}, Lodm;->c(Landroid/content/Context;)Lodm;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lodm;->c:Lody;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-enter v1

    nop

    nop

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez p0, :cond_1

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :cond_1
    :try_start_1
    sget-object p0, Loen;->b:Loqm;

    nop

    const/4 p2, 0x0

    nop

    nop

    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    new-instance p0, Loqm;

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Loqm;-><init>(Landroid/content/Context;)V

    sput-object p0, Loen;->b:Loqm;

    nop

    nop

    nop

    nop

    sget-object p0, Loen;->b:Loqm;

    nop

    nop

    iget-object p1, p0, Loqm;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-enter p1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iput-boolean p2, p0, Loqm;->g:Z

    nop

    nop

    monitor-exit p1

    nop

    goto :goto_e

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit p1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_e
    sget-object p0, Loen;->b:Loqm;

    nop

    nop

    nop

    nop

    iget-object p1, p0, Loqm;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p1, p0, Loqm;->k:Ljava/lang/String;

    nop

    sget-object p1, Loqm;->p:Lolx;

    nop

    nop

    nop

    nop

    sget-wide v2, Loqm;->a:J

    nop

    nop

    nop

    nop

    nop

    const-wide v4, 0x7fffffffffffffffL

    nop

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v6, 0x1

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    nop

    nop

    const-wide/16 v6, 0x3e8

    nop

    nop

    nop

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    iget-object p1, p0, Loqm;->b:Ljava/lang/Object;

    nop

    nop

    monitor-enter p1

    nop
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p0}, Loqm;->b()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_3

    nop

    nop

    nop

    nop

    sget-object v6, Loqm;->p:Lolx;

    nop

    nop

    nop

    sget-object v6, Loqm;->p:Lolx;

    nop

    nop

    sget-object v6, Looc;->a:Looc;

    nop

    nop

    iput-object v6, p0, Loqm;->i:Looc;

    nop

    nop

    iget-object v6, p0, Loqm;->c:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v6, p0, Loqm;->o:Lolt;

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_3
    iget v6, p0, Loqm;->d:I

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    iput v6, p0, Loqm;->d:I

    nop

    nop

    iget v6, p0, Loqm;->h:I

    nop

    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    iput v6, p0, Loqm;->h:I

    nop

    invoke-virtual {p0}, Loqm;->c()V

    iget-object v6, p0, Loqm;->l:Ljava/util/Map;

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Loql;

    nop

    nop

    nop

    if-nez v6, :cond_4

    nop

    nop

    nop

    nop

    new-instance v6, Loql;

    nop

    invoke-direct {v6}, Loql;-><init>()V

    iget-object v8, p0, Loqm;->l:Ljava/util/Map;

    nop

    nop

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    sget-object v8, Loqm;->p:Lolx;

    nop

    nop

    iget-object v8, p0, Loqm;->j:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget v8, v6, Loql;->a:I

    nop

    nop

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v8, v6, Loql;->a:I

    nop

    iget-object v6, p0, Loqm;->o:Lolt;

    nop

    nop

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    sub-long v10, v4, v8

    nop

    nop

    cmp-long v6, v10, v2

    nop

    nop

    nop

    nop

    if-lez v6, :cond_5

    nop

    add-long v4, v8, v2

    nop

    nop

    nop

    nop

    :cond_5
    iget-wide v8, p0, Loqm;->f:J

    nop

    nop

    cmp-long v6, v4, v8

    nop

    nop

    nop

    if-lez v6, :cond_7

    nop

    nop

    nop

    nop

    iput-wide v4, p0, Loqm;->f:J

    nop

    nop

    iget-object v4, p0, Loqm;->e:Ljava/util/concurrent/Future;

    nop

    nop

    if-eqz v4, :cond_6

    nop

    nop

    nop

    invoke-interface {v4, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_6
    iget-object p2, p0, Loqm;->n:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    new-instance v4, Lodu;

    nop

    nop

    nop

    nop

    const/4 v5, 0x6

    nop

    nop

    nop

    invoke-direct {v4, p0, v5, v7}, Lodu;-><init>(Ljava/lang/Object;I[B)V

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-interface {p2, v4, v2, v3, v5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    iput-object p2, p0, Loqm;->e:Ljava/util/concurrent/Future;

    nop

    nop

    :cond_7
    monitor-exit p1

    nop

    nop

    goto :goto_f

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit p1

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    :try_start_6
    const-string p0, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Lodi;->t(Ljava/lang/String;)V

    :goto_f
    monitor-exit v1

    nop

    return-void

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v1, Loen;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0}, Loen;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string p2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    const-string v1, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p2, Landroid/content/Intent;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v2, Landroid/content/ComponentName;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_8

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x15

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lodm;->d()Loei;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2d

    nop

    nop

    :goto_21
    const-string p2, "Local AnalyticsReceiver got"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    :goto_25
    const-string p0, "AnalyticsReceiver called with null intent"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    invoke-static {p1}, Lnar;->t(Landroid/content/Context;)Z

    move-result p0

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

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_9

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_a

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_12

    nop

    :goto_2a
    return-void

    nop

    nop

    :goto_2b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Loen;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method
