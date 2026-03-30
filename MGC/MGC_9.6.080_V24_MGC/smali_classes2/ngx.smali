.class public final Lngx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lngx;->b:I

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

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
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lngx;->b:I

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

    nop

    :goto_2
    iput-object p1, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

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
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lnka;->setAlpha(F)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p0, Lnwp;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_b
    check-cast p1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lnka;->invalidate()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

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

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->f:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    :pswitch_4
    goto/32 :goto_d3

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_18
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->invalidate()V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput p1, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->c:F

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-float/2addr p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_24
    iput p1, v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
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

    :goto_27
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Lnka;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Lnka;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lnka;->a:Landroid/graphics/Paint;

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

    nop

    :goto_2e
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_7

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p0, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_34
    check-cast p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setAlpha(F)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_37
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_23

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance p1, Lngx;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    :pswitch_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    :pswitch_9
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_41
    move-object p1, p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return-void

    nop

    :pswitch_a
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Lnka;->invalidate()V

    goto/32 :goto_e8

    nop

    nop

    :goto_47
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi;->setAlpha(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lnwp;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_50
    check-cast p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_53
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->e:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_55
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_7
        :pswitch_13
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_8
        :pswitch_b
        :pswitch_2
        :pswitch_3
        :pswitch_e
        :pswitch_5
        :pswitch_12
        :pswitch_6
        :pswitch_1
        :pswitch_a
        :pswitch_10
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_57
    goto/32 :goto_45

    nop

    nop

    :goto_58
    check-cast v0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_59
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_c2

    nop

    nop

    :goto_5a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_5b
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/16 v1, 0x168

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_0
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    check-cast p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_61
    return-void

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_79

    nop

    nop

    :goto_62
    float-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_63
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->invalidate()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iput p1, p0, Lnka;->e:F

    nop

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

    nop

    :goto_65
    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_66
    check-cast p0, Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_68
    iget v0, p1, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_6a
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_6e
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

    nop

    :goto_6f
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->invalidate()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_97

    nop

    nop

    :goto_76
    check-cast v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_77
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->setScaleX(F)V

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_7a
    invoke-virtual {p0}, Lnka;->invalidate()V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    add-int v0, v0, v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7c
    iput p1, v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->o:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_7d
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    mul-float/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_7f
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_80
    check-cast p0, Lnwp;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->invalidate()V

    goto/32 :goto_d1

    nop

    nop

    :goto_82
    invoke-direct {p1, p0, v1}, Lngx;-><init>(Landroid/view/View;I)V

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_84
    return-void

    nop

    :pswitch_e
    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_85
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_86
    const-wide/16 v1, 0x1f4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_88
    iput p1, p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->c:F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_89
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_8c
    return-void

    nop

    nop

    :pswitch_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_8e
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_8f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_90
    iput p1, p0, Lnka;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_91
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->d:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_92
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_93
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_95
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->invalidate()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_97
    iget v0, p0, Lngx;->b:I

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object p0, p0, Lnvf;->a:Loyn;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_9a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_9d
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_9e
    return-void

    nop

    nop

    :pswitch_10
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast p0, Lnka;

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_a6
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_a7
    check-cast p0, Lnka;

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

    :goto_a8
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

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

    nop

    :goto_ac
    iput p1, v0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->n:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_ad
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_ae
    invoke-direct {v1, p1}, Lnkc;-><init>(Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_af
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_1
    goto/32 :goto_74

    nop

    :goto_b0
    iget-object p0, p0, Lnwp;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/zoomlock/ZoomLockView;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_b2
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    :goto_b7
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/ToggleUi;->c:Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b8
    iput p1, p0, Lnka;->e:F

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

    :goto_b9
    iget-object v0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    check-cast v1, Ljava/lang/Float;

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    new-instance v1, Lnkc;

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_be
    check-cast p0, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {p0, p1}, Lnka;->setAlpha(F)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast p0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->invalidate()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c7
    check-cast p0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v0

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

    :goto_c9
    new-array v0, v0, [F

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_cb
    check-cast v0, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButtonProgressOverlay;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    return-void

    nop

    nop

    :pswitch_11
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-object p0, p0, Lngx;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_d4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/ToggleUi$ToggleButton;->setScaleY(F)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_d6
    return-void

    nop

    :pswitch_12
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_d8
    float-to-int p1, p1

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_54

    nop

    nop

    :goto_dc
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_de
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_df
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_e0
    check-cast p0, Lnvf;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e4
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_38

    nop

    nop

    :goto_e6
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_e8
    return-void

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_a2

    nop

    nop

    :goto_e9
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    :goto_ea
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    const v0, 0x14

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_ec
    check-cast p1, Ljava/lang/Integer;

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

    :goto_ed
    check-cast p0, Lcom/google/android/apps/camera/ui/views/CaptureAnimationOverlay;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    check-cast p0, Lnka;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_ef
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop
.end method
