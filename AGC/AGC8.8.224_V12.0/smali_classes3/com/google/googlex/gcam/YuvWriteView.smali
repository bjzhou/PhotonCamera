.class public Lcom/google/googlex/gcam/YuvWriteView;
.super Ljava/lang/Object;


# instance fields
.field public transient b:J

.field protected transient c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvWriteView__SWIG_0()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/googlex/gcam/YuvWriteView;-><init>(J)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->c:Z

    iput-wide p1, p0, Lcom/google/googlex/gcam/YuvWriteView;->b:J

    return-void
.end method

.method public static c(Lcom/google/googlex/gcam/YuvWriteView;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->b:J

    return-wide v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->b:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_height(JLcom/google/googlex/gcam/YuvWriteView;)I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->b:J

    invoke-static {v0, v1, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->YuvWriteView_width(JLcom/google/googlex/gcam/YuvWriteView;)I

    move-result v0

    return v0
.end method

.method public final declared-synchronized d()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/YuvWriteView;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/YuvWriteView;->c:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/YuvWriteView;->c:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_YuvWriteView(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/YuvWriteView;->b:J
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

    invoke-virtual {p0}, Lcom/google/googlex/gcam/YuvWriteView;->d()V

    return-void
.end method
