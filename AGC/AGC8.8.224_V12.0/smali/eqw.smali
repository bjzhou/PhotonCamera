.class public Leqw;
.super Lfbc;


# instance fields
.field public q:Lkbc;

.field public r:Lezy;

.field public s:Lchl;

.field private final t:Ljava/lang/Object;

.field private u:Z

.field private v:Lcdi;

.field private volatile w:Lva;

.field private volatile z:Lgxb;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lfbc;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leqw;->t:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Leqw;->u:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GcaActivity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private final q()V
    .locals 4

    iget-boolean v0, p0, Leqw;->u:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Leqw;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Leqw;->u:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Leqw;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/legacy/app/app/CameraApp;->f()Lerw;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->h:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkbc;

    iput-object v2, p0, Leqw;->q:Lkbc;

    move-object v2, v1

    check-cast v2, Lesh;

    iget-object v2, v2, Lesh;->z:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lchl;

    iput-object v2, p0, Leqw;->s:Lchl;

    check-cast v1, Lesh;

    iget-object v1, v1, Lesh;->hV:Lbkb;

    invoke-static {v1}, Lfaf;->b(Lbkb;)Lezy;

    move-result-object v1

    iput-object v1, p0, Leqw;->r:Lezy;

    iget-object v1, p0, Leqw;->s:Lchl;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    invoke-static {v2}, Lmoz;->e(Z)V

    new-instance v3, Lcdi;

    invoke-direct {v3, v1}, Lcdi;-><init>(Lchl;)V

    iput-object v3, p0, Leqw;->v:Lcdi;

    iput-boolean v2, p0, Leqw;->u:Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    return-void
.end method

.method private final r()V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final n()Lkbc;
    .locals 1

    invoke-direct {p0}, Leqw;->q()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    return-object v0
.end method

.method protected final o()Lva;
    .locals 8

    invoke-direct {p0}, Leqw;->q()V

    iget-object v0, p0, Leqw;->w:Lva;

    if-nez v0, :cond_1

    iget-object v0, p0, Leqw;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leqw;->w:Lva;

    if-nez v1, :cond_0

    iget-object v1, p0, Lfbc;->x:Lezx;

    iget-object v5, p0, Lfbc;->y:Lgoz;

    iget-object v2, p0, Leqw;->r:Lezy;

    invoke-virtual {v1, v2}, Lfak;->e(Lfaz;)V

    new-instance v1, Lva;

    iget-object v4, p0, Leqw;->x:Lezx;

    invoke-direct {p0}, Leqw;->q()V

    iget-object v6, p0, Leqw;->v:Lcdi;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lva;-><init>(Leqw;Lezx;Lgoz;Lcdi;[B)V

    iput-object v1, p0, Leqw;->w:Lva;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Leqw;->w:Lva;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-direct {p0}, Leqw;->q()V

    invoke-static {p0}, Lmgt;->a(Landroid/app/Activity;)V

    invoke-direct {p0}, Leqw;->r()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    const-string v1, "GcaActivity#onCreate"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leqw;->v:Lcdi;

    iget-object v1, v0, Lcdi;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lcdi;->g:Lcjd;

    invoke-virtual {v2}, Lcjd;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcdi;->h:Lchl;

    invoke-virtual {v2}, Lchl;->b()Ljuf;

    move-result-object v2

    iput-object v2, v0, Lcdi;->d:Ljuf;

    iget-object v2, v0, Lcdi;->d:Ljuf;

    new-instance v3, Lcjd;

    invoke-direct {v3}, Lcjd;-><init>()V

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iput-object v3, v0, Lcdi;->g:Lcjd;

    iget-object v2, v0, Lcdi;->h:Lchl;

    iget-object v3, v0, Lcdi;->d:Ljuf;

    invoke-virtual {v2, v3}, Lchl;->c(Ljuf;)Ljuf;

    move-result-object v2

    iput-object v2, v0, Lcdi;->c:Ljuf;

    iget-object v2, v0, Lcdi;->c:Ljuf;

    new-instance v3, Lcjd;

    invoke-direct {v3}, Lcjd;-><init>()V

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iput-object v3, v0, Lcdi;->f:Lcjd;

    iget-object v2, v0, Lcdi;->h:Lchl;

    iget-object v3, v0, Lcdi;->c:Ljuf;

    invoke-virtual {v2, v3}, Lchl;->a(Ljuf;)Ljuf;

    move-result-object v2

    iput-object v2, v0, Lcdi;->b:Ljuf;

    iget-object v2, v0, Lcdi;->b:Ljuf;

    new-instance v3, Lcjd;

    invoke-direct {v3}, Lcjd;-><init>()V

    invoke-virtual {v2, v3}, Ljuf;->d(Lkad;)V

    iput-object v3, v0, Lcdi;->e:Lcjd;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1}, Lfbc;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Leqw;->q:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    invoke-static {p0}, Lcom/agc/pref/ConfigImport;->handleIntent(Landroid/app/Activity;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onDestroy()V
    .locals 2

    invoke-direct {p0}, Leqw;->r()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    const-string v1, "GcaActivity#onDestroy"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-super {p0}, Lfbc;->onDestroy()V

    iget-object v0, p0, Leqw;->v:Lcdi;

    invoke-virtual {v0}, Lcdi;->bK()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method protected final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Leqw;->r()V

    invoke-super {p0, p1}, Lfbc;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/agc/pref/ConfigImport;->handleIntent(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    invoke-direct {p0}, Leqw;->r()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    const-string v1, "GcaActivity#onPause"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-super {p0}, Lfbc;->onPause()V

    iget-object v0, p0, Leqw;->v:Lcdi;

    invoke-virtual {v0}, Lcdi;->bM()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-direct {p0}, Leqw;->r()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    const-string v1, "GcaActivity#onResume"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leqw;->v:Lcdi;

    invoke-virtual {v0}, Lcdi;->bN()V

    invoke-super {p0}, Lfbc;->onResume()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-direct {p0}, Leqw;->r()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    const-string v1, "GcaActivity#onStart"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Leqw;->v:Lcdi;

    invoke-virtual {v0}, Lcdi;->bO()V

    invoke-super {p0}, Lfbc;->onStart()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-direct {p0}, Leqw;->r()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    const-string v1, "GcaActivity#onStop"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    invoke-super {p0}, Lfbc;->onStop()V

    iget-object v0, p0, Leqw;->v:Lcdi;

    invoke-virtual {v0}, Lcdi;->e()V

    iget-object v0, p0, Leqw;->q:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method protected final p()Lgxb;
    .locals 2

    iget-object v0, p0, Leqw;->z:Lgxb;

    if-nez v0, :cond_1

    iget-object v0, p0, Leqw;->t:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leqw;->z:Lgxb;

    if-nez v1, :cond_0

    new-instance v1, Lgxb;

    invoke-direct {v1, p0}, Lgxb;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Leqw;->z:Lgxb;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Leqw;->z:Lgxb;

    return-object v0
.end method
