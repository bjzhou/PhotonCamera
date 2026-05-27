.class public final Lizj;
.super Liyw;


# instance fields
.field public a:Z

.field public final c:Lize;

.field public final d:Lizm;

.field public e:J

.field public f:Z

.field private final g:Lizx;

.field private final h:Lizw;

.field private final i:Lizc;

.field private final j:Lizm;

.field private final k:Ljad;


# direct methods
.method protected constructor <init>(Liyz;)V
    .locals 1

    invoke-direct {p0, p1}, Liyw;-><init>(Liyz;)V

    new-instance v0, Lizw;

    invoke-direct {v0, p1}, Lizw;-><init>(Liyz;)V

    iput-object v0, p0, Lizj;->h:Lizw;

    new-instance v0, Lize;

    invoke-direct {v0, p1}, Lize;-><init>(Liyz;)V

    iput-object v0, p0, Lizj;->c:Lize;

    new-instance v0, Lizx;

    invoke-direct {v0, p1}, Lizx;-><init>(Liyz;)V

    iput-object v0, p0, Lizj;->g:Lizx;

    new-instance v0, Lizc;

    invoke-direct {v0, p1}, Lizc;-><init>(Liyz;)V

    iput-object v0, p0, Lizj;->i:Lizc;

    new-instance v0, Ljad;

    invoke-direct {v0}, Ljad;-><init>()V

    iput-object v0, p0, Lizj;->k:Ljad;

    new-instance v0, Lizg;

    invoke-direct {v0, p0, p1}, Lizg;-><init>(Lizj;Liyz;)V

    iput-object v0, p0, Lizj;->j:Lizm;

    new-instance v0, Lizh;

    invoke-direct {v0, p0, p1}, Lizh;-><init>(Lizj;Liyz;)V

    iput-object v0, p0, Lizj;->d:Lizm;

    return-void
.end method

