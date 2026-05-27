.class public final Lfoa;
.super Lchk;

# interfaces
.implements Lcqs;


# instance fields
.field public final b:Lcox;

.field public final c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final d:Lcqa;

.field public final e:Ljava/lang/Object;

.field private final f:Lcgy;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lcwh;

.field private final i:Loiw;

.field private final j:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

.field private final k:Lczx;

.field private final l:Lczy;

.field private final m:Z

.field private final n:Lfmf;

.field private o:Ljuf;

.field private final p:Ljvk;


# direct methods
.method public constructor <init>(Lcgy;Lcox;Landroid/content/res/Resources;Lcom/google/android/apps/camera/bottombar/BottomBarController;Loiw;Lcwh;Loiw;Lczx;Ljvk;ZLfmf;)V
    .locals 1

    invoke-direct {p0}, Lchk;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    iput-object p1, p0, Lfoa;->f:Lcgy;

    iput-object p2, p0, Lfoa;->b:Lcox;

    iput-object p3, p0, Lfoa;->g:Landroid/content/res/Resources;

    iput-object p4, p0, Lfoa;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-interface {p5}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcqa;

    iput-object p1, p0, Lfoa;->d:Lcqa;

    iput-object p6, p0, Lfoa;->h:Lcwh;

    iput-object p7, p0, Lfoa;->i:Loiw;

    new-instance p1, Lfny;

    invoke-direct {p1, p0}, Lfny;-><init>(Lfoa;)V

    iput-object p1, p0, Lfoa;->j:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    iput-object p8, p0, Lfoa;->k:Lczx;

    new-instance p1, Lfnz;

    invoke-direct {p1, p0}, Lfnz;-><init>(Lfoa;)V

    iput-object p1, p0, Lfoa;->l:Lczy;

    iput-object p9, p0, Lfoa;->p:Ljvk;

    iput-boolean p10, p0, Lfoa;->m:Z

    iput-object p11, p0, Lfoa;->n:Lfmf;

    return-void
.end method


# virtual methods
.method public final bZ()V
    .locals 2

    iget-object v0, p0, Lfoa;->d:Lcqa;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcqa;->j(Z)V

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lfoa;->g:Landroid/content/res/Resources;

    const v1, 0x7f140584

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ca(I)V
    .locals 2

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoa;->b:Lcox;

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

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoa;->b:Lcox;

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

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoa;->d:Lcqa;

    iget-object v2, p0, Lfoa;->f:Lcgy;

    invoke-interface {v2}, Lcgy;->g()Lcha;

    move-result-object v2

    sget-object v3, Lika;->f:Lika;

    invoke-virtual {v1, v2, v3}, Lcqa;->c(Lcha;Lika;)V

    iget-object v1, p0, Lfoa;->b:Lcox;

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

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoa;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->e()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lfoa;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfoa;->p:Ljvk;

    sget-object v1, Ljws;->h:Ljws;

    invoke-virtual {v0, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoa;->b:Lcox;

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

    iget-object v0, p0, Lfoa;->b:Lcox;

    invoke-virtual {v0, p1}, Lcox;->g(Z)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lchk;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfoa;->b:Lcox;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcox;->q(I)V

    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoa;->b:Lcox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcox;->l(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final n()V
    .locals 4

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iput-object v1, p0, Lfoa;->o:Ljuf;

    iget-object v1, p0, Lfoa;->n:Lfmf;

    sget-object v2, Lika;->f:Lika;

    iget-object v3, p0, Lfoa;->o:Ljuf;

    invoke-virtual {v1, p0, v2, v3}, Lfmf;->b(Lchk;Lika;Ljuf;)V

    iget-object v1, p0, Lfoa;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Lfoa;->j:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->addListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v1, p0, Lfoa;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->h()V

    iget-object v1, p0, Lfoa;->b:Lcox;

    invoke-virtual {v1, p0}, Lcox;->b(Lcqs;)V

    iget-object v1, p0, Lfoa;->k:Lczx;

    iget-object v2, p0, Lfoa;->l:Lczy;

    invoke-interface {v1, v2}, Lczx;->a(Lczy;)V

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

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoa;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->i()V

    iget-object v1, p0, Lfoa;->b:Lcox;

    invoke-virtual {v1}, Lcox;->m()V

    iget-object v1, p0, Lfoa;->o:Ljuf;

    invoke-virtual {v1}, Ljuf;->close()V

    iget-object v1, p0, Lfoa;->b:Lcox;

    invoke-virtual {v1, p0}, Lcox;->k(Lcqs;)V

    iget-object v1, p0, Lfoa;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v2, p0, Lfoa;->j:Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->removeListener(Lcom/google/android/apps/camera/bottombar/BottomBarListener;)V

    iget-object v1, p0, Lfoa;->k:Lczx;

    iget-object v2, p0, Lfoa;->l:Lczy;

    invoke-interface {v1, v2}, Lczx;->g(Lczy;)V

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

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoa;->b:Lcox;

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

.method public final w(I)V
    .locals 4

    iget-object v0, p0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljws;->g:Ljws;

    const/4 v2, 0x1

    if-nez p1, :cond_0

    sget-object v1, Ljws;->h:Ljws;

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    sget-object v1, Ljws;->g:Ljws;

    :cond_1
    :goto_0
    iget-object p1, p0, Lfoa;->h:Lcwh;

    sget-object v3, Lika;->f:Lika;

    invoke-virtual {p1, v3}, Lcwh;->a(Lika;)Lcwg;

    move-result-object p1

    invoke-interface {p1}, Lcwg;->bm()Ljava/lang/Object;

    invoke-interface {p1}, Lcwg;->bm()Ljava/lang/Object;

    move-result-object v3

    if-eq v1, v3, :cond_2

    invoke-interface {p1, v1}, Lcwg;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lfoa;->i:Loiw;

    check-cast p1, Lihj;

    invoke-virtual {p1}, Lihj;->a()Lihg;

    move-result-object p1

    iget-object p1, p1, Lihg;->e:Ljava/lang/Object;

    sget-object v1, Lika;->f:Lika;

    new-instance v3, Lfof;

    invoke-direct {v3, p0, v2}, Lfof;-><init>(Lfoa;I)V

    check-cast p1, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;

    invoke-virtual {p1, v1, v3}, Lcom/google/android/apps/camera/ui/views/ViewfinderCover;->m(Lika;Ljava/lang/Runnable;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
