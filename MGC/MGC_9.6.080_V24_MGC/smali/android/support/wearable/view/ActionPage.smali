.class public Landroid/support/wearable/view/ActionPage;
.super Landroid/view/ViewGroup;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Lmh;

.field private b:Lmm;

.field private c:I

.field private d:F

.field private final e:Landroid/graphics/Point;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/wearable/view/ActionPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f15063d

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16

    goto/32 :goto_9c

    nop

    nop

    :goto_0
    invoke-direct {v2, v1}, Lmh;-><init>(Landroid/content/Context;)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v1, v12, v13, v14}, Landroid/support/wearable/view/ActionPage;->iVKGJqSXkDRPcBvN(Lmh;Ljava/lang/String;II)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    iget-object v15, v6, Lmh;->c:Ljava/lang/CharSequence;

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

    :goto_4
    iput v9, v1, Lmh;->d:F

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_5
    goto/16 :goto_da

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_9
    if-eq v15, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v2, v4, v15}, Landroid/support/wearable/view/ActionPage;->LiZWKckxDHmHQxeW(Landroid/content/res/TypedArray;IF)F

    move-result v4

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

    :goto_b
    if-eq v15, v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_1
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v6}, Landroid/support/wearable/view/ActionPage;->iiIafQvzBuxkfbxL(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

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

    nop

    :goto_d
    iget-object v4, v0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_97

    nop

    nop

    :goto_10
    move v9, v4

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

    nop

    :goto_11
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->NAUxdisqFAOcCaRd(Lmh;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_13
    cmpl-float v15, v4, v15

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v4, v3}, Landroid/support/wearable/view/ActionPage;->dxypKVAqknYpTybq(Landroid/content/res/TypedArray;II)I

    move-result v4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_48

    nop

    nop

    :goto_16
    goto/32 :goto_d7

    nop

    nop

    :goto_17
    goto/16 :goto_da

    nop

    nop

    :goto_18
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v15, v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v6, v15, Lmm;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_48

    nop

    :goto_1c
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-eq v15, v6, :cond_3

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    :goto_1e
    const/4 v15, -0x1

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->UANAfIWFAzPEUFyR(Lmh;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move v14, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v4, v6, Lmh;->f:F

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_23
    invoke-direct/range {p0 .. p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1, v5, v2, v6, v7}, Landroid/support/wearable/view/ActionPage;->cOGYEYDqcEvTPrqH(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_25
    if-eq v15, v6, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7e

    nop

    nop

    :goto_26
    iget-object v1, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_27
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_af

    nop

    nop

    :goto_29
    if-eq v15, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_5
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v15, v15, Lmm;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne v4, v6, :cond_6

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2d
    if-nez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    :cond_7
    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_2e
    invoke-static {v15, v4}, Landroid/support/wearable/view/ActionPage;->jPeogHKfvuvnrUkg(Lmh;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1, v4}, Landroid/support/wearable/view/ActionPage;->HFYChBAFaVTATYpi(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_30
    const/4 v6, 0x7

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v5, p2

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

    :goto_32
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_33
    iput v4, v6, Lmm;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_34
    if-lez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    :cond_8
    goto/32 :goto_a0

    nop

    :goto_35
    iput-object v7, v1, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_36
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v2, v4, v9}, Landroid/support/wearable/view/ActionPage;->ydqBPLBLrpIIiNVj(Landroid/content/res/TypedArray;IF)F

    move-result v4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_38
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_39
    invoke-static {v15}, Landroid/support/wearable/view/ActionPage;->qEcsdybdTBhshvEN(Landroid/content/res/ColorStateList;)I

    move-result v15

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v6, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3b
    if-eq v15, v4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {v15, v4}, Landroid/support/wearable/view/ActionPage;->rviCFqGfudJnSLto(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v15}, Landroid/support/wearable/view/ActionPage;->jtsTFtfdKNgvSwRb(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v15

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_3f
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->kRYdPfWaKHXoKQkf(Lmh;)Landroid/content/Context;

    move-result-object v15

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_40
    iput-object v15, v6, Lmh;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v7, v6, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v5, v4, v15}, Landroid/support/wearable/view/ActionPage;->LmFFdtBKlpWgsHZZ(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 v13, 0x1

    nop

    :goto_44
    goto/32 :goto_aa

    nop

    nop

    :goto_45
    goto :goto_48

    nop

    :goto_46
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v2, v6}, Landroid/support/wearable/view/ActionPage;->RxkAOUwhSVnLfxkw(Landroid/content/res/TypedArray;I)Ljava/lang/String;

    move-result-object v12

    nop

    :goto_48
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v2, v6, v4}, Landroid/support/wearable/view/ActionPage;->NSyCqzIdHxLKUqpx(Landroid/content/res/TypedArray;II)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v4, v15}, Landroid/support/wearable/view/ActionPage;->uxTGEPJXCCdwIbsQ(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 v3, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_48

    nop

    :goto_4e
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v2, Lmm;

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    const/16 v4, 0xe

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_a
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_52
    goto/16 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v6, v15, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_55
    invoke-static {v1}, Landroid/support/wearable/view/ActionPage;->zbshaDeRUzixtOhX(Lmh;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v6, v4}, Landroid/support/wearable/view/ActionPage;->XYcqafMWbOPuYfDB(Lmm;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v4, :cond_b

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_58
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v15}, Landroid/support/wearable/view/ActionPage;->YiNDNHhIkfSpDSmi(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v15

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_5a
    move v10, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iput v4, v6, Lmh;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v2, v10}, Landroid/support/wearable/view/ActionPage;->NFZYnfmHoEhIDvgE(Landroid/content/res/TypedArray;I)I

    move-result v15

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

    nop

    :goto_5e
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_5f
    if-eqz v2, :cond_c

    nop

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

    :cond_c
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v4, v15, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_61
    move/from16 v7, p4

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

    :goto_62
    if-eq v15, v4, :cond_d

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

    :cond_d
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_e5

    nop

    nop

    :goto_65
    iget v2, v1, Lmh;->e:F

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget v15, v6, Lmh;->f:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_67
    const v1, 0xf

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_68
    cmpl-float v2, v2, v9

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_69
    iget-object v4, v15, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v2, v4, v5}, Landroid/support/wearable/view/ActionPage;->ZfeRDSKYUXZySygQ(Landroid/content/res/TypedArray;II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_6b
    const/4 v6, 0x4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6c
    iput-object v2, v0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_6d
    const/4 v8, 0x0

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_6e
    if-eq v15, v4, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v2, v3, v8}, Landroid/support/wearable/view/ActionPage;->CjiKCXStYAsUDUHd(Landroid/content/res/TypedArray;IF)F

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_da

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_72
    iget v15, v6, Lmh;->g:F

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v4, v6, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_74
    invoke-static {v15}, Landroid/support/wearable/view/ActionPage;->YYgecQCFRAcQeNAb(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v15

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_75
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_78
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->jAogFVailaQkrTuQ(Lmh;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-eq v15, v4, :cond_f

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_7a
    invoke-static {v15}, Landroid/support/wearable/view/ActionPage;->aSlZWlbOhbEcWqdL(Lmm;)V

    :goto_7b
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v2, v1, Lmh;->d:F

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_7e
    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_48

    nop

    :goto_80
    goto/32 :goto_32

    nop

    nop

    :goto_81
    if-lt v10, v15, :cond_10

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_10
    goto/32 :goto_5d

    nop

    nop

    :goto_82
    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_83
    invoke-static {v1}, Landroid/support/wearable/view/ActionPage;->SLJxPTqsVNyiOIkr(Lmh;)V

    :goto_84
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const/high16 v15, 0x41200000    # 10.0f

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

    :goto_86
    iget-object v1, v0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

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

    nop

    :goto_87
    move/from16 v6, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-eq v15, v4, :cond_11

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :cond_11
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v15}, Landroid/support/wearable/view/ActionPage;->UVSurrRqcEDijYPF(Ljava/lang/Object;)Ljava/lang/Class;

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {v2, v4, v5}, Landroid/support/wearable/view/ActionPage;->OIxSLONuipCZIfyG(Landroid/content/res/TypedArray;II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_8b
    iput-object v2, v0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->OJZoBBBdMsSCbPkM(Lmm;)V

    goto/32 :goto_d1

    nop

    nop

    :goto_8d
    new-instance v2, Landroid/graphics/Point;

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

    :goto_8e
    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-static {v2, v6, v14}, Landroid/support/wearable/view/ActionPage;->YydoBIZAgGBrybEW(Landroid/content/res/TypedArray;II)I

    move-result v14

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    new-instance v2, Lmh;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_91
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    cmpl-float v15, v4, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const-string v1, "Can not set ActionLabel text to null"

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_95
    throw v0

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_97
    if-eq v15, v3, :cond_12

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v4, v15, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_99
    if-eq v15, v4, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_13
    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_9a
    if-eqz v15, :cond_14

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_14
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_9b
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_9c
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_9e
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/4 v6, 0x1

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

    :goto_a0
    goto/32 :goto_ca

    nop

    :goto_a1
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-static {v2, v4, v11}, Landroid/support/wearable/view/ActionPage;->FIVHdwwqNZZTDfmL(Landroid/content/res/TypedArray;IF)F

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iput-object v7, v6, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_a4
    const/16 v4, 0x8

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_a5
    if-eq v15, v4, :cond_15

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_12

    nop

    nop

    :goto_a6
    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

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

    :goto_a7
    iput v11, v1, Lmh;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a8
    const/4 v5, 0x0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_a9
    const/4 v4, 0x5

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-static {v2}, Landroid/support/wearable/view/ActionPage;->xPflpFIInhJMKlra(Landroid/content/res/TypedArray;)I

    move-result v15

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->NUHwSYtwOjTIyUOB(Lmh;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez v2, :cond_16

    nop

    goto/32 :goto_84

    nop

    nop

    :cond_16
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v2, v1, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

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

    :goto_af
    invoke-static {v2}, Landroid/support/wearable/view/ActionPage;->HPBZbQBZotufUuJN(Landroid/content/res/TypedArray;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_b0
    invoke-static {v2, v4}, Landroid/support/wearable/view/ActionPage;->VcSFOBJupRgInMCb(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;

    move-result-object v4

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

    nop

    :goto_b1
    move-object v12, v7

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :goto_b2
    invoke-static {v15}, Landroid/support/wearable/view/ActionPage;->vDtCvHYVrhdrKJKe(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;

    move-result-object v15

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

    nop

    nop

    :goto_b3
    iget-object v1, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_b4
    invoke-static {v0, v1}, Landroid/support/wearable/view/ActionPage;->VJVsxtcDDpVRIerl(Landroid/support/wearable/view/ActionPage;Landroid/view/View;)V

    goto/32 :goto_86

    nop

    nop

    :goto_b5
    iput-object v7, v6, Lmh;->a:Landroid/text/Layout;

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-static {v2, v3}, Landroid/support/wearable/view/ActionPage;->lZsTsaRLxoIoaxYK(Lmh;I)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    if-nez v15, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_17
    goto/32 :goto_a3

    nop

    nop

    :goto_b8
    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_b9
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->gojASeRCByIAnFVm(Lmh;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-static {v2, v6}, Landroid/support/wearable/view/ActionPage;->LKgUFFUcQZCJmLYz(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->QSDavtzTnUjjMXJq(Lmh;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-static {v15}, Landroid/support/wearable/view/ActionPage;->JTRDDcMRlurSnIrY(Lmm;)V

    goto/32 :goto_7a

    nop

    nop

    :goto_bd
    iget-object v6, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

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

    :goto_be
    invoke-static {v0, v1}, Landroid/support/wearable/view/ActionPage;->MIlgHQNFMTIgBdsw(Landroid/support/wearable/view/ActionPage;Landroid/view/View;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_bf
    invoke-static {v2, v4}, Landroid/support/wearable/view/ActionPage;->GIcpGijySnEnyvdo(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v15

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_c0
    invoke-static {v4, v6}, Landroid/support/wearable/view/ActionPage;->UjsDjxudXQpYtScF(Lmm;F)V

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_c1
    if-eq v15, v6, :cond_18

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_c2
    sget-object v2, Lmg;->b:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c3
    iget-object v15, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c4
    if-nez v15, :cond_19

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_41

    nop

    nop

    :goto_c5
    iput-object v2, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_c6
    const/16 v4, 0xc

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {v2, v4}, Landroid/support/wearable/view/ActionPage;->rzdKnHRlJUqZIuZa(Lmh;I)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->dYCUYqptahyeXgYP(Lmm;)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    return-void

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-static {v2, v5, v13}, Landroid/support/wearable/view/ActionPage;->LbmxRQUKifPBVRKp(Landroid/content/res/TypedArray;II)I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_cc
    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_cd
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_ce
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->MiTGIjNGdDbXtXWb(Lmh;)Landroid/content/Context;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_cf
    const/16 v4, 0x10

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v1, v0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_d1
    goto/16 :goto_48

    nop

    nop

    :goto_d2
    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_d3
    iget-object v6, v15, Lmm;->a:Landroid/graphics/drawable/ShapeDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_d4
    invoke-static {v2, v4, v15}, Landroid/support/wearable/view/ActionPage;->AfHrDqzRrxQeQxoU(Landroid/content/res/TypedArray;IF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-eq v15, v4, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-static {v6, v15}, Landroid/support/wearable/view/ActionPage;->tbsQOZrkGlhwFeaY(Landroid/graphics/Paint;I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_d7
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-static {v2, v4, v15}, Landroid/support/wearable/view/ActionPage;->aDPuPRXHOENgxlaA(Landroid/content/res/TypedArray;II)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_d9
    invoke-static {v15, v4}, Landroid/support/wearable/view/ActionPage;->CYTzSVBXqceELovZ(Lmm;Landroid/animation/StateListAnimator;)V

    :goto_da
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    cmpl-float v2, v2, v11

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_dc
    goto :goto_da

    nop

    nop

    nop

    :goto_dd
    goto/32 :goto_cc

    nop

    nop

    :goto_de
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->HBZFThwxvPyqsbfJ(Landroid/graphics/drawable/ShapeDrawable;)Landroid/graphics/Paint;

    move-result-object v6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_df
    if-eqz v15, :cond_1b

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

    :cond_1b
    goto/32 :goto_cb

    nop

    nop

    :goto_e0
    invoke-static {v4, v7}, Landroid/support/wearable/view/ActionPage;->PMmdRJwvEDlVglRx(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_e1
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_e2
    const/16 v4, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-direct {v2, v1}, Lmm;-><init>(Landroid/content/Context;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static {v15, v6}, Landroid/support/wearable/view/ActionPage;->pdSgvKFPhzeQNVQt(Lmh;I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const/16 v4, 0xf

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iput-object v4, v6, Lmh;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_e7
    const/16 v6, 0xa

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_e8
    if-nez v2, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :cond_1c
    :goto_e9
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_ea
    if-nez v4, :cond_1d

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-static {v6}, Landroid/support/wearable/view/ActionPage;->GcnNthxBaAkufYHn(Lmh;)V

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_ec
    const/high16 v15, 0x42700000    # 60.0f

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-static {v5, v4, v15}, Landroid/support/wearable/view/ActionPage;->DRZlDlybHEEeYSMS(IFLandroid/util/DisplayMetrics;)F

    move-result v4

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

    nop

    :goto_ee
    move v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop
.end method

.method public static AfHrDqzRrxQeQxoU(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static BrqTxugayMSXvOXz(Landroid/support/wearable/view/ActionPage;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CYTzSVBXqceELovZ(Lmm;Landroid/animation/StateListAnimator;)V
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

    :goto_1
    invoke-virtual {p0, p1}, Lmm;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CjiKCXStYAsUDUHd(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static CyydePhyBzRxwxXN(Lmm;Landroid/view/View$OnClickListener;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmm;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_1

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

.method public static DCsKpOFDWUddlqjg(Landroid/view/ViewGroup;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static DRZlDlybHEEeYSMS(IFLandroid/util/DisplayMetrics;)F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static FIVHdwwqNZZTDfmL(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static GIcpGijySnEnyvdo(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static GcnNthxBaAkufYHn(Lmh;)V
    .locals 0

    goto/32 :goto_1

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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmh;->requestLayout()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static GjuwRKnpZbXqKTXv(Landroid/view/WindowInsets;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static HBZFThwxvPyqsbfJ(Landroid/graphics/drawable/ShapeDrawable;)Landroid/graphics/Paint;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HFYChBAFaVTATYpi(Landroid/content/Context;I)Landroid/animation/StateListAnimator;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static HPBZbQBZotufUuJN(Landroid/content/res/TypedArray;)V
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

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HqKYJkFXLQyTklGq(II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JTRDDcMRlurSnIrY(Lmm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmm;->requestLayout()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static LKgUFFUcQZCJmLYz(Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static LbRHAjmSjqesXuGV(Landroid/support/wearable/view/ActionPage;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestLayout()V

    goto/32 :goto_1

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

    nop
.end method

.method public static LbmxRQUKifPBVRKp(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

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
    return v0

    nop

    nop

    nop
.end method

.method public static LiZWKckxDHmHQxeW(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LkkMqRiQOIJlYlIX(Lmm;Landroid/animation/StateListAnimator;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lmm;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LmFFdtBKlpWgsHZZ(IFLandroid/util/DisplayMetrics;)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static MIlgHQNFMTIgBdsw(Landroid/support/wearable/view/ActionPage;Landroid/view/View;)V
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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/ActionPage;->addView(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MWDnLYDSIoiFsslN(Lmm;Z)V
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

    :goto_1
    invoke-virtual {p0, p1}, Lmm;->setEnabled(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static MiTGIjNGdDbXtXWb(Lmh;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmh;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static NAUxdisqFAOcCaRd(Lmh;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0}, Lmh;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static NFZYnfmHoEhIDvgE(Landroid/content/res/TypedArray;I)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static NROfvKnLXDixIgAc(Lmm;II)V
    .locals 0

    goto/32 :goto_1

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

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lmm;->measure(II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static NSyCqzIdHxLKUqpx(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static NUHwSYtwOjTIyUOB(Lmh;)V
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

    :goto_1
    invoke-virtual {p0}, Lmh;->requestLayout()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static OIxSLONuipCZIfyG(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static OJZoBBBdMsSCbPkM(Lmm;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-virtual {p0}, Lmm;->requestLayout()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static OjMnLrsSodRFyDxI(Landroid/view/ViewGroup;Z)V
    .locals 0

    goto/32 :goto_1

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
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static PMmdRJwvEDlVglRx(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static QSDavtzTnUjjMXJq(Lmh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmh;->e()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static RkDlWCFZWOsSSgHB(Landroid/graphics/Point;II)V
    .locals 0

    goto/32 :goto_1

    nop

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

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static RxkAOUwhSVnLfxkw(Landroid/content/res/TypedArray;I)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

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
.end method

.method public static SLJxPTqsVNyiOIkr(Lmh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmh;->invalidate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static UANAfIWFAzPEUFyR(Lmh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmh;->invalidate()V

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
.end method

.method public static UVSurrRqcEDijYPF(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static UjsDjxudXQpYtScF(Lmm;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmm;->a(F)V

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
.end method

.method public static UkrBKIoPaMNxJHvW(II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

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
.end method

.method public static VJVsxtcDDpVRIerl(Landroid/support/wearable/view/ActionPage;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/wearable/view/ActionPage;->addView(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static VTYVIriEWhNOzUPl(Lmm;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmm;->getBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static VcSFOBJupRgInMCb(Landroid/content/res/TypedArray;I)Ljava/lang/CharSequence;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static XYcqafMWbOPuYfDB(Lmm;I)V
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

    :goto_1
    invoke-virtual {p0, p1}, Lmm;->b(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XnAQvmgJTWyapKhU(Lmh;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmh;->measure(II)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static YYgecQCFRAcQeNAb(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static YfjsVjtvqORcfzbv(Lmm;IIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lmm;->layout(IIII)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static YiNDNHhIkfSpDSmi(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static YydoBIZAgGBrybEW(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static ZaIajjoVlXzbkAtI(II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static ZfeRDSKYUXZySygQ(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

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

    nop
.end method

.method public static aDPuPRXHOENgxlaA(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static aSlZWlbOhbEcWqdL(Lmm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmm;->invalidate()V

    goto/32 :goto_1

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

.method public static acVaCvBcChQhRECO(Landroid/graphics/Point;II)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static cOGYEYDqcEvTPrqH(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static dHdhFfaxWYrTXMGN(FF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static dYCUYqptahyeXgYP(Lmm;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual {p0}, Lmm;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static dxypKVAqknYpTybq(Landroid/content/res/TypedArray;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static eWdlGMctHSnuVZPb(Lmh;IIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lmh;->layout(IIII)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static evhbXQtvbzfINYFx(Landroid/support/wearable/view/ActionPage;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->requestApplyInsets()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fOQfogqGnsLvrzHW(Landroid/view/ViewGroup;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static gTvaLDjoWjAkzuVd(Landroid/support/wearable/view/ActionPage;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ggDXKldViRLtvvub(II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static gojASeRCByIAnFVm(Lmh;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmh;->requestLayout()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static htmhehoOjEWLjhMf(Lmm;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmm;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static iVKGJqSXkDRPcBvN(Lmh;Ljava/lang/String;II)V
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

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Lmh;->d(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static iiIafQvzBuxkfbxL(Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jAogFVailaQkrTuQ(Lmh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmh;->invalidate()V

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

    nop

    nop
.end method

.method public static jPeogHKfvuvnrUkg(Lmh;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmh;->a(I)V

    goto/32 :goto_1

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

.method public static jfFqFdrBWsWQcRcS(Lmm;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Lmm;->measure(II)V

    goto/32 :goto_1

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
.end method

.method public static jtsTFtfdKNgvSwRb(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static kRYdPfWaKHXoKQkf(Lmh;)Landroid/content/Context;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmh;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static lZsTsaRLxoIoaxYK(Lmh;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lmh;->a(I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static mEBTKQoXpqTOZFWG(Landroid/support/wearable/view/ActionPage;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static pZNQUQJRDwsVvwvU(Lmm;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lmm;->getBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pdSgvKFPhzeQNVQt(Lmh;I)V
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lmh;->b(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static qEcsdybdTBhshvEN(Landroid/content/res/ColorStateList;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static rviCFqGfudJnSLto(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

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

    nop
.end method

.method public static rviEVfcszMMlsPMG(Lmm;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Lmm;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static rzdKnHRlJUqZIuZa(Lmh;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lmh;->b(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static sNgiTyxCkHmfMdKJ(Landroid/support/wearable/view/ActionPage;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/wearable/view/ActionPage;->getMeasuredHeight()I

    move-result v0

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

    nop

    :goto_1
    return v0

    nop
.end method

.method public static tbsQOZrkGlhwFeaY(Landroid/graphics/Paint;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static uxTGEPJXCCdwIbsQ(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static vDtCvHYVrhdrKJKe(Landroid/content/res/Resources;)Landroid/util/DisplayMetrics;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static vPtYNRrYVZtofRha(Landroid/view/WindowInsets;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static wQxWwYFglrgTEKnD(Landroid/view/WindowInsets;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static xPflpFIInhJMKlra(Landroid/content/res/TypedArray;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

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

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static ydqBPLBLrpIIiNVj(Landroid/content/res/TypedArray;IF)F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static yhnksOQqfyXfupNy(II)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static zTJUHQcHrJSLKsOB(II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

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

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static zbshaDeRUzixtOhX(Lmh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmh;->requestLayout()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    const/high16 v2, 0x3dc00000    # 0.09375f

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroid/support/wearable/view/ActionPage;->sNgiTyxCkHmfMdKJ(Landroid/support/wearable/view/ActionPage;)I

    move-result v1

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

    :goto_3
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    iget v1, p0, Landroid/support/wearable/view/ActionPage;->i:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->h:Z

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

    :goto_6
    invoke-static {p1}, Landroid/support/wearable/view/ActionPage;->GjuwRKnpZbXqKTXv(Landroid/view/WindowInsets;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Landroid/support/wearable/view/ActionPage;->dHdhFfaxWYrTXMGN(FF)F

    move-result v0

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

    :goto_8
    iput v0, p0, Landroid/support/wearable/view/ActionPage;->i:I

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Landroid/support/wearable/view/ActionPage;->wQxWwYFglrgTEKnD(Landroid/view/WindowInsets;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    iput-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->h:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iput v0, p0, Landroid/support/wearable/view/ActionPage;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    int-to-float v0, v0

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

    :goto_11
    iput-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->h:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v1, v0, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xd

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Landroid/support/wearable/view/ActionPage;->vPtYNRrYVZtofRha(Landroid/view/WindowInsets;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Landroid/support/wearable/view/ActionPage;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const v0, 0xc

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    mul-float/2addr v1, v2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_17

    nop

    nop

    :goto_1d
    return-object p1

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0}, Landroid/support/wearable/view/ActionPage;->BrqTxugayMSXvOXz(Landroid/support/wearable/view/ActionPage;)V

    :goto_20
    goto/32 :goto_c

    nop

    nop

    :goto_21
    invoke-static {p0}, Landroid/support/wearable/view/ActionPage;->LbRHAjmSjqesXuGV(Landroid/support/wearable/view/ActionPage;)V

    :goto_22
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/wearable/view/ActionPage;->fOQfogqGnsLvrzHW(Landroid/view/ViewGroup;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/wearable/view/ActionPage;->evhbXQtvbzfINYFx(Landroid/support/wearable/view/ActionPage;)V

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Landroid/support/wearable/view/ActionPage;->j:Z

    nop

    goto/32 :goto_5

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

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 3

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/support/wearable/view/ActionPage;->pZNQUQJRDwsVvwvU(Lmm;)I

    move-result p1

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

    :goto_1
    invoke-static {p0, p2, p1, p3, p4}, Landroid/support/wearable/view/ActionPage;->eWdlGMctHSnuVZPb(Lmh;IIII)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float p2, p4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p5, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    iget p5, p0, Landroid/support/wearable/view/ActionPage;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    div-float/2addr p2, p3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    iget p3, p0, Landroid/support/wearable/view/ActionPage;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr p4, p5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_a
    add-float/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    add-float/2addr v0, v1

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

    :goto_c
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    float-to-int p2, p2

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

    :goto_e
    sub-int/2addr p4, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    iget v0, p0, Landroid/support/wearable/view/ActionPage;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, v0, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_14
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iget v1, v1, Landroid/graphics/Point;->y:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_16
    float-to-int p5, p5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float p5, p5

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

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr p3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1e
    iget p1, p1, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f
    iget-object p3, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v1, p0, Landroid/support/wearable/view/ActionPage;->d:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    iget p5, p5, Landroid/graphics/Point;->y:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_22
    sub-float/2addr p1, p5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    float-to-int v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p3, p1, p5, v0, v1}, Landroid/support/wearable/view/ActionPage;->YfjsVjtvqORcfzbv(Lmm;IIII)V

    goto/32 :goto_2a

    nop

    nop

    :goto_27
    iget-object p4, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    float-to-int v1, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2a
    sub-int/2addr p4, p2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2b
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p4}, Landroid/support/wearable/view/ActionPage;->VTYVIriEWhNOzUPl(Lmm;)I

    move-result p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2d
    iget p1, p0, Landroid/support/wearable/view/ActionPage;->f:I

    nop

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

    :goto_2e
    iget p5, p0, Landroid/support/wearable/view/ActionPage;->d:F

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

    :goto_2f
    iget v2, p0, Landroid/support/wearable/view/ActionPage;->d:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p0, p0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_31
    sub-float/2addr p5, v0

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

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_0

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_34
    const/high16 p3, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 7

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int p1, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Landroid/support/wearable/view/ActionPage;->g:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v6}, Landroid/support/wearable/view/ActionPage;->UkrBKIoPaMNxJHvW(II)I

    move-result p0

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

    nop

    nop

    :goto_3
    iput v2, p0, Landroid/support/wearable/view/ActionPage;->c:I

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Landroid/support/wearable/view/ActionPage;->f:I

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    sub-float/2addr p2, v0

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

    nop

    :goto_8
    int-to-float v1, v0

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_9
    int-to-float p2, p1

    nop

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

    :goto_a
    mul-float/2addr v2, p2

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    add-float/2addr p1, v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_c
    iget v4, p0, Landroid/support/wearable/view/ActionPage;->c:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p2, v6}, Landroid/support/wearable/view/ActionPage;->zTJUHQcHrJSLKsOB(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_e
    invoke-static {v2, v3}, Landroid/support/wearable/view/ActionPage;->ggDXKldViRLtvvub(II)I

    move-result v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Landroid/support/wearable/view/ActionPage;->d:F

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1, p2}, Landroid/support/wearable/view/ActionPage;->DCsKpOFDWUddlqjg(Landroid/view/ViewGroup;II)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, v0, v2}, Landroid/support/wearable/view/ActionPage;->acVaCvBcChQhRECO(Landroid/graphics/Point;II)V

    goto/32 :goto_4d

    nop

    nop

    :goto_15
    invoke-static {v4, v6}, Landroid/support/wearable/view/ActionPage;->HqKYJkFXLQyTklGq(II)I

    move-result v4

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_16
    iput v2, p0, Landroid/support/wearable/view/ActionPage;->c:I

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2}, Landroid/support/wearable/view/ActionPage;->rviEVfcszMMlsPMG(Lmm;)I

    move-result v2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    float-to-int p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Landroid/support/wearable/view/ActionPage;->mEBTKQoXpqTOZFWG(Landroid/support/wearable/view/ActionPage;)I

    move-result p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    float-to-int v2, v2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-boolean v2, p0, Landroid/support/wearable/view/ActionPage;->h:Z

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

    :goto_1d
    iget p2, p0, Landroid/support/wearable/view/ActionPage;->f:I

    nop

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

    :goto_1e
    invoke-static {v3}, Landroid/support/wearable/view/ActionPage;->htmhehoOjEWLjhMf(Lmm;)I

    move-result v3

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

    :goto_1f
    mul-float/2addr v2, v3

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

    :goto_20
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_21
    iget v3, v2, Lmm;->e:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    iput v2, p0, Landroid/support/wearable/view/ActionPage;->d:F

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput p1, p0, Landroid/support/wearable/view/ActionPage;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_24
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_25
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_26
    const v0, 0x14

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_27
    mul-float/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_28
    iput v3, p0, Landroid/support/wearable/view/ActionPage;->d:F

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_29
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_2a
    mul-float/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2b
    iget p1, p1, Landroid/graphics/Point;->y:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v0, p1}, Landroid/support/wearable/view/ActionPage;->yhnksOQqfyXfupNy(II)I

    move-result v2

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

    nop

    :goto_2e
    int-to-float v0, v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    div-int/lit8 v0, v0, 0x2

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

    :goto_30
    div-float/2addr v2, v5

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_31
    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->a:Lmh;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p0}, Landroid/support/wearable/view/ActionPage;->gTvaLDjoWjAkzuVd(Landroid/support/wearable/view/ActionPage;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v3, v2, v4}, Landroid/support/wearable/view/ActionPage;->NROfvKnLXDixIgAc(Lmm;II)V

    :goto_34
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_35
    return-void

    nop

    nop

    :goto_36
    goto/32 :goto_44

    nop

    nop

    :goto_37
    sub-float/2addr p2, p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_38
    float-to-int p1, p2

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

    :goto_39
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p1, p2, p0}, Landroid/support/wearable/view/ActionPage;->XnAQvmgJTWyapKhU(Lmh;II)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3b
    const/high16 p1, 0x3dc00000    # 0.09375f

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3c
    goto :goto_34

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3e
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v2, v6}, Landroid/support/wearable/view/ActionPage;->ZaIajjoVlXzbkAtI(II)I

    move-result v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v6, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_41
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_42
    div-float/2addr v3, v5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget-object p1, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_13

    nop

    nop

    :goto_47
    const v3, 0x3ee66666    # 0.45f

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_45

    nop

    :goto_4a
    invoke-static {v2, v0, p1}, Landroid/support/wearable/view/ActionPage;->RkDlWCFZWOsSSgHB(Landroid/graphics/Point;II)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4c
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4d
    const p1, 0x3f645a1d    # 0.892f

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_4e
    iget p0, p0, Landroid/support/wearable/view/ActionPage;->g:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    mul-float/2addr v1, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_50
    int-to-float v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v3, v2, Lmm;->c:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_52
    const/high16 p1, 0x3f200000    # 0.625f

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v2, v3, v3}, Landroid/support/wearable/view/ActionPage;->jfFqFdrBWsWQcRcS(Lmm;II)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_54
    const/high16 v5, 0x40000000    # 2.0f

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

    :goto_55
    float-to-int v2, v2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_56
    const v2, 0x3edc28f6    # 0.43f

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v2, p0, Landroid/support/wearable/view/ActionPage;->e:Landroid/graphics/Point;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput p1, p0, Landroid/support/wearable/view/ActionPage;->i:I

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_5

    nop

    :goto_5c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    div-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_5e
    iget v0, p0, Landroid/support/wearable/view/ActionPage;->i:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop
.end method

.method public final setEnabled(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/support/wearable/view/ActionPage;->OjMnLrsSodRFyDxI(Landroid/view/ViewGroup;Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Landroid/support/wearable/view/ActionPage;->MWDnLYDSIoiFsslN(Lmm;Z)V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

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
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Landroid/support/wearable/view/ActionPage;->CyydePhyBzRxwxXN(Lmm;Landroid/view/View$OnClickListener;)V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setStateListAnimator(Landroid/animation/StateListAnimator;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object p0, p0, Landroid/support/wearable/view/ActionPage;->b:Lmm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p1}, Landroid/support/wearable/view/ActionPage;->LkkMqRiQOIJlYlIX(Lmm;Landroid/animation/StateListAnimator;)V

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
