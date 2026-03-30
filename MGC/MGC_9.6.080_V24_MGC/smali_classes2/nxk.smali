.class public final Lnxk;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p1, p0, Lnxk;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnxk;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eq p1, v0, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0x8

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

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lnxk;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->B()V

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p0, Lnxk;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lnxk;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lnxk;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    sget-object p1, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->ALPHA:Landroid/util/Property;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    new-array v0, v0, [F

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_d
    invoke-direct {v0}, Leac;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Lnxh;-><init>(Landroid/view/View;)V

    goto/32 :goto_b

    nop

    nop

    :goto_f
    const v0, 0xa

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lnxh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Leac;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_17
    iget-object p0, p0, Lnxk;->a:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-wide/16 v0, 0x64

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method
