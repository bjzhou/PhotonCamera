.class final Liri;
.super Lisv;


# instance fields
.field final synthetic a:Lirn;


# direct methods
.method public constructor <init>(Lirn;)V
    .locals 0

    iput-object p1, p0, Liri;->a:Lirn;

    invoke-direct {p0, p1}, Lisv;-><init>(Lita;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Liri;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lisv;->a()V

    iget-object v0, p0, Liri;->a:Lirn;

    iget-object v1, v0, Lirn;->a:Lhiu;

    iget-object v0, v0, Lirn;->e:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-object v0, p0, Liri;->a:Lirn;

    iget-object v0, v0, Lirn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lisv;->i()V

    iget-object v0, p0, Liri;->a:Lirn;

    iget-object v1, v0, Lirn;->a:Lhiu;

    iget-object v0, v0, Lirn;->f:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method
