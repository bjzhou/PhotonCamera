.class public final Lnkb;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnkb;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->o:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnkb;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iget p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->j:I

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
    int-to-float p1, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lngx;-><init>(Landroid/view/View;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lngx;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

    nop

    :goto_d
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/16 v0, 0x190

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_10

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    iget-object p0, p0, Lnkb;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Lnkb;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v0, 0x168

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x12

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    :goto_24
    goto/32 :goto_16

    nop

    nop

    :goto_25
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_26
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->g:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    filled-new-array {p1, v0}, [I

    move-result-object p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_29
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_2e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput v0, p1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->p:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lnkb;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

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

    :goto_4
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/16 p1, 0xff

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

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

    :goto_7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnkb;->a:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->setVisibility(I)V

    goto/32 :goto_8

    nop

    nop
.end method
