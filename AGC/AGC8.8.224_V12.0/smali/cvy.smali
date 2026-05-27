.class public final Lcvy;
.super Ljava/lang/Object;

# interfaces
.implements Lcvx;


# instance fields
.field public final a:Loiw;

.field public b:Lcte;

.field public final c:Lcvr;


# direct methods
.method public constructor <init>(Loiw;Lcvr;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvy;->a:Loiw;

    iput-object p2, p0, Lcvy;->c:Lcvr;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 12

    iget-object v0, p0, Lcvy;->b:Lcte;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lctl;

    iget-object v1, v1, Lctl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->k:Lkfj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->l:Lkfj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v4, v0

    check-cast v4, Lctl;

    iget-object v4, v4, Lctl;->i:Lcsc;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v0

    check-cast v5, Lctl;

    iget-object v5, v5, Lctl;->j:Lken;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v0

    check-cast v6, Lctl;

    iget-object v6, v6, Lctl;->c:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v7, v0

    check-cast v7, Lctl;

    iget-object v7, v7, Lctl;->t:Lcrr;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v8, v0

    check-cast v8, Lctl;

    iget-object v8, v8, Lctl;->G:Lcvr;

    sget-object v9, Lcua;->b:Lcua;

    invoke-virtual {v8, v9}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v8

    new-instance v9, Lctj;

    move-object v10, v0

    check-cast v10, Lctl;

    invoke-direct {v9, v10}, Lctj;-><init>(Lctl;)V

    invoke-virtual {v7, v9}, Lcrr;->f(Lkfg;)Lkad;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljuf;->d(Lkad;)V

    move-object v8, v0

    check-cast v8, Lctl;

    iget-object v8, v8, Lctl;->G:Lcvr;

    sget-object v9, Lcua;->b:Lcua;

    invoke-virtual {v8, v9}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Lctl;

    iget-object v9, v9, Lctl;->v:Lccn;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v9}, Lcrr;->f(Lkfg;)Lkad;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljuf;->d(Lkad;)V

    move-object v8, v0

    check-cast v8, Lctl;

    iget-object v8, v8, Lctl;->G:Lcvr;

    sget-object v9, Lcua;->b:Lcua;

    invoke-virtual {v8, v9}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v8

    move-object v9, v0

    check-cast v9, Lctl;

    iget-object v9, v9, Lctl;->w:Lfzj;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v9}, Lcrr;->f(Lkfg;)Lkad;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljuf;->d(Lkad;)V

    move-object v8, v0

    check-cast v8, Lctl;

    iget-object v8, v8, Lctl;->A:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkfg;

    move-object v10, v0

    check-cast v10, Lctl;

    iget-object v10, v10, Lctl;->G:Lcvr;

    sget-object v11, Lcua;->b:Lcua;

    invoke-virtual {v10, v11}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v10

    invoke-virtual {v7, v9}, Lcrr;->f(Lkfg;)Lkad;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljuf;->d(Lkad;)V

    goto :goto_0

    :cond_0
    move-object v7, v0

    check-cast v7, Lctl;

    iget-object v7, v7, Lctl;->i:Lcsc;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object v6, v0

    check-cast v6, Lctl;

    iget-object v6, v6, Lctl;->o:Liha;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v6, v0

    check-cast v6, Lctl;

    iget-object v6, v6, Lctl;->H:Lcvr;

    iget-object v6, v6, Lcvr;->a:Ljava/lang/Object;

    invoke-interface {v5, v2}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v2

    const/4 v6, 0x1

    invoke-interface {v5, v2, v6}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v2

    move-object v7, v0

    check-cast v7, Lctl;

    iput-object v2, v7, Lctl;->r:Lkef;

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->r:Lkef;

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v7

    new-instance v8, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v10, Lcth;

    move-object v11, v0

    check-cast v11, Lctl;

    invoke-direct {v10, v11, v8, v7, v2}, Lcth;-><init>(Lctl;Ljava/util/concurrent/atomic/AtomicInteger;Lnph;Lkef;)V

    invoke-interface {v2, v10}, Lkef;->k(Lkee;)V

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->G:Lcvr;

    sget-object v8, Lcua;->b:Lcua;

    invoke-virtual {v2, v8}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v2

    move-object v8, v0

    check-cast v8, Lctl;

    iget-object v8, v8, Lctl;->u:Ldmv;

    new-instance v10, Lcti;

    move-object v11, v0

    check-cast v11, Lctl;

    invoke-direct {v10, v11, v7}, Lcti;-><init>(Lctl;Lnph;)V

    invoke-virtual {v8, v10}, Ldmv;->c(Lkdy;)Lkad;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljuf;->d(Lkad;)V

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v8, v4, Lcsc;->n:Landroid/util/Range;

    invoke-static {v2, v8}, Lkfg;->u(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkfa;

    move-result-object v2

    invoke-static {v2}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v2

    invoke-interface {v5, v3, v2}, Lken;->u(Lkfj;Ljava/util/Set;)Lkgq;

    move-result-object v2

    move-object v8, v0

    check-cast v8, Lctl;

    iput-object v2, v8, Lctl;->D:Lkgq;

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->p:Landroid/view/Surface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3, v2}, Lkfj;->d(Landroid/view/Surface;)V

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->m:Lkfj;

    if-eqz v2, :cond_1

    invoke-interface {v5, v2}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v2

    move-object v3, v0

    check-cast v3, Lctl;

    iput-object v2, v3, Lctl;->E:Lkgq;

    :cond_1
    move-object v2, v0

    check-cast v2, Lctl;

    invoke-virtual {v2, v4}, Lctl;->b(Lcsc;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->n:Lkfj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v5, v2}, Lken;->s(Lkfj;)Lkgq;

    move-result-object v3

    const/4 v8, 0x2

    invoke-interface {v5, v3, v8}, Lken;->r(Lkgq;I)Lkef;

    move-result-object v3

    move-object v5, v0

    check-cast v5, Lctl;

    iput-object v3, v5, Lctl;->s:Lkef;

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->F:Ldja;

    invoke-virtual {v3, v4}, Ldja;->c(Lcsc;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->s:Lkef;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lctf;

    move-object v8, v0

    check-cast v8, Lctl;

    invoke-direct {v5, v8, v2, v6}, Lctf;-><init>(Lctl;Lkfj;I)V

    invoke-interface {v3, v5}, Lkef;->k(Lkee;)V

    :cond_2
    iget-boolean v3, v4, Lcsc;->C:Z

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->g:Lcqx;

    invoke-interface {v3, v4}, Lcqx;->i(Lcsc;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->s:Lkef;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lctf;

    move-object v5, v0

    check-cast v5, Lctl;

    invoke-direct {v4, v5, v2, v9}, Lctf;-><init>(Lctl;Lkfj;I)V

    invoke-interface {v3, v4}, Lkef;->k(Lkee;)V

    :cond_3
    check-cast v0, Lctl;

    iput-boolean v9, v0, Lctl;->B:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v7

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final b(Lkab;)Lnou;
    .locals 4

    iget-object v0, p0, Lcvy;->b:Lcte;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lctl;

    iget-object v1, v1, Lctl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->m:Lkfj;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->j:Lken;

    if-eqz v2, :cond_1

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->E:Lkgq;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget p1, p1, Lkab;->e:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Lken;->i(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p1

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->j:Lken;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->E:Lkgq;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2, v3}, Lken;->q(Lkgq;)Lkeb;

    move-result-object v2

    new-instance v3, Lctk;

    check-cast v0, Lctl;

    invoke-direct {v3, v0, p1, v2}, Lctk;-><init>(Lctl;Lnph;Lkeb;)V

    invoke-interface {v2, v3}, Lkeb;->k(Lkfg;)V

    monitor-exit v1

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Snapshot not available"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    monitor-exit v1

    :goto_1
    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcsc;Liha;Landroid/view/Surface;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcvy;->a:Loiw;

    check-cast v2, Lctm;

    invoke-virtual {v2}, Lctm;->a()Lctl;

    move-result-object v2

    iput-object v2, v1, Lcvy;->b:Lcte;

    move-object v3, v2

    check-cast v3, Lctl;

    iget-object v3, v2, Lctl;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    move-object v4, v2

    check-cast v4, Lctl;

    iput-object v0, v2, Lctl;->i:Lcsc;

    move-object v4, v2

    check-cast v4, Lctl;

    iget-object v4, v2, Lctl;->e:Loiw;

    check-cast v4, Lcrs;

    invoke-virtual {v4}, Lcrs;->a()Lcrr;

    move-result-object v4

    new-instance v5, Loxq;

    iget-object v6, v0, Lcsc;->F:Ldne;

    iget-object v6, v6, Ldne;->a:Ljava/lang/Object;

    check-cast v6, Lklw;

    invoke-virtual {v6}, Lklw;->f()I

    move-result v6

    invoke-direct {v5, v6}, Loxq;-><init>(I)V

    new-instance v9, Lbkb;

    const/4 v6, 0x0

    invoke-direct {v9, v5, v6, v6}, Lbkb;-><init>(Loxq;[B[B)V

    new-instance v5, Lcbh;

    iget-object v8, v4, Lcrr;->h:Lftu;

    iget-object v10, v4, Lcrr;->b:Lcda;

    iget-boolean v11, v4, Lcrr;->c:Z

    iget-object v12, v4, Lcrr;->d:Ldhi;

    iget-object v6, v0, Lcsc;->F:Ldne;

    iget-object v13, v6, Ldne;->a:Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v7, v5

    invoke-direct/range {v7 .. v16}, Lcbh;-><init>(Lftu;Lbkb;Lcda;ZLdhi;Lkli;[B[B[B)V

    iput-object v5, v4, Lcrr;->g:Lcbh;

    iget-object v5, v4, Lcrr;->e:Ldms;

    invoke-virtual {v5}, Ldms;->b()V

    new-instance v5, Lcqf;

    const/16 v6, 0xa

    invoke-direct {v5, v4, v6}, Lcqf;-><init>(Lcrr;I)V

    invoke-static {}, Ljuh;->d()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v6, v4, Lcrr;->f:Landroid/os/Handler;

    invoke-virtual {v6, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    move-object v5, v2

    check-cast v5, Lctl;

    iput-object v4, v2, Lctl;->t:Lcrr;

    invoke-static {}, Lday;->d()Ldmv;

    move-result-object v4

    move-object v5, v2

    check-cast v5, Lctl;

    iput-object v4, v2, Lctl;->u:Ldmv;

    move-object v4, v2

    check-cast v4, Lctl;

    iget-object v4, v2, Lctl;->I:Ldja;

    new-instance v12, Lccn;

    iget-object v6, v4, Ldja;->b:Ljava/lang/Object;

    iget-object v5, v4, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v5}, Lcqv;->m()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v5, v0, Lcsc;->F:Ldne;

    iget-object v8, v5, Ldne;->a:Ljava/lang/Object;

    iget-object v9, v4, Ldja;->a:Ljava/lang/Object;

    iget-object v10, v0, Lcsc;->a:Lkll;

    iget-object v4, v4, Ldja;->c:Ljava/lang/Object;

    invoke-interface {v4}, Lcqv;->a()Lika;

    move-result-object v11

    move-object v5, v12

    invoke-direct/range {v5 .. v11}, Lccn;-><init>(Lfbz;Ljava/lang/Boolean;Lkli;Ljvs;Lkll;Lika;)V

    move-object v4, v2

    check-cast v4, Lctl;

    iput-object v12, v2, Lctl;->v:Lccn;

    new-instance v4, Lfzj;

    move-object v5, v2

    check-cast v5, Lctl;

    iget-object v5, v2, Lctl;->y:Ljwb;

    move-object v6, v2

    check-cast v6, Lctl;

    iget-object v6, v2, Lctl;->C:Lkha;

    iget-object v6, v6, Lkha;->a:Lklj;

    iget-object v0, v0, Lcsc;->F:Ldne;

    iget-object v0, v0, Ldne;->a:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lctl;

    iget-object v7, v2, Lctl;->z:Ljava/util/concurrent/Executor;

    invoke-direct {v4, v5, v6, v0, v7}, Lfzj;-><init>(Ljwb;Lklj;Lkli;Ljava/util/concurrent/Executor;)V

    move-object v0, v2

    check-cast v0, Lctl;

    iput-object v4, v2, Lctl;->w:Lfzj;

    move-object v0, v2

    check-cast v0, Lctl;

    iget-object v4, v2, Lctl;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, v2

    check-cast v0, Lctl;

    move-object/from16 v0, p2

    iput-object v0, v2, Lctl;->o:Liha;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    move-object v0, v2

    check-cast v0, Lctl;

    iget-object v4, v2, Lctl;->c:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    move-object v0, v2

    check-cast v0, Lctl;

    iget-object v0, v2, Lctl;->i:Lcsc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v2

    check-cast v0, Lctl;

    move-object/from16 v0, p3

    iput-object v0, v2, Lctl;->p:Landroid/view/Surface;

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    move-object v0, v2

    check-cast v0, Lctl;

    invoke-virtual {v2}, Lctl;->a()V

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, v1, Lcvy;->c:Lcvr;

    sget-object v2, Lcua;->b:Lcua;

    invoke-virtual {v0, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcvy;->b:Lcte;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcte;->close()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    iget-object v0, p0, Lcvy;->b:Lcte;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lctl;

    iget-object v1, v1, Lctl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lctl;

    iget-boolean v2, v2, Lctl;->B:Z

    if-eqz v2, :cond_0

    sget-object v0, Lctl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x273

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Already closed."

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_0
    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->q:Lkef;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lkef;->close()V

    move-object v2, v0

    check-cast v2, Lctl;

    const/4 v3, 0x0

    iput-object v3, v2, Lctl;->q:Lkef;

    check-cast v0, Lctl;

    iget-object v0, v0, Lctl;->v:Lccn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lccn;->b(I)V

    goto :goto_0

    :cond_1
    sget-object v0, Lctl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0x271

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Recording stream not attached."

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 6

    iget-object v0, p0, Lcvy;->b:Lcte;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    check-cast v1, Lctl;

    iget-object v1, v1, Lctl;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    move-object v2, v0

    check-cast v2, Lctl;

    iget-boolean v2, v2, Lctl;->B:Z

    if-eqz v2, :cond_0

    sget-object p1, Lctl;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x270

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Already closed."

    invoke-interface {p1, v0}, Lnah;->o(Ljava/lang/String;)V

    monitor-exit v1

    goto :goto_2

    :cond_0
    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->t:Lcrr;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkfg;

    move-object v4, v0

    check-cast v4, Lctl;

    iget-object v4, v4, Lctl;->G:Lcvr;

    sget-object v5, Lcua;->c:Lcua;

    invoke-virtual {v4, v5}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcrr;->f(Lkfg;)Lkad;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljuf;->d(Lkad;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    check-cast p1, Lctl;

    iget-object p1, p1, Lctl;->j:Lken;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v0

    check-cast v2, Lctl;

    iget-object v2, v2, Lctl;->D:Lkgq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->q:Lkef;

    if-nez v3, :cond_2

    move-object v3, v0

    check-cast v3, Lctl;

    iget-object v3, v3, Lctl;->i:Lcsc;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lken;->r(Lkgq;I)Lkef;

    move-result-object p1

    move-object v2, v0

    check-cast v2, Lctl;

    iput-object p1, v2, Lctl;->q:Lkef;

    check-cast v0, Lctl;

    iget-object p1, v0, Lctl;->v:Lccn;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lccn;->b(I)V

    goto :goto_1

    :cond_2
    sget-object p1, Lctl;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v0, 0x26f

    invoke-interface {p1, v0}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v0, "Recording stream already attached."

    invoke-interface {p1, v0}, Lnah;->o(Ljava/lang/String;)V

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    const/4 p1, 0x0

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final f(Lbkc;)Lccx;
    .locals 1

    iget-object v0, p0, Lcvy;->b:Lcte;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lctl;

    iget-object v0, v0, Lctl;->d:Lcqd;

    iget-object v0, v0, Lcqd;->e:Lcqr;

    invoke-interface {v0, p1}, Lcqr;->bp(Lbkc;)Lccx;

    move-result-object p1

    return-object p1
.end method
