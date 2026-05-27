.class public final Lhxt;
.super Ljava/lang/Object;

# interfaces
.implements Lhyi;


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/views/ToggleUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final c(Landroid/view/ViewStub;)V
    .locals 2

    iget-object v0, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iput-object p1, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    :cond_0
    iget-object p1, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const v0, 0x7f0801bd

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->e(I)V

    iget-object p1, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f080351

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-static {v1}, Linb;->j(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    iget-object v0, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->f(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lhxt;->a()V

    return-void
.end method

.method public final synthetic onLayoutUpdated(Lhyn;Liko;)V
    .locals 0

    return-void
.end method

.method public final onLayoutUpdated(Liko;)V
    .locals 2

    iget-object v0, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-static {v0, p1}, Ljvd;->H(Landroid/view/View;Liko;)V

    :cond_0
    iget-object v0, p0, Lhxt;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->a(Liko;)V

    :cond_1
    return-void
.end method
