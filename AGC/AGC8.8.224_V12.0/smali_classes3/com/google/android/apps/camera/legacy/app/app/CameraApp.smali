.class public Lcom/google/android/apps/camera/legacy/app/app/CameraApp;
.super Lfbd;

# interfaces
.implements Lcom/google/android/apps/camera/contentprovider/HasCameraContentProviderComponent;
.implements Lesy;
.implements Lhng;
.implements Lemj;
.implements Laxc;
.implements Lchv;
.implements Lehh;
.implements Lcjq;


# static fields
.field private static final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field a:Landroid/app/NotificationManager;

.field b:Loiw;

.field c:Loiw;

.field d:Llfw;

.field e:Laxz;

.field f:Lchs;

.field g:Ldfa;

.field h:Lbkc;

.field private volatile l:Lehi;

.field private volatile m:Lerw;

.field private final n:Lery;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lllo;->a:Lllo;

    iget-wide v1, v0, Lllo;->c:J

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-nez v6, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lllo;->c:J

    iget-object v0, v0, Lllo;->l:Llln;

    iput-boolean v5, v0, Llln;->a:Z

    :cond_0
    sget-wide v0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->i:J

    invoke-static {v0, v1}, Lhkn;->d(J)V

    sget-object v0, Lemz;->a:Lmvv;

    sget-object v1, Lkak;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    const-string v4, "gcastartup"

    sget-object v6, Lkak;->c:Ljava/util/Map;

    invoke-interface {v6, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_2

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not register "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". It was previously registered with: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    sget-object v6, Lkak;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkaj;

    if-nez v6, :cond_3

    sget-object v2, Lkak;->b:Ljava/util/Map;

    new-instance v3, Lkaj;

    invoke-direct {v3, v4}, Lkaj;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Lkaj;->a()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    const-string v6, "Registering \"%s\" after \"%s\" was loaded is racy."

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    aput-object v4, v7, v5

    const/4 v2, 0x0

    invoke-static {v2, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lfbd;-><init>()V

    new-instance v0, Lery;

    invoke-direct {v0}, Lery;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->n:Lery;

    return-void
.end method


# virtual methods
.method public final a()Laxd;
    .locals 7

    new-instance v1, Lnaa;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0, v0, v0}, Lnaa;-><init>([B[B[B[B)V

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e:Laxz;

    iput-object v0, v1, Lnaa;->a:Ljava/lang/Object;

    new-instance v6, Laxd;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Laxd;-><init>(Lnaa;[B[B[B[B)V

    return-object v6
.end method

.method public final b()Ldfa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->n:Lery;

    invoke-virtual {v0, p0}, Lery;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f()Lerw;

    move-result-object v0

    invoke-interface {v0}, Lerw;->b()Ldfa;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lnou;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->n:Lery;

    invoke-virtual {v0}, Lery;->a()Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final cameraContentProviderComponent(Ldja;)Ldix;
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Lerw;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initAppComponent needs to be called on main thread\u00ac"

    invoke-static {v0, v2, v1}, Llkj;->B(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Lerw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lesi;

    check-cast v0, Lesh;

    iget-object v0, v0, Lesh;->a:Lesh;

    invoke-direct {v1, v0, p1}, Lesi;-><init>(Lesh;Ldja;)V

    return-object v1
.end method

.method public final d()Lehi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->l:Lehi;

    return-object v0
.end method

.method public final e(Ljava/lang/Class;)Leml;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f()Lerw;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Leml;

    return-object p1
.end method

.method public final f()Lerw;
    .locals 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Lerw;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Lerw;

    if-nez v0, :cond_1

    const-string v0, "GCA_App#component"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v0, "GCA_App#buildComponent"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lesx;->a:Loiw;

    new-instance v5, Lgxb;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v5, v1, v0}, Lgxb;-><init>(Landroid/app/Application;Landroid/content/Context;)V

    new-instance v6, Lbkb;

    iget-object v0, v1, Lfbd;->j:Lezy;

    invoke-direct {v6, v0}, Lbkb;-><init>(Lezy;)V

    new-instance v3, Ldiu;

    invoke-direct {v3}, Ldiu;-><init>()V

    new-instance v4, Lewq;

    invoke-direct {v4}, Lewq;-><init>()V

    new-instance v7, Lgsj;

    const/4 v0, 0x0

    invoke-direct {v7, v0, v0}, Lgsj;-><init>([B[B)V

    new-instance v8, Ldez;

    invoke-direct {v8}, Ldez;-><init>()V

    new-instance v9, Ldle;

    invoke-direct {v9}, Ldle;-><init>()V

    new-instance v10, Lcis;

    invoke-direct {v10}, Lcis;-><init>()V

    new-instance v11, Ljfc;

    invoke-direct {v11}, Ljfc;-><init>()V

    new-instance v12, Lfwt;

    invoke-direct {v12}, Lfwt;-><init>()V

    new-instance v13, Ljew;

    invoke-direct {v13, v0}, Ljew;-><init>([S)V

    new-instance v14, Linb;

    invoke-direct {v14}, Linb;-><init>()V

    new-instance v15, Llho;

    invoke-direct {v15, v0}, Llho;-><init>([B)V

    new-instance v2, Lcvr;

    invoke-direct {v2, v0, v0, v0}, Lcvr;-><init>([B[B[C)V

    new-instance v0, Lesh;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v2

    move-object v2, v0

    invoke-direct/range {v2 .. v22}, Lesh;-><init>(Ldiu;Lewq;Lgxb;Lbkb;Lgsj;Ldez;Ldle;Lcis;Ljfc;Lfwt;Ljew;Linb;Llho;Lcvr;[B[B[B[B[B[B)V

    iput-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Lerw;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#initialize"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Lerw;

    const-string v2, "GCA_App#inject"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->f:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldhi;

    move-object v3, v0

    check-cast v3, Lesh;

    iget-object v3, v3, Lesh;->G:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldle;

    move-object v3, v0

    check-cast v3, Lesh;

    iget-object v3, v3, Lesh;->n:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkaq;

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    invoke-static {v3}, Lkao;->b(Lmqp;)Lkaq;

    move-result-object v3

    invoke-static {v3}, Ldjw;->b(Lkaq;)Lkap;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lesh;

    iget-object v4, v4, Lesh;->l:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljuh;

    move-object v4, v0

    check-cast v4, Lesh;

    iget-object v4, v4, Lesh;->L:Loiw;

    invoke-interface {v4}, Loiw;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v4, Lbkc;

    invoke-direct {v4, v2, v3}, Lbkc;-><init>(Ldhi;Lkap;)V

    iput-object v4, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->h:Lbkc;

    move-object v2, v0

    check-cast v2, Lesh;

    invoke-virtual {v2}, Lesh;->k()Landroid/app/NotificationManager;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->a:Landroid/app/NotificationManager;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->f:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ldhi;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v5, v2, Lesh;->M:Loiw;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v6, v2, Lesh;->O:Loiw;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v7, v2, Lesh;->P:Loiw;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v8, v2, Lesh;->Q:Loiw;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v9, v2, Lesh;->R:Loiw;

    new-instance v2, Ldfa;

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Ldfa;-><init>(Ldhi;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->g:Ldfa;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->S:Loiw;

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->b:Loiw;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->r:Loiw;

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->c:Loiw;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->U:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llfw;

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d:Llfw;

    move-object v2, v0

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->V:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laxz;

    iput-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->e:Laxz;

    check-cast v0, Lesh;

    iget-object v0, v0, Lesh;->N:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchs;

    iput-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f:Lchs;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#PrimesMemoryMonitor"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d:Llfw;

    iget-object v0, v0, Llfw;->a:Llfx;

    invoke-interface {v0}, Llfx;->b()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#strictMode"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->h:Lbkc;

    iget-object v0, v0, Lbkc;->a:Ljava/lang/Object;

    sget-object v2, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#startAsync"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->g:Ldfa;

    const-string v2, "appStartup.start"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, v0, Ldfa;->e:Ljava/lang/Object;

    iget-object v3, v0, Ldfa;->a:Ljava/lang/Object;

    iget-object v4, v0, Ldfa;->d:Ljava/lang/Object;

    iget-object v5, v0, Ldfa;->c:Ljava/lang/Object;

    invoke-static {v2, v3, v4, v5}, Lmvv;->o(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lmyu;

    iget v3, v3, Lmyu;->c:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Loiw;

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhip;

    invoke-interface {v5}, Lhip;->run()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ldfa;->f:Ljava/lang/Object;

    invoke-interface {v2}, Ldhi;->c()V

    iget-object v0, v0, Ldfa;->b:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgfy;

    invoke-virtual {v0}, Lgfy;->run()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#cancelNotifications"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v0, "GCA_App#setDefaultUncaughtExceptionHandler"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f:Lchs;

    new-instance v2, Lchu;

    iget-object v3, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->c:Loiw;

    iget-object v4, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->b:Loiw;

    invoke-direct {v2, v3, v4}, Lchu;-><init>(Loiw;Loiw;)V

    invoke-virtual {v0, v2}, Lchs;->a(Lchr;)Lkad;

    new-instance v0, Lcho;

    iget-object v2, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f:Lchs;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcho;-><init>(Lchs;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->d:Llfw;

    iget-object v0, v0, Llfw;->a:Llfx;

    invoke-interface {v0}, Llfx;->a()V

    sget-object v0, Lkan;->b:Ljava/util/logging/Logger;

    sget-object v2, Lkas;->a:Lkas;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lkan;->a:Ljava/util/logging/Logger;

    sget-object v2, Lkas;->a:Lkas;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lkan;->c:Ljava/util/logging/Logger;

    sget-object v2, Lkas;->a:Lkas;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v0, Lkan;->d:Ljava/util/logging/Logger;

    sget-object v2, Lkas;->a:Lkas;

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    iget-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->m:Lerw;

    return-object v0
.end method

.method public final g(Ljhp;)Lgxb;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f()Lerw;

    move-result-object v0

    invoke-interface {v0, p1}, Lerw;->g(Ljhp;)Lgxb;

    move-result-object p1

    return-object p1
.end method

.method public final initAppComponent()V
    .locals 0

    invoke-static {p0}, Lcom/agc/CrashHandler;->initHandler(Landroid/content/Context;)V

    invoke-static {}, Lcom/Globals;->initDevice()V

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f()Lerw;

    return-void
.end method

.method public final onCreate()V
    .locals 26

    move-object/from16 v1, p0

    const-string v0, "GCA_App#onCreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget-object v0, Lcom/agc/Application;->lifecycle:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v2, Ljka;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-boolean v0, Ljka;->b:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_8

    sget-object v2, Ljkb;->a:Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Ljkb;->b:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lhkn;->e()Lhkn;

    move-result-object v2

    sget-object v3, Lhjv;->a:Lhjv;

    invoke-virtual {v2, v3}, Lhkh;->h(Ljava/lang/Enum;)V

    sget-object v3, Ldin;->d:Ldin;

    sget-object v4, Ldin;->c:Ldin;

    invoke-virtual {v3, v4}, Ldin;->a(Ldin;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "#floggerConfig"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lnaa;->e()Lnaa;

    move-result-object v3

    new-instance v5, Lnda;

    invoke-direct {v5}, Lnda;-><init>()V

    new-instance v13, Lnda;

    iget-boolean v8, v5, Lnda;->b:Z

    iget-object v9, v5, Lnda;->c:Ljava/util/logging/Level;

    iget-boolean v10, v5, Lnda;->d:Z

    iget-object v11, v5, Lnda;->e:Ljava/util/Set;

    iget-object v12, v5, Lnda;->f:Lncb;

    const-string v7, "CAM_"

    move-object v6, v13

    invoke-direct/range {v6 .. v12}, Lnda;-><init>(Ljava/lang/String;ZLjava/util/logging/Level;ZLjava/util/Set;Lncb;)V

    new-instance v5, Lnda;

    iget-object v15, v13, Lnda;->a:Ljava/lang/String;

    iget-boolean v6, v13, Lnda;->b:Z

    iget-object v7, v13, Lnda;->c:Ljava/util/logging/Level;

    const/16 v18, 0x1

    iget-object v8, v13, Lnda;->e:Ljava/util/Set;

    iget-object v9, v13, Lnda;->f:Lncb;

    move-object v14, v5

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    invoke-direct/range {v14 .. v20}, Lnda;-><init>(Ljava/lang/String;ZLjava/util/logging/Level;ZLjava/util/Set;Lncb;)V

    new-instance v6, Lnda;

    iget-object v7, v5, Lnda;->a:Ljava/lang/String;

    const/16 v21, 0x0

    iget-object v8, v5, Lnda;->c:Ljava/util/logging/Level;

    iget-boolean v9, v5, Lnda;->d:Z

    iget-object v10, v5, Lnda;->e:Ljava/util/Set;

    iget-object v5, v5, Lnda;->f:Lncb;

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v22, v8

    move/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v25, v5

    invoke-direct/range {v19 .. v25}, Lnda;-><init>(Ljava/lang/String;ZLjava/util/logging/Level;ZLjava/util/Set;Lncb;)V

    iput-object v6, v3, Lnaa;->a:Ljava/lang/Object;

    invoke-static {v3}, Lnct;->a(Lnaa;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :cond_0
    sget-object v3, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "#floggerConfig"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {}, Lnaa;->e()Lnaa;

    move-result-object v3

    new-instance v5, Lncr;

    invoke-direct {v5}, Lncr;-><init>()V

    new-instance v6, Lncr;

    iget-boolean v5, v5, Lncr;->b:Z

    const-string v7, "CAM_"

    invoke-direct {v6, v7, v5}, Lncr;-><init>(Ljava/lang/String;Z)V

    new-instance v5, Lncr;

    iget-object v6, v6, Lncr;->a:Ljava/lang/String;

    invoke-direct {v5, v6, v4}, Lncr;-><init>(Ljava/lang/String;Z)V

    iput-object v5, v3, Lnaa;->a:Ljava/lang/Object;

    invoke-static {v3}, Lnct;->a(Lnaa;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_1
    const-string v3, "HierarchySnapshot#init"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    new-instance v6, Lltb;

    invoke-direct {v6}, Lltb;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Lltl;

    invoke-direct {v6, v0}, Lltl;-><init>(I)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Llth;

    invoke-direct {v6}, Llth;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Lltj;

    invoke-direct {v6}, Lltj;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Lltk;

    invoke-direct {v6}, Lltk;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Lltl;

    invoke-direct {v6, v4}, Lltl;-><init>(I)V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Lltm;

    invoke-direct {v6}, Lltm;-><init>()V

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v6, Llte;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v7, Lltg;

    invoke-direct {v7}, Lltg;-><init>()V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lltc;

    iget-object v9, v7, Lltg;->b:Ljava/util/List;

    new-instance v10, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v10, v8}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lltc;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v8, v7, Lltg;->b:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-direct {v6, v7}, Llte;-><init>(Lltg;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "com.google.android.libraries.snapshot.action.CAPTURE_SNAPSHOT"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    const/4 v5, 0x2

    invoke-virtual {v1, v6, v3, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "camera:logging_override_level"

    const/4 v3, 0x0

    sput v3, Ldjy;->a:I

    const-string v3, "PhenotypeHelper#init"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    sget v3, Lgfw;->a:I

    invoke-static/range {p0 .. p0}, Lloz;->h(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v3, Lchw;

    new-instance v4, Lerv;

    invoke-direct {v4, v1}, Lerv;-><init>(Lcom/google/android/apps/camera/legacy/app/app/CameraApp;)V

    invoke-direct {v3, v4}, Lchw;-><init>(Lchv;)V

    invoke-virtual {v1, v3}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-super/range {p0 .. p0}, Lfbd;->onCreate()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.camera"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lllo;->a:Lllo;

    invoke-static {}, Llho;->k()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v4, v3, Lllo;->c:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    iget-wide v4, v3, Lllo;->d:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lllo;->d:J

    iget-object v4, v3, Lllo;->l:Llln;

    iput-boolean v0, v4, Llln;->b:Z

    new-instance v0, Lkxc;

    const/16 v4, 0x11

    invoke-direct {v0, v3, v4}, Lkxc;-><init>(Lllo;I)V

    invoke-static {v0}, Llho;->j(Ljava/lang/Runnable;)V

    new-instance v0, Lllm;

    invoke-direct {v0, v3, v1}, Lllm;-><init>(Lllo;Landroid/app/Application;)V

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_5
    new-instance v0, Lehi;

    invoke-direct {v0, v1}, Lehi;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->l:Lehi;

    sget-object v0, Lhjv;->b:Lhjv;

    invoke-virtual {v2, v0}, Lhkh;->h(Ljava/lang/Enum;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot start the Google Camera on an unsupported device"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "No AttributeGenerators were registered. Try calling withCommonAttributeGenerators()."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_8
    return-void

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
