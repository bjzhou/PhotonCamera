.class public abstract Lchk;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# static fields
.field private static final b:Lnak;


# instance fields
.field public a:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/app/interfaces/ModuleController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lchk;->b:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bH()Lmqp;
    .locals 1

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public bT()Lmqp;
    .locals 1

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ca(I)V
    .locals 0

    return-void
.end method

.method public cb(Z)V
    .locals 0

    return-void
.end method

.method public cc()V
    .locals 0

    return-void
.end method

.method protected abstract cd()V
.end method

.method public final ce()V
    .locals 3

    invoke-static {}, Ljuh;->a()V

    iget-boolean v0, p0, Lchk;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lchk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Module is already resumed; skipping start."

    const/16 v2, 0xa1

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lchk;->a:Z

    if-eqz v0, :cond_1

    sget-object v0, Lchk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Duplicate call to startModule; skipping start."

    const/16 v2, 0xa0

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lchk;->a:Z

    invoke-virtual {p0}, Lchk;->n()V

    return-void
.end method

.method public d(Lbne;)V
    .locals 0

    return-void
.end method

.method public e(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 3

    invoke-static {}, Ljuh;->a()V

    iget-boolean v0, p0, Lchk;->a:Z

    if-nez v0, :cond_0

    sget-object v0, Lchk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Module is already stopped; skipping pause."

    const/16 v2, 0x9e

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lchk;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lchk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Duplicate call to pauseModule; skipping pause."

    const/16 v2, 0x9d

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lchk;->c:Z

    invoke-virtual {p0}, Lchk;->cd()V

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method protected abstract l()V
.end method

.method public final m()V
    .locals 3

    invoke-static {}, Ljuh;->a()V

    iget-boolean v0, p0, Lchk;->a:Z

    const-string v1, "Cannot resume a stopped module"

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-boolean v0, p0, Lchk;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lchk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Duplicate call to resumeModule; skipping resume."

    const/16 v2, 0x9f

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lchk;->c:Z

    invoke-virtual {p0}, Lchk;->l()V

    return-void
.end method

.method protected abstract n()V
.end method

.method protected abstract p()V
.end method

.method public final q()V
    .locals 3

    invoke-static {}, Ljuh;->a()V

    iget-boolean v0, p0, Lchk;->c:Z

    if-eqz v0, :cond_0

    sget-object v0, Lchk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Attempting to stop a resumed module!"

    const/16 v2, 0xa3

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {p0}, Lchk;->j()V

    :cond_0
    iget-boolean v0, p0, Lchk;->a:Z

    if-nez v0, :cond_1

    sget-object v0, Lchk;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Duplicate call to stopModule; skipping stop."

    const/16 v2, 0xa2

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lchk;->a:Z

    invoke-virtual {p0}, Lchk;->p()V

    return-void
.end method

.method public r()V
    .locals 0

    return-void
.end method

.method public s(Ljava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
