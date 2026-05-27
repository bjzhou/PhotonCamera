.class Lejn;
.super Lejl;


# instance fields
.field final synthetic b:Lejo;


# direct methods
.method public constructor <init>(Lejo;)V
    .locals 0

    iput-object p1, p0, Lejn;->b:Lejo;

    invoke-direct {p0}, Lejl;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lejn;->b:Lejo;

    iget-object v0, v0, Lejo;->f:Lgeh;

    invoke-interface {v0}, Lgeh;->m()V

    iget-object v0, p0, Lejn;->b:Lejo;

    iget-object v0, v0, Lejo;->h:Ljew;

    invoke-virtual {v0}, Ljew;->C()V

    iget-object v0, p0, Lejn;->b:Lejo;

    iget-object v1, v0, Lejo;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iget-object v0, v0, Lejo;->g:Leik;

    invoke-virtual {v0}, Leik;->k()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startImaxCapture(Z)V

    iget-object v0, p0, Lejn;->b:Lejo;

    iget-object v0, v0, Lejo;->d:Liff;

    invoke-interface {v0}, Liff;->K()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lejn;->b:Lejo;

    iget-object v0, v0, Lejo;->f:Lgeh;

    invoke-interface {v0}, Lgeh;->l()V

    iget-object v0, p0, Lejn;->b:Lejo;

    iget-object v0, v0, Lejo;->h:Ljew;

    invoke-virtual {v0}, Ljew;->B()V

    iget-object v0, p0, Lejn;->b:Lejo;

    iget-object v0, v0, Lejo;->e:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->stopImaxCapture()V

    iget-object v0, p0, Lejn;->b:Lejo;

    iget-object v0, v0, Lejo;->d:Liff;

    invoke-interface {v0}, Liff;->k()V

    return-void
.end method
