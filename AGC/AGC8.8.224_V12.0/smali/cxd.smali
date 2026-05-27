.class Lcxd;
.super Lcxc;


# instance fields
.field final synthetic b:Lcxh;


# direct methods
.method public constructor <init>(Lcxh;)V
    .locals 0

    iput-object p1, p0, Lcxd;->b:Lcxh;

    invoke-direct {p0}, Lcxc;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->n()V

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    sget-object v1, Litj;->d:Litj;

    invoke-interface {v0, v1}, Litm;->J(Litj;)V

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v1, v0, Lcxh;->f:Litm;

    iget-object v0, v0, Lcxh;->h:Ldhi;

    sget-object v2, Ldgu;->B:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v2, p0, Lcxd;->b:Lcxh;

    iget-object v2, v2, Lcxh;->m:Lcvr;

    invoke-virtual {v2}, Lcvr;->a()F

    move-result v2

    div-float/2addr v0, v2

    invoke-interface {v1, v0}, Litm;->E(F)V

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v1, v0, Lcxh;->f:Litm;

    iget-object v0, v0, Lcxh;->m:Lcvr;

    sget-object v2, Lcwx;->e:Lcwx;

    invoke-virtual {v0, v2}, Lcvr;->b(Lcwx;)F

    move-result v0

    invoke-interface {v1, v0}, Litm;->F(F)V

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->e()F

    move-result v0

    iget-object v1, p0, Lcxd;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1}, Litm;->h()F

    move-result v1

    iget-object v2, p0, Lcxd;->b:Lcxh;

    iget-object v2, v2, Lcxh;->m:Lcvr;

    invoke-virtual {v2}, Lcvr;->a()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcxd;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1, v0}, Litm;->D(F)V

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->p()V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->C()V

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->y()V

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->z()V

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->j:Ldbf;

    invoke-virtual {v0}, Ldbf;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->h()F

    move-result v0

    iget-object v1, p0, Lcxd;->b:Lcxh;

    iget-object v1, v1, Lcxh;->m:Lcvr;

    invoke-virtual {v1}, Lcvr;->a()F

    move-result v1

    mul-float v0, v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcxd;->b:Lcxh;

    iget-object v2, v2, Lcxh;->f:Litm;

    div-float/2addr v0, v1

    invoke-interface {v2}, Litm;->d()F

    move-result v1

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget-object v0, p0, Lcxd;->b:Lcxh;

    iget-object v0, v0, Lcxh;->f:Litm;

    invoke-interface {v0}, Litm;->d()F

    move-result v0

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcxd;->b:Lcxh;

    iget-object v1, v1, Lcxh;->f:Litm;

    invoke-interface {v1, v0}, Litm;->D(F)V

    :cond_1
    return-void
.end method
