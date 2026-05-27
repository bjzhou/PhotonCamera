.class public final Lclw;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;)V
    .locals 0

    iput-object p1, p0, Lclw;->a:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lclw;->a:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lclw;->a:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->setVisibility(I)V

    iget-object p1, p0, Lclw;->a:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->a(F)V

    return-void
.end method
