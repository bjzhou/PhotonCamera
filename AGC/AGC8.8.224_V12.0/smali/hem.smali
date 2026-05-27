.class final Lhem;
.super Lhfk;


# instance fields
.field final synthetic a:Lhes;


# direct methods
.method public constructor <init>(Lhes;)V
    .locals 0

    iput-object p1, p0, Lhem;->a:Lhes;

    invoke-direct {p0, p1}, Lhfk;-><init>(Lhfq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhem;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhem;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final b(Lchd;Z)V
    .locals 1

    iget-object v0, p0, Lhem;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1, p2}, Lhfk;->b(Lchd;Z)V

    iget-object p1, p0, Lhem;->a:Lhes;

    iget-object p2, p1, Lhes;->a:Lhiu;

    iget-object p1, p1, Lhes;->e:Lhiw;

    invoke-virtual {p2, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final cj()V
    .locals 2

    iget-object v0, p0, Lhem;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhfk;->cj()V

    iget-object v0, p0, Lhem;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final d(Lchd;Z)V
    .locals 1

    iget-object v0, p0, Lhem;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1, p2}, Lhfk;->d(Lchd;Z)V

    iget-object p1, p0, Lhem;->a:Lhes;

    iget-object p2, p1, Lhes;->a:Lhiu;

    iget-object p1, p1, Lhes;->f:Lhiw;

    invoke-virtual {p2, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
