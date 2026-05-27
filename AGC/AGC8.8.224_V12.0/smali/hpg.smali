.class public Lhpg;
.super Ljava/lang/Object;

# interfaces
.implements Lhou;


# instance fields
.field public final g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final h:Lhwu;

.field public final i:Libj;

.field public final j:Lgeh;

.field public final k:Liff;

.field public final l:Lhpq;

.field public final m:Lhoz;

.field public final n:Leoa;

.field public final o:Litm;

.field public final p:Lmqp;

.field public final q:Ldhi;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Lhwu;Libj;Lgeh;Liff;Lhpq;Lhoz;Leoa;Litm;Lmqp;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhpg;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p2, p0, Lhpg;->h:Lhwu;

    iput-object p3, p0, Lhpg;->i:Libj;

    iput-object p4, p0, Lhpg;->j:Lgeh;

    iput-object p5, p0, Lhpg;->k:Liff;

    iput-object p6, p0, Lhpg;->l:Lhpq;

    iput-object p7, p0, Lhpg;->m:Lhoz;

    iput-object p8, p0, Lhpg;->n:Leoa;

    iput-object p9, p0, Lhpg;->o:Litm;

    iput-object p10, p0, Lhpg;->p:Lmqp;

    iput-object p11, p0, Lhpg;->q:Ldhi;

    return-void
.end method


# virtual methods
.method public synthetic a()V
    .locals 0

    return-void
.end method

.method public synthetic b()V
    .locals 0

    return-void
.end method

.method public synthetic c()V
    .locals 0

    return-void
.end method

.method public synthetic ck()V
    .locals 0

    return-void
.end method

.method public synthetic d()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic g()V
    .locals 0

    return-void
.end method

.method public synthetic h()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic i()V
    .locals 0

    return-void
.end method

.method public final j()V
    .locals 5

    iget-object v0, p0, Lhpg;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->stopRecording(ZZ)V

    iget-object v0, p0, Lhpg;->k:Liff;

    invoke-interface {v0}, Liff;->ae()V

    iget-object v0, p0, Lhpg;->l:Lhpq;

    invoke-virtual {v0}, Lhpq;->a()V

    iget-object v0, p0, Lhpg;->l:Lhpq;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lhpq;->c(Z)V

    iget-object v3, v0, Lhpq;->a:Ljwb;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v4}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v3, v0, Lhpq;->v:Lhrq;

    invoke-virtual {v3, v2}, Lhrq;->d(Z)V

    iget-object v3, v0, Lhpq;->U:Lhpt;

    sget-object v4, Lhpt;->a:Lhpt;

    invoke-virtual {v3, v4}, Lhpt;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lhpq;->n:Lczx;

    invoke-interface {v3}, Lczx;->j()V

    iget-object v3, v0, Lhpq;->w:Litm;

    iget-object v4, v0, Lhpq;->E:Landroid/animation/Animator$AnimatorListener;

    check-cast v3, Lisi;

    iget-object v3, v3, Lisi;->O:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    invoke-virtual {v3, v1, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->C(ZLandroid/animation/Animator$AnimatorListener;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lhpq;->n:Lczx;

    invoke-interface {v3}, Lczx;->k()V

    iget-object v3, v0, Lhpq;->i:Ldhi;

    sget-object v4, Ldil;->h:Ldhj;

    invoke-interface {v3, v4}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lhpq;->n:Lczx;

    invoke-interface {v3}, Lczx;->m()V

    :cond_1
    :goto_0
    invoke-virtual {v0}, Lhpq;->j()V

    :cond_2
    iget-object v0, v0, Lhpq;->n:Lczx;

    invoke-interface {v0, v1}, Lczx;->h(Z)V

    iget-object v0, p0, Lhpg;->l:Lhpq;

    iget-object v3, v0, Lhpq;->h:Lhxb;

    invoke-interface {v3, v2}, Lhxb;->a(Z)V

    iget-object v0, v0, Lhpq;->K:Lcty;

    invoke-virtual {v0}, Lcty;->f()V

    iget-object v0, p0, Lhpg;->h:Lhwu;

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    invoke-static {}, Lipj;->d()V

    iget-object v0, p0, Lhpg;->i:Libj;

    invoke-interface {v0, v1}, Libj;->v(Z)V

    iget-object v0, p0, Lhpg;->i:Libj;

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lhpg;->o:Litm;

    move-object v3, v0

    check-cast v3, Lisi;

    iput-boolean v1, v3, Lisi;->V:Z

    invoke-interface {v0, v1}, Litm;->r(Z)V

    iget-object v0, p0, Lhpg;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhpg;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0, v2}, Lhms;->o(Z)V

    iget-object v0, p0, Lhpg;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->s()V

    iget-object v0, p0, Lhpg;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhms;

    invoke-interface {v0}, Lhms;->f()V

    :cond_3
    return-void
.end method
