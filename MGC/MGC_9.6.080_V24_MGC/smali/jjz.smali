.class public final Ljjz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljdd;


# instance fields
.field public final a:Ltud;

.field public final b:Loyj;

.field public c:Z

.field private final d:Ltud;

.field private final e:Lmsx;

.field private final f:Ljava/lang/String;

.field private final g:Loxv;

.field private final h:Ljut;


# direct methods
.method public constructor <init>(Ljut;Ltud;Ltud;Lmsx;Landroid/content/res/Resources;Loxv;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iput-object p1, p0, Ljjz;->f:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    new-instance p1, Loyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    iput-object p4, p0, Ljjz;->e:Lmsx;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    const p1, 0x7f1402ed

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Ljjz;->h:Ljut;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const/4 p3, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p2, p0, p3}, Lhdh;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Ljjz;->a:Ltud;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p3, p0, Ljjz;->d:Ltud;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p2, Lhdh;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Ljjz;->b:Loyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Ljjz;->c:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iput-object p6, p0, Ljjz;->g:Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    invoke-virtual {p5, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p2}, Loyj;-><init>(Lrtm;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(I)Lsui;
    .locals 7

    goto/32 :goto_b

    nop

    nop

    :goto_0
    const v1, 0x10

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    :try_start_0
    iput-boolean v0, p0, Ljjz;->c:Z

    nop

    nop

    iget-object v1, p0, Ljjz;->b:Loyj;

    nop

    nop

    invoke-virtual {v1}, Loyj;->a()V

    iget-object v1, p0, Ljjz;->g:Loxv;

    nop

    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    invoke-virtual {v1, v3}, Loxv;->a(Ljava/lang/Object;)V

    iget-object v1, p0, Ljjz;->d:Ltud;

    nop

    nop

    nop

    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljuq;

    nop

    nop

    iput-boolean v2, v1, Ljuq;->m:Z

    nop

    nop

    nop

    nop

    iput-boolean v0, v1, Ljuq;->o:Z

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v1, Ljuq;->p:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    iget-object v1, v1, Ljuq;->t:Lnna;

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    invoke-direct {v4, v1, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    iget-object v1, v1, Lnna;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    iget-object v5, v1, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    if-nez v5, :cond_0

    nop

    nop

    iput-object v4, v1, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->getVisibility()I

    move-result v4

    nop

    nop

    nop

    nop

    const/16 v5, 0x8

    nop

    nop

    nop

    nop

    if-ne v4, v5, :cond_1

    nop

    nop

    iget-object v1, v1, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->d:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    iget-object v1, p0, Ljjz;->a:Ltud;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljjx;

    nop

    nop

    nop

    iget-object v4, v1, Ljjx;->B:Lkml;

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    iget-object v4, v1, Ljjx;->E:Lmkn;

    nop

    invoke-virtual {v4}, Lmkn;->f()V

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    if-ne p1, v4, :cond_2

    nop

    nop

    move v4, v2

    nop

    nop

    goto :goto_5

    nop

    nop

    :cond_2
    move v4, v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v4, v1, Ljjx;->H:Z

    nop

    invoke-virtual {v1, v2}, Ljjx;->H(Z)V

    :cond_3
    iget-object v1, p0, Ljjz;->a:Ltud;

    nop

    invoke-interface {v1}, Ltud;->a()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljjx;

    nop

    nop

    iget-object v4, v1, Ljjx;->P:Loxv;

    nop

    nop

    invoke-virtual {v4, v3}, Loxv;->a(Ljava/lang/Object;)V

    iget-object v4, v1, Ljjx;->h:Lnxc;

    nop

    nop

    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljjx;->k(Z)V

    :cond_4
    iget-object v4, v1, Ljjx;->ah:Lhut;

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    iget-object v4, v4, Lhut;->q:Landroid/widget/CheckBox;

    nop

    nop

    nop

    nop

    new-array v5, v0, [Ljava/lang/Object;

    nop

    nop

    const-string v6, "EvCompViewController must be first initialized"

    nop

    invoke-static {v4, v6, v5}, Lqrg;->F(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v4, v1, Ljjx;->ah:Lhut;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lhut;->o(Z)V

    :cond_5
    iget-object v4, v1, Ljjx;->Y:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    if-eqz v4, :cond_6

    nop

    iget-object v4, v1, Ljjx;->Y:Lrss;

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lnuj;

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lnuj;->i(Z)V

    :cond_6
    iget-object v4, v1, Ljjx;->r:Lrss;

    nop

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    if-eqz v4, :cond_7

    nop

    nop

    iget-object v4, v1, Ljjx;->r:Lrss;

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lgjy;

    nop

    nop

    iget-object v5, v4, Lgjy;->b:Lrss;

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lgjy;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lgjw;

    nop

    nop

    invoke-virtual {v4}, Lgjw;->s()V

    :cond_7
    iget-object v4, v1, Ljjx;->q:Lrss;

    nop

    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_8

    nop

    iget-object v4, v1, Ljjx;->q:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lmml;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v2}, Lmml;->o(Z)V

    iget-object v4, v1, Ljjx;->q:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lmml;

    nop

    nop

    invoke-virtual {v4}, Lmml;->l()V

    iget-object v4, v1, Ljjx;->q:Lrss;

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    check-cast v4, Lmml;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lmml;->f()V

    :cond_8
    iget-object v4, v1, Ljjx;->aj:Ljhy;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Ljhy;->K:Lghe;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lghe;->e()V

    iget-object v4, v1, Ljjx;->ao:Lkyf;

    nop

    nop

    invoke-virtual {v4}, Lkyf;->z()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_9

    nop

    invoke-virtual {v4}, Lkyf;->j()V

    :cond_9
    iget-object v4, v1, Ljjx;->m:Lndu;

    nop

    nop

    invoke-interface {v4, v0}, Lndu;->j(Z)V

    iget-object v4, v1, Ljjx;->i:Lmyc;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v0}, Lmyc;->d(Z)V

    const/4 v0, 0x2

    nop

    if-ne p1, v0, :cond_a

    nop

    nop

    nop

    nop

    iget-object p1, v1, Ljjx;->ay:Ltrv;

    nop

    nop

    invoke-virtual {p1}, Ltrv;->d()V

    goto :goto_6

    nop

    nop

    nop

    :cond_a
    iget-object p1, v1, Ljjx;->ay:Ltrv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltrv;->e()V

    :goto_6
    iget-object p1, v1, Ljjx;->ap:Lixe;

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lixg;->d:Lixg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Lixe;->g(Lixg;)V

    iget-object p1, v1, Ljjx;->X:Lkyl;

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Lkyl;->a(Z)V

    iget-object p1, v1, Ljjx;->x:Lcom/google/android/apps/camera/ui/hotshot/HotshotController;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/hotshot/HotshotController;->m()V

    iget-object p1, v1, Ljjx;->ad:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    if-eqz p1, :cond_b

    nop

    iget-object p1, v1, Ljjx;->ad:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lhxc;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lhxc;->h()V

    :cond_b
    iget-object p1, p0, Ljjz;->a:Ltud;

    nop

    nop

    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Ljjx;

    nop

    iget-object p1, p1, Ljjx;->v:Lhvp;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lhvp;->g()V

    invoke-static {v3}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1d

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_c

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_9

    nop

    :goto_e
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(I)Lsui;
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    iget-object p1, p0, Ljjz;->d:Ltud;

    nop

    nop

    nop

    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Ljuq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljuq;->a()V

    iget-object p1, p0, Ljjz;->e:Lmsx;

    nop

    iget-object v0, p0, Ljjz;->f:Ljava/lang/String;

    nop

    invoke-interface {p1, v0}, Lmsx;->i(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    nop

    new-instance v0, Landroid/os/Handler;

    nop

    nop

    nop

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljhr;

    nop

    nop

    nop

    nop

    const/16 v1, 0x14

    nop

    nop

    nop

    invoke-direct {p1, p0, v1}, Ljhr;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Ljjz;->a:Ltud;

    nop

    nop

    invoke-interface {p1}, Ltud;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    check-cast p1, Ljjx;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Ljjx;->v:Lhvp;

    nop

    nop

    nop

    invoke-virtual {p1}, Lhvp;->h()V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    invoke-static {p1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v2

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_5

    nop

    nop

    :goto_e
    monitor-enter p0

    nop

    nop

    nop

    :try_start_3
    iget-object p1, p0, Ljjz;->g:Loxv;

    nop

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v1}, Loxv;->a(Ljava/lang/Object;)V

    new-instance p1, Ljsp;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljjz;->h:Ljut;

    nop

    nop

    const/16 v2, 0xc

    nop

    nop

    nop

    invoke-direct {p1, v1, v2}, Ljsp;-><init>(Ljava/lang/Object;I)V

    iget-object v2, v1, Ljut;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v3, v1, Ljut;->b:Ljava/util/List;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    iget-object v0, v1, Ljut;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    nop

    nop

    nop

    :cond_2
    monitor-exit v2

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Ljjz;->g:Loxv;

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Loxv;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Ljjz;->c:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljjz;->b(I)Lsui;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    return-void

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop
.end method
