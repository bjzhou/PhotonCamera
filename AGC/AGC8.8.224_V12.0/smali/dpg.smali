.class public final Ldpg;
.super Ldox;

# interfaces
.implements Lhiv;


# instance fields
.field public final f:Lhiu;

.field public final g:Lhiw;

.field public final h:Lhiw;

.field public final i:Lhiw;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/widget/CheckBox;Landroid/animation/ObjectAnimator;Ldpc;Ldja;Ldpc;[B[B[B)V
    .locals 10

    move-object v9, p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Ldox;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompView;Landroid/widget/CheckBox;Landroid/animation/ObjectAnimator;Ldpc;Ldja;[B[B[B)V

    new-instance v0, Ldpd;

    invoke-direct {v0, p0}, Ldpd;-><init>(Ldpg;)V

    new-instance v1, Lhiw;

    const/4 v2, 0x0

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, v9, Ldpg;->g:Lhiw;

    new-instance v0, Ldpe;

    invoke-direct {v0, p0}, Ldpe;-><init>(Ldpg;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v9, Ldpg;->h:Lhiw;

    new-instance v0, Ldpf;

    invoke-direct {v0, p0}, Ldpf;-><init>(Ldpg;)V

    new-instance v3, Lhiw;

    const/4 v4, 0x1

    new-array v4, v4, [Lhis;

    aput-object p6, v4, v2

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v9, Ldpg;->i:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, v2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, v9, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Ldos;

    invoke-virtual {v0}, Ldos;->a()V

    return-void
.end method

.method public final b(IIF)V
    .locals 1

    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Ldos;

    invoke-virtual {v0, p1, p2, p3}, Ldos;->b(IIF)V

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Ldos;

    invoke-virtual {v0, p1}, Ldos;->c(Z)V

    return-void
.end method

.method public final d(ZZ)V
    .locals 1

    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Ldos;

    invoke-virtual {v0, p1, p2}, Ldos;->d(ZZ)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Ldpg;->g:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Ldpg;->h:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Ldpg;->i:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ldpg;->f:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
