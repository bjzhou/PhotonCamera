.class final Liqm;
.super Liqy;


# instance fields
.field final synthetic a:Liqq;


# direct methods
.method public constructor <init>(Liqq;)V
    .locals 0

    iput-object p1, p0, Liqm;->a:Liqq;

    invoke-direct {p0, p1}, Liqy;-><init>(Lirc;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Liqm;->a:Liqq;

    iget-object v0, v0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1}, Liqy;->a(Z)V

    iget-object p1, p0, Liqm;->a:Liqq;

    iget-object v0, p1, Liqq;->a:Lhiu;

    iget-object p1, p1, Liqq;->d:Lhiw;

    invoke-virtual {v0, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-object v0, p0, Liqm;->a:Liqq;

    iget-object v0, v0, Liqq;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1}, Liqy;->b(Z)V

    iget-object p1, p0, Liqm;->a:Liqq;

    iget-object v0, p1, Liqq;->a:Lhiu;

    iget-object p1, p1, Liqq;->d:Lhiw;

    invoke-virtual {v0, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
