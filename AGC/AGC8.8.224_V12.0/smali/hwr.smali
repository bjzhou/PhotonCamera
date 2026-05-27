.class public final Lhwr;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;Z)V
    .locals 0

    iput-object p1, p0, Lhwr;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    iput-boolean p2, p0, Lhwr;->b:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhwr;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhwr;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lhwr;->a:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lhwr;->b:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lhwr;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->setVisibility(I)V

    :cond_0
    iget-object p1, p0, Lhwr;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->j()V

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lhwr;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhwr;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->setVisibility(I)V

    :cond_0
    return-void
.end method
