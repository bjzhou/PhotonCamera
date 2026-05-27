.class public final Lihz;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;)V
    .locals 0

    iput-object p1, p0, Lihz;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lihz;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    const/4 v0, 0x1

    iput v0, p1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->q:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lihz;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    const/4 v0, 0x1

    iput v0, p1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->q:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lihz;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    const/4 v0, 0x3

    iput v0, p1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->q:I

    return-void
.end method
