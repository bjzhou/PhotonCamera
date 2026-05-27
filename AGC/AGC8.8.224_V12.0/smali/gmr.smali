.class public final Lgmr;
.super Ljava/lang/Object;

# interfaces
.implements Lebu;
.implements Lecw;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Logd;

.field public final c:Lkaf;

.field public final d:Limq;

.field public final e:Ldhi;

.field public final f:Ljvs;

.field public g:J

.field public h:I

.field public i:I

.field public j:Z

.field public final k:Lfuz;

.field public l:Lebb;

.field public final m:Lgue;

.field private final n:Ljava/util/concurrent/Executor;

.field private o:Z

.field private final p:Lgkf;

.field private final q:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/payloadprocessor/OnDemandPreviewProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgmr;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Logd;Lkaf;Lgkf;Lgue;Lfuz;Ljava/util/concurrent/Executor;Lcvr;Limq;Ldhi;Ljvs;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgmr;->b:Logd;

    iput-object p2, p0, Lgmr;->c:Lkaf;

    iput-object p3, p0, Lgmr;->p:Lgkf;

    iput-object p4, p0, Lgmr;->m:Lgue;

    iput-object p5, p0, Lgmr;->k:Lfuz;

    iput-object p6, p0, Lgmr;->n:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lgmr;->q:Lcvr;

    iput-object p8, p0, Lgmr;->d:Limq;

    iput-object p9, p0, Lgmr;->e:Ldhi;

    iput-object p10, p0, Lgmr;->f:Ljvs;

    return-void
.end method


# virtual methods
.method public final synthetic b(Lhjg;Lebd;)V
    .locals 0

    return-void
.end method

.method public final c(Leea;Lecq;)V
    .locals 0

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgmr;->d(Lgxy;)V

    return-void
.end method

.method public final declared-synchronized d(Lgxy;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lgmr;->j:Z

    iput-boolean p1, p0, Lgmr;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Leea;Lkeb;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgmr;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lgmr;->i:I

    iget-boolean v0, p0, Lgmr;->j:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lgmr;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgmr;->n:Ljava/util/concurrent/Executor;

    new-instance v1, Lggh;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, p2, v2}, Lggh;-><init>(Lgmr;Leea;Lkeb;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {p2}, Lkeb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V
    .locals 0

    iget-object p1, p0, Lgmr;->p:Lgkf;

    invoke-virtual {p1}, Lgkf;->a()Lebb;

    move-result-object p1

    iput-object p1, p0, Lgmr;->l:Lebb;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide p1

    long-to-int p2, p1

    iput p2, p0, Lgmr;->h:I

    const/4 p1, 0x0

    iput p1, p0, Lgmr;->i:I

    :cond_0
    return-void
.end method

.method public final g(Lgxy;)V
    .locals 1

    iget-object v0, p0, Lgmr;->q:Lcvr;

    invoke-virtual {v0, p1}, Lcvr;->K(Lgxy;)Leeb;

    move-result-object p1

    invoke-virtual {p1, p0}, Leeb;->f(Lecw;)V

    return-void
.end method

.method public final declared-synchronized h(Leea;)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lgmr;->j:Z

    iput-boolean p1, p0, Lgmr;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final synthetic i(Leea;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized j(J)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lgmr;->j:Z

    iput-wide p1, p0, Lgmr;->g:J

    const-wide/16 v1, 0x7530

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    iput-boolean v0, p0, Lgmr;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(Leea;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgmr;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgmr;->n:Ljava/util/concurrent/Executor;

    new-instance v1, Lfqt;

    const/16 v2, 0x14

    invoke-direct {v1, p0, p1, v2}, Lfqt;-><init>(Lgmr;Leea;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final p(Leea;)V
    .locals 0

    iget-object p1, p1, Leea;->v:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->h()Lgxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lgmr;->d(Lgxy;)V

    return-void
.end method
