.class public final Lejq;
.super Lchk;

# interfaces
.implements Leib;


# instance fields
.field private b:Lelb;

.field private final c:Landroid/app/Activity;

.field private final d:Lihg;

.field private final e:Ljava/lang/Runnable;

.field private final f:Limc;

.field private g:Lido;

.field private final h:Lva;

.field private final i:Lcvr;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lchk;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcvr;Lva;Landroid/app/Activity;Lihg;Limc;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lchk;-><init>()V

    iput-object p1, p0, Lejq;->i:Lcvr;

    iput-object p2, p0, Lejq;->h:Lva;

    iput-object p3, p0, Lejq;->c:Landroid/app/Activity;

    iput-object p4, p0, Lejq;->d:Lihg;

    iput-object p5, p0, Lejq;->f:Limc;

    new-instance p1, Leer;

    const/16 p2, 0xb

    invoke-direct {p1, p3, p2}, Leer;-><init>(Landroid/app/Activity;I)V

    iput-object p1, p0, Lejq;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lejq;->b:Lelb;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lelb;->b()Leio;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Leio;->C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized bT()Lmqp;
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lejq;->b:Lelb;

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    check-cast v0, Lesl;

    iget-object v0, v0, Lesl;->d:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leic;

    iget-object v1, p0, Lejq;->f:Limc;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Ligx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "getScreenshotFrom(): the surface is not valid"

    const/16 v2, 0x1098

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    div-int/2addr v4, v3

    if-lez v2, :cond_3

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Limc;->a(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v3}, Lihc;->b(Landroid/graphics/Bitmap;I)Lihc;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    sget-object v0, Ligx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "getScreenshotFrom(): the surface size is invalid"

    const/16 v2, 0x1097

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final cc()V
    .locals 3

    new-instance v0, Liic;

    iget-object v1, p0, Lejq;->d:Lihg;

    iget-object v2, v1, Lihg;->c:Ljava/lang/Object;

    iget-object v1, v1, Lihg;->d:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout;

    check-cast v2, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-direct {v0, v2, v1}, Liic;-><init>(Lcom/google/android/apps/camera/ui/views/MainActivityLayout;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lejq;->g:Lido;

    return-void
.end method

.method public final declared-synchronized cd()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lejq;->d:Lihg;

    iget-object v0, v0, Lihg;->e:Ljava/lang/Object;

    iget-object v1, p0, Lejq;->e:Ljava/lang/Runnable;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iget-object v0, v0, Libg;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lejq;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lejq;->c:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    iget-object v0, p0, Lejq;->b:Lelb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lelb;->c()Lekh;

    move-result-object v0

    iget-object v1, v0, Lekh;->a:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lejq;->b:Lelb;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lelb;->b()Leio;

    move-result-object v0

    iget-object v1, v0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Lcei;

    const/16 v4, 0x8

    invoke-direct {v3, v1, v4}, Lcei;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static {v3}, Lmjy;->m(Lnal;)V

    iget-object v1, v0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Leio;->n:Leia;

    invoke-virtual {v1, v4}, Leia;->a(Z)V

    goto :goto_0

    :cond_2
    iget-object v1, v0, Leio;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v0, Leio;->s:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    invoke-virtual {v0, v4, v2}, Leio;->h(ZI)V

    :goto_0
    iget-object v1, v0, Leio;->L:Ljpw;

    invoke-virtual {v0}, Leio;->c()V

    iget-object v0, v0, Leio;->e:Lejo;

    invoke-virtual {v0}, Lejl;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final l()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lejq;->b:Lelb;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lelb;->c()Lekh;

    move-result-object v0

    iget-object v1, v0, Lekh;->a:Landroid/hardware/SensorManager;

    iget-object v2, v0, Lekh;->c:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v1, v0, Lekh;->a:Landroid/hardware/SensorManager;

    iget-object v2, v0, Lekh;->b:Landroid/hardware/Sensor;

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lejq;->b:Lelb;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lelb;->b()Leio;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Leio;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v4, "datasets"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v2, v0, Leio;->d:Ldhi;

    sget-object v4, Ldhr;->a:Ldhj;

    invoke-interface {v2}, Ldhi;->c()V

    iget-object v2, v0, Leio;->t:Lcoo;

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcoo;->a(Ljava/lang/String;)V

    iget-object v1, v0, Leio;->A:Lgzm;

    sget-object v2, Lgzd;->an:Lgzs;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    iget-object v4, v0, Leio;->f:Leik;

    invoke-virtual {v4}, Leik;->k()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v0, Leio;->a:Landroid/content/Context;

    const v5, 0x7f140236

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Leio;->d(Ljava/lang/String;)V

    iget-object v4, v0, Leio;->B:Lgzn;

    sget-object v5, Lgzd;->an:Lgzs;

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v0, Leio;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, v0, Leio;->L:Ljpw;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lejq;->b:Lelb;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lelb;->a()Leia;

    move-result-object v0

    iget-object v1, v0, Leia;->b:Lkaq;

    const-string v3, "Panorama frameserver received onModuleResume"

    invoke-interface {v1, v3}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v0, v0, Leia;->h:Lken;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lken;->g()V

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lejq;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lejq;->c:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_3
    iget-object v0, p0, Lejq;->d:Lihg;

    iget-object v0, v0, Lihg;->e:Ljava/lang/Object;

    iget-object v1, p0, Lejq;->e:Ljava/lang/Runnable;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->g:Libg;

    iget-object v0, v0, Libg;->E:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public final declared-synchronized n()V
    .locals 19

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lejq;->b:Lelb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, v1, Lejq;->h:Lva;

    new-instance v2, Lesl;

    iget-object v3, v0, Lva;->a:Ljava/lang/Object;

    iget-object v4, v0, Lva;->b:Ljava/lang/Object;

    iget-object v0, v0, Lva;->c:Ljava/lang/Object;

    check-cast v0, Lese;

    check-cast v4, Lerz;

    check-cast v3, Lesh;

    invoke-direct {v2, v3, v4, v0}, Lesl;-><init>(Lesh;Lerz;Lese;)V

    iput-object v2, v1, Lejq;->b:Lelb;

    iget-object v0, v1, Lejq;->i:Lcvr;

    sget v2, Lejs;->a:I

    iget-object v3, v1, Lejq;->b:Lelb;

    invoke-static {v3}, Llkj;->C(Ljava/lang/Object;)V

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->e:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lejr;

    invoke-virtual {v3}, Lejr;->a()D

    move-result-wide v3

    double-to-float v3, v3

    iget-object v0, v0, Lcvr;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    sput v2, Lejs;->a:I

    sput v3, Lejs;->b:F

    new-instance v0, Lejs;

    invoke-direct {v0}, Lejs;-><init>()V

    const-class v2, Leju;

    invoke-static {v2, v0}, Lekj;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/apps/camera/imax/cyclops/processing/NativePoseEstimatorImpl;

    invoke-direct {v0}, Lcom/google/android/apps/camera/imax/cyclops/processing/NativePoseEstimatorImpl;-><init>()V

    const-class v2, Lejx;

    invoke-static {v2, v0}, Lekj;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Leko;

    invoke-direct {v0}, Leko;-><init>()V

    const-class v2, Lejw;

    invoke-static {v2, v0}, Lekj;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lekl;

    invoke-direct {v0}, Lekl;-><init>()V

    const-class v2, Lekk;

    invoke-static {v2, v0}, Lekj;->b(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_1
    iget-object v0, v1, Lejq;->b:Lelb;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    new-instance v2, Lfvx;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->d:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Leic;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->h:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Leji;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->i:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljuf;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->c:Lese;

    iget-object v3, v3, Lese;->q:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Liff;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->j:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Leio;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->c:Lese;

    iget-object v3, v3, Lese;->h:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->b:Lerz;

    iget-object v3, v3, Lerz;->ad:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Leoa;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->g:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Leia;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->b:Lerz;

    iget-object v3, v3, Lerz;->ba:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lkai;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->a:Lesh;

    iget-object v3, v3, Lesh;->f:Loiw;

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ldhi;

    move-object v3, v0

    check-cast v3, Lesl;

    iget-object v3, v3, Lesl;->c:Lese;

    new-instance v5, Ljew;

    iget-object v3, v3, Lese;->a:Lesh;

    invoke-virtual {v3}, Lesh;->l()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v3

    invoke-direct {v5, v3}, Ljew;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    check-cast v0, Lesl;

    iget-object v0, v0, Lesl;->e:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lejr;

    const/16 v18, 0x0

    move-object v0, v5

    move-object v5, v2

    move-object/from16 v16, v0

    invoke-direct/range {v5 .. v18}, Lfvx;-><init>(Leic;Leji;Ljuf;Liff;Leio;Lcom/google/android/apps/camera/bottombar/BottomBarController;Leoa;Leia;Lkai;Ldhi;Ljew;Lejr;[B)V

    iget-object v0, v1, Lejq;->g:Lido;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    iget-object v3, v2, Lfvx;->e:Ljava/lang/Object;

    sget-object v5, Ldho;->bq:Ldhj;

    invoke-interface {v3, v5}, Ldhi;->l(Ldhj;)Z

    move-result v3

    const/4 v5, 0x0

    if-eqz v3, :cond_2

    iget-object v3, v2, Lfvx;->a:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Leic;

    invoke-virtual {v6}, Leic;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080422

    invoke-virtual {v6, v7, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v3, Leic;

    invoke-virtual {v3, v6}, Leic;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v2, Lfvx;->a:Ljava/lang/Object;

    check-cast v3, Leic;

    invoke-virtual {v3, v4}, Leic;->setClipToOutline(Z)V

    :cond_2
    iget-object v3, v2, Lfvx;->a:Ljava/lang/Object;

    check-cast v3, Leic;

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Leic;->setEGLContextClientVersion(I)V

    iget-object v3, v2, Lfvx;->a:Ljava/lang/Object;

    iget-object v7, v2, Lfvx;->g:Ljava/lang/Object;

    check-cast v3, Leic;

    invoke-virtual {v3, v7}, Leic;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v3, v2, Lfvx;->a:Ljava/lang/Object;

    move-object v7, v3

    check-cast v7, Leic;

    iput-object v1, v7, Leic;->a:Leib;

    check-cast v3, Leic;

    invoke-virtual {v3}, Leic;->onResume()V

    iget-object v3, v2, Lfvx;->a:Ljava/lang/Object;

    invoke-static {}, Ljuh;->a()V

    iget-object v7, v0, Lido;->a:Landroid/view/ViewGroup;

    check-cast v3, Landroid/view/View;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v3, v0

    check-cast v3, Liic;

    iget-object v3, v3, Liic;->b:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    move-object v7, v0

    check-cast v7, Liic;

    iget-object v7, v7, Liic;->a:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->f(Landroid/view/View;)V

    iget-object v3, v2, Lfvx;->m:Ljava/lang/Object;

    check-cast v3, Lejr;

    iget-object v3, v3, Lejr;->b:Lkli;

    invoke-interface {v3}, Lkli;->f()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v7, v0

    check-cast v7, Liic;

    iget-object v7, v7, Liic;->b:Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    const/16 v8, 0x780

    const/16 v9, 0x438

    invoke-virtual {v7, v8, v9, v3}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->g(IILjava/lang/Integer;)V

    iget-object v3, v2, Lfvx;->d:Ljava/lang/Object;

    iget-object v7, v2, Lfvx;->h:Ljava/lang/Object;

    iget-object v8, v2, Lfvx;->g:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Leia;

    iget-object v9, v9, Leia;->a:Lkbc;

    const-string v10, "ImaxFrameServer-start"

    invoke-interface {v9, v10}, Lkbc;->e(Ljava/lang/String;)V

    move-object v9, v3

    check-cast v9, Leia;

    iget-object v9, v9, Leia;->o:Lkha;

    iget-object v9, v9, Lkha;->a:Lklj;

    sget-object v10, Lklv;->b:Lklv;

    invoke-interface {v9, v10}, Lklj;->e(Lklv;)Lkll;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v10, v3

    check-cast v10, Leia;

    iget-object v10, v10, Leia;->d:Lejr;

    iget-object v10, v10, Lejr;->c:Lekc;

    new-instance v11, Lkaf;

    iget v12, v10, Lekc;->a:I

    iget v10, v10, Lekc;->b:I

    invoke-direct {v11, v12, v10}, Lkaf;-><init>(II)V

    move-object v10, v3

    check-cast v10, Leia;

    iget-object v10, v10, Leia;->b:Lkaq;

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "Viewfinder size: "

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lkaq;->f(Ljava/lang/String;)V

    invoke-static {}, Lkfl;->a()Lkfk;

    move-result-object v10

    sget-object v12, Lkfm;->b:Lkfm;

    invoke-virtual {v10, v12}, Lkfk;->k(Lkfm;)V

    invoke-virtual {v10, v9}, Lkfk;->b(Lkll;)V

    invoke-virtual {v10, v11}, Lkfk;->i(Lkaf;)V

    invoke-virtual {v10}, Lkfk;->a()Lkfl;

    move-result-object v10

    new-instance v11, Lctf;

    move-object v12, v3

    check-cast v12, Leia;

    invoke-direct {v11, v12, v7, v6}, Lctf;-><init>(Leia;Lkai;I)V

    move-object v7, v3

    check-cast v7, Leia;

    iput-object v11, v7, Leia;->m:Lkee;

    check-cast v8, Leji;

    iget-object v7, v8, Leji;->g:Lnph;

    new-instance v8, Lenq;

    move-object v11, v3

    check-cast v11, Leia;

    invoke-direct {v8, v11, v10, v4}, Lenq;-><init>(Leia;Lkfl;I)V

    sget-object v11, Lnnv;->a:Lnnv;

    invoke-static {v7, v8, v11}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    move-object v7, v3

    check-cast v7, Leia;

    iget-object v7, v7, Leia;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lkeq;->a()Lkep;

    move-result-object v7

    invoke-virtual {v7, v9}, Lkep;->f(Lkll;)V

    invoke-virtual {v7, v10}, Lkep;->d(Lkfl;)V

    new-instance v10, Lkfd;

    invoke-direct {v10, v6}, Lkfd;-><init>(I)V

    iput-object v10, v7, Lkep;->c:Lkfd;

    move-object v10, v3

    check-cast v10, Leia;

    iget-object v10, v10, Leia;->d:Lejr;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v12, v13}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v12, v4}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v12, v14}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v12, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v12, v4}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4, v14}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4, v13}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v12, v10, Lejr;->b:Lkli;

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v12, v13}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/util/Range;

    array-length v13, v12

    add-int/lit8 v14, v13, -0x1

    aget-object v14, v12, v14

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v13, :cond_4

    aget-object v16, v12, v15

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    mul-int v6, v17, v18

    invoke-virtual {v14}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    mul-int v5, v17, v18

    if-lt v6, v5, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1e

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-virtual {v14}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v6, v6, -0x1e

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v5, v6, :cond_3

    move-object/from16 v14, v16

    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    goto :goto_0

    :cond_4
    invoke-static {v4, v14}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v10, Lejr;->b:Lkli;

    sget-object v12, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_HYPERFOCAL_DISTANCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v6, v12}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-static {v4, v6}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/Globals;->getNoiseMode(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v4, v12}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, v10, Lejr;->b:Lkli;

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->EDGE_AVAILABLE_EDGE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    sget-object v14, Lklh;->c:[I

    check-cast v4, Lklh;

    invoke-virtual {v4, v13, v14}, Lklh;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v13, v4

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_6

    aget v15, v4, v14

    if-ne v15, v6, :cond_5

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->EDGE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4, v12}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v6, v10, Lejr;->d:Ldhi;

    sget-object v12, Ldhr;->a:Ldhj;

    invoke-interface {v6}, Ldhi;->g()V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v4, Lika;->d:Lika;

    iget-object v6, v10, Lejr;->b:Lkli;

    invoke-static {v4, v6}, Lgky;->c(Lika;Lkli;)Lmwn;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v4, v10, Lejr;->d:Ldhi;

    sget-object v6, Ldho;->cc:Ldhj;

    invoke-interface {v4, v6}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Liva;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v6, Lejr;->a:Ljava/lang/Byte;

    invoke-static {v4, v6}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v4

    invoke-interface {v11, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_7
    move-object v4, v3

    check-cast v4, Leia;

    iget-object v4, v4, Leia;->o:Lkha;

    iget-object v4, v4, Lkha;->a:Lklj;

    invoke-interface {v4, v9}, Lklj;->a(Lkll;)Lkli;

    move-result-object v4

    invoke-static {v11, v7, v4}, Lgky;->d(Ljava/util/Set;Lkep;Lkli;)V

    move-object v4, v3

    check-cast v4, Leia;

    iget-object v4, v4, Leia;->o:Lkha;

    invoke-virtual {v7}, Lkep;->a()Lkeq;

    move-result-object v6

    invoke-virtual {v4, v6}, Lkha;->a(Lkeq;)Lken;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v3

    check-cast v6, Leia;

    iput-object v4, v6, Leia;->h:Lken;

    invoke-interface {v4, v11}, Lken;->j(Ljava/util/Set;)V

    check-cast v3, Leia;

    iget-object v3, v3, Leia;->a:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    iget-object v3, v2, Lfvx;->f:Ljava/lang/Object;

    new-instance v4, Leid;

    const/4 v6, 0x0

    invoke-direct {v4, v2, v0, v8, v6}, Leid;-><init>(Lfvx;Lido;I[B)V

    check-cast v3, Ljuf;

    invoke-virtual {v3, v4}, Ljuf;->d(Lkad;)V

    iget-object v0, v2, Lfvx;->f:Ljava/lang/Object;

    iget-object v3, v2, Lfvx;->l:Ljava/lang/Object;

    iget-object v4, v2, Lfvx;->b:Ljava/lang/Object;

    invoke-interface {v3, v4}, Liff;->e(Lifj;)Lkad;

    move-result-object v3

    check-cast v0, Ljuf;

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, v2, Lfvx;->c:Ljava/lang/Object;

    iget-object v3, v2, Lfvx;->k:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v0, v2, Lfvx;->i:Ljava/lang/Object;

    iget-object v3, v2, Lfvx;->j:Ljava/lang/Object;

    check-cast v0, Leoa;

    invoke-virtual {v0, v3}, Leoa;->a(Lenz;)V

    iget-object v0, v2, Lfvx;->f:Ljava/lang/Object;

    new-instance v3, Ledg;

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-direct {v3, v2, v6, v4}, Ledg;-><init>(Lfvx;I[B)V

    check-cast v0, Ljuf;

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V

    iget-object v0, v2, Lfvx;->f:Ljava/lang/Object;

    new-instance v3, Ledg;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v5, v4}, Ledg;-><init>(Lfvx;I[B)V

    check-cast v0, Ljuf;

    invoke-virtual {v0, v3}, Ljuf;->d(Lkad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public final declared-synchronized p()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lejq;->b:Lelb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lelb;->b()Leio;

    move-result-object v0

    iget-object v1, v0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Lcei;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Lcei;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;I)V

    invoke-static {v2}, Lmjy;->m(Lnal;)V

    iget-object v1, v0, Leio;->J:Lehu;

    new-instance v2, Leer;

    const/16 v3, 0xc

    invoke-direct {v2, v0, v3}, Leer;-><init>(Leio;I)V

    invoke-virtual {v1, v2}, Lehu;->b(Ljava/lang/Runnable;)V

    iget-object v1, v0, Leio;->m:Leic;

    invoke-virtual {v1}, Leic;->onPause()V

    iget-object v0, v0, Leio;->z:Liox;

    invoke-virtual {v0}, Liox;->c()V

    iget-object v0, p0, Lejq;->b:Lelb;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-interface {v0}, Lelb;->a()Leia;

    move-result-object v0

    iget-object v1, v0, Leia;->b:Lkaq;

    const-string v2, "Received onModuleStop"

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    iget-object v1, v0, Leia;->f:Ljvk;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v1, v0, Leia;->k:Lkef;

    if-eqz v1, :cond_1

    iget-object v2, v0, Leia;->m:Lkee;

    invoke-interface {v1, v2}, Lkef;->l(Lkee;)V

    :cond_1
    iget-object v1, v0, Leia;->j:Lkfj;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v1, v2}, Lkfj;->d(Landroid/view/Surface;)V

    :cond_2
    iget-object v1, v0, Leia;->i:Landroid/view/Surface;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v2, v0, Leia;->i:Landroid/view/Surface;

    :cond_3
    iput-object v2, v0, Leia;->j:Lkfj;

    iget-object v1, v0, Leia;->k:Lkef;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lkad;->close()V

    :cond_4
    iput-object v2, v0, Leia;->k:Lkef;

    iget-object v1, v0, Leia;->b:Lkaq;

    const-string v3, "Panorama frameserver closing"

    invoke-interface {v1, v3}, Lkaq;->b(Ljava/lang/String;)V

    iget-object v1, v0, Leia;->h:Lken;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lken;->close()V

    iput-object v2, v0, Leia;->h:Lken;

    iget-object v0, v0, Leia;->c:Lejo;

    invoke-virtual {v0}, Lejl;->g()V

    iget-object v0, p0, Lejq;->b:Lelb;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    check-cast v0, Lesl;

    iget-object v0, v0, Lesl;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lejo;

    invoke-virtual {v0}, Lejl;->g()V

    iget-object v0, p0, Lejq;->b:Lelb;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    check-cast v0, Lesl;

    iget-object v0, v0, Lesl;->i:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iput-object v2, p0, Lejq;->b:Lelb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized t()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lejq;->b:Lelb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lelb;->b()Leio;

    move-result-object v0

    iget-object v2, v0, Leio;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Leio;->c()V

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Leio;->h(ZI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
