.class Lcyg;
.super Lcye;


# instance fields
.field final synthetic b:Lcyh;


# direct methods
.method public constructor <init>(Lcyh;)V
    .locals 0

    iput-object p1, p0, Lcyg;->b:Lcyh;

    invoke-direct {p0}, Lcye;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lcyg;->b:Lcyh;

    iget-object v0, v0, Lcyh;->b:Lfuz;

    invoke-virtual {v0}, Lklw;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcyg;->b:Lcyh;

    iget-object v1, v0, Lcyh;->a:Ldol;

    iget-object v0, v0, Lcyh;->b:Lfuz;

    invoke-virtual {v0}, Lklw;->e()I

    move-result v0

    iget-object v2, p0, Lcyg;->b:Lcyh;

    iget-object v2, v2, Lcyh;->b:Lfuz;

    invoke-virtual {v2}, Lklw;->d()I

    move-result v2

    iget-object v3, p0, Lcyg;->b:Lcyh;

    iget-object v3, v3, Lcyh;->b:Lfuz;

    invoke-virtual {v3}, Lklw;->a()F

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Ldol;->g(IIF)V

    :cond_0
    iget-object v0, p0, Lcyg;->b:Lcyh;

    iget-object v0, v0, Lcyh;->f:Ldqx;

    invoke-virtual {v0}, Ldqx;->f()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcyg;->b:Lcyh;

    iget-object v0, v0, Lcyh;->a:Ldol;

    invoke-interface {v0}, Ldol;->d()V

    return-void
.end method
