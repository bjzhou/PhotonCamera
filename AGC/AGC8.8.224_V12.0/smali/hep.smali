.class final Lhep;
.super Lhfn;


# instance fields
.field final synthetic a:Lhes;


# direct methods
.method public constructor <init>(Lhes;)V
    .locals 0

    iput-object p1, p0, Lhep;->a:Lhes;

    invoke-direct {p0, p1}, Lhfn;-><init>(Lhfq;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhep;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0}, Lhfn;->a()V

    iget-object v0, p0, Lhep;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->c:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final bP()Z
    .locals 2

    iget-object v0, p0, Lhep;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhep;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lhep;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    iget-object v0, p0, Lhep;->a:Lhes;

    iget-object v1, v0, Lhes;->a:Lhiu;

    iget-object v0, v0, Lhes;->b:Lhiw;

    invoke-virtual {v1, v0}, Lhiu;->g(Lhiw;)V

    return-void
.end method

.method public final l(Landroid/content/pm/ResolveInfo;)V
    .locals 1

    iget-object v0, p0, Lhep;->a:Lhes;

    iget-object v0, v0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->e()V

    invoke-super {p0, p1}, Lhfn;->l(Landroid/content/pm/ResolveInfo;)V

    iget-object p1, p0, Lhep;->a:Lhes;

    iget-object v0, p1, Lhes;->a:Lhiu;

    iget-object p1, p1, Lhes;->g:Lhiw;

    invoke-virtual {v0, p1}, Lhiu;->g(Lhiw;)V

    return-void
.end method
