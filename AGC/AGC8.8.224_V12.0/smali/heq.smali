.class final Lheq;
.super Lhfo;


# instance fields
.field final synthetic a:Lhes;


# direct methods
.method public constructor <init>(Lhes;)V
    .locals 0

    iput-object p1, p0, Lheq;->a:Lhes;

    invoke-direct {p0, p1}, Lhfo;-><init>(Lhfq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lheq;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhfo;->a()V

    iget-object v0, p0, Lheq;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final bP()Z
    .locals 2

    iget-object v0, p0, Lheq;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lheq;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lheq;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lheq;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lheq;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lheq;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->e:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
