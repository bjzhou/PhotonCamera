.class public final synthetic Ldwi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p2, p0, Ldwi;->b:I

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;I[B)V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    iput p2, p0, Ldwi;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_cf

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :pswitch_0
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lhkm;->X:Lfdo;

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

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_5a

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-float/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_f
    invoke-interface {v0, p1}, Liae;->d(F)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_11
    check-cast p0, Lhxg;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->invalidate()V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p0, Lhwy;

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    :pswitch_3
    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_1b
    sget-object v1, Lnlj;->f:Lnlj;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1f
    invoke-interface {v0, p1}, Liac;->m(F)V

    goto/32 :goto_d5

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    :pswitch_4
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    iput v1, p0, Lhxg;->f:F

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Lezm;->k:Lfdd;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_24
    mul-float/2addr p1, v0

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

    :goto_25
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_26
    check-cast p0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_28
    const v0, 0x3ecccccd    # 0.4f

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    goto/32 :goto_58

    nop

    nop

    :goto_2a
    invoke-interface {p0, p1, v0, v1}, Lubp;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lffc;->c()F

    move-result p0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_2e
    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p1, :cond_1

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_113

    nop

    nop

    nop

    :goto_31
    invoke-interface {v0, p1}, Liac;->m(F)V

    goto/32 :goto_3d

    nop

    nop

    :goto_32
    check-cast p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p0, Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p1, v0}, Lhkd;->f(FLfdo;)Ljava/lang/Float;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast p0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_40
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_43
    check-cast v0, Lhwy;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v0, p1}, Lhzz;->b(F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_4a
    check-cast p0, Lhkm;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_4c
    check-cast v0, Lhwy;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, p0}, Lfdc;->m(F)V

    :goto_4e
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ee

    nop

    nop

    :goto_50
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_51
    iget-object v0, v0, Lje;->b:Landroid/graphics/drawable/StateListDrawable;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    add-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_54
    iget-object v1, p0, Lhxg;->c:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v0, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->invalidate()V

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d0

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_1d

    nop

    nop

    :goto_59
    check-cast v0, Lje;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_5a
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_5b
    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->l:F

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v0, p1}, Liac;->l(F)V

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v0, p1}, Lhzz;->d(F)V

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_5f
    iput p1, p0, Lhxg;->g:I

    nop

    nop

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
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_61
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_62
    check-cast p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_63
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_65
    iget-object p0, p0, Lhkm;->U:Lubp;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_96

    nop

    nop

    :goto_68
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_2
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_69
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_6b
    check-cast p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_6c
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_6d
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast p0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_6f
    return-void

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const v0, -0x41333333    # -0.4f

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

    :goto_71
    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->i:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    check-cast p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast p0, Lev;

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_e
        :pswitch_2
        :pswitch_a
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_d
        :pswitch_b
        :pswitch_12
        :pswitch_11
        :pswitch_5
        :pswitch_8
        :pswitch_f
        :pswitch_9
        :pswitch_13
        :pswitch_7
        :pswitch_10
        :pswitch_3
    .end packed-switch

    :goto_77
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_78
    mul-float/2addr v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_79
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast v0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_7b
    return-void

    nop

    :pswitch_9
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_7d
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/high16 v0, 0x434c0000    # 204.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v0, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_80
    check-cast p0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_81
    check-cast v0, Lje;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_82
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_83
    invoke-interface {v0, p1}, Liae;->c(F)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_84
    check-cast v0, Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_85
    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

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

    :goto_86
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

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

    :goto_89
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

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

    :goto_8a
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->d(F)V

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_8d
    return-void

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const/high16 v0, 0x437f0000    # 255.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v0, p0, Lhkm;->e:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_95
    check-cast p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_96
    iget v0, p0, Ldwi;->b:I

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_98
    const/4 v0, 0x1

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

    :goto_99
    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_9a
    return-void

    nop

    nop

    :pswitch_b
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    :goto_9c
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_9d
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_66

    nop

    :goto_9e
    invoke-virtual {p0}, Lje;->b()V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_a1
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_a2
    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->n:F

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_a3
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast p0, Lhwy;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_a7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_a9
    check-cast v0, Lhwy;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_aa
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_ab
    return-void

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_ac
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_ae
    invoke-interface {v0, p1}, Liac;->m(F)V

    goto/32 :goto_f1

    nop

    nop

    :goto_af
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

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

    :goto_b1
    iget-object v0, v0, Lhwy;->b:Ljava/lang/Object;

    nop

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

    :goto_b2
    sub-float/2addr v0, p1

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_b3
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    return-void

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast p0, Lhkm;

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v0, Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v0, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_bd
    check-cast p0, Lje;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_be
    invoke-interface {v0, p1}, Liac;->n(F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setAlpha(I)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_c1
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-interface {v0, p1}, Lhzz;->c(F)V

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    check-cast p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_c8
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c9
    check-cast v0, Lhwy;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_ca
    check-cast p1, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {p0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->invalidate()V

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_cc
    check-cast v0, Lhwy;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object p0, p0, Lev;->c:Landroid/support/v7/widget/ActionBarContainer;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v0, v0, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_cf
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

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

    :goto_d0
    check-cast p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

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

    :goto_d1
    iget-object v0, v0, Lhwy;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_d2
    const/high16 v0, -0x41000000    # -0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_d3
    const v0, 0x1e

    nop

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

    :goto_d4
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_d6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_38

    nop

    nop

    :goto_d7
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object p1, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    goto/32 :goto_5

    nop

    nop

    :goto_da
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_db
    check-cast v0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_de
    iput p1, p0, Lhxg;->g:I

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_df
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_e0
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    mul-float/2addr v1, p1

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

    nop

    :goto_e2
    check-cast p0, Lezm;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object v0, v0, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_e4
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_e5
    check-cast v0, Lhwy;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_e7
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    :goto_e9
    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->k:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_ea
    check-cast v0, Lhwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_eb
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c(F)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    mul-float/2addr p1, v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_ed
    iget v1, v1, Lnpa;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_ee
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_ef
    iget-object v0, v0, Lje;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    check-cast p0, Lhxg;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_f3
    check-cast v0, Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_f4
    return-void

    nop

    :pswitch_10
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_f5
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_f6
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_f7
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->invalidate()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f9
    iget-object p0, p0, Lhwy;->a:Ljava/lang/Object;

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

    nop

    :goto_fa
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_fb
    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->m:F

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_fc
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    check-cast v0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_fe
    iget-object v0, v0, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_ff
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_100
    check-cast v0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_101
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_102
    return-void

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_103
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_104
    check-cast p0, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_105
    iget-object p0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_106
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_108
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_109
    check-cast p0, Lhwy;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->invalidate()V

    goto/32 :goto_8

    nop

    nop

    :goto_10b
    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c(F)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_10c
    check-cast p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_10d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_10f
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_110
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_111
    invoke-interface {v0, p1}, Lhzz;->d(F)V

    goto/32 :goto_18

    nop

    nop

    :goto_112
    mul-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_113
    iget-object p0, p0, Lezm;->b:Lffc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_114
    check-cast p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;

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

    nop

    :goto_115
    iget-object v0, p0, Ldwi;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_116
    iput p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_117
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_118
    return-void

    nop

    :pswitch_12
    goto/32 :goto_27

    nop

    nop

    :goto_119
    sub-float/2addr v1, v0

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_11a
    iget-object p0, p0, Lhkm;->g:Loyn;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11c
    return-void

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_b4

    nop

    nop

    :goto_11d
    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_11e
    check-cast p0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorRingView;->invalidate()V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget-object v0, v0, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop
.end method
