.class final Lhnq;
.super Lhpc;


# instance fields
.field final synthetic a:Lhnu;


# direct methods
.method public constructor <init>(Lhnu;)V
    .locals 0

    iput-object p1, p0, Lhnq;->a:Lhnu;

    invoke-direct {p0, p1}, Lhpc;-><init>(Lhpg;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    iget-object v0, p0, Lhnq;->a:Lhnu;

    iget-object v0, v0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhpc;->b()V

    iget-object v0, p0, Lhnq;->a:Lhnu;

    iget-object v1, v0, Lhnu;->a:Lhiu;

    iget-object v0, v0, Lhnu;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lhnq;->a:Lhnu;

    iget-object v0, v0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhpc;->c()V

    iget-object v0, p0, Lhnq;->a:Lhnu;

    iget-object v1, v0, Lhnu;->a:Lhiu;

    iget-object v0, v0, Lhnu;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
