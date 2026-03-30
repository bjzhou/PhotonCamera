.class public final synthetic Lnvy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p2, p0, Lnvy;->b:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lrjk;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_80

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

    :pswitch_0
    goto/32 :goto_73

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_4
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lnvy;->b:I

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lnzu;->e()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_e
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_f
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_11
    check-cast p0, Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p0, Landroid/widget/TextView;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_15
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_17
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_19
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1a
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lrjf;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->findViewById(I)Landroid/view/View;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_54

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    :pswitch_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_25
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

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

    :goto_26
    check-cast p0, Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_27
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2a
    check-cast p0, Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_33
    check-cast p0, Lrgj;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_35
    check-cast p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lnzu;->e()V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_38
    iput p1, p0, Lrgj;->s:F

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lrjf;->b:Lrjk;

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

    :goto_3d
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_0
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_4a
    const v0, 0x7f0b04b7

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4b
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4f
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_6
        :pswitch_3
        :pswitch_d
        :pswitch_2
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :goto_50
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_53
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_54
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_55
    const v1, 0x3

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_56
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/list/FadingWearableRecyclerView;->af:Lnzu;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_59
    iget-object p1, p0, Lrjf;->e:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_50

    nop

    :goto_5b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_5f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_61
    sget p1, Lnzn;->a:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_63
    goto/32 :goto_82

    nop

    nop

    :goto_64
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p0

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_65
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_5e

    nop

    nop

    :goto_66
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->m()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_67
    check-cast p0, Lnzu;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_68
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_70

    nop

    nop

    :goto_6b
    check-cast p0, Lnwp;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_6d
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_6f
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_70
    return-void

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_6f

    nop

    nop

    :goto_71
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_72
    return-void

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_75
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setAlpha(F)V

    goto/32 :goto_a4

    nop

    nop

    :goto_77
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_78
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_79
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7a
    iget-object v0, p0, Lrjf;->d:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_7f
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_38

    nop

    nop

    :goto_81
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_82
    return-void

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_84
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_86
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_88
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object p0, p0, Lnvy;->a:Ljava/lang/Object;

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

    :goto_8b
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_8c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5a

    nop

    :goto_8d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-interface {p1, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_6d

    nop

    nop

    :goto_92
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_94
    check-cast p0, Lnwp;

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

    :goto_95
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_96
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const/high16 v0, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_98
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_99
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast p0, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_9b
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_9c
    mul-float/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_a1
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_a2
    iget-object v1, p0, Lrgj;->j:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a3
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a4
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_a8
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop
.end method
