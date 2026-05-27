.class public Lcom/google/googlex/gcam/PhysicalStabilityParams;
.super Ljava/lang/Object;


# instance fields
.field private transient a:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_PhysicalStabilityParams()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/PhysicalStabilityParams;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a:J

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/googlex/gcam/PhysicalStabilityThresholds;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PhysicalStabilityParams_thresholds_get(JLcom/google/googlex/gcam/PhysicalStabilityParams;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/PhysicalStabilityThresholds;

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/PhysicalStabilityThresholds;-><init>(J)V

    return-object v2
.end method

.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iput-wide v2, p0, Lcom/google/googlex/gcam/PhysicalStabilityParams;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/PhysicalStabilityParams;->b()V

    return-void
.end method
