.class Leqp;
.super Leqo;


# instance fields
.field final synthetic b:Leqt;


# direct methods
.method public constructor <init>(Leqt;)V
    .locals 0

    iput-object p1, p0, Leqp;->b:Leqt;

    invoke-direct {p0}, Leqo;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->h:Libj;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->i:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->j:Litm;

    invoke-interface {v0}, Litm;->n()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0, v1}, Leqi;->a(Z)V

    :cond_0
    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->k:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqg;

    sget-object v2, Leqg;->c:Leqg;

    invoke-virtual {v0, v2}, Leqg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->g:Lgeh;

    invoke-interface {v0}, Lgeh;->m()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->j:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->p:Lhxt;

    invoke-virtual {v0}, Lhxt;->a()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0}, Leqi;->d()V

    :cond_1
    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepc;

    invoke-virtual {v0}, Licd;->d()V

    :cond_2
    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->e:Liff;

    invoke-interface {v0}, Liff;->Q()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->l()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->f()V

    :cond_3
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->g:Lgeh;

    invoke-interface {v0}, Lgeh;->l()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->h:Libj;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->i:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->j:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->j:Litm;

    invoke-interface {v0}, Litm;->p()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->p:Lhxt;

    invoke-virtual {v0}, Lhxt;->b()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0}, Leqi;->e()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->l:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leqi;

    invoke-interface {v0, v1}, Leqi;->a(Z)V

    :cond_0
    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->m:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lepc;

    iget-object v1, p0, Leqp;->b:Leqt;

    iget-object v1, v1, Leqt;->n:Lell;

    invoke-virtual {v0, v1}, Licd;->e(Lell;)V

    :cond_1
    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->s()V

    iget-object v0, p0, Leqp;->b:Leqt;

    iget-object v0, v0, Leqt;->o:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-interface {v0, v1}, Lhms;->m(Lmqp;)V

    :cond_2
    return-void
.end method
