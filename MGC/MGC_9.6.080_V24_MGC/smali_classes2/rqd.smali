.class public final Lrqd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/google/ar/core/InstallActivity;


# direct methods
.method public constructor <init>(Lcom/google/ar/core/InstallActivity;III)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Lrqd;->c:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lrqd;->d:Lcom/google/ar/core/InstallActivity;

    nop

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

    :goto_4
    iput p2, p0, Lrqd;->a:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput p3, p0, Lrqd;->b:I

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
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    :goto_0
    const v1, 0x2

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

    :goto_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Lrqd;->b:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    add-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v3, v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float v1, v1

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

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

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

    nop

    :goto_c
    iget-object p0, p0, Lrqd;->d:Lcom/google/ar/core/InstallActivity;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    mul-float/2addr v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_f
    iget v3, p0, Lrqd;->a:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    float-to-int v0, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    mul-float/2addr v1, p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/view/View;->refreshDrawableState()V

    goto/32 :goto_7

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-float/2addr v3, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v2, p0, Lrqd;->c:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    sub-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_1b
    mul-float/2addr v2, v0

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

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/ar/core/InstallActivity;->getWindow()Landroid/view/Window;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, v0, v1}, Landroid/view/Window;->setLayout(II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lrqd;->d:Lcom/google/ar/core/InstallActivity;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    float-to-int v1, v2

    nop

    goto/32 :goto_1f

    nop

    nop
.end method
