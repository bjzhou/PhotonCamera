.class public final Lcom/google/android/gms/analytics/AnalyticsReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private a:Ljaa;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Ljaa;

    if-nez v0, :cond_0

    new-instance v0, Ljaa;

    invoke-direct {v0}, Ljaa;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/AnalyticsReceiver;->a:Ljaa;

    :cond_0
    invoke-static {p1}, Liyz;->c(Landroid/content/Context;)Liyz;

    move-result-object v0

    invoke-virtual {v0}, Liyz;->d()Lizv;

    move-result-object v1

    if-nez p2, :cond_1

    const-string p1, "AnalyticsReceiver called with null intent"

    invoke-virtual {v1, p1}, Liyv;->t(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    iget-object v0, v0, Liyz;->c:Lizl;

    const-string v0, "Local AnalyticsReceiver got"

    invoke-virtual {v1, v0, p2}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {p1}, Ligo;->B(Landroid/content/Context;)Z

    move-result p2

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.google.android.gms.analytics.AnalyticsService"

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Ljaa;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez p2, :cond_2

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    :cond_2
    :try_start_1
    sget-object p2, Ljaa;->b:Ljoi;

    const/4 v0, 0x0

    if-nez p2, :cond_3

    new-instance p2, Ljoi;

    invoke-direct {p2, p1}, Ljoi;-><init>(Landroid/content/Context;)V

    sput-object p2, Ljaa;->b:Ljoi;

    sget-object p1, Ljaa;->b:Ljoi;

    iget-object p2, p1, Ljoi;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iput-boolean v0, p1, Ljoi;->g:Z

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    :cond_3
    :goto_0
    sget-object p1, Ljaa;->b:Ljoi;

    iget-object p2, p1, Ljoi;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object p2, p1, Ljoi;->k:Ljava/lang/String;

    sget-object p2, Ljoi;->p:Ljpw;

    sget-wide v3, Ljoi;->a:J

    const-wide v5, 0x7fffffffffffffffL

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    const-wide/16 v7, 0x1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-wide/16 v7, 0x3e8

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iget-object p2, p1, Ljoi;->b:Ljava/lang/Object;

    monitor-enter p2
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {p1}, Ljoi;->b()Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Ljoi;->p:Ljpw;

    sget-object v7, Ljoi;->p:Ljpw;

    sget-object v7, Ljly;->a:Ljly;

    iput-object v7, p1, Ljoi;->i:Ljly;

    iget-object v7, p1, Ljoi;->c:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v7, p1, Ljoi;->o:Ljhx;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    :cond_4
    iget v7, p1, Ljoi;->d:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Ljoi;->d:I

    iget v7, p1, Ljoi;->h:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p1, Ljoi;->h:I

    invoke-virtual {p1}, Ljoi;->c()V

    iget-object v7, p1, Ljoi;->l:Ljava/util/Map;

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lltf;

    if-nez v7, :cond_5

    new-instance v7, Lltf;

    invoke-direct {v7}, Lltf;-><init>()V

    iget-object v9, p1, Ljoi;->l:Ljava/util/Map;

    invoke-interface {v9, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object v8, Ljoi;->p:Ljpw;

    iget-object v8, p1, Ljoi;->j:Ljava/lang/String;

    iget v8, v7, Lltf;->a:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lltf;->a:I

    iget-object v7, p1, Ljoi;->o:Ljhx;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long v9, v5, v7

    cmp-long v11, v9, v3

    if-lez v11, :cond_6

    add-long v5, v7, v3

    goto :goto_1

    :cond_6
    :goto_1
    iget-wide v7, p1, Ljoi;->f:J

    cmp-long v9, v5, v7

    if-lez v9, :cond_8

    iput-wide v5, p1, Ljoi;->f:J

    iget-object v5, p1, Ljoi;->e:Ljava/util/concurrent/Future;

    if-eqz v5, :cond_7

    invoke-interface {v5, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    iget-object v0, p1, Ljoi;->n:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v5, Liwu;

    const/16 v6, 0xf

    invoke-direct {v5, p1, v6}, Liwu;-><init>(Ljoi;I)V

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v5, v3, v4, v6}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p1, Ljoi;->e:Ljava/util/concurrent/Future;

    :cond_8
    monitor-exit p2

    goto :goto_2

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_0
    move-exception p1

    :try_start_6
    const-string p1, "Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v1, p1}, Liyv;->t(Ljava/lang/String;)V

    :goto_2
    monitor-exit v2

    return-void

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :cond_9
    return-void
.end method
