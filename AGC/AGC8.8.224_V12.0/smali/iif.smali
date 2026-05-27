.class public final Liif;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/views/ToggleUi;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/views/ToggleUi;)V
    .locals 0

    iput-object p1, p0, Liif;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 3

    sget-object p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->a:Lj$/time/Duration;

    iget-object p1, p0, Liif;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq v1, p2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->setScaleX(F)V

    iget-object p1, p0, Liif;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    invoke-virtual {p1, v2}, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->setScaleY(F)V

    iget-object p1, p0, Liif;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->g:F

    :goto_1
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setAlpha(F)V

    iget-object p1, p0, Liif;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const/4 v0, 0x0

    if-eq v1, p2, :cond_2

    const/4 p2, 0x0

    goto :goto_2

    :cond_2
    const/16 p2, 0x8

    :goto_2
    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setVisibility(I)V

    iget-object p1, p0, Liif;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    iput-boolean v0, p1, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->a:Z

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    sget-object p1, Lcom/google/android/apps/camera/ui/views/ToggleUi;->a:Lj$/time/Duration;

    if-nez p2, :cond_0

    iget-object p1, p0, Liif;->a:Lcom/google/android/apps/camera/ui/views/ToggleUi;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setVisibility(I)V

    :cond_0
    return-void
.end method
