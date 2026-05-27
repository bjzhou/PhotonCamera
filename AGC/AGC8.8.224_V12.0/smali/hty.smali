.class Lhty;
.super Lhtm;


# instance fields
.field final synthetic a:Lhtz;


# direct methods
.method public constructor <init>(Lhtz;)V
    .locals 0

    iput-object p1, p0, Lhty;->a:Lhtz;

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

    iget-object v0, p0, Lhty;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->y()V

    iget-object v0, p0, Lhty;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    sget-object v1, Lika;->c:Lika;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Libj;->j(Lika;Z)V

    iget-object v0, p0, Lhty;->a:Lhtz;

    sget-object v1, Lika;->c:Lika;

    invoke-virtual {v0, v1}, Lhtz;->B(Lika;)V

    iget-object v0, p0, Lhty;->a:Lhtz;

    iget-object v0, v0, Lhtz;->d:Lebj;

    invoke-virtual {v0}, Lebj;->b()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhty;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->z()V

    iget-object v0, p0, Lhty;->a:Lhtz;

    iget-object v0, v0, Lhtz;->g:Lcfp;

    invoke-virtual {v0}, Lcfp;->c()V

    iget-object v0, p0, Lhty;->a:Lhtz;

    iget-object v0, v0, Lhtz;->d:Lebj;

    invoke-virtual {v0}, Lebj;->a()V

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()V
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

.method public q()V
    .locals 0

    return-void
.end method
