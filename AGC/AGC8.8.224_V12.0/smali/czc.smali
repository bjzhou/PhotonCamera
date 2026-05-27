.class public final Lczc;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lnak;


# instance fields
.field public final a:Ljuf;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/util/concurrent/ExecutorService;

.field private final e:Lken;

.field private final f:Lcea;

.field private final g:Lkfl;

.field private final h:Lgsg;

.field private final i:Lgsp;

.field private final j:Lily;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/topshot/FrameServerQualityScoreProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lczc;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Lken;Lcea;Lkfl;Lgsg;Lgsp;Lily;Ljuf;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lczc;->b:Ljava/lang/Object;

    iput-object p1, p0, Lczc;->e:Lken;

    iput-object p2, p0, Lczc;->f:Lcea;

    iput-object p3, p0, Lczc;->g:Lkfl;

    iput-object p4, p0, Lczc;->h:Lgsg;

    iput-object p5, p0, Lczc;->i:Lgsp;

    iput-object p6, p0, Lczc;->j:Lily;

    iput-object p7, p0, Lczc;->a:Ljuf;

    return-void
.end method


# virtual methods
.method final declared-synchronized a()Lkad;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lczc;->e:Lken;

    invoke-interface {v0}, Lken;->c()Lkeo;

    move-result-object v0

    iget-object v1, p0, Lczc;->g:Lkfl;

    invoke-interface {v0, v1}, Lkeo;->b(Lkfl;)Lkfj;

    move-result-object v0

    iget-object v1, p0, Lczc;->e:Lken;

    invoke-interface {v1, v0}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v1

    iget-object v2, p0, Lczc;->e:Lken;

    const/4 v3, 0x2

    invoke-interface {v2, v1, v3}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v1

    new-instance v2, Lctf;

    invoke-direct {v2, p0, v0, v3}, Lctf;-><init>(Lczc;Lkfj;I)V

    invoke-interface {v1, v2}, Lkef;->k(Lkee;)V

    new-instance v0, Lcfh;

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcfh;-><init>(Lkef;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lkeb;Lkfj;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-interface {p1, p2}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v0

    if-nez p2, :cond_0

    sget-object v0, Lczc;->d:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x310

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Image from frame %s null"

    invoke-interface {v0, v1, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-interface {p1}, Lkeb;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    monitor-exit p0

    return-void

    :cond_0
    if-nez v0, :cond_1

    :try_start_3
    sget-object v0, Lczc;->d:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x30f

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Result from frame %s null"

    invoke-interface {v0, v1, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-interface {p2}, Lkpb;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :cond_1
    :try_start_5
    iget-object v1, p0, Lczc;->f:Lcea;

    invoke-virtual {v1}, Lcea;->d()Lkab;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v0}, Lkou;->g()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoq;

    goto :goto_1

    :cond_2
    check-cast v4, Lmwa;

    invoke-virtual {v4}, Lmwa;->r()Lmwn;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkoq;

    :goto_1
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v3}, Lkoq;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    move-object v5, v2

    move-object v2, v0

    goto :goto_2

    :cond_3
    move-object v5, v2

    move-object v2, v0

    :goto_2
    iget-object v0, p0, Lczc;->j:Lily;

    invoke-virtual {v0, v5}, Lily;->a(Ljava/lang/String;)Lkli;

    move-result-object v0

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-interface {v0, v4}, Lkli;->l(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/graphics/Rect;

    if-nez v3, :cond_4

    move-object v6, v4

    goto :goto_3

    :cond_4
    move-object v6, v3

    :goto_3
    new-instance v0, Lgrw;

    iget v3, v1, Lkab;->e:I

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lgrw;-><init>(Lkoq;ILandroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lczc;->h:Lgsg;

    invoke-virtual {v1, p2, v0}, Lgsg;->a(Lkpb;Lgrw;)Lgsl;

    move-result-object v0

    iget-object v1, p0, Lczc;->i:Lgsp;

    invoke-virtual {v1, v0}, Lgsp;->f(Lgsl;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {p2}, Lkpb;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz p2, :cond_5

    :try_start_7
    invoke-interface {p2}, Lkpb;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p2

    :try_start_8
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catch_0
    move-exception p2

    :cond_5
    :goto_4
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_a
    invoke-interface {p1}, Lkeb;->close()V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method
