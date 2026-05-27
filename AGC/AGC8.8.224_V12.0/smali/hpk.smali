.class final Lhpk;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Lhpq;


# direct methods
.method public constructor <init>(Lhpq;)V
    .locals 0

    iput-object p1, p0, Lhpk;->a:Lhpq;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchButtonClicked()V
    .locals 4

    iget-object v0, p0, Lhpk;->a:Lhpq;

    iget-object v0, v0, Lhpq;->V:Ljes;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ljes;->b:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->g:Ldbf;

    new-instance v2, Lhon;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lhon;-><init>(Lhos;I)V

    invoke-virtual {v1, v2}, Ldbf;->h(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onPauseButtonClicked()V
    .locals 9

    iget-object v0, p0, Lhpk;->a:Lhpq;

    iget-object v0, v0, Lhpq;->V:Ljes;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ljes;->b:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->h:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Lhos;->h:Lhgy;

    const v3, 0x7f13002e

    invoke-interface {v1, v3}, Lhgy;->b(I)V

    iget-object v1, v0, Lhos;->w:Liec;

    invoke-interface {v1}, Liec;->f()V

    iget-object v1, v0, Lhos;->p:Ljuh;

    iget-object v3, v0, Lhos;->C:Lhpg;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lhon;

    const/16 v5, 0x8

    invoke-direct {v4, v3, v5}, Lhon;-><init>(Lhpg;I)V

    invoke-virtual {v1, v4}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lhos;->B:Lhol;

    iget-object v3, v1, Lhol;->d:Ldhi;

    sget-object v4, Ldil;->d:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v1, Lhol;->u:Lhof;

    iget-object v4, v3, Lhof;->n:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    iget-object v4, v3, Lhof;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v3, Lhof;->o:Ljava/util/concurrent/atomic/AtomicLong;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 v3, 0x0

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget-object v4, v3, Lhof;->t:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v5

    iput-object v5, v3, Lhof;->y:Lnph;

    iget-object v5, v3, Lhof;->y:Lnph;

    new-instance v6, Lhma;

    const/16 v7, 0xe

    invoke-direct {v6, v3, v7}, Lhma;-><init>(Lhof;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lnph;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v3, v3, Lhof;->y:Lnph;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    new-instance v4, Lhma;

    const/16 v5, 0xf

    invoke-direct {v4, v1, v5}, Lhma;-><init>(Lhol;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v3, v4, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    iget-object v3, v1, Lhol;->j:Lhno;

    iget-object v3, v3, Lhno;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, v1, Lhol;->af:Ljwo;

    invoke-virtual {v1}, Ljwo;->a()V

    :goto_1
    iget-object v0, v0, Lhos;->A:Lhny;

    iget-object v0, v0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2
    iget-object v0, p0, Lhpk;->a:Lhpq;

    invoke-virtual {v0, v2}, Lhpq;->c(Z)V

    return-void
.end method

.method public final onResumeButtonClicked()V
    .locals 10

    iget-object v0, p0, Lhpk;->a:Lhpq;

    iget-object v0, v0, Lhpq;->V:Ljes;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ljes;->b:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-object v1, v0, Lhos;->j:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v1, Lhnw;

    sget-object v2, Lhnw;->g:Lhnw;

    invoke-virtual {v1, v2}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Lhos;->h:Lhgy;

    const v2, 0x7f13002f

    invoke-interface {v1, v2}, Lhgy;->b(I)V

    iget-object v1, v0, Lhos;->w:Liec;

    invoke-interface {v1}, Liec;->e()V

    iget-object v1, v0, Lhos;->p:Ljuh;

    iget-object v2, v0, Lhos;->C:Lhpg;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lhon;

    const/16 v4, 0x9

    invoke-direct {v3, v2, v4}, Lhon;-><init>(Lhpg;I)V

    invoke-virtual {v1, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lhos;->B:Lhol;

    iget-object v2, v1, Lhol;->af:Ljwo;

    iget-object v3, v2, Ljwo;->d:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v2, Ljwo;->e:Ljwn;

    sget-object v5, Ljwn;->c:Ljwn;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const-string v5, "%s is expected but we get %s"

    sget-object v8, Ljwn;->c:Ljwn;

    iget-object v9, v2, Ljwo;->e:Ljwn;

    invoke-static {v4, v5, v8, v9}, Lmoz;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v4, Ljwn;->b:Ljwn;

    iput-object v4, v2, Ljwo;->e:Ljwn;

    iget-object v4, v2, Ljwo;->a:Ljyc;

    invoke-interface {v4}, Ljyc;->h()Lnou;

    move-result-object v4

    new-instance v5, Ldje;

    const/16 v8, 0x13

    invoke-direct {v5, v2, v8}, Ldje;-><init>(Ljwo;I)V

    iget-object v2, v2, Ljwo;->b:Ljava/util/concurrent/Executor;

    invoke-static {v4, v5, v2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v1, Lhol;->d:Ldhi;

    sget-object v3, Ldil;->d:Ldhj;

    invoke-interface {v2, v3}, Ldhi;->l(Ldhj;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, v1, Lhol;->u:Lhof;

    iget-object v2, v1, Lhof;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {v1}, Lhof;->k()V

    iget-object v1, v1, Lhof;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lhol;->j:Lhno;

    iget-object v1, v1, Lhno;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_1
    iget-object v0, v0, Lhos;->A:Lhny;

    iget-object v0, v0, Lhny;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_2
    iget-object v0, p0, Lhpk;->a:Lhpq;

    invoke-virtual {v0}, Lhpq;->f()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onSnapshotButtonClicked()V
    .locals 7

    iget-object v0, p0, Lhpk;->a:Lhpq;

    invoke-virtual {v0}, Lhpq;->f()V

    iget-object v0, p0, Lhpk;->a:Lhpq;

    iget-object v1, v0, Lhpq;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSnapshotButtonClickEnabled(Z)V

    iget-object v0, v0, Lhpq;->r:Lcgy;

    invoke-interface {v0}, Lcgy;->g()Lcha;

    move-result-object v0

    invoke-interface {v0}, Lcha;->k()V

    iget-object v0, p0, Lhpk;->a:Lhpq;

    iget-object v0, v0, Lhpq;->V:Ljes;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Ljes;->b:Ljava/lang/Object;

    invoke-static {}, Lgxy;->a()Lgxy;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v4, Lgya;->p:Lgya;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Ldlg;->a(Lgya;J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lgya;->p:Lgya;

    invoke-static {v1, v2, v3, v4, v5}, Lgxz;->a(Lgxy;JLjava/lang/String;Lgya;)Lgxz;

    move-result-object v1

    check-cast v0, Lhos;

    iget-object v2, v0, Lhos;->I:Ldlj;

    invoke-interface {v2, v1}, Ldlj;->j(Lgxz;)V

    iget-object v2, v0, Lhos;->z:Lcwm;

    invoke-virtual {v2, v1}, Lcwm;->a(Lgxz;)Lnou;

    move-result-object v1

    new-instance v2, Lcmc;

    const/16 v3, 0x12

    invoke-direct {v2, v0, v3}, Lcmc;-><init>(Lhos;I)V

    iget-object v0, v0, Lhos;->p:Ljuh;

    invoke-static {v1, v2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method
