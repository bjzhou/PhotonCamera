.class public final synthetic Lnvx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field private final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lngn;Ljava/util/function/BiFunction;III)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lnvx;->a:I

    nop

    goto/32 :goto_4

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
    iput-object p1, p0, Lnvx;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p2, p0, Lnvx;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput p4, p0, Lnvx;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput p5, p0, Lnvx;->e:I

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method

.method public synthetic constructor <init>(Lnwp;Landroid/widget/ImageView;III)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput p4, p0, Lnvx;->b:I

    nop

    goto/32 :goto_0

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

    :goto_3
    iput p3, p0, Lnvx;->a:I

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

    :goto_4
    iput-object p1, p0, Lnvx;->c:Ljava/lang/Object;

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

    :goto_5
    iput-object p2, p0, Lnvx;->d:Ljava/lang/Object;

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

    :goto_6
    iput p5, p0, Lnvx;->e:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    goto/32 :goto_41

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

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

    :goto_4
    sub-int/2addr v4, p1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v2, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lnvx;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnvx;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget p1, Lnwp;->i:I

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

    :goto_10
    sub-int/2addr v2, p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lnhb;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    check-cast v0, Lngn;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_18
    sput p1, Lnwp;->i:I

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1a
    iget v3, p0, Lnvx;->b:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1b
    add-int/2addr p1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    iget v2, p0, Lnvx;->a:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1f
    int-to-float p1, p1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sput p0, Lnwp;->j:I

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

    :goto_23
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_24
    if-gt v2, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_26
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_27
    sget v2, Lnwp;->i:I

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_28
    iget p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sub-int/2addr v2, v4

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_32

    nop

    nop

    :goto_2b
    iget v0, p0, Lnvx;->e:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v0, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2e
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_30
    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_32
    iget p0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_34
    sub-int/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_36
    iget-object v1, v0, Lngn;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v4, p0, Lnvx;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_39
    iget v3, p0, Lnvx;->b:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, v1, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->j:Lnhb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lnvx;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3c
    sget p1, Lnwp;->i:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3d
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lnvx;->d:Ljava/lang/Object;

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

    nop

    :goto_3f
    sub-int/2addr v2, p1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_41
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_45
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_46
    div-int/lit8 v5, v4, 0x5

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p0, v1, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    div-float/2addr p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_49
    sub-int/2addr p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4a
    goto :goto_43

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4c
    const v1, 0x16

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4d
    sget v2, Lnwp;->j:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4e
    mul-int/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v0, Lngn;->r:Landroid/animation/ArgbEvaluator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_51
    if-lt v2, v4, :cond_3

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p0, Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_53
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_54
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_55
    iget p1, p1, Landroid/graphics/Rect;->right:I

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
.end method
