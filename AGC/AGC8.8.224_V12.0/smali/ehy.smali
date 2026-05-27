.class public final Lehy;
.super Lkfg;


# instance fields
.field final synthetic a:Lkeb;

.field final synthetic b:Lkai;

.field public final synthetic c:Leia;


# direct methods
.method public constructor <init>(Leia;Lkeb;Lkai;)V
    .locals 0

    iput-object p1, p0, Lehy;->c:Leia;

    iput-object p2, p0, Lehy;->a:Lkeb;

    iput-object p3, p0, Lehy;->b:Lkai;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bk()V
    .locals 4

    iget-object v0, p0, Lehy;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->c()Lkou;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lehy;->c:Leia;

    iget-object v1, v1, Leia;->g:Lcfp;

    invoke-virtual {v1, v0}, Lcfp;->a(Lkou;)V

    iget-object v1, p0, Lehy;->c:Leia;

    iget-object v1, v1, Leia;->l:Lehz;

    if-eqz v1, :cond_0

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v0, v2}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-float v0, v2

    check-cast v1, Leio;

    iget-object v1, v1, Leio;->f:Leik;

    iget-object v2, v1, Leik;->q:Ljava/lang/Object;

    const v3, 0x49742400    # 1000000.0f

    div-float/2addr v0, v3

    monitor-enter v2

    :try_start_0
    iput v0, v1, Leik;->r:F

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lehy;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    iget-object v0, p0, Lehy;->c:Leia;

    iget-object v0, v0, Leia;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lehy;->c:Leia;

    iget-object v0, v0, Leia;->e:Ljuh;

    iget-object v1, p0, Lehy;->b:Lkai;

    new-instance v3, Lekf;

    invoke-direct {v3, p0, v1, v2}, Lekf;-><init>(Lehy;Lkai;I)V

    invoke-virtual {v0, v3}, Ljuh;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
