.class public final Lcqj;
.super Ljava/lang/Object;

# interfaces
.implements Lcqr;


# instance fields
.field public final a:Lken;

.field public final b:Lcrz;

.field public c:Lnph;

.field private final d:Ljuw;

.field private e:Z

.field private final f:Lcvr;

.field private final g:Ldqx;

.field private final h:Ldfa;


# direct methods
.method public constructor <init>(Lcsa;Lgfp;Lcvr;Lkoe;Ldhi;Ldqx;Ljvs;Lken;Lcsc;[B[B[B)V
    .locals 11

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljuw;

    const/4 v2, 0x1

    const-string v3, "CdrStdFocus"

    invoke-static {v3, v2}, Ljvd;->i(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const-wide/16 v3, 0x8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4, v5}, Ljuw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    iput-object v1, v0, Lcqj;->d:Ljuw;

    invoke-virtual {p1}, Lcsa;->a()Lcrz;

    move-result-object v1

    iput-object v1, v0, Lcqj;->b:Lcrz;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcqj;->a:Lken;

    move-object v2, p3

    iput-object v2, v0, Lcqj;->f:Lcvr;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcqj;->g:Ldqx;

    new-instance v10, Ldfa;

    iget-object v3, v1, Lcrz;->s:Lgdk;

    move-object/from16 v1, p9

    iget-object v1, v1, Lcsc;->F:Ldne;

    iget-object v1, v1, Ldne;->a:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Lfuz;

    const/4 v9, 0x0

    move-object v2, v10

    move-object v4, p2

    move-object/from16 v6, p7

    move-object v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Ldfa;-><init>(Lgdk;Lgfp;Lfuz;Ljvs;Lkoe;Ldhi;[B)V

    iput-object v10, v0, Lcqj;->h:Ldfa;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcqj;->c:Lnph;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    :cond_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lcqj;->c:Lnph;

    iget-object v0, p0, Lcqj;->d:Ljuw;

    invoke-virtual {v0}, Ljuw;->b()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final bp(Lbkc;)Lccx;
    .locals 9

    invoke-virtual {p0}, Lcqj;->b()V

    iget-boolean v0, p0, Lcqj;->e:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcqj;->e:Z

    iget-object v0, p0, Lcqj;->f:Lcvr;

    sget-object v2, Lcua;->e:Lcua;

    invoke-virtual {v0, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v0

    iget-object v2, p0, Lcqj;->b:Lcrz;

    iget-object v2, v2, Lcrz;->a:Ljwb;

    new-instance v3, Lckj;

    const/4 v4, 0x7

    invoke-direct {v3, p0, v4}, Lckj;-><init>(Lcqj;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v4}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    :cond_0
    iget-object v0, p0, Lcqj;->g:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcqj;->a:Lken;

    invoke-interface {v2}, Lken;->b()Lkdz;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v3, v2

    check-cast v3, Lkfr;

    iput-object v1, v3, Lkfr;->d:Ljava/lang/Integer;

    iget-object v1, p0, Lcqj;->h:Ldfa;

    iget-object v4, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v1, v4}, Ldfa;->l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    iput-object v1, v3, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcqj;->h:Ldfa;

    iget-object v1, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Ldfa;->l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    iput-object v0, v3, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_1
    invoke-interface {v2}, Lkdz;->a()Lkea;

    move-result-object v0

    iget-object v1, p0, Lcqj;->a:Lken;

    invoke-static {}, Lbze;->o()Lkfh;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lken;->l(Lkea;Lkfh;)V

    iget-object v0, p0, Lcqj;->b:Lcrz;

    iget-object v0, v0, Lcrz;->h:Ljwb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcqj;->c()V

    new-instance v0, Lhnx;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lhnx;-><init>(Lcqj;Lbkc;I[B[B[B)V

    return-object v0
.end method

.method public final c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcqj;->d:Ljuw;

    new-instance v1, Lcqf;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcqj;I)V

    invoke-virtual {v0, v1}, Ljuw;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final close()V
    .locals 2

    invoke-virtual {p0}, Lcqj;->b()V

    iget-object v0, p0, Lcqj;->f:Lcvr;

    sget-object v1, Lcua;->e:Lcua;

    invoke-virtual {v0, v1}, Lcvr;->r(Lcua;)V

    iget-object v0, p0, Lcqj;->d:Ljuw;

    invoke-virtual {v0}, Ljuw;->close()V

    return-void
.end method

.method public final d(ZZ)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p2, :cond_0

    iget-object v2, p0, Lcqj;->b:Lcrz;

    iget-object v2, v2, Lcrz;->d:Ljwb;

    invoke-interface {v2, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v2, p0, Lcqj;->b:Lcrz;

    iget-object v2, v2, Lcrz;->a:Ljwb;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcqj;->b:Lcrz;

    iget-object v2, v2, Lcrz;->e:Ljwb;

    invoke-interface {v2, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcqj;->a:Lken;

    invoke-interface {v1, p1, p2, v0}, Lken;->m(ZZZ)V

    iget-object v0, p0, Lcqj;->a:Lken;

    invoke-interface {v0}, Lken;->b()Lkdz;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcqj;->h:Ldfa;

    invoke-virtual {v1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lkfr;

    iput-object v1, v2, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p2, p0, Lcqj;->h:Ldfa;

    invoke-virtual {p2}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    move-object v1, v0

    check-cast v1, Lkfr;

    iput-object p2, v1, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_3
    iget-object p2, p0, Lcqj;->h:Ldfa;

    invoke-virtual {p2}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    move-object v1, v0

    check-cast v1, Lkfr;

    iput-object p2, v1, Lkfr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p2, p0, Lcqj;->a:Lken;

    invoke-interface {v0}, Lkdz;->a()Lkea;

    move-result-object v0

    invoke-interface {p2, v0}, Lken;->n(Lkea;)V

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcqj;->b:Lcrz;

    iget-object p1, p1, Lcrz;->h:Ljwb;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
