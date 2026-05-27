.class Lhtn;
.super Lhtm;


# instance fields
.field final synthetic a:Lhtz;


# direct methods
.method public constructor <init>(Lhtz;)V
    .locals 0

    iput-object p1, p0, Lhtn;->a:Lhtz;

    invoke-direct {p0}, Lhtm;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lhtn;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    iget-object v0, p0, Lhtn;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->x()V

    iget-object v0, p0, Lhtn;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    invoke-interface {v0}, Libj;->m()V

    iget-object v0, p0, Lhtn;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    sget-object v2, Lika;->m:Lika;

    invoke-interface {v0, v2, v1}, Libj;->j(Lika;Z)V

    iget-object v0, p0, Lhtn;->a:Lhtz;

    sget-object v2, Lika;->m:Lika;

    invoke-virtual {v0, v2}, Lhtz;->B(Lika;)V

    iget-object v0, p0, Lhtn;->a:Lhtz;

    iget-object v0, v0, Lhtz;->b:Litm;

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lhtn;->a:Lhtz;

    iget-object v0, v0, Lhtz;->b:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Litm;->p()V

    :cond_0
    iget-object v0, p0, Lhtn;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->w()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhtn;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->z()V

    iget-object v0, p0, Lhtn;->a:Lhtz;

    iget-object v0, v0, Lhtz;->g:Lcfp;

    invoke-virtual {v0}, Lcfp;->c()V

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

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method
