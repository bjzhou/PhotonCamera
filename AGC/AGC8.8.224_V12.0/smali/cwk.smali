.class public final Lcwk;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public constructor <init>(Lcob;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput p4, p0, Lcwk;->d:I

    iput-object p1, p0, Lcwk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcwk;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcwk;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcwl;Lklv;Lgxz;I)V
    .locals 0

    iput p4, p0, Lcwk;->d:I

    iput-object p1, p0, Lcwk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcwk;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcwk;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lepk;Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
    .locals 0

    iput p4, p0, Lcwk;->d:I

    iput-object p1, p0, Lcwk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcwk;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcwk;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Lgxy;I)V
    .locals 0

    iput p4, p0, Lcwk;->d:I

    iput-object p1, p0, Lcwk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcwk;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcwk;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkgz;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 0

    iput p4, p0, Lcwk;->d:I

    iput-object p1, p0, Lcwk;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcwk;->a:Ljava/lang/Object;

    iput-object p3, p0, Lcwk;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lltg;Landroid/view/View;Landroid/content/BroadcastReceiver$PendingResult;I)V
    .locals 0

    iput p4, p0, Lcwk;->d:I

    iput-object p1, p0, Lcwk;->a:Ljava/lang/Object;

    iput-object p2, p0, Lcwk;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcwk;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    iget v0, p0, Lcwk;->d:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Llte;->a:Ljava/lang/String;

    const-string v1, "Failed to snapshot hierarchy: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcwk;->c:Ljava/lang/Object;

    check-cast p1, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {p1}, Llte;->a(Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcwk;->c:Ljava/lang/Object;

    check-cast p1, Lkgz;

    iget-object p1, p1, Lkgz;->a:Lkaq;

    iget-object v0, p0, Lcwk;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to allocate pending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " this may leak"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lkaq;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcwk;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p1, p0, Lcwk;->c:Ljava/lang/Object;

    check-cast p1, Lkgz;

    invoke-static {p1}, Lkgz;->g(Lkgz;)V

    iget-object p1, p0, Lcwk;->c:Ljava/lang/Object;

    check-cast p1, Lkgz;

    invoke-virtual {p1}, Lkgz;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_1
    sget-object v0, Lgxi;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0xd1b

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Ignoring %s for %s"

    iget-object v1, p0, Lcwk;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcwk;->c:Ljava/lang/Object;

    invoke-interface {p1, v0, v1, v2}, Lnah;->z(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lcwk;->c:Ljava/lang/Object;

    check-cast v0, Lepk;

    invoke-virtual {v0}, Lepk;->e()V

    iget-object v0, p0, Lcwk;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    sget-object v0, Lepl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface {v0, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x6e1

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    iget-object v0, p0, Lcwk;->c:Ljava/lang/Object;

    check-cast v0, Lepk;

    iget v0, v0, Lepk;->d:I

    const-string v1, "Error executing first stage for task %s"

    invoke-interface {p1, v1, v0}, Lnah;->p(Ljava/lang/String;I)V

    return-void

    :pswitch_3
    sget-object v0, Lcob;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Retrieving user opt in failed."

    const/16 v2, 0x167

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcwk;->c:Ljava/lang/Object;

    iget-object v1, p0, Lcwk;->b:Ljava/lang/Object;

    check-cast v1, Lgxz;

    check-cast v0, Lcwl;

    invoke-virtual {v0, v1, p1}, Lcwl;->c(Lgxz;Ljava/lang/Throwable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 20

    move-object/from16 v7, p0

    iget v0, v7, Lcwk;->d:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Void;

    goto/16 :goto_3

    :pswitch_0
    move-object/from16 v0, p1

    check-cast v0, Ljava/util/Set;

    iget-object v1, v7, Lcwk;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v2, Lkgz;

    invoke-static {v2}, Lkgz;->g(Lkgz;)V

    iget-object v2, v7, Lcwk;->c:Ljava/lang/Object;

    iget-object v3, v7, Lcwk;->a:Ljava/lang/Object;

    check-cast v2, Lkgz;

    invoke-virtual {v2, v3, v0}, Lkgz;->b(Ljava/util/Set;Ljava/util/Set;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_1
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Void;

    iget-object v0, v7, Lcwk;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_2
    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    iget-object v0, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v0, Lepk;

    iget-object v0, v0, Lepk;->g:Lepl;

    iget-object v0, v0, Lepl;->d:Ljava/util/concurrent/Executor;

    iget-object v3, v7, Lcwk;->a:Ljava/lang/Object;

    iget-object v4, v7, Lcwk;->b:Ljava/lang/Object;

    new-instance v8, Leow;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v8

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Leow;-><init>(Lcwk;Ljava/lang/Runnable;Ljava/lang/Runnable;I[B)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    move-object/from16 v0, p1

    check-cast v0, Lnaa;

    iget-object v1, v7, Lcwk;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Lnaa;->g()Z

    move-result v0

    check-cast v1, Lcob;

    iput-boolean v0, v1, Lcob;->d:Z

    iget-object v0, v7, Lcwk;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcob;

    iget-boolean v4, v1, Lcob;->d:Z

    if-eqz v4, :cond_6

    iget-object v0, v1, Lcob;->f:Landroid/content/Context;

    iget-object v1, v1, Lcob;->c:Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "jobscheduler"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/job/JobScheduler;

    if-nez v4, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v4}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const v8, 0xcee2684

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getId()I

    move-result v9

    if-ne v9, v8, :cond_1

    move-object v2, v6

    goto :goto_0

    :cond_2
    :goto_0
    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, v8, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    sget-wide v5, Lcmw;->e:J

    invoke-virtual {v0, v5, v6}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v5

    if-ne v1, v5, :cond_3

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v1

    sget-wide v5, Lcmw;->e:J

    cmp-long v8, v1, v5

    if-nez v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v0

    if-ne v0, v3, :cond_5

    :goto_1
    iget-object v0, v7, Lcwk;->c:Ljava/lang/Object;

    iget-object v1, v7, Lcwk;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    check-cast v0, Lcob;

    const v2, 0x14f8dcef

    invoke-virtual {v0, v1, v2}, Lcob;->a(Ljava/lang/String;I)V

    iget-object v0, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v0, Lcob;

    iget-object v0, v0, Lcob;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v1, Lcob;

    iget v2, v1, Lcob;->e:I

    if-ge v0, v2, :cond_4

    iget-object v0, v7, Lcwk;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const v2, 0x9ce409

    invoke-virtual {v1, v0, v2}, Lcob;->a(Ljava/lang/String;I)V

    :cond_4
    return-void

    :cond_5
    :goto_2
    sget-object v0, Lcob;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Fails to schedule beholder Ttl Service."

    const/16 v2, 0x168

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    iget-object v0, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v0, Lcob;

    iget-object v0, v0, Lcob;->f:Landroid/content/Context;

    new-instance v1, Lcoa;

    invoke-direct {v1}, Lcoa;-><init>()V

    invoke-static {v0, v1}, Lchn;->a(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    check-cast v0, Lcof;

    invoke-virtual {v0}, Lcof;->c()V

    return-void

    :pswitch_4
    move-object/from16 v2, p1

    check-cast v2, Lkpb;

    :try_start_1
    iget-object v0, v7, Lcwk;->c:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcwl;

    iget-object v3, v3, Lcwl;->g:Lnph;

    move-object v4, v0

    check-cast v4, Lcwl;

    iget-object v4, v4, Lcwl;->c:Lcwq;

    check-cast v0, Lcwl;

    iget-object v0, v0, Lcwl;->a:Lcrz;

    iget-object v0, v0, Lcrz;->o:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lkab;

    iget-object v5, v7, Lcwk;->a:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {v2}, Lkpb;->g()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpa;

    invoke-interface {v1}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {v2}, Lkpb;->close()V

    check-cast v5, Lklv;

    invoke-virtual {v4, v6, v0, v5}, Lcwq;->a([BLkab;Lklv;)Lcsv;

    move-result-object v0

    iget-object v1, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v1, Lcwl;

    iget v1, v1, Lcwl;->e:I

    invoke-virtual {v0, v1}, Lcsv;->c(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v4, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v4, Lcwl;

    iget-wide v4, v4, Lcwl;->f:J

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Lcsv;->b(J)V

    iget-object v1, v7, Lcwk;->b:Ljava/lang/Object;

    check-cast v1, Lgxz;

    iput-object v1, v0, Lcsv;->j:Lgxz;

    invoke-virtual {v0}, Lcsv;->a()Lcsw;

    move-result-object v0

    invoke-virtual {v3, v0}, Lnph;->e(Ljava/lang/Object;)Z

    return-void

    :catchall_1
    move-exception v0

    invoke-interface {v2}, Lkpb;->close()V

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    iget-object v1, v7, Lcwk;->c:Ljava/lang/Object;

    iget-object v2, v7, Lcwk;->b:Ljava/lang/Object;

    check-cast v2, Lgxz;

    check-cast v1, Lcwl;

    invoke-virtual {v1, v2, v0}, Lcwl;->c(Lgxz;Ljava/lang/Throwable;)V

    return-void

    :goto_3
    :try_start_4
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    new-instance v5, Lloi;

    invoke-direct {v5, v2}, Lloi;-><init>([B)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v8, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v8, v6}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    const-string v0, "UTF-8"

    invoke-interface {v4, v8, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget-object v9, v7, Lcwk;->a:Ljava/lang/Object;

    iget-object v10, v7, Lcwk;->b:Ljava/lang/Object;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    const-class v0, Landroid/view/ViewOverlay;

    const-string v13, "getOverlayView"

    new-array v14, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v13, v14}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_7
    const-string v0, "Can\'t access ViewOverlay, run \"adb shell settings put global hidden_api_policy 0\" to access more view properties, see https://developer.android.com/guide/app-compatibility/restrictions-non-sdk-interfaces#how_can_i_enable_access_to_non-sdk_interfaces"

    sget-object v13, Lltg;->a:Ljava/lang/String;

    invoke-static {v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    :goto_4
    move-object v13, v9

    check-cast v13, Lltg;

    iput-object v0, v13, Lltg;->c:Ljava/lang/reflect/Method;

    move-object v0, v9

    check-cast v0, Lltg;

    iget-object v0, v0, Lltg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/wear/ambient/AmbientMode$AmbientController;

    goto :goto_5

    :cond_7
    new-instance v13, Llto;

    invoke-direct {v13}, Llto;-><init>()V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v3, "UTF-8"

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "hierarchy"

    const-string v3, ""

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v3, "os_version"

    invoke-virtual {v13, v3, v0}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v3, "os_version_incremental"

    invoke-virtual {v13, v3, v0}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "api_level"

    invoke-virtual {v13, v3, v0}, Llto;->d(Ljava/lang/CharSequence;I)V

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v3, "device"

    invoke-virtual {v13, v3, v0}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "model"

    invoke-virtual {v13, v3, v0}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v3, "product"

    invoke-virtual {v13, v3, v0}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    move-object v0, v10

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lafc;->f(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget v14, v3, Landroid/graphics/Point;->x:I

    const-string v15, "display_width"

    invoke-virtual {v13, v15, v14}, Llto;->d(Ljava/lang/CharSequence;I)V

    iget v3, v3, Landroid/graphics/Point;->y:I

    const-string v14, "display_height"

    invoke-virtual {v13, v14, v3}, Llto;->d(Ljava/lang/CharSequence;I)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const-string v3, "rotation"

    invoke-virtual {v13, v3, v0}, Llto;->d(Ljava/lang/CharSequence;I)V

    :cond_8
    move-object v0, v10

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "package"

    invoke-virtual {v13, v3, v0}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    move-object v3, v10

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v3, "app_version"

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v3, v0}, Llto;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_6
    :try_start_9
    invoke-virtual {v13, v4, v2}, Llto;->e(Lorg/xmlpull/v1/XmlSerializer;Lloi;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v3, v10

    check-cast v3, Landroid/view/View;

    move-object v13, v9

    check-cast v13, Lltg;

    invoke-virtual {v13, v3, v0}, Lltg;->b(Landroid/view/View;Ljava/util/Map;)V

    new-instance v3, Lva;

    invoke-direct {v3, v2}, Lva;-><init>([S)V

    move-object/from16 v16, v10

    check-cast v16, Landroid/view/View;

    move-object v14, v9

    check-cast v14, Lltg;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v15, v3

    move-object/from16 v19, v0

    invoke-virtual/range {v14 .. v19}, Lltg;->c(Lva;Landroid/view/View;IILjava/util/Map;)V

    invoke-virtual {v3, v4, v5}, Lva;->H(Lorg/xmlpull/v1/XmlSerializer;Lloi;)V

    const-string v0, "attributeNameMap"

    const-string v2, ""

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v0, v5, Lloi;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v5, Lloi;->b:Ljava/lang/Object;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v13, ""

    invoke-interface {v4, v13, v10, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    const-string v0, "attributeNameMap"

    const-string v2, ""

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v0, "hierarchy"

    const-string v2, ""

    invoke-interface {v4, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v11

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1, v0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultData(Ljava/lang/String;)V

    iget-object v1, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/BroadcastReceiver$PendingResult;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    sget-object v1, Llte;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    iget-object v0, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    :goto_8
    invoke-static {v0}, Llte;->a(Landroid/content/BroadcastReceiver$PendingResult;)V

    return-void

    :catchall_2
    move-exception v0

    :try_start_b
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    :try_start_c
    sget-object v1, Llte;->a:Ljava/lang/String;

    const-string v2, "Failed to snapshot hierarchy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    iget-object v0, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/BroadcastReceiver$PendingResult;

    goto :goto_8

    :goto_9
    iget-object v1, v7, Lcwk;->c:Ljava/lang/Object;

    check-cast v1, Landroid/content/BroadcastReceiver$PendingResult;

    invoke-static {v1}, Llte;->a(Landroid/content/BroadcastReceiver$PendingResult;)V

    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
