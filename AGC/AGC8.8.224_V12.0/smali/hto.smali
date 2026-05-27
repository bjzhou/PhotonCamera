.class Lhto;
.super Lhtm;


# instance fields
.field final synthetic a:Lhtz;


# direct methods
.method public constructor <init>(Lhtz;)V
    .locals 0

    iput-object p1, p0, Lhto;->a:Lhtz;

    invoke-direct {p0}, Lhtm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhto;->a:Lhtz;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lhtz;->m:Z

    invoke-virtual {p0}, Lhtm;->k()V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lhto;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    invoke-interface {v0}, Libj;->m()V

    iget-object v0, p0, Lhto;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    sget-object v1, Lika;->p:Lika;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Libj;->j(Lika;Z)V

    iget-object v0, p0, Lhto;->a:Lhtz;

    sget-object v1, Lika;->p:Lika;

    invoke-virtual {v0, v1}, Lhtz;->B(Lika;)V

    iget-object v0, p0, Lhto;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    iput-boolean v2, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    iget-object v0, p0, Lhto;->a:Lhtz;

    iget-object v0, v0, Lhtz;->c:Libj;

    invoke-interface {v0}, Libj;->n()V

    iget-object v0, p0, Lhto;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->v()V

    iget-object v0, p0, Lhto;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->u()V

    iget-object v0, p0, Lhto;->a:Lhtz;

    iget-object v0, v0, Lhtz;->b:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lhto;->a:Lhtz;

    iget-object v0, v0, Lhtz;->g:Lcfp;

    invoke-virtual {v0}, Lcfp;->c()V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhto;->a:Lhtz;

    invoke-virtual {v0}, Lhtz;->t()Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->d:Z

    iget-object v0, p0, Lhto;->a:Lhtz;

    iget-object v1, v0, Lhtz;->c:Libj;

    iget-boolean v0, v0, Lhtz;->m:Z

    invoke-interface {v1, v0}, Libj;->d(Z)V

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

.method public p()V
    .locals 0

    return-void
.end method

.method public q()V
    .locals 0

    return-void
.end method
