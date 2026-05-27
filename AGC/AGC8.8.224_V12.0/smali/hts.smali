.class Lhts;
.super Lhtm;


# instance fields
.field final synthetic a:Lhtz;


# direct methods
.method public constructor <init>(Lhtz;)V
    .locals 0

    iput-object p1, p0, Lhts;->a:Lhtz;

    invoke-direct {p0}, Lhtm;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lhts;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->y()V

    iget-object v0, p0, Lhts;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    sget-object v1, Lika;->b:Lika;

    iget-object v2, p0, Lhts;->a:Lhtz;

    iget-boolean v2, v2, Lhtz;->m:Z

    invoke-interface {v0, v1, v2}, Libj;->j(Lika;Z)V

    iget-object v0, p0, Lhts;->a:Lhtz;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhtz;->m:Z

    sget-object v1, Lika;->b:Lika;

    invoke-virtual {v0, v1}, Lhtz;->B(Lika;)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhts;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->z()V

    iget-object v0, p0, Lhts;->a:Lhtz;

    iget-object v0, v0, Lhtz;->j:Licj;

    invoke-virtual {v0}, Licj;->a()V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method
