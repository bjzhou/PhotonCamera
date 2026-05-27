.class public final Lkue;
.super Liua;

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lkua;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Landroid/content/Context;

.field public final c:Lktz;

.field public d:I

.field public e:I

.field public f:Liun;

.field public g:Lium;

.field public h:I

.field public i:Lity;

.field public j:Litz;

.field private final k:Ljava/util/concurrent/Executor;

.field private final l:Lktv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lktz;Lktv;)V
    .locals 4

    sget-object v0, Lkub;->a:Lkub;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-direct {p0}, Liua;-><init>()V

    new-instance v1, Lkud;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkud;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lkue;->a:Ljava/util/concurrent/Executor;

    const/4 v1, 0x1

    iput v1, p0, Lkue;->d:I

    iput v1, p0, Lkue;->h:I

    iput-object p1, p0, Lkue;->b:Landroid/content/Context;

    iput-object p2, p0, Lkue;->c:Lktz;

    iput-object p3, p0, Lkue;->l:Lktv;

    iput-object v0, p0, Lkue;->k:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private static n(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static o(I)Z
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    invoke-static {}, Llho;->t()V

    invoke-virtual {p0}, Lkue;->l()Z

    move-result v0

    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Llho;->u(ZLjava/lang/String;)V

    iget v0, p0, Lkue;->e:I

    return v0
.end method

.method public final b([BLiud;)V
    .locals 3

    iget-object v0, p0, Lkue;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lkgc;

    const/4 v2, 0x4

    invoke-direct {v1, p0, p1, p2, v2}, Lkgc;-><init>(Lkue;[BLiud;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c([BLiud;)V
    .locals 2

    invoke-static {}, Llho;->t()V

    invoke-virtual {p0}, Lkue;->f()Z

    move-result v0

    const-string v1, "Attempted to use lensServiceSession before ready."

    invoke-static {v0, v1}, Llho;->u(ZLjava/lang/String;)V

    iget-object v0, p0, Lkue;->j:Litz;

    invoke-static {v0}, Llho;->v(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    invoke-static {v1, p2}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Lcbe;->A(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final d()V
    .locals 6

    invoke-static {}, Llho;->t()V

    invoke-virtual {p0}, Lkue;->f()Z

    move-result v0

    const-string v1, "Attempted to handover when not ready."

    invoke-static {v0, v1}, Llho;->u(ZLjava/lang/String;)V

    sget-object v0, Liuf;->c:Liuf;

    invoke-virtual {v0}, Lnws;->O()Lnwn;

    move-result-object v0

    check-cast v0, Lnwp;

    iget-object v1, v0, Lnwn;->b:Lnws;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lnwn;->p()V

    :cond_0
    iget-object v1, v0, Lnwp;->b:Lnws;

    check-cast v1, Liuf;

    const/16 v2, 0x63

    iput v2, v1, Liuf;->b:I

    iget v2, v1, Liuf;->a:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v1, Liuf;->a:I

    sget-object v1, Liup;->a:Llhj;

    sget-object v2, Liuq;->c:Liuq;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_1
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Liuq;

    iget v5, v4, Liuq;->a:I

    or-int/2addr v5, v3

    iput v5, v4, Liuq;->a:I

    iput-boolean v3, v4, Liuq;->b:Z

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Liuq;

    invoke-virtual {v0, v1, v2}, Lnwp;->aJ(Llhj;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lnwn;->i()Lnws;

    move-result-object v0

    check-cast v0, Liuf;

    :try_start_0
    iget-object v1, p0, Lkue;->j:Litz;

    invoke-static {v1}, Llho;->v(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lnve;->J()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Litz;->e([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "LensServiceConnImpl"

    const-string v2, "Unable to stop Lens service session."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/16 v0, 0xc

    iput v0, p0, Lkue;->h:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lkue;->i(I)V

    return-void
.end method

.method public final e()Z
    .locals 1

    invoke-static {}, Llho;->t()V

    iget v0, p0, Lkue;->d:I

    invoke-static {v0}, Lkue;->n(I)Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    invoke-static {}, Llho;->t()V

    iget v0, p0, Lkue;->d:I

    invoke-static {v0}, Lkue;->o(I)Z

    move-result v0

    return v0
.end method

.method public final g()I
    .locals 2

    invoke-static {}, Llho;->t()V

    invoke-virtual {p0}, Lkue;->f()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkue;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string v0, "Attempted to use ServerFlags before ready or dead."

    invoke-static {v1, v0}, Llho;->u(ZLjava/lang/String;)V

    iget v0, p0, Lkue;->h:I

    return v0
.end method

.method public final h()V
    .locals 2

    invoke-static {}, Llho;->t()V

    iget-object v0, p0, Lkue;->j:Litz;

    const/16 v1, 0xb

    if-nez v0, :cond_0

    iput v1, p0, Lkue;->h:I

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lkue;->i(I)V

    return-void

    :cond_0
    iput v1, p0, Lkue;->h:I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lkue;->i(I)V

    return-void
.end method

.method public final i(I)V
    .locals 3

    invoke-static {}, Llho;->t()V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lkue;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Transitioning from state %s to %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    iget v0, p0, Lkue;->d:I

    iput p1, p0, Lkue;->d:I

    invoke-static {p1}, Lkue;->o(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lkue;->o(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lkue;->c:Lktz;

    invoke-static {}, Llho;->t()V

    check-cast v1, Lkty;

    invoke-virtual {v1}, Lkty;->b()V

    :cond_0
    invoke-static {p1}, Lkue;->n(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lkue;->n(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lkue;->c:Lktz;

    invoke-static {}, Llho;->t()V

    check-cast p1, Lkty;

    invoke-virtual {p1}, Lkty;->b()V

    :cond_1
    return-void
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lkue;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 2

    iget v0, p0, Lkue;->d:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final l()Z
    .locals 2

    iget v0, p0, Lkue;->d:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final m()V
    .locals 2

    invoke-static {}, Llho;->t()V

    invoke-virtual {p0}, Lkue;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkue;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lkue;->i(I)V

    iget-object v0, p0, Lkue;->l:Lktv;

    new-instance v1, Lkuc;

    invoke-direct {v1, p0}, Lkuc;-><init>(Lkue;)V

    invoke-virtual {v0, v1}, Lktv;->a(Lktt;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Llho;->t()V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string p1, "com.google.android.apps.gsa.publicsearch.IPublicSearchService"

    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    instance-of v0, p1, Lity;

    if-eqz v0, :cond_1

    check-cast p1, Lity;

    goto :goto_0

    :cond_1
    new-instance p1, Lity;

    invoke-direct {p1, p2}, Lity;-><init>(Landroid/os/IBinder;)V

    :goto_0
    iput-object p1, p0, Lkue;->i:Lity;

    iget-object p2, p0, Lkue;->k:Ljava/util/concurrent/Executor;

    new-instance v0, Lkcw;

    const/16 v1, 0xc

    invoke-direct {v0, p0, p1, v1}, Lkcw;-><init>(Lkue;Lity;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-static {}, Llho;->t()V

    const/16 p1, 0xb

    iput p1, p0, Lkue;->h:I

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lkue;->i(I)V

    return-void
.end method
