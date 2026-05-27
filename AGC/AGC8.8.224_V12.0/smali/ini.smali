.class public final Lini;
.super Linf;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Loiw;

.field public final b:Lhiu;

.field public final c:Lhiw;

.field public final d:Lhiw;


# direct methods
.method public constructor <init>(Loiw;)V
    .locals 4

    invoke-direct {p0}, Linf;-><init>()V

    iput-object p1, p0, Lini;->a:Loiw;

    new-instance p1, Linj;

    invoke-direct {p1, p0}, Linj;-><init>(Lini;)V

    new-instance v0, Lhiw;

    const/4 v1, 0x0

    new-array v2, v1, [Lhis;

    invoke-direct {v0, p1, v2}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v0, p0, Lini;->c:Lhiw;

    new-instance p1, Link;

    invoke-direct {p1, p0}, Link;-><init>(Lini;)V

    new-instance v2, Lhiw;

    new-array v3, v1, [Lhis;

    invoke-direct {v2, p1, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v2, p0, Lini;->d:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, v0, v1}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lini;->b:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linf;

    invoke-virtual {v0}, Linf;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linf;

    invoke-virtual {v0}, Linf;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Linf;

    invoke-virtual {v0}, Linf;->c()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lini;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lini;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lini;->b:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
