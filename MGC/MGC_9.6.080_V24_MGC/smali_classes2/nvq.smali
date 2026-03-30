.class final Lnvq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lnvu;

.field private b:F


# direct methods
.method public constructor <init>(Lnvu;)V
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const/high16 p1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Lnvq;->b:F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 16

    goto/32 :goto_110

    nop

    nop

    :goto_0
    iget-object v5, v1, Lnvu;->f:Loyn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-gt v1, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_3
    iget-object v1, v0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_4
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

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

    :goto_5
    iget-object v1, v0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_6
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_9
    iget-object v4, v4, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v1, v5

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_e
    neg-int v7, v6

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_f
    div-int/lit8 v6, v6, 0x1e

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_10
    sub-int v5, v1, v5

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_11
    div-float/2addr v6, v7

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_12
    if-nez v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_120

    nop

    nop

    nop

    :goto_13
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2, v1}, Lnvu;->au(I)V

    :goto_15
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v13, v9, Lnvu;->P:Lgvn;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2, v1}, Lnvu;->au(I)V

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Lnvq;->a:Lnvu;

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

    :goto_1a
    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->F(I)V

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_1b
    if-eq v1, v4, :cond_2

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    float-to-double v6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v2, Lhmq;->bC:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_1e
    iget-object v1, v0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move/from16 v1, p2

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v7

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_22
    if-lt v5, v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_23
    cmpl-double v8, v8, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v1, v1, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_25
    iget-object v1, v0, Lnvq;->a:Lnvu;

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

    :goto_26
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v8, v5}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_28
    if-nez v2, :cond_4

    nop

    goto/32 :goto_11f

    nop

    nop

    :cond_4
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_29
    iget-object v4, v4, Lnvu;->e:Loyn;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_2b
    const-string v5, "camera.lenstoggles_enable"

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    add-int/2addr v5, v6

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v8, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_2e
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_4d

    nop

    nop

    :goto_30
    iget v7, v2, Lnvu;->N:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_31
    iget-object v0, v0, Lnvu;->V:Lkjj;

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_32
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_33
    invoke-virtual {v9}, Lnvu;->aw()Z

    move-result v12

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_35
    iget-boolean v4, v2, Lnvu;->E:Z

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v1, v0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v5}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_6e

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, v0, Lnvq;->a:Lnvu;

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

    :goto_3b
    float-to-double v6, v6

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v2, v3

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v5, Lgvn;->c:Lgvn;

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

    :goto_3e
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_3d

    nop

    nop

    :goto_40
    sget-object v5, Lgvn;->b:Lgvn;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v0, p0

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

    :goto_42
    if-eq v1, v9, :cond_5

    nop

    goto/32 :goto_c4

    nop

    nop

    :cond_5
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v5, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_44
    if-nez v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_114

    nop

    nop

    :goto_45
    iget-object v1, v1, Lnvu;->f:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_46
    const-string v5, "max zoom value hasn\'t been initialized properly"

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v5}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_48
    const-string v5, "camera.lenstoggles_enable"

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

    :goto_49
    invoke-virtual {v1, v5}, Landroid/view/View;->performHapticFeedback(I)Z

    :goto_4a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-boolean v1, v0, Lnvu;->H:Z

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v12, :cond_7

    nop

    nop

    nop

    goto/32 :goto_e0

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

    :goto_4d
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_4e
    int-to-float v2, v2

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v1, v3, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_50
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_51
    div-int/lit8 v8, v6, 0x2

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v8}, Landroid/widget/SeekBar;->getMax()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, v1, Lnvu;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_55
    if-nez v5, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_8
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_56
    if-eqz v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_60

    nop

    nop

    :goto_57
    const/16 v14, 0x13

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_58
    iget v5, v2, Lnvu;->N:I

    nop

    goto/32 :goto_127

    nop

    nop

    :goto_59
    if-nez v8, :cond_a

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_a
    goto/32 :goto_90

    nop

    nop

    :goto_5a
    goto/16 :goto_83

    nop

    nop

    :goto_5b
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_5c
    iget-object v9, v2, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :goto_5d
    if-nez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_5e
    invoke-static {v5}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_5f
    mul-float/2addr v6, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_60
    sget-object v5, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_62
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    sub-int/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v1}, Lnvw;->n()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_65
    float-to-double v5, v2

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-eqz v7, :cond_c

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_c
    goto/32 :goto_55

    nop

    nop

    :goto_67
    div-float/2addr v1, v2

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_68
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_6b
    invoke-virtual {v8, v5}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_6c
    int-to-float v8, v8

    nop

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

    :goto_6d
    invoke-virtual {v8, v5}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    nop

    :goto_6e
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_6f
    iput v5, v2, Lnvu;->N:I

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_83

    nop

    :goto_71
    goto/32 :goto_b7

    nop

    nop

    :goto_72
    const-string v5, "camera.lenstoggles_enable"

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_73
    if-eqz v5, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :cond_d
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_74
    goto :goto_6e

    nop

    nop

    :goto_75
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v8, v4}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_77
    float-to-int v6, v6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v2, v2, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_79
    goto :goto_6e

    nop

    nop

    :goto_7a
    goto/32 :goto_2b

    nop

    nop

    :goto_7b
    if-ne v5, v14, :cond_e

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v8, v2, Lnvu;->w:Landroid/content/res/Resources;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iput-boolean v3, v2, Lnvu;->J:Z

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_7e
    const/4 v13, 0x6

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_80
    if-nez v11, :cond_f

    nop

    goto/32 :goto_2f

    nop

    :cond_f
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v2, v2, Lnvu;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_82
    move v1, v9

    nop

    :goto_83
    goto/32 :goto_11a

    nop

    nop

    :goto_84
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v8, v5}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v2, v1}, Lnvu;->au(I)V

    goto/32 :goto_82

    nop

    nop

    :goto_87
    const/4 v5, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_88
    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_6e

    nop

    nop

    :goto_8b
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v1, v0, Lnvq;->a:Lnvu;

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

    :goto_8d
    check-cast v7, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_8e
    if-lt v7, v8, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_30

    nop

    nop

    :goto_8f
    invoke-virtual {v8, v5}, Lnvg;->b(I)Lryy;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v8, v5, Lnvu;->r:Lnvg;

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_91
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_92
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_93
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_94
    iget-wide v8, v5, Lnvu;->R:D

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

    :goto_95
    iget-object v2, v0, Lnvq;->a:Lnvu;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const/16 v5, 0x9

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const/4 v5, 0x7

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    check-cast v4, Loxv;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_99
    move v1, v4

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

    nop

    :goto_9a
    iget-object v2, v0, Lnvq;->a:Lnvu;

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_9b
    iget-object v1, v0, Lnvq;->a:Lnvu;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_9c
    if-nez v1, :cond_11

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    if-nez p3, :cond_12

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_3a

    nop

    nop

    :goto_9f
    invoke-static {v2, v5}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_a0
    check-cast v7, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_a1
    if-eq v10, v5, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_80

    nop

    nop

    :goto_a2
    float-to-double v4, v4

    nop

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

    :goto_a3
    check-cast v6, Loxv;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v1, v1, Lnvu;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_a5
    iget-object v4, v0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v8, v5}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_a8
    check-cast v5, Lnne;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_a9
    if-ne v5, v14, :cond_14

    nop

    nop

    goto/32 :goto_8b

    nop

    :cond_14
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_aa
    iget-object v8, v2, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_ab
    if-ltz v5, :cond_15

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v8, v15}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_ad
    cmpl-float v2, v2, v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_ae
    if-eq v13, v5, :cond_16

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_16
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez v4, :cond_17

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v2, v0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_b1
    const v7, 0x7f070aa3

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_b2
    iget-object v10, v9, Lnvu;->u:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_b3
    sget-object v5, Lpog;->b:Lpog;

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-ne v5, v13, :cond_18

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_b5
    if-gt v5, v6, :cond_19

    nop

    goto/32 :goto_125

    nop

    nop

    :cond_19
    goto/32 :goto_63

    nop

    nop

    :goto_b6
    iget-object v7, v7, Lnvu;->e:Loyn;

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

    nop

    :goto_b7
    if-le v5, v9, :cond_1a

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_b8
    iget-boolean v5, v5, Lprb;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b9
    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d(Z)V

    :goto_ba
    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/16 v5, 0xc

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

    nop

    :goto_bc
    if-nez v1, :cond_1b

    nop

    goto/32 :goto_4a

    nop

    :cond_1b
    goto/32 :goto_25

    nop

    nop

    :goto_bd
    goto/16 :goto_6e

    nop

    :goto_be
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-eqz v5, :cond_1c

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_c0
    check-cast v2, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_c1
    check-cast v4, Ljava/lang/Float;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget v5, v2, Lnvu;->N:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    goto/16 :goto_ed

    nop

    nop

    nop

    :goto_c4
    goto/32 :goto_a

    nop

    nop

    :goto_c5
    iget-boolean v3, v2, Lnvu;->K:Z

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_c6
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_c7
    mul-double/2addr v4, v1

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

    :goto_c8
    if-eq v13, v5, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_1d
    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_ca
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto/32 :goto_9a

    nop

    nop

    :goto_cb
    iget-object v5, v5, Lnvu;->i:Loyd;

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_cd
    if-nez v5, :cond_1e

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v6, v6, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v5, v9, Lnvu;->h:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_d0
    move-object v5, v8

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_d1
    iget-object v9, v0, Lnvq;->a:Lnvu;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v6, v6, Lnvu;->d:Loyn;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-static {v5}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_d4
    sget-object v5, Lpog;->b:Lpog;

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_d5
    if-eqz v3, :cond_1f

    nop

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

    :cond_1f
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget v1, v2, Lnvu;->O:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_d7
    iget-object v2, v2, Lnvu;->d:Loyn;

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    move v2, v4

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iput-wide v6, v1, Lnvu;->R:D

    nop

    nop

    nop

    :goto_db
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_dc
    iget-object v2, v2, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_dd
    const/16 v14, 0xb

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

    :goto_de
    invoke-virtual {v5}, Lnne;->ordinal()I

    move-result v5

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_df
    goto/16 :goto_6e

    nop

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object v6, v2, Lnvu;->w:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {v5, v1}, Lryy;->contains(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_e3
    new-instance v1, Ljava/math/BigDecimal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    if-ne v5, v4, :cond_20

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_e6
    invoke-direct {v1, v5, v6}, Ljava/math/BigDecimal;-><init>(D)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_e7
    invoke-virtual {v8, v5}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    if-eqz v5, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_e9
    iget-object v1, v1, Lnvu;->U:Lhoh;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    check-cast v5, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v8, v3}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/16 :goto_83

    nop

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    iput v2, v0, Lnvq;->b:F

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_ef
    const/4 v15, 0x5

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

    :goto_f0
    iget-object v11, v9, Lnvu;->h:Lprb;

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

    :goto_f1
    iget-object v1, v0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iget-object v6, v0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    invoke-virtual {v11}, Lprb;->j()Z

    move-result v11

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    check-cast v6, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f5
    int-to-float v1, v1

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

    :goto_f6
    iget-object v5, v0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_f7
    invoke-virtual {v8, v5}, Lnvg;->b(I)Lryy;

    move-result-object v5

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

    :goto_f8
    const/4 v5, 0x4

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_f9
    int-to-float v6, v6

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_fa
    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_fb
    invoke-interface {v1, v5}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    iget-object v7, v0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_fd
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_fe
    goto/32 :goto_14

    nop

    nop

    :goto_ff
    const/16 v5, 0xd

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

    :goto_100
    invoke-virtual {v8, v13}, Lnvg;->b(I)Lryy;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_101
    const v8, 0x7f070a82

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_102
    iget-object v1, v1, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    iget-object v2, v2, Lnvu;->y:Landroid/widget/SeekBar;

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_104
    iget v5, v2, Lnvu;->O:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_105
    if-ne v5, v15, :cond_22

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_106
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_107
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

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

    :goto_108
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_109
    return-void

    nop

    :goto_10a
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_10b
    iget-object v7, v7, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_10c
    invoke-virtual {v0}, Lkjj;->d()V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iput v5, v2, Lnvu;->N:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_10e
    iget-object v6, v2, Lnvu;->w:Landroid/content/res/Resources;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_10f
    const-string v5, "camera.lenstoggles_enable"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_110
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_111
    iget-object v1, v0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_112
    goto/16 :goto_6e

    nop

    :goto_113
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_114
    iget-object v2, v0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_115
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_116
    iget-boolean v1, v1, Lnvu;->H:Z

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_117
    div-float/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_118
    if-eq v10, v5, :cond_23

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_119
    iget-object v0, v0, Lnvq;->a:Lnvu;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_11a
    iget-object v2, v0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_11b
    double-to-float v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    if-nez v1, :cond_24

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :cond_24
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    if-lez v0, :cond_25

    nop

    goto/32 :goto_89

    nop

    :cond_25
    goto/32 :goto_88

    nop

    :goto_11e
    goto/16 :goto_d9

    nop

    nop

    nop

    nop

    :goto_11f
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_120
    const/16 v5, 0xb

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_121
    if-eq v10, v5, :cond_26

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_122
    iput v5, v2, Lnvu;->N:I

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    iget-object v1, v1, Lnvu;->o:Loyn;

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_124
    goto/16 :goto_15

    nop

    :goto_125
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_126
    const/16 v5, 0x8

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_127
    sub-int v5, v1, v5

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    goto/32 :goto_21

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lnvq;->a:Lnvu;

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
    iget-object v0, p0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lnvq;->a:Lnvu;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Lnvu;->au(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

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

    :goto_a
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d(Z)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lnvu;->K:Z

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    :goto_15
    iget-object p1, p1, Lnvu;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lnvq;->a:Lnvu;

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

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean v1, v0, Lnvu;->E:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lnvu;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v0

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

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Lnvu;->aq()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

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

    :goto_3
    iget-object p0, p0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4
    iget-object p1, p1, Lnvu;->t:Lnwp;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnvq;->a:Lnvu;

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

    :goto_7
    iget-object p1, p0, Lnvq;->a:Lnvu;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p1, Lnvu;->V:Lkjj;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Lkjj;->d()V

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lnvq;->a:Lnvu;

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

    :goto_d
    iget-boolean v2, v0, Lnvu;->K:Z

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Lnvu;->O:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    iput p1, p0, Lnvu;->N:I

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lnvq;->a:Lnvu;

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

    :goto_12
    invoke-virtual {p1, v0}, Lnvu;->av(I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->E(IZ)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Lnvq;->b:F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_28

    nop

    :goto_1a
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Lnvu;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->G()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lnvq;->a:Lnvu;

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

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Lnvw;->p()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    :goto_24
    iget-object v0, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_25
    iget-object v2, p0, Lnvq;->a:Lnvu;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_15

    nop

    nop

    :goto_28
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-gt v0, v1, :cond_4

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    nop

    :goto_2a
    iget v2, p0, Lnvq;->b:F

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Lnvu;->o:Loyn;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2c
    if-eqz v2, :cond_5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0, v2}, Loyn;->a(Ljava/lang/Object;)V

    :goto_2f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v2, v3}, Lnvw;->f(FI)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lnvq;->a:Lnvu;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_32
    const/4 v3, 0x5

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

    :goto_33
    iget-object v0, v0, Lnvu;->a:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_34
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_35
    iget-object v0, v0, Lnvu;->t:Lnwp;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    :goto_38
    iget-object v0, p1, Lnvu;->y:Landroid/widget/SeekBar;

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

    :goto_39
    iget-object v0, v0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3a
    iget-boolean v0, p1, Lnvu;->H:Z

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

    :goto_3b
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_2f

    nop

    :goto_3e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const v1, 0x8

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-eq v0, v2, :cond_8

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

    :cond_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lnvq;->a:Lnvu;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_42
    iget-object v2, v2, Lnvu;->b:Ljava/util/concurrent/atomic/AtomicInteger;

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

    :goto_43
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_45
    iget-boolean v2, v0, Lnvu;->F:Z

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
.end method
