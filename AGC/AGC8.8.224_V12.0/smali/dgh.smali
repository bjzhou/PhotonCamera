.class public final Ldgh;
.super Ljava/lang/Object;

# interfaces
.implements Lknx;
.implements Lhdy;
.implements Lhds;


# instance fields
.field public final a:Lmqp;

.field public final b:Lgft;

.field public final c:Ldgj;

.field public final d:Ldgm;

.field public e:Lmqp;

.field public f:Lmqp;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field private final k:Ljava/util/concurrent/ScheduledExecutorService;

.field private final l:Ljwb;

.field private m:Lmqp;


# direct methods
.method public constructor <init>(Lmqp;Ldgj;Lgft;Ljwb;Ljava/util/concurrent/ScheduledExecutorService;Lfbz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldgh;->e:Lmqp;

    iput-object v0, p0, Ldgh;->f:Lmqp;

    iput-object v0, p0, Ldgh;->m:Lmqp;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldgh;->g:Z

    iput-boolean v0, p0, Ldgh;->h:Z

    iput-boolean v0, p0, Ldgh;->i:Z

    iput-boolean v0, p0, Ldgh;->j:Z

    iput-object p1, p0, Ldgh;->a:Lmqp;

    iput-object p5, p0, Ldgh;->k:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Ldgh;->b:Lgft;

    iput-object p2, p0, Ldgh;->c:Ldgj;

    iput-object p4, p0, Ldgh;->l:Ljwb;

    new-instance p1, Ldgn;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p6}, Ldgn;-><init>(ILfbz;)V

    iput-object p1, p0, Ldgh;->d:Ldgm;

    return-void
.end method

.method public static final i(FF)Z
    .locals 4

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b(Lhec;)V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 3

    iget-boolean v0, p0, Ldgh;->g:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Ldgh;->f:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfb;

    iget-object v1, v0, Ldfb;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Ldfb;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ldfd;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ldfd;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Ldgh;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lell;

    sget-object v1, Lelm;->e:Lelm;

    invoke-interface {v0, v1}, Lell;->k(Lelm;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldgh;->g:Z

    iput-boolean v0, p0, Ldgh;->h:Z

    iput-boolean v0, p0, Ldgh;->i:Z

    iget-object v0, p0, Ldgh;->d:Ldgm;

    invoke-interface {v0}, Ldgm;->g()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Ldgh;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldgh;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgh;->d:Ldgm;

    sget-object v1, Lnih;->c:Lnih;

    invoke-interface {v0, v1}, Ldgm;->c(Lnih;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldgh;->d:Ldgm;

    sget-object v1, Lnih;->b:Lnih;

    invoke-interface {v0, v1}, Ldgm;->c(Lnih;)V

    :cond_1
    return-void
.end method

.method public final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldgh;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgh;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v1, p0, Ldgh;->f:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldgh;->f:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldfb;

    new-instance v1, Ldfd;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Ldfd;-><init>(Ldgh;I)V

    iget-object v2, p0, Ldgh;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v2}, Ldfb;->e(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    :cond_1
    iget-object v1, p0, Ldgh;->l:Ljwb;

    new-instance v2, Lcze;

    const/16 v3, 0x10

    invoke-direct {v2, p0, v3}, Lcze;-><init>(Ldgh;I)V

    iget-object v3, p0, Ldgh;->k:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldgh;->b:Lgft;

    invoke-interface {v1, p0}, Lgft;->g(Lknx;)V

    new-instance v1, Ldei;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Ldei;-><init>(Ldgh;I)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldgh;->d:Ldgm;

    invoke-interface {v1}, Ldgm;->a()V

    iget-object v1, p0, Ldgh;->d:Ldgm;

    new-instance v2, Ldei;

    const/16 v3, 0x9

    invoke-direct {v2, v1, v3}, Ldei;-><init>(Ldgm;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Ldgh;->m:Lmqp;

    iget-object v0, p0, Ldgh;->c:Ldgj;

    invoke-virtual {v0}, Ldgj;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Ldgh;->j:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldgh;->c()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldgh;->c()V

    iget-object v0, p0, Ldgh;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldgh;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldgh;->m:Lmqp;

    :cond_0
    iget-object v0, p0, Ldgh;->c:Ldgj;

    invoke-virtual {v0}, Ldgj;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Lkab;)V
    .locals 2

    iget-object p1, p0, Ldgh;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ldfd;

    const/16 v1, 0x14

    invoke-direct {v0, p0, v1}, Ldfd;-><init>(Ldgh;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldgh;->f(Z)V

    iget-object v1, p0, Ldgh;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ldgg;

    invoke-direct {v2, p0, v0}, Ldgg;-><init>(Ldgh;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldgh;->f(Z)V

    iget-object v1, p0, Ldgh;->k:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Ldgg;

    invoke-direct {v2, p0, v0}, Ldgg;-><init>(Ldgh;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
