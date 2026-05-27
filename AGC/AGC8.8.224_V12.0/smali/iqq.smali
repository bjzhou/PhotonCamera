.class public final Liqq;
.super Lirc;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;

.field public final d:Lhiw;

.field public final e:Lhiw;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;Ljuh;Lhws;Ligo;[B[B[B[B[B)V
    .locals 11

    move-object v10, p0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lirc;-><init>(Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;Ljuh;Lhws;Ligo;[B[B[B[B[B)V

    new-instance v0, Liqm;

    invoke-direct {v0, p0}, Liqm;-><init>(Liqq;)V

    new-instance v1, Lhiw;

    const/4 v2, 0x0

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, v10, Liqq;->b:Lhiw;

    new-instance v0, Liqn;

    invoke-direct {v0, p0}, Liqn;-><init>(Liqq;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v10, Liqq;->c:Lhiw;

    new-instance v0, Liqo;

    invoke-direct {v0, p0}, Liqo;-><init>(Liqq;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v10, Liqq;->d:Lhiw;

    new-instance v0, Liqp;

    invoke-direct {v0, p0}, Liqp;-><init>(Liqq;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v10, Liqq;->e:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, v2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, v10, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liqw;

    invoke-virtual {v0, p1}, Liqw;->a(Z)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liqw;

    invoke-virtual {v0, p1}, Liqw;->b(Z)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liqw;

    invoke-virtual {v0, p1}, Liqw;->c(Z)V

    return-void
.end method

.method public final cp(Z)V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liqw;

    invoke-virtual {v0, p1}, Liqw;->cp(Z)V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liqw;

    invoke-virtual {v0}, Liqw;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Liqq;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Liqq;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Liqq;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Liqq;->e:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liqw;

    invoke-virtual {v0}, Liqw;->i()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Liqw;

    invoke-virtual {v0}, Liqw;->j()V

    return-void
.end method
