.class final Lhoi;
.super Ljava/lang/Object;

# interfaces
.implements Ljwj;


# instance fields
.field final synthetic a:Lhol;


# direct methods
.method public constructor <init>(Lhol;)V
    .locals 0

    iput-object p1, p0, Lhoi;->a:Lhol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 11

    sget-object v0, Lhol;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Camcorder.onError(): %s"

    const/16 v2, 0xee4

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object v0, p0, Lhoi;->a:Lhol;

    iget-object v0, v0, Lhol;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhoi;->a:Lhol;

    iget-object v1, v1, Lhol;->B:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lhoi;->a:Lhol;

    iget-object v1, v1, Lhol;->ag:Lhor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lhos;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "onRecordingError() %s"

    const/16 v4, 0xef3

    invoke-static {v2, v3, p1, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iget-object p1, v1, Lhor;->e:Lhos;

    iget-object p1, p1, Lhos;->j:Ljvk;

    sget-object v2, Lhnw;->j:Lhnw;

    invoke-virtual {p1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object p1, v1, Lhor;->c:Lell;

    iget-object v7, v1, Lhor;->d:Landroid/content/Context;

    const v2, 0x7f14057c

    invoke-virtual {v7, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v2, 0x0

    const/16 v3, 0xbb8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/16 v10, 0xc

    invoke-static/range {v2 .. v10}, Ljpw;->k(ZILandroid/view/View$OnClickListener;Lice;Ljava/lang/String;Landroid/content/Context;ZII)Licf;

    move-result-object v2

    invoke-interface {p1, v2}, Lell;->d(Lelk;)Lkad;

    iget-object p1, v1, Lhor;->e:Lhos;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lhos;->g(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lhoi;->a:Lhol;

    iget-object v0, v0, Lhol;->ag:Lhor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lhor;->e:Lhos;

    iget-object v0, v0, Lhos;->j:Ljvk;

    sget-object v1, Lhnw;->g:Lhnw;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lhoi;->a:Lhol;

    iget-object v0, v0, Lhol;->ag:Lhor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lhor;->e:Lhos;

    iget-object v1, v1, Lhos;->j:Ljvk;

    sget-object v2, Lhnw;->h:Lhnw;

    invoke-virtual {v1, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v0, v0, Lhor;->e:Lhos;

    invoke-virtual {v0}, Lhos;->d()V

    return-void
.end method

.method public final d()V
    .locals 11

    iget-object v0, p0, Lhoi;->a:Lhol;

    iget-object v0, v0, Lhol;->m:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lhoi;->a:Lhol;

    iget-object v1, v1, Lhol;->d:Ldhi;

    sget-object v2, Ldil;->d:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhoi;->a:Lhol;

    iget-object v4, v1, Lhol;->u:Lhof;

    iget-object v5, v1, Lhol;->af:Ljwo;

    iget-object v6, v1, Lhol;->X:Lhps;

    iget-object v1, v1, Lhol;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpw;

    iget-object v7, v4, Lhof;->t:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v8, 0x0

    :try_start_1
    iput-object v8, v4, Lhof;->C:Ljwo;

    iput-object v8, v4, Lhof;->x:Lhpw;

    iput-object v8, v4, Lhof;->w:Lhps;

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v7, v4, Lhof;->f:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->h:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v7, v4, Lhof;->i:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->k:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->l:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->m:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v7, v4, Lhof;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v7, v4, Lhof;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v7, v4, Lhof;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v7, v4, Lhof;->t:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    iput-object v5, v4, Lhof;->C:Ljwo;

    iput-object v1, v4, Lhof;->x:Lhpw;

    iput-object v6, v4, Lhof;->w:Lhps;

    iget-object v1, v5, Ljwo;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v8, v5, Ljwo;->e:Ljwn;

    sget-object v9, Ljwn;->d:Ljwn;

    if-eq v8, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v8, "Camcorder is closed already"

    invoke-static {v2, v8}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v2, v5, Ljwo;->a:Ljyc;

    invoke-interface {v2}, Ljyc;->c()Lmqp;

    move-result-object v2

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v5

    const-string v8, "Input surface is not available."

    invoke-static {v5, v8}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v1, Lklb;

    const/4 v5, 0x5

    invoke-static {v2, v5}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v2

    invoke-direct {v1, v2}, Lklb;-><init>(Landroid/media/ImageWriter;)V

    iput-object v1, v4, Lhof;->B:Lklb;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v4, Lhof;->A:Lhpt;

    invoke-virtual {v6, v1}, Lhps;->f(Lhpt;)V

    iget-object v1, v4, Lhof;->A:Lhpt;

    invoke-virtual {v6, v1}, Lhps;->d(Lhpt;)V

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1

    :cond_1
    iget-object v1, p0, Lhoi;->a:Lhol;

    iget-object v4, v1, Lhol;->j:Lhno;

    iget-object v1, v1, Lhol;->B:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhpw;

    iget-object v5, p0, Lhoi;->a:Lhol;

    iget-object v5, v5, Lhol;->X:Lhps;

    iget-object v6, v4, Lhno;->w:Ljava/lang/Object;

    monitor-enter v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :try_start_b
    iput-object v5, v4, Lhno;->D:Lhps;

    iput-object v1, v4, Lhno;->E:Lhpw;

    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    iget-object v1, v4, Lhno;->o:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v5, v4, Lhno;->H:Lhpu;

    iget v5, v5, Lhpu;->h:I

    int-to-long v5, v5

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v4, Lhno;->I:Ljava/util/Timer;

    iget-object v5, v4, Lhno;->I:Ljava/util/Timer;

    new-instance v6, Lhnn;

    invoke-direct {v6, v4}, Lhnn;-><init>(Lhno;)V

    const-wide/16 v7, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-virtual/range {v5 .. v10}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    iget-object v1, v4, Lhno;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    iget-object v1, p0, Lhoi;->a:Lhol;

    iget-object v1, v1, Lhol;->af:Ljwo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Ljwo;->a:Ljyc;

    sget-object v2, Ldyy;->g:Ldyy;

    invoke-virtual {v2}, Ldyy;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljyc;->o(Ljava/lang/Object;)V

    iget-object v1, p0, Lhoi;->a:Lhol;

    iget-object v1, v1, Lhol;->ag:Lhor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lhor;->e:Lhos;

    iget-object v2, v2, Lhos;->j:Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Lhnw;

    sget-object v4, Lhnw;->j:Lhnw;

    invoke-virtual {v2, v4}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v1, Lhor;->e:Lhos;

    iget-object v2, v2, Lhos;->j:Ljvk;

    sget-object v4, Lhnw;->h:Lhnw;

    invoke-virtual {v2, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v2, v1, Lhor;->a:Ljuh;

    iget-object v4, v1, Lhor;->b:Lhpg;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lhon;

    const/16 v6, 0xf

    invoke-direct {v5, v4, v6}, Lhon;-><init>(Lhpg;I)V

    invoke-virtual {v2, v5}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v2, v1, Lhor;->e:Lhos;

    invoke-virtual {v2, v3}, Lhos;->f(Z)V

    iget-object v1, v1, Lhor;->e:Lhos;

    invoke-virtual {v1}, Lhos;->d()V

    :cond_2
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    return-void

    :catchall_3
    move-exception v1

    :try_start_d
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw v1

    :catchall_4
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    throw v1
.end method

.method public final e()V
    .locals 31

    move-object/from16 v1, p0

    iget-object v2, v1, Lhoi;->a:Lhol;

    iget-object v3, v2, Lhol;->m:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v2, Lhol;->d:Ldhi;

    sget-object v4, Ldil;->d:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lhol;->f()V

    :cond_0
    iget-object v0, v2, Lhol;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v4, v2, Lhol;->B:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v7, v9, :cond_2

    if-nez v7, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhpw;

    invoke-virtual {v8}, Lhpw;->a()Lhpx;

    move-result-object v8

    move-object v9, v8

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lhpw;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v8, Lhpx;->a:Ljws;

    invoke-virtual {v9, v10}, Lhpw;->o(Ljws;)V

    iget-object v10, v8, Lhpx;->b:Ljwu;

    invoke-virtual {v9, v10}, Lhpw;->b(Ljwu;)V

    iget v10, v8, Lhpx;->k:I

    invoke-virtual {v9, v10}, Lhpw;->g(I)V

    iget-object v10, v8, Lhpx;->e:Lmqp;

    invoke-virtual {v9, v10}, Lhpw;->f(Lmqp;)V

    iget-object v10, v8, Lhpx;->f:Lhpu;

    invoke-virtual {v9, v10}, Lhpw;->l(Lhpu;)V

    invoke-virtual {v9}, Lhpw;->a()Lhpx;

    move-result-object v9

    move-object/from16 v30, v9

    move-object v9, v8

    move-object/from16 v8, v30

    :goto_1
    iget-object v10, v2, Lhol;->d:Ldhi;

    invoke-interface {v10}, Ldhi;->c()V

    iget-object v10, v8, Lhpx;->d:Lctd;

    invoke-interface {v10}, Lctd;->close()V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    move-object v8, v9

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lhol;->u:Lhof;

    invoke-virtual {v0}, Lhof;->m()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v1, v4

    goto/16 :goto_e

    :cond_3
    iget-object v0, v2, Lhol;->u:Lhof;

    invoke-virtual {v0}, Lhof;->h()J

    move-result-wide v7

    const-wide/16 v9, 0x1

    cmp-long v0, v7, v9

    if-nez v0, :cond_5

    iget-object v0, v2, Lhol;->U:Lctd;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lctd;->g()V

    move-object v1, v4

    goto/16 :goto_e

    :cond_4
    move-object v1, v4

    goto/16 :goto_e

    :cond_5
    iget-object v9, v2, Lhol;->U:Lctd;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v2, Lhol;->u:Lhof;

    new-instance v10, Ljxq;

    invoke-direct {v10}, Ljxq;-><init>()V

    iget-object v11, v0, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v12, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v14

    div-long v16, v14, v7

    iget-object v11, v0, Lhof;->t:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    iget-object v14, v0, Lhof;->w:Lhps;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v0, Lhof;->A:Lhpt;

    iget-object v6, v14, Lhps;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    iget-object v5, v14, Lhps;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v15}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v14, Lhps;->g:Ljava/util/HashMap;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v5, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :try_start_4
    invoke-interface {v9}, Lctd;->f()Ljava/io/FileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v10, v5, v6}, Ljxv;->a(Ljava/io/FileDescriptor;I)Lkpf;

    move-result-object v5
    :try_end_4
    .catch Ljxu; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lhpx;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    iget-object v13, v12, Lhpx;->d:Lctd;

    invoke-interface {v13}, Lctd;->close()V

    invoke-interface {v13}, Lctd;->c()Lmqp;

    invoke-interface {v13}, Lctd;->c()Lmqp;

    move-result-object v13

    check-cast v13, Lmqt;

    iget-object v13, v13, Lmqt;->a:Ljava/lang/Object;

    check-cast v13, Lgxn;

    iget-object v13, v13, Lgxn;->a:Lkph;

    invoke-interface {v13}, Lkph;->d()Ljava/io/FileInputStream;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    new-instance v14, Landroid/media/MediaExtractor;

    invoke-direct {v14}, Landroid/media/MediaExtractor;-><init>()V

    new-instance v15, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v15}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {v14, v13}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-nez v10, :cond_b

    :try_start_9
    iget v13, v12, Lhpx;->k:I

    iget-object v12, v12, Lhpx;->e:Lmqp;

    invoke-interface {v5, v13}, Lkpf;->e(I)V

    invoke-virtual {v12}, Lmqp;->g()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;

    move/from16 v19, v10

    move-object/from16 v20, v11

    invoke-virtual {v13}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    double-to-float v10, v10

    invoke-virtual {v12}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v11

    double-to-float v11, v11

    invoke-interface {v5, v10, v11}, Lkpf;->d(FF)V

    goto :goto_3

    :cond_6
    move/from16 v19, v10

    move-object/from16 v20, v11

    :goto_3
    const-string v10, "video/"

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    invoke-virtual {v14}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v11

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v11, :cond_8

    invoke-virtual {v14, v12}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    move-object/from16 v26, v6

    const-string v6, "mime"

    invoke-virtual {v13, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    monitor-exit v1

    goto :goto_5

    :cond_7
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v26

    goto :goto_4

    :cond_8
    move-object/from16 v26, v6

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v13, 0x0

    :goto_5
    const/4 v6, -0x1

    if-nez v13, :cond_9

    :try_start_b
    sget-object v10, Lhof;->a:Lnak;

    invoke-virtual {v10}, Lnaf;->c()Lnaz;

    move-result-object v10

    const-string v11, "Input file doesn\'t have a video track."

    const/16 v12, 0xed7

    invoke-static {v10, v11, v12}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v13, -0x1

    goto :goto_6

    :cond_9
    invoke-interface {v5, v13}, Lkpf;->a(Landroid/media/MediaFormat;)I

    move-result v10

    invoke-interface {v5}, Lkpf;->f()V

    move v13, v10

    :goto_6
    if-eq v13, v6, :cond_a

    new-instance v6, Lhoe;

    move-object v10, v6

    move-object v11, v0

    move-object v12, v5

    move-object/from16 v27, v2

    move-object/from16 v19, v6

    move-object v6, v14

    move-object v2, v15

    move-wide/from16 v14, v16

    invoke-direct/range {v10 .. v15}, Lhoe;-><init>(Lhof;Lkpf;IJ)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v11, v19

    goto :goto_7

    :cond_a
    move-object/from16 v27, v2

    move-object/from16 v1, p0

    move/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v6, v26

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    :try_start_c
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v0

    :cond_b
    move-object/from16 v27, v2

    move-object/from16 v26, v6

    move-object/from16 v20, v11

    move-object v6, v14

    move-object v2, v15

    :goto_7
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v11}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lhof;->m()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v0, Lhof;->r:Ldhi;

    sget-object v12, Ldil;->i:Ldhj;

    invoke-interface {v10, v12}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v10

    invoke-virtual {v10}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    const/high16 v12, 0x49000000    # 524288.0f

    mul-float v10, v10, v12

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    move/from16 v25, v10

    goto :goto_8

    :cond_c
    const/high16 v10, 0x80000

    const/high16 v25, 0x80000

    :goto_8
    iget-object v10, v0, Lhof;->t:Ljava/lang/Object;

    monitor-enter v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    const-wide/16 v12, 0x4

    cmp-long v14, v7, v12

    if-lez v14, :cond_f

    :try_start_e
    iget-object v12, v0, Lhof;->z:Lhpu;

    iget v12, v12, Lhpu;->h:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    long-to-double v13, v7

    move-object v15, v11

    int-to-double v11, v12

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v13, v11

    const-wide/high16 v11, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v19, v13, v11

    if-ltz v19, :cond_d

    :try_start_f
    sget-object v11, Lnmf;->c:Lj$/time/Duration;

    :goto_9
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    goto :goto_a

    :cond_d
    sget-wide v11, Lnmf;->b:D

    cmpg-double v19, v13, v11

    if-gtz v19, :cond_e

    sget-object v11, Lnmf;->a:Lj$/time/Duration;

    goto :goto_9

    :cond_e
    sget-object v11, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static {v13, v14, v11}, Lnlz;->a(DLjava/math/RoundingMode;)J

    move-result-wide v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    long-to-double v4, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v13, v4

    :try_start_10
    sget-object v4, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide v19, 0x41cdcd6500000000L    # 1.0E9

    mul-double v13, v13, v19

    invoke-static {v13, v14, v4}, Lnlz;->a(DLjava/math/RoundingMode;)J

    move-result-wide v4

    invoke-static {v11, v12, v4, v5}, Lj$/time/Duration;->ofSeconds(JJ)Lj$/time/Duration;

    move-result-object v11

    :goto_a
    invoke-static {v11}, Lnmf;->a(Lj$/time/Duration;)J

    invoke-static {v6, v1}, Lhpv;->b(Landroid/media/MediaExtractor;Ljava/lang/Object;)I

    move-result v19

    sget-object v20, Lmpx;->a:Lmpx;

    invoke-static {v11}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v21

    move-object/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    invoke-static/range {v19 .. v25}, Lhpv;->a(ILmqp;Lmqp;Landroid/media/MediaExtractor;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Object;I)V

    goto :goto_b

    :cond_f
    move-object/from16 v28, v4

    move-object/from16 v29, v5

    move-object v15, v11

    invoke-static {v6, v1}, Lhpv;->b(Landroid/media/MediaExtractor;Ljava/lang/Object;)I

    move-result v19

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v20

    sget-object v21, Lmpx;->a:Lmpx;

    move-object/from16 v22, v6

    move-object/from16 v23, v2

    move-object/from16 v24, v1

    invoke-static/range {v19 .. v25}, Lhpv;->a(ILmqp;Lmqp;Landroid/media/MediaExtractor;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/Object;I)V

    :goto_b
    monitor-exit v10
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    monitor-enter v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    invoke-virtual {v6}, Landroid/media/MediaExtractor;->release()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    const/4 v10, 0x1

    move-object/from16 v1, p0

    move-object v11, v15

    move-object/from16 v6, v26

    move-object/from16 v2, v27

    move-object/from16 v4, v28

    move-object/from16 v5, v29

    goto/16 :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_14
    sget-object v0, Lhof;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can\'t close input stream: %s"

    const/16 v4, 0xed9

    invoke-static {v0, v2, v1, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    move-object/from16 v1, v28

    const/4 v6, 0x0

    goto/16 :goto_c

    :catchall_1
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    :catchall_2
    move-exception v0

    :try_start_17
    monitor-exit v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unable to open file descriptor"

    invoke-direct {v0, v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v28, v4

    sget-object v1, Lhof;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t open input file descriptor: %s"

    const/16 v4, 0xeda

    invoke-static {v1, v2, v0, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    move-object/from16 v1, v28

    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_10
    move-object/from16 v27, v2

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-interface/range {v29 .. v29}, Lkpf;->g()V

    invoke-interface/range {v29 .. v29}, Lkpf;->c()V

    iget-object v1, v0, Lhof;->t:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    :try_start_19
    iget-object v2, v0, Lhof;->q:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, v0, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    iget-object v6, v0, Lhof;->z:Lhpu;

    iget v6, v6, Lhpu;->h:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    invoke-virtual {v0}, Lhof;->l()V

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move-object/from16 v1, v28

    const/4 v2, 0x0

    :try_start_1a
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhpx;

    new-instance v4, Lhpw;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lhpw;-><init>([B)V

    iget-object v5, v2, Lhpx;->a:Ljws;

    invoke-virtual {v4, v5}, Lhpw;->o(Ljws;)V

    iget-object v5, v2, Lhpx;->b:Ljwu;

    invoke-virtual {v4, v5}, Lhpw;->b(Ljwu;)V

    iget-object v5, v2, Lhpx;->c:Lmqp;

    invoke-virtual {v4, v5}, Lhpw;->n(Lmqp;)V

    iget-object v5, v2, Lhpx;->d:Lctd;

    invoke-virtual {v4, v5}, Lhpw;->i(Lctd;)V

    iget-object v5, v2, Lhpx;->e:Lmqp;

    invoke-virtual {v4, v5}, Lhpw;->f(Lmqp;)V

    iget-object v5, v2, Lhpx;->f:Lhpu;

    invoke-virtual {v4, v5}, Lhpw;->l(Lhpu;)V

    iget-wide v5, v2, Lhpx;->g:J

    invoke-virtual {v4, v5, v6}, Lhpw;->j(J)V

    iget-wide v5, v2, Lhpx;->h:J

    invoke-virtual {v4, v5, v6}, Lhpw;->h(J)V

    iget-wide v5, v2, Lhpx;->i:J

    invoke-virtual {v4, v5, v6}, Lhpw;->c(J)V

    iget-wide v5, v2, Lhpx;->j:J

    invoke-virtual {v4, v5, v6}, Lhpw;->d(J)V

    iget-object v5, v2, Lhpx;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lhpw;->m(Ljava/lang/String;)V

    iget v5, v2, Lhpx;->k:I

    invoke-virtual {v4, v5}, Lhpw;->g(I)V

    iget-boolean v5, v2, Lhpx;->m:Z

    invoke-virtual {v4, v5}, Lhpw;->e(Z)V

    iget-object v2, v2, Lhpx;->n:Lgxz;

    invoke-virtual {v4, v2}, Lhpw;->k(Lgxz;)V

    invoke-virtual {v0}, Lhof;->g()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lhpw;->j(J)V

    invoke-virtual {v0}, Lhof;->i()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lhpw;->h(J)V

    invoke-virtual {v0}, Lhof;->f()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lhpw;->c(J)V

    invoke-virtual {v0}, Lhof;->e()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lhpw;->d(J)V

    invoke-virtual {v4, v9}, Lhpw;->i(Lctd;)V

    sget-object v0, Lmpx;->a:Lmpx;

    invoke-virtual {v4, v0}, Lhpw;->n(Lmqp;)V

    invoke-virtual {v4}, Lhpw;->a()Lhpx;

    move-result-object v6
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto :goto_c

    :catchall_3
    move-exception v0

    :try_start_1b
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    :try_start_1c
    throw v0

    :catch_3
    move-exception v0

    move-object/from16 v27, v2

    move-object v1, v4

    const/4 v5, 0x0

    sget-object v2, Lhof;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    invoke-virtual {v0}, Ljxu;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Can\'t create MediaMuxerProxy: %s"

    const/16 v6, 0xedb

    invoke-static {v2, v4, v0, v6}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    move-object v6, v5

    :goto_c
    if-nez v6, :cond_11

    sget-object v0, Lhol;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Failed to reselect frames. Save the video(s) without frame reselection instead."

    const/16 v4, 0xef0

    invoke-static {v0, v2, v4}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    move-object/from16 v2, v27

    goto :goto_e

    :cond_11
    invoke-interface {v9}, Lctd;->close()V

    move-object/from16 v2, v27

    iget-object v0, v2, Lhol;->d:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhpx;

    iget-object v4, v4, Lhpx;->d:Lctd;

    invoke-interface {v4}, Lctd;->g()V

    goto :goto_d

    :cond_12
    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    iget-object v0, v2, Lhol;->ag:Lhor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v2, Lhol;->X:Lhps;

    iget-object v0, v0, Lhor;->e:Lhos;

    iget-object v4, v0, Lhos;->l:Ljava/util/concurrent/Executor;

    new-instance v5, Lhoo;

    invoke-direct {v5, v0, v1, v2}, Lhoo;-><init>(Lhos;Ljava/util/List;Lhps;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_6

    return-void

    :cond_13
    :try_start_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unsupported speed up ratio"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_4
    move-exception v0

    monitor-exit v6
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    :try_start_1e
    throw v0

    :catchall_5
    move-exception v0

    monitor-exit v11
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    :try_start_1f
    throw v0

    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_6

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method
