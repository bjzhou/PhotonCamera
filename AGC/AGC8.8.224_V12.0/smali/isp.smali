.class final Lisp;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lita;


# direct methods
.method public constructor <init>(Lita;)V
    .locals 0

    iput-object p1, p0, Lisp;->a:Lita;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p1, p0, Lisp;->a:Lita;

    iget-object p1, p1, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setVisibility(I)V

    return-void
.end method
