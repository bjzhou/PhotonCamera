.class public Lcom/google/googlex/gcam/NormalizedRect;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_NormalizedRect()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/google/googlex/gcam/NormalizedRect;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/google/googlex/gcam/NormalizedRect;->b:Z

    iput-wide p1, p0, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    return-void
.end method

.method public static a(Lcom/google/googlex/gcam/NormalizedRect;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    return-wide v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/NormalizedRect;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/NormalizedRect;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_NormalizedRect(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/NormalizedRect;->a:J
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

    iget-wide v0, p0, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->NormalizedRect_x0_set(JLcom/google/googlex/gcam/NormalizedRect;F)V

    return-void
.end method

.method public final d(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->NormalizedRect_x1_set(JLcom/google/googlex/gcam/NormalizedRect;F)V

    return-void
.end method

.method public final e(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->NormalizedRect_y0_set(JLcom/google/googlex/gcam/NormalizedRect;F)V

    return-void
.end method

.method public final f(F)V
    .locals 2

    iget-wide v0, p0, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->NormalizedRect_y1_set(JLcom/google/googlex/gcam/NormalizedRect;F)V

    return-void
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/NormalizedRect;->b()V

    return-void
.end method
