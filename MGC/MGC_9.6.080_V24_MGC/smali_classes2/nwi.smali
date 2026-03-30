.class public Lnwi;
.super Lnvw;
.source "PG"


# instance fields
.field private final a:Landroid/animation/AnimatorListenerAdapter;

.field final synthetic b:Lnwp;


# direct methods
.method public constructor <init>(Lnwp;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lnvw;-><init>()V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    iput-object p1, p0, Lnwi;->a:Landroid/animation/AnimatorListenerAdapter;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Lnwh;-><init>(Lnwi;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lnwh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 8

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_1
    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lnwp;->w()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, v0, Lnwp;->B:I

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

    :goto_4
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_9a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_60

    nop

    nop

    :goto_7
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v7, v0, Lnwp;->m:Loyn;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, v2, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_a
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lnwp;->z()V

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_b6

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    div-float/2addr v6, v7

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

    :goto_f
    invoke-virtual {p0, v0}, Lnwp;->L(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    int-to-long v2, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    invoke-virtual {v0, v6, v7}, Lnwp;->K(FI)I

    move-result v6

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sub-float/2addr v1, v6

    nop

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

    :goto_19
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    :goto_1b
    const/4 v1, 0x4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_46

    nop

    nop

    :goto_21
    invoke-interface {v7}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_22
    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_23
    iget-boolean v1, v0, Lnwp;->K:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getWidth()I

    move-result v6

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    div-float/2addr v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v7, v0, Lnwp;->l:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_2d
    div-float/2addr v4, v7

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_2e
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v6, p0, Lnwi;->b:Lnwp;

    nop

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

    :goto_30
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v7}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_32
    iget v7, v0, Lnwp;->P:I

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v5, v0, Lnwp;->l:Loyn;

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_34
    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_36
    iget-object v6, v0, Lnwp;->l:Loyn;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_37
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_38
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_39
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3b
    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getWidth()I

    move-result v6

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3c
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_3e
    div-float/2addr v6, v7

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_40
    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_41
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_43
    invoke-virtual {v5, v6, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->E(IZ)V

    goto/32 :goto_5

    nop

    nop

    :goto_44
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_45
    iget-object v6, v0, Lnwp;->l:Loyn;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_46
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    int-to-float v6, v6

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

    :goto_4a
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object v0

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_4b
    iget v1, v1, Lnwp;->C:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    goto/32 :goto_ac

    nop

    nop

    :goto_4d
    add-float/2addr v2, v4

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Lnwp;->v()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v5, v6, v7}, Lnvf;->g(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;F)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_55
    iget v7, v0, Lnwp;->P:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->k()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

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

    :goto_58
    int-to-long v1, v1

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

    :goto_59
    iget v1, v1, Lnwp;->C:F

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_5a
    iget-object v2, v1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_5d
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v2, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_60
    iget-object v5, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_61
    div-float/2addr v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_62
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_63
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_64
    iget-object v6, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->n()Landroid/widget/SeekBar;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_67
    iget v1, v1, Lnwp;->B:I

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_6a
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v5, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v5, v6}, Lhoh;->p(Lhmn;)Z

    move-result v5

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_6e
    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0}, Lnwp;->x()Landroid/animation/AnimatorSet;

    move-result-object v5

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

    nop

    nop

    :goto_70
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v5, v0, Lnwp;->w:Lnvf;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_74
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_75
    int-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v3, v2}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    :goto_77
    goto/32 :goto_1a

    nop

    nop

    :goto_78
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v0, v0, Lnwp;->A:Landroid/view/animation/Interpolator;

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

    nop

    :goto_7a
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_7d
    iget-object v0, v0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_7e
    sub-float/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v1, v1, Lnwp;->A:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v6, v6, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_82
    invoke-virtual {v0}, Lnwp;->w()I

    move-result v6

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_83
    int-to-long v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_84
    iget-boolean v1, v0, Lnwp;->E:Z

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v5}, Lnwp;->B(Z)V

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_86
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v6, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_8b
    invoke-virtual {v0, v6, v7}, Lnwp;->K(FI)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_8c
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_8d
    add-int v0, v0, v1

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_8f
    add-float/2addr v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    int-to-long v1, v1

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v5, v0, Lnwp;->w:Lnvf;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v2, v1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_94
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v1, p0, Lnwi;->b:Lnwp;

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

    :goto_96
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_d2

    nop

    nop

    :goto_97
    iget-object v1, v1, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_98
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->F(I)V

    :goto_9a
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_9b
    sub-float/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    :goto_9e
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_a0
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_a1
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_a2
    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_a4
    sget-object v3, Lcom/CameraLensTogglesRelativeLayout;->e:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v0}, Lnwp;->y()Landroid/animation/ValueAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const v1, 0x15

    nop

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

    :goto_a7
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_b2

    nop

    nop

    :cond_3
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_a8
    sub-float/2addr v1, v6

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_a9
    iget-object v1, v1, Lnwp;->A:Landroid/view/animation/Interpolator;

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

    nop

    nop

    :goto_aa
    invoke-virtual {v5, v6, v7}, Lnvf;->e(Lcom/google/android/apps/camera/zoomui/view/ZoomUi;Lnxe;)V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

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

    :goto_ac
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_ad
    iget-object v0, v0, Lnwp;->v:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_ae
    if-lez v0, :cond_4

    nop

    goto/32 :goto_28

    nop

    :cond_4
    goto/32 :goto_27

    nop

    :goto_af
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_b0
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :goto_b2
    goto/32 :goto_ab

    nop

    nop

    :goto_b3
    iget-boolean v1, v0, Lnwp;->E:Z

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_b6
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_b7
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

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

    :goto_b8
    iget-boolean v5, v0, Lnwp;->E:Z

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_b9
    iget-object v5, v0, Lnwp;->R:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    nop

    :goto_be
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    sget-object v6, Lhnz;->g:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_c3
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setVisibility(I)V

    :goto_c4
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :cond_5
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_c7
    check-cast v7, Ljava/lang/Float;

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget v1, v1, Lnwp;->B:I

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    const/4 v4, 0x0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v5, v7}, Lnvf;->d(F)Lnxe;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_ce
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTranslationX(F)V

    goto/32 :goto_b4

    nop

    nop

    :goto_d0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_d1
    iget-object p0, p0, Lnwi;->b:Lnwp;

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

    :goto_d2
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_d3
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_d4
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_d5
    iget-object v1, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_d6
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget v2, v2, Lnwp;->C:F

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    iget-object v6, v6, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_d9
    div-float/2addr v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :goto_db
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_dc
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setVisibility(I)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->f()Landroid/view/ViewGroup;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_e0
    invoke-virtual {v6}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object v6

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

    nop

    :goto_e1
    const v0, 0xb

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_e2
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v1

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

    nop

    :goto_e5
    iget v1, v1, Lnwp;->B:I

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_e6
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v1, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e9
    iget v4, v2, Lnwp;->D:F

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

    :goto_ea
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v1, v1, Lnwp;->A:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_ec
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v0

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_ed
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 7

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_47

    nop

    nop

    :goto_2
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_5
    iget v1, v1, Lnwp;->B:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    :goto_7
    invoke-virtual {v1, v5}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

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

    :goto_9
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_f
    int-to-long v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_12
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, v1, Lnwp;->B:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_16
    iget-object v0, v0, Lnwp;->A:Landroid/view/animation/Interpolator;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTranslationY(F)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lnwp;->w()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lnwi;->b:Lnwp;

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

    :goto_1e
    int-to-long v5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1f
    iget-object v1, v1, Lnwp;->A:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_22
    int-to-long v3, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    int-to-long v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->g()Landroid/view/ViewGroup;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_26
    iget-boolean v1, v0, Lnwp;->E:Z

    nop

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

    :goto_27
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

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

    :goto_28
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2a
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

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

    :goto_2c
    iget-object v1, v1, Lnwp;->A:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    add-float/2addr v5, v6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_30
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, v2}, Lnwp;->B(Z)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lnwi;->b:Lnwp;

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

    :goto_35
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v1, v1, Lnwp;->B:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->j()Landroid/widget/ImageView;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTranslationX(F)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lnwi;->a:Landroid/animation/AnimatorListenerAdapter;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_45
    iget v5, v0, Lnwp;->B:I

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

    nop

    :goto_46
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v1, v1, Lnwp;->A:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4a
    int-to-float v6, v6

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

    :goto_4b
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Lnwp;->v()F

    move-result v5

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

    :goto_4d
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop
.end method

