.class public Lcom/google/android/apps/camera/sideline/SidelineInstallerService;
.super Landroid/app/Service;
.source "PG"


# instance fields
.field public a:Lmav;

.field public b:Lhon;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onCreate()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-interface {v0, v1}, Liye;->c(Ljava/lang/Class;)Liyg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    check-cast v0, Lmaw;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-class v1, Lmaw;

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v0, p0}, Lmaw;->n(Lcom/google/android/apps/camera/sideline/SidelineInstallerService;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Liye;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lmav;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmav;->i:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p3}, Lscs;->c()Lsdo;

    move-result-object p3

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lmav;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lmav;->d()V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Lhon;->o()Landroid/app/NotificationChannel;

    move-result-object p2

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    iget-object p1, p0, Lmav;->t:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lmav;->p:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_f
    check-cast p3, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p3, v0, :cond_0

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_11
    const/16 p1, 0x1054

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_12
    invoke-virtual {p3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p3, p1, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->a:Lmav;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lmav;->w:Llyv;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/16 p1, 0x105a

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_58

    nop

    nop

    :goto_1c
    goto/32 :goto_b2

    nop

    nop

    :goto_1d
    invoke-direct {p3, p0, p1, p2}, Lmat;-><init>(Lmav;J)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lixy;->b()Landroid/app/job/JobScheduler;

    move-result-object v0

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_1f
    const v0, 0x7f1402a9

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_21
    invoke-interface {p3, v0}, Lscz;->M(I)Lsdo;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0x268dfe7c

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p2, p1}, Lmav;->b(ILj$/util/Optional;)V

    goto/32 :goto_be

    nop

    nop

    :goto_24
    invoke-virtual {p0, p2, p1}, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->startForeground(ILandroid/app/Notification;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p0, Lmav;->q:Lpdf;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, p2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_28
    const-string p3, "com.google.android.apps.camera.sideline.START_UPDATE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    invoke-static {p3, v0, v1, p1, p0}, Lsgj;->Q(Lssw;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lsui;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-wide p2, p1, Lmba;->c:J

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v0, 0x1053

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2f
    const v0, -0x20059dcb

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_2
    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_33
    iput-wide p2, p1, Lmba;->e:J

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_34
    invoke-direct {p3, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_35
    const/4 p3, 0x0

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p3, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresStorageNotLow(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_37
    sget-object p0, Lmav;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_38
    check-cast p3, Lscz;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_39
    const v1, 0xe453

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p1, p2, p3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_3b
    iput-object p1, p0, Lmav;->t:Ljava/util/concurrent/Future;

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object p1, p0, Lmav;->n:Lmba;

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_3e
    goto/16 :goto_7b

    nop

    nop

    :goto_3f
    goto/32 :goto_28

    nop

    nop

    :goto_40
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p1, p0, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->b:Lhon;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-ne p3, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :cond_3
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_43
    if-ne p3, v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p2

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p0, p2, p1}, Lmav;->b(ILj$/util/Optional;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const p2, 0x1080081

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_49
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const-string v0, "Package installer is asking user for permission. This should not happen in HAL update!"

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_4c
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4d
    const-string p1, "extras is null from PackageInstaller."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_4e
    iget-object p2, p1, Lmba;->a:Lptw;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_4f
    const-string p3, "android.content.pm.extra.STATUS_MESSAGE"

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const p3, 0x7f1402a8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p3}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0, v2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_53
    new-instance p3, Lmat;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_54
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_56
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    :goto_57
    return p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :goto_58
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object p1, p0, Lmav;->i:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_5b
    const v0, 0x1c

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

    :goto_5c
    iget-object v0, p0, Lmav;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p2, p3, p1}, Llyv;->d(Llyp;Ljava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1, p3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch p2, :pswitch_data_0

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_5f
    sget-object p3, Lmav;->b:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_60
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sget-object p3, Lmav;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_62
    invoke-direct {p2, p0, v1}, Lmas;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_64
    new-instance v0, Landroid/app/Notification$Builder;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_3c

    nop

    nop

    :pswitch_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_3c

    nop

    nop

    :pswitch_3
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-eqz p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    sget-object p3, Llyr;->ax:Llzf;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_6a
    iget-object p2, p1, Lmba;->a:Lptw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_6b
    goto :goto_76

    nop

    nop

    :goto_6c
    goto/32 :goto_a1

    nop

    nop

    :goto_6d
    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setForegroundServiceBehavior(I)Landroid/app/Notification$Builder;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_6e
    invoke-interface {p0, p1, p2}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0, p2, p1}, Lmav;->b(ILj$/util/Optional;)V

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_70
    iget-object p0, p0, Lcom/google/android/apps/camera/sideline/SidelineInstallerService;->a:Lmav;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_71
    new-instance p3, Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p3}, Lscs;->b()Lsdo;

    move-result-object p3

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto :goto_7b

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_7a

    nop

    nop

    :goto_77
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_79
    invoke-direct {v0, p3, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 p2, -0x1

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_95

    nop

    nop

    :goto_7c
    sget-object p0, Lmav;->a:Lsdb;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_7d
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7e
    const-string v0, "Failed to schedule retry!"

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_7f
    new-instance p2, Lmar;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p0}, Lmav;->c()V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_82
    iget-object p1, p0, Lmav;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-direct {p2, p0}, Lmar;-><init>(Lmav;)V

    goto/32 :goto_81

    nop

    nop

    :goto_84
    sget-object p2, Llyr;->ax:Llzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iput-object p1, p0, Lmav;->v:Lpdh;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_88
    iget-object p1, p0, Lmav;->l:Lmbb;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8a
    const-string p1, "Unrecognized status received from installer: %d"

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_8b
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

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

    :goto_8c
    goto/32 :goto_1c

    nop

    :goto_8d
    const-wide/16 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iput-wide p2, p1, Lmba;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const/16 p1, 0x1052

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_92
    const-string p1, "startHalUpdate called when HAL is still updating!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-interface {p3, v0}, Lscz;->M(I)Lsdo;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_94
    add-int/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_95
    if-nez p2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_96
    check-cast p1, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_0

    nop

    nop

    :goto_99
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_9a
    check-cast p3, Lscz;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object p1, p1, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_9c
    const-string p2, "android.content.pm.extra.STATUS"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {p1, p2}, Lmbb;->a(I)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_9e
    check-cast p3, Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    sget-object p3, Lmav;->a:Lsdb;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_a1
    const-string p3, "com.google.android.apps.camera.sideline.ON_INSTALL_STATUS_CHANGED"

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object p3, p1, Lhon;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_a3
    new-instance p2, Lmas;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_a4
    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    move p2, v2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_a6
    const-string p2, "SidelineInstaller#waitForHalRestart"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_a7
    iget-object p2, p0, Lmav;->x:Llyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    const/4 p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object p1, p0, Lmav;->h:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {v0, p3}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_ac
    invoke-interface {p3, v0}, Lscz;->s(Ljava/lang/String;)V

    :pswitch_4
    goto/32 :goto_23

    nop

    nop

    :goto_ad
    move p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_ae
    if-ne p2, v2, :cond_9

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_af
    check-cast v0, Lixy;

    nop

    nop

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

    :goto_b0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_b1
    iget-object p1, p0, Lmav;->n:Lmba;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_b4
    invoke-direct {v0, v1, p3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    goto/32 :goto_52

    nop

    nop

    :goto_b5
    invoke-interface {p3, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_b6
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {p3}, Lj$/time/Duration;->toSeconds()J

    move-result-wide v0

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    const p2, 0xa41e

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_bb
    invoke-interface {p1, p2}, Lpdf;->a(Ljava/lang/String;)Lpdh;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_bc
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_bd
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    if-eqz p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_c3
    const/16 v0, 0x1058

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_c4
    const-class v1, Lcom/google/android/apps/camera/sideline/SidelineJobService;

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_c5
    iget-wide p2, p1, Lmba;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop
.end method
