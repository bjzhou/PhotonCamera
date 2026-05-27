.class public final Ldfv;
.super Ljava/lang/Object;

# interfaces
.implements Lknx;
.implements Lhdy;
.implements Lhds;


# static fields
.field public static final a:Lnak;

.field public static final b:J


# instance fields
.field public final c:Lmqp;

.field public final d:Ldgm;

.field public final e:Ldfy;

.field public final f:Lgft;

.field public g:Lmqp;

.field public h:Lmqp;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Lmqp;

.field public m:J

.field public n:Z

.field private final o:Ljava/util/concurrent/ScheduledExecutorService;

.field private final p:Ljwb;

.field private q:Lmqp;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "com/google/android/apps/camera/coach/PitchRollIndicator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldfv;->a:Lnak;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-long v0, v0

    sput-wide v0, Ldfv;->b:J

    return-void
.end method

.method public constructor <init>(Lmqp;Ldfy;Lgft;Ljwb;Ljava/util/concurrent/ScheduledExecutorService;Lfbz;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldfv;->i:Z

    iput-boolean v0, p0, Ldfv;->j:Z

    iput-boolean v0, p0, Ldfv;->k:Z

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, p0, Ldfv;->l:Lmqp;

    iput-object v1, p0, Ldfv;->q:Lmqp;

    iput-boolean v0, p0, Ldfv;->n:Z

    iput-object p5, p0, Ldfv;->o:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Ldfv;->c:Lmqp;

    iput-object p2, p0, Ldfv;->e:Ldfy;

    iput-object p4, p0, Ldfv;->p:Ljwb;

    iput-object p3, p0, Ldfv;->f:Lgft;

    new-instance p1, Ldgn;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p6}, Ldgn;-><init>(ILfbz;)V

    iput-object p1, p0, Ldfv;->d:Ldgm;

    return-void
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

.method public final declared-synchronized c()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ldfv;->j:Z

    iput-boolean v0, p0, Ldfv;->k:Z

    iget-boolean v1, p0, Ldfv;->i:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Ldfv;->g:Lmqp;

    check-cast v1, Lmqt;

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Ldfb;

    iget-object v2, v1, Ldfb;->e:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Ldfb;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v2, v1, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ldfd;

    invoke-direct {v2, v1, v0}, Ldfd;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Ldfv;->h:Lmqp;

    check-cast v1, Lmqt;

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Lell;

    sget-object v2, Lelm;->e:Lelm;

    invoke-interface {v1, v2}, Lell;->k(Lelm;)V

    iput-boolean v0, p0, Ldfv;->i:Z
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

.method public final d()V
    .locals 2

    iget-boolean v0, p0, Ldfv;->i:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Ldfv;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfv;->d:Ldgm;

    sget-object v1, Lnih;->c:Lnih;

    invoke-interface {v0, v1}, Ldgm;->c(Lnih;)V

    return-void

    :cond_0
    iget-object v0, p0, Ldfv;->d:Ldgm;

    sget-object v1, Lnih;->b:Lnih;

    invoke-interface {v0, v1}, Ldgm;->c(Lnih;)V

    :cond_1
    return-void
.end method

.method final declared-synchronized e()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Ldfv;->q:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfv;->q:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_0
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v1, p0, Ldfv;->g:Lmqp;

    check-cast v1, Lmqt;

    iget-object v1, v1, Lmqt;->a:Ljava/lang/Object;

    check-cast v1, Ldfb;

    new-instance v1, Ldfd;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, Ldfd;-><init>(Ldfv;I)V

    iget-object v2, p0, Ldfv;->o:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v1, v2}, Ldfb;->e(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldfv;->p:Ljwb;

    new-instance v2, Lcze;

    const/16 v3, 0xf

    invoke-direct {v2, p0, v3}, Lcze;-><init>(Ldfv;I)V

    iget-object v3, p0, Ldfv;->o:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldfv;->f:Lgft;

    invoke-interface {v1, p0}, Lgft;->g(Lknx;)V

    new-instance v1, Ldei;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Ldei;-><init>(Ldfv;I)V

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    iget-object v1, p0, Ldfv;->d:Ldgm;

    invoke-interface {v1}, Ldgm;->a()V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, p0, Ldfv;->q:Lmqp;

    iget-object v0, p0, Ldfv;->e:Ldfy;

    invoke-virtual {v0}, Ldfy;->b()V
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

    iput-boolean p1, p0, Ldfv;->n:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ldfv;->c()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ldfv;->c()V

    iget-object v0, p0, Ldfv;->q:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfv;->q:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldfv;->q:Lmqp;

    :cond_0
    iget-object v0, p0, Ldfv;->d:Ldgm;

    invoke-interface {v0}, Ldgm;->b()V

    iget-object v0, p0, Ldfv;->e:Ldfy;

    invoke-virtual {v0}, Ldfy;->b()V
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

    iget-object p1, p0, Ldfv;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Ldfd;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Ldfd;-><init>(Ldfv;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final v()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldfv;->f(Z)V

    iget-object v0, p0, Ldfv;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldfd;

    const/16 v2, 0xb

    invoke-direct {v1, p0, v2}, Ldfd;-><init>(Ldfv;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final w()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ldfv;->f(Z)V

    iget-object v0, p0, Ldfv;->o:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldfd;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Ldfd;-><init>(Ldfv;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
