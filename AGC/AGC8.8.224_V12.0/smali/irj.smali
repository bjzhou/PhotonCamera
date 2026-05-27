.class final Lirj;
.super Lisw;


# instance fields
.field final synthetic a:Lirn;


# direct methods
.method public constructor <init>(Lirn;)V
    .locals 0

    iput-object p1, p0, Lirj;->a:Lirn;

    invoke-direct {p0, p1}, Lisw;-><init>(Lita;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    iget-object v0, p0, Lirj;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lisw;->c()V

    iget-object v0, p0, Lirj;->a:Lirn;

    iget-object v1, v0, Lirn;->a:Lhiu;

    iget-object v0, v0, Lirn;->h:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lirj;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lirj;->a:Lirn;

    iget-object v1, v0, Lirn;->a:Lhiu;

    iget-object v0, v0, Lirn;->d:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lirj;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lisw;->k()V

    iget-object v0, p0, Lirj;->a:Lirn;

    iget-object v1, v0, Lirn;->a:Lhiu;

    iget-object v0, v0, Lirn;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lirj;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1}, Lisw;->l(I)V

    iget-object p1, p0, Lirj;->a:Lirn;

    iget-object v0, p1, Lirn;->a:Lhiu;

    iget-object p1, p1, Lirn;->f:Lhiw;

    invoke-virtual {v0, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
