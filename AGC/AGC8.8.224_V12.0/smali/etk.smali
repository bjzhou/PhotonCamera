.class public final Letk;
.super Lifk;


# instance fields
.field public final synthetic a:Letp;


# direct methods
.method public constructor <init>(Letp;)V
    .locals 0

    iput-object p1, p0, Letk;->a:Letp;

    invoke-direct {p0}, Lifk;-><init>()V

    return-void
.end method

.method private final a()Z
    .locals 5

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->N:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgyu;

    iget-object v1, p0, Letk;->a:Letp;

    iget-object v1, v1, Letp;->W:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Letk;->a:Letp;

    iget-object v1, v1, Letp;->W:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhlz;

    invoke-interface {v1}, Lhlz;->a()Ljvs;

    move-result-object v1

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v4, Lgyu;->d:Lgyu;

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->ag:Lhwd;

    invoke-virtual {v0}, Lhwd;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Letk;->a:Letp;

    iget-boolean v4, v0, Letp;->P:Z

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    iget-object v0, v0, Letp;->ai:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    return v3
.end method


# virtual methods
.method public final onShutterButtonClick()V
    .locals 3

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v1, v0, Letp;->J:Lftg;

    if-nez v1, :cond_1

    iget-object v0, v0, Letp;->I:Lnou;

    sget-object v1, Letp;->b:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x76a

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    if-eqz v0, :cond_0

    const-string v0, "starting"

    goto :goto_0

    :cond_0
    const-string v0, "closed"

    :goto_0
    const-string v2, "Not taking picture since Camera is %s"

    invoke-interface {v1, v2, v0}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-interface {v1}, Lftg;->i()Lmbe;

    move-result-object v1

    iget-object v2, v0, Letp;->T:Lebi;

    iget-boolean v2, v2, Lebi;->h:Z

    if-eqz v2, :cond_3

    iget-object v0, v0, Letp;->ae:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lmbe;->i:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->q:Lfmd;

    invoke-interface {v0, v1}, Lfmd;->d(Lmbe;)V

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->y:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->y:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckr;

    invoke-interface {v0}, Lckr;->a()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->L:Lhke;

    invoke-virtual {v0}, Lhke;->f()V

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v1, v0, Letp;->ag:Lhwd;

    invoke-virtual {v1}, Lhwd;->g()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    iget-object v1, v0, Letp;->N:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgyu;

    iget v2, v1, Lgyu;->g:I

    if-lez v2, :cond_5

    invoke-virtual {v0, v2}, Letp;->E(I)V

    return-void

    :cond_5
    sget-object v2, Lgyu;->d:Lgyu;

    if-ne v1, v2, :cond_8

    iget-object v1, v0, Letp;->R:Lclc;

    invoke-virtual {v1}, Lclc;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Letp;->S:Lhtb;

    invoke-virtual {v0}, Lhsy;->b()V

    return-void

    :cond_6
    iget-object v1, v0, Letp;->R:Lclc;

    invoke-virtual {v1}, Lclc;->f()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, v0, Letp;->S:Lhtb;

    invoke-virtual {v0}, Lhsy;->a()V

    return-void

    :cond_7
    sget-object v0, Letp;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Not starting or stopping auto-timer capture since the state is disabled."

    const/16 v2, 0x781

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_8
    invoke-virtual {v0}, Lchk;->r()V

    return-void
.end method

.method public final onShutterButtonLongPressRelease()V
    .locals 2

    invoke-direct {p0}, Letk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->s:Leoc;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Leoc;->b(I)Lnou;

    :cond_0
    return-void
.end method

.method public final onShutterButtonLongPressUnlock()V
    .locals 3

    invoke-direct {p0}, Letk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->r:Lflo;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lflo;->b(I)Lnou;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lerm;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lerm;-><init>(Letk;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onShutterButtonLongPressed()V
    .locals 2

    invoke-direct {p0}, Letk;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->s:Leoc;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Leoc;->a(I)Lnou;

    :cond_0
    return-void
.end method

.method public final onShutterButtonPressedStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Letk;->a:Letp;

    iput-boolean p1, v0, Letp;->P:Z

    if-eqz p1, :cond_0

    iget-object p1, v0, Letp;->u:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Letp;->u:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfgc;

    invoke-interface {p1}, Lfgc;->d()V

    return-void

    :cond_0
    iget-object p1, v0, Letp;->u:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v0, Letp;->u:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfgc;

    invoke-interface {p1}, Lfgc;->e()V

    return-void

    :cond_1
    return-void
.end method

.method public final onShutterTouchStart()V
    .locals 1

    iget-object v0, p0, Letk;->a:Letp;

    iget-object v0, v0, Letp;->L:Lhke;

    invoke-virtual {v0}, Lhke;->e()V

    return-void
.end method
