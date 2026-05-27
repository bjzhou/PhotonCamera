.class final Lern;
.super Ljava/lang/Object;

# interfaces
.implements Lenz;


# instance fields
.field final synthetic a:Lert;


# direct methods
.method public constructor <init>(Lert;)V
    .locals 0

    iput-object p1, p0, Lern;->a:Lert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lern;->a:Lert;

    iget-object v0, v0, Lert;->n:Lihg;

    iget-object v0, v0, Lihg;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getThumbnailButton()Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lern;->a:Lert;

    iget-object p1, p1, Lert;->l:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhsl;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lhsl;->e(Z)V

    :cond_1
    return-void
.end method

.method public final b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lern;->a:Lert;

    iget-object p1, p1, Lert;->H:Libj;

    invoke-interface {p1}, Libj;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lern;->a:Lert;

    iget-object p1, p1, Lert;->H:Libj;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Libj;->u(IZ)V

    :cond_0
    return-void
.end method

.method public final synthetic c()V
    .locals 0

    return-void
.end method

.method public final d(Z)V
    .locals 0

    iget-object p1, p0, Lern;->a:Lert;

    iget-object p1, p1, Lert;->u:Lgeh;

    invoke-interface {p1}, Lgeh;->M()V

    return-void
.end method

.method public final synthetic e(Z)V
    .locals 0

    return-void
.end method

.method public final synthetic f(Z)V
    .locals 0

    return-void
.end method
