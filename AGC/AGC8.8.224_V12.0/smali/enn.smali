.class public final Lenn;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field public static final a:Lnak;

.field private static final g:[F


# instance fields
.field public final b:Ljava/util/concurrent/ExecutorService;

.field public final c:Llbd;

.field public final d:Lldf;

.field public final e:Landroid/view/Surface;

.field public final f:Lldc;

.field private final h:Llec;

.field private final i:Lkab;

.field private final j:Ljava/util/concurrent/Executor;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/kepler/AstrolapseEncoder"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lenn;->a:Lnak;

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lenn;->g:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lbkc;Lfbk;Ljava/util/concurrent/Executor;Ljava/io/FileOutputStream;Lkaf;Lkab;[B[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p7, "resource-closing"

    invoke-static {p7}, Ljvd;->f(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object p7

    iput-object p7, p0, Lenn;->b:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object p7

    iput-object p7, p0, Lenn;->e:Landroid/view/Surface;

    new-instance p8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p9, 0x0

    invoke-direct {p8, p9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p8, p0, Lenn;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p6, p0, Lenn;->i:Lkab;

    invoke-virtual {p5, p6}, Lkaf;->i(Lkab;)Lkaf;

    move-result-object p5

    sget-object p8, Lnbk;->a:Lnbc;

    iget p6, p6, Lkab;->e:I

    iget p6, p5, Lkaf;->a:I

    iget p8, p5, Lkaf;->b:I

    const-string v0, "video/avc"

    invoke-static {v0, p6, p8}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p6

    const-string p8, "profile"

    const/16 v0, 0x8

    invoke-virtual {p6, p8, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p8, "level"

    const v0, 0x8000

    invoke-virtual {p6, p8, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p8, "bitrate"

    const v0, 0x243d580

    invoke-virtual {p6, p8, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p8, "color-format"

    const v0, 0x7f000789

    invoke-virtual {p6, p8, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p8, "frame-rate"

    const/16 v0, 0xa

    invoke-virtual {p6, p8, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p8, "i-frame-interval"

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p6, p8, v0}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    invoke-static {p3}, Lktf;->m(Ljava/util/concurrent/Executor;)Ller;

    move-result-object p8

    invoke-virtual {p4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p8, v0}, Ller;->c(Ljava/io/FileDescriptor;)V

    invoke-virtual {p8, p9}, Ller;->b(I)V

    invoke-interface {p2}, Lfbk;->c()Lmqp;

    move-result-object p2

    invoke-virtual {p2}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    iput-object v0, p8, Ller;->b:Lnou;

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-float p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p2

    iput-object p2, p8, Ller;->c:Lnou;

    :cond_0
    invoke-virtual {p8}, Ller;->a()Llen;

    move-result-object p2

    move-object p8, p2

    check-cast p8, Lleo;

    iget-object p8, p8, Lleo;->g:Lnph;

    new-instance v0, Leli;

    const/4 v1, 0x4

    invoke-direct {v0, p4, v1}, Leli;-><init>(Ljava/io/FileOutputStream;I)V

    invoke-interface {p8, v0, p3}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    invoke-static {p2}, Lktf;->o(Llen;)Llec;

    move-result-object p2

    iput-object p2, p0, Lenn;->h:Llec;

    move-object p4, p2

    check-cast p4, Llef;

    invoke-virtual {p4, p6}, Llef;->c(Landroid/media/MediaFormat;)Lleh;

    move-result-object p4

    iput-boolean p9, p4, Lleh;->d:Z

    iput-object p7, p4, Lleh;->e:Landroid/view/Surface;

    invoke-virtual {p4}, Lleh;->a()Lleb;

    const-string p4, "glContext"

    invoke-virtual {p1, p4}, Lbkc;->r(Ljava/lang/String;)Llbd;

    move-result-object p1

    iput-object p1, p0, Lenn;->c:Llbd;

    invoke-static {p1}, Lldf;->a(Llbd;)Lldf;

    move-result-object p4

    iput-object p4, p0, Lenn;->d:Lldf;

    new-instance p4, Lldm;

    invoke-direct {p4, p7}, Lldm;-><init>(Landroid/view/Surface;)V

    iget p6, p5, Lkaf;->a:I

    iget p5, p5, Lkaf;->b:I

    invoke-static {p6, p5}, Lkyn;->d(II)Lkym;

    move-result-object p5

    invoke-static {p1, p4, p5}, Lldc;->k(Llbd;Llfg;Lkym;)Lldc;

    move-result-object p1

    iput-object p1, p0, Lenn;->f:Lldc;

    invoke-interface {p2}, Llec;->b()V

    iput-object p3, p0, Lenn;->j:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lnou;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lenn;->c()V

    iget-object v0, p0, Lenn;->h:Llec;

    check-cast v0, Llef;

    iget-object v0, v0, Llef;->b:Llen;

    invoke-interface {v0}, Llen;->a()Lnou;

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

.method public final declared-synchronized b(Landroid/hardware/HardwareBuffer;J)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lenn;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p2, Lenn;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    sget-object p3, Lnbk;->a:Lnbc;

    const-string v0, "KeplerEncoder"

    invoke-interface {p2, p3, v0}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p2

    const-string p3, "Shutdown already called. Skipping additional requests."

    const/16 v0, 0x673

    invoke-static {p2, p3, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v1, p0, Lenn;->c:Llbd;

    invoke-static {v1, v0}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Lenn;->f:Lldc;

    sget-object v3, Lfrj;->b:Lfrj;

    new-instance v4, Lfrk;

    const/4 v5, 0x1

    invoke-direct {v4, p2, p3, v5}, Lfrk;-><init>(JI)V

    invoke-virtual {v2, v3, v4}, Llbk;->e(Llcj;Lkye;)Lkzc;

    iget-object p2, p0, Lenn;->i:Lkab;

    sget-object p3, Lenn;->g:[F

    invoke-virtual {p3}, [F->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {p3, v9, v2, v2, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v3, 0x0

    iget p2, p2, Lkab;->e:I

    int-to-float v4, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v2, p3

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 p2, -0x41000000    # -0.5f

    invoke-static {p3, v9, p2, p2, v8}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object p2, p0, Lenn;->d:Lldf;

    iget-object v2, p0, Lenn;->f:Lldc;

    invoke-virtual {p2, v1, v2, p3}, Lldf;->f(Llcd;Lldc;[F)V

    iget-object p2, p0, Lenn;->b:Ljava/util/concurrent/ExecutorService;

    new-instance p3, Lblx;

    const/16 v2, 0x13

    invoke-direct {p3, p0, v0, p1, v2}, Lblx;-><init>(Lenn;Lcom/google/android/libraries/oliveoil/gl/EGLImage;Landroid/hardware/HardwareBuffer;I)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Llbk;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v0}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_6
    invoke-virtual {v1}, Llbk;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_7
    invoke-static {p1, p2}, Lgmf;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_8
    invoke-virtual {v0}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_9
    invoke-static {p1, p2}, Lgmf;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lenn;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lenn;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "KeplerEncoder"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v1, "Shutdown already called. Skipping additional requests."

    const/16 v2, 0x675

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lenn;->h:Llec;

    invoke-interface {v0}, Llec;->a()Lnou;

    move-result-object v0

    new-instance v1, Leli;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Leli;-><init>(Lenn;I)V

    iget-object v2, p0, Lenn;->j:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final close()V
    .locals 0

    invoke-virtual {p0}, Lenn;->c()V

    return-void
.end method
