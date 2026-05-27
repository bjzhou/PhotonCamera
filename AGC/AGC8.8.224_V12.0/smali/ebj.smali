.class public final Lebj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/List;

.field public c:Ljava/util/concurrent/Future;

.field private final d:Lcom/google/googlex/gcam/Gcam;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:F


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/Gcam;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lebj;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lebj;->b:Ljava/util/List;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lebj;->f:F

    iput-object p1, p0, Lebj;->d:Lcom/google/googlex/gcam/Gcam;

    iput-object p2, p0, Lebj;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lebj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lebj;->c:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lebj;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldrh;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Ldrh;-><init>(Lebj;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lebj;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldrh;

    const/16 v2, 0x11

    invoke-direct {v1, p0, v2}, Ldrh;-><init>(Lebj;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lebj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lebj;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ldrh;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v3}, Ldrh;-><init>(Lebj;I)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7d0

    invoke-interface {v1, v2, v4, v5, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lebj;->c:Ljava/util/concurrent/Future;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c(F)V
    .locals 7

    iget-object v0, p0, Lebj;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lebj;->f:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Lebj;->f:F

    iget-object v1, p0, Lebj;->b:Ljava/util/List;

    invoke-static {v1}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Loxq;

    iget v3, v3, Loxq;->a:I

    iget-object v4, p0, Lebj;->d:Lcom/google/googlex/gcam/Gcam;

    iget-wide v5, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    invoke-static {v5, v6, v4, v3, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_LimitShotCpuUsage(JLcom/google/googlex/gcam/Gcam;IF)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
