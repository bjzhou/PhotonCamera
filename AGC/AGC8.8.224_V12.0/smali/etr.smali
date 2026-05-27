.class public final Letr;
.super Ljava/lang/Object;

# interfaces
.implements Lflo;


# instance fields
.field public final a:Logd;

.field public final b:Ljvx;

.field public c:Z

.field private final d:Lfez;

.field private final e:Logd;

.field private final f:Lhsl;

.field private final g:Ljava/lang/String;

.field private final h:Ljvk;


# direct methods
.method public constructor <init>(Lfez;Logd;Logd;Lhsl;Landroid/content/res/Resources;Ljvk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Letr;->c:Z

    iput-object p1, p0, Letr;->d:Lfez;

    iput-object p2, p0, Letr;->a:Logd;

    iput-object p3, p0, Letr;->e:Logd;

    iput-object p4, p0, Letr;->f:Lhsl;

    iput-object p6, p0, Letr;->h:Ljvk;

    new-instance p1, Ljvx;

    new-instance p2, Ldet;

    const/4 p3, 0x2

    invoke-direct {p2, p0, p3}, Ldet;-><init>(Letr;I)V

    invoke-direct {p1, p2}, Ljvx;-><init>(Lmrl;)V

    iput-object p1, p0, Letr;->b:Ljvx;

    const p1, 0x7f14026c

    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Letr;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(I)Lnou;
    .locals 6

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Letr;->c:Z

    iget-object v0, p0, Letr;->b:Ljvx;

    invoke-virtual {v0}, Ljvx;->c()V

    iget-object v0, p0, Letr;->h:Ljvk;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Letr;->e:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfeu;

    iget-object v3, v0, Lfeu;->m:Ljuf;

    iget-object v4, v0, Lfeu;->w:Llij;

    iget-object v5, v4, Llij;->b:Ljava/lang/Object;

    check-cast v5, Ljvq;

    invoke-virtual {v5}, Ljvq;->f()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v4, Llij;->a:Ljava/lang/Object;

    iget-object v4, v4, Llij;->e:Ljava/lang/Object;

    invoke-interface {v5, v4}, Lell;->d(Lelk;)Lkad;

    move-result-object v4

    goto :goto_0

    :cond_0
    sget-object v4, Lcgk;->q:Lcgk;

    :goto_0
    invoke-virtual {v3, v4}, Ljuf;->d(Lkad;)V

    iput-boolean v1, v0, Lfeu;->p:Z

    iput-boolean p1, v0, Lfeu;->q:Z

    iget-boolean v3, v0, Lfeu;->r:Z

    if-eqz v3, :cond_2

    iget-object v0, v0, Lfeu;->v:Lijx;

    iget-object v3, v0, Lijx;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    new-instance v4, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-direct {v4, v0}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Lijx;)V

    iget-object v0, v3, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->i:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-nez v0, :cond_1

    iput-object v4, v3, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->i:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    :cond_1
    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->getVisibility()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    iget-object v0, v3, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2
    iget-object v0, p0, Letr;->d:Lfez;

    invoke-interface {v0}, Lfez;->c()V

    iget-object v0, p0, Letr;->a:Logd;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Letp;

    iget-object v3, v0, Letp;->aa:Ljvk;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object v3, v0, Letp;->k:Litm;

    if-eqz v3, :cond_3

    invoke-interface {v3, v1}, Litm;->q(Z)V

    iget-object v3, v0, Letp;->k:Litm;

    invoke-interface {v3}, Litm;->n()V

    :cond_3
    iget-object v3, v0, Letp;->l:Ldol;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ldol;->e()V

    :cond_4
    iget-object v3, v0, Letp;->y:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v0, Letp;->y:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lckr;

    invoke-interface {v3}, Lckr;->k()V

    :cond_5
    iget-object v3, v0, Letp;->x:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v0, Letp;->x:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhms;

    invoke-interface {v3}, Lhms;->l()V

    iget-object v3, v0, Letp;->x:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhms;

    invoke-interface {v3}, Lhms;->f()V

    :cond_6
    iget-object v3, v0, Letp;->B:Lcgy;

    invoke-interface {v3}, Lcgy;->g()Lcha;

    move-result-object v3

    invoke-interface {v3}, Lcha;->e()V

    iget-object v3, v0, Letp;->ab:Lgeh;

    invoke-interface {v3}, Lgeh;->h()V

    iget-object v3, v0, Letp;->t:Libj;

    invoke-interface {v3, p1}, Libj;->l(Z)V

    iget-object v3, v0, Letp;->m:Lhwu;

    invoke-virtual {v3, p1}, Lhwu;->d(Z)V

    iget-object p1, v0, Letp;->D:Lflp;

    invoke-virtual {p1}, Lflp;->b()V

    iget-object p1, v0, Letp;->ah:Lell;

    sget-object v3, Lelm;->d:Lelm;

    invoke-interface {p1, v3}, Lell;->i(Lelm;)V

    iget-object p1, v0, Letp;->al:Lgdz;

    invoke-virtual {p1}, Lgdz;->d()V

    iget-object p1, p0, Letr;->a:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Letp;

    iget-object v0, p1, Letp;->J:Lftg;

    if-eqz v0, :cond_7

    iget-object v0, p1, Letp;->L:Lhke;

    invoke-virtual {v0}, Lhke;->f()V

    invoke-virtual {p1, v1}, Letp;->F(Z)V

    :cond_7
    iget-object p1, p0, Letr;->a:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Letp;

    iget-object p1, p1, Letp;->E:Ldpl;

    invoke-virtual {p1}, Ldpl;->b()V

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(I)Lnou;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Letr;->h:Ljvk;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Letr;->d:Lfez;

    invoke-interface {p1}, Lfez;->b()V

    iget-object p1, p0, Letr;->e:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfeu;

    invoke-virtual {p1}, Lfeu;->a()V

    iget-object p1, p0, Letr;->f:Lhsl;

    iget-object v0, p0, Letr;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Lhsl;->i(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lerm;

    const/16 v1, 0x12

    invoke-direct {v0, p0, v1}, Lerm;-><init>(Letr;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Letr;->a:Logd;

    invoke-interface {p1}, Logd;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Letp;

    iget-object p1, p1, Letp;->E:Ldpl;

    invoke-virtual {p1}, Ldpl;->c()V

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Letr;->h:Ljvk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    iget-boolean v0, p0, Letr;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Letr;->b(I)Lnou;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
