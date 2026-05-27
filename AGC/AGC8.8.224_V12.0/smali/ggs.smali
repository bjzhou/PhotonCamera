.class final Lggs;
.super Ljava/lang/Object;

# interfaces
.implements Lccx;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lggt;

.field final synthetic c:Lbkc;


# direct methods
.method public constructor <init>(Lggt;Lnph;Lbkc;[B[B[B)V
    .locals 0

    iput-object p1, p0, Lggs;->b:Lggt;

    iput-object p2, p0, Lggs;->a:Lnph;

    iput-object p3, p0, Lggs;->c:Lbkc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 2

    new-instance v0, Ljvk;

    iget-object v1, p0, Lggs;->c:Lbkc;

    iget-object v1, v1, Lbkc;->a:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lnou;
    .locals 1

    invoke-static {}, Lbze;->w()Lbze;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lnou;
    .locals 1

    iget-object v0, p0, Lggs;->a:Lnph;

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lggs;->b:Lggt;

    iget-object v0, v0, Lggt;->e:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lggs;->b:Lggt;

    iget-object v0, v0, Lggt;->b:Lken;

    invoke-static {}, Lbze;->m()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lggs;->b:Lggt;

    iget-object v0, v0, Lggt;->e:Ldqx;

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lggs;->b:Lggt;

    iget-object v0, v0, Lggt;->f:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lggs;->b:Lggt;

    iget-object v0, v0, Lggt;->b:Lken;

    invoke-static {}, Lbze;->l()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lggs;->b:Lggt;

    iget-object v0, v0, Lggt;->f:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lggs;->b:Lggt;

    iget-object v0, v0, Lggt;->b:Lken;

    invoke-static {}, Lbze;->n()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lggs;->b:Lggt;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lggt;->b(ZZ)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lggs;->b:Lggt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lggt;->b(ZZ)V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lggs;->b:Lggt;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lggt;->b(ZZ)V

    return-void
.end method
