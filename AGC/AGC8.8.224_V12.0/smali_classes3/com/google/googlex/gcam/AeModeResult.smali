.class public Lcom/google/googlex/gcam/AeModeResult;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_AeModeResult()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/googlex/gcam/AeModeResult;->b:Z

    iput-wide v0, p0, Lcom/google/googlex/gcam/AeModeResult;->a:J

    return-void
.end method

.method public static a(Lcom/google/googlex/gcam/AeModeResult;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeModeResult;->a:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/AeModeResult;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/AeModeResult;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/AeModeResult;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_AeModeResult(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/AeModeResult;->a:J
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

.method public final c(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/AeModeResult;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeModeResult_final_tet_set(JLcom/google/googlex/gcam/AeModeResult;F)V

    return-void
.end method

.method public final d(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/AeModeResult;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeModeResult_ideal_tet_set(JLcom/google/googlex/gcam/AeModeResult;F)V

    return-void
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/AeModeResult;->b()V

    return-void
.end method
