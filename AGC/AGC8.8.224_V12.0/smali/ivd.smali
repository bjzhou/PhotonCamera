.class public final Livd;
.super Landroid/transition/Fade;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/transition/Fade;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/transition/Fade;->captureEndValues(Landroid/transition/TransitionValues;)V

    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/transition/Fade;->captureStartValues(Landroid/transition/TransitionValues;)V

    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b(Landroid/transition/TransitionValues;)V

    return-void
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p2, p3}, Livd;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    instance-of p2, p1, Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/animation/ObjectAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :cond_1
    new-instance p2, Livj;

    invoke-direct {p2, v0}, Livj;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Livd;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a:[Ljava/lang/String;

    return-object v0
.end method

.method public final isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
