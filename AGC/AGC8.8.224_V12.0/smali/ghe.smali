.class public final Lghe;
.super Ljava/lang/Object;

# interfaces
.implements Lcbi;
.implements Lkad;


# instance fields
.field private final A:Lftu;

.field private final B:Loxq;

.field public final a:Lmqp;

.field public final b:Ljvs;

.field public final c:Lken;

.field public final d:Lmqp;

.field public final e:Lfbz;

.field public final f:I

.field public final g:Lccg;

.field public final h:Lcbt;

.field public i:Lnph;

.field public j:Lkad;

.field public k:Lkad;

.field public final l:Lgla;

.field public final m:Ldhi;

.field public final n:Lcbj;

.field public final o:Ljava/lang/Runnable;

.field public final p:Ldqx;

.field public final q:Ldfa;

.field public final r:Lnaa;

.field public final s:Lbkb;

.field private final t:Ljvs;

.field private final u:Lggt;

.field private final v:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile w:Ljava/util/concurrent/ScheduledFuture;

.field private final x:Ljava/lang/Object;

.field private final y:Ljwb;

.field private z:Z


# direct methods
.method public constructor <init>(Lfuz;Lmqp;Lggt;Ldqx;Lbkb;Ljava/util/concurrent/ScheduledExecutorService;Lccg;Lken;Ljwb;Ljwb;Lftu;Lmqp;Lfbz;Loiw;Ldfa;Lgla;Ljvs;Ljvs;Ldhi;Lcbj;[B[B[B[B[B[B)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p19

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lghe;->x:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, v0, Lghe;->j:Lkad;

    iput-object v2, v0, Lghe;->k:Lkad;

    const/4 v3, 0x0

    iput-boolean v3, v0, Lghe;->z:Z

    new-instance v3, Lghc;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Lghc;-><init>(Lghe;I)V

    iput-object v3, v0, Lghe;->o:Ljava/lang/Runnable;

    invoke-interface/range {p14 .. p14}, Loiw;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcbt;

    iput-object v3, v0, Lghe;->h:Lcbt;

    move-object v3, p2

    iput-object v3, v0, Lghe;->a:Lmqp;

    new-instance v3, Loxq;

    invoke-virtual {p1}, Lklw;->f()I

    move-result v4

    invoke-direct {v3, v4}, Loxq;-><init>(I)V

    iput-object v3, v0, Lghe;->B:Loxq;

    move-object/from16 v3, p17

    iput-object v3, v0, Lghe;->b:Ljvs;

    move-object/from16 v3, p18

    iput-object v3, v0, Lghe;->t:Ljvs;

    new-instance v3, Lnaa;

    invoke-direct {v3, v2, v2, v2}, Lnaa;-><init>([B[B[B)V

    iput-object v3, v0, Lghe;->r:Lnaa;

    move-object v2, p3

    iput-object v2, v0, Lghe;->u:Lggt;

    move-object v2, p8

    iput-object v2, v0, Lghe;->c:Lken;

    move-object v2, p4

    iput-object v2, v0, Lghe;->p:Ldqx;

    move-object v2, p5

    iput-object v2, v0, Lghe;->s:Lbkb;

    move-object/from16 v2, p12

    iput-object v2, v0, Lghe;->d:Lmqp;

    move-object v2, p6

    iput-object v2, v0, Lghe;->v:Ljava/util/concurrent/ScheduledExecutorService;

    move-object v2, p7

    iput-object v2, v0, Lghe;->g:Lccg;

    invoke-virtual {p1}, Lklw;->k()Lklv;

    move-result-object v2

    sget-object v3, Lklv;->a:Lklv;

    if-eq v2, v3, :cond_0

    move-object v2, p9

    goto :goto_0

    :cond_0
    move-object v2, p10

    :goto_0
    iput-object v2, v0, Lghe;->y:Ljwb;

    move-object/from16 v2, p11

    iput-object v2, v0, Lghe;->A:Lftu;

    move-object/from16 v2, p13

    iput-object v2, v0, Lghe;->e:Lfbz;

    move-object/from16 v2, p15

    iput-object v2, v0, Lghe;->q:Ldfa;

    move-object/from16 v2, p16

    iput-object v2, v0, Lghe;->l:Lgla;

    iput-object v1, v0, Lghe;->m:Ldhi;

    move-object/from16 v2, p20

    iput-object v2, v0, Lghe;->n:Lcbj;

    sget-object v2, Ldho;->S:Ldhk;

    invoke-interface {v1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    const/16 v2, 0x2710

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lghe;->f:I

    return-void
.end method

.method static bridge synthetic g(Lghe;ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lghe;->h(ZZZ)V

    return-void
.end method

.method private final h(ZZZ)V
    .locals 8

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz p3, :cond_0

    iget-object v2, p0, Lghe;->p:Ldqx;

    iget-object v2, v2, Ldqx;->d:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lghe;->A:Lftu;

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

    const/4 v0, 0x1

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    iget-object v0, p0, Lghe;->s:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lghe;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lggy;

    move-object v2, v1

    move-object v3, p0

    move v5, p3

    move v6, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lggy;-><init>(Lghe;ZZZZ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final b(Lhrm;)Landroid/graphics/PointF;
    .locals 3

    new-instance v0, Landroid/graphics/PointF;

    iget-object v1, p1, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p1, Lhrm;->b:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Lhrm;->c()Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Lghe;->B:Loxq;

    invoke-virtual {p1, v0}, Loxq;->h(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized bp(Lbkc;)Lccx;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-boolean v0, p0, Lghe;->z:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lghe;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lghe;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lghe;->p:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lghe;->l:Lgla;

    invoke-virtual {v0}, Lgla;->i()V

    :cond_1
    iget-object v0, p0, Lghe;->t:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lghe;->u:Lggt;

    invoke-virtual {v0, p1}, Lggt;->bp(Lbkc;)Lccx;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lghe;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    invoke-interface {v0}, Lhrd;->i()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lghe;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lghe;->B:Loxq;

    iget-object v1, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Loxq;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    iget-object v1, p0, Lghe;->e:Lfbz;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lfbz;->f(ZLandroid/graphics/PointF;)V

    iget-object v1, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p0, v1}, Lghe;->f(Landroid/graphics/PointF;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance p1, Lcbx;

    invoke-direct {p1}, Lcbx;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_4
    :try_start_2
    iget-object v1, p0, Lghe;->j:Lkad;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lkad;->close()V

    :cond_5
    iget-object v1, p0, Lghe;->k:Lkad;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lkad;->close()V

    :cond_6
    iget-object v1, p0, Lghe;->x:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v3, p0, Lghe;->w:Ljava/util/concurrent/ScheduledFuture;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    iget-object v3, p0, Lghe;->w:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_7
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p0}, Lghe;->c()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iput-object v1, p0, Lghe;->i:Lnph;

    iget-object v3, p0, Lghe;->y:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v5, Lgyp;->b:Lgyp;

    iget v5, v5, Lgyp;->f:I

    if-ne v3, v5, :cond_8

    iget-object v3, p0, Lghe;->y:Ljwb;

    sget-object v5, Lgyp;->a:Lgyp;

    iget v5, v5, Lgyp;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_8
    iget-object v3, p0, Lghe;->p:Ldqx;

    iget-object v3, v3, Ldqx;->d:Ljava/lang/Object;

    check-cast v3, Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-direct {p0, v4, v2, v3}, Lghe;->h(ZZZ)V

    iget-object v5, p0, Lghe;->r:Lnaa;

    invoke-virtual {v5}, Lnaa;->h()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    iget-object v6, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    invoke-virtual {p0, v6, v3, v2, v4}, Lghe;->e(Landroid/graphics/PointF;ZZZ)V

    iget-object p1, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    invoke-virtual {p0, p1, v3, v2, v2}, Lghe;->e(Landroid/graphics/PointF;ZZZ)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    iget-object v2, p0, Lghe;->d:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    new-instance v3, Lggz;

    invoke-direct {v3, p0, v0, p1, v5}, Lggz;-><init>(Lghe;Landroid/graphics/PointF;Lnph;Lnph;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Lghd;

    invoke-direct {v0, p0, v5, v1, p1}, Lghd;-><init>(Lghe;Lnph;Lnph;Lnph;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :cond_9
    :goto_0
    iget-object v0, p0, Lghe;->a:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    invoke-interface {v0}, Lhrd;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lghe;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    :cond_a
    iget-object v0, p0, Lghe;->u:Lggt;

    invoke-virtual {v0, p1}, Lggt;->bp(Lbkc;)Lccx;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_b
    :goto_1
    :try_start_7
    new-instance p1, Lcbx;

    invoke-direct {p1}, Lcbx;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lghe;->g:Lccg;

    iget-object v1, p0, Lghe;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccg;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lghe;->h:Lcbt;

    iget-object v1, p0, Lghe;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcbt;->c(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lghe;->h:Lcbt;

    invoke-virtual {v0}, Lcbt;->e()V

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lghe;->z:Z

    iget-object v0, p0, Lghe;->x:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lghe;->w:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lghe;->w:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lghe;->c()V

    iget-object v0, p0, Lghe;->j:Lkad;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkad;->close()V

    :cond_1
    iget-object v0, p0, Lghe;->k:Lkad;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkad;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lghe;->x:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lghe;->v:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lfzr;

    const/16 v3, 0x14

    invoke-direct {v2, p0, v3}, Lfzr;-><init>(Lghe;I)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, p1, p2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lghe;->w:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    return-void
.end method

.method public final e(Landroid/graphics/PointF;ZZZ)V
    .locals 8

    iget-object v0, p0, Lghe;->d:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v7, Lgha;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lgha;-><init>(Lghe;Landroid/graphics/PointF;ZZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Landroid/graphics/PointF;)Z
    .locals 2

    iget-object v0, p0, Lghe;->B:Loxq;

    invoke-virtual {v0, p1}, Loxq;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lghe;->m:Ldhi;

    sget-object v1, Ldhh;->b:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
