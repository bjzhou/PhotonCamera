.class public final Lnmw;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;)V
    .locals 0

    goto/32 :goto_2

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

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnmw;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lnmw;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

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

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xd

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

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    iget-object v0, p0, Lnmw;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnmw;->a:Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->c:Landroid/widget/ImageView;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    const v0, 0x6

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

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->f:Landroid/widget/ImageView;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_4

    nop

    nop
.end method
