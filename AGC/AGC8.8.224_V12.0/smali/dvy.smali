.class public final Ldvy;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;)V
    .locals 0

    iput-object p1, p0, Ldvy;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ldvy;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Ldvy;->a:Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setVisibility(I)V

    return-void
.end method
