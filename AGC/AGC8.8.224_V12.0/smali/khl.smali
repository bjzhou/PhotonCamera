.class public final Lkhl;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ljava/util/concurrent/ExecutorService;

.field private final b:Lkhm;

.field private c:Lnou;

.field private final d:Lnou;

.field private e:Lnou;

.field private final f:Z

.field private final g:Lkaq;

.field private final h:Lkwy;

.field private final i:Lkte;

.field private final j:Landroidx/wear/ambient/AmbientDelegate;


# direct methods
.method public constructor <init>(Lkte;Lkli;Lkaq;Lkeq;Lkhm;Landroidx/wear/ambient/AmbientDelegate;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p7

    iput-object p7, p0, Lkhl;->c:Lnou;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p7

    iput-object p7, p0, Lkhl;->d:Lnou;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p7

    iput-object p7, p0, Lkhl;->e:Lnou;

    const-string p7, "Sess3AEx"

    invoke-static {p7}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p7

    iput-object p7, p0, Lkhl;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p6, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    iput-object p5, p0, Lkhl;->b:Lkhm;

    iput-object p1, p0, Lkhl;->i:Lkte;

    invoke-interface {p2}, Lkli;->G()Z

    move-result p1

    iput-boolean p1, p0, Lkhl;->f:Z

    const-string p1, "SessCtrl3A"

    invoke-interface {p3, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkhl;->g:Lkaq;

    new-instance p1, Lkwy;

    iget-wide p2, p4, Lkeq;->k:J

    iget p4, p4, Lkeq;->l:I

    invoke-direct {p1, p2, p3, p4}, Lkwy;-><init>(JI)V

    iput-object p1, p0, Lkhl;->h:Lkwy;

    return-void
.end method

.method private static final i(Ljava/lang/Integer;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static final j(Lkht;Lkea;)Z
    .locals 0

    invoke-virtual {p0}, Lkht;->b()Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1}, Lkea;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final k(Lkht;Lkea;)Z
    .locals 3

    iget-object v0, p0, Lkht;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lkht;->a()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lkea;->a()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lkht;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    check-cast p1, Lkht;

    iget-object p1, p1, Lkht;->e:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static final l(Lkht;Lkea;)Z
    .locals 3

    iget-object v0, p0, Lkht;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lkht;->c()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lkea;->c()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lkht;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    check-cast p1, Lkht;

    iget-object p1, p1, Lkht;->f:[Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method final declared-synchronized a()Lkhs;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->F()Lkhs;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b(Lkfh;Z)Lnou;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lkhl;->g:Lkaq;

    const-string v3, "Call to trigger 3A with Spec : "

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v2, v1, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v2
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    iget-object v3, v1, Lkhl;->d:Lnou;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lnou;->cancel(Z)Z

    invoke-virtual/range {p1 .. p1}, Lkfh;->d()Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lkhl;->f:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iget v6, v0, Lkfh;->b:I

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    iget v9, v0, Lkfh;->d:I

    if-eq v9, v8, :cond_4

    if-ne v9, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v7, 0x1

    :goto_2
    iget-boolean v9, v0, Lkfh;->a:Z

    if-nez v6, :cond_5

    if-nez v7, :cond_5

    if-eqz v9, :cond_8

    :cond_5
    iget-object v10, v1, Lkhl;->g:Lkaq;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unlocking 3a, deciding params aeRescan = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", awbRescan = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, ", usePreCaptureMeteringSequence = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lkaq;->b(Ljava/lang/String;)V

    if-nez v6, :cond_7

    if-eqz v9, :cond_6

    const/4 v10, 0x1

    goto :goto_3

    :cond_6
    const/4 v10, 0x0

    goto :goto_3

    :cond_7
    const/4 v10, 0x1

    :goto_3
    invoke-virtual {v1, v5, v10, v7, v5}, Lkhl;->c(ZZZZ)Lnou;

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lkfh;->b()Z

    move-result v10

    invoke-virtual/range {p1 .. p1}, Lkfh;->c()Z

    move-result v11

    iget-object v12, v1, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v12}, Landroidx/wear/ambient/AmbientDelegate;->G()Lkht;

    move-result-object v12

    iget-object v13, v1, Lkhl;->b:Lkhm;

    invoke-virtual {v13}, Lkhm;->a()Lkfy;

    move-result-object v13

    invoke-static {v13}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v13

    if-nez v6, :cond_9

    if-eqz v9, :cond_a

    :cond_9
    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_a
    if-eqz v7, :cond_b

    sget-object v14, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_b
    iget-object v14, v1, Lkhl;->h:Lkwy;

    invoke-virtual {v14, v12, v3, v10, v11}, Lkwy;->d(Lkea;ZZZ)Lkhi;

    move-result-object v14

    iget-object v15, v1, Lkhl;->h:Lkwy;

    invoke-virtual {v15, v12, v5, v6, v7}, Lkwy;->c(Lkea;ZZZ)Lkhi;

    move-result-object v6

    invoke-static {v13}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v7

    const/4 v15, 0x2

    if-eqz v3, :cond_e

    iget v8, v0, Lkfh;->c:I

    if-eq v8, v15, :cond_d

    invoke-virtual {v12}, Lkht;->b()Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8}, Lkhl;->i(Ljava/lang/Integer;)Z

    move-result v8

    if-eqz v8, :cond_c

    iget-object v8, v1, Lkhl;->g:Lkaq;

    const-string v15, "For continuous AF mode, unlocking AF and waiting to converge."

    invoke-interface {v8, v15}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v8, v1, Lkhl;->b:Lkhm;

    iget-object v15, v1, Lkhl;->h:Lkwy;

    invoke-virtual {v15, v12, v4, v5, v5}, Lkwy;->c(Lkea;ZZZ)Lkhi;

    move-result-object v15

    invoke-static {v13}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v17, v2

    const/16 v16, 0x2

    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v5, v2}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v15}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v2

    invoke-virtual {v4, v2}, Lkfy;->f(Lkfg;)V

    invoke-virtual {v4}, Lkfy;->a()Lkfz;

    move-result-object v2

    invoke-virtual {v8, v2}, Lkhm;->h(Lkfz;)V

    invoke-static {v13}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v2

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    move-object/from16 v18, v12

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v4, v12}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v15}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkfy;->f(Lkfg;)V

    invoke-virtual {v2}, Lkfy;->a()Lkfz;

    move-result-object v2

    invoke-virtual {v8, v2}, Lkhm;->f(Lkfz;)V

    iget-object v2, v15, Lkhi;->a:Lnou;

    iget-object v4, v1, Lkhl;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lkhk;

    const/4 v8, 0x0

    invoke-direct {v5, v2, v8}, Lkhk;-><init>(Lnou;I)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    iget-object v2, v1, Lkhl;->g:Lkaq;

    const-string v4, "AF converged"

    invoke-interface {v2, v4}, Lkaq;->b(Ljava/lang/String;)V

    goto :goto_4

    :cond_c
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    goto :goto_4

    :cond_d
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    :goto_4
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const/4 v2, 0x1

    goto :goto_5

    :cond_e
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    const/4 v2, 0x0

    :goto_5
    if-eqz v9, :cond_f

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v2, v5}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_f
    if-eqz v2, :cond_10

    :goto_6
    invoke-static {v6}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v2

    invoke-virtual {v7, v2}, Lkfy;->f(Lkfg;)V

    invoke-static {v14}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v2

    invoke-virtual {v7, v2}, Lkfy;->f(Lkfg;)V

    iget-object v2, v1, Lkhl;->b:Lkhm;

    invoke-virtual {v7}, Lkfy;->a()Lkfz;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkhm;->h(Lkfz;)V

    iget-object v2, v1, Lkhl;->g:Lkaq;

    const-string v4, "Trigger request sent."

    invoke-interface {v2, v4}, Lkaq;->b(Ljava/lang/String;)V

    :cond_10
    invoke-static {v6}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v2

    invoke-virtual {v13, v2}, Lkfy;->f(Lkfg;)V

    invoke-static {v14}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v2

    invoke-virtual {v13, v2}, Lkfy;->f(Lkfg;)V

    iget-object v2, v1, Lkhl;->b:Lkhm;

    invoke-virtual {v13}, Lkfy;->a()Lkfz;

    move-result-object v4

    invoke-virtual {v2, v4}, Lkhm;->f(Lkfz;)V

    iget v2, v0, Lkfh;->b:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_11

    iget v0, v0, Lkfh;->d:I

    if-eq v0, v4, :cond_11

    if-eqz v9, :cond_12

    :cond_11
    iget-object v0, v1, Lkhl;->g:Lkaq;

    const-string v2, "Wait for for AE/AWB to converge."

    invoke-interface {v0, v2}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v0, v1, Lkhl;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lkhk;

    const/4 v4, 0x2

    invoke-direct {v2, v6, v4}, Lkhk;-><init>(Lkhi;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    iget-object v0, v1, Lkhl;->g:Lkaq;

    const-string v2, "AE/AWB converged."

    invoke-interface {v0, v2}, Lkaq;->b(Ljava/lang/String;)V

    :cond_12
    if-nez v10, :cond_13

    if-eqz v11, :cond_16

    :cond_13
    invoke-static {v13}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v0

    if-eqz v10, :cond_14

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_14
    if-eqz v11, :cond_15

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_15
    invoke-static {v14}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkfy;->f(Lkfg;)V

    iget-object v2, v1, Lkhl;->g:Lkaq;

    const-string v4, "Sending the request to lock AE/AWB."

    invoke-interface {v2, v4}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v2, v1, Lkhl;->b:Lkhm;

    invoke-virtual {v0}, Lkfy;->a()Lkfz;

    move-result-object v0

    invoke-virtual {v2, v0}, Lkhm;->f(Lkfz;)V

    :cond_16
    iget-object v0, v1, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    if-nez v3, :cond_18

    move-object/from16 v2, v18

    iget-object v3, v2, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v5, 0x1

    goto :goto_7

    :cond_17
    const/4 v5, 0x0

    goto :goto_7

    :cond_18
    move-object/from16 v2, v18

    const/4 v5, 0x1

    :goto_7
    if-nez v10, :cond_1a

    iget-object v3, v2, Lkht;->b:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    goto :goto_8

    :cond_19
    const/4 v3, 0x0

    goto :goto_8

    :cond_1a
    const/4 v3, 0x1

    :goto_8
    if-nez v11, :cond_1c

    iget-object v2, v2, Lkht;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x1

    goto :goto_9

    :cond_1b
    const/4 v2, 0x0

    goto :goto_9

    :cond_1c
    const/4 v2, 0x1

    :goto_9
    move/from16 v4, p2

    invoke-virtual {v0, v5, v3, v2, v4}, Landroidx/wear/ambient/AmbientDelegate;->I(ZZZZ)V

    const/4 v0, 0x2

    new-array v0, v0, [Lnou;

    iget-object v2, v6, Lkhi;->a:Lnou;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, v14, Lkhi;->a:Lnou;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-static {v0}, Lnsy;->y([Lnou;)Lnou;

    move-result-object v0

    sget-object v2, Letf;->f:Letf;

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-static {v0, v2, v3}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface/range {v17 .. v17}, Lkad;->close()V
    :try_end_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception v0

    move-object/from16 v17, v2

    :goto_a
    move-object v2, v0

    :try_start_5
    invoke-interface/range {v17 .. v17}, Lkad;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_6
    invoke-static {v2, v3}, Lktf;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_b
    throw v2
    :try_end_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_c

    :catch_2
    move-exception v0

    :goto_c
    :try_start_7
    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    return-object v0

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(ZZZZ)Lnou;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lkhl;->e:Lnou;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lnou;->cancel(Z)Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lkhl;->f:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object p1, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->F()Lkhs;

    move-result-object p1

    invoke-virtual {p1}, Lkhs;->d()Lkht;

    move-result-object p1

    invoke-static {p1}, Lkhs;->c(Lkht;)Lkhs;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p1, Lkhs;->g:Ljava/lang/Boolean;

    :cond_1
    if-eqz p3, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p1, Lkhs;->h:Ljava/lang/Boolean;

    :cond_2
    if-eqz v2, :cond_3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lkhs;->f:Ljava/lang/Boolean;

    :cond_3
    invoke-virtual {p1}, Lkhs;->d()Lkht;

    move-result-object p1

    iget-object v1, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v1}, Lkhm;->a()Lkfy;

    move-result-object v1

    invoke-static {v1}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientDelegate;->K(Lkfy;Lkht;)V

    iget-object v3, p0, Lkhl;->h:Lkwy;

    invoke-virtual {v3, p1, v2, p2, p3}, Lkwy;->b(Lkea;ZZZ)Lkhi;

    move-result-object p2

    invoke-static {p2}, Lkel;->c(Lkai;)Lkfg;

    move-result-object p3

    invoke-virtual {v1, p3}, Lkfy;->f(Lkfg;)V

    if-eqz v2, :cond_4

    invoke-static {v1}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object p3

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v2, p0, Lkhl;->b:Lkhm;

    invoke-virtual {p3}, Lkfy;->a()Lkfz;

    move-result-object p3

    invoke-virtual {v2, p3}, Lkhm;->h(Lkfz;)V

    :cond_4
    iget-object p3, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v1}, Lkfy;->a()Lkfz;

    move-result-object v1

    invoke-virtual {p3, v1}, Lkhm;->f(Lkfz;)V

    iget-object p3, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, p1, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p1, Lkht;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object p1, p1, Lkht;->c:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p3, v1, v2, p1, p4}, Landroidx/wear/ambient/AmbientDelegate;->I(ZZZZ)V

    iget-object p1, p2, Lkhi;->a:Lnou;

    iput-object p1, p0, Lkhl;->e:Lnou;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lkad;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {v0}, Lkad;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p1, p2}, Lktf;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lkhl;->c:Lnou;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    iget-object v0, p0, Lkhl;->d:Lnou;

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    iget-object v0, p0, Lkhl;->e:Lnou;

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    return-void
.end method

