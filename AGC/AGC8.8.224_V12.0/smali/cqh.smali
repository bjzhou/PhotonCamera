.class public final Lcqh;
.super Ljava/lang/Object;

# interfaces
.implements Lcqr;


# instance fields
.field public final a:Lken;

.field public final b:Lcrz;

.field public final c:Lccg;

.field public final d:Ljava/lang/Runnable;

.field public e:Lnph;

.field public final f:Ljava/lang/Object;

.field private final g:Ljuw;

.field private final h:Ldqx;

.field private final i:Ldfa;


# direct methods
.method public constructor <init>(Lcsa;Lgfp;Lccg;Ldqx;Lkoe;Ldhi;Ljvs;Lken;Lcsc;[B[B[B)V
    .locals 11

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljuw;

    const/4 v2, 0x1

    const-string v3, "CdrSCFocus"

    invoke-static {v3, v2}, Ljvd;->i(Ljava/lang/String;I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    const-wide/16 v3, 0x2

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v2, v3, v4, v5}, Ljuw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    iput-object v1, v0, Lcqh;->g:Ljuw;

    new-instance v1, Lcqf;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcqf;-><init>(Lcqh;I[B)V

    iput-object v1, v0, Lcqh;->d:Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcqh;->f:Ljava/lang/Object;

    invoke-virtual {p1}, Lcsa;->a()Lcrz;

    move-result-object v1

    iput-object v1, v0, Lcqh;->b:Lcrz;

    move-object/from16 v2, p8

    iput-object v2, v0, Lcqh;->a:Lken;

    move-object v2, p3

    iput-object v2, v0, Lcqh;->c:Lccg;

    move-object v2, p4

    iput-object v2, v0, Lcqh;->h:Ldqx;

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

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Ldfa;-><init>(Lgdk;Lgfp;Lfuz;Ljvs;Lkoe;Ldhi;[B)V

    iput-object v10, v0, Lcqh;->i:Ldfa;

    return-void
.end method

.method private final c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcqh;->g:Ljuw;

    new-instance v1, Lcqf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcqh;I)V

    invoke-virtual {v0, v1}, Ljuw;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    return-void
.end method


# virtual methods
.method public final b(ZZ)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcqh;->c:Lccg;

    iget-object v2, p0, Lcqh;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcqh;->b:Lcrz;

    iget-object v1, v1, Lcrz;->h:Ljwb;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lcqh;->b:Lcrz;

    iget-object v1, v1, Lcrz;->e:Ljwb;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v1, p0, Lcqh;->h:Ldqx;

    invoke-virtual {v1}, Ldqx;->f()V

    :cond_1
    iget-object v1, p0, Lcqh;->a:Lken;

    invoke-interface {v1, p1, p2, v0}, Lken;->m(ZZZ)V

    iget-object v0, p0, Lcqh;->a:Lken;

    invoke-interface {v0}, Lken;->b()Lkdz;

    move-result-object v0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcqh;->i:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object v1, v0

    check-cast v1, Lkfr;

    iput-object p1, v1, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_2
    if-eqz p2, :cond_3

    iget-object p1, p0, Lcqh;->i:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lkfr;

    iput-object p1, p2, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_3
    iget-object p1, p0, Lcqh;->i:Ldfa;

    invoke-virtual {p1}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p1

    move-object p2, v0

    check-cast p2, Lkfr;

    iput-object p1, p2, Lkfr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p1, p0, Lcqh;->a:Lken;

    invoke-interface {v0}, Lkdz;->a()Lkea;

    move-result-object p2

    invoke-interface {p1, p2}, Lken;->n(Lkea;)V

    return-void
.end method

.method public final bp(Lbkc;)Lccx;
    .locals 10

    iget-object v0, p0, Lcqh;->g:Ljuw;

    invoke-virtual {v0}, Ljuw;->b()V

    iget-object v0, p0, Lcqh;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcqh;->e:Lnph;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lnph;->cancel(Z)Z

    :cond_0
    iget-object v1, p0, Lcqh;->c:Lccg;

    iget-object v3, p0, Lcqh;->d:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcqh;->a:Lken;

    invoke-interface {v1}, Lken;->b()Lkdz;

    move-result-object v1

    iget-object v3, p0, Lcqh;->h:Ldqx;

    iget-object v3, v3, Ldqx;->d:Ljava/lang/Object;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lkfr;

    iput-object v2, v4, Lkfr;->d:Ljava/lang/Integer;

    iget-object v2, p0, Lcqh;->i:Ldfa;

    iget-object v4, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    invoke-virtual {v2, v4}, Ldfa;->l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    move-object v4, v1

    check-cast v4, Lkfr;

    iput-object v2, v4, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcqh;->i:Ldfa;

    iget-object v3, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Ldfa;->l(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Lkfr;

    iput-object v2, v3, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_1
    invoke-interface {v1}, Lkdz;->a()Lkea;

    move-result-object v1

    iget-object v2, p0, Lcqh;->a:Lken;

    invoke-static {}, Lbze;->o()Lkfh;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lken;->l(Lkea;Lkfh;)V

    iget-object v1, p0, Lcqh;->b:Lcrz;

    iget-object v1, v1, Lcrz;->h:Ljwb;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    iput-object v5, p0, Lcqh;->e:Lnph;

    invoke-direct {p0}, Lcqh;->c()V

    new-instance v1, Lcqg;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v6, p1

    invoke-direct/range {v3 .. v9}, Lcqg;-><init>(Lcqh;Lnph;Lbkc;[B[B[B)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lcqh;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcqh;->g:Ljuw;

    invoke-virtual {v1}, Ljuw;->close()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
