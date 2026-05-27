.class public Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_BuildPayloadBurstSpecOptions__SWIG_0()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b:Z

    iput-wide v0, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_BuildPayloadBurstSpecOptions(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J
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

.method public final b(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_max_exposure_time_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V

    return-void
.end method

.method public final c(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_max_total_capture_time_ms_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;F)V

    return-void
.end method

.method public final d(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_recompute_ae_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    return-void
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a()V

    return-void
.end method
