.class Lhvs;
.super Lhvq;


# instance fields
.field final synthetic b:Lhvt;


# direct methods
.method public constructor <init>(Lhvt;)V
    .locals 0

    iput-object p1, p0, Lhvs;->b:Lhvt;

    invoke-direct {p0}, Lhvq;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->d:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->switchToPhotoIntentReview()V

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->e:Liff;

    invoke-interface {v0}, Liff;->ag()V

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->h:Lgeh;

    invoke-interface {v0}, Lgeh;->m()V

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->f:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->I(Z)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->d:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->returnToPhotoIntent()V

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->e:Liff;

    invoke-interface {v0}, Liff;->x()V

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->h:Lgeh;

    invoke-interface {v0}, Lgeh;->l()V

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->f:Litm;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Litm;->I(Z)V

    iget-object v0, p0, Lhvs;->b:Lhvt;

    iget-object v0, v0, Lhvt;->f:Litm;

    move-object v1, v0

    check-cast v1, Lisi;

    iget-boolean v1, v1, Lisi;->S:Z

    if-eqz v1, :cond_0

    invoke-interface {v0}, Litm;->p()V

    :cond_0
    return-void
.end method
