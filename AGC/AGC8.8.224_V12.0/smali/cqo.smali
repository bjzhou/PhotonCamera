.class public final Lcqo;
.super Ljava/lang/Object;

# interfaces
.implements Lcqr;


# instance fields
.field public final a:Lccg;

.field public final b:Lmqp;

.field public final c:Lmqp;

.field public final d:Lfbz;

.field public final e:Lcrz;

.field public final f:Lken;

.field public final g:Lily;

.field public final h:Ldhi;

.field public i:Lnph;

.field public j:Lnph;

.field public k:Z

.field public final l:Ljava/lang/Runnable;

.field public final m:Ljava/lang/Runnable;

.field public final n:Ldqx;

.field public final o:Lcvr;

.field public final p:Loxq;

.field public final q:Lbkb;

.field private final r:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile s:Z

.field private t:Z

.field private final u:Lftu;

.field private final v:Ldfa;

.field private final w:Lnaa;


# direct methods
.method public constructor <init>(Lcrz;Lcvr;Lftu;Lccg;Lmqp;Lmqp;Lfbz;Ldqx;Lbkb;Lken;Ldfa;Lnaa;Loxq;Lily;Ldhi;[B[B[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcqo;->s:Z

    new-instance v1, Lcqf;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcqo;I)V

    iput-object v1, v0, Lcqo;->l:Ljava/lang/Runnable;

    new-instance v1, Lcqf;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcqo;I)V

    iput-object v1, v0, Lcqo;->m:Ljava/lang/Runnable;

    move-object v1, p1

    iput-object v1, v0, Lcqo;->e:Lcrz;

    move-object v1, p3

    iput-object v1, v0, Lcqo;->u:Lftu;

    const-string v1, "cdr_trk_ttf_ex"

    invoke-static {v1}, Ljvd;->j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcqo;->r:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v1, p4

    iput-object v1, v0, Lcqo;->a:Lccg;

    move-object v1, p5

    iput-object v1, v0, Lcqo;->b:Lmqp;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcqo;->p:Loxq;

    move-object v1, p6

    iput-object v1, v0, Lcqo;->c:Lmqp;

    move-object v1, p12

    iput-object v1, v0, Lcqo;->w:Lnaa;

    move-object v1, p7

    iput-object v1, v0, Lcqo;->d:Lfbz;

    move-object v1, p10

    iput-object v1, v0, Lcqo;->f:Lken;

    move-object v1, p8

    iput-object v1, v0, Lcqo;->n:Ldqx;

    move-object v1, p9

    iput-object v1, v0, Lcqo;->q:Lbkb;

    move-object v1, p2

    iput-object v1, v0, Lcqo;->o:Lcvr;

    move-object v1, p11

    iput-object v1, v0, Lcqo;->v:Ldfa;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcqo;->g:Lily;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcqo;->h:Ldhi;

    return-void
.end method

.method static bridge synthetic g(Lcqo;ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcqo;->j(ZZZ)V

    return-void
.end method

.method public static final h(Lhrm;)Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p0, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object p0, p0, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private final declared-synchronized i()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcqo;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcqo;->s:Z

    iget-object v0, p0, Lcqo;->o:Lcvr;

    sget-object v1, Lcua;->a:Lcua;

    invoke-virtual {v0, v1}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v0

    iget-object v1, p0, Lcqo;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    sget-object v2, Lmpx;->a:Lmpx;

    invoke-static {}, Lflb;->c()Lhrf;

    move-result-object v3

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lhrd;->d(Lmqp;Lmqp;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final j(ZZZ)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcqo;->e:Lcrz;

    iget-object v2, v2, Lcrz;->d:Ljwb;

    invoke-interface {v2, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcqo;->u:Lftu;

    iget-object v2, v2, Lftu;->a:Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Lgxb;

    iget-object v2, v2, Lgxb;->a:Ljava/lang/Object;

    check-cast v2, Lftt;

    iget-object v3, v2, Lftt;->b:Lgry;

    sget-object v4, Lgry;->e:Lgry;

    if-eq v3, v4, :cond_1

    iget-object v2, v2, Lftt;->b:Lgry;

    sget-object v3, Lgry;->f:Lgry;

    if-ne v2, v3, :cond_2

    :cond_1
    if-eqz p2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcqo;->e:Lcrz;

    iget-object v3, v3, Lcrz;->e:Ljwb;

    invoke-interface {v3, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_3
    iget-object v1, p0, Lcqo;->f:Lken;

    invoke-interface {v1, v2, p3, v0}, Lken;->m(ZZZ)V

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcqo;->f:Lken;

    invoke-interface {p1}, Lken;->b()Lkdz;

    move-result-object p1

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcqo;->v:Ldfa;

    invoke-virtual {p2}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    move-object v0, p1

    check-cast v0, Lkfr;

    iput-object p2, v0, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_4
    if-eqz p3, :cond_5

    iget-object p2, p0, Lcqo;->v:Ldfa;

    invoke-virtual {p2}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lkfr;

    iput-object p2, p3, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    :cond_5
    iget-object p2, p0, Lcqo;->v:Ldfa;

    invoke-virtual {p2}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object p2

    move-object p3, p1

    check-cast p3, Lkfr;

    iput-object p2, p3, Lkfr;->j:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object p2, p0, Lcqo;->f:Lken;

    invoke-interface {p1}, Lkdz;->a()Lkea;

    move-result-object p1

    invoke-interface {p2, p1}, Lken;->n(Lkea;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final b(Lhrd;)V
    .locals 3

    iget-object v0, p0, Lcqo;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcqf;

    const/4 v2, 0x4

    invoke-direct {v1, p1, v2}, Lcqf;-><init>(Lhrd;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final declared-synchronized bp(Lbkc;)Lccx;
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcqo;->t:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcqo;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcqo;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcqo;->b:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->a:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->k(Lhrc;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcqo;->o:Lcvr;

    sget-object v1, Lcua;->e:Lcua;

    invoke-virtual {v0, v1}, Lcvr;->r(Lcua;)V

    iget-object v0, p0, Lcqo;->j:Lnph;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Lcqo;->i:Lnph;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    :cond_2
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lcqo;->j:Lnph;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lcqo;->i:Lnph;

    iput-boolean v1, p0, Lcqo;->k:Z

    invoke-direct {p0}, Lcqo;->i()V

    iget-object v0, p0, Lcqo;->o:Lcvr;

    sget-object v2, Lcua;->e:Lcua;

    invoke-virtual {v0, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v0

    new-instance v2, Lcfh;

    const/16 v3, 0xb

    invoke-direct {v2, p0, v3}, Lcfh;-><init>(Lcqo;I)V

    invoke-virtual {v0, v2}, Ljuf;->d(Lkad;)V

    iget-object v0, p0, Lcqo;->n:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-direct {p0, v1, v2, v0}, Lcqo;->j(ZZZ)V

    iget-object v0, p0, Lcqo;->w:Lnaa;

    invoke-virtual {v0}, Lnaa;->h()V

    iget-object v0, p0, Lcqo;->p:Loxq;

    iget-object v2, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    invoke-virtual {v0, v2}, Loxq;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v2, p0, Lcqo;->d:Lfbz;

    invoke-interface {v2, v1, v0}, Lfbz;->f(ZLandroid/graphics/PointF;)V

    iget-object v1, p0, Lcqo;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v9, Lcfz;

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v8}, Lcfz;-><init>(Lcqo;Lbkc;I[B[B[B)V

    invoke-interface {v1, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iget-object v1, p0, Lcqo;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    new-instance v2, Lcqk;

    invoke-direct {v2, p0, v0, p1}, Lcqk;-><init>(Lcqo;Landroid/graphics/PointF;Lnph;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lcqm;

    invoke-direct {v0, p0, p1}, Lcqm;-><init>(Lcqo;Lnph;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_1
    new-instance p1, Lcbx;

    invoke-direct {p1}, Lcbx;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    :goto_0
    :try_start_2
    new-instance p1, Lcbx;

    invoke-direct {p1}, Lcbx;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcqo;->a:Lccg;

    iget-object v1, p0, Lcqo;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcqo;->a:Lccg;

    iget-object v1, p0, Lcqo;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccg;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcqo;->t:Z

    iget-object v0, p0, Lcqo;->o:Lcvr;

    sget-object v1, Lcua;->e:Lcua;

    invoke-virtual {v0, v1}, Lcvr;->r(Lcua;)V

    return-void
.end method

.method public final declared-synchronized d(JZ)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcqo;->r:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lbnd;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p3, v2}, Lbnd;-><init>(Lcqo;ZI)V

    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iget-object p2, p0, Lcqo;->o:Lcvr;

    sget-object p3, Lcua;->e:Lcua;

    invoke-virtual {p2, p3}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object p2

    new-instance p3, Lcfh;

    const/16 v0, 0xc

    invoke-direct {p3, p1, v0}, Lcfh;-><init>(Ljava/util/concurrent/ScheduledFuture;I)V

    invoke-virtual {p2, p3}, Ljuf;->d(Lkad;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0
.end method

.method public final declared-synchronized e()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcqo;->r:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcqo;->l:Ljava/lang/Runnable;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-interface {v0, v1, v3, v4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iget-object v1, p0, Lcqo;->o:Lcvr;

    sget-object v2, Lcua;->e:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v1

    new-instance v2, Lcfh;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v3}, Lcfh;-><init>(Ljava/util/concurrent/ScheduledFuture;I)V

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final declared-synchronized f(Landroid/graphics/PointF;Z)V
    .locals 7

    monitor-enter p0

    if-nez p2, :cond_1

    :try_start_0
    iget-object v0, p0, Lcqo;->w:Lnaa;

    invoke-virtual {v0, p1}, Lnaa;->i(Landroid/graphics/PointF;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    :try_start_1
    iget-object v0, p0, Lcqo;->v:Ldfa;

    invoke-virtual {v0, p1}, Ldfa;->n(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcqo;->v:Ldfa;

    invoke-virtual {v0, p1}, Ldfa;->m(Landroid/graphics/PointF;)[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcqo;->f:Lken;

    invoke-interface {v1}, Lken;->b()Lkdz;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v0, v2, Lkfr;->h:[Landroid/hardware/camera2/params/MeteringRectangle;

    iget-object v2, p0, Lcqo;->n:Ldqx;

    iget-object v2, v2, Ldqx;->d:Ljava/lang/Object;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcqo;->k:Z

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcqo;->v:Ldfa;

    invoke-virtual {v0}, Ldfa;->k()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v0

    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v0, v2, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;

    goto :goto_2

    :cond_3
    move-object v2, v1

    check-cast v2, Lkfr;

    iput-object v0, v2, Lkfr;->i:[Landroid/hardware/camera2/params/MeteringRectangle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_2
    if-eqz p2, :cond_5

    :try_start_2
    iget-object p2, p0, Lcqo;->f:Lken;

    invoke-interface {p2}, Lken;->d()Lker;

    move-result-object p2
    :try_end_2
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v1}, Lkdz;->a()Lkea;

    move-result-object v0

    invoke-interface {p2, v0}, Lker;->i(Lkea;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {p2}, Lker;->close()V
    :try_end_4
    .catch Lkdf; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-interface {p2}, Lker;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_6
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "addSuppressed"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p2

    :goto_3
    :try_start_7
    throw v0
    :try_end_7
    .catch Lkdf; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    move-exception p2

    :try_start_8
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catch_2
    move-exception p2

    :try_start_9
    iget p2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_a
    iget-object p1, p0, Lcqo;->f:Lken;

    invoke-interface {v1}, Lkdz;->a()Lkea;

    move-result-object p2

    invoke-interface {p1, p2}, Lken;->n(Lkea;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method