.method final declared-synchronized d(Lkea;Z)Lnou;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lkhl;->c:Lnou;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lnou;->cancel(Z)Z

    iget-object v1, p0, Lkhl;->i:Lkte;

    iget-object v3, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->G()Lkht;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lkte;->g(Lkea;Lkea;)Lkea;

    move-result-object p1

    iget-object v1, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->F()Lkhs;

    move-result-object v1

    invoke-virtual {v1}, Lkhs;->d()Lkht;

    move-result-object v1

    invoke-static {v1, p1}, Lkhl;->k(Lkht;Lkea;)Z

    move-result v3

    invoke-static {v1, p1}, Lkhl;->l(Lkht;Lkea;)Z

    move-result v4

    invoke-static {v1, p1}, Lkhl;->j(Lkht;Lkea;)Z

    move-result v5

    invoke-static {p1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object p1

    iget-object v1, v1, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    if-nez v5, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lkhs;->f:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lkhs;->g:Ljava/lang/Boolean;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p1, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lkhs;->d()Lkht;

    move-result-object p1

    iget-object v1, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v1}, Lkhm;->a()Lkfy;

    move-result-object v1

    invoke-static {v1}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientDelegate;->K(Lkfy;Lkht;)V

    iget-object v6, p0, Lkhl;->h:Lkwy;

    xor-int/2addr v3, v2

    xor-int/2addr v2, v4

    invoke-virtual {v6, p1, v5, v3, v2}, Lkwy;->b(Lkea;ZZZ)Lkhi;

    move-result-object v2

    invoke-static {v2}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkfy;->f(Lkfg;)V

    iget-object v3, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v1}, Lkfy;->a()Lkfz;

    move-result-object v4

    invoke-virtual {v3, v4}, Lkhm;->f(Lkfz;)V

    if-eqz v5, :cond_1

    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientDelegate;->K(Lkfy;Lkht;)V

    iget-object v3, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v1}, Lkfy;->a()Lkfz;

    move-result-object v1

    invoke-virtual {v3, v1}, Lkhm;->h(Lkfz;)V

    :cond_1
    iget-object v1, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1, p1, p2}, Landroidx/wear/ambient/AmbientDelegate;->H(Lkht;Z)V

    iget-object p1, v2, Lkhi;->a:Lnou;

    iput-object p1, p0, Lkhl;->c:Lnou;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lkad;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {v0}, Lkad;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-static {p1, p2}, Lktf;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized e(Lkea;)Lnou;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-boolean v1, p0, Lkhl;->f:Z

    iget-object v2, p0, Lkhl;->i:Lkte;

    iget-object v3, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->G()Lkht;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lkte;->g(Lkea;Lkea;)Lkea;

    move-result-object p1

    iget-object v2, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->F()Lkhs;

    move-result-object v2

    invoke-virtual {v2}, Lkhs;->d()Lkht;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-object v5, v2, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v2, p1}, Lkhl;->j(Lkht;Lkea;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    invoke-static {v2, p1}, Lkhl;->k(Lkht;Lkea;)Z

    move-result v6

    invoke-static {v2, p1}, Lkhl;->l(Lkht;Lkea;)Z

    move-result v2

    invoke-static {p1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v7, Lkhs;->f:Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v7, Lkhs;->g:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v7, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v7}, Lkhs;->d()Lkht;

    move-result-object v2

    iget-object v5, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v5}, Lkhm;->a()Lkfy;

    move-result-object v5

    invoke-static {v5}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v5

    iget-object v6, p0, Lkhl;->h:Lkwy;

    invoke-virtual {v6, p1, v1, v4, v4}, Lkwy;->d(Lkea;ZZZ)Lkhi;

    move-result-object p1

    invoke-static {p1}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v6

    invoke-virtual {v5, v6}, Lkfy;->f(Lkfg;)V

    invoke-static {v5, v2}, Landroidx/wear/ambient/AmbientDelegate;->K(Lkfy;Lkht;)V

    if-eqz v1, :cond_2

    invoke-static {v5}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v1

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v6, v3}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v3, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v1}, Lkfy;->a()Lkfz;

    move-result-object v1

    invoke-virtual {v3, v1}, Lkhm;->h(Lkfz;)V

    :cond_2
    iget-object v1, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v5}, Lkfy;->a()Lkfz;

    move-result-object v3

    invoke-virtual {v1, v3}, Lkhm;->f(Lkfz;)V

    iget-object v1, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1, v2, v4}, Landroidx/wear/ambient/AmbientDelegate;->H(Lkht;Z)V

    iget-object p1, p1, Lkhi;->a:Lnou;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lkad;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {v0}, Lkad;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p1, v0}, Lktf;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized f(Lkea;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lkhl;->h(Lkea;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized g(Lkea;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lkhl;->i:Lkte;

    iget-object v2, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v2}, Landroidx/wear/ambient/AmbientDelegate;->G()Lkht;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lkte;->g(Lkea;Lkea;)Lkea;

    move-result-object p1

    iget-object v1, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->G()Lkht;

    move-result-object v1

    invoke-static {p1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object p1

    iget-object v2, v1, Lkht;->a:Ljava/lang/Boolean;

    iput-object v2, p1, Lkhs;->f:Ljava/lang/Boolean;

    iget-object v2, v1, Lkht;->b:Ljava/lang/Boolean;

    iput-object v2, p1, Lkhs;->g:Ljava/lang/Boolean;

    iget-object v1, v1, Lkht;->c:Ljava/lang/Boolean;

    iput-object v1, p1, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {p1}, Lkhs;->d()Lkht;

    move-result-object p1

    iget-object v1, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v1}, Lkhm;->a()Lkfy;

    move-result-object v1

    invoke-static {v1}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/wear/ambient/AmbientDelegate;->K(Lkfy;Lkht;)V

    iget-object v2, p0, Lkhl;->h:Lkwy;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3, v3, v3}, Lkwy;->b(Lkea;ZZZ)Lkhi;

    move-result-object p1

    invoke-static {p1}, Lkel;->c(Lkai;)Lkfg;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkfy;->f(Lkfg;)V

    iget-object p1, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v1}, Lkfy;->a()Lkfz;

    move-result-object v1

    invoke-virtual {p1, v1}, Lkhm;->h(Lkfz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v0}, Lkad;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-interface {v0}, Lkad;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {p1, v0}, Lktf;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized h(Lkea;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->E()Lkad;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lkhl;->c:Lnou;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lnou;->cancel(Z)Z

    iget-object v1, p0, Lkhl;->i:Lkte;

    iget-object v3, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v3}, Landroidx/wear/ambient/AmbientDelegate;->G()Lkht;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lkte;->g(Lkea;Lkea;)Lkea;

    move-result-object p1

    iget-object v1, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->F()Lkhs;

    move-result-object v1

    invoke-virtual {v1}, Lkhs;->d()Lkht;

    move-result-object v1

    invoke-static {p1}, Lkhs;->b(Lkea;)Lkhs;

    move-result-object v3

    iget-object v4, v1, Lkht;->a:Ljava/lang/Boolean;

    iput-object v4, v3, Lkhs;->f:Ljava/lang/Boolean;

    iget-object v4, v1, Lkht;->b:Ljava/lang/Boolean;

    iput-object v4, v3, Lkhs;->g:Ljava/lang/Boolean;

    iget-object v4, v1, Lkht;->c:Ljava/lang/Boolean;

    iput-object v4, v3, Lkhs;->h:Ljava/lang/Boolean;

    invoke-virtual {v3}, Lkhs;->d()Lkht;

    move-result-object v3

    iget-object v4, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v4}, Lkhm;->a()Lkfy;

    move-result-object v4

    invoke-static {v4}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v4

    invoke-static {v4, v3}, Landroidx/wear/ambient/AmbientDelegate;->K(Lkfy;Lkht;)V

    iget-object v5, v3, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, v1, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1}, Lkht;->b()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x0

    :cond_0
    if-eqz v5, :cond_1

    invoke-virtual {v3}, Lkht;->b()Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v6}, Lkhl;->i(Ljava/lang/Integer;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    :goto_0
    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v6, p0, Lkhl;->h:Lkwy;

    iget-object v8, v1, Lkht;->a:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-object v9, v1, Lkht;->b:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget-object v1, v1, Lkht;->c:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lkwy;->a(Landroid/hardware/camera2/CaptureResult$Key;Lmwn;)Lkfe;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3}, Lkea;->a()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lkwy;->a(Landroid/hardware/camera2/CaptureResult$Key;Lmwn;)Lkfe;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v11, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3}, Lkea;->c()Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v12}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lkwy;->a(Landroid/hardware/camera2/CaptureResult$Key;Lmwn;)Lkfe;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6, v3, v8, v9, v1}, Lkwy;->e(Lkea;ZZZ)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Lkhi;

    invoke-static {v10}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v6

    invoke-direct {v1, v6}, Lkhi;-><init>(Lmwn;)V

    invoke-static {v1}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v1

    invoke-virtual {v4, v1}, Lkfy;->f(Lkfg;)V

    iget-object v6, p0, Lkhl;->h:Lkwy;

    new-instance v8, Lkhi;

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v3}, Lkea;->b()Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v10}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lkwy;->a(Landroid/hardware/camera2/CaptureResult$Key;Lmwn;)Lkfe;

    move-result-object v9

    sget-object v10, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v11}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lkwy;->a(Landroid/hardware/camera2/CaptureResult$Key;Lmwn;)Lkfe;

    move-result-object v6

    invoke-static {v9, v6}, Lmwn;->I(Ljava/lang/Object;Ljava/lang/Object;)Lmwn;

    move-result-object v6

    invoke-direct {v8, v6}, Lkhi;-><init>(Lmwn;)V

    if-eqz v7, :cond_2

    invoke-static {v8}, Lkel;->c(Lkai;)Lkfg;

    move-result-object v6

    invoke-virtual {v4, v6}, Lkfy;->f(Lkfg;)V

    :cond_2
    iget-object v6, p0, Lkhl;->b:Lkhm;

    invoke-virtual {v4}, Lkfy;->a()Lkfz;

    move-result-object v9

    invoke-virtual {v6, v9}, Lkhm;->f(Lkfz;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    :try_start_2
    iget-object v6, p0, Lkhl;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lkhk;

    const/4 v9, 0x3

    invoke-direct {v7, v8, v9}, Lkhk;-><init>(Lkhi;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    :try_start_3
    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-interface {v0}, Lkad;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    monitor-exit p0

    return-void

    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    :try_start_5
    invoke-interface {p1}, Lkea;->b()Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lkhl;->i(Ljava/lang/Integer;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v4}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object p1

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lkfy;->d(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Lkfy;->f(Lkfg;)V

    iget-object v1, p0, Lkhl;->b:Lkhm;

    invoke-virtual {p1}, Lkfy;->a()Lkfz;

    move-result-object p1

    invoke-virtual {v1, p1}, Lkhm;->h(Lkfz;)V

    :cond_4
    iget-object p1, p0, Lkhl;->j:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p1, v3, v2}, Landroidx/wear/ambient/AmbientDelegate;->H(Lkht;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_6
    invoke-interface {v0}, Lkad;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {p1, v0}, Lktf;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_4
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
