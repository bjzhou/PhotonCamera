.class Lhub;
.super Lhua;


# instance fields
.field final synthetic a:Lhud;


# direct methods
.method public constructor <init>(Lhud;)V
    .locals 0

    iput-object p1, p0, Lhub;->a:Lhud;

    invoke-direct {p0}, Lhua;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->b:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v1, v0, Lhud;->a:Libj;

    invoke-interface {v1}, Libj;->r()Z

    move-result v1

    iput-boolean v1, v0, Lhud;->j:Z

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->a:Libj;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->i:Lhrq;

    invoke-virtual {v0, v1}, Lhrq;->b(Z)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->h:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startCountdown()V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->a:Libj;

    invoke-interface {v0, v1}, Libj;->v(Z)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->d:Liff;

    invoke-interface {v0}, Liff;->I()V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->e:Lhwu;

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->f:Lgeh;

    invoke-interface {v0}, Lgeh;->m()V

    invoke-static {}, Lipj;->c()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->b:Ljwb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v1, v0, Lhud;->a:Libj;

    iget-boolean v0, v0, Lhud;->j:Z

    invoke-interface {v1, v0}, Libj;->l(Z)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->stopCountdown()V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v1, v0, Lhud;->a:Libj;

    iget-object v0, v0, Lhud;->g:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-interface {v1, v0}, Libj;->s(Lika;)Z

    move-result v0

    invoke-interface {v1, v0}, Libj;->v(Z)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->d:Liff;

    invoke-interface {v0}, Liff;->Z()V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->e:Lhwu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->f:Lgeh;

    invoke-interface {v0}, Lgeh;->l()V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->h:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    invoke-static {}, Lipj;->d()V

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->k:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->i:Lhrq;

    invoke-virtual {v0}, Lhrq;->e()V

    :cond_0
    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->h:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-nez v1, :cond_2

    invoke-interface {v0}, Litm;->aa()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v1, v0, Lhud;->h:Litm;

    iget-object v0, v0, Lhud;->g:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    invoke-interface {v1, v0}, Litm;->Z(Lika;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lhub;->a:Lhud;

    iget-object v0, v0, Lhud;->h:Litm;

    invoke-interface {v0}, Litm;->p()V

    return-void
.end method
