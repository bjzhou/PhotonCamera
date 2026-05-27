.class public final Lcdj;
.super Lcly;

# interfaces
.implements Lfaz;
.implements Lfax;
.implements Lfay;
.implements Lgvx;


# static fields
.field private static volatile i:Ljava/lang/Boolean;


# instance fields
.field public final a:Lfbz;

.field public b:J

.field public c:Z

.field public final d:Lhjo;

.field public e:I

.field public final f:Lbkc;

.field public final g:Lcvr;

.field private final j:Ljwb;

.field private final k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

.field private final l:Ljuh;

.field private final m:Lkbc;

.field private final n:Ldkp;

.field private final o:Landroid/content/Context;

.field private final p:Lgni;

.field private final q:Lgvz;

.field private final r:Z

.field private s:J

.field private t:Lgvy;

.field private u:J

.field private final v:Ldqx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lbkc;Lfbz;Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;Lcvr;Lhjo;Ljuh;Lkbc;Ljwb;Ldkp;Lgft;Ldqx;Lgni;Lgvz;[B[B[B[B[B)V
    .locals 2

    move-object v0, p0

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-direct {p0, v1}, Lcly;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 v1, 0x1

    iput v1, v0, Lcdj;->e:I

    move-object v1, p1

    iput-object v1, v0, Lcdj;->o:Landroid/content/Context;

    move-object v1, p2

    iput-object v1, v0, Lcdj;->f:Lbkc;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p3

    iput-object v1, v0, Lcdj;->a:Lfbz;

    move-object v1, p4

    iput-object v1, v0, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p5

    iput-object v1, v0, Lcdj;->g:Lcvr;

    invoke-virtual {p9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p9

    iput-object v1, v0, Lcdj;->j:Ljwb;

    move-object v1, p6

    iput-object v1, v0, Lcdj;->d:Lhjo;

    move-object v1, p7

    iput-object v1, v0, Lcdj;->l:Ljuh;

    move-object v1, p8

    iput-object v1, v0, Lcdj;->m:Lkbc;

    move-object v1, p10

    iput-object v1, v0, Lcdj;->n:Ldkp;

    move-object v1, p13

    iput-object v1, v0, Lcdj;->p:Lgni;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcdj;->q:Lgvz;

    move-object v1, p12

    iput-object v1, v0, Lcdj;->v:Ldqx;

    invoke-interface {p11}, Lgft;->i()Z

    move-result v1

    iput-boolean v1, v0, Lcdj;->r:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lgvy;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcdj;->u:J

    iput-object p1, p0, Lcdj;->t:Lgvy;

    iget-object p1, p0, Lcdj;->q:Lgvz;

    invoke-virtual {p1, p0}, Lgvz;->a(Lgvx;)V

    return-void
.end method

.method public final bO()V
    .locals 4

    iget-object v0, p0, Lcdj;->q:Lgvz;

    iget-object v1, v0, Lgvz;->d:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lgvz;->h:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-boolean v2, v0, Lgvz;->i:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lgvz;->i:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v1, v0, Lgvz;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lgot;

    const/16 v3, 0xe

    invoke-direct {v2, v0, v3}, Lgot;-><init>(Lgvz;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    iget-object v0, p0, Lcdj;->l:Ljuh;

    iget-object v1, p0, Lcdj;->m:Lkbc;

    new-instance v2, Lazo;

    const/16 v3, 0x13

    invoke-direct {v2, p0, v3}, Lazo;-><init>(Lcdj;I)V

    const-string v3, "logForegroundStat"

    invoke-interface {v1, v3, v2}, Lkbc;->c(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final e()V
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcdj;->s:J

    sub-long v4, v2, v4

    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_28

    sget-object v0, Lcdj;->i:Ljava/lang/Boolean;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_4

    const-class v6, Lcdj;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcdj;->i:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    iget-object v0, v1, Lcdj;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v4}, Linb;->x(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Lmqp;

    move-result-object v8

    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v9

    if-nez v9, :cond_0

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v4}, Linb;->x(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Lmqp;

    move-result-object v8

    :cond_0
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v9

    if-nez v9, :cond_1

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8, v5}, Linb;->x(Landroid/content/pm/PackageManager;Landroid/content/Intent;Z)Lmqp;

    move-result-object v8

    :cond_1
    invoke-virtual {v8}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v8}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcdj;->i:Ljava/lang/Boolean;

    :cond_3
    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :goto_1
    sget-object v0, Lcdj;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-wide v2, v1, Lcdj;->s:J

    iget v2, v1, Lcdj;->e:I

    const/4 v3, 0x3

    if-eq v2, v5, :cond_6

    if-ne v2, v3, :cond_5

    iput-boolean v5, v1, Lcdj;->c:Z

    :cond_5
    iput v5, v1, Lcdj;->e:I

    goto :goto_2

    :cond_6
    iget-object v2, v1, Lcdj;->j:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    invoke-static {v2}, Lijy;->e(Lika;)I

    move-result v2

    :goto_2
    sget-object v6, Lmpx;->a:Lmpx;

    sget v7, Lmvv;->d:I

    sget-object v7, Lmyu;->a:Lmvv;

    iget-object v8, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v8}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->d()Z

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eqz v9, :cond_21

    iget-boolean v8, v8, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->c:Z

    if-nez v8, :cond_21

    iget-object v6, v1, Lcdj;->d:Lhjo;

    invoke-virtual {v6}, Lhjo;->b()I

    move-result v6

    const-wide/16 v7, 0x0

    if-ne v6, v5, :cond_7

    iget-object v6, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    iget-wide v12, v6, Lhkh;->m:J

    goto :goto_3

    :cond_7
    move-wide v12, v7

    :goto_3
    sget-object v6, Lnja;->t:Lnja;

    invoke-virtual {v6}, Lnws;->O()Lnwn;

    move-result-object v6

    iget-object v9, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v9}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getActivityOnCreateStartNs()J

    move-result-wide v14

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_8
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Lnja;

    iget v3, v9, Lnja;->a:I

    or-int/2addr v3, v5

    iput v3, v9, Lnja;->a:I

    iput-wide v14, v9, Lnja;->b:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getPermissionStartupTaskTimeStartNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_9
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    or-int/lit16 v9, v9, 0x80

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->i:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getPermissionStartupTaskTimeEndNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_a
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    or-int/lit16 v9, v9, 0x100

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->j:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getWaitForCameraDevicesTaskTimeStartNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_b
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    or-int/lit16 v9, v9, 0x800

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->k:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getWaitForCameraDevicesTaskTimeEndNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_c
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    or-int/lit16 v9, v9, 0x1000

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->l:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getActivityInitializedNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_d
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    or-int/2addr v9, v10

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->d:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getFirstPreviewFrameReceivedNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_e
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    or-int/2addr v9, v11

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->c:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getFirstPreviewFrameRenderedNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_f
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->h:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getFirstVfePreviewFrameRenderedNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_10
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    const/high16 v16, 0x20000

    or-int v9, v9, v16

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->q:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getShutterButtonFirstEnabledNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_11
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v9, v3, Lnja;->a:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v3, Lnja;->a:I

    iput-wide v14, v3, Lnja;->f:J

    iget-object v3, v1, Lcdj;->k:Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/stats/timing/CameraActivityTiming;->getShutterButtonFirstDrawnNs()J

    move-result-wide v14

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_12
    iget-object v3, v6, Lnwn;->b:Lnws;

    move-object v9, v3

    check-cast v9, Lnja;

    iget v4, v9, Lnja;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v9, Lnja;->a:I

    iput-wide v14, v9, Lnja;->e:J

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_13
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v4, v3, Lnja;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Lnja;->a:I

    iput-wide v12, v3, Lnja;->g:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v3, v12, v13}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    iget-object v9, v6, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_14

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_14
    iget-object v9, v6, Lnwn;->b:Lnws;

    check-cast v9, Lnja;

    iget v12, v9, Lnja;->a:I

    const/high16 v13, 0x40000

    or-int/2addr v12, v13

    iput v12, v9, Lnja;->a:I

    iput-wide v3, v9, Lnja;->r:J

    iget-object v3, v1, Lcdj;->d:Lhjo;

    invoke-virtual {v3}, Lhjo;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x1

    goto :goto_4

    :pswitch_0
    const/4 v3, 0x4

    goto :goto_4

    :pswitch_1
    const/4 v3, 0x3

    goto :goto_4

    :pswitch_2
    const/4 v3, 0x2

    :goto_4
    iget-object v4, v6, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_15

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_15
    iget-object v4, v6, Lnwn;->b:Lnws;

    move-object v9, v4

    check-cast v9, Lnja;

    add-int/lit8 v3, v3, -0x1

    iput v3, v9, Lnja;->p:I

    iget v3, v9, Lnja;->a:I

    const/high16 v12, 0x10000

    or-int/2addr v3, v12

    iput v3, v9, Lnja;->a:I

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_16
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    iget v4, v3, Lnja;->a:I

    or-int/lit16 v4, v4, 0x2000

    iput v4, v3, Lnja;->a:I

    iput-boolean v0, v3, Lnja;->m:Z

    iget-object v0, v1, Lcdj;->t:Lgvy;

    if-eqz v0, :cond_1d

    iget-wide v3, v1, Lcdj;->u:J

    cmp-long v9, v3, v7

    if-eqz v9, :cond_1d

    sget-object v7, Lnkr;->f:Lnkr;

    invoke-virtual {v7}, Lnws;->O()Lnwn;

    move-result-object v7

    iget-object v8, v7, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_17

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_17
    iget-object v8, v7, Lnwn;->b:Lnws;

    move-object v9, v8

    check-cast v9, Lnkr;

    iget v12, v9, Lnkr;->a:I

    or-int/2addr v12, v5

    iput v12, v9, Lnkr;->a:I

    iput-wide v3, v9, Lnkr;->b:J

    iget v3, v0, Lgvy;->a:F

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_18

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_18
    iget-object v4, v7, Lnwn;->b:Lnws;

    move-object v8, v4

    check-cast v8, Lnkr;

    iget v9, v8, Lnkr;->a:I

    or-int/2addr v9, v11

    iput v9, v8, Lnkr;->a:I

    iput v3, v8, Lnkr;->c:F

    iget v3, v0, Lgvy;->b:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_19
    iget-object v4, v7, Lnwn;->b:Lnws;

    move-object v8, v4

    check-cast v8, Lnkr;

    iget v9, v8, Lnkr;->a:I

    or-int/2addr v9, v10

    iput v9, v8, Lnkr;->a:I

    iput v3, v8, Lnkr;->d:F

    iget v0, v0, Lgvy;->c:F

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1a

    invoke-virtual {v7}, Lnwn;->p()V

    :cond_1a
    iget-object v3, v7, Lnwn;->b:Lnws;

    check-cast v3, Lnkr;

    iget v4, v3, Lnkr;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lnkr;->a:I

    iput v0, v3, Lnkr;->e:F

    invoke-virtual {v7}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnkr;

    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1b
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lnja;->o:Lnkr;

    iget v0, v3, Lnja;->a:I

    const v4, 0x8000

    or-int/2addr v0, v4

    iput v0, v3, Lnja;->a:I

    iget-object v0, v1, Lcdj;->t:Lgvy;

    iget-boolean v3, v1, Lcdj;->r:Z

    iget v0, v0, Lgvy;->c:F

    float-to-int v0, v0

    invoke-static {v0}, Lkab;->b(I)Lkab;

    move-result-object v0

    invoke-static {v0, v3}, Lgfp;->a(Lkab;Z)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    packed-switch v0, :pswitch_data_1

    const/4 v3, 0x5

    goto :goto_5

    :pswitch_3
    const/4 v3, 0x4

    goto :goto_5

    :pswitch_4
    const/4 v3, 0x3

    goto :goto_5

    :pswitch_5
    const/4 v3, 0x2

    :goto_5
    iget-object v0, v6, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1c
    iget-object v0, v6, Lnwn;->b:Lnws;

    check-cast v0, Lnja;

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lnja;->n:I

    iget v3, v0, Lnja;->a:I

    or-int/lit16 v3, v3, 0x4000

    iput v3, v0, Lnja;->a:I

    :cond_1d
    iget-object v0, v1, Lcdj;->p:Lgni;

    invoke-interface {v0}, Lgni;->a()Lnkl;

    move-result-object v0

    iget v3, v0, Lnkl;->a:I

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1e

    goto :goto_6

    :cond_1e
    and-int/2addr v3, v11

    if-eqz v3, :cond_20

    :goto_6
    iget-object v3, v6, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v6}, Lnwn;->p()V

    :cond_1f
    iget-object v3, v6, Lnwn;->b:Lnws;

    check-cast v3, Lnja;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lnja;->s:Lnkl;

    iget v0, v3, Lnja;->a:I

    const/high16 v4, 0x80000

    or-int/2addr v0, v4

    iput v0, v3, Lnja;->a:I

    :cond_20
    invoke-virtual {v6}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lnja;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    iget-object v0, v1, Lcdj;->n:Ldkp;

    invoke-interface {v0}, Ldkp;->a()Ljava/util/List;

    move-result-object v7

    goto :goto_7

    :cond_21
    :goto_7
    iget-object v0, v1, Lcdj;->v:Ldqx;

    sget-object v3, Lngx;->g:Lngx;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    iget-object v4, v0, Ldqx;->c:Ljava/lang/Object;

    sget-object v8, Lgzd;->V:Lgzr;

    invoke-interface {v4, v8}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v8, v3, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_22

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_22
    iget-object v8, v3, Lnwn;->b:Lnws;

    check-cast v8, Lngx;

    iget v9, v8, Lngx;->a:I

    or-int/2addr v9, v5

    iput v9, v8, Lngx;->a:I

    iput-boolean v4, v8, Lngx;->b:Z

    iget-object v4, v0, Ldqx;->d:Ljava/lang/Object;

    sget-object v8, Lgzd;->B:Lgzr;

    iget-object v8, v8, Lgzr;->a:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-interface {v4, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    goto :goto_8

    :cond_23
    const/4 v4, 0x0

    :goto_8
    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_24

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_24
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Lngx;

    iget v8, v5, Lngx;->a:I

    or-int/2addr v8, v11

    iput v8, v5, Lngx;->a:I

    iput-boolean v4, v5, Lngx;->c:Z

    iget-object v4, v0, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_25

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_25
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Lngx;

    iget v8, v5, Lngx;->a:I

    or-int/2addr v8, v10

    iput v8, v5, Lngx;->a:I

    iput-boolean v4, v5, Lngx;->d:Z

    iget-object v4, v0, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_26

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_26
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Lngx;

    iget v8, v5, Lngx;->a:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v5, Lngx;->a:I

    iput-boolean v4, v5, Lngx;->e:Z

    iget-object v0, v0, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v4, v3, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_27
    iget-object v4, v3, Lnwn;->b:Lnws;

    check-cast v4, Lngx;

    iget v5, v4, Lngx;->a:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Lngx;->a:I

    iput-boolean v0, v4, Lngx;->f:Z

    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Lngx;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iget-object v3, v1, Lcdj;->a:Lfbz;

    invoke-interface {v3, v2, v7, v6, v0}, Lfbz;->U(ILjava/util/List;Lmqp;Lmqp;)V

    iget-object v0, v1, Lcdj;->q:Lgvz;

    invoke-virtual {v0, v1}, Lgvz;->a(Lgvx;)V

    return-void

    :cond_28
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