.method public c()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnvw;->r()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public d()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public e()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public f(FI)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1
    new-array v1, v1, [F

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
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object v0, p2, Lnwp;->l:Loyn;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    aput p1, v1, v0

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

    :goto_9
    invoke-static {p2}, Lnwp;->I(I)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Lnwi;->b:Lnwp;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    iget-object p0, p0, Lnwp;->r:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    check-cast v0, Ljava/lang/Float;

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

    :goto_12
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xa

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, p2, v0, p1}, Lnwp;->J(IFF)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p2, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    :goto_1e
    iget-object p1, p2, Lnwp;->r:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, v0, Lnwp;->l:Loyn;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    aput v0, v1, v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final k()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lnvw;->u()V

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
.end method

.method public final r()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnwi;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final u()V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

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

    :goto_3
    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->setVisibility(I)V

    goto/32 :goto_12

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->q()Landroid/widget/TextView;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_c

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Lcom/CameraLensTogglesRelativeLayout;->setVisibility(I)V

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lnwp;->u:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lcom/CameraLensTogglesRelativeLayout;->e:Lcom/CameraLensTogglesRelativeLayout;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lnwi;->b:Lnwp;

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

    :goto_11
    const v0, 0x9

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

    :goto_12
    iget-object p0, p0, Lnwi;->b:Lnwp;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
