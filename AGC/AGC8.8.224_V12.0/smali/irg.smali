.class final Lirg;
.super List;


# instance fields
.field final synthetic a:Lirn;


# direct methods
.method public constructor <init>(Lirn;)V
    .locals 0

    iput-object p1, p0, Lirg;->a:Lirn;

    invoke-direct {p0, p1}, List;-><init>(Lita;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lirg;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-virtual {p0}, Lisk;->r()V

    iget-object v0, p0, Lirg;->a:Lirn;

    iget-object v1, v0, Lirn;->a:Lhiu;

    iget-object v0, v0, Lirn;->e:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lirg;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lirg;->a:Lirn;

    iget-object v1, v0, Lirn;->a:Lhiu;

    iget-object v0, v0, Lirn;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lirg;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lirg;->a:Lirn;

    iget-object v1, v0, Lirn;->a:Lhiu;

    iget-object v0, v0, Lirn;->h:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final d(FI)V
    .locals 1

    iget-object v0, p0, Lirg;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1, p2}, List;->d(FI)V

    iget-object p1, p0, Lirg;->a:Lirn;

    iget-object p2, p1, Lirn;->a:Lhiu;

    iget-object p1, p1, Lirn;->h:Lhiw;

    invoke-virtual {p2, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
