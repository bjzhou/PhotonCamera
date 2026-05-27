.class public final Lhpz;
.super Ljava/lang/Object;

# interfaces
.implements Lhpy;


# static fields
.field private static final c:Lnak;


# instance fields
.field public final a:Lhqe;

.field public b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private final f:Lemq;

.field private g:Ljad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/timelapse/stabilization/EisControllerImp"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhpz;->c:Lnak;

    return-void
.end method

.method public constructor <init>(Lhqe;Lemq;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lhpz;->d:Ljava/lang/Object;

    iput-object p1, p0, Lhpz;->a:Lhqe;

    iput-object p2, p0, Lhpz;->f:Lemq;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhpz;->e:Z

    return-void
.end method

.method private final declared-synchronized f(Lhqc;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lhqc;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lhqc;->a:Lkoq;

    iget p1, p1, Lhqc;->e:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_OIS_SAMPLES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, p1}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/OisSample;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OisSample;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OisSample;->getXshift()F

    move-result v3

    invoke-virtual {v1}, Landroid/hardware/camera2/params/OisSample;->getYshift()F

    move-result v4

    iget-object v2, p0, Lhpz;->g:Ljad;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Ljad;->l(FFJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lhpz;->c:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0xf38

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Api version not support Ois. Api version: %d"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized a(JLkeb;Lkpb;Lhqc;ZLmqp;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v0, p5

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lhpz;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v3, v1, Lhpz;->e:Z

    if-eqz v3, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, v0, Lhqc;->b:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, v0, Lhqc;->b:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-interface/range {p4 .. p4}, Lkpb;->b()I

    move-result v4

    int-to-float v4, v4

    invoke-interface/range {p4 .. p4}, Lkpb;->c()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v1, v0}, Lhpz;->f(Lhqc;)V

    iget-object v6, v0, Lhqc;->a:Lkoq;

    sget-object v7, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v6, v7}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v0, Lhqc;->a:Lkoq;

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v8, v9}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iget-object v8, v0, Lhqc;->a:Lkoq;

    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_ROLLING_SHUTTER_SKEW:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v8, v9}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    long-to-float v10, v8

    iget-object v11, v0, Lhqc;->f:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget-object v14, v0, Lhqc;->b:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v4, v5

    div-float/2addr v2, v3

    div-float/2addr v4, v2

    mul-float v11, v11, v4

    div-float/2addr v11, v14

    mul-float v10, v10, v11

    float-to-long v2, v10

    sub-long/2addr v8, v2

    const-wide/16 v4, 0x2

    div-long/2addr v8, v4

    add-long/2addr v6, v8

    div-long v4, v12, v4

    iget-object v8, v0, Lhqc;->f:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, v0, Lhqc;->b:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, v0, Lhqc;->c:Landroid/util/SizeF;

    iget-object v11, v0, Lhqc;->a:Lkoq;

    sget-object v14, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v11, v14}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-virtual {v10}, Landroid/util/SizeF;->getWidth()F

    move-result v10

    div-float/2addr v10, v11

    iget-object v14, v0, Lhqc;->b:Landroid/graphics/Rect;

    if-eqz v14, :cond_4

    iget-object v15, v0, Lhqc;->f:Landroid/graphics/Rect;

    if-eqz v15, :cond_3

    iget-object v0, v0, Lhqc;->c:Landroid/util/SizeF;

    if-eqz v0, :cond_2

    div-float/2addr v8, v9

    mul-float v18, v8, v10

    add-long/2addr v4, v6

    new-instance v22, Lhqb;

    move-object/from16 v9, v22

    move-wide v10, v4

    move-object v6, v14

    move-object v7, v15

    move-wide v14, v4

    move-wide/from16 v16, v2

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v0

    invoke-direct/range {v9 .. v21}, Lhqb;-><init>(JJJJFLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/util/SizeF;)V

    iget-object v0, v1, Lhpz;->a:Lhqe;

    iget-object v2, v0, Lhqe;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lhqe;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lhqd;

    move-object/from16 v19, v3

    move-object/from16 v20, v0

    move-object/from16 v21, p4

    move-object/from16 v23, p3

    move/from16 v24, p6

    move-wide/from16 v25, p1

    move-object/from16 v27, p7

    invoke-direct/range {v19 .. v27}, Lhqd;-><init>(Lhqe;Lkpb;Lhqb;Lkeb;ZJLmqp;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_4
    sget-object v0, Lhqe;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Executor service is shut down"

    const/16 v3, 0xf3c

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null sensorSize"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null cropRegion"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Null fullImageSize"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(FFFJ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhpz;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v1, p0, Lhpz;->e:Z

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lhpz;->g:Ljad;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Ljad;->k(FFFJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhpz;->d:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lhpz;->e:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lhpz;->a:Lhqe;

    iget-object v2, v0, Lhqe;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, v0, Lhqe;->c:Ljava/util/concurrent/ExecutorService;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    sget-object v2, Lhqe;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    const-string v3, "Eis executorService is interrupted while waiting"

    const/16 v4, 0xf3b

    invoke-static {v2, v3, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_0
    iget-object v2, v0, Lhqe;->d:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpb;

    invoke-interface {v3}, Lkpb;->close()V

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lhqe;->e:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkeb;

    invoke-interface {v3}, Lkeb;->close()V

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lhqe;->h:Ldqx;

    if-eqz v2, :cond_4

    iget-object v2, v2, Ldqx;->e:Ljava/lang/Object;

    check-cast v2, Ligo;

    iget-object v2, v2, Ligo;->a:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lhqi;

    iget-object v3, v3, Lhqi;->l:Lhqh;

    iget-object v3, v3, Lhqh;->c:Lhqg;

    iget-object v4, v3, Lhqg;->f:[I

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-static {v1, v4, v5}, Landroid/opengl/GLES30;->glDeleteTextures(I[II)V

    :cond_2
    iget-object v1, v3, Lhqg;->g:[I

    if-eqz v1, :cond_3

    const/4 v3, 0x2

    invoke-static {v3, v1, v5}, Landroid/opengl/GLES30;->glDeleteFramebuffers(I[II)V

    :cond_3
    move-object v1, v2

    check-cast v1, Lhqi;

    iget-object v1, v1, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eq v1, v3, :cond_4

    move-object v1, v2

    check-cast v1, Lhqi;

    iget-object v1, v1, Lhqi;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v1, :cond_4

    move-object v1, v2

    check-cast v1, Lhqi;

    iget-object v1, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    move-object v3, v2

    check-cast v3, Lhqi;

    iget-object v3, v3, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v6, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v4, v5, v6}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-object v1, v2

    check-cast v1, Lhqi;

    iget-object v1, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    move-object v3, v2

    check-cast v3, Lhqi;

    iget-object v3, v3, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    move-object v4, v2

    check-cast v4, Lhqi;

    iget-object v4, v4, Lhqi;->i:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    move-object v1, v2

    check-cast v1, Lhqi;

    iget-object v1, v1, Lhqi;->j:Ljavax/microedition/khronos/egl/EGL10;

    move-object v3, v2

    check-cast v3, Lhqi;

    iget-object v3, v3, Lhqi;->e:Ljavax/microedition/khronos/egl/EGLDisplay;

    check-cast v2, Lhqi;

    iget-object v2, v2, Lhqi;->h:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v3, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    :cond_4
    iget-object v1, v0, Lhqe;->d:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v0, v0, Lhqe;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lhpz;->g:Ljad;

    invoke-virtual {v0}, Ljad;->f()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized d()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lhpz;->g:Ljad;

    invoke-virtual {v0}, Ljad;->i()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(ZIILandroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Lhpz;->d:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, v1, Lhpz;->e:Z

    if-eqz v0, :cond_0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p4

    :try_start_3
    iput-object v0, v1, Lhpz;->b:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    sget-object v2, Lemp;->e:Lemp;

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v7, ""

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p1

    invoke-static/range {v2 .. v7}, Lemq;->i(Lemp;IIFZLjava/lang/String;)Ljad;

    move-result-object v13

    iput-object v13, v1, Lhpz;->g:Ljad;

    iget-object v9, v1, Lhpz;->a:Lhqe;

    iget-object v12, v1, Lhpz;->f:Lemq;

    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v0, v1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lhpz;)V

    iput-object v0, v9, Lhqe;->g:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v0, v9, Lhqe;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljad;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, v9, Lhqe;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lhru;

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v2

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-direct/range {v8 .. v17}, Lhru;-><init>(Lhqe;IILemq;Ljad;I[B[B[B)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, v1, Lhpz;->g:Ljad;

    invoke-virtual {v0}, Ljad;->m()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
