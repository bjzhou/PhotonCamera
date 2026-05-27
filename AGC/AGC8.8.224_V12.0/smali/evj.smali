.class final Levj;
.super Lftk;


# instance fields
.field final synthetic a:Levk;

.field private final b:Z


# direct methods
.method public constructor <init>(Levk;Z)V
    .locals 0

    iput-object p1, p0, Levj;->a:Levk;

    invoke-direct {p0}, Lftk;-><init>()V

    iput-boolean p2, p0, Levj;->b:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->u:Lflp;

    invoke-virtual {v0}, Lflp;->a()V

    iget-object v0, p0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->e:Lcgx;

    invoke-interface {v0}, Lcgx;->g()Lcha;

    move-result-object v0

    invoke-interface {v0}, Lcha;->m()V

    iget-object v0, p0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->D:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->D:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckr;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lckr;->b(Z)V

    :cond_0
    return-void
.end method

.method public final b(J)V
    .locals 0

    iget-object p1, p0, Levj;->a:Levk;

    iget-object p1, p1, Levk;->D:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Levj;->a:Levk;

    iget-object p1, p1, Levk;->D:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lckr;

    iget-boolean p2, p0, Levj;->b:Z

    invoke-interface {p1, p2}, Lckr;->c(Z)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->f:Ljuh;

    new-instance v1, Levi;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Levi;-><init>(Levj;I)V

    invoke-virtual {v0, v1}, Ljuh;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final d(F)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, v0, v1}, Lftk;->f(FJ)V

    return-void
.end method

.method public final f(FJ)V
    .locals 2

    iget-object v0, p0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->A:Lebl;

    iget-object v0, v0, Lebl;->b:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget-object v0, p0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->D:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Levj;->a:Levk;

    iget-object v0, v0, Levk;->D:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckr;

    invoke-interface {v0, p1, p2, p3}, Lckr;->i(FJ)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Levj;->a:Levk;

    iget-object p2, p2, Levk;->u:Lflp;

    const/high16 p3, 0x42c80000    # 100.0f

    mul-float p3, p3, p1

    float-to-int p3, p3

    invoke-virtual {p2, p3}, Lflp;->f(I)V

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_1

    iget-object p2, p0, Levj;->a:Levk;

    iget-object p2, p2, Levk;->e:Lcgx;

    invoke-interface {p2}, Lcgx;->g()Lcha;

    move-result-object p2

    invoke-interface {p2}, Lcha;->l()V

    goto :goto_0

    :cond_1
    cmpl-float p2, p1, v1

    if-nez p2, :cond_2

    iget-object p2, p0, Levj;->a:Levk;

    iget-object p2, p2, Levk;->e:Lcgx;

    invoke-interface {p2}, Lcgx;->g()Lcha;

    move-result-object p2

    invoke-interface {p2}, Lcha;->m()V

    :cond_2
    :goto_0
    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    iget-object p1, p0, Levj;->a:Levk;

    iget-object p1, p1, Levk;->j:Lhgy;

    const p2, 0x7f130008

    invoke-interface {p1, p2}, Lhgy;->b(I)V

    :cond_3
    return-void
.end method
