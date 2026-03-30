.class public Lnwk;
.super Lnvw;
.source "PG"


# instance fields
.field final synthetic b:Lnwp;


# direct methods
.method public constructor <init>(Lnwp;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lnvw;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final a()V
    .locals 9

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_1
    move v5, v0

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    cmpl-float v4, v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_f4

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_7
    iget v0, v1, Lnwp;->M:F

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v4, "min zoom value hasn\'t been initialized properly"

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_9
    invoke-interface {v4}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_a
    cmpg-float v4, v4, v7

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_d8

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_d
    if-eqz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a5

    nop

    nop

    :goto_e
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v4, 0x6

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

    :goto_10
    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v4, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_13
    cmpg-float v4, v0, v4

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput v1, v6, v2

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

    :goto_15
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_16
    invoke-virtual {p0, v4}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_18
    iget-object v4, v6, Lnwp;->L:Lrss;

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lnwk;->b:Lnwp;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1a
    cmpl-float v1, v1, v6

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    mul-float/2addr v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v4, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v4, :cond_2

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

    :cond_2
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_20
    iget-object v0, v1, Lnwp;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_21
    iget v4, v1, Lnwp;->G:F

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_22
    check-cast v4, Lnne;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v4, v6, Lnwp;->L:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_24
    check-cast v0, Ljava/lang/Float;

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

    nop

    :goto_25
    invoke-interface {v4}, Lhdd;->a()Lpog;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_26
    iget-object v6, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_27
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_28
    goto/16 :goto_61

    nop

    :goto_29
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :cond_3
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v4, v5}, Lmjv;->w(IF)V

    :goto_2c
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    goto/32 :goto_f8

    nop

    nop

    :goto_2e
    goto/16 :goto_f4

    nop

    nop

    :goto_2f
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_4
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_33
    mul-float/2addr v0, v1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_34
    cmpl-float v6, v0, v4

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    throw p0

    nop

    nop

    :goto_37
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_cf

    nop

    :goto_39
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v4, v4, Lnwp;->y:Loyd;

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget v1, v1, Lnwp;->M:F

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, v4, Lnwp;->L:Lrss;

    nop

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

    :goto_3e
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v4, Lnne;->g:Lnne;

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_41
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, v0, Lnwp;->m:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_37

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-array v6, v4, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v4, v4, Lnwp;->L:Lrss;

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    :goto_49
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_4a
    iget v0, v0, Lnwp;->H:F

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v4, v4, Lnwp;->l:Loyn;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_4f
    const v8, 0x3f99999a    # 1.2f

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_50
    aput v5, v6, v3

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_55
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_56
    if-ltz v4, :cond_5

    nop

    nop

    goto/32 :goto_76

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

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

    :goto_58
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_5b
    sget-object v6, Lnne;->g:Lnne;

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_5d
    iget-object v1, p0, Lnwk;->b:Lnwp;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v4}, Ljqb;->c()Z

    move-result v4

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_60
    iget v0, v0, Lnwp;->H:F

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    :cond_7
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v0, Ljava/lang/Float;

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

    :goto_64
    check-cast v1, Lmep;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_65
    if-nez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    :goto_67
    if-eqz v1, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :cond_9
    :goto_68
    goto/32 :goto_118

    nop

    nop

    nop

    :goto_69
    iget v0, v0, Lnwp;->H:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v0, v0, Lnwp;->H:F

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_6b
    iget-object p0, p0, Lnwp;->n:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6c
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v1, :cond_a

    nop

    goto/32 :goto_9f

    nop

    :cond_a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move v0, v2

    nop

    nop

    :goto_6f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_2

    nop

    :goto_71
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_72
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v1, p0, Lnwk;->b:Lnwp;

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

    :goto_74
    invoke-virtual {v1, v4, v0, v5}, Lnwp;->J(IFF)V

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_75
    if-lez v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_b
    :goto_76
    goto/32 :goto_1d

    nop

    nop

    :goto_77
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

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

    :goto_78
    iget-object v4, p0, Lnwk;->b:Lnwp;

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

    :goto_79
    if-ne v4, v3, :cond_c

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_f9

    nop

    nop

    :goto_7a
    iget v0, v0, Lnwp;->G:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v4, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v1, v1, Lnwp;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_7d
    iget v7, v6, Lnwp;->M:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_61

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_80
    iget-object v4, p0, Lnwk;->b:Lnwp;

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

    :goto_81
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_82
    mul-float/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_83
    iget-object v1, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_84
    cmpl-float v1, v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, v0, Lnwp;->p:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-ltz v4, :cond_d

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_87
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_e
    goto/32 :goto_111

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

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

    :goto_8a
    iget v6, v4, Lnwp;->M:F

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-nez v0, :cond_f

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v1, v1, Lnwp;->x:Lrss;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_90
    iget-boolean v4, v0, Lnwp;->I:Z

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_91
    iget-object v4, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v6, p0, Lnwk;->b:Lnwp;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_94
    iget-object v0, v0, Lnwp;->Q:Lmjv;

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

    nop

    :goto_95
    goto/16 :goto_6f

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_97
    iget-object v4, v6, Lnwp;->L:Lrss;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

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

    :goto_99
    iget v4, v4, Lnwp;->M:F

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_9a
    iget-object v4, v4, Lnwp;->L:Lrss;

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_9c
    move v0, v7

    nop

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

    :goto_9d
    const/high16 v5, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v1, v4}, Lmep;->k(F)V

    :goto_9f
    goto/32 :goto_19

    nop

    nop

    :goto_a0
    goto/16 :goto_61

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_23

    nop

    nop

    :goto_a2
    iget-object v0, p0, Lnwk;->b:Lnwp;

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

    :goto_a3
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_a4
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a5
    iget v4, v0, Lnwp;->O:I

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_a6
    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    move v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v1, v6, v0, v5}, Lnwp;->J(IFF)V

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_a9
    iget-object v4, v4, Lnwp;->L:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_aa
    iget v7, v6, Lnwp;->M:F

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_ab
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_ad
    iget v1, v1, Lnwp;->M:F

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

    :goto_ae
    iget-object v4, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_af
    return-void

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 p0, 0x0

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

    :goto_b2
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_b3
    iget-object v1, v1, Lnwp;->x:Lrss;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast v1, Lmep;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-object v6, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_b7
    move v0, v3

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

    :goto_b8
    invoke-virtual {v1}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_b9
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v0, v4}, Lnwp;->L(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget v4, v1, Lnwp;->H:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_bd
    const/4 v3, 0x1

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_be
    move v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_c0
    iget-object v0, v1, Lnwp;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_c1
    invoke-virtual {v0, v6, v5}, Lmjv;->w(IF)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-boolean v4, v0, Lnwp;->J:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c3
    iget-object v4, v4, Lnwp;->N:Ljqb;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_c4
    iget-object v4, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_c6
    sget-object v6, Lpog;->a:Lpog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_c7
    if-nez v1, :cond_10

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_5c

    nop

    nop

    :goto_ca
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_cb
    if-nez v4, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_11
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-virtual {v4, v6}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget v0, v0, Lnwp;->t:F

    nop

    :goto_cf
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v0, v0, Lnwp;->y:Loyd;

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v4, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_d5
    if-lez v0, :cond_12

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_c8

    nop

    :goto_d6
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_d7
    move v0, v2

    nop

    nop

    :goto_d8
    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v0, v4}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_da
    if-nez v4, :cond_13

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {v0, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    const v0, 0x10

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    iget-object v1, v0, Lnwp;->l:Loyn;

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

    nop

    :goto_df
    invoke-virtual {v1, v0}, Lmep;->l(F)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    if-gtz v4, :cond_14

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_14
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    iget-object v0, v0, Lnwp;->Q:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_e3
    if-nez v0, :cond_15

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_15
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_e5
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_8c

    nop

    nop

    :goto_e7
    iget-object v6, p0, Lnwk;->b:Lnwp;

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

    :goto_e8
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    const-string v4, "max zoom value hasn\'t been initialized properly"

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_eb
    cmpl-float v4, v4, v1

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_ed
    check-cast v0, Lnne;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_f0
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_f1
    iget-object v4, v4, Lnwp;->L:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_f2
    add-float/2addr v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_f3
    const/high16 v0, 0x40f00000    # 7.5f

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_f6

    nop

    nop

    :goto_f5
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v4, p0, Lnwk;->b:Lnwp;

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-static {v0, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_d6

    nop

    nop

    :goto_f8
    iget v0, v0, Lnwp;->H:F

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v0}, Lnwp;->D()V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_fa
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_fb
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_fc
    cmpl-float v4, v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_fd
    cmpl-float v4, v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_fe
    iget v6, v6, Lnwp;->M:F

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

    :goto_ff
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v0, v4}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_102
    invoke-virtual {v4, v6}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_103
    cmpl-float v0, v5, v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    iget-object v1, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_105
    if-lez v4, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_16
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_106
    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_107
    goto/16 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_109
    iget-object v0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_10a
    goto/16 :goto_f4

    nop

    nop

    :goto_10b
    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_10c
    if-nez v0, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_10d
    iget-object v4, v4, Lnwp;->k:Lhdd;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object v1, v1, Lnwp;->x:Lrss;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_110
    iget-object v0, v0, Lnwp;->p:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_111
    move v0, v6

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_112
    move v0, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    iget-object v0, v0, Lnwp;->R:Lhoh;

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_114
    iget-object v0, v0, Lnwp;->L:Lrss;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_115
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_116
    if-gtz v6, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    :cond_18
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_117
    sget-object v4, Lhni;->e:Lhmn;

    nop

    goto/32 :goto_d9

    nop

    nop

    :goto_118
    iget-object v1, p0, Lnwk;->b:Lnwp;

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    iget v7, v6, Lnwp;->M:F

    nop

    nop

    goto/32 :goto_4f

    nop

    nop
.end method

.method public final b()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnwp;->p:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lnwk;->b:Lnwp;

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
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public c()V
    .locals 1

    goto/32 :goto_2

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
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    iget-object p0, p0, Lnwk;->b:Lnwp;

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
    invoke-virtual {p0, v0}, Lnwp;->A(Z)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public eb()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iget-object p0, p0, Lnwk;->b:Lnwp;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lnwp;->G()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
