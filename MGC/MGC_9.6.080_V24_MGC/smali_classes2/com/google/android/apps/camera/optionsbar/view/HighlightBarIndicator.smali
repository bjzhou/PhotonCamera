.class public Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public a:Landroid/graphics/drawable/Drawable;

.field private b:Landroid/graphics/drawable/AnimationDrawable;

.field private c:I

.field private d:I

.field private final e:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->e:Landroid/animation/AnimatorSet;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final onFinishInflate()V
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->b:Landroid/graphics/drawable/AnimationDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lnny;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->b:Landroid/graphics/drawable/AnimationDrawable;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    new-instance v2, Lieq;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_6
    const-wide/16 v3, 0xa7

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x7f0605ab

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2, p0, v3}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x7f06005e

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_10
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->a:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->b:Landroid/graphics/drawable/AnimationDrawable;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_15
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->d:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_1a
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    :goto_1c
    const v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    iget v1, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->c:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_21
    const v0, 0x7f0b0216

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    :goto_24
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Landroid/support/v7/widget/AppCompatImageView;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    iget-object v2, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->e:Landroid/animation/AnimatorSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->b:Landroid/graphics/drawable/AnimationDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2b
    iput v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0, p0, v1}, Lnny;-><init>(Landroid/view/View;Z)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setExitFadeDuration(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setEnterFadeDuration(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_30
    aput-object v0, v3, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_32
    new-array v3, v3, [Landroid/animation/Animator;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    filled-new-array {v0, v2}, [I

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v2, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->d:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v1, 0x578

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_24

    nop

    nop

    :goto_37
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
