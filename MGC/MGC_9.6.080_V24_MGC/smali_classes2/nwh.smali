.class final Lnwh;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lnwi;


# direct methods
.method public constructor <init>(Lnwi;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnwh;->a:Lnwi;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lnwh;->a:Lnwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p1, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_8
    iget-object p0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_9
    iget-object p1, p1, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p1, p0, Lnwh;->a:Lnwi;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    iget-object p1, p1, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_12
    iget-object p1, p1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lnwh;->a:Lnwi;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    iget-object p1, p1, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    :goto_18
    const v0, 0x7

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p1, p1, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p1, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v1, p1, Lnwp;->O:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lnwh;->a:Lnwi;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_21
    iget-object p1, p0, Lnwh;->a:Lnwi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/32 :goto_13

    nop

    nop

    :goto_24
    goto/32 :goto_17

    nop

    :goto_25
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_26
    iget-object p1, p0, Lnwh;->a:Lnwi;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_2c

    nop

    nop

    :goto_28
    iget-object p1, p1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_29
    if-nez p1, :cond_0

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
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lnwh;->a:Lnwi;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_24

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_33
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnwh;->a:Lnwi;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

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

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnwi;->b:Lnwp;

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

    nop

    nop
.end method
