.class public Lcom/google/googlex/gcam/Gcam;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/gcam/Gcam;->b:Z

    iput-wide p1, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    return-void
.end method

.method public static a(Lcom/google/googlex/gcam/Gcam;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    return-wide v0
.end method


# virtual methods
.method public final b(I)Lcom/google/googlex/gcam/StaticMetadata;
    .locals 3

    new-instance v0, Lcom/google/googlex/gcam/StaticMetadata;

    iget-wide v1, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v1, v2, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetStaticMetadata(JLcom/google/googlex/gcam/Gcam;I)J

    move-result-wide v1

    const/4 p1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(JZ)V

    return-object v0
.end method

.method public final c(I)Lcom/google/googlex/gcam/Tuning;
    .locals 3

    new-instance v0, Lcom/google/googlex/gcam/Tuning;

    iget-wide v1, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v1, v2, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetTuning(JLcom/google/googlex/gcam/Gcam;I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/googlex/gcam/Tuning;-><init>(J)V

    return-object v0
.end method

.method public final d(Lcom/google/googlex/gcam/ViewfinderProcessingOptions;)V
    .locals 6

    iget-wide v0, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    iget-wide v3, p1, Lcom/google/googlex/gcam/ViewfinderProcessingOptions;->a:J

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_ConfigureViewfinderProcessing(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/ViewfinderProcessingOptions;)V

    return-void
.end method

.method public final e(I)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_FlushTemporalBinning(JLcom/google/googlex/gcam/Gcam;I)V

    return-void
.end method

.method public final declared-synchronized f()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/Gcam;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/Gcam;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_Gcam(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/Gcam;->a:J
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

    invoke-virtual {p0}, Lcom/google/googlex/gcam/Gcam;->f()V

    return-void
.end method

.method public final g()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_AllSensorIdsUnique(JLcom/google/googlex/gcam/Gcam;)Z

    move-result v0

    return v0
.end method
