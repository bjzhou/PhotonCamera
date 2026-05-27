.class public Lcom/google/googlex/gcam/StringRawReadViewMap;
.super Ljava/lang/Object;


# instance fields
.field public transient a:J

.field protected transient b:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_StringRawReadViewMap__SWIG_0()J

    move-result-wide v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/googlex/gcam/StringRawReadViewMap;->b:Z

    iput-wide v0, p0, Lcom/google/googlex/gcam/StringRawReadViewMap;->a:J

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/googlex/gcam/StringRawReadViewMap;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/google/googlex/gcam/StringRawReadViewMap;->b:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/google/googlex/gcam/StringRawReadViewMap;->b:Z

    invoke-static {v0, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->delete_StringRawReadViewMap(J)V

    :cond_0
    iput-wide v2, p0, Lcom/google/googlex/gcam/StringRawReadViewMap;->a:J
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

.method public final b(Ljava/lang/String;Lcom/google/googlex/gcam/RawReadView;)V
    .locals 7

    iget-wide v0, p0, Lcom/google/googlex/gcam/StringRawReadViewMap;->a:J

    iget-wide v4, p2, Lcom/google/googlex/gcam/RawReadView;->a:J

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->StringRawReadViewMap_set(JLcom/google/googlex/gcam/StringRawReadViewMap;Ljava/lang/String;JLcom/google/googlex/gcam/RawReadView;)V

    return-void
.end method

.method protected final finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/googlex/gcam/StringRawReadViewMap;->a()V

    return-void
.end method
