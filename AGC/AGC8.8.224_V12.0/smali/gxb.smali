.class public final Lgxb;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    new-instance v0, Ljvk;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgxb;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbob;Lbob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcgy;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/Tuning;Lkou;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    sget-object p1, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, p1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/hardware/camera2/params/Face;

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p2, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    new-instance v1, Lift;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-direct {v1, p1, v0, v2, v3}, Lift;-><init>([Landroid/hardware/camera2/params/Face;Landroid/graphics/Rect;J)V

    iput-object v1, p0, Lgxb;->a:Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SCALER_CROP_REGION not present in metadata."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "STATISTICS_FACES not present in metadata."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcvr;Lfbz;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldhi;Landroid/os/UserManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lesh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lesh;

    iget-object p1, p1, Lesh;->A:Loiw;

    new-instance v0, Lhhd;

    const/16 v1, 0x10

    invoke-direct {v0, p1, v1}, Lhhd;-><init>(Loiw;I)V

    invoke-static {v0}, Logj;->b(Loiw;)Loiw;

    move-result-object p1

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lftt;Lftt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgab;Ljuh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgkr;Lkap;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    const-string p1, "CptModuleCfgBldr"

    invoke-interface {p2, p1}, Lkap;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgqo;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgxb;Loiw;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lika;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lika;->e:Lika;

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v0

    iput-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lily;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lily;Lkaf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljwb;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkaq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    const-string v0, "EndOnShutdown"

    invoke-interface {p1, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkfz;Lcom/google/googlex/gcam/FrameRequest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lknc;Lgdd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkog;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnou;Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loiw;Loiw;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lgxb;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lftx;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, v0, v0}, Lftx;-><init>(Lgxb;[B[B[B)V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final e()Z
    .locals 1

    sget-object v0, Liuy;->c:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuy;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_0

    sget-object v0, Liuy;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static o(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/google/android/apps/camera/prewarm/NoOpPrewarmService;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static final q()Landroid/os/Handler;
    .locals 1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public static final s()Ljava/util/Timer;
    .locals 1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(JLoaj;Loak;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lgxb;->b:Ljava/lang/Object;

    check-cast p2, Ljava/util/TreeMap;

    invoke-virtual {p2, p1, p4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result p1

    const/16 p2, 0x3e8

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/util/TreeMap;

    invoke-virtual {p2}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p1, Ljava/util/TreeMap;

    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
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

.method public final declared-synchronized b(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loaj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    check-cast v0, Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Loak;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d(Lkli;)I
    .locals 4

    iget-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    sget-object v1, Ldhy;->a:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {}, Lgxb;->e()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    sget-object v1, Liuy;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v1, v3}, Lkli;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    :goto_0
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public final f(Logd;Lfsr;Lfpn;)Lfox;
    .locals 3

    new-instance v0, Lfox;

    iget-object v1, p0, Lgxb;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgsm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast v2, Lgsf;

    invoke-virtual {v2}, Lgsf;->a()Lgse;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p1, p2, p3}, Lfox;-><init>(Lgsm;Logd;Lfsr;Lfpn;)V

    return-object v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Lmwn;

    invoke-virtual {v0, v1}, Lmwn;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final h(Lkll;Lika;)Lflg;
    .locals 10

    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v1, v0, Lgkr;->d:Ljava/lang/Object;

    const-string v2, "OneConfig#create"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Lgkr;->d:Ljava/lang/Object;

    const-string v2, "OneConfig#oneCharacteristics"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, v0, Lgkr;->c:Ljava/lang/Object;

    check-cast v1, Lklx;

    invoke-virtual {v1, p1}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v1

    invoke-virtual {v1}, Lklw;->k()Lklv;

    move-result-object v8

    iget-object v2, v0, Lgkr;->d:Ljava/lang/Object;

    const-string v3, "OneConfig#pictureSize"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v0, Lgkr;->a:Ljava/lang/Object;

    check-cast v2, Lhal;

    invoke-virtual {v2, p1, v8}, Lhal;->a(Lkll;Lklv;)Lkaf;

    move-result-object v9

    iget-object v2, v0, Lgkr;->d:Ljava/lang/Object;

    const-string v3, "OneConfig#selectViewfinder"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    invoke-virtual {v1}, Lklw;->y()Ljava/util/List;

    move-result-object v3

    invoke-static {v9}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v4

    iget-object v2, v0, Lgkr;->b:Ljava/lang/Object;

    move-object v5, v8

    move-object v6, p2

    move-object v7, p1

    invoke-interface/range {v2 .. v7}, Ligz;->b(Ljava/util/List;Ljzr;Lklv;Lika;Lkll;)Lkaf;

    move-result-object p2

    invoke-static {p2}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v1

    invoke-static {v8, p2, v1}, Lihb;->a(Lklv;Lkaf;Ljzr;)Lihb;

    move-result-object v7

    iget-object p2, v0, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {p2}, Lkbc;->f()V

    invoke-static {v9}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v5

    if-eqz v8, :cond_0

    new-instance p2, Lflg;

    move-object v2, p2

    move-object v3, p1

    move-object v4, v8

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Lflg;-><init>(Lkll;Lklv;Ljzr;Lkaf;Lihb;)V

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    iget-object p1, p1, Lkll;->a:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected configuration for camera ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->f(Ljava/lang/String;)V

    return-object p2

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null cameraFacing"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Lfkn;)Lfkn;
    .locals 2

    new-instance v0, Lfkf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v1}, Lfkf;-><init>(Lgxb;Lfkn;[B[B)V

    iget-object p1, p0, Lgxb;->a:Ljava/lang/Object;

    iget-object v1, v0, Lfkf;->a:Lfke;

    check-cast p1, Ljuf;

    invoke-virtual {p1, v1}, Ljuf;->d(Lkad;)V

    return-object v0
.end method

.method public final declared-synchronized j()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final k(F)F
    .locals 5

    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    check-cast p1, [F

    const/4 v0, 0x0

    aget p1, p1, v0

    return p1

    :cond_0
    const/16 v2, -0xc9

    if-ge v0, v2, :cond_1

    iget-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    check-cast p1, [F

    const/16 v0, 0xc8

    aget p1, p1, v0

    return p1

    :cond_1
    if-ltz v0, :cond_2

    iget-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    check-cast p1, [F

    aget p1, p1, v0

    return p1

    :cond_2
    neg-int v0, v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lgxb;->a:Ljava/lang/Object;

    add-int/lit8 v2, v0, -0x1

    check-cast v1, [F

    aget v3, v1, v2

    iget-object v4, p0, Lgxb;->b:Ljava/lang/Object;

    check-cast v4, [F

    aget v2, v4, v2

    aget v1, v1, v0

    aget v0, v4, v0

    cmpg-float v4, p1, v3

    if-lez v4, :cond_4

    cmpl-float v4, p1, v1

    if-ltz v4, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    sub-float/2addr p1, v3

    sub-float/2addr v1, v3

    sub-float/2addr v0, v2

    div-float/2addr p1, v1

    mul-float p1, p1, v0

    add-float/2addr v2, p1

    :cond_4
    :goto_0
    return v2
.end method

.method public final l(J)V
    .locals 3

    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    sget-object v1, Ldhq;->j:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    sget-object v1, Ldhq;->j:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    invoke-interface {p1}, Lcgy;->g()Lcha;

    move-result-object p1

    invoke-interface {p1}, Lcha;->k()V

    return-void
.end method

.method public final m(Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;Lkvj;ILjava/lang/String;)V
    .locals 11

    const-wide/16 v0, 0x0

    const/4 v2, 0x3

    if-ne p3, v2, :cond_1

    iget-object p3, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast p3, Lcvr;

    iget-object v3, p3, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-nez v5, :cond_0

    iget-object p3, p3, Lcvr;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p3, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    const/4 p3, 0x3

    goto :goto_0

    :cond_0
    const/4 p3, 0x3

    :cond_1
    :goto_0
    sget-object v3, Lnjf;->e:Lnjf;

    invoke-virtual {v3}, Lnws;->O()Lnwn;

    move-result-object v3

    const/16 v4, 0x1e

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getResultType()I

    move-result v5

    aget v4, v4, v5

    iget-object v5, v3, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_2
    iget-object v5, v3, Lnwn;->b:Lnws;

    check-cast v5, Lnjf;

    add-int/lit8 v6, v4, -0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_1b

    iput v6, v5, Lnjf;->b:I

    iget v4, v5, Lnjf;->a:I

    const/4 v6, 0x1

    or-int/2addr v4, v6

    iput v4, v5, Lnjf;->a:I

    const/4 v4, 0x2

    const/4 v5, 0x4

    filled-new-array {v6, v4, v2, v5}, [I

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getActionType()I

    move-result v8

    aget v2, v2, v8

    iget-object v8, v3, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_3
    iget-object v8, v3, Lnwn;->b:Lnws;

    check-cast v8, Lnjf;

    add-int/lit8 v9, v2, -0x1

    if-eqz v2, :cond_1a

    iput v9, v8, Lnjf;->c:I

    iget v2, v8, Lnjf;->a:I

    or-int/2addr v2, v4

    iput v2, v8, Lnjf;->a:I

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getCenterpoint()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_7

    sget-object v2, Lnis;->d:Lnis;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getCenterpoint()Landroid/graphics/Point;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget-object v9, v2, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4
    iget-object v9, v2, Lnwn;->b:Lnws;

    check-cast v9, Lnis;

    iget v10, v9, Lnis;->a:I

    or-int/2addr v10, v6

    iput v10, v9, Lnis;->a:I

    iput v8, v9, Lnis;->b:F

    invoke-interface {p1}, Lcom/google/android/libraries/lens/lenslite/api/LinkChipResult;->getCenterpoint()Landroid/graphics/Point;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    iget-object v8, v2, Lnwn;->b:Lnws;

    invoke-virtual {v8}, Lnws;->ac()Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object v8, v2, Lnwn;->b:Lnws;

    check-cast v8, Lnis;

    iget v9, v8, Lnis;->a:I

    or-int/2addr v9, v4

    iput v9, v8, Lnis;->a:I

    iput p1, v8, Lnis;->c:F

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnis;

    iget-object v2, v3, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v3}, Lnwn;->p()V

    :cond_6
    iget-object v2, v3, Lnwn;->b:Lnws;

    check-cast v2, Lnjf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v2, Lnjf;->d:Lnis;

    iget p1, v2, Lnjf;->a:I

    or-int/2addr p1, v5

    iput p1, v2, Lnjf;->a:I

    :cond_7
    invoke-virtual {v3}, Lnwn;->i()Lnws;

    move-result-object p1

    check-cast p1, Lnjf;

    iget-object v2, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast v2, Lcvr;

    iget-object v2, v2, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v8, v2, v0

    if-nez v8, :cond_8

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    :goto_1
    sget-object v1, Lnje;->h:Lnje;

    invoke-virtual {v1}, Lnws;->O()Lnwn;

    move-result-object v1

    iget-object v2, v1, Lnwn;->b:Lnws;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_9
    iget-object v2, v1, Lnwn;->b:Lnws;

    move-object v3, v2

    check-cast v3, Lnje;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v3, Lnje;->b:Lnjf;

    iget p1, v3, Lnje;->a:I

    or-int/2addr p1, v6

    iput p1, v3, Lnje;->a:I

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_a

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_a
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnje;

    add-int/lit8 p3, p3, -0x1

    iput p3, p1, Lnje;->c:I

    iget p3, p1, Lnje;->a:I

    or-int/2addr p3, v4

    iput p3, p1, Lnje;->a:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_b
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnje;

    iget p3, p1, Lnje;->a:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p1, Lnje;->a:I

    iput-wide v2, p1, Lnje;->f:J

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p3, p2, Lkvj;->b:Lkvi;

    if-nez p3, :cond_c

    sget-object p3, Lkvi;->b:Lkvi;

    :cond_c
    iget-wide v2, p3, Lkvi;->a:J

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_d
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnje;

    iget p3, p1, Lnje;->a:I

    or-int/lit8 p3, p3, 0x20

    iput p3, p1, Lnje;->a:I

    iput-wide v2, p1, Lnje;->g:J

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object p1, v1, Lnwn;->b:Lnws;

    invoke-virtual {p1}, Lnws;->ac()Z

    move-result p1

    if-nez p1, :cond_e

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_e
    iget-object p1, v1, Lnwn;->b:Lnws;

    check-cast p1, Lnje;

    iget p3, p1, Lnje;->a:I

    or-int/lit8 p3, p3, 0x8

    iput p3, p1, Lnje;->a:I

    iput-wide v2, p1, Lnje;->e:J

    :cond_f
    iget-object p1, p2, Lkvj;->c:Lkvh;

    if-nez p1, :cond_10

    sget-object p1, Lkvh;->d:Lkvh;

    :cond_10
    iget-object p1, p1, Lkvh;->b:Lmej;

    if-nez p1, :cond_11

    sget-object p1, Lmej;->b:Lmej;

    :cond_11
    iget-object p1, p1, Lmej;->a:Lnxa;

    invoke-interface {p1}, Lnxa;->size()I

    move-result p1

    if-lez p1, :cond_17

    iget-object p1, p2, Lkvj;->c:Lkvh;

    if-nez p1, :cond_12

    sget-object p1, Lkvh;->d:Lkvh;

    :cond_12
    iget-object p1, p1, Lkvh;->b:Lmej;

    if-nez p1, :cond_13

    sget-object p1, Lmej;->b:Lmej;

    :cond_13
    iget-object p1, p1, Lmej;->a:Lnxa;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lnxa;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmeh;

    iget p1, p1, Lmeh;->b:I

    invoke-static {p1}, Lkwp;->r(I)I

    move-result p1

    if-nez p1, :cond_14

    goto :goto_2

    :cond_14
    move v6, p1

    :goto_2
    add-int/lit8 v6, v6, -0x1

    invoke-static {}, Lmoz;->H()[I

    invoke-static {}, Lmoz;->H()[I

    move-result-object p1

    aget p1, p1, v6

    iget-object p2, v1, Lnwn;->b:Lnws;

    invoke-virtual {p2}, Lnws;->ac()Z

    move-result p2

    if-nez p2, :cond_15

    invoke-virtual {v1}, Lnwn;->p()V

    :cond_15
    iget-object p2, v1, Lnwn;->b:Lnws;

    check-cast p2, Lnje;

    add-int/lit8 p3, p1, -0x1

    if-eqz p1, :cond_16

    iput p3, p2, Lnje;->d:I

    iget p1, p2, Lnje;->a:I

    or-int/2addr p1, v5

    iput p1, p2, Lnje;->a:I

    goto :goto_3

    :cond_16
    throw v7

    :cond_17
    :goto_3
    iget-object p1, p0, Lgxb;->b:Ljava/lang/Object;

    sget-object p2, Lnjg;->f:Lnjg;

    invoke-virtual {p2}, Lnws;->O()Lnwn;

    move-result-object p2

    iget-object p3, p2, Lnwn;->b:Lnws;

    invoke-virtual {p3}, Lnws;->ac()Z

    move-result p3

    if-nez p3, :cond_18

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_18
    iget-object p3, p2, Lnwn;->b:Lnws;

    check-cast p3, Lnjg;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p3, Lnjg;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p3, Lnjg;->a:I

    iput-object p4, p3, Lnjg;->e:Ljava/lang/String;

    invoke-virtual {v1}, Lnwn;->i()Lnws;

    move-result-object p3

    check-cast p3, Lnje;

    iget-object p4, p2, Lnwn;->b:Lnws;

    invoke-virtual {p4}, Lnws;->ac()Z

    move-result p4

    if-nez p4, :cond_19

    invoke-virtual {p2}, Lnwn;->p()V

    :cond_19
    iget-object p4, p2, Lnwn;->b:Lnws;

    check-cast p4, Lnjg;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p4, Lnjg;->c:Lnje;

    iget p3, p4, Lnjg;->a:I

    or-int/2addr p3, v4

    iput p3, p4, Lnjg;->a:I

    invoke-virtual {p2}, Lnwn;->i()Lnws;

    move-result-object p2

    check-cast p2, Lnjg;

    invoke-interface {p1, p2}, Lfbz;->w(Lnjg;)V

    return-void

    :cond_1a
    throw v7

    :cond_1b
    throw v7

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
    .end array-data
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Lgxb;

    invoke-virtual {v0}, Lgxb;->p()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 2

    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    sget-object v1, Ldho;->aH:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgxb;->b:Ljava/lang/Object;

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final r()Lei;
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v0, p0, Lgxb;->a:Ljava/lang/Object;

    check-cast v0, Lei;

    return-object v0
.end method
