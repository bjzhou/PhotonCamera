.class public final Liht;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;Z)V
    .locals 0

    iput-object p1, p0, Liht;->b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    iput-boolean p2, p0, Liht;->a:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Liht;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Liht;->b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    const/4 v0, 0x1

    iput v0, p1, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->c:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Liht;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Liht;->b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    const/4 v0, 0x1

    iput v0, p1, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->c:I

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Liht;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Liht;->b:Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    const/4 v0, 0x3

    iput v0, p1, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->c:I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->setVisibility(I)V

    :cond_0
    return-void
.end method
