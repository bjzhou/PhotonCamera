.class public final Lrjo;
.super Lrjl;
.source "PG"


# instance fields
.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:I

.field private k:Z

.field private l:Z

.field private m:F


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;Lsai;FF)V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    iget-object p0, p3, Lsai;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_1
    mul-float/2addr v0, p6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v3, v0, v0, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-float/2addr v0, p0

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

    nop

    :goto_4
    iget-object p4, p3, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    neg-float p6, p6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p5, 0x0

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

    :goto_7
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_39

    nop

    nop

    :goto_9
    aget p6, p6, p0

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

    :goto_a
    iget p0, p0, Lrjo;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    sget-object p0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-static {p0}, Lrjo;->i([F)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_d
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_e
    invoke-static {p5, v0}, Ljava/lang/Math;->min(FF)F

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

    :goto_f
    const v0, 0x17

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    aget v1, p6, p5

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

    :goto_11
    iget v0, p0, Lrjo;->g:F

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

    :goto_12
    new-instance v3, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p4, [F

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

    :goto_14
    iget v0, p0, Lrjo;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_15
    div-float/2addr p5, v1

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

    :goto_16
    invoke-virtual {p6, v3, v0, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    iget-object p6, p4, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast p4, [F

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1c
    aget p0, p4, p0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    neg-float p0, p6

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

    :goto_1e
    invoke-virtual {p1, p6, p4}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1f
    goto/32 :goto_4

    nop

    nop

    :goto_20
    neg-float p4, p4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v1, p6}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p6}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p6, [F

    nop

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

    :goto_24
    return-void

    nop

    nop

    :goto_25
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_26
    iget-object p6, p4, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p6}, Lrjo;->i([F)F

    move-result p6

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_29
    const v1, 0x1e

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p6}, Lrjo;->i([F)F

    move-result p6

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2b
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_2d
    iget-object p6, p4, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast p6, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2f
    aget p5, p4, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_30
    check-cast p6, [F

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p6, v0}, Ljava/lang/Math;->min(FF)F

    move-result p6

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

    :goto_33
    invoke-virtual {p1, p6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    goto/32 :goto_26

    nop

    nop

    :goto_34
    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_35
    neg-float p6, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_36
    aget p6, p4, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_37
    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_38
    div-float/2addr p0, v1

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

    :goto_39
    new-instance p6, Landroid/graphics/Path;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3b
    div-float/2addr p6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v3, v2, p0, p5, p6}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, p5, p0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3e
    neg-float v2, p5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object p4, p4, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    div-float/2addr v2, v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_42
    aget p4, p4, p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_43
    check-cast p0, [F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_45
    if-nez p4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FF)V
    .locals 7

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1f

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    move v5, p4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v6, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    move-object v2, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    move-object v3, p3

    nop

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

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_b
    move-object v0, p0

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

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    :goto_11
    invoke-direct/range {v0 .. v6}, Lrjo;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;Lsai;FF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V
    .locals 18

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_0
    mul-float v4, v4, p9

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_1
    iget-object v6, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

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

    :goto_2
    add-float v17, v15, v3

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

    :goto_3
    move/from16 v12, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v2, v12, v3}, Ldvu;->y(FFF)F

    move-result v2

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move/from16 p8, v8

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6
    add-float v15, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_7
    cmpg-float v2, v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9c

    nop

    nop

    :goto_9
    move-object/from16 v4, p1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_c
    mul-float/2addr v12, v4

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_d
    check-cast v3, Lsai;

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lrjo;->g()V

    :goto_f
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v6, Landroid/graphics/Matrix;

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

    :goto_11
    iget-object v13, v0, Lrjo;->a:Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_12
    neg-float v6, v6

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

    :goto_13
    invoke-virtual {v6, v11, v12, v14}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v4, v14}, Lsai;-><init>([B)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_15
    iget v8, v0, Lrjo;->g:F

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v7, v15}, Lrir;->b(Z)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_17
    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_18
    iget v2, v0, Lrjo;->m:F

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_19
    new-instance v4, Lsai;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct/range {p3 .. p9}, Lrjo;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;Lsai;FF)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    div-float v16, p9, v15

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    mul-float/2addr v12, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1d
    iget-object v14, v10, Lsai;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_1e
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_a4

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

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_21
    cmpl-float v9, p8, v4

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

    nop

    :goto_22
    invoke-virtual {v9, v10}, Lrir;->b(Z)Z

    move-result v9

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

    :goto_23
    div-float/2addr v13, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    :goto_24
    aget v3, v3, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_25
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_26
    const/4 v11, 0x0

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

    :goto_27
    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_28
    move-object/from16 p5, p2

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v6, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_2a
    iget v2, v0, Lrjo;->e:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move/from16 p9, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2d
    move-object/from16 p3, p0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_2e
    sub-float/2addr v5, v8

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_2f
    invoke-direct/range {p3 .. p8}, Lrjo;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FF)V

    :goto_30
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move/from16 p8, v3

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v4, p1

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

    :goto_33
    mul-float/2addr v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_34
    iget-object v3, v0, Lrjo;->c:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_35
    if-gez v6, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    div-float/2addr v14, v13

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move/from16 p7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move/from16 v8, p4

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-boolean v10, v0, Lrjo;->l:Z

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

    :goto_3d
    invoke-static {v2, v3, v8}, Lqqy;->o(FFF)F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v2, v3, v5}, Lqqy;->o(FFF)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v9, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_40
    div-float v15, v15, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_41
    div-float/2addr v12, v13

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    div-float v11, v5, v11

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 p4, p1

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-le v2, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_3
    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_45
    add-float/2addr v7, v2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move-object/from16 p6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v9, v0, Lrjo;->a:Lrir;

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v2, Lsai;

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

    :goto_49
    iget-boolean v6, v0, Lrjo;->k:Z

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_4a
    sub-float/2addr v8, v2

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_4b
    invoke-virtual {v4, v13}, Lsai;->g(F)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    aget v9, v9, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_4d
    move-object/from16 v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v13, Lsai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_4f
    iput v13, v0, Lrjo;->j:I

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

    :goto_50
    check-cast v13, Lrjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v10, v4, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    float-to-int v2, v7

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move/from16 v5, p3

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

    :goto_54
    invoke-direct/range {p3 .. p8}, Lrjo;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FF)V

    :goto_55
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v6, v12, v11, v9, v10}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    goto/32 :goto_19

    nop

    nop

    :goto_58
    iget v3, v0, Lrjo;->f:F

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_59
    check-cast v9, Lsai;

    nop

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

    nop

    :goto_5a
    invoke-virtual/range {p3 .. p8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    int-to-float v5, v5

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

    :goto_5c
    invoke-virtual {v10, v13}, Lsai;->g(F)V

    goto/32 :goto_6b

    nop

    nop

    :goto_5d
    if-nez v9, :cond_4

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

    :cond_4
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_5e
    iget v15, v0, Lrjo;->e:F

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-float v11, v11, v16

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    rem-int v0, v0, v1

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v4, v3, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_62
    goto/32 :goto_af

    nop

    nop

    :goto_63
    iget v6, v0, Lrjo;->e:F

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_64
    iget v12, v0, Lrjo;->f:F

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_65
    move-object/from16 p5, p2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v13, Lrjw;

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

    nop

    :goto_67
    move-object/from16 p4, p1

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

    :goto_68
    div-float/2addr v15, v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move-object/from16 p3, p1

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-gtz v3, :cond_5

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_5
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v7, :cond_6

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v7, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_6d
    move/from16 p7, v8

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move v9, v10

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

    :goto_6f
    cmpl-float v3, v3, v6

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

    :goto_70
    iget-object v7, v7, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_71
    check-cast v2, Lsai;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-gtz v9, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-ne v13, v15, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    :goto_77
    add-float/2addr v8, v8

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_78
    goto :goto_7f

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_7a
    if-nez v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :cond_9
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v9, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v4, v0, Lrjo;->f:F

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_7d
    aget v7, v7, v11

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_7e
    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    nop

    :goto_7f
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v6, v13, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_81
    neg-float v13, v13

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v1, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget v3, v0, Lrjo;->g:F

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_85
    check-cast v13, Lsai;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget v11, v0, Lrjo;->e:F

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_87
    move/from16 p4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_88
    cmpl-float v6, v2, v5

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

    :goto_89
    iget-object v13, v0, Lrjo;->a:Lrir;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const v1, 0xa

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v6}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v4

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

    :goto_8c
    check-cast v2, Lsai;

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_8d
    goto :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_92

    nop

    nop

    :goto_8f
    invoke-static {v5, v4, v3}, Ldvu;->y(FFF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_90
    move/from16 p6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_91
    new-instance v15, Lsai;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_92
    move v9, v11

    nop

    :goto_93
    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_94
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v13, v6}, Lsai;->g(F)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_96
    move-object/from16 p3, p0

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    mul-float/2addr v11, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_98
    const/4 v10, 0x1

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_99
    iget v13, v13, Lrjw;->h:I

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_9a
    iget-object v9, v0, Lrjo;->c:Landroid/graphics/Path;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v2, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_9d
    iget-object v12, v10, Lsai;->a:Ljava/lang/Object;

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

    :goto_9e
    if-eqz v9, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v9}, Landroid/graphics/Path;->rewind()V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_a0
    mul-float/2addr v14, v5

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_a1
    check-cast v14, [F

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_a2
    move/from16 v14, p6

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

    :goto_a3
    check-cast v7, Lrjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_a4
    iget-object v6, v0, Lrjo;->d:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_a5
    invoke-static {v8, v4, v3}, Ldvu;->y(FFF)F

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_a6
    move-object/from16 p7, v3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    check-cast v6, [F

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    new-instance v12, Landroid/util/Pair;

    nop

    goto/32 :goto_dc

    nop

    nop

    :goto_a9
    add-int v0, v0, v1

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

    :goto_aa
    iget v13, v0, Lrjo;->e:F

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v13, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_ac
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_b
    goto/32 :goto_37

    nop

    :goto_ad
    div-float/2addr v6, v7

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_ae
    mul-float v8, v2, v6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_af
    iget-boolean v3, v0, Lrjo;->k:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_b0
    move/from16 p5, v6

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_b1
    check-cast v10, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_b2
    div-float v12, v2, v11

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_b3
    invoke-virtual {v4, v7}, Lsai;->f(F)V

    goto/32 :goto_f8

    nop

    nop

    :goto_b4
    float-to-int v2, v12

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-direct {v10, v14}, Lsai;-><init>([B)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_b6
    mul-float v7, v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_b7
    add-float v12, v12, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_b8
    const/4 v6, 0x0

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_b9
    if-nez p10, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :cond_c
    goto/32 :goto_21

    nop

    nop

    :goto_ba
    iget v15, v0, Lrjo;->j:I

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

    :goto_bb
    aget v6, v6, v10

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

    :goto_bc
    invoke-static {v5, v4, v13}, Ldvu;->y(FFF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_bd
    mul-float/2addr v12, v15

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    mul-float v7, v7, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_c0
    invoke-direct {v15, v14}, Lsai;-><init>([B)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast v9, Lrjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v6, v12, v10, v15}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_c3
    check-cast v6, Lsai;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object v15, v4, Lsai;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_c7
    if-nez v13, :cond_d

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :cond_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    sub-float v2, v3, v2

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

    :goto_c9
    invoke-direct {v12, v13, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_ab

    nop

    nop

    :goto_ca
    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v6, v3, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-boolean v13, v0, Lrjo;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_cd
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    add-float/2addr v2, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_d0
    int-to-float v12, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_d1
    int-to-float v14, v14

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d2
    sub-float/2addr v13, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_d3
    iget-boolean v15, v0, Lrjo;->l:Z

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d4
    iget v3, v0, Lrjo;->f:F

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_d5
    check-cast v3, Lsai;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-direct {v13, v14}, Lsai;-><init>([B)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    new-instance v10, Lsai;

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

    :goto_d8
    invoke-direct {v12, v4, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    check-cast v3, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_da
    if-nez v6, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_db
    check-cast v15, [F

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_dc
    new-instance v13, Lsai;

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

    :goto_dd
    check-cast v9, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_de
    iget-object v6, v6, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_df
    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_49

    nop

    nop

    :goto_e0
    float-to-int v5, v8

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    check-cast v7, Lsai;

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_e2
    move/from16 p8, v3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e3
    move-object/from16 p3, p0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v13, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

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

    :goto_e5
    const v12, 0x3f7d70a4    # 0.99f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e6
    move/from16 v12, p5

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    check-cast v7, [F

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_e8
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_e9
    const v0, 0x11

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    const/4 v11, 0x0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_eb
    check-cast v12, [F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    const/high16 v7, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    if-ltz v2, :cond_f

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_ee
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_ef
    move/from16 p7, v8

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object v3, v3, Lsai;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_f1
    iget-object v2, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

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

    :goto_f2
    iget v4, v0, Lrjo;->i:F

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_f3
    move-object/from16 p4, p1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_f4
    cmpl-float v2, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f5
    iget v7, v0, Lrjo;->h:F

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_f6
    float-to-int v2, v14

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    sub-float v2, v3, v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v10, v7}, Lsai;->f(F)V

    :goto_f9
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_fa
    const v13, 0x3c23d70a    # 0.01f

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_fb
    move-object/from16 p6, v2

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_fc
    move-object/from16 p5, p2

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_fd
    new-instance v12, Landroid/util/Pair;

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget v13, v13, Lrjw;->i:I

    nop

    :goto_ff
    goto/32 :goto_ba

    nop

    nop

    :goto_100
    move-object/from16 p6, v2

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_101
    move-object/from16 p8, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_102
    add-float/2addr v6, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_103
    iget-object v9, v9, Lsai;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_104
    iget-object v7, v0, Lrjo;->a:Lrir;

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

    :goto_105
    goto :goto_ff

    nop

    nop

    nop

    nop

    :goto_106
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_107
    invoke-virtual {v13, v15}, Lsai;->g(F)V

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lrjw;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lrjo;->e:F

    nop

    nop

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

    :goto_2
    const/high16 p1, 0x43960000    # 300.0f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Lrjl;-><init>(Lrir;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrjw;->j:I

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
    add-int/2addr p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrjo;->a:Lrir;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    check-cast p0, Lrjw;

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

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Lrjw;->a:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final c(Landroid/graphics/Canvas;Landroid/graphics/Rect;FZZ)V
    .locals 8

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_0
    check-cast p2, Lrjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1
    div-float/2addr p2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2
    mul-float/2addr p2, p3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p3, p0, Lrjo;->m:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p4, Lrjw;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, p0, Lrjo;->g:F

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p4, Lrjw;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_7
    add-float/2addr v3, p2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    sub-float v0, v2, p3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    const/4 v6, 0x0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v4, p4}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_c
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Lrjo;->e:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_f
    goto/32 :goto_10

    nop

    nop

    :goto_10
    iget p2, p0, Lrjo;->e:F

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

    :goto_11
    check-cast p2, Lrjw;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_12
    div-float/2addr v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_13
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_14
    iget p1, p1, Lrjw;->f:I

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_15
    if-nez p5, :cond_0

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_16
    int-to-float p2, p2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v5, 0x40000000    # 2.0f

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v3, v6, p2, v0}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move p3, v2

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    div-float/2addr v2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 p2, 0x3

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1d
    move p5, v7

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_1e
    iget p4, p4, Lrjw;->f:I

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz p4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_22
    iput v0, p0, Lrjo;->e:F

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_23
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    sub-float/2addr p2, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    int-to-float v0, v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float v0, v0

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v6, p0, Lrjo;->k:Z

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_29
    add-float/2addr v3, v4

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

    :goto_2a
    invoke-static {v4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_7e

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2d
    int-to-float v2, v2

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

    :goto_2e
    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    mul-float/2addr p4, v0

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

    :goto_30
    iget v1, p2, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v3, p2, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_32
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    cmpg-float v6, v3, p2

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_35
    if-lez v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    :cond_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    div-float v3, v0, v5

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_38
    iget-object p2, p0, Lrjo;->a:Lrir;

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

    :goto_39
    iget-object p2, p0, Lrjo;->a:Lrir;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3a
    iget p2, p2, Lrjw;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_3b
    neg-float v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3c
    if-ne v0, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :cond_4
    :goto_3d
    goto/32 :goto_15

    nop

    nop

    :goto_3e
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_3f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_41
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_42
    iput v0, p0, Lrjo;->h:F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_43
    iget p4, p4, Lrjw;->a:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_44
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_45
    iget p2, p2, Lrjw;->b:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_46
    neg-float v6, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_47
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_5
    goto/32 :goto_5b

    nop

    nop

    :goto_48
    int-to-float v3, v3

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

    :goto_49
    div-float/2addr p2, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4a
    move v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4b
    iget v0, p2, Lrjw;->j:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Lrjo;->g()V

    :goto_4d
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    int-to-float p2, p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez p5, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_50
    int-to-float p4, p4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_51
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_52
    goto/32 :goto_1b

    nop

    nop

    :goto_53
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_54
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const/high16 v1, -0x40800000    # -1.0f

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

    :goto_57
    const v0, 0x1e

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

    :goto_58
    iget v0, p2, Lrjw;->a:I

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez p4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_5a
    add-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_5c
    if-eqz p4, :cond_8

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-ne p4, p2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_9
    :goto_5e
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p2, p0, Lrjo;->a:Lrir;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iput v0, p0, Lrjo;->f:F

    nop

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

    :goto_62
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_63
    div-float/2addr p4, v5

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eq p2, v7, :cond_a

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_65
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    mul-float/2addr v0, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_67
    iget v0, p2, Lrjw;->e:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6a
    const v1, 0xf

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6b
    mul-float/2addr v0, p3

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_6c
    int-to-float v4, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object p4, p0, Lrjo;->a:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6f
    iget-object p1, p0, Lrjo;->a:Lrir;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_70
    if-nez p5, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :cond_b
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    div-float/2addr v4, v5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-lez v0, :cond_c

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

    nop

    :cond_c
    goto/32 :goto_68

    nop

    :goto_73
    cmpl-float v0, v0, v1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_75
    check-cast p2, Lrjw;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_76
    iget-object p4, p0, Lrjo;->a:Lrir;

    nop

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

    :goto_77
    check-cast p1, Lrjw;

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

    :goto_78
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_7a
    if-ne p1, p2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7b
    iget-boolean p2, p2, Lrjw;->n:Z

    nop

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

    :goto_7c
    invoke-virtual {p0}, Lrjo;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_7d
    goto :goto_79

    nop

    nop

    :goto_7e
    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public final d(Landroid/graphics/Canvas;Landroid/graphics/Paint;II)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, p0, Lrjo;->f:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sub-float/2addr p3, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lrjw;

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p3, Lrjw;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_9
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    div-float/2addr p3, v0

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

    :goto_b
    aput p4, v1, p3

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_c
    invoke-static {p3, p4}, Lrgw;->e(II)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_d
    new-instance v4, Lsai;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x13

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_f
    move v5, v6

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_11
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v1 .. v6}, Lrjo;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lsai;FF)V

    :goto_13
    goto/32 :goto_8

    nop

    nop

    :goto_14
    new-array v1, v0, [F

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_16
    move-object v3, p2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p3, p0, Lrjo;->a:Lrir;

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

    nop

    :goto_18
    iget-object v0, p0, Lrjo;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    div-float/2addr v1, v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    const/high16 v0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    move-object v1, p0

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

    :goto_1e
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    invoke-direct {v4, v1, p3}, Lsai;-><init>([F[F)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_21
    iput-boolean p4, p0, Lrjo;->l:Z

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

    :goto_22
    const/4 p3, 0x1

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

    :goto_23
    iget p3, p3, Lrjw;->o:I

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_24
    new-array p3, v0, [F

    nop

    nop

    fill-array-data p3, :array_0

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput p3, v1, p4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_26
    iget v0, v0, Lrjw;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    const/4 v0, 0x2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
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

    :goto_29
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2a
    int-to-float v6, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2b
    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    iget p3, p0, Lrjo;->e:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lrjk;I)V
    .locals 13

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v2, p0

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

    :goto_1
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v1, v2, Lrjo;->l:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v3, p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    move-object/from16 v0, p3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v12, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    move/from16 v2, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    move-object v4, p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    iget v5, v0, Lrjk;->a:F

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v1, v2}, Lrgw;->e(II)I

    move-result v7

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, v0, Lrjk;->c:I

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

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_c

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_12
    iget v9, v0, Lrjk;->d:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    iget v6, v0, Lrjk;->b:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    move v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iget v11, v0, Lrjk;->f:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct/range {v2 .. v12}, Lrjo;->51550bab6b6440a4fd45f825c221b363m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-boolean v1, v0, Lrjk;->h:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    iget v10, v0, Lrjk;->e:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

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

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIII)V
    .locals 11

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v10, 0x0

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

    :goto_4
    const v0, 0x16

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    move v4, p4

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_8
    iput-boolean v0, v1, Lrjo;->l:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    nop

    :goto_a
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    nop

    :goto_c
    const v1, 0x1b

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v1, p0

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    move v3, p3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v0 .. v10}, Lrjo;->51550bab6b6440a4fd45f825c221b363m(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFIIIFFZ)V

    goto/32 :goto_1

    nop

    nop

    :goto_10
    move-object v0, p0

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

    :goto_11
    goto/32 :goto_15

    nop

    :goto_12
    move/from16 v7, p7

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

    :goto_13
    move-object v2, p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v8, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static/range {p5 .. p6}, Lrgw;->e(II)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    move/from16 v6, p7

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 23

    goto/32 :goto_41

    nop

    nop

    :goto_0
    const/16 v20, 0x0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1
    if-le v4, v1, :cond_0

    nop

    goto/32 :goto_4a

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_2
    goto/16 :goto_37

    nop

    nop

    :goto_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    const v14, -0x410a3d71    # -0.48f

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

    :goto_5
    const/high16 v5, 0x40000000    # 2.0f

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_7
    iget-object v5, v0, Lrjo;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_8
    move v10, v13

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

    :goto_9
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Lrjw;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iget-object v5, v0, Lrjo;->b:Landroid/graphics/Path;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Lrjo;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_d
    iget v1, v1, Lrjw;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_e
    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v6, v12, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Lrjo;->d:Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    move v4, v2

    nop

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
    int-to-float v1, v1

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_15
    invoke-virtual {v1, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual/range {v16 .. v22}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_18
    int-to-float v6, v12

    nop

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

    :goto_19
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lrjo;->b:Landroid/graphics/Path;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1b
    iget-object v1, v0, Lrjo;->a:Lrir;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1c
    check-cast v1, Lrjw;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v0, Lrjo;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1e
    int-to-float v13, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, v1, Lrjw;->i:I

    nop

    nop

    :goto_20
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-boolean v1, v0, Lrjo;->l:Z

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v1, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-float v17, v13, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    nop

    :goto_25
    div-float/2addr v4, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v1, v0, Lrjo;->b:Landroid/graphics/Path;

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_2
    goto/32 :goto_57

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_29
    iget-object v1, v0, Lrjo;->b:Landroid/graphics/Path;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/high16 v11, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-float/2addr v6, v15

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-float v8, v13, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2f
    iget v4, v0, Lrjo;->i:F

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

    nop

    :goto_30
    int-to-float v6, v12

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1, v0, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_32
    float-to-int v1, v1

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_33
    iget-boolean v2, v0, Lrjo;->l:Z

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v3, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object/from16 v16, v5

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_37
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    const/16 v22, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v15, 0x3ef5c28f    # 0.48f

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v1, :cond_3

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v1, Lrjw;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3f
    div-float v1, v4, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_40
    const/high16 v18, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_41
    const v0, 0xb

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_42
    add-int/lit8 v12, v12, 0x2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_45
    move/from16 v21, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_46
    add-float v19, v6, v14

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v1, v2}, Lrir;->b(Z)Z

    move-result v1

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

    :goto_48
    iget v4, v0, Lrjo;->e:F

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_22

    nop

    nop

    :goto_4b
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4c
    const/high16 v5, -0x40000000    # -2.0f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget v4, v0, Lrjo;->e:F

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1}, Landroid/graphics/Path;->rewind()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4f
    const/4 v3, 0x0

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

    nop

    nop

    :goto_50
    int-to-float v5, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_51
    div-float/2addr v4, v5

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_52
    iput v4, v0, Lrjo;->i:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const v1, 0xe

    nop

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

    :goto_54
    const/high16 v9, 0x3f800000    # 1.0f

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

    :goto_55
    add-int v12, v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_56
    iget-object v1, v0, Lrjo;->a:Lrir;

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

    :goto_57
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_3d

    nop

    nop

    nop

    nop
.end method
