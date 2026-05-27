.class public final synthetic Leon;
.super Ljava/lang/Object;

# interfaces
.implements Lkex;


# instance fields
.field public final synthetic a:Leop;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Leop;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leon;->a:Leop;

    iput-boolean p2, p0, Leon;->b:Z

    return-void
.end method


# virtual methods
.method public final a(Lkeb;)V
    .locals 6

    iget-object v0, p0, Leon;->a:Leop;

    iget-boolean v1, p0, Leon;->b:Z

    :try_start_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, v0, Leop;->f:Lept;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lept;->e(Lkeb;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkeb;->c()Lkou;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v0, Leop;->d:Lkbc;

    const-string v3, "MotionBlurVf#wrapFrame"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v0, Leop;->h:Lgue;

    invoke-virtual {v2, p1}, Lgue;->a(Lkeb;)Lgli;

    move-result-object v2

    iget-object v3, v0, Leop;->d:Lkbc;

    const-string v4, "MotionBlurVf#getGyroSampleVector"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v3, v0, Leop;->d:Lkbc;

    const-string v4, "MotionBlurVf#convertToGcamFrameMetadata"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {v1, v3}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    invoke-interface {v1}, Lkou;->e()Ljava/lang/String;

    move-result-object v3

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, v0, Leop;->c:Lnsc;

    invoke-static {v3}, Lkll;->b(Ljava/lang/String;)Lkll;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v5, v3}, Lnsc;->j(Lkou;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lkll;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    iget-object v3, v0, Leop;->d:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    iget-object v3, v0, Leop;->b:Leqc;

    invoke-virtual {v2}, Lgli;->g()Lkpb;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Leqc;->d(Lkpb;Lcom/google/googlex/gcam/FrameMetadata;)V

    :cond_2
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p1}, Lkeb;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-interface {p1}, Lkeb;->close()V

    throw v0
.end method
