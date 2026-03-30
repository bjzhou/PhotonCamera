.class public final Lnxi;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

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

    :goto_1
    iput-object p1, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->B()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

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
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    iget-object p0, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lnxi;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object p1

    nop

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

    nop

    :goto_12
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    goto/32 :goto_5

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method
