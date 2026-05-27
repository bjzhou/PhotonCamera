.class public final Lcrr;
.super Lkfg;


# static fields
.field private static final i:Lnak;


# instance fields
.field public final a:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final b:Lcda;

.field public final c:Z

.field public final d:Ldhi;

.field public final e:Ldms;

.field public final f:Landroid/os/Handler;

.field public g:Lcbh;

.field public final h:Lftu;

.field private final j:Lcrz;

.field private final k:Lccg;

.field private final l:Lmqp;

.field private final m:Ldkp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/camcorder/camera2/CamcorderGlobalFrameListener"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcrr;->i:Lnak;

    return-void
.end method

.method public constructor <init>(Lcsa;Lccg;Lftu;Lcfp;Lcda;ZLdkp;Ldhi;Ldms;)V
    .locals 1

    invoke-direct {p0}, Lkfg;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcrr;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p1}, Lcsa;->a()Lcrz;

    move-result-object p1

    iput-object p1, p0, Lcrr;->j:Lcrz;

    iput-object p2, p0, Lcrr;->k:Lccg;

    iput-object p3, p0, Lcrr;->h:Lftu;

    iget-object p1, p4, Lcfp;->b:Lcfq;

    invoke-interface {p1}, Lceq;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_0
    iput-object p1, p0, Lcrr;->l:Lmqp;

    iput-object p5, p0, Lcrr;->b:Lcda;

    iput-boolean p6, p0, Lcrr;->c:Z

    iput-object p7, p0, Lcrr;->m:Ldkp;

    iput-object p8, p0, Lcrr;->d:Ldhi;

    iput-object p9, p0, Lcrr;->e:Ldms;

    iget-object p1, p9, Ldms;->c:Lkfg;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcrr;->f:Landroid/os/Handler;

    sget-object p1, Ldho;->a:Ldhk;

    invoke-interface {p8}, Ldhi;->c()V

    invoke-interface {p8}, Ldhi;->c()V

    invoke-interface {p8}, Ldhi;->c()V

    invoke-interface {p8}, Ldhi;->c()V

    return-void
.end method

.method private final p()Z
    .locals 2

    iget-object v0, p0, Lcrr;->j:Lcrz;

    iget-object v0, v0, Lcrz;->g:Ljwb;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Lcrx;

    sget-object v1, Lcrx;->c:Lcrx;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcrx;->e:Lcrx;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final bC(Lkou;)V
    .locals 5

    invoke-direct {p0}, Lcrr;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcrr;->k:Lccg;

    invoke-virtual {v0, p1}, Lkfg;->bC(Lkou;)V

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcrr;->g:Lcbh;

    invoke-virtual {v0, p1}, Lkfg;->bC(Lkou;)V

    :cond_1
    iget-object v0, p0, Lcrr;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcfp;

    invoke-virtual {v0, p1}, Lcfp;->a(Lkou;)V

    :cond_2
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcrr;->j:Lcrz;

    iget-object v1, v1, Lcrz;->c:Ljwb;

    invoke-interface {v1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v1}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcrr;->m:Ldkp;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {v2, v3, v4, v0, v1}, Ldkp;->b(JJ)V

    :cond_4
    iget-object v0, p0, Lcrr;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1}, Lkfg;->bC(Lkou;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final bh(Lkfj;J)V
    .locals 2

    invoke-direct {p0}, Lcrr;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcrr;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-virtual {v1, p1, p2, p3}, Lkfg;->bh(Lkfj;J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bi(Lkkp;)V
    .locals 3

    invoke-direct {p0}, Lcrr;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcrr;->i:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "onCaptureFailed %s"

    const/16 v2, 0x239

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_0
    return-void
.end method

.method public final f(Lkfg;)Lkad;
    .locals 7

    iget-object v0, p0, Lcrr;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    new-instance v0, Lchq;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lchq;-><init>(Lcrr;Lkfg;I[B[B)V

    return-object v0
.end method
