.class final Lhwn;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field a:Z

.field final synthetic b:D

.field final synthetic c:Lhwp;

.field final synthetic d:I


# direct methods
.method public constructor <init>(Lhwp;DI)V
    .locals 0

    iput-object p1, p0, Lhwn;->c:Lhwp;

    iput-wide p2, p0, Lhwn;->b:D

    iput p4, p0, Lhwn;->d:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lhwn;->a:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lhwn;->a:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 2

    iget-boolean p1, p0, Lhwn;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lhwn;->c:Lhwp;

    iget-object p1, p1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setEnabled(Z)V

    iget-object p1, p0, Lhwn;->c:Lhwp;

    iget-object p2, p1, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    iget-object p1, p1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    iget-wide v0, p0, Lhwn;->b:D

    invoke-virtual {p1, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->n(D)V

    iget p1, p0, Lhwn;->d:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lhwn;->c:Lhwp;

    iget-object p2, p1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v0

    double-to-int p2, v0

    invoke-static {p2}, Lhwp;->u(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lhwp;->s(I)V

    iget-object p1, p0, Lhwn;->c:Lhwp;

    invoke-virtual {p1}, Lhwp;->h()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhwn;->c:Lhwp;

    iget-object p2, p1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    iget-object p2, p1, Lhwp;->c:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    iget-object v0, p1, Lhwp;->f:Lj$/time/Duration;

    invoke-virtual {p1, v0}, Lhwp;->b(Lj$/time/Duration;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->k(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lhwn;->c:Lhwp;

    iget-object p1, p1, Lhwp;->d:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    iget-wide v0, p0, Lhwn;->b:D

    double-to-int p2, v0

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    iget-object p1, p0, Lhwn;->c:Lhwp;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lhwp;->e:Z

    invoke-virtual {p1}, Lhwp;->f()V

    return-void

    :cond_1
    return-void
.end method
