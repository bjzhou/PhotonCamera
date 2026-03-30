.class public final Lnmy;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->setVisibility(I)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_18

    nop

    nop

    :goto_4
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

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

    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a:Landroid/widget/ImageView;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->f:Landroid/widget/ImageView;

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

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_16
    const v1, 0x2

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

    :goto_17
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x0

    nop

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

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/32 :goto_28

    nop

    nop

    :goto_1b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_1c
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1d
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a:Landroid/widget/ImageView;

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

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-boolean v1, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_22
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

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

    :goto_23
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->setAlpha(F)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->f:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lnmy;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
