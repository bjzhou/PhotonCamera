.class public final Lnyt;
.super Landroid/transition/Fade;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Landroid/transition/Fade;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final captureEndValues(Landroid/transition/TransitionValues;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b(Landroid/transition/TransitionValues;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/transition/Fade;->captureEndValues(Landroid/transition/TransitionValues;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final captureStartValues(Landroid/transition/TransitionValues;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/transition/Fade;->captureStartValues(Landroid/transition/TransitionValues;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->b(Landroid/transition/TransitionValues;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method

.method public final createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p2, v0}, Lnyz;-><init>(Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    move-object p2, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    invoke-virtual {p0, p2}, Lnyt;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/32 :goto_c

    nop

    nop

    :goto_8
    instance-of p2, p1, Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, v0, p2, p3}, Lnyt;->onAppear(Landroid/view/ViewGroup;Landroid/view/View;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p1

    nop

    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    :goto_d
    new-array p3, p3, [F

    nop

    fill-array-data p3, :array_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p3, 0x2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance p2, Lnyz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p2, Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final getTransitionProperties()[Ljava/lang/String;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->a:[Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->e(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop
.end method
