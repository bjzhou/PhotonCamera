.class final Lrhi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:F

.field final synthetic h:Landroid/graphics/Matrix;

.field final synthetic i:Lrho;


# direct methods
.method public constructor <init>(Lrho;FFFFFFFLandroid/graphics/Matrix;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p6, p0, Lrhi;->e:F

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

    :goto_1
    iput p3, p0, Lrhi;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrhi;->i:Lrho;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput p2, p0, Lrhi;->a:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput p7, p0, Lrhi;->f:F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p8, p0, Lrhi;->g:F

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

    :goto_8
    iput p5, p0, Lrhi;->d:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iput-object p9, p0, Lrhi;->h:Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    iput p4, p0, Lrhi;->c:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setAlpha(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iget v1, p0, Lrhi;->e:F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3
    sub-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lrhi;->f:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-float/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_7
    invoke-virtual {p1, p0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p0, Lrhi;->d:F

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a
    iget-object v2, p0, Lrhi;->i:Lrho;

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

    :goto_b
    sub-float/2addr v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lrhi;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lrhi;->i:Lrho;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v2, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v1, p0, Lrhi;->c:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Lrhi;->d:F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, v2, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_13
    iget v0, p0, Lrhi;->a:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Lrhi;->b:F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v0, v1, v2, v3, p1}, Lrer;->a(FFFFF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleY(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    add-float/2addr v1, p1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_18
    iget-object v1, v1, Lrho;->B:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lrhi;->i:Lrho;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1d
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p1, p0, Lrhi;->h:Landroid/graphics/Matrix;

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

    :goto_21
    invoke-virtual {v2, v1}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setScaleX(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v1, v0, Lrho;->y:F

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

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1, p1}, Lrho;->e(FLandroid/graphics/Matrix;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_26
    sub-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lrhi;->i:Lrho;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    :goto_29
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lrhi;->i:Lrho;

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

    :goto_2b
    const v3, 0x3e4ccccd    # 0.2f

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

    :goto_2c
    mul-float/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2d
    add-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lrhi;->h:Landroid/graphics/Matrix;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_31
    const v1, 0x8

    nop

    nop

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
.end method
