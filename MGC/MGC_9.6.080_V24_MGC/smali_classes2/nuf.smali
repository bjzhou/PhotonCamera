.class public final synthetic Lnuf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZZI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnuf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput p4, p0, Lnuf;->d:I

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p3, p0, Lnuf;->b:Z

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

    :goto_4
    iput-boolean p2, p0, Lnuf;->a:Z

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lnuk;->ea(Z)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_3
    iget-object p0, v1, Lnup;->i:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Loxv;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5
    iget-object p0, v1, Lnup;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v2, p0, Lnuf;->a:Z

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getAlpha()F

    move-result p0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lnuj;->n:Lnup;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lmoi;->Z:Lsuu;

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

    nop

    :goto_b
    const/high16 v6, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_9e

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_f
    invoke-direct {v3, v2, v1}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->reverse()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_35

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v3, v1}, Lnuj;->g(ZZ)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lnuf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v0, Lnup;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_1d
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1e
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v3, :cond_2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    iget-object v4, v0, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_22
    check-cast v1, Lnup;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p0, v1, Lnup;->i:Landroid/animation/ObjectAnimator;

    nop

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

    :goto_24
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lmoi;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v1, v0}, Lmoi;->j(ZZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-boolean v3, v2, Lnup;->k:Z

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lnuj;->d()V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    mul-float/2addr v2, v4

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v0}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_2b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_4b

    nop

    nop

    :goto_2e
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_30
    goto :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast p0, Lnuj;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Lnuk;->h()V

    :goto_35
    goto/32 :goto_81

    nop

    nop

    :goto_36
    return-void

    nop

    :goto_37
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_39
    iget-boolean v1, p0, Lnuf;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3a
    check-cast v0, Lnuj;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_3b
    const/high16 v4, 0x43480000    # 200.0f

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3c
    iget-object v2, p0, Lnuj;->n:Lnup;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3d
    iget-object v0, v0, Lnuj;->n:Lnup;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_3e
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3f
    check-cast v0, Lnuj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_40
    iget-object v4, v0, Lnuj;->m:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_41
    new-instance v3, Lnue;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1}, Lnup;->k()V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v4, v2, v5}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->e(II)V

    :goto_44
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_45
    cmpl-float p0, p0, v2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_46
    invoke-virtual {v0, p0}, Lnuk;->d(Z)V

    goto/32 :goto_74

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4c
    iget-object p0, p0, Lnuf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_4d
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_4
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4e
    iget-object v0, v2, Lnup;->h:Lowu;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_50
    move-object v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_51
    goto/16 :goto_67

    nop

    :goto_52
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_84

    nop

    nop

    :goto_54
    iget-boolean v1, p0, Lnup;->l:Z

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

    :goto_55
    iget-boolean p0, p0, Lnuf;->b:Z

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast v1, Lnup;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_59
    iget-object p0, v1, Lnup;->i:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_5a
    goto/32 :goto_2e

    nop

    nop

    :goto_5b
    iget-boolean p0, p0, Lnuf;->b:Z

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

    nop

    :goto_5c
    invoke-virtual {v0}, Lnup;->m()V

    :goto_5d
    goto/32 :goto_55

    nop

    nop

    :goto_5e
    iget-boolean v1, p0, Lnup;->k:Z

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0}, Lnuj;->d()V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->reverse()V

    :goto_61
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, p0}, Lnuk;->c(Z)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v1, Ljrz;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-boolean v0, p0, Lnuf;->a:Z

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_66
    invoke-virtual {v0, v3}, Lowu;->c(Ljava/lang/Runnable;)V

    :goto_67
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_68
    iget-object v1, p0, Lnuf;->c:Ljava/lang/Object;

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

    :goto_69
    iget-object v1, v0, Lnuj;->q:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_6a
    iget-boolean v1, p0, Lnuf;->a:Z

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v0, v1, Lnup;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_6d
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_6e
    invoke-virtual {v4}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object v4

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

    :goto_6f
    iget-object p0, v1, Lnup;->i:Landroid/animation/ObjectAnimator;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_70
    if-nez p0, :cond_8

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_71
    check-cast p0, Lnuj;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, v0, Lnup;->j:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_73
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return-void

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_76
    iget-object p0, v1, Lnup;->i:Landroid/animation/ObjectAnimator;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_77
    if-nez p0, :cond_9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3e

    nop

    nop

    :goto_78
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->end()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7b
    const/4 v1, 0x3

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v4, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget-boolean v0, p0, Lnuf;->b:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0}, Lnup;->m()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7f
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    check-cast v0, Lnuk;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_81
    iget-boolean p0, p0, Lnuf;->b:Z

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    mul-float/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_84
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-nez v1, :cond_c

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-ne v0, v2, :cond_d

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2

    nop

    nop

    :goto_88
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_89
    iget-object p0, v1, Lnup;->i:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_8a
    const/16 v5, 0xc8

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->setVisibility(I)V

    goto/32 :goto_70

    nop

    nop

    :goto_8c
    add-float/2addr v4, v5

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

    :goto_8d
    return-void

    nop

    nop

    :goto_8e
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v0, p0, Lnuf;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v1, v1, Ljrz;->f:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_91
    if-ne v0, v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_65

    nop

    nop

    :goto_92
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-static {v4, v2, v5}, Lrrf;->V(FFF)F

    move-result v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_94
    iget-boolean v0, p0, Lnuf;->b:Z

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

    nop

    nop

    :goto_95
    const v1, 0x20

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    iget-object p0, p0, Lnuf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_97
    check-cast v0, Lnup;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_98
    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_10
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object p0, p0, Lnuj;->n:Lnup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_9a
    iget-object p0, v1, Lnup;->i:Landroid/animation/ObjectAnimator;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9b
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_11
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast v0, Lnup;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_9d
    invoke-virtual {v2, v0}, Lnuk;->f(Z)V

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_9e
    iget-boolean v0, p0, Lnuf;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_a0
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_a1
    iget v0, p0, Lnuf;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_a2
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_a3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const v0, 0x13

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
.end method
