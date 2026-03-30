.class public final Lris;
.super Lrjl;
.source "PG"


# instance fields
.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:F

.field private m:Z

.field private n:Z

.field private o:F


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FF)V
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v0, 0x13

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct/range {v0 .. v6}, Lris;->b1051a9d8893542362ad09051775f8f6m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    move v5, p5

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

    nop

    :goto_9
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b
    move v4, p4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    :goto_f
    const v1, 0x6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v2, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V
    .locals 17

    goto/32 :goto_9e

    nop

    nop

    :goto_0
    iget v3, v11, Lris;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-ltz v4, :cond_0

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_123

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_48

    nop

    nop

    :goto_3
    iget-object v7, v1, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_4
    div-double/2addr v13, v9

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_6
    mul-float/2addr v4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr v4, v14

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v15, v11, Lris;->k:I

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v1, Lsai;

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_a
    iget v5, v11, Lris;->o:F

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_b
    invoke-virtual {v2, v4, v3, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    :goto_c
    goto/32 :goto_104

    nop

    nop

    nop

    :goto_d
    iget v2, v11, Lris;->e:F

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_f
    iget-object v6, v11, Lris;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_10
    move/from16 v7, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_11
    move-object/from16 v1, p1

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_12
    const/4 v3, 0x0

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

    :goto_13
    check-cast v0, Lsai;

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

    :goto_14
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, v7}, Lsai;-><init>([B)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    float-to-double v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    mul-float/2addr v9, v8

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_18
    move/from16 p9, v0

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

    :goto_19
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_36

    nop

    nop

    :goto_1a
    goto/16 :goto_ed

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v6, v11, Lris;->h:F

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

    :goto_1d
    iget-boolean v9, v11, Lris;->n:Z

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_1e
    if-eqz v15, :cond_1

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v12, p2

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_20
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_21
    div-float/2addr v5, v6

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

    nop

    :goto_22
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v4, v2, v7, v9}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto/32 :goto_13f

    nop

    nop

    nop

    :goto_26
    double-to-float v5, v5

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

    :goto_27
    iget v2, v11, Lris;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_28
    const v6, 0x3c23d70a    # 0.01f

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_29
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

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

    :goto_2a
    invoke-virtual {v12, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v6, [F

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v1, Lsai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    float-to-double v5, v5

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    :goto_2f
    invoke-virtual {v10, v13}, Lrir;->b(Z)Z

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_30
    iget-object v0, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

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

    :goto_31
    cmpl-float v2, v13, v1

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct/range {v0 .. v10}, Lris;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_33
    move-object/from16 v2, p2

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move/from16 p6, v0

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v6, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-boolean v13, v11, Lris;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v10, v11, Lris;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-boolean v13, v11, Lris;->n:Z

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_39
    if-nez p10, :cond_3

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

    :cond_3
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move/from16 v9, p9

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    float-to-double v5, v2

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    double-to-float v9, v13

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v13, v13, Lrjd;->i:I

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_3f
    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_40
    invoke-direct/range {p3 .. p9}, Lris;->b1051a9d8893542362ad09051775f8f6m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FFF)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v9, v0, Lsai;->a:Ljava/lang/Object;

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

    :goto_42
    move-object/from16 p4, p1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v11, p0

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

    :goto_44
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_46
    invoke-virtual/range {p0 .. p0}, Lris;->g()V

    :goto_47
    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2, v8}, Landroid/graphics/Matrix;->setRotate(F)V

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v6, v1, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4a
    add-float/2addr v5, v5

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v4, v1, v2, v6, v0}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_58

    nop

    nop

    :goto_4c
    div-float v9, p9, v9

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :cond_4
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_4e
    move/from16 p8, v2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4f
    const-wide v15, 0x401921fb54442d18L    # 6.283185307179586

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_50
    div-float/2addr v0, v8

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_52
    move-object/from16 p5, p2

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_53
    if-eqz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e7

    nop

    nop

    :goto_54
    invoke-static {v3, v5, v0}, Lqqy;->o(FFF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-direct/range {v0 .. v10}, Lris;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_56
    invoke-direct/range {p3 .. p8}, Lris;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FF)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v10, v0, Lsai;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_58
    new-instance v0, Lsai;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return-void

    nop

    :goto_5a
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5b
    cmpl-float v15, v10, v15

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    mul-float/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_5d
    move-object/from16 p3, p1

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_5e
    iget v2, v11, Lris;->e:F

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move/from16 p5, v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_61
    sub-float v6, v1, v5

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v0, v11, Lris;->c:Landroid/graphics/Path;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_63
    div-float/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_64
    iget v5, v11, Lris;->h:F

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_65
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v6, Lrjd;

    nop

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

    :goto_67
    check-cast v0, Lsai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_68
    iput v3, v11, Lris;->l:F

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move/from16 p7, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_6a
    float-to-double v8, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_6b
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_6c
    if-gez v6, :cond_6

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_118

    nop

    nop

    nop

    :goto_6d
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    neg-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_6f
    div-float/2addr v5, v6

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

    :goto_70
    iget v10, v11, Lris;->g:F

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

    :goto_71
    move-object/from16 p5, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_72
    if-nez v10, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13c

    nop

    nop

    nop

    :goto_73
    if-eqz v15, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_74
    sub-float v0, v0, p3

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_76
    if-lez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    :cond_9
    goto/32 :goto_11e

    nop

    :goto_77
    div-float/2addr v6, v8

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_78
    iget v14, v11, Lris;->h:F

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_79
    mul-float v10, v10, p8

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

    :goto_7a
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_7b
    const v5, -0x40828f5c    # -0.99f

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_7c
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7d
    move/from16 p8, v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct/range {p3 .. p8}, Lris;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FF)V

    :goto_7f
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_80
    cmpl-float v0, v0, v3

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_81
    new-instance v6, Lsai;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_82
    invoke-virtual {v4, v1, v9, v10}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto/32 :goto_c4

    nop

    nop

    :goto_83
    div-float/2addr v1, v7

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_84
    if-eqz p10, :cond_a

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_85
    div-float/2addr v4, v8

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_86
    invoke-direct {v1, v15}, Lsai;-><init>([B)V

    goto/32 :goto_14a

    nop

    nop

    :goto_87
    iget v6, v11, Lris;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iput v10, v11, Lris;->j:F

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_89
    iget v2, v11, Lris;->h:F

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    add-float/2addr v2, v9

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move/from16 v8, p8

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v1, v6}, Lsai;->e(F)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-direct {v1, v7, v7, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_bc

    nop

    nop

    :goto_8e
    check-cast v1, Lsai;

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_8f
    rem-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual/range {p0 .. p0}, Lris;->g()V

    :goto_91
    goto/32 :goto_a2

    nop

    nop

    :goto_92
    if-nez v6, :cond_b

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_93
    mul-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_94
    neg-float v7, v6

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_95
    iget-object v6, v11, Lris;->c:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_96
    iget v5, v11, Lris;->e:F

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_97
    sget-object v13, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

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

    :goto_98
    neg-float v8, v9

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    :goto_99
    cmpg-float v6, v0, v3

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_9a
    iget v15, v11, Lris;->j:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_9b
    iget v2, v11, Lris;->o:F

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const v1, 0x1d

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    iget v6, v11, Lris;->h:F

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_9f
    invoke-direct {v6, v15}, Lsai;-><init>([B)V

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_a0
    add-float/2addr v0, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_a1
    move/from16 p7, v5

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

    nop

    nop

    :goto_a2
    invoke-virtual {v6}, Landroid/graphics/Path;->rewind()V

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v1, v8}, Lsai;->e(F)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v13, v11, Lris;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    check-cast v10, Lrjd;

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

    nop

    :goto_a7
    move v4, v13

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    move v10, v9

    nop

    nop

    :goto_a9
    goto/32 :goto_6

    nop

    nop

    :goto_aa
    check-cast v9, [F

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    mul-float v2, v2, p8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_ac
    iget-boolean v0, v11, Lris;->m:Z

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

    :goto_ad
    iput v14, v11, Lris;->l:F

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_ae
    check-cast v10, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_af
    move v4, v2

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

    :goto_b0
    neg-float v6, v6

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_b1
    double-to-float v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_b2
    invoke-static {v6, v1, v4}, Lqqy;->o(FFF)F

    move-result v4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    add-float/2addr v2, v4

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

    :goto_b4
    goto/16 :goto_d4

    nop

    :goto_b5
    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_b6
    const/high16 v14, 0x42b40000    # 90.0f

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

    :goto_b7
    cmpg-float v4, v2, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b8
    invoke-direct {v4, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_b9
    cmpg-float v2, v2, v1

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_ba
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_bb
    add-float/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_bc
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_bd
    div-float/2addr v4, v7

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    add-float v6, v2, v14

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    if-ltz v13, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_c
    goto/32 :goto_c0

    nop

    nop

    :goto_c0
    div-float/2addr v0, v6

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_c1
    iget-boolean v13, v11, Lris;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_c2
    move v3, v4

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_c3
    move-object/from16 v1, p1

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

    nop

    :goto_c4
    new-instance v1, Lsai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_c5
    if-ne v13, v15, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    :cond_d
    :goto_c6
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_c7
    sub-float/2addr v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_c8
    return-void

    nop

    nop

    nop

    nop

    :goto_c9
    goto/32 :goto_14

    nop

    nop

    :goto_ca
    iput v2, v11, Lris;->j:F

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_cb
    move-object/from16 p3, p0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_cc
    move-object/from16 v0, p0

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

    :goto_cd
    move/from16 v6, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_ce
    iput v13, v11, Lris;->k:I

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_cf
    add-float v0, p4, v1

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

    :goto_d0
    move/from16 v10, p10

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_d1
    move-object/from16 p8, p2

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    if-nez v13, :cond_e

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

    :cond_e
    goto/32 :goto_107

    nop

    nop

    :goto_d3
    sget-object v13, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    nop

    nop

    :goto_d4
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    if-nez v13, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    :cond_f
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    add-float v6, v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_d7
    iget-object v3, v1, Lsai;->a:Ljava/lang/Object;

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

    :goto_d8
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v1, v2}, Lsai;->c(F)V

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_da
    add-float/2addr v4, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_db
    new-instance v1, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_dc
    move/from16 v6, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_dd
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_de
    iget-object v9, v1, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_df
    move-object/from16 p6, v0

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v1, v4}, Lsai;->e(F)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget v5, v11, Lris;->f:F

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

    nop

    :goto_e2
    cmpl-float v15, v14, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    cmpl-float v6, v3, v6

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v12, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    move/from16 v5, p5

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    if-ltz v2, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_10
    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    iget v0, v11, Lris;->f:F

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

    :goto_e8
    iget v2, v11, Lris;->e:F

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const/high16 v8, 0x43b40000    # 360.0f

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_ea
    check-cast v9, [F

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget v6, v11, Lris;->h:F

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    return-void

    nop

    nop

    :goto_ed
    goto/32 :goto_11d

    nop

    nop

    :goto_ee
    mul-double/2addr v13, v15

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_ef
    if-eqz v10, :cond_11

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_f0
    check-cast v13, Lrjd;

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

    :goto_f1
    goto/16 :goto_148

    nop

    :goto_f2
    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v6, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_12
    :goto_f4
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v6, v9}, Lrir;->b(Z)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_f7
    invoke-direct {v1, v7}, Lsai;-><init>([B)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    add-float/2addr v5, v0

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    :goto_f9
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

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

    nop

    :goto_fa
    new-instance v4, Landroid/util/Pair;

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_fb
    neg-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    :goto_fd
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_ff
    move/from16 v5, p5

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_100
    move/from16 p8, v2

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_101
    int-to-float v6, v6

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_102
    div-float/2addr v2, v5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_103
    invoke-virtual {v1, v6}, Lsai;->c(F)V

    goto/32 :goto_db

    nop

    nop

    :goto_104
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

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

    :goto_105
    check-cast v13, Lrjd;

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_106
    check-cast v3, [F

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_107
    iget-object v13, v11, Lris;->a:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    :goto_108
    if-gtz v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    :cond_13
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_109
    goto/16 :goto_c

    nop

    nop

    :goto_10a
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_10b
    sub-float/2addr v4, v5

    nop

    :goto_10c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    add-float v6, v2, v0

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    cmpl-float v6, p8, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_10f
    cmpl-float v6, v5, v3

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

    :goto_110
    const/4 v6, 0x0

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

    :goto_111
    iget-object v2, v11, Lris;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_112
    if-lez v2, :cond_14

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    cmpl-float v6, v2, v6

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    :goto_114
    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    :goto_115
    iget v15, v11, Lris;->l:F

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_116
    rem-float v2, p3, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_117
    new-instance v13, Lsai;

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_118
    mul-float/2addr v5, v2

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

    :goto_119
    const/high16 v6, 0x43340000    # 180.0f

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    const/4 v7, 0x0

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

    :goto_11b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    move-object/from16 p6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iget v2, v11, Lris;->f:F

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_11e
    goto/32 :goto_c9

    nop

    nop

    :goto_11f
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_120
    cmpg-float v13, v0, v6

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_121
    iget v10, v11, Lris;->i:F

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

    :goto_122
    div-float/2addr v2, v8

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

    nop

    :goto_123
    add-float/2addr v2, v1

    nop

    nop

    nop

    :goto_124
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_126
    move-object/from16 p3, p0

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_127
    add-float v13, v4, v0

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

    nop

    :goto_128
    invoke-virtual {v1, v6}, Lsai;->e(F)V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_129
    if-gtz v6, :cond_15

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_12a
    div-float/2addr v5, v7

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_12b
    invoke-virtual {v0, v8}, Lsai;->e(F)V

    goto/32 :goto_a4

    nop

    nop

    :goto_12c
    iget v6, v11, Lris;->h:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v1, v6}, Lsai;->c(F)V

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    iget v13, v13, Lrjd;->h:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    float-to-double v13, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :goto_130
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v1

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_131
    move v4, v5

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_132
    check-cast v7, [F

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    div-float/2addr v2, v7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_134
    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_135
    check-cast v1, Lsai;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_136
    iget-object v2, v11, Lris;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_137
    add-float/2addr v6, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_138
    move v8, v3

    nop

    nop

    nop

    nop

    nop

    :goto_139
    goto/32 :goto_8f

    nop

    nop

    :goto_13a
    invoke-virtual {v12, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_13b
    move-object/from16 p4, v1

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_13c
    iget v10, v11, Lris;->h:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_13d
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    mul-float/2addr v0, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_13f
    new-instance v2, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_140
    invoke-static {v0, v3, v1}, Ldvu;->y(FFF)F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_141
    sub-float/2addr v0, v6

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

    :goto_142
    iget-object v4, v11, Lris;->d:Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_143
    sub-float v0, p4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_144
    invoke-direct {v4, v6, v13}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_145
    cmpl-float v0, p4, p3

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

    :goto_146
    new-instance v4, Landroid/util/Pair;

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_147
    invoke-virtual {v1, v0, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_148
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_149
    sub-float/2addr v0, v5

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    if-eqz v10, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    iget-object v1, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    if-eqz v6, :cond_17

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :cond_17
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_14d
    goto/16 :goto_7f

    nop

    :goto_14e
    goto/32 :goto_f

    nop

    nop

    :goto_14f
    iget v8, v11, Lris;->h:F

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_150
    double-to-float v6, v8

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_151
    check-cast v1, Lsai;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_152
    mul-float/2addr v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_153
    goto/16 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_154
    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_155
    iget-object v1, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    move-object/from16 p4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_157
    invoke-direct {v13, v15}, Lsai;-><init>([B)V

    goto/32 :goto_144

    nop

    nop

    nop

    :goto_158
    add-float/2addr v4, v5

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_159
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    iget v6, v11, Lris;->l:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_15b
    move-object/from16 p6, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_15c
    move/from16 v5, p6

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_15d
    move/from16 p7, v6

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

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lrjd;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lris;->a:Lrir;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    :goto_4
    iget v0, p0, Lrjd;->m:I

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

    :goto_5
    iget p0, p0, Lrjd;->n:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    add-int/2addr p0, p0

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
.end method

.method public constructor <init>(Lrjd;)V
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
    invoke-direct {p0, p1}, Lrjl;-><init>(Lrir;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FFF)V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lris;->i([F)F

    move-result p0

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

    :goto_1
    aget p0, p0, p5

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, [F

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    div-float/2addr p0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    div-float/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    neg-float v2, p4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_a
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    div-float/2addr p4, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

    move-result p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1d

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

    :goto_e
    mul-float/2addr v0, p5

    nop

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

    nop

    :goto_f
    check-cast p0, [F

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    neg-float p0, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    invoke-direct {v3, v2, p0, p4, p5}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    div-float/2addr v2, v1

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

    :goto_14
    iget-object p0, p3, Lsai;->a:Ljava/lang/Object;

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

    :goto_15
    aget p4, p0, p4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    :goto_17
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p4, 0x0

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

    nop

    :goto_1a
    iget-object p0, p3, Lsai;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p6, p6}, Landroid/graphics/Canvas;->scale(FF)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    iget p0, p0, Lris;->e:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lris;->f:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1f
    div-float/2addr p5, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v1, 0x40000000    # 2.0f

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_14

    nop

    nop

    :goto_22
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_28

    nop

    nop

    :goto_24
    new-instance v3, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, p4, p0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    :goto_28
    iget v0, p0, Lris;->e:F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lris;->51550bab6b6440a4fd45f825c221b363m()I

    move-result p0

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
    return p0

    nop

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lris;->51550bab6b6440a4fd45f825c221b363m()I

    move-result p0

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

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 8

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v5, v4, Lrjd;->m:I

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_2
    div-float/2addr v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_5
    if-nez p4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    :goto_6
    check-cast p1, Lrjd;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr v3, v6

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p4, p1, Lrjd;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_80

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

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

    :goto_e
    const v1, 0x18

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

    :goto_f
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sub-int/2addr p2, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_12
    iget p1, p1, Lrjd;->b:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    iput p2, p0, Lris;->g:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0}, Lris;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v3

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

    :goto_17
    invoke-virtual {p1, v3, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput p1, p0, Lris;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v4, p1, Lrjd;->e:I

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    :goto_1b
    int-to-float v6, v6

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_1c
    add-float/2addr v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_1d
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lris;->a:Lrir;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_1f
    neg-float p2, v5

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

    :goto_20
    if-nez p4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_21
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_22
    cmpg-float v2, v1, p1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput p2, p0, Lris;->h:F

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_24
    iget p4, p1, Lrjd;->f:I

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_25
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    :goto_27
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-float/2addr p2, p3

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

    :goto_29
    goto/16 :goto_58

    nop

    nop

    :goto_2a
    goto/32 :goto_2e

    nop

    nop

    :goto_2b
    iget p1, p1, Lrjd;->f:I

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

    nop

    nop

    :goto_2c
    if-eq v4, v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_2d
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput p3, p0, Lris;->o:F

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2f
    if-ne p1, p2, :cond_5

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_30
    iput p2, p0, Lris;->e:F

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sub-float v2, v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    div-float/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_c

    nop

    nop

    :goto_34
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    int-to-float p1, p1

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

    :goto_36
    if-nez p5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p5, :cond_7

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_38
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_39
    invoke-direct {p0}, Lris;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_3a
    iput-boolean v2, p0, Lris;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x0

    nop

    nop

    :goto_3c
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3d
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3e
    int-to-float p2, p2

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget v4, p1, Lrjd;->f:I

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

    nop

    :goto_40
    goto/16 :goto_56

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_42
    sub-float/2addr p2, v2

    nop

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

    nop

    :goto_43
    add-float/2addr v1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_2a

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 p2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_4a
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4b
    iget v6, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast p2, Lrjd;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    div-float/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_4e
    move p5, v3

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object p2, p0, Lris;->a:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_51
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p1, Lrjd;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_53
    iget p2, p1, Lrjd;->j:I

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

    :goto_54
    mul-float v1, v5, v2

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_55
    move p5, v3

    nop

    :goto_56
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_45

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_82

    nop

    nop

    nop

    :goto_59
    const/high16 p2, -0x3d4c0000    # -90.0f

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_5a
    if-nez p5, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :cond_8
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v4, v4, Lrjd;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5c
    invoke-virtual {p1, p2, p2, v5, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget p2, p1, Lrjd;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5e
    iget v1, p1, Lrjd;->a:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/32 :goto_4f

    nop

    nop

    :goto_61
    iput p2, p0, Lris;->h:F

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

    nop

    :goto_62
    int-to-float v2, v2

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

    :goto_63
    iget-object p1, p0, Lris;->a:Lrir;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_64
    mul-float/2addr p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_65
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_66
    iget p2, p2, Lrjd;->o:I

    nop

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

    :goto_67
    add-int v0, v0, v1

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

    :goto_68
    add-float/2addr p2, v2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_69
    div-float/2addr p2, v7

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

    :goto_6a
    if-lez v2, :cond_9

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5f

    nop

    nop

    :goto_6b
    const/high16 p2, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6c
    move v3, p5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6d
    iput p2, p0, Lris;->h:F

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_6e
    iget p2, p1, Lrjd;->m:I

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-ne v4, v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_a
    :goto_70
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_71
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_72
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_73
    check-cast v4, Lrjd;

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

    :goto_74
    int-to-float v5, v5

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_75
    mul-float/2addr p2, p3

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

    :goto_76
    mul-float v3, v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_77
    if-ne p4, v3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    :goto_78
    if-nez p5, :cond_c

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7a
    div-float v1, p2, v7

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

    :goto_7b
    if-eqz p4, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_7c
    mul-float/2addr v2, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-eq p4, v1, :cond_e

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :cond_e
    :goto_80
    goto/32 :goto_42

    nop

    nop

    :goto_81
    iget-object v4, p0, Lris;->a:Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_83
    iget p2, p2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lrjk;I)V
    .locals 14

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    iget v9, v0, Lrjk;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    const v1, 0xa

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

    nop

    :goto_2
    iget v11, v0, Lrjk;->f:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    move-object v3, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    move-object v2, p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    move-object/from16 v4, p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    move-object v13, p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xc

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

    :goto_f
    iget v5, v0, Lrjk;->a:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_11
    move-object/from16 v0, p3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, v0, Lrjk;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    iget v1, v0, Lrjk;->c:I

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

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    const/4 v12, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v10, v0, Lrjk;->e:F

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

    :goto_19
    iget v6, v0, Lrjk;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1a
    move v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v1, v0, Lrjk;->h:Z

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

    :goto_1c
    move/from16 v2, p4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1, v2}, Lrgw;->e(II)I

    move-result v7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct/range {v2 .. v12}, Lris;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    goto/32 :goto_6

    nop

    nop

    :goto_1f
    iput-boolean v1, v2, Lris;->n:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 11

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-static/range {p5 .. p6}, Lrgw;->e(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    move/from16 v6, p7

    nop

    goto/32 :goto_4

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

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move/from16 v7, p7

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct/range {v0 .. v10}, Lris;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_a
    move v4, p4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x14

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    move-object v2, p2

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

    :goto_f
    iput-boolean v0, v1, Lris;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_13
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    move v3, p3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    const/4 v8, 0x0

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final g()V
    .locals 18

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v5, Lrjd;

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

    :goto_2
    iget-object v10, v0, Lris;->b:Landroid/graphics/Path;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v16, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5
    iget-object v11, v0, Lris;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-virtual {v10, v4, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object v3, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v11, 0x3f0d6289

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

    :goto_9
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_b
    div-float/2addr v5, v11

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_c
    move v4, v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v14, [F

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

    nop

    :goto_f
    aget v7, v2, v13

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_10
    new-instance v4, Lsai;

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    :goto_12
    iget v3, v0, Lris;->i:F

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_14
    const/16 v16, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v12, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_73

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7f

    nop

    nop

    :goto_18
    iget-object v1, v0, Lris;->b:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Lris;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v6, Lsai;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    neg-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v17, 0x0

    nop

    nop

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

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v10, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v0, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v4, v3}, Lsai;->d(F)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v3, v0, Lris;->j:F

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

    :goto_24
    iget-object v3, v2, Lsai;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_25
    invoke-direct {v8, v7}, Lsai;-><init>([B)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v5, Lrjd;

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    int-to-float v9, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    div-float/2addr v4, v6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_2a
    iput v4, v0, Lris;->i:F

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_2b
    move v5, v6

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

    nop

    :goto_2c
    iget-object v13, v6, Lsai;->a:Ljava/lang/Object;

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

    :goto_2d
    invoke-virtual {v2, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2, v8, v13, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

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

    :goto_30
    invoke-virtual {v8, v6}, Lsai;->c(F)V

    goto/32 :goto_9b

    nop

    nop

    :goto_31
    add-int/2addr v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_32
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v10}, Landroid/graphics/Path;->rewind()V

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_37
    const/high16 v12, -0x40800000    # -1.0f

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_38
    aget v4, v3, v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_39
    invoke-direct {v2, v15}, Lsai;-><init>(Lsai;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, v0, Lris;->a:Lrir;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3b
    check-cast v3, [F

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-lt v2, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_3e
    const/high16 v11, 0x40000000    # 2.0f

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3f
    check-cast v14, [F

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_40
    check-cast v2, Lrjd;

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

    :goto_41
    new-instance v12, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_d

    nop

    :goto_44
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_45
    iget-object v2, v0, Lris;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v13, [F

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

    :goto_47
    iget v7, v0, Lris;->i:F

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_48
    iget v8, v0, Lris;->i:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v2, v9, v13, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto/32 :goto_15

    nop

    nop

    :goto_4a
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    aget v6, v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4e
    add-float/2addr v9, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4f
    iget-object v1, v0, Lris;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_50
    const/high16 v15, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    div-float/2addr v7, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_52
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_53
    aget v5, v3, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_54
    if-lt v4, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v2, Lsai;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_57
    const/high16 v9, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v3, v4, Lsai;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_59
    const/4 v1, 0x0

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

    :goto_5a
    const/4 v13, 0x1

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

    :goto_5b
    iget-object v13, v8, Lsai;->a:Ljava/lang/Object;

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

    :goto_5c
    mul-float/2addr v3, v5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5e
    iget-object v2, v0, Lris;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    new-instance v8, Lsai;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_60
    iget-boolean v3, v0, Lris;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_61
    check-cast v15, Lsai;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_62
    iget-object v3, v0, Lris;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-direct {v4, v2}, Lsai;-><init>(Lsai;)V

    goto/32 :goto_7e

    nop

    nop

    :goto_65
    iget v3, v0, Lris;->h:F

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

    :goto_66
    add-int/lit8 v14, v14, 0x1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v10, v0, Lris;->b:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v2, v15, Lsai;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_69
    int-to-float v6, v5

    nop

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

    :goto_6a
    const v0, 0xf

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

    nop

    nop

    :goto_6b
    invoke-virtual {v2, v3}, Lrir;->b(Z)Z

    move-result v2

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_6c
    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_6d
    move/from16 v14, v16

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_6e
    float-to-int v5, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_6f
    mul-float/2addr v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_70
    const/high16 v4, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_71
    invoke-virtual {v2, v3, v1}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget v5, v5, Lrjd;->i:I

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast v2, Lsai;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_75
    const v12, -0x40f29d77

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_76
    add-float v6, v3, v3

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

    :goto_77
    move-object v15, v3

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_78
    div-float v5, v4, v5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_79
    aget v8, v2, v1

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

    :goto_7a
    const v1, 0x3

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

    :goto_7b
    iget-object v5, v0, Lris;->a:Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_7d
    const/high16 v13, 0x3f800000    # 1.0f

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

    nop

    :goto_7e
    new-instance v2, Lsai;

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

    :goto_7f
    iget-object v5, v0, Lris;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_80
    const v5, 0x3ef5c28f    # 0.48f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_81
    iget-object v2, v2, Lsai;->a:Ljava/lang/Object;

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

    :goto_82
    iget-boolean v5, v0, Lris;->n:Z

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_83
    iget-object v3, v0, Lris;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_92

    nop

    nop

    :goto_85
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v2, v3}, Lsai;->d(F)V

    goto/32 :goto_58

    nop

    nop

    :goto_87
    aget v4, v3, v1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const/high16 v8, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_89
    iget-object v14, v6, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_8a
    div-float/2addr v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v3, v0, Lris;->b:Landroid/graphics/Path;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-nez v2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v14, v8, Lsai;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual/range {v11 .. v17}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    const/4 v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_90
    check-cast v13, [F

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move v14, v13

    nop

    nop

    :goto_92
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_93
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget v5, v5, Lrjd;->h:I

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

    :goto_95
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_96
    move-object v2, v15

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move v6, v7

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_98
    aget v3, v3, v13

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

    nop

    :goto_99
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast v2, [F

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_9b
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_9c
    check-cast v2, [F

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_9d
    iget-object v2, v0, Lris;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    const/4 v8, 0x0

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

    :goto_9f
    iget-object v4, v0, Lris;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_a0
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_a2
    const/4 v7, 0x0

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

    nop

    :goto_a3
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_a4
    const v7, 0x3f0d6289

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const v15, 0x3f0d6289

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-direct {v6, v7}, Lsai;-><init>([B)V

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_a7
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_4c

    nop

    nop

    :goto_a9
    new-instance v2, Landroid/graphics/Matrix;

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

    :goto_aa
    check-cast v3, [F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const v14, -0x40f29d77

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_ac
    mul-float/2addr v9, v7

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    const v6, -0x40f29d77

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v6, 0x3

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_af
    const/high16 v2, 0x3f800000    # 1.0f

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

    :goto_b0
    aget v9, v2, v13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b1
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b2
    if-lt v14, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_5
    goto/32 :goto_6c

    nop

    nop

    :goto_b3
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    move v7, v9

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop
.end method
