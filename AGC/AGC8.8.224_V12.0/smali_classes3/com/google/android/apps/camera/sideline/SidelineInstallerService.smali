.class public Lcom/google/android/apps/camera/sideline/SidelineInstallerService;
.super Landroid/app/Service;


# instance fields
.field public a:Lhba;

.field public b:Ldja;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onCreate()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lemj;

    const-class v1, Lhbb;

    invoke-interface {v0, v1}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object v0

    check-cast v0, Lhbb;

    invoke-interface {v0, p0}, Lhbb;->t(Lcom/google/android/apps/camera/sideline/SidelineInstallerService;)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const/4 v0, 0x1

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "com.google.android.apps.camera.sideline.ON_INSTALL_STATUS_CHANGED"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_1

    :sswitch_1
    const-string p3, "com.google.android.apps.camera.sideline.START_UPDATE"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p2, -0x1

    :goto_1
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p2, p0, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->a:Lhba;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    sget-object p1, Lhba;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "extras is null from PackageInstaller."

    const/16 p3, 0xd65

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto/16 :goto_4

    :cond_1
    const-string p3, "android.content.pm.extra.STATUS"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch p3, :pswitch_data_1

    sget-object p1, Lhba;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 p2, 0xd63

    invoke-interface {p1, p2}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string p2, "Unrecognized status received from installer: %d"

    invoke-interface {p1, p2, p3}, Lnah;->p(Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p2, Lhba;->b:Landroid/content/Context;

    const-class v3, Lcom/google/android/apps/camera/sideline/SidelineJobService;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Landroid/app/job/JobInfo$Builder;

    const v3, 0xe453

    invoke-direct {v2, v3, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v2, v0}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    iget-object v2, p2, Lhba;->o:Loiw;

    check-cast v2, Lemd;

    invoke-virtual {v2}, Lemd;->a()Landroid/app/job/JobScheduler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v1

    if-eq v1, v0, :cond_2

    sget-object v0, Lhba;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Failed to schedule retry!"

    const/16 v2, 0xd69

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_2

    :pswitch_2
    invoke-virtual {p2}, Lhba;->b()V

    goto :goto_2

    :pswitch_3
    invoke-virtual {p2}, Lhba;->c()V

    iget-object p1, p2, Lhba;->k:Lhbf;

    iget-object p3, p1, Lhbf;->a:Lkrf;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lhbf;->e:J

    iget-object p1, p2, Lhba;->p:Lkbc;

    const-string p3, "SidelineInstaller#waitForHalRestart"

    invoke-interface {p1, p3}, Lkbc;->a(Ljava/lang/String;)Lkbf;

    move-result-object p1

    iput-object p1, p2, Lhba;->s:Lkbf;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    new-instance p1, Lhaz;

    invoke-direct {p1, p2, v0, v1}, Lhaz;-><init>(Lhba;J)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p2, p2, Lhba;->g:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x3

    invoke-static {p1, v0, v1, p3, p2}, Lnsy;->D(Lnnn;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    goto/16 :goto_4

    :pswitch_4
    sget-object v0, Lhba;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Package installer is asking user for permission. This should not happen in HAL update!"

    const/16 v2, 0xd64

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_2
    :goto_2
    :pswitch_5
    invoke-virtual {p2, p3, p1}, Lhba;->a(ILj$/util/Optional;)V

    goto/16 :goto_4

    :pswitch_6
    iget-object p1, p0, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->b:Ldja;

    invoke-virtual {p1}, Ldja;->z()Landroid/app/NotificationChannel;

    move-result-object p2

    new-instance p3, Landroid/app/Notification$Builder;

    iget-object v1, p1, Ldja;->c:Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    check-cast v1, Landroid/content/Context;

    invoke-direct {p3, v1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const p2, 0x1080081

    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object p3, p1, Ldja;->c:Ljava/lang/Object;

    check-cast p3, Landroid/content/Context;

    const v1, 0x7f14023c

    invoke-virtual {p3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    iget-object p1, p1, Ldja;->c:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    const p3, 0x7f14023b

    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    const p2, 0xa41e

    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->startForeground(ILandroid/app/Notification;)V

    iget-object p1, p0, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->a:Lhba;

    iget-object p2, p1, Lhba;->q:Lnph;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lnph;->isDone()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_3

    :cond_3
    sget-object p1, Lhba;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "startHalUpdate called when HAL is still updating!"

    const/16 p3, 0xd6b

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_4

    :cond_4
    :goto_3
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p2

    iput-object p2, p1, Lhba;->q:Lnph;

    iget-object p2, p1, Lhba;->l:Lgzm;

    sget-object p3, Lgzd;->ak:Lgzs;

    invoke-interface {p2, p3}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget-object p3, p1, Lhba;->m:Lgzn;

    add-int/2addr p2, v0

    sget-object v1, Lgzd;->ak:Lgzs;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, v1, p2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object p2, p1, Lhba;->k:Lhbf;

    iget-wide v1, p2, Lhbf;->b:J

    iget-wide v1, p2, Lhbf;->c:J

    iget-object p3, p2, Lhbf;->a:Lkrf;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p2, Lhbf;->d:J

    iget-object p2, p1, Lhba;->t:Llhm;

    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Llhm;->c(I)V

    iget-object p2, p1, Lhba;->f:Ljava/util/concurrent/Executor;

    new-instance p3, Lhay;

    invoke-direct {p3, p1}, Lhay;-><init>(Lhba;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object p2, p1, Lhba;->q:Lnph;

    new-instance p3, Lhbi;

    invoke-direct {p3, p1, v0}, Lhbi;-><init>(Lhba;I)V

    iget-object v0, p1, Lhba;->h:Ljuh;

    invoke-virtual {p2, p3, v0}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object p2, p1, Lhba;->q:Lnph;

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p1, p1, Lhba;->g:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v0, 0x46

    invoke-static {p2, v0, v1, p3, p1}, Lnsy;->I(Lnou;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    move-result-object p1

    const-class p2, Ljava/util/concurrent/TimeoutException;

    sget-object p3, Lfnq;->q:Lfnq;

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {p1, p2, p3, v0}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    :goto_4
    const/4 p1, 0x2

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x20059dcb -> :sswitch_1
        0x268dfe7c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method
