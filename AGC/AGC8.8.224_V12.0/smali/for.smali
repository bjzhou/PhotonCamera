.class public final Lfor;
.super Lchk;

# interfaces
.implements Lcqs;
.implements Lhrx;


# instance fields
.field public final b:Lcox;

.field public final c:Ljava/lang/Object;

.field public final d:Lcqa;

.field private final e:Lcgy;

.field private final f:Ljava/lang/String;

.field private g:Ljuf;

.field private final h:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field private final i:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final j:Lczh;

.field private final k:Lgzn;

.field private final l:Ldhi;

.field private final m:Lfou;

.field private final n:Lhrz;

.field private final o:Lfmf;

.field private final p:Ljew;


# direct methods
.method public constructor <init>(Lcgy;Landroid/content/res/Resources;Lcqa;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lcox;Lczh;Ljew;Lgzn;Ldhi;Lfou;Lhrz;Lfmf;[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Lchk;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lfor;->c:Ljava/lang/Object;

    move-object v1, p1

    iput-object v1, v0, Lfor;->e:Lcgy;

    const v1, 0x7f140584

    move-object v2, p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfor;->f:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lfor;->b:Lcox;

    move-object v1, p4

    iput-object v1, v0, Lfor;->i:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    move-object v1, p3

    iput-object v1, v0, Lfor;->d:Lcqa;

    move-object v1, p6

    iput-object v1, v0, Lfor;->j:Lczh;

    move-object v1, p7

    iput-object v1, v0, Lfor;->p:Ljew;

    move-object v1, p8

    iput-object v1, v0, Lfor;->k:Lgzn;

    move-object v1, p9

    iput-object v1, v0, Lfor;->l:Ldhi;

    move-object v1, p10

    iput-object v1, v0, Lfor;->m:Lfou;

    move-object v1, p11

    iput-object v1, v0, Lfor;->n:Lhrz;

    move-object v1, p12

    iput-object v1, v0, Lfor;->o:Lfmf;

    new-instance v1, Lfoq;

    invoke-direct {v1, p0}, Lfoq;-><init>(Lfor;)V

    iput-object v1, v0, Lfor;->h:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    return-void
.end method


# virtual methods
.method public final bZ()V
    .locals 2

    iget-object v0, p0, Lfor;->d:Lcqa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcqa;->j(Z)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lfor;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final ca(I)V
    .locals 2

    iget-object v0, p0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfor;->b:Lcox;

    invoke-virtual {v1, p1}, Lcox;->f(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cb(Z)V
    .locals 2

    iget-object v0, p0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfor;->b:Lcox;

    invoke-virtual {v1, p1}, Lcox;->j(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final cc()V
    .locals 4

    iget-object v0, p0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfor;->d:Lcqa;

    iget-object v2, p0, Lfor;->e:Lcgy;

    invoke-interface {v2}, Lcgy;->g()Lcha;

    move-result-object v2

    sget-object v3, Lika;->t:Lika;

    invoke-virtual {v1, v2, v3}, Lcqa;->c(Lcha;Lika;)V

    iget-object v1, p0, Lfor;->b:Lcox;

    invoke-virtual {v1}, Lcox;->d()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final cd()V
    .locals 2

    iget-object v0, p0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfor;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->e()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfor;->b:Lcox;

    invoke-virtual {v1}, Lcox;->m()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 0

    return-void
.end method

.method public final i(Z)V
    .locals 1

    iget-object v0, p0, Lfor;->b:Lcox;

    invoke-virtual {v0, p1}, Lcox;->g(Z)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lchk;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfor;->b:Lcox;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcox;->q(I)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 22

    move-object/from16 v1, p0

    iget-object v2, v1, Lfor;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lfor;->b:Lcox;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcox;->l(Z)V

    iget-object v0, v1, Lfor;->l:Ldhi;

    sget-object v4, Ldgu;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->d()V

    iget-object v0, v1, Lfor;->p:Ljew;

    const-string v4, "amber_edu"

    invoke-virtual {v0, v4}, Ljew;->X(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lfor;->j:Lczh;

    iget-object v4, v0, Lczh;->k:Landroid/view/View;

    if-nez v4, :cond_0

    iget-object v4, v0, Lczh;->d:Landroid/content/Context;

    const v5, 0x7f0e0033

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lczh;->k:Landroid/view/View;

    :cond_0
    iget-object v4, v0, Lczh;->k:Landroid/view/View;

    const v5, 0x7f0b00cf

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iput-object v4, v0, Lczh;->g:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v4, v0, Lczh;->k:Landroid/view/View;

    const v5, 0x7f0b00cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iput-object v4, v0, Lczh;->i:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v4, v0, Lczh;->h:Lczj;

    if-nez v4, :cond_1

    iget-object v4, v0, Lczh;->j:Lczj;

    if-nez v4, :cond_1

    new-instance v4, Lczj;

    iget-object v15, v0, Lczh;->g:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v14, v0, Lczh;->i:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v13, v0, Lczh;->n:Ligo;

    iget-object v12, v0, Lczh;->d:Landroid/content/Context;

    iget-object v11, v0, Lczh;->e:Ljava/util/concurrent/Executor;

    sget-object v16, Lczh;->a:Landroid/net/Uri;

    iget-object v10, v0, Lczh;->f:Ljava/util/concurrent/ScheduledExecutorService;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v4

    move-object v6, v15

    move-object v7, v14

    move-object v8, v13

    move-object v9, v12

    move-object/from16 v19, v10

    move-object v10, v11

    move-object/from16 v20, v11

    move-object/from16 v11, v16

    move-object/from16 v16, v12

    move-object/from16 v12, v19

    move-object/from16 v21, v13

    move-object/from16 v13, v17

    move-object/from16 v17, v14

    move-object/from16 v14, v18

    invoke-direct/range {v5 .. v14}, Lczj;-><init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Ligo;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V

    iput-object v4, v0, Lczh;->h:Lczj;

    new-instance v4, Lczj;

    sget-object v11, Lczh;->b:Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v5, v4

    move-object/from16 v6, v17

    move-object v7, v15

    move-object/from16 v8, v21

    move-object/from16 v9, v16

    move-object/from16 v10, v20

    move-object/from16 v12, v19

    invoke-direct/range {v5 .. v14}, Lczj;-><init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Ligo;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V

    iput-object v4, v0, Lczh;->j:Lczj;

    :cond_1
    iget-object v4, v0, Lczh;->h:Lczj;

    invoke-virtual {v4}, Lczj;->f()V

    iget-object v4, v0, Lczh;->h:Lczj;

    new-instance v5, Lctw;

    const/16 v6, 0xf

    invoke-direct {v5, v0, v6}, Lctw;-><init>(Lczh;I)V

    iput-object v5, v4, Lczj;->f:Ljava/lang/Runnable;

    invoke-virtual {v4}, Lczj;->b()V

    iget-object v4, v0, Lczh;->j:Lczj;

    invoke-virtual {v4}, Lczj;->f()V

    iget-object v4, v0, Lczh;->j:Lczj;

    new-instance v5, Lctw;

    const/16 v6, 0x10

    invoke-direct {v5, v0, v6}, Lctw;-><init>(Lczh;I)V

    iput-object v5, v4, Lczj;->f:Ljava/lang/Runnable;

    invoke-virtual {v4}, Lczj;->b()V

    iget-object v4, v0, Lczh;->g:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->g()V

    iget-object v4, v0, Lczh;->i:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->h()V

    iget-object v4, v0, Lczh;->c:Lhrz;

    iget-object v5, v0, Lczh;->k:Landroid/view/View;

    const/16 v6, 0xe

    const v7, 0x7f140105

    invoke-virtual {v4, v6, v7, v5, v0}, Lhrz;->m(IILandroid/view/View;Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, v1, Lfor;->p:Ljew;

    const-string v4, "amber_edu"

    invoke-virtual {v0, v4}, Ljew;->Z(Ljava/lang/String;)I

    :cond_2
    iget-object v0, v1, Lfor;->k:Lgzn;

    sget-object v4, Lgzd;->M:Lgzr;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iput-object v1, p0, Lfor;->g:Ljuf;

    iget-object v1, p0, Lfor;->o:Lfmf;

    sget-object v2, Lika;->t:Lika;

    iget-object v3, p0, Lfor;->g:Ljuf;

    invoke-virtual {v1, p0, v2, v3}, Lfmf;->b(Lchk;Lika;Ljuf;)V

    iget-object v1, p0, Lfor;->i:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Lfor;->h:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v1, p0, Lfor;->n:Lhrz;

    invoke-virtual {v1, p0}, Lhrz;->e(Lhrx;)V

    iget-object v1, p0, Lfor;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->h()V

    iget-object v1, p0, Lfor;->b:Lcox;

    invoke-virtual {v1, p0}, Lcox;->b(Lcqs;)V

    iget-object v1, p0, Lfor;->m:Lfou;

    invoke-virtual {v1}, Lfou;->i()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final o(Lfsf;)V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 3

    iget-object v0, p0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfor;->i:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Lfor;->h:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v1, p0, Lfor;->n:Lhrz;

    invoke-virtual {v1, p0}, Lhrz;->i(Lhrx;)V

    iget-object v1, p0, Lfor;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->i()V

    iget-object v1, p0, Lfor;->b:Lcox;

    invoke-virtual {v1}, Lcox;->m()V

    iget-object v1, p0, Lfor;->g:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    iget-object v1, p0, Lfor;->b:Lcox;

    invoke-virtual {v1, p0}, Lcox;->k(Lcqs;)V

    iget-object v1, p0, Lfor;->m:Lfou;

    invoke-virtual {v1}, Lfou;->j()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s(Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public final t()Z
    .locals 2

    iget-object v0, p0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfor;->b:Lcox;

    invoke-virtual {v1}, Lcox;->n()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final x(I)V
    .locals 1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lfor;->m:Lfou;

    invoke-virtual {p1}, Lfou;->i()V

    :cond_0
    return-void
.end method

.method public final y(I)V
    .locals 1

    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lfor;->m:Lfou;

    invoke-virtual {p1}, Lfou;->j()V

    :cond_0
    return-void
.end method
