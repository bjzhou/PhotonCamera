.class public final Lflp;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

.field public b:Lihx;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lflp;->c:Landroid/view/View;

    invoke-virtual {p0}, Lflp;->d()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lflp;->b:Lihx;

    iget-object v1, v0, Lihx;->m:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lihx;->m:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    invoke-virtual {v0}, Lihx;->a()V

    iget-object v0, p0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lflp;->c:Landroid/view/View;

    invoke-static {v0}, Ljew;->o(Landroid/view/View;)Ljew;

    move-result-object v0

    const v1, 0x7f0b03d8

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iget-object v2, p0, Lflp;->b:Lihx;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    const v2, 0x7f0b02a6

    invoke-virtual {v0, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    iput-object v0, p0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    new-instance v0, Lihx;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lihx;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljvd;->C(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lflp;->b:Lihx;

    return-void
.end method

.method public final e(Z)V
    .locals 1

    iget-object v0, p0, Lflp;->b:Lihx;

    iput-boolean p1, v0, Lihx;->j:Z

    return-void
.end method

.method public final f(I)V
    .locals 1

    iget-object v0, p0, Lflp;->b:Lihx;

    invoke-virtual {v0, p1}, Lihx;->b(I)V

    const/16 v0, 0x64

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p1, Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;->c:Z

    return-void

    :cond_0
    iget-object p1, p0, Lflp;->a:Lcom/google/android/apps/camera/ui/wirers/PreviewOverlay;

    const/4 v0, 0x0

    goto :goto_0
.end method
