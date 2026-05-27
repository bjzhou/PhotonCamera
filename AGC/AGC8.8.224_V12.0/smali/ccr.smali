.class public final Lccr;
.super Ljava/lang/Object;

# interfaces
.implements Lipf;
.implements Lkad;


# instance fields
.field public final a:Ldww;

.field public final b:Lklv;

.field public final c:Ljvs;

.field public d:Lccx;

.field public e:Likz;

.field public f:Likz;

.field public g:Lkad;

.field private final h:Lcbr;

.field private final i:Ljava/util/Set;

.field private final j:Lmqp;

.field private final k:Litm;

.field private final l:Lhwc;

.field private final m:Lhrq;

.field private final n:Ldol;

.field private final o:Lmqp;

.field private final p:Ljvs;

.field private final q:Ldey;

.field private r:Ljuf;

.field private s:Lkad;

.field private t:Z

.field private u:Lkad;

.field private final v:Ljub;

.field private final w:Ljew;


# direct methods
.method public constructor <init>(Ljuf;Lcbr;Ldww;Lklv;Ljava/util/Set;Lmqp;Litm;Lhwc;Lhrq;Ldol;Lmqp;Ldey;Ljvs;Ljvs;Ljew;[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lccr;->t:Z

    const/4 v1, 0x0

    iput-object v1, v0, Lccr;->e:Likz;

    iput-object v1, v0, Lccr;->f:Likz;

    iput-object v1, v0, Lccr;->g:Lkad;

    iput-object v1, v0, Lccr;->u:Lkad;

    new-instance v1, Lcch;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcch;-><init>(Lccr;I)V

    iput-object v1, v0, Lccr;->v:Ljub;

    move-object v1, p3

    iput-object v1, v0, Lccr;->a:Ldww;

    move-object v1, p4

    iput-object v1, v0, Lccr;->b:Lklv;

    move-object v1, p2

    iput-object v1, v0, Lccr;->h:Lcbr;

    move-object v1, p5

    iput-object v1, v0, Lccr;->i:Ljava/util/Set;

    move-object v1, p6

    iput-object v1, v0, Lccr;->j:Lmqp;

    move-object v1, p7

    iput-object v1, v0, Lccr;->k:Litm;

    move-object v1, p8

    iput-object v1, v0, Lccr;->l:Lhwc;

    move-object v1, p9

    iput-object v1, v0, Lccr;->m:Lhrq;

    move-object v1, p10

    iput-object v1, v0, Lccr;->n:Ldol;

    move-object v1, p11

    iput-object v1, v0, Lccr;->o:Lmqp;

    move-object/from16 v1, p13

    iput-object v1, v0, Lccr;->p:Ljvs;

    move-object v1, p12

    iput-object v1, v0, Lccr;->q:Ldey;

    move-object/from16 v1, p14

    iput-object v1, v0, Lccr;->c:Ljvs;

    move-object/from16 v1, p15

    iput-object v1, v0, Lccr;->w:Ljew;

    move-object v1, p1

    invoke-virtual {p1, p0}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Lmqp;)V
    .locals 2

    iget-object v0, p0, Lccr;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccr;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->a:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->j(Lhrc;)V

    iget-object v0, p0, Lccr;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->a:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->c(Lhrc;)V

    :cond_0
    invoke-virtual {p0, p1}, Lccr;->d(Lmqp;)V

    return-void
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccr;->t:Z

    iget-object v0, p0, Lccr;->g:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    iget-object v0, p0, Lccr;->r:Ljuf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_1
    iget-object v0, p0, Lccr;->s:Lkad;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkad;->close()V

    :cond_2
    iget-object v0, p0, Lccr;->u:Lkad;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccr;->u:Lkad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Lmqp;)V
    .locals 2

    iget-object v0, p0, Lccr;->u:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccr;->u:Lkad;

    :cond_0
    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lhms;->n(ZLmqp;)V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lccr;->a:Ldww;

    invoke-interface {v0}, Ldww;->o()V

    iget-object v0, p0, Lccr;->a:Ldww;

    invoke-interface {v0}, Ldww;->r()V

    iget-object v0, p0, Lccr;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccr;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v1, Lhrc;->a:Lhrc;

    invoke-interface {v0, v1}, Lhrd;->c(Lhrc;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized f(Landroid/graphics/PointF;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lccr;->t:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lccr;->l:Lhwc;

    invoke-virtual {v0}, Lhwc;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lccr;->d:Lccx;

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lccx;->b()Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccr;->c:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_2
    iget-object v0, p0, Lccr;->w:Ljew;

    invoke-virtual {v0}, Ljew;->K()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lccr;->a:Ldww;

    invoke-interface {v0, p1}, Ldww;->z(Landroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lccr;->n:Ldol;

    invoke-interface {p1}, Ldol;->c()Ljvs;

    move-result-object p1

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->i()V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->h()V

    :goto_1
    iget-object p1, p0, Lccr;->c:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lmpx;->a:Lmpx;

    invoke-virtual {p0, p1}, Lccr;->c(Lmqp;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :cond_5
    :try_start_2
    sget-object p1, Lmpx;->a:Lmpx;

    invoke-virtual {p0, p1}, Lccr;->d(Lmqp;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    :goto_2
    :try_start_3
    iget-object v0, p0, Lccr;->q:Ldey;

    invoke-interface {v0}, Ldey;->d()V

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lccr;->q:Ldey;

    invoke-interface {v0}, Ldey;->d()V

    :goto_3
    iget-object v0, p0, Lccr;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lccr;->j:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrd;

    sget-object v3, Lhrc;->a:Lhrc;

    invoke-interface {v0, v3}, Lhrd;->k(Lhrc;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    monitor-exit p0

    return v1

    :cond_9
    :goto_4
    :try_start_4
    iget-object v0, p0, Lccr;->e:Likz;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Likz;->c()V

    :cond_a
    iget-object v0, p0, Lccr;->f:Likz;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Likz;->c()V

    :cond_b
    iget-object v0, p0, Lccr;->g:Lkad;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lkad;->close()V

    :cond_c
    iget-object v0, p0, Lccr;->u:Lkad;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lccr;->u:Lkad;

    :cond_d
    iget-object v0, p0, Lccr;->r:Ljuf;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljuf;->close()V

    :cond_e
    iget-object v0, p0, Lccr;->s:Lkad;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lkad;->close()V

    :cond_f
    iget-object v0, p0, Lccr;->i:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lipe;

    invoke-virtual {v3, p1}, Lipe;->a(Landroid/graphics/PointF;)Z

    goto :goto_5

    :cond_10
    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lccr;->c:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lhms;->n(ZLmqp;)V

    :cond_11
    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->s()V

    :cond_12
    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lccr;->c:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->v()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lccr;->p:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->j()V

    :cond_13
    iget-object v0, p0, Lccr;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    invoke-interface {v0, v3}, Lhms;->m(Lmqp;)V

    goto :goto_6

    :cond_14
    iget-object v0, p0, Lccr;->a:Ldww;

    invoke-interface {v0, p1}, Ldww;->m(Landroid/graphics/PointF;)Likz;

    move-result-object v0

    iput-object v0, p0, Lccr;->e:Likz;

    new-instance v3, Lcbp;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4}, Lcbp;-><init>(Lccr;I)V

    invoke-interface {v0, v3}, Likz;->b(Liky;)V

    iget-object v0, p0, Lccr;->u:Lkad;

    if-nez v0, :cond_15

    iget-object v0, p0, Lccr;->c:Ljvs;

    new-instance v3, Lccp;

    invoke-direct {v3, p0, p1, v1}, Lccp;-><init>(Lccr;Landroid/graphics/PointF;I)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-interface {v0, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    iput-object v0, p0, Lccr;->u:Lkad;

    :cond_15
    :goto_6
    iget-object v0, p0, Lccr;->m:Lhrq;

    invoke-virtual {v0}, Lhrq;->f()Lccv;

    move-result-object v0

    new-instance v3, Ljuf;

    invoke-direct {v3}, Ljuf;-><init>()V

    iput-object v3, p0, Lccr;->r:Ljuf;

    iget-object v4, p0, Lccr;->h:Lcbr;

    iget-object v5, p0, Lccr;->b:Lklv;

    invoke-interface {v4, v3, v5, p1, v0}, Lcbr;->a(Ljuf;Lklv;Landroid/graphics/PointF;Lccv;)Lccx;

    move-result-object p1

    iput-object p1, p0, Lccr;->d:Lccx;

    iget-object p1, p0, Lccr;->k:Litm;

    move-object v3, p1

    check-cast v3, Lisi;

    iget-boolean v3, v3, Lisi;->S:Z

    if-nez v3, :cond_16

    invoke-interface {p1}, Litm;->p()V

    goto :goto_7

    :cond_16
    invoke-interface {p1}, Litm;->X()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lccr;->k:Litm;

    invoke-interface {p1}, Litm;->L()V

    :cond_17
    :goto_7
    iget-object p1, p0, Lccr;->e:Likz;

    if-nez p1, :cond_18

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1

    goto :goto_8

    :cond_18
    check-cast p1, Lile;

    iget-object p1, p1, Lile;->b:Lnou;

    :goto_8
    iget-object v3, p0, Lccr;->d:Lccx;

    invoke-interface {v3}, Lccx;->b()Lnou;

    move-result-object v3

    iget-object v4, p0, Lccr;->v:Ljub;

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-static {p1, v3, v4, v5}, Ljvd;->u(Lnou;Lnou;Ljub;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->a()Lnou;

    move-result-object p1

    new-instance v3, Lcig;

    invoke-direct {v3, p0, v2}, Lcig;-><init>(Lccr;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-static {p1, v3, v4}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object p1, v0, Lccv;->a:Ljwb;

    new-instance v3, Lcbl;

    const/4 v4, 0x7

    invoke-direct {v3, p0, v4}, Lcbl;-><init>(Lccr;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Lccr;->s:Lkad;

    iget-object p1, p0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->c()Lnou;

    move-result-object p1

    new-instance v3, Lccq;

    invoke-direct {v3, p0, v0, v1}, Lccq;-><init>(Lccr;Lccv;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {p1, v3, v1}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lccr;->d:Lccx;

    invoke-interface {p1}, Lccx;->c()Lnou;

    move-result-object p1

    new-instance v1, Lccq;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v0, v3}, Lccq;-><init>(Lccr;Lccv;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_a

    :goto_9
    throw p1

    :goto_a
    goto :goto_9
.end method
