.class public Lcom/google/googlex/gcam/FrameMetadata;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FrameMetadata()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/FrameMetadata;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/google/googlex/gcam/FrameMetadata;->b:Z

    iput-wide p1, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    return-void
.end method

.method public static b(Lcom/google/googlex/gcam/FrameMetadata;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    return-wide v0
.end method


# virtual methods
.method public final a()F
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_actual_exposure_time_ms_get(JLcom/google/googlex/gcam/FrameMetadata;)F

    move-result v0

    return v0
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_timestamp_ns_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()Lcom/google/googlex/gcam/AeMetadata;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_ae_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/AeMetadata;

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/AeMetadata;-><init>(J)V

    return-object v2
.end method

.method public final e()Lcom/google/googlex/gcam/AfMetadata;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_af_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/AfMetadata;

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/AfMetadata;-><init>(J)V

    return-object v2
.end method

.method public final f()Lcom/google/googlex/gcam/AwbMetadata;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_awb_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/AwbMetadata;

    invoke-direct {v2, v0, v1}, Lcom/google/googlex/gcam/AwbMetadata;-><init>(J)V

    return-object v2
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/FrameMetadata;->k()V

    return-void
.end method

.method public final g()Lcom/google/googlex/gcam/FaceInfoVector;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_faces_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/FaceInfoVector;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlex/gcam/FaceInfoVector;-><init>(JZ)V

    return-object v2
.end method

.method public final h()Lcom/google/googlex/gcam/HalAfMetadata;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_hal_af_metadata_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/HalAfMetadata;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlex/gcam/HalAfMetadata;-><init>(JZ)V

    return-object v2
.end method

.method public final i()Lcom/google/googlex/gcam/LiveHdrMetadata;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_live_hdr_get(JLcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/LiveHdrMetadata;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlex/gcam/LiveHdrMetadata;-><init>(JZ)V

    return-object v2
.end method

.method public final j()Lnrg;
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_sensor_id_get(JLcom/google/googlex/gcam/FrameMetadata;)I

    move-result v0

    invoke-static {v0}, Lnrg;->a(I)Lnrg;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized k()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/FrameMetadata;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/FrameMetadata;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_FrameMetadata(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J
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

.method public final l(Lcom/google/googlex/gcam/FloatArray4;)V
    .locals 6

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget-wide v3, p1, Lcom/google/googlex/gcam/FloatArray4;->a:J

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_black_levels_bayer_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/FloatArray4;)V

    return-void
.end method

.method public final m(Lnql;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    iget p1, p1, Lnql;->c:I

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_flash_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    return-void
.end method