.method private final H()V
    .locals 2

    iget-object v0, p0, Lizj;->j:Lizm;

    invoke-virtual {v0}, Lizm;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "All hits dispatched or no network/service. Going to power save mode"

    invoke-virtual {p0, v0}, Liyv;->q(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lizj;->j:Lizm;

    invoke-virtual {v0}, Lizm;->c()V

    invoke-virtual {p0}, Liyv;->h()Lizo;

    move-result-object v0

    iget-boolean v1, v0, Lizo;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lizo;->c()V

    :cond_1
    return-void
.end method

.method private final I()V
    .locals 11

    invoke-virtual {p0}, Liyv;->h()Lizo;

    move-result-object v0

    iget-boolean v1, v0, Lizo;->a:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lizo;->c:Z

    if-nez v1, :cond_9

    invoke-static {}, Liys;->a()V

    invoke-virtual {p0}, Liyw;->z()V

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lizj;->c:Lize;

    invoke-static {}, Liys;->a()V

    invoke-virtual {v4}, Liyw;->z()V

    sget-object v5, Lize;->c:Ljava/lang/String;

    invoke-virtual {v4}, Lize;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6, v5, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    move-wide v4, v1

    :goto_0
    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v6

    goto :goto_1

    :catchall_1
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v6

    :goto_1
    :try_start_4
    const-string v8, "Database error"

    invoke-virtual {v4, v8, v5, v6}, Liyv;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v4

    :goto_2
    if-eqz v7, :cond_3

    :try_start_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v4

    const-string v5, "Failed to get min/max hit times from local store"

    invoke-virtual {p0, v5, v4}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    move-wide v4, v1

    :goto_3
    cmp-long v6, v4, v1

    if-eqz v6, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-object v6, Lizq;->f:Ligo;

    invoke-virtual {v6}, Ligo;->D()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_9

    invoke-static {}, Lizl;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "Dispatch alarm scheduled (ms)"

    invoke-virtual {p0, v5, v4}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Liyw;->z()V

    iget-boolean v4, v0, Lizo;->a:Z

    const-string v5, "Receiver not registered"

    invoke-static {v4, v5}, Ljhp;->Y(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Liyv;->g()Lizl;

    invoke-static {}, Lizl;->b()J

    move-result-wide v4

    cmp-long v6, v4, v1

    if-lez v6, :cond_9

    invoke-virtual {v0}, Lizo;->c()V

    invoke-virtual {v0}, Liyv;->y()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lizo;->c:Z

    sget-object v2, Lizq;->C:Ligo;

    invoke-virtual {v2}, Ligo;->D()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    const-string v2, "Scheduling upload with JobScheduler"

    invoke-virtual {v0, v2}, Liyv;->q(Ljava/lang/String;)V

    invoke-virtual {v0}, Liyv;->d()Landroid/content/Context;

    move-result-object v2

    new-instance v6, Landroid/content/ComponentName;

    const-string v7, "com.google.android.gms.analytics.AnalyticsJobService"

    invoke-direct {v6, v2, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lizo;->b()I

    move-result v7

    new-instance v8, Landroid/os/PersistableBundle;

    invoke-direct {v8}, Landroid/os/PersistableBundle;-><init>()V

    const-string v9, "action"

    const-string v10, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-virtual {v8, v9, v10}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v9, v7, v6}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v9, v4, v5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v6

    add-long/2addr v4, v4

    invoke-virtual {v6, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Scheduling job. JobID"

    invoke-virtual {v0, v6, v5}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "jobscheduler"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Ljlz;->a:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_8

    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v2, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_7

    :cond_4
    sget-object v2, Ljlz;->b:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_6

    :try_start_6
    const-class v5, Landroid/os/UserHandle;

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception v2

    goto :goto_4

    :catch_4
    move-exception v2

    :goto_4
    const/4 v5, 0x6

    const-string v6, "JobSchedulerCompat"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "myUserId invocation illegal"

    invoke-static {v6, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/4 v2, 0x0

    :goto_5
    const-string v5, "DispatchAlarm"

    const-string v6, "com.google.android.gms"

    sget-object v7, Ljlz;->a:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_7

    const/4 v8, 0x4

    :try_start_7
    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v3

    aput-object v6, v8, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v8, v2

    const/4 v1, 0x3

    aput-object v5, v8, v1

    invoke-virtual {v7, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_7} :catch_5

    return-void

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v1

    :goto_6
    const-string v2, "error calling scheduleAsPackage"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    invoke-virtual {v0, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :cond_8
    :goto_7
    invoke-virtual {v0, v4}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void

    :cond_9
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 9

    iget-boolean v0, p0, Lizj;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lizl;->i()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lizj;->i:Lizc;

    invoke-virtual {v0}, Lizc;->D()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lizq;->z:Ligo;

    invoke-virtual {v0}, Ligo;->D()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p0, Lizj;->k:Ljad;

    invoke-virtual {v2, v0, v1}, Ljad;->c(J)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lizj;->k:Ljad;

    invoke-virtual {v0}, Ljad;->b()V

    const-string v0, "Connecting to service"

    invoke-virtual {p0, v0}, Liyv;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lizj;->i:Lizc;

    invoke-static {}, Liys;->a()V

    invoke-virtual {v0}, Liyw;->z()V

    iget-object v1, v0, Lizc;->c:Lizt;

    if-eqz v1, :cond_2

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Lizc;->a:Lizb;

    iget-object v2, v1, Lizb;->b:Lizc;

    invoke-static {}, Liys;->a()V

    new-instance v6, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.service.START"

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms"

    const-string v4, "com.google.android.gms.analytics.service.AnalyticsService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, v1, Lizb;->b:Lizc;

    invoke-virtual {v2}, Liyv;->d()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_package_name"

    invoke-virtual {v6, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljhw;->a()Ljhw;

    move-result-object v3

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v1, Lizb;->c:Lizt;

    const/4 v5, 0x1

    iput-boolean v5, v1, Lizb;->a:Z

    iget-object v5, v1, Lizb;->b:Lizc;

    iget-object v7, v5, Lizc;->a:Lizb;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x81

    invoke-virtual/range {v3 .. v8}, Ljhw;->c(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v3

    iget-object v4, v1, Lizb;->b:Lizc;

    const-string v5, "Bind to service requested"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v4, 0x0

    if-nez v3, :cond_3

    iput-boolean v4, v1, Lizb;->a:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_1
    sget-object v3, Lizq;->y:Ligo;

    invoke-virtual {v3}, Ligo;->D()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    iget-object v3, v1, Lizb;->b:Lizc;

    const-string v5, "Wait for service connect was interrupted"

    invoke-virtual {v3, v5}, Liyv;->t(Ljava/lang/String;)V

    :goto_0
    iput-boolean v4, v1, Lizb;->a:Z

    iget-object v3, v1, Lizb;->c:Lizt;

    iput-object v2, v1, Lizb;->c:Lizt;

    if-nez v3, :cond_4

    iget-object v2, v1, Lizb;->b:Lizc;

    const-string v4, "Successfully bound to service but never got onServiceConnected callback"

    invoke-virtual {v2, v4}, Liyv;->n(Ljava/lang/String;)V

    :cond_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v2, v3

    :goto_1
    if-eqz v2, :cond_5

    iput-object v2, v0, Lizc;->c:Lizt;

    invoke-virtual {v0}, Lizc;->C()V

    :goto_2
    const-string v0, "Connected to service"

    invoke-virtual {p0, v0}, Liyv;->q(Ljava/lang/String;)V

    iget-object v0, p0, Lizj;->k:Ljad;

    invoke-virtual {v0}, Ljad;->a()V

    invoke-virtual {p0}, Lizj;->D()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_5
    return-void
.end method

.method public final D()V
    .locals 5

    invoke-static {}, Liys;->a()V

    invoke-static {}, Liys;->a()V

    invoke-virtual {p0}, Liyw;->z()V

    invoke-static {}, Lizl;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service client disabled. Can\'t dispatch local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Liyv;->t(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lizj;->i:Lizc;

    invoke-virtual {v0}, Lizc;->D()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Service not connected"

    invoke-virtual {p0, v0}, Liyv;->q(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "Dispatching local hits to device AnalyticsService"

    invoke-virtual {p0, v0}, Liyv;->q(Ljava/lang/String;)V

    :cond_3
    :try_start_0
    iget-object v0, p0, Lizj;->c:Lize;

    invoke-static {}, Lizl;->e()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lize;->c(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_5

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lizs;

    iget-object v2, p0, Lizj;->i:Lizc;

    invoke-virtual {v2, v1}, Lizc;->E(Lizs;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lizj;->F()V

    return-void

    :cond_4
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v2, p0, Lizj;->c:Lize;

    iget-wide v3, v1, Lizs;->b:J

    invoke-virtual {v2, v3, v4}, Lize;->D(J)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to remove hit that was send for delivery"

    invoke-virtual {p0, v1, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lizj;->H()V

    return-void

    :cond_5
    :try_start_2
    invoke-virtual {p0}, Lizj;->F()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Failed to read hits from store"

    invoke-virtual {p0, v1, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lizj;->H()V

    return-void
.end method

.method public final E()V
    .locals 1

    invoke-virtual {p0}, Liyw;->z()V

    invoke-static {}, Liys;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lizj;->f:Z

    iget-object v0, p0, Lizj;->i:Lizc;

    invoke-virtual {v0}, Lizc;->b()V

    invoke-virtual {p0}, Lizj;->F()V

    return-void
.end method

.method public final F()V
    .locals 9

    invoke-static {}, Liys;->a()V

    invoke-virtual {p0}, Liyw;->z()V

    iget-boolean v0, p0, Lizj;->f:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-virtual {p0}, Lizj;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_e

    iget-object v0, p0, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lizj;->h:Lizw;

    invoke-virtual {v0}, Lizw;->c()V

    invoke-direct {p0}, Lizj;->H()V

    return-void

    :cond_1
    sget-object v0, Lizq;->w:Ligo;

    invoke-virtual {v0}, Ligo;->D()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lizj;->h:Lizw;

    invoke-virtual {v0}, Lizw;->b()V

    iget-boolean v1, v0, Lizw;->c:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lizw;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v0}, Lizw;->d()Z

    move-result v1

    iput-boolean v1, v0, Lizw;->d:Z

    iget-object v1, v0, Lizw;->b:Liyz;

    invoke-virtual {v1}, Liyz;->d()Lizv;

    move-result-object v1

    iget-boolean v4, v0, Lizw;->d:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "Registering connectivity change receiver. Network connected"

    invoke-virtual {v1, v5, v4}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lizw;->c:Z

    :cond_2
    iget-object v0, p0, Lizj;->h:Lizw;

    iget-boolean v1, v0, Lizw;->c:Z

    if-nez v1, :cond_3

    iget-object v1, v0, Lizw;->b:Liyz;

    invoke-virtual {v1}, Liyz;->d()Lizv;

    move-result-object v1

    const-string v4, "Connectivity unknown. Receiver not registered"

    invoke-virtual {v1, v4}, Liyv;->t(Ljava/lang/String;)V

    :cond_3
    iget-boolean v0, v0, Lizw;->d:Z

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lizj;->H()V

    invoke-direct {p0}, Lizj;->I()V

    return-void

    :cond_5
    :goto_0
    invoke-direct {p0}, Lizj;->I()V

    invoke-virtual {p0}, Lizj;->b()J

    move-result-wide v0

    invoke-virtual {p0}, Liyv;->j()Lizz;

    move-result-object v4

    invoke-virtual {v4}, Lizz;->b()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-eqz v6, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v6, v4, v2

    if-lez v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {}, Lizl;->c()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_1
    goto :goto_2

    :cond_7
    invoke-static {}, Lizl;->c()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "Dispatch scheduled (ms)"

    invoke-virtual {p0, v1, v0}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lizj;->j:Lizm;

    invoke-virtual {v0}, Lizm;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lizj;->j:Lizm;

    iget-wide v6, v0, Lizm;->d:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_8

    move-wide v0, v2

    goto :goto_3

    :cond_8
    iget-object v1, v0, Lizm;->b:Liyz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v0, v0, Lizm;->d:J

    sub-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    :goto_3
    add-long/2addr v4, v0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Lizj;->j:Lizm;

    invoke-virtual {v4}, Lizm;->e()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    cmp-long v5, v0, v2

    if-gez v5, :cond_a

    invoke-virtual {v4}, Lizm;->c()V

    return-void

    :cond_a
    iget-object v5, v4, Lizm;->b:Liyz;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v4, Lizm;->d:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    sub-long/2addr v0, v5

    cmp-long v5, v0, v2

    if-gez v5, :cond_b

    goto :goto_4

    :cond_b
    move-wide v2, v0

    :goto_4
    invoke-virtual {v4}, Lizm;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v4, Lizm;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Lizm;->b()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, v4, Lizm;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v4, Lizm;->b:Liyz;

    invoke-virtual {v0}, Liyz;->d()Lizv;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "Failed to adjust delayed post. time"

    invoke-virtual {v0, v2, v1}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_c
    :goto_5
    return-void

    :cond_d
    iget-object v0, p0, Lizj;->j:Lizm;

    invoke-virtual {v0, v4, v5}, Lizm;->d(J)V

    return-void

    :cond_e
    :goto_6
    iget-object v0, p0, Lizj;->h:Lizw;

    invoke-virtual {v0}, Lizw;->c()V

    invoke-direct {p0}, Lizj;->H()V

    return-void
.end method

.method public final G(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Liyv;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ljid;->b(Landroid/content/Context;)Lkgd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkgd;->l(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final a()V
    .locals 1

    iget-object v0, p0, Lizj;->c:Lize;

    invoke-virtual {v0}, Liyw;->A()V

    iget-object v0, p0, Lizj;->g:Lizx;

    invoke-virtual {v0}, Liyw;->A()V

    iget-object v0, p0, Lizj;->i:Lizc;

    invoke-virtual {v0}, Liyw;->A()V

    return-void
.end method

.method public final b()J
    .locals 4

    sget-object v0, Lizq;->c:Ligo;

    invoke-virtual {v0}, Ligo;->D()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0}, Liyv;->k()Ljae;

    move-result-object v2

    invoke-virtual {v2}, Liyw;->z()V

    iget-boolean v2, v2, Ljae;->d:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Liyv;->k()Ljae;

    move-result-object v0

    invoke-virtual {v0}, Liyw;->z()V

    iget v0, v0, Ljae;->e:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    :cond_0
    return-wide v0
.end method

.method public final c(Lizp;)V
    .locals 28

    move-object/from16 v1, p0

    const-string v2, "Error closing http compressed post connection output stream"

    const-string v3, "Failed to commit local dispatch transaction"

    iget-wide v4, v1, Lizj;->e:J

    invoke-static {}, Liys;->a()V

    invoke-virtual/range {p0 .. p0}, Liyw;->z()V

    invoke-virtual/range {p0 .. p0}, Liyv;->j()Lizz;

    move-result-object v0

    invoke-virtual {v0}, Lizz;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    goto :goto_0

    :cond_0
    const-wide/16 v6, -0x1

    :goto_0
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v6, "Dispatching local hits. Elapsed time since last dispatch (ms)"

    invoke-virtual {v1, v6, v0}, Liyv;->m(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lizj;->C()V

    :try_start_0
    invoke-static {}, Liys;->a()V

    invoke-virtual/range {p0 .. p0}, Liyw;->z()V

    const-string v0, "Dispatching a batch of local hits"

    invoke-virtual {v1, v0}, Liyv;->q(Ljava/lang/String;)V

    iget-object v0, v1, Lizj;->i:Lizc;

    invoke-virtual {v0}, Lizc;->D()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    iget-object v7, v1, Lizj;->g:Lizx;

    invoke-virtual {v7}, Lizx;->G()Z

    move-result v7

    xor-int/2addr v7, v6

    if-eqz v0, :cond_1

    if-eqz v7, :cond_1

    const-string v0, "No network or service available. Will retry later"

    invoke-virtual {v1, v0}, Liyv;->q(Ljava/lang/String;)V

    goto/16 :goto_18

    :cond_1
    invoke-static {}, Lizl;->e()I

    move-result v0

    invoke-static {}, Lizl;->d()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v11, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_14

    :goto_1
    :try_start_1
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Liyw;->z()V

    invoke-virtual {v0}, Lize;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    invoke-interface {v7}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    :try_start_2
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0, v11, v12}, Lize;->c(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v0, "Store is empty, nothing to dispatch"

    invoke-virtual {v1, v0}, Liyv;->q(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lizj;->H()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->G()V

    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->F()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_14

    goto/16 :goto_18

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v3, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_14

    goto :goto_2

    :cond_2
    :try_start_5
    const-string v13, "Hits loaded from store. count"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v1, v13, v14}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lizs;

    iget-wide v14, v14, Lizs;->b:J

    cmp-long v16, v14, v8

    if-nez v16, :cond_3

    const-string v2, "Database contains successfully uploaded hit"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v7, v0}, Liyv;->p(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lizj;->H()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    :try_start_7
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->G()V

    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->F()V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_14

    goto/16 :goto_18

    :catch_1
    move-exception v0

    :try_start_8
    invoke-virtual {v1, v3, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lizj;->H()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_14

    goto/16 :goto_18

    :cond_4
    :try_start_9
    iget-object v13, v1, Lizj;->i:Lizc;

    invoke-virtual {v13}, Lizc;->D()Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_6

    const-string v13, "Service connected, sending hits to the service"

    invoke-virtual {v1, v13}, Liyv;->q(Ljava/lang/String;)V

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lizs;

    iget-object v15, v1, Lizj;->i:Lizc;

    invoke-virtual {v15, v13}, Lizc;->E(Lizs;)Z

    move-result v15

    if-nez v15, :cond_5

    move-wide/from16 v16, v11

    goto :goto_4

    :cond_5
    move-wide/from16 v16, v11

    iget-wide v10, v13, Lizs;->b:J

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    invoke-interface {v0, v13}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const-string v10, "Hit sent do device AnalyticsService for delivery"

    invoke-virtual {v1, v10, v13}, Liyv;->m(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    :try_start_a
    iget-object v10, v1, Lizj;->c:Lize;

    iget-wide v11, v13, Lizs;->b:J

    invoke-virtual {v10, v11, v12}, Lize;->D(J)V

    iget-wide v10, v13, Lizs;->b:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-wide/from16 v11, v16

    goto :goto_3

    :catch_2
    move-exception v0

    :try_start_b
    const-string v2, "Failed to remove hit that was send for delivery"

    invoke-virtual {v1, v2, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lizj;->H()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :try_start_c
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->G()V

    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->F()V
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_14

    goto/16 :goto_18

    :catch_3
    move-exception v0

    :try_start_d
    invoke-virtual {v1, v3, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14

    goto :goto_2

    :cond_6
    move-wide/from16 v16, v11

    :goto_4
    :try_start_e
    iget-object v10, v1, Lizj;->g:Lizx;

    invoke-virtual {v10}, Lizx;->G()Z

    move-result v10

    if-eqz v10, :cond_33

    iget-object v10, v1, Lizj;->g:Lizx;

    invoke-static {}, Liys;->a()V

    invoke-virtual {v10}, Liyw;->z()V

    invoke-virtual {v10}, Liyv;->g()Lizl;

    move-result-object v11

    invoke-virtual {v11}, Lizl;->a()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, v10, Lizx;->c:Ljad;

    sget-object v12, Lizq;->t:Ligo;

    invoke-virtual {v12}, Ligo;->D()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v18, 0x3e8

    mul-long v12, v12, v18

    invoke-virtual {v11, v12, v13}, Ljad;->c(J)Z

    move-result v11

    if-nez v11, :cond_7

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_6

    :cond_7
    sget-object v11, Lizq;->n:Ligo;

    invoke-virtual {v11}, Ligo;->D()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "BATCH_BY_SESSION"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v11, 0x1

    goto :goto_5

    :cond_8
    const-string v12, "BATCH_BY_TIME"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    const/4 v11, 0x1

    goto :goto_5

    :cond_9
    const-string v12, "BATCH_BY_BRUTE_FORCE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    const/4 v11, 0x1

    goto :goto_5

    :cond_a
    const-string v12, "BATCH_BY_COUNT"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/4 v11, 0x1

    goto :goto_5

    :cond_b
    const-string v12, "BATCH_BY_SIZE"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v11, 0x1

    goto :goto_5

    :cond_c
    const/4 v11, 0x0

    :goto_5
    sget-object v12, Lizq;->o:Ligo;

    invoke-virtual {v12}, Ligo;->D()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "GZIP"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eq v6, v12, :cond_d

    const/4 v12, 0x0

    goto :goto_6

    :cond_d
    const/4 v12, 0x1

    goto :goto_6

    :cond_e
    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_6
    if-eqz v11, :cond_23

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v6

    invoke-static {v11}, Ljhp;->S(Z)V

    const-string v11, "Uploading batched hits. compression, count"

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v11, v15, v13}, Liyv;->s(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v24, 0x0

    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lizs;

    invoke-static {v6}, Ljhp;->ab(Ljava/lang/Object;)V

    add-int/lit8 v0, v24, 0x1

    invoke-static {}, Lizl;->d()I

    move-result v14

    if-le v0, v14, :cond_f

    move-wide/from16 v25, v8

    goto/16 :goto_9

    :cond_f
    const/4 v14, 0x0

    invoke-virtual {v10, v6, v14}, Lizx;->b(Lizs;Z)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_10

    invoke-virtual {v10}, Liyv;->i()Lizv;

    move-result-object v0

    const-string v14, "Error formatting hit"

    invoke-virtual {v0, v6, v14}, Lizv;->b(Lizs;Ljava/lang/String;)V

    move-wide/from16 v25, v8

    goto :goto_8

    :cond_10
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    move/from16 v19, v0

    array-length v0, v14

    sget-object v20, Lizq;->p:Ligo;

    invoke-virtual/range {v20 .. v20}, Ligo;->D()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    move-wide/from16 v25, v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v0, v8, :cond_11

    invoke-virtual {v10}, Liyv;->i()Lizv;

    move-result-object v0

    const-string v8, "Hit size exceeds the maximum size limit"

    invoke-virtual {v0, v6, v8}, Lizv;->b(Lizs;Ljava/lang/String;)V

    goto :goto_8

    :cond_11
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    if-lez v8, :cond_12

    add-int/lit8 v0, v0, 0x1

    :cond_12
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    add-int/2addr v8, v0

    sget-object v0, Lizq;->r:Ligo;

    invoke-virtual {v0}, Ligo;->D()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    if-gt v8, v0, :cond_16

    :try_start_f
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_13

    sget-object v0, Lizx;->a:[B

    invoke-virtual {v11, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    :cond_13
    invoke-virtual {v11, v14}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    move/from16 v24, v19

    goto :goto_8

    :catch_4
    move-exception v0

    :try_start_10
    const-string v8, "Failed to write payload when batching hits"

    invoke-virtual {v10, v8, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_8
    iget-wide v8, v6, Lizs;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-gtz v18, :cond_14

    iget v0, v6, Lizs;->d:I

    move/from16 v18, v0

    :cond_14
    move-wide/from16 v8, v25

    const/4 v6, 0x1

    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_15
    move-wide/from16 v25, v8

    :cond_16
    :goto_9
    if-nez v24, :cond_17

    move-object/from16 v27, v13

    goto/16 :goto_11

    :cond_17
    invoke-virtual {v10}, Lizx;->C()Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_18

    const-string v0, "Failed to build batching endpoint url"

    invoke-virtual {v10, v0}, Liyv;->n(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    goto/16 :goto_15

    :cond_18
    if-eqz v12, :cond_20

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-static {v6}, Ljhp;->ab(Ljava/lang/Object;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :try_start_11
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v8}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v9, v6}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    array-length v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    int-to-long v14, v9

    array-length v6, v6
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    const-wide/16 v18, 0x64

    mul-long v14, v14, v18

    move-object/from16 v27, v13

    int-to-long v12, v6

    :try_start_12
    div-long/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    const/16 v19, 0x3

    const-string v20, "POST compressed size, ratio %, url"

    move-object/from16 v18, v10

    move-object/from16 v21, v11

    move-object/from16 v23, v0

    invoke-super/range {v18 .. v23}, Liyv;->w(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-le v9, v6, :cond_19

    const-string v12, "Compressed payload is larger then uncompressed. compressed, uncompressed"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v12, v11, v6}, Liyv;->v(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_19
    invoke-static {}, Lizx;->x()V

    invoke-virtual {v10, v0}, Lizx;->c(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v6
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    const/4 v11, 0x1

    :try_start_13
    invoke-virtual {v6, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string v0, "Content-Encoding"

    const-string v11, "gzip"

    invoke-virtual {v6, v0, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v9
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    :try_start_14
    invoke-virtual {v9, v8}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :try_start_15
    invoke-virtual {v10, v6}, Lizx;->F(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v8, 0xc8

    if-ne v0, v8, :cond_1a

    invoke-virtual {v10}, Liyv;->f()Liyu;

    move-result-object v0

    invoke-virtual {v0}, Liyu;->c()V

    const/16 v0, 0xc8

    :cond_1a
    const-string v8, "POST status"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Liyv;->m(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_6
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    if-eqz v6, :cond_1b

    :try_start_16
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    :cond_1b
    move v14, v0

    goto :goto_10

    :catchall_0
    move-exception v0

    move-object v7, v6

    goto :goto_a

    :catch_5
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object v7, v6

    const/4 v9, 0x0

    :goto_a
    move-object v6, v0

    goto :goto_e

    :catch_6
    move-exception v0

    const/4 v9, 0x0

    goto :goto_c

    :catch_7
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    goto :goto_e

    :catch_8
    move-exception v0

    move-object/from16 v27, v13

    :goto_b
    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_c
    :try_start_17
    const-string v8, "Network compressed POST connection error"

    invoke-virtual {v10, v8, v0}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    if-eqz v9, :cond_1c

    :try_start_18
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    goto :goto_d

    :catch_9
    move-exception v0

    move-object v8, v0

    :try_start_19
    invoke-virtual {v10, v2, v8}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1c
    :goto_d
    if-eqz v6, :cond_1d

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    const/4 v14, 0x0

    goto :goto_10

    :cond_1d
    const/4 v14, 0x0

    goto :goto_10

    :catchall_3
    move-exception v0

    move-object v7, v6

    move-object v6, v0

    :goto_e
    if-eqz v9, :cond_1e

    :try_start_1a
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_f

    :catch_a
    move-exception v0

    move-object v8, v0

    :try_start_1b
    invoke-virtual {v10, v2, v8}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1e
    :goto_f
    if-eqz v7, :cond_1f

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1f
    throw v6

    :cond_20
    move-object/from16 v27, v13

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Lizx;->H(Ljava/net/URL;[B)I

    move-result v14

    :goto_10
    const/16 v6, 0xc8

    if-ne v14, v6, :cond_21

    const-string v0, "Batched upload completed. Hits batched"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_11
    move-object/from16 v13, v27

    goto/16 :goto_15

    :cond_21
    const-string v0, "Network error uploading hits. status code"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v0, v6}, Liyv;->r(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v10}, Liyv;->g()Lizl;

    move-result-object v0

    invoke-virtual {v0}, Lizl;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "Server instructed the client to stop batching"

    invoke-virtual {v10, v0}, Liyv;->t(Ljava/lang/String;)V

    iget-object v0, v10, Lizx;->c:Ljad;

    invoke-virtual {v0}, Ljad;->b()V

    :cond_22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    goto/16 :goto_15

    :cond_23
    move-wide/from16 v25, v8

    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v13, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lizs;

    invoke-static {v6}, Ljhp;->ab(Ljava/lang/Object;)V

    iget-boolean v8, v6, Lizs;->e:Z

    const/4 v9, 0x1

    xor-int/2addr v8, v9

    invoke-virtual {v10, v6, v8}, Lizx;->b(Lizs;Z)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_25

    invoke-virtual {v10}, Liyv;->i()Lizv;

    move-result-object v8

    const-string v9, "Error formatting hit for upload"

    invoke-virtual {v8, v6, v9}, Lizv;->b(Lizs;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/16 v11, 0xc8

    goto/16 :goto_14

    :cond_25
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sget-object v11, Lizq;->m:Ligo;

    invoke-virtual {v11}, Ligo;->D()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v9, v11, :cond_2c

    invoke-virtual {v10, v6, v8}, Lizx;->E(Lizs;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    if-nez v8, :cond_26

    const-string v0, "Failed to build collect GET endpoint url"

    invoke-virtual {v10, v0}, Liyv;->n(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_26
    const-string v9, "GET request"

    invoke-virtual {v10, v9, v8}, Liyv;->m(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :try_start_1c
    invoke-virtual {v10, v8}, Lizx;->c(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v8
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :try_start_1d
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v10, v8}, Lizx;->F(Ljava/net/HttpURLConnection;)V

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    const/16 v11, 0xc8

    if-ne v9, v11, :cond_27

    invoke-virtual {v10}, Liyv;->f()Liyu;

    move-result-object v9

    invoke-virtual {v9}, Liyu;->c()V

    const/16 v9, 0xc8

    :cond_27
    const-string v11, "GET status"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Liyv;->m(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_b
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    if-eqz v8, :cond_28

    :try_start_1e
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    :cond_28
    const/16 v8, 0xc8

    if-eq v9, v8, :cond_29

    goto/16 :goto_15

    :cond_29
    const/4 v8, 0x0

    const/16 v11, 0xc8

    goto/16 :goto_14

    :catchall_4
    move-exception v0

    goto :goto_13

    :catch_b
    move-exception v0

    goto :goto_12

    :catchall_5
    move-exception v0

    const/4 v8, 0x0

    goto :goto_13

    :catch_c
    move-exception v0

    const/4 v8, 0x0

    :goto_12
    :try_start_1f
    const-string v6, "Network GET connection error"

    invoke-virtual {v10, v6, v0}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    if-eqz v8, :cond_2a

    :try_start_20
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_15

    :cond_2a
    goto :goto_15

    :catchall_6
    move-exception v0

    :goto_13
    if-eqz v8, :cond_2b

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2b
    throw v0

    :cond_2c
    const/4 v8, 0x0

    invoke-virtual {v10, v6, v8}, Lizx;->b(Lizs;Z)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_2d

    invoke-virtual {v10}, Liyv;->i()Lizv;

    move-result-object v9

    const-string v11, "Error formatting hit for POST upload"

    invoke-virtual {v9, v6, v11}, Lizv;->b(Lizs;Ljava/lang/String;)V

    const/16 v11, 0xc8

    goto :goto_14

    :cond_2d
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    array-length v11, v9

    sget-object v12, Lizq;->q:Ligo;

    invoke-virtual {v12}, Ligo;->D()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-le v11, v12, :cond_2e

    invoke-virtual {v10}, Liyv;->i()Lizv;

    move-result-object v9

    const-string v11, "Hit payload exceeds size limit"

    invoke-virtual {v9, v6, v11}, Lizv;->b(Lizs;Ljava/lang/String;)V

    const/16 v11, 0xc8

    goto :goto_14

    :cond_2e
    invoke-virtual {v10, v6}, Lizx;->D(Lizs;)Ljava/net/URL;

    move-result-object v11

    if-nez v11, :cond_2f

    const-string v0, "Failed to build collect POST endpoint url"

    invoke-virtual {v10, v0}, Liyv;->n(Ljava/lang/String;)V

    goto :goto_15

    :cond_2f
    iget v12, v6, Lizs;->d:I

    invoke-virtual {v10, v11, v9}, Lizx;->H(Ljava/net/URL;[B)I

    move-result v9

    const/16 v11, 0xc8

    if-eq v9, v11, :cond_30

    goto :goto_15

    :cond_30
    :goto_14
    iget-wide v14, v6, Lizs;->b:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {}, Lizl;->e()I

    move-result v9

    if-lt v6, v9, :cond_24

    goto :goto_15

    :cond_31
    :goto_15
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide/from16 v8, v25

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_7

    goto :goto_16

    :cond_32
    :try_start_21
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0, v13}, Lize;->E(Ljava/util/List;)V

    invoke-interface {v7, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_21
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_21 .. :try_end_21} :catch_d
    .catchall {:try_start_21 .. :try_end_21} :catchall_7

    goto :goto_17

    :catch_d
    move-exception v0

    :try_start_22
    const-string v2, "Failed to remove successfully uploaded hits"

    invoke-virtual {v1, v2, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lizj;->H()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_7

    :try_start_23
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->G()V

    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->F()V
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_23 .. :try_end_23} :catch_e
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_14

    goto :goto_18

    :catch_e
    move-exception v0

    :try_start_24
    invoke-virtual {v1, v3, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_14

    goto/16 :goto_2

    :cond_33
    move-wide/from16 v25, v8

    :goto_17
    :try_start_25
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    if-eqz v0, :cond_34

    :try_start_26
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->G()V

    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->F()V
    :try_end_26
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_26} :catch_f
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_14

    goto :goto_18

    :catch_f
    move-exception v0

    :try_start_27
    invoke-virtual {v1, v3, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_14

    goto/16 :goto_2

    :cond_34
    :try_start_28
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->G()V

    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->F()V
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_28 .. :try_end_28} :catch_10
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_14

    move-wide/from16 v11, v16

    const/4 v6, 0x1

    goto/16 :goto_1

    :catch_10
    move-exception v0

    :try_start_29
    invoke-virtual {v1, v3, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_14

    goto/16 :goto_2

    :catch_11
    move-exception v0

    :try_start_2a
    const-string v2, "Failed to read hits from persisted store"

    invoke-virtual {v1, v2, v0}, Liyv;->u(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lizj;->H()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_7

    :try_start_2b
    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->G()V

    iget-object v0, v1, Lizj;->c:Lize;

    invoke-virtual {v0}, Lize;->F()V
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2b .. :try_end_2b} :catch_12
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_14

    goto :goto_18

    :catch_12
    move-exception v0

    :try_start_2c
    invoke-virtual {v1, v3, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_14

    goto/16 :goto_2

    :catchall_7
    move-exception v0

    :try_start_2d
    iget-object v2, v1, Lizj;->c:Lize;

    invoke-virtual {v2}, Lize;->G()V

    iget-object v2, v1, Lizj;->c:Lize;

    invoke-virtual {v2}, Lize;->F()V
    :try_end_2d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2d .. :try_end_2d} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_14

    :try_start_2e
    throw v0

    :catch_13
    move-exception v0

    invoke-virtual {v1, v3, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :goto_18
    invoke-virtual/range {p0 .. p0}, Liyv;->j()Lizz;

    move-result-object v0

    invoke-virtual {v0}, Lizz;->c()V

    invoke-virtual/range {p0 .. p0}, Lizj;->F()V

    if-eqz p1, :cond_35

    invoke-interface/range {p1 .. p1}, Lizp;->a()V

    :cond_35
    iget-wide v2, v1, Lizj;->e:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_36

    iget-object v0, v1, Lizj;->h:Lizw;

    invoke-virtual {v0}, Lizw;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.google.analytics.RADIO_POWERED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v3, Lizw;->a:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_14

    return-void

    :catch_14
    move-exception v0

    const-string v2, "Local dispatch failed"

    invoke-virtual {v1, v2, v0}, Liyv;->o(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Liyv;->j()Lizz;

    move-result-object v0

    invoke-virtual {v0}, Lizz;->c()V

    invoke-virtual/range {p0 .. p0}, Lizj;->F()V

    if-eqz p1, :cond_36

    invoke-interface/range {p1 .. p1}, Lizp;->a()V

    return-void

    :cond_36
    return-void
.end method
