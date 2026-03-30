.class public final synthetic Lnvz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/widget/ImageView;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;II)V
    .locals 0

    goto/32 :goto_2

    nop

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
    iput p3, p0, Lnvz;->c:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lnvz;->b:I

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

    :goto_4
    iput-object p1, p0, Lnvz;->a:Landroid/widget/ImageView;

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
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_2
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lnvz;->a:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x20

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget p1, Lnwp;->i:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_b
    add-int/2addr p0, v4

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

    nop

    :goto_c
    add-int/2addr p0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    nop

    nop

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

    :goto_e
    iget v3, p0, Lnvz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_f
    add-int/2addr p0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_10
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_11
    iget p0, p0, Lnvz;->c:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_13
    mul-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_14
    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    if-lt p0, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    :goto_17
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    sub-int/2addr p1, v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p1, p1, Landroid/graphics/Rect;->right:I

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

    nop

    nop

    :goto_1c
    sget p0, Lnwp;->i:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    sput p0, Lnwp;->j:I

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_20
    sub-int/2addr p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    sub-int/2addr p0, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_23
    div-float/2addr p1, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_24
    if-lt v2, p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_26
    sub-int/2addr p0, p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v2, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

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

    :goto_29
    sub-int/2addr v3, p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    goto/32 :goto_35

    nop

    nop

    :goto_2c
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2d
    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sput p0, Lnwp;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p1, Ljava/lang/Integer;

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

    :goto_30
    div-int/lit8 v4, v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_31
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_3a

    nop

    nop

    :goto_35
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_36
    goto :goto_32

    nop

    :goto_37
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_38
    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

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

    :goto_39
    return-void

    nop

    nop

    :goto_3a
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sget v2, Lnwp;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3c
    sget p0, Lnwp;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop
.end method
