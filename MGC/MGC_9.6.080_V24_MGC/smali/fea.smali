.class public final Lfea;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfet;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lfea;->a:I

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

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Lfew;F)Ljava/lang/Object;
    .locals 20

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_0
    if-ne v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v13, v5

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget v18, v14, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_3
    new-array v11, v3, [I

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

    :goto_4
    aget v2, v15, v2

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_5
    aput v5, v11, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_8
    invoke-static {v13, v2, v1}, Landroidx/wear/ambient/SharedLibraryVersion;->g(FII)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_9
    add-int/lit8 v13, v13, 0x1

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_a
    rem-int/lit8 v13, v12, 0x2

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_b
    move-object v0, v1

    nop

    nop

    :goto_c
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget v7, v9, v5

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_f
    invoke-direct {v1, v0, v11, v2}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v11, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_11
    check-cast v15, [I

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    throw v0

    nop

    :goto_13
    goto/32 :goto_141

    nop

    nop

    nop

    :goto_14
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_15
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_16
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_a9

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-gtz v12, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget v5, v10, v15

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual/range {p1 .. p1}, Lfew;->a()D

    move-result-wide v4

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

    nop

    :goto_1e
    aput v3, v0, v12

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

    :goto_1f
    goto/16 :goto_62

    nop

    nop

    :goto_20
    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_21
    cmpg-float v15, v13, v15

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v0, v11}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual/range {p1 .. p1}, Lfew;->i()V

    :goto_27
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_78

    nop

    :goto_29
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_2a
    div-int/2addr v6, v7

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2c
    if-lt v15, v6, :cond_3

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_3
    goto/32 :goto_84

    nop

    nop

    :goto_2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_2e
    aget v1, v14, v8

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move v14, v13

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

    :goto_30
    iget-object v4, v0, Liof;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ltz v18, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    array-length v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_34
    double-to-int v11, v13

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v2, v1, -0x1

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_83

    nop

    nop

    :goto_3b
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3c
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    double-to-float v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_3e
    move/from16 v3, v16

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_2c

    nop

    nop

    :goto_40
    check-cast v13, Ljava/lang/Float;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    float-to-double v13, v13

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v2, v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_44
    if-eq v2, v4, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    aget v14, v14, v15

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual/range {p1 .. p1}, Lfew;->p()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_47
    const/high16 v17, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v13, :cond_6

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_25

    nop

    nop

    :goto_4c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget v2, v0, Lfea;->a:I

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_50
    mul-int/2addr v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_52
    move v11, v10

    nop

    :goto_53
    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_54
    add-int/lit8 v12, v12, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_55
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_56
    check-cast v13, Ljava/lang/Float;

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

    nop

    :goto_57
    check-cast v14, [I

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_58
    double-to-int v10, v13

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_5a
    const/4 v2, 0x0

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

    :goto_5b
    move-object/from16 p1, v1

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_5c
    if-eqz v11, :cond_7

    nop

    goto/32 :goto_13f

    nop

    nop

    :cond_7
    goto/32 :goto_158

    nop

    nop

    :goto_5d
    goto/16 :goto_14f

    nop

    nop

    :goto_5e
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_77

    nop

    nop

    :goto_60
    div-int/lit8 v12, v9, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_61
    aput v13, v4, v12

    nop

    nop

    :goto_62
    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    aget v5, v10, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    :goto_64
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

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

    nop

    :goto_65
    goto/16 :goto_94

    nop

    nop

    :goto_66
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_67
    div-float v13, v13, v18

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v14, 0x3c23d70a    # 0.01f

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_53

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_10b

    nop

    nop

    :goto_6b
    add-float/2addr v13, v14

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move v11, v8

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_16d

    nop

    nop

    :goto_6e
    if-nez v4, :cond_8

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    :cond_8
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6f
    cmpl-float v14, v14, v13

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    :goto_70
    if-ltz v17, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    :cond_9
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-lt v9, v12, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_a
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move v12, v8

    nop

    nop

    :goto_73
    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_74
    move-object v14, v2

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v13

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_76
    sub-float v18, v18, v5

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

    :goto_77
    throw v0

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_128

    nop

    nop

    nop

    :goto_79
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_7a
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object/from16 v16, v2

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    const/4 v15, 0x1

    nop

    :goto_7d
    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    add-int/lit8 v14, v12, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move-object/from16 v16, v2

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

    :goto_81
    mul-float v5, v5, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_82
    aput v16, v0, v12

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

    :goto_83
    if-lez v18, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_84
    aget v16, v9, v15

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
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_87
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-interface {v1, v8, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16b

    nop

    nop

    :goto_89
    if-lez v15, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_129

    nop

    :goto_8b
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_8d
    add-int/lit8 v7, v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8f
    if-le v2, v12, :cond_d

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_90
    if-lez v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_113

    nop

    :goto_91
    if-lt v12, v13, :cond_f

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_92
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_93
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_96
    aget v15, v9, v8

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

    :goto_97
    float-to-int v5, v5

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_98
    array-length v1, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_99
    move v10, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_9a
    new-instance v1, Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_73

    nop

    nop

    :goto_9c
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast v4, Ljava/lang/Float;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9e
    if-ge v6, v7, :cond_10

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_96

    nop

    nop

    :goto_9f
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_11f

    nop

    nop

    :goto_a0
    goto/16 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/32 :goto_120

    nop

    nop

    :goto_a2
    const/16 v14, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_a3
    array-length v2, v14

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_a4
    cmpg-float v17, v16, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    aput v13, v4, v12

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const-wide v16, 0x406fe00000000000L    # 255.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_a8
    invoke-static {v5, v7, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_aa
    invoke-static {v5, v7, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_ab
    sub-float/2addr v13, v7

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    div-int/2addr v2, v6

    nop

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

    :goto_ad
    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_ae
    invoke-static {v13, v5, v14}, Landroidx/wear/ambient/SharedLibraryVersion;->g(FII)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_af
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_b0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_b1
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_b3
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_b4
    iput v2, v0, Lfea;->a:I

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    if-ltz v17, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    :cond_11
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    aget v5, v14, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/16 :goto_de

    nop

    nop

    nop

    :goto_b9
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    sub-int/2addr v6, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_bb
    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_bc
    aget v1, v15, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_bd
    if-lt v12, v11, :cond_12

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_12
    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_be
    invoke-static {v2, v5, v14, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_bf
    neg-int v7, v7

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_6d

    nop

    nop

    nop

    nop

    :goto_c1
    goto/32 :goto_ef

    nop

    nop

    :goto_c2
    array-length v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    double-to-int v13, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_c4
    float-to-int v2, v7

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_c5
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_c6
    cmpg-float v19, v18, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_c7
    if-lt v1, v2, :cond_13

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    mul-float v5, v5, v17

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

    :goto_c9
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    mul-float v7, v7, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    :goto_cb
    return-object v0

    nop

    :goto_cc
    goto/32 :goto_ed

    nop

    nop

    :goto_cd
    move-object/from16 v2, v16

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_ce
    move/from16 v16, v7

    nop

    :goto_cf
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual/range {p1 .. p1}, Lfew;->n()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_d1
    if-eqz v17, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    :cond_14
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    if-gez v15, :cond_15

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_d3
    rem-int/lit8 v15, v9, 0x4

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_d5
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_d6
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_d7
    const/4 v7, 0x2

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

    :goto_d8
    if-eq v4, v6, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_a7

    nop

    nop

    :goto_d9
    move v13, v12

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

    :goto_da
    move-object v1, v0

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    :goto_db
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_dc
    if-ne v15, v5, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_f5

    nop

    nop

    :goto_dd
    invoke-virtual/range {p1 .. p1}, Lfew;->g()V

    :goto_de
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_df
    const-string v5, "Unreachable code."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_e0
    cmpg-float v17, v3, v16

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

    :goto_e1
    goto/16 :goto_62

    nop

    :goto_e2
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    if-ne v15, v3, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    if-gtz v16, :cond_19

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    :cond_19
    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_e5
    invoke-static {v14, v13}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v15

    nop

    goto/32 :goto_164

    nop

    nop

    :goto_e6
    move v15, v14

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_bd

    nop

    nop

    :goto_e8
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_e9
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_ea
    check-cast v13, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    aput v13, v10, v11

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    if-ne v2, v3, :cond_1a

    nop

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

    :cond_1a
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_ef
    iget-object v0, v0, Liof;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    sub-int/2addr v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_f1
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v15, :cond_1b

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1b
    goto/32 :goto_a6

    nop

    nop

    :goto_f4
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v17

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

    :goto_f5
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    add-int/lit8 v7, v16, 0x1

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

    :goto_f8
    goto/16 :goto_25

    nop

    nop

    :goto_f9
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_fa
    if-eqz v6, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_1c
    goto/32 :goto_4b

    nop

    nop

    :goto_fb
    goto/16 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_109

    nop

    nop

    nop

    :goto_fd
    invoke-static {v14, v10, v11, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    :goto_fe
    goto/16 :goto_11b

    nop

    nop

    nop

    nop

    :goto_ff
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_100
    const/4 v7, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    :goto_101
    check-cast v1, [F

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_102
    aput v1, v11, v12

    nop

    :goto_103
    goto/32 :goto_162

    nop

    nop

    :goto_104
    iget-object v2, v0, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_105
    check-cast v4, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_106
    add-int v0, v0, v1

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_107
    goto/16 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_115

    nop

    nop

    nop

    :goto_109
    move-object v14, v4

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

    :goto_10a
    move v12, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    new-instance v0, Liof;

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_b2

    nop

    nop

    :goto_10d
    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_10f
    move-object/from16 p1, v1

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_110
    move-object v15, v4

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

    :goto_111
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

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

    :goto_112
    aget v3, v1, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    :goto_113
    goto/32 :goto_cc

    nop

    nop

    :goto_114
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_115
    if-ltz v16, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :cond_1d
    goto/32 :goto_f7

    nop

    nop

    :goto_116
    invoke-direct {v0, v4, v2, v5}, Liof;-><init>(Ljava/lang/Object;Ljava/lang/Object;[C)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_117
    new-array v10, v6, [F

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_118
    cmpl-float v4, v4, v9

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_119
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_11a
    goto/16 :goto_37

    nop

    nop

    :goto_11b
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11c
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_11d
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_11e
    if-lt v15, v6, :cond_1e

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1e
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_120
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

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

    :goto_121
    const/4 v6, 0x4

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_122
    iput v7, v0, Lfea;->a:I

    nop

    :goto_123
    goto/32 :goto_130

    nop

    nop

    nop

    :goto_124
    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v13

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_125
    mul-double v13, v13, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_126
    if-ltz v19, :cond_1f

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    array-length v11, v1

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_128
    aget v1, v15, v8

    nop

    nop

    nop

    :goto_129
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    new-array v4, v2, [F

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_12c
    cmpl-float v1, v13, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12d
    iget v12, v0, Lfea;->a:I

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    add-int/lit8 v5, v15, -0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12f
    if-eqz v4, :cond_20

    nop

    goto/32 :goto_123

    nop

    nop

    :cond_20
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    if-eq v2, v3, :cond_21

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_26

    nop

    nop

    :goto_131
    goto/16 :goto_3f

    nop

    :goto_132
    goto/32 :goto_3e

    nop

    nop

    :goto_133
    mul-double v13, v13, v16

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_135
    if-eqz v17, :cond_22

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_136
    new-array v0, v11, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_137
    sget-object v15, Lffd;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    :goto_138
    const/high16 v16, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    :goto_139
    div-float v13, v13, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    :goto_13a
    sub-float v16, v16, v7

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_13b
    new-array v2, v2, [I

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_13c
    cmpg-float v18, v16, v13

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_13d
    if-ne v15, v7, :cond_23

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_3c

    nop

    nop

    :goto_13e
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_140
    const/high16 v9, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_141
    aget v5, v10, v8

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_142
    if-ne v15, v7, :cond_24

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_143
    check-cast v14, [F

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

    :goto_144
    const/4 v7, 0x2

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

    :goto_145
    move v9, v8

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_146
    aput v13, v2, v12

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_147
    aput v13, v9, v11

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

    :goto_148
    aget v13, v1, v12

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

    nop

    :goto_149
    if-lt v14, v3, :cond_25

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    if-eqz v13, :cond_26

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    :cond_26
    goto/32 :goto_8c

    nop

    nop

    :goto_14b
    double-to-float v13, v13

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    mul-double v13, v13, v16

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_14d
    aget v7, v10, v15

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_14e
    add-float/2addr v5, v13

    nop

    nop

    nop

    nop

    :goto_14f
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    if-ge v1, v2, :cond_27

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_151
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_152
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_153
    aget v16, v9, v15

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_154
    if-gez v14, :cond_28

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_68

    nop

    nop

    :goto_155
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    const/4 v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_157
    check-cast v1, [F

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_158
    move-object v0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    :goto_159
    new-array v9, v6, [F

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_15a
    goto/16 :goto_de

    nop

    nop

    :goto_15b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_15c
    invoke-static {v13, v14, v15}, Landroidx/wear/ambient/SharedLibraryVersion;->g(FII)I

    move-result v14

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    aget v7, v10, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_15e
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    nop

    nop

    :goto_15f
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_160
    if-lt v12, v3, :cond_29

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :cond_29
    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_161
    aget v14, v4, v14

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_162
    add-int/lit8 v12, v12, 0x1

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_163
    float-to-int v5, v5

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_164
    invoke-static {v9, v13}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v16

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_165
    mul-float/2addr v13, v7

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v15

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :goto_167
    goto/16 :goto_62

    nop

    nop

    :goto_168
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    rem-int v0, v0, v1

    nop

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

    :goto_16a
    sub-float/2addr v7, v5

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    :goto_16b
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_16c
    aput v3, v0, v12

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    new-instance v0, Ljava/lang/IllegalArgumentException;

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

    :goto_16f
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_170
    goto/32 :goto_104

    nop

    nop

    nop
.end method
