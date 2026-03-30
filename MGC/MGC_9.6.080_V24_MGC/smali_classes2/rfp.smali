.class public final Lrfp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrfp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Lrfp;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Lrln;->setScaleX(F)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_53

    nop

    :cond_1
    goto/32 :goto_13

    nop

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

    :goto_5
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lrfp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_2
    goto/32 :goto_b

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

    :goto_9
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x5

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

    :goto_c
    invoke-virtual {p0, p1}, Lrln;->setTranslationY(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lrfp;->b:I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v1, 0x3

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

    nop

    :goto_f
    check-cast p0, Lrlo;

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

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

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

    :goto_11
    iget-object v0, v0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    check-cast p0, Lrlo;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

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

    :goto_14
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lrlo;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lrfp;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lrfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lrlo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_20
    iget-object p0, p0, Lrlo;->j:Lrln;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lrfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1}, Lrkp;->o(F)V

    :goto_23
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    check-cast p0, Lrlo;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p0, p0, Lrlo;->j:Lrln;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d(I)V

    goto/32 :goto_37

    nop

    nop

    :goto_27
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Lrfp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_29
    iget-object p0, p0, Lrfp;->a:Ljava/lang/Object;

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

    :goto_2a
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2d
    if-ne v0, v1, :cond_4

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

    :cond_4
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_5

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lrfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p1, Ljava/lang/Float;

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

    :goto_31
    invoke-virtual {p0, p1}, Lrln;->setTranslationY(F)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p0, p0, Lrfp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    :goto_34
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_5

    nop

    nop

    :goto_36
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :goto_38
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez p0, :cond_6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3a
    int-to-float p1, p1

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

    :goto_3b
    iget-object p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->d:Lrkp;

    nop

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

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3d
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3f
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_42
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    nop

    :goto_44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/tabs/TabLayout;->scrollTo(II)V

    goto/32 :goto_52

    nop

    nop

    :goto_46
    check-cast p0, Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_48
    return-void

    nop

    :goto_49
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_41

    nop

    nop

    :goto_4c
    goto/32 :goto_36

    nop

    :goto_4d
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, p1}, Lrln;->setAlpha(F)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_7
    goto/32 :goto_35

    nop

    :goto_52
    return-void

    nop

    nop

    :goto_53
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_54
    check-cast p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0, p1}, Lrln;->setScaleY(F)V

    goto/32 :goto_4a

    nop

    nop

    :goto_56
    check-cast p1, Ljava/lang/Integer;

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

    :goto_57
    iget-object p0, p0, Lrlo;->j:Lrln;

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

    nop

    :goto_58
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method
