.class public Lcom/google/googlex/gcam/ShotMetadata;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ShotMetadata__SWIG_0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->b:Z

    iput-wide p1, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/ShotMetadata;)V
    .locals 2

    invoke-static {p1}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ShotMetadata__SWIG_1(JLcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/ShotMetadata;-><init>(J)V

    return-void
.end method

.method public static a(Lcom/google/googlex/gcam/ShotMetadata;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    return-wide v0
.end method


# virtual methods
.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_timestamp_unix_us_get(JLcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()Lcom/google/googlex/gcam/AeResults;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_ae_results_get(JLcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/AeResults;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlex/gcam/AeResults;-><init>(JZ)V

    return-object v2
.end method

.method public final d()Lcom/google/googlex/gcam/FrameMetadata;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_frame_metadata_get(JLcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/FrameMetadata;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlex/gcam/FrameMetadata;-><init>(JZ)V

    return-object v2
.end method

.method public final e()Lnqp;
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_image_rotation_get(JLcom/google/googlex/gcam/ShotMetadata;)I

    move-result v0

    invoke-static {v0}, Lnqp;->a(I)Lnqp;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lnqy;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_output_color_space_get(JLcom/google/googlex/gcam/ShotMetadata;)I

    move-result v0

    sget-object v1, Lnqy;->e:[Lnqy;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    if-ltz v0, :cond_0

    aget-object v1, v1, v0

    iget v4, v1, Lnqy;->f:I

    if-eq v4, v0, :cond_2

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    :goto_0
    sget-object v1, Lnqy;->e:[Lnqy;

    if-ge v2, v3, :cond_4

    aget-object v1, v1, v2

    iget v4, v1, Lnqy;->f:I

    if-ne v4, v0, :cond_3

    :cond_2
    return-object v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-class v1, Lnqy;

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No enum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with value "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/ShotMetadata;->l()V

    return-void
.end method

.method public final g()Lcom/google/googlex/gcam/StaticMetadata;
    .locals 5

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_static_metadata_get(JLcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v2, Lcom/google/googlex/gcam/StaticMetadata;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/google/googlex/gcam/StaticMetadata;-><init>(JZ)V

    return-object v2
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_makernote_get(JLcom/google/googlex/gcam/ShotMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_software_suffix_get(JLcom/google/googlex/gcam/ShotMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_xmp_metadata_extended_get(JLcom/google/googlex/gcam/ShotMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_xmp_metadata_main_get(JLcom/google/googlex/gcam/ShotMetadata;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized l()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/ShotMetadata;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/ShotMetadata;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_ShotMetadata(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J
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

.method public final m(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_makernote_set(JLcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_software_suffix_set(JLcom/google/googlex/gcam/ShotMetadata;Ljava/lang/String;)V

    return-void
.end method

.method public final o()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_should_apply_deblur_badge_get(JLcom/google/googlex/gcam/ShotMetadata;)Z

    move-result v0

    return v0
.end method
