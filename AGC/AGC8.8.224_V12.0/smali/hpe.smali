.class Lhpe;
.super Ljava/lang/Object;

# interfaces
.implements Lhou;


# instance fields
.field final synthetic b:Lhpg;


# direct methods
.method public constructor <init>(Lhpg;)V
    .locals 0

    iput-object p1, p0, Lhpe;->b:Lhpg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .locals 0

    return-void
.end method

.method public final synthetic b()V
    .locals 0

    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public ck()V
    .locals 8

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0, v1}, Lhms;->o(Z)V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->l()V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->f()V

    :cond_0
    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->i:Libj;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Libj;->v(Z)V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->i:Libj;

    invoke-interface {v0, v2}, Libj;->l(Z)V

    invoke-static {}, Lipj;->c()V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->h:Lhwu;

    invoke-virtual {v0, v2}, Lhwu;->d(Z)V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v3, v0, Lhpg;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, v0, Lhpg;->q:Ldhi;

    sget-object v4, Ldil;->e:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    invoke-virtual {v3, v1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startRecording(ZZ)V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->k:Liff;

    invoke-interface {v0}, Liff;->W()V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->l:Lhpq;

    invoke-virtual {v0}, Lhpq;->i()V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->j:Lgeh;

    invoke-interface {v0}, Lgeh;->m()V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->l:Lhpq;

    iget-object v3, v0, Lhpq;->N:Lhpu;

    iget-object v4, v0, Lhpq;->s:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lhpu;->a(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    invoke-static {}, Lhxa;->a()Lhwz;

    move-result-object v3

    invoke-virtual {v3, v2}, Lhwz;->e(Z)V

    invoke-virtual {v3, v1}, Lhwz;->d(Z)V

    invoke-virtual {v3}, Lhwz;->a()Lhxa;

    move-result-object v1

    iget-object v2, v0, Lhpq;->h:Lhxb;

    invoke-interface {v2, v1}, Lhxb;->d(Lhxa;)V

    iget-object v1, v0, Lhpq;->h:Lhxb;

    invoke-interface {v1}, Lhxb;->f()V

    iget-object v1, v0, Lhpq;->u:Loiw;

    check-cast v1, Lctz;

    invoke-virtual {v1}, Lctz;->a()Lcty;

    move-result-object v1

    iput-object v1, v0, Lhpq;->K:Lcty;

    iget-object v0, v0, Lhpq;->K:Lcty;

    invoke-virtual {v0}, Lcty;->e()V

    return-void
.end method

.method public final synthetic d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->k:Liff;

    invoke-interface {v0}, Liff;->ah()V

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->m:Lhoz;

    iget-object v0, v0, Lhoz;->i:Lhnb;

    invoke-interface {v0}, Lhnb;->e()Lhna;

    move-result-object v0

    sget-object v1, Lhna;->g:Lhna;

    invoke-virtual {v0, v1}, Lhna;->a(Lhna;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhpe;->b:Lhpg;

    iget-object v0, v0, Lhpg;->l:Lhpq;

    invoke-virtual {v0}, Lhpq;->b()V

    :cond_0
    return-void
.end method

.method public final synthetic g()V
    .locals 0

    return-void
.end method

.method public final synthetic h()V
    .locals 0

    return-void
.end method

.method public final synthetic i()V
    .locals 0

    return-void
.end method
