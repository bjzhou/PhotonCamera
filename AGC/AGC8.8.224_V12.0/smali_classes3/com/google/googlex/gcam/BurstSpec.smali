.class public Lcom/google/googlex/gcam/BurstSpec;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_BurstSpec()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/BurstSpec;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/gcam/BurstSpec;->b:Z

    iput-wide p1, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    return-void
.end method


# virtual methods
.method public final a(FZ)F
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_TotalCaptureTimeMs__SWIG_0(JLcom/google/googlex/gcam/BurstSpec;FZ)F

    move-result p1

    return p1
.end method

.method public final b()Lcom/google/googlex/gcam/FrameRequestVector;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_frame_requests_get(JLcom/google/googlex/gcam/BurstSpec;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/FrameRequestVector;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlex/gcam/FrameRequestVector;-><init>(JZ)V

    return-object v2
.end method

.method public final declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/BurstSpec;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/BurstSpec;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_BurstSpec(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/BurstSpec;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/BurstSpec;->c()V

    return-void
.end method
