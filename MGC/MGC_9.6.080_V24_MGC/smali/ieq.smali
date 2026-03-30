.class public final Lieq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/view/View;I[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lieq;->b:I

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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iput-object p1, p0, Lieq;->a:Ljava/lang/Object;

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

    :goto_3
    return-void

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lieq;->b:I

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lieq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lnds;->k(Landroid/graphics/Rect;)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lmgs;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->p:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->c()V

    :goto_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_8
    check-cast p1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_a
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->b:I

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

    nop

    :goto_b
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_f
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_13
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :pswitch_1
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_17
    if-gtz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    return-void

    nop

    :pswitch_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lngn;->b:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1d
    check-cast p0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    check-cast p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

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

    :goto_1f
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_15

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->a:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_9d

    nop

    nop

    :goto_23
    check-cast p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v1, 0x168

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0}, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;->invalidate()V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_27
    iget-boolean v1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->i:Z

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lmgs;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Lnds;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_2d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    :pswitch_5
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->invalidate()V

    :goto_31
    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_34
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidateOutline()V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->invalidate()V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_38
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_39
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9c

    nop

    :goto_3a
    check-cast p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p0}, Lnds;->j()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3e
    check-cast p0, Lner;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    :pswitch_6
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    check-cast p0, Lngn;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_42
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_43
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_44
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

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

    :goto_45
    return-void

    nop

    :pswitch_7
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p0, Lmgs;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p0, Lcom/google/android/apps/camera/optionsbar/view/HighlightBarIndicator;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4b
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast p0, Lnds;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4e
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    check-cast p0, Lnds;

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Lmgs;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_51
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_54
    iget-object v0, v0, Lndp;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_55
    iput p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->l:F

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    :goto_57
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, p0, Lkkt;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_5a
    iput p1, p0, Lnds;->n:I

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_5b
    cmpl-float p1, p1, v0

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_5c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_a
        :pswitch_e
        :pswitch_6
        :pswitch_d
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_11
        :pswitch_13
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_f
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_c
        :pswitch_12
        :pswitch_b
    .end packed-switch

    :goto_5d
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast p0, Lnds;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_60
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_61
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0}, Lnds;->j()V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_63
    check-cast p0, Landroid/view/View;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Lndy;->invalidate()V

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_66
    check-cast p1, Ljava/lang/Integer;

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

    :goto_67
    sub-float/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_69
    iget-object v0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_6a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_6b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->invalidate()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p0}, Lnds;->j()V

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_6f
    check-cast p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_70
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_71
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const v0, 0x3f733333    # 0.95f

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_73
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_74
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0, p1}, Lnds;->k(Landroid/graphics/Rect;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_78
    return-void

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iput p1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->d:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->invalidate()V

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0}, Lmgs;->requestLayout()V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_7f
    check-cast p1, Landroid/graphics/Rect;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_80
    return-void

    nop

    nop

    :pswitch_c
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_81
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0}, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->invalidate()V

    :goto_86
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast p0, Lnds;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    return-void

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_8e
    check-cast p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_8f
    iget v0, p0, Lieq;->b:I

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p0, p0, Lner;->a:Landroid/view/View;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_91
    check-cast p0, Lmgs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    return-void

    nop

    :pswitch_e
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    check-cast p0, Lkkt;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_94
    check-cast p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_97
    cmpl-float p1, p1, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_99
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p0}, Lmgs;->requestLayout()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    iget-object v0, p0, Lnds;->m:Lndp;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_9f
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a1
    check-cast p1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_a2
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_ad

    nop

    nop

    :goto_a3
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p0}, Lmgs;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_a5
    return-void

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_a6
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_a7
    if-eq p1, v1, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_a9
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iput p1, p0, Lcom/google/android/apps/camera/gesturecapture/ui/CatcherView;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_ac
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_ae
    iput p1, p0, Lnds;->y:I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_af
    check-cast p0, Lndy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget v0, p0, Lmgs;->f:I

    nop

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

    :goto_b1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_b2
    const v0, 0x1a

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b3
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {p0, v0}, Lmgs;->setAlpha(F)V

    :goto_b6
    goto/32 :goto_7e

    nop

    nop

    :goto_b7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_b8
    invoke-virtual {p0}, Lmgs;->requestLayout()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_ba
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_bc

    nop

    nop

    :goto_bb
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_bd
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_be
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_c0
    return-void

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_43

    nop

    nop

    :goto_c1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

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

    nop

    :goto_c2
    if-gtz p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    return-void

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->n()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c6
    if-eq v0, v1, :cond_6

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_19

    nop

    nop

    :goto_c7
    iget-object p0, p0, Lieq;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop
.end method
