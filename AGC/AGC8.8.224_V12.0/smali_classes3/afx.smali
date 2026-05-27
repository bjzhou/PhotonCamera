.class public final synthetic Lafx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/wear/ambient/AmbientMode$AmbientController;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lbgj;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfdc;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgkr;I[B[B[B[B)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhgm;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Libg;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkp;I)V
    .locals 0

    iput p2, p0, Lafx;->b:I

    iput-object p1, p0, Lafx;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget v0, p0, Lafx;->b:I

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v0, Libg;

    iput p1, v0, Libg;->n:I

    invoke-virtual {v0}, Libg;->i()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast v0, Libg;

    iput p1, v0, Libg;->z:I

    invoke-virtual {v0}, Libg;->i()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->setTranslationX(F)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lhgm;

    invoke-virtual {v0}, Lhgm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Lhgm;->requestLayout()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lhgm;

    invoke-virtual {v0}, Lhgm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Lhgm;->requestLayout()V

    return-void

    :pswitch_5
    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lhgm;

    invoke-virtual {v0}, Lhgm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, v0, Lhgm;->f:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lhgm;->setAlpha(F)V

    :cond_0
    invoke-virtual {v0}, Lhgm;->requestLayout()V

    return-void

    :pswitch_6
    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lfdc;

    iget-object v0, v0, Lfdc;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void

    :pswitch_7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->d(F)V

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->invalidate()V

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldwa;->m(F)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lgkr;

    iget-object p1, p1, Lgkr;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void

    :pswitch_8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldwa;->n(F)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lgkr;

    iget-object p1, p1, Lgkr;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void

    :pswitch_9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldwa;->m(F)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lgkr;

    iget-object p1, p1, Lgkr;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void

    :pswitch_a
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldwa;->l(F)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lgkr;

    iget-object p1, p1, Lgkr;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void

    :pswitch_b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldwc;->d(F)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lgkr;

    iget-object p1, p1, Lgkr;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void

    :pswitch_c
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lgkr;

    iget-object v0, v0, Lgkr;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ldwc;->c(F)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lgkr;

    iget-object p1, p1, Lgkr;->b:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    return-void

    :pswitch_d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c(F)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->invalidate()V

    return-void

    :pswitch_e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    sub-float/2addr v1, p1

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c(F)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->invalidate()V

    return-void

    :pswitch_f
    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast v0, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;

    iget-object v0, v0, Lcom/google/android/apps/camera/camcorder/ui/stabilization/StabilizationUi;->b:Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuButton;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/ui/popupmenu/PopupMenuButton;->setAlpha(F)V

    return-void

    :pswitch_10
    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->invalidate()V

    return-void

    :pswitch_11
    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lbgj;

    iget-object v0, p1, Lbgj;->i:Lbjr;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lbgj;->b:Lblm;

    invoke-virtual {p1}, Lblm;->c()F

    move-result p1

    invoke-virtual {v0, p1}, Lbjq;->l(F)V

    :cond_1
    return-void

    :pswitch_12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lkp;

    iget-object v0, v0, Lkp;->b:Landroid/graphics/drawable/StateListDrawable;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    iget-object v0, p0, Lafx;->a:Ljava/lang/Object;

    check-cast v0, Lkp;

    iget-object v0, v0, Lkp;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Lkp;

    invoke-virtual {p1}, Lkp;->t()V

    return-void

    :pswitch_13
    iget-object p1, p0, Lafx;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lfq;

    iget-object p1, p1, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
