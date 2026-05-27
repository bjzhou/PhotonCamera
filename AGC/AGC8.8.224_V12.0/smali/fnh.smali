.class public final Lfnh;
.super Lchk;


# instance fields
.field public final b:Libj;

.field public final c:Lkai;

.field public final d:Lfnk;

.field public final e:Lbkc;

.field private final f:Lkbc;

.field private final g:Lhzh;

.field private final h:Litm;

.field private final i:Ljava/util/concurrent/Executor;

.field private final j:Lfnr;

.field private k:Lnou;

.field private final l:Ldqx;


# direct methods
.method public constructor <init>(Libj;Lkbc;Lhzh;Lbkc;Litm;Lkai;Ljava/util/concurrent/Executor;Ldqx;Lfnk;Lfnr;[B[B)V
    .locals 0

    invoke-direct {p0}, Lchk;-><init>()V

    iput-object p1, p0, Lfnh;->b:Libj;

    iput-object p2, p0, Lfnh;->f:Lkbc;

    iput-object p3, p0, Lfnh;->g:Lhzh;

    iput-object p4, p0, Lfnh;->e:Lbkc;

    iput-object p5, p0, Lfnh;->h:Litm;

    iput-object p6, p0, Lfnh;->c:Lkai;

    iput-object p7, p0, Lfnh;->i:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lfnh;->l:Ldqx;

    iput-object p9, p0, Lfnh;->d:Lfnk;

    iput-object p10, p0, Lfnh;->j:Lfnr;

    return-void
.end method


# virtual methods
.method public final cc()V
    .locals 0

    return-void
.end method

.method public final cd()V
    .locals 1

    iget-object v0, p0, Lfnh;->g:Lhzh;

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/lens/sdk/LensApi;->onPause()V

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfnh;->d:Lfnk;

    invoke-virtual {v0}, Lfnk;->close()V

    return-void
.end method

.method public final l()V
    .locals 2

    iget-object v0, p0, Lfnh;->b:Libj;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lfnh;->d:Lfnk;

    invoke-static {}, Ljuh;->a()V

    iget-object v0, v0, Lfnk;->e:Lken;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lken;->g()V

    :cond_0
    iget-object v0, p0, Lfnh;->g:Lhzh;

    invoke-virtual {v0}, Lhzh;->e()Lcom/google/lens/sdk/LensApi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/lens/sdk/LensApi;->onResume()V

    return-void
.end method

.method public final declared-synchronized n()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfnh;->f:Lkbc;

    const-string v1, "MORE_MODES-start"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lfnh;->l:Ldqx;

    iget-object v1, v0, Ldqx;->c:Ljava/lang/Object;

    iget-object v2, v0, Ldqx;->a:Ljava/lang/Object;

    iget-object v3, v0, Ldqx;->b:Ljava/lang/Object;

    iget-object v4, v0, Ldqx;->d:Ljava/lang/Object;

    check-cast v4, Ldbf;

    invoke-virtual {v4}, Ldbf;->d()Lklv;

    move-result-object v4

    check-cast v1, Ldna;

    invoke-virtual {v1, v2, v3, v4}, Ldna;->b(Lklj;Ldhi;Lklv;)Lkll;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Ldqx;->a:Ljava/lang/Object;

    check-cast v2, Lklx;

    invoke-virtual {v2, v1}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iget-object v0, v0, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-static {v3}, Lkaf;->f(Landroid/graphics/Point;)Lkaf;

    move-result-object v0

    invoke-virtual {v0}, Lkaf;->e()Lkaf;

    move-result-object v0

    invoke-virtual {v2}, Lklw;->y()Ljava/util/List;

    move-result-object v2

    new-instance v3, Liru;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Liru;-><init>(Lkaf;I)V

    invoke-static {v2, v3}, Llkj;->q(Ljava/util/Collection;Lmqs;)Ljava/util/Collection;

    move-result-object v0

    sget-object v2, Lye;->b:Lye;

    invoke-static {v0, v2}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkaf;

    if-eqz v0, :cond_1

    new-instance v2, Lfno;

    invoke-direct {v2, v1, v0}, Lfno;-><init>(Lkll;Lkaf;)V

    iget-object v0, p0, Lfnh;->j:Lfnr;

    iget-object v1, v0, Lfnr;->a:Ldbf;

    invoke-virtual {v1}, Ldbf;->d()Lklv;

    move-result-object v1

    iget-object v3, v2, Lfno;->b:Lkaf;

    invoke-static {v3}, Ljzr;->j(Lkaf;)Ljzr;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lihb;->a(Lklv;Lkaf;Ljzr;)Lihb;

    move-result-object v1

    iget-object v3, v0, Lfnr;->d:Ljvs;

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lfnr;->c:Lmqp;

    sget-object v4, Lfnq;->a:Lfnq;

    invoke-virtual {v3, v4}, Lmqp;->b(Lmqi;)Lmqp;

    move-result-object v3

    iput-object v3, v0, Lfnr;->e:Lmqp;

    goto :goto_0

    :cond_0
    sget-object v3, Lmpx;->a:Lmpx;

    iput-object v3, v0, Lfnr;->e:Lmqp;

    :goto_0
    iget-object v3, v0, Lfnr;->b:Ligx;

    iget-object v4, v0, Lfnr;->e:Lmqp;

    iget-object v0, v0, Lfnr;->f:Lklx;

    iget-object v5, v2, Lfno;->a:Lkll;

    invoke-virtual {v0, v5}, Lklx;->f(Lkll;)Lfuz;

    move-result-object v0

    invoke-virtual {v0}, Lklw;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v4, v0}, Ligx;->f(Lihb;Lmqp;Ljava/lang/Integer;)Lnou;

    move-result-object v0

    new-instance v1, Ldvo;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v2, v3}, Ldvo;-><init>(Lfnh;Lfno;I)V

    iget-object v2, p0, Lfnh;->i:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lfnh;->k:Lnou;

    new-instance v1, Lcig;

    const/16 v2, 0x13

    invoke-direct {v1, p0, v2}, Lcig;-><init>(Lfnh;I)V

    invoke-static {v0, v1}, Ljvd;->s(Lnou;Ljzs;)V

    iget-object v0, p0, Lfnh;->h:Litm;

    invoke-interface {v0}, Litm;->x()V

    iget-object v0, p0, Lfnh;->f:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null previewSize"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized p()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfnh;->k:Lnou;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfnh;->k:Lnou;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lfnh;->k:Lnou;

    iget-object v0, p0, Lfnh;->d:Lfnk;

    invoke-virtual {v0}, Lfnk;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
