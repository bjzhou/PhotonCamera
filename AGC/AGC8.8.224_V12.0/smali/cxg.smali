.class Lcxg;
.super Lcxc;


# instance fields
.field final synthetic b:Lcxh;


# direct methods
.method public constructor <init>(Lcxh;)V
    .locals 0

    iput-object p1, p0, Lcxg;->b:Lcxh;

    invoke-direct {p0}, Lcxc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->m:Lcvr;

    sget-object v1, Lcwx;->d:Lcwx;

    invoke-virtual {v0, v1}, Lcvr;->b(Lcwx;)F

    move-result v0

    iget-object v1, p0, Lcxg;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1}, Litm;->h()F

    move-result v1

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->B(Z)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-boolean v1, v0, Lcxh;->k:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->n()V

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->m:Lcvr;

    sget-object v1, Lcwx;->d:Lcwx;

    invoke-virtual {v0, v1}, Lcvr;->b(Lcwx;)F

    move-result v0

    iget-object v1, p0, Lcxg;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1}, Litm;->h()F

    move-result v1

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    sget-object v1, Lika;->c:Lika;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Litm;->c(ZLika;)F

    move-result v1

    invoke-interface {v0, v1}, Litm;->U(F)V

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->m:Lcvr;

    sget-object v1, Lcwx;->d:Lcwx;

    invoke-virtual {v0, v1}, Lcvr;->b(Lcwx;)F

    move-result v0

    iget-object v1, p0, Lcxg;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1}, Litm;->h()F

    move-result v1

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->B(Z)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->n()V

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    sget-object v1, Litj;->a:Litj;

    invoke-interface {v0, v1}, Litm;->J(Litj;)V

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->m:Lcvr;

    sget-object v1, Lcwx;->d:Lcwx;

    invoke-virtual {v0, v1}, Lcvr;->b(Lcwx;)F

    move-result v0

    iget-object v1, p0, Lcxg;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1}, Litm;->h()F

    move-result v1

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    iget-object v1, p0, Lcxg;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1, v0}, Litm;->U(F)V

    :cond_0
    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v1, v0, Lcxh;->f:Litm;

    iget-object v0, v0, Lcxh;->m:Lcvr;

    sget-object v2, Lcwx;->d:Lcwx;

    invoke-virtual {v0, v2}, Lcvr;->b(Lcwx;)F

    move-result v0

    invoke-interface {v1, v0}, Litm;->F(F)V

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldal;

    invoke-interface {v0}, Ldal;->n()V

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->l:Lhsh;

    sget-object v1, Lhsj;->b:Lhsj;

    invoke-virtual {v0, v1}, Lhsh;->a(Lhsj;)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->l:Lhsh;

    sget-object v1, Lhsj;->a:Lhsj;

    invoke-virtual {v0, v1}, Lhsh;->a(Lhsj;)V

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->C()V

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->z()V

    iget-object v0, p0, Lcxg;->b:Lcxh;

    iget-object v0, v0, Lcxh;->i:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldal;

    invoke-interface {v0}, Ldal;->b()V

    :cond_0
    return-void
.end method
