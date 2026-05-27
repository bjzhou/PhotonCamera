.class public final Lccl;
.super Lipe;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Ldww;

.field public b:Likz;

.field public c:Likz;

.field private final d:Lcbr;

.field private final e:Lklv;

.field private final f:Ljava/util/Set;

.field private final g:Litm;

.field private final h:Lhwc;

.field private final i:Lmqp;

.field private final j:Lhrq;

.field private final k:Ljvs;

.field private final l:Ljvs;

.field private m:Ljuf;

.field private n:Lkad;

.field private o:Z

.field private final p:Ljub;


# direct methods
.method public constructor <init>(Ljuf;Lcbr;Ldww;Lklv;Ljava/util/Set;Litm;Lhwc;Lmqp;Lhrq;Ljvs;Ljvs;)V
    .locals 2

    invoke-direct {p0}, Lipe;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccl;->b:Likz;

    iput-object v0, p0, Lccl;->c:Likz;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lccl;->o:Z

    new-instance v0, Lcch;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcch;-><init>(Lccl;I)V

    iput-object v0, p0, Lccl;->p:Ljub;

    iput-object p2, p0, Lccl;->d:Lcbr;

    iput-object p3, p0, Lccl;->a:Ldww;

    iput-object p4, p0, Lccl;->e:Lklv;

    iput-object p5, p0, Lccl;->f:Ljava/util/Set;

    iput-object p6, p0, Lccl;->g:Litm;

    iput-object p7, p0, Lccl;->h:Lhwc;

    iput-object p8, p0, Lccl;->i:Lmqp;

    iput-object p9, p0, Lccl;->j:Lhrq;

    iput-object p10, p0, Lccl;->k:Ljvs;

    iput-object p11, p0, Lccl;->l:Ljvs;

    invoke-virtual {p1, p0}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/graphics/PointF;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lccl;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lccl;->h:Lhwc;

    invoke-virtual {v0}, Lhwc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccl;->b:Likz;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Likz;->c()V

    :cond_2
    iget-object v0, p0, Lccl;->c:Likz;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Likz;->c()V

    :cond_3
    iget-object v0, p0, Lccl;->m:Ljuf;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_4
    iget-object v0, p0, Lccl;->n:Lkad;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lkad;->close()V

    :cond_5
    iget-object v0, p0, Lccl;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lipe;

    invoke-virtual {v1, p1}, Lipe;->a(Landroid/graphics/PointF;)Z

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lccl;->j:Lhrq;

    invoke-virtual {v0}, Lhrq;->f()Lccv;

    move-result-object v0

    iget-object v1, p0, Lccl;->g:Litm;

    move-object v2, v1

    check-cast v2, Lisi;

    iget-boolean v2, v2, Lisi;->S:Z

    if-nez v2, :cond_7

    invoke-interface {v1}, Litm;->p()V

    goto :goto_2

    :cond_7
    invoke-interface {v1}, Litm;->X()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lccl;->g:Litm;

    invoke-interface {v1}, Litm;->L()V

    :cond_8
    :goto_2
    iget-object v1, p0, Lccl;->i:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lccl;->i:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    invoke-interface {v1}, Lhms;->s()V

    :cond_9
    iget-object v1, p0, Lccl;->i:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lccl;->l:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lccl;->i:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    invoke-interface {v1}, Lhms;->v()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lccl;->k:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lccl;->i:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    invoke-interface {v1}, Lhms;->j()V

    :cond_a
    iget-object v1, p0, Lccl;->i:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhms;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-interface {v1, v2}, Lhms;->m(Lmqp;)V

    goto :goto_3

    :cond_b
    iget-object v1, p0, Lccl;->a:Ldww;

    invoke-interface {v1, p1}, Ldww;->e(Landroid/graphics/PointF;)Likz;

    move-result-object v1

    iput-object v1, p0, Lccl;->b:Likz;

    new-instance v2, Lcbp;

    const/16 v3, 0x9

    invoke-direct {v2, p0, v3}, Lcbp;-><init>(Lccl;I)V

    invoke-interface {v1, v2}, Likz;->b(Liky;)V

    :goto_3
    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iput-object v1, p0, Lccl;->m:Ljuf;

    iget-object v2, p0, Lccl;->d:Lcbr;

    iget-object v3, p0, Lccl;->e:Lklv;

    invoke-interface {v2, v1, v3, p1, v0}, Lcbr;->a(Ljuf;Lklv;Landroid/graphics/PointF;Lccv;)Lccx;

    move-result-object p1

    iget-object v1, p0, Lccl;->b:Likz;

    const/4 v2, 0x1

    if-nez v1, :cond_c

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    goto :goto_4

    :cond_c
    check-cast v1, Lile;

    iget-object v1, v1, Lile;->b:Lnou;

    :goto_4
    invoke-interface {p1}, Lccx;->b()Lnou;

    move-result-object v3

    iget-object v4, p0, Lccl;->p:Ljub;

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-static {v1, v3, v4, v5}, Ljvd;->u(Lnou;Lnou;Ljub;Ljava/util/concurrent/Executor;)V

    iget-object v1, v0, Lccv;->a:Ljwb;

    new-instance v3, Lcbl;

    const/4 v4, 0x5

    invoke-direct {v3, p1, v4}, Lcbl;-><init>(Lccx;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v1, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    iput-object v1, p0, Lccl;->n:Lkad;

    invoke-interface {p1}, Lccx;->c()Lnou;

    move-result-object v1

    new-instance v3, Lccq;

    invoke-direct {v3, v0, p1, v2}, Lccq;-><init>(Lccv;Lccx;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-static {v1, v3, p1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccl;->o:Z

    iget-object v0, p0, Lccl;->m:Ljuf;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_0
    iget-object v0, p0, Lccl;->n:Lkad;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkad;->close()V
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
