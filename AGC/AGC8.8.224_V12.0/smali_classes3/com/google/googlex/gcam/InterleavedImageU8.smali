.class public Lcom/google/googlex/gcam/InterleavedImageU8;
.super Ljava/lang/Object;


# instance fields
.field protected transient a:Z

.field private transient b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(J)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_InterleavedImageU8__SWIG_1(III)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->a:Z

    iput-wide p1, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    return-void
.end method

.method public static d(Lcom/google/googlex/gcam/InterleavedImageU8;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_channels(JLcom/google/googlex/gcam/InterleavedImageU8;)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_height(JLcom/google/googlex/gcam/InterleavedImageU8;)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_width(JLcom/google/googlex/gcam/InterleavedImageU8;)I

    move-result v0

    return v0
.end method

.method public final e()Lcom/google/googlex/gcam/InterleavedReadViewU8;
    .locals 3

    new-instance v0, Lcom/google/googlex/gcam/InterleavedReadViewU8;

    iget-wide v1, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    invoke-static {v1, v2, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_read_view(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedReadViewU8;-><init>(J)V

    return-object v0
.end method

.method public final f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;
    .locals 3

    new-instance v0, Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    iget-wide v1, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    invoke-static {v1, v2, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_write_view(JLcom/google/googlex/gcam/InterleavedImageU8;)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;-><init>(J)V

    return-object v0
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/InterleavedImageU8;->g()V

    return-void
.end method

.method public final declared-synchronized g()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->a:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->a:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_InterleavedImageU8(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J
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

.method public final h()Z
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/InterleavedImageU8;->b:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageU8_empty(JLcom/google/googlex/gcam/InterleavedImageU8;)Z

    move-result v0

    return v0
.end method
