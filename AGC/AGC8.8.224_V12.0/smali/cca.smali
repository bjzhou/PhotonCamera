.class public final Lcca;
.super Ljava/lang/Object;

# interfaces
.implements Lcbz;
.implements Lkai;


# instance fields
.field public final a:Ldww;

.field public b:Likz;

.field public c:Likz;

.field final d:Lccy;

.field public e:Lnph;

.field public f:Z

.field public g:Z

.field public final h:Lima;

.field public final i:Loxq;

.field private final j:Ljuh;

.field private final k:Ljuf;

.field private final l:Ldbf;

.field private final m:Lfue;

.field private final n:Ldhi;

.field private final o:Lmqp;

.field private final p:Ljvs;

.field private final q:Ljvs;

.field private r:Lkad;

.field private s:I

.field private final t:Ljvs;

.field private final u:Ljub;

.field private v:I


# direct methods
.method public constructor <init>(Ljuh;Ldww;Ldbf;Ldhi;Lfue;Lmqp;Ljvs;Ljvs;Ljvs;Ljvs;Lkli;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lcca;->k:Ljuf;

    const/4 v1, 0x0

    iput-object v1, p0, Lcca;->b:Likz;

    iput-object v1, p0, Lcca;->c:Likz;

    new-instance v1, Lccy;

    invoke-direct {v1}, Lccy;-><init>()V

    iput-object v1, p0, Lcca;->d:Lccy;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcca;->f:Z

    new-instance v2, Lcch;

    invoke-direct {v2, p0, v1}, Lcch;-><init>(Lcca;I)V

    iput-object v2, p0, Lcca;->u:Ljub;

    iput-object p1, p0, Lcca;->j:Ljuh;

    iput-object p2, p0, Lcca;->a:Ldww;

    iput-object p3, p0, Lcca;->l:Ldbf;

    iput-object p4, p0, Lcca;->n:Ldhi;

    iput-object p6, p0, Lcca;->o:Lmqp;

    iput-object p7, p0, Lcca;->p:Ljvs;

    iput-object p8, p0, Lcca;->t:Ljvs;

    new-instance p2, Loxq;

    invoke-interface {p11}, Lkli;->f()I

    move-result p3

    invoke-direct {p2, p3}, Loxq;-><init>(I)V

    iput-object p2, p0, Lcca;->i:Loxq;

    new-instance p2, Lima;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Lima;-><init>(I)V

    iput-object p2, p0, Lcca;->h:Lima;

    new-instance p2, Lgnl;

    const/16 p4, 0xe

    invoke-direct {p2, p4}, Lgnl;-><init>(I)V

    iput-object p2, p0, Lcca;->r:Lkad;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcca;->g:Z

    iput-object p5, p0, Lcca;->m:Lfue;

    invoke-interface {p10, p0, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    iput p2, p0, Lcca;->s:I

    iput p3, p0, Lcca;->v:I

    iput-object p9, p0, Lcca;->q:Ljvs;

    return-void
.end method

.method private final f()V
    .locals 3

    iget-object v0, p0, Lcca;->b:Likz;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Likz;->c()V

    :cond_0
    iget-object v0, p0, Lcca;->c:Likz;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcca;->a:Ldww;

    invoke-interface {v0}, Ldww;->j()Likz;

    move-result-object v0

    iput-object v0, p0, Lcca;->c:Likz;

    new-instance v1, Lcbp;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lcbp;-><init>(Lcca;I)V

    invoke-interface {v0, v1}, Likz;->b(Liky;)V

    :cond_1
    return-void
.end method

.method private final declared-synchronized g(Lgry;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lgry;->b()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcca;->s:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcca;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v2, 0x11

    if-le p1, v2, :cond_1

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iput v0, p0, Lcca;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcca;->f:Z

    iget-object v1, p0, Lcca;->m:Lfue;

    invoke-virtual {v1, v0}, Lfue;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lgxb;

    invoke-virtual {p0, p1}, Lcca;->e(Lgxb;)V

    return-void
.end method

.method public final declared-synchronized c(Lhrc;)V
    .locals 1

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcca;->f:Z

    iget-object v0, p0, Lcca;->m:Lfue;

    invoke-virtual {v0, p1}, Lfue;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcca;->f:Z

    iget-object v0, p0, Lcca;->r:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcca;->k:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final d(Lmqp;I)Z
    .locals 1

    iget-object v0, p0, Lcca;->c:Likz;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcca;->a:Ldww;

    invoke-interface {v0, p1, p2}, Ldww;->w(Lmqp;I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized e(Lgxb;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcca;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcca;->t:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcca;->a:Ldww;

    invoke-interface {v0}, Ldww;->n()Ljvs;

    move-result-object v0

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcca;->q:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p1, Lgxb;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcca;->o:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_b

    iget-object v1, p0, Lcca;->d:Lccy;

    check-cast v0, Lftt;

    iget-object v0, v0, Lftt;->b:Lgry;

    invoke-virtual {v1, v0}, Lccy;->b(Lgry;)Z

    move-result v0

    iget-object v1, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast v1, Lftt;

    iget-object v1, v1, Lftt;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfts;

    iget-object v1, v1, Lfts;->a:Landroid/graphics/PointF;

    iget-object v4, p0, Lcca;->l:Ldbf;

    invoke-virtual {v4}, Ldbf;->d()Lklv;

    move-result-object v4

    sget-object v5, Lklv;->a:Lklv;

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcca;->n:Ldhi;

    sget-object v5, Ldhh;->a:Ldhj;

    invoke-interface {v4}, Ldhi;->e()V

    const/4 v4, 0x1

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    iget-object v5, p1, Lgxb;->b:Ljava/lang/Object;

    check-cast v5, Lftt;

    iget-object v5, v5, Lftt;->b:Lgry;

    sget-object v6, Lgry;->b:Lgry;

    if-eq v5, v6, :cond_8

    iget-object v5, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast v5, Lftt;

    iget-object v5, v5, Lftt;->b:Lgry;

    sget-object v6, Lgry;->b:Lgry;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcca;->e:Lnph;

    if-nez v5, :cond_8

    iget-object v5, p0, Lcca;->b:Likz;

    if-eqz v5, :cond_5

    invoke-interface {v5}, Likz;->c()V

    :cond_5
    iget-object v5, p0, Lcca;->c:Likz;

    if-eqz v5, :cond_6

    invoke-interface {v5}, Likz;->c()V

    :cond_6
    if-nez v4, :cond_7

    iget-object v3, p0, Lcca;->a:Ldww;

    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    iget-object v6, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast v6, Lftt;

    iget v6, v6, Lftt;->e:I

    int-to-float v6, v6

    iget-object v7, p0, Lcca;->p:Ljvs;

    invoke-interface {v7}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    invoke-interface {v3, v5, v6}, Ldww;->k(Lmqp;I)Likz;

    move-result-object v3

    iput-object v3, p0, Lcca;->b:Likz;

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcca;->a:Ldww;

    sget-object v6, Lmpx;->a:Lmpx;

    invoke-interface {v5, v6, v3}, Ldww;->k(Lmqp;I)Likz;

    move-result-object v3

    iput-object v3, p0, Lcca;->b:Likz;

    :goto_2
    iget-object v3, p0, Lcca;->b:Likz;

    new-instance v5, Lcbp;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Lcbp;-><init>(Lcca;I)V

    invoke-interface {v3, v5}, Likz;->b(Liky;)V

    iget-object v3, p0, Lcca;->b:Likz;

    if-eqz v3, :cond_8

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v3

    iput-object v3, p0, Lcca;->e:Lnph;

    iget-object v3, p0, Lcca;->b:Likz;

    invoke-interface {v3}, Likz;->a()Lnou;

    move-result-object v3

    iget-object v5, p0, Lcca;->e:Lnph;

    iget-object v6, p0, Lcca;->u:Ljub;

    iget-object v7, p0, Lcca;->j:Ljuh;

    invoke-static {v3, v5, v6, v7}, Ljvd;->u(Lnou;Lnou;Ljub;Ljava/util/concurrent/Executor;)V

    :cond_8
    if-nez v0, :cond_9

    iget-object v0, p0, Lcca;->e:Lnph;

    if-eqz v0, :cond_a

    if-nez v4, :cond_a

    iget-object v0, p0, Lcca;->a:Ldww;

    iget-object p1, p1, Lgxb;->a:Ljava/lang/Object;

    check-cast p1, Lftt;

    iget p1, p1, Lftt;->e:I

    int-to-float p1, p1

    iget-object v2, p0, Lcca;->p:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float p1, p1, v2

    float-to-int p1, p1

    int-to-float p1, p1

    invoke-interface {v0, v1, p1}, Ldww;->y(Landroid/graphics/PointF;F)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit p0

    return-void

    :cond_9
    :try_start_4
    iget-object p1, p0, Lcca;->e:Lnph;

    if-eqz p1, :cond_a

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    return-void

    :cond_b
    :try_start_5
    iget-object p1, p0, Lcca;->l:Ldbf;

    invoke-virtual {p1}, Ldbf;->d()Lklv;

    move-result-object p1

    sget-object v1, Lklv;->a:Lklv;

    if-eq p1, v1, :cond_28

    move-object p1, v0

    check-cast p1, Lftt;

    iget-object p1, p1, Lftt;->d:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfts;

    iget p1, p1, Lfts;->c:I

    if-eqz p1, :cond_c

    if-ne p1, v4, :cond_d

    move-object p1, v0

    check-cast p1, Lftt;

    iget p1, p1, Lftt;->e:I

    int-to-float p1, p1

    iget-object v1, p0, Lcca;->p:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float p1, p1, v1

    float-to-int p1, p1

    goto :goto_3

    :cond_c
    throw v5

    :cond_d
    move-object p1, v0

    check-cast p1, Lftt;

    iget p1, p1, Lftt;->e:I

    :goto_3
    iget-object v1, p0, Lcca;->h:Lima;

    int-to-float v6, p1

    invoke-virtual {v1, v6}, Lima;->a(F)V

    move-object v1, v0

    check-cast v1, Lftt;

    iget-object v1, v1, Lftt;->b:Lgry;

    invoke-direct {p0, v1}, Lcca;->g(Lgry;)Z

    move-result v1

    move-object v7, v0

    check-cast v7, Lftt;

    iget-object v7, v7, Lftt;->d:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v7

    const/4 v8, 0x6

    if-eqz v7, :cond_e

    if-eqz v1, :cond_f

    :cond_e
    iget-object v1, p0, Lcca;->o:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-nez v1, :cond_23

    :cond_f
    move-object v1, v0

    check-cast v1, Lftt;

    iget-object v1, v1, Lftt;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez v7, :cond_10

    monitor-exit p0

    return-void

    :cond_10
    :try_start_6
    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfts;

    iget v7, v1, Lfts;->c:I

    iget v9, p0, Lcca;->v:I

    if-eqz v9, :cond_22

    const/16 v10, 0x8

    if-eq v9, v7, :cond_14

    if-ne v9, v4, :cond_11

    iget-object v7, p0, Lcca;->r:Lkad;

    invoke-interface {v7}, Lkad;->close()V

    iget-object v7, p0, Lcca;->o:Lmqp;

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhrd;

    sget-object v9, Lhrc;->d:Lhrc;

    invoke-interface {v7, v9}, Lhrd;->j(Lhrc;)V

    invoke-direct {p0}, Lcca;->f()V

    :cond_11
    iget v7, p0, Lcca;->v:I

    if-eqz v7, :cond_13

    if-ne v7, v10, :cond_12

    iget-object v7, p0, Lcca;->a:Ldww;

    invoke-interface {v7}, Ldww;->p()V

    :cond_12
    iput-boolean v3, p0, Lcca;->g:Z

    iget-object v3, p0, Lcca;->h:Lima;

    invoke-virtual {v3}, Lima;->b()V

    iget v3, v1, Lfts;->c:I

    iput v3, p0, Lcca;->v:I

    goto :goto_4

    :cond_13
    throw v5

    :cond_14
    :goto_4
    iget-boolean v3, p0, Lcca;->g:Z

    if-eqz v3, :cond_17

    iget v3, v1, Lfts;->c:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v3, :cond_16

    if-eq v3, v4, :cond_15

    goto :goto_6

    :cond_15
    :goto_5
    monitor-exit p0

    return-void

    :cond_16
    :try_start_7
    throw v5

    :cond_17
    :goto_6
    check-cast v0, Lftt;

    iget-object v0, v0, Lftt;->b:Lgry;

    sget-object v3, Lgry;->b:Lgry;

    if-eq v0, v3, :cond_19

    iget v0, v1, Lfts;->c:I

    if-eqz v0, :cond_18

    if-eq v0, v4, :cond_19

    if-eq v0, v10, :cond_19

    if-ne v0, v8, :cond_15

    goto :goto_7

    :cond_18
    throw v5

    :cond_19
    :goto_7
    iget v0, v1, Lfts;->c:I

    if-eqz v0, :cond_21

    if-eq v0, v10, :cond_1a

    iget-object v0, v1, Lfts;->a:Landroid/graphics/PointF;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcca;->d(Lmqp;I)Z

    move-result p1

    if-eqz p1, :cond_15

    :cond_1a
    iput-boolean v2, p0, Lcca;->g:Z

    iget-object p1, p0, Lcca;->o:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-nez p1, :cond_1b

    goto :goto_8

    :cond_1b
    iget p1, v1, Lfts;->c:I

    if-eqz p1, :cond_20

    if-ne p1, v4, :cond_1c

    iget-object p1, p0, Lcca;->o:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhrd;

    sget-object v0, Lhrc;->d:Lhrc;

    invoke-interface {p1, v0}, Lhrd;->k(Lhrc;)Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcca;->h:Lima;

    invoke-virtual {p1}, Lima;->b()V

    iget-object p1, p0, Lcca;->h:Lima;

    invoke-virtual {p1, v6}, Lima;->a(F)V

    iget-object p1, p0, Lcca;->o:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhrd;

    iget-object v0, p0, Lcca;->i:Loxq;

    iget-object v1, v1, Lfts;->a:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Loxq;->g(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    sget-object v1, Lhrc;->d:Lhrc;

    invoke-interface {p1, v0, v1}, Lhrd;->a(Landroid/graphics/PointF;Lhrc;)Ljvs;

    move-result-object p1

    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v0, p0, Lcca;->r:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    new-instance v0, Lcbl;

    invoke-direct {v0, p0, v4}, Lcbl;-><init>(Lcca;I)V

    sget-object v1, Ljuh;->a:Ljui;

    invoke-interface {p1, v0, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    iput-object p1, p0, Lcca;->r:Lkad;

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw p1

    :cond_1c
    iget p1, v1, Lfts;->c:I

    if-eqz p1, :cond_1f

    if-eq p1, v8, :cond_1e

    if-ne p1, v10, :cond_1d

    iget-object p1, v1, Lfts;->a:Landroid/graphics/PointF;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iget-object v0, v1, Lfts;->b:Landroid/graphics/RectF;

    iget-object v1, p0, Lcca;->c:Likz;

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcca;->a:Ldww;

    invoke-interface {v1, p1, v0}, Ldww;->v(Lmqp;Landroid/graphics/RectF;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    monitor-exit p0

    return-void

    :cond_1d
    :goto_8
    monitor-exit p0

    return-void

    :cond_1e
    :try_start_b
    iget-object p1, v1, Lfts;->a:Landroid/graphics/PointF;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iget-object v0, p0, Lcca;->h:Lima;

    iget v0, v0, Lima;->a:F

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcca;->d(Lmqp;I)Z

    goto/16 :goto_5

    :cond_1f
    throw v5

    :cond_20
    throw v5

    :cond_21
    throw v5

    :cond_22
    throw v5

    :cond_23
    monitor-enter p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-boolean p1, p0, Lcca;->g:Z

    if-nez p1, :cond_24

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    monitor-exit p0

    return-void

    :cond_24
    :try_start_d
    iget-object p1, p0, Lcca;->r:Lkad;

    invoke-interface {p1}, Lkad;->close()V

    iget-object p1, p0, Lcca;->o:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhrd;

    sget-object v0, Lhrc;->d:Lhrc;

    invoke-interface {p1, v0}, Lhrd;->j(Lhrc;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :try_start_e
    iget-boolean p1, p0, Lcca;->g:Z

    if-eqz p1, :cond_27

    iget p1, p0, Lcca;->v:I

    if-eqz p1, :cond_26

    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    if-eq p1, v4, :cond_25

    if-ne p1, v8, :cond_27

    :cond_25
    invoke-direct {p0}, Lcca;->f()V

    goto :goto_9

    :cond_26
    throw v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :cond_27
    :goto_9
    :try_start_f
    iget-object p1, p0, Lcca;->a:Ldww;

    invoke-interface {p1}, Ldww;->p()V

    iput-boolean v3, p0, Lcca;->g:Z

    iget-object p1, p0, Lcca;->h:Lima;

    invoke-virtual {p1}, Lima;->b()V

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    :try_start_10
    throw p1

    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw p1

    :cond_28
    iget-object p1, p0, Lcca;->n:Ldhi;

    sget-object v0, Ldhh;->a:Ldhj;

    invoke-interface {p1}, Ldhi;->e()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    monitor-exit p0

    return-void

    :catchall_3
    move-exception p1

    monitor-exit p0

    goto :goto_b

    :goto_a
    throw p1

    :goto_b
    goto :goto_a
.end method
