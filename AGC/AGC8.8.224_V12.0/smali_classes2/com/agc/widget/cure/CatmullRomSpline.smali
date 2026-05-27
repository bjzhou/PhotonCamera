.class public Lcom/agc/widget/cure/CatmullRomSpline;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCatmullRomSpline([Landroid/graphics/PointF;Landroid/graphics/Path;III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    aget-object v5, v0, v4

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v6, v5}, Landroid/graphics/Path;->moveTo(FF)V

    move v5, v4

    :goto_0
    add-int/lit8 v6, v3, -0x1

    if-ge v5, v6, :cond_6

    if-nez v5, :cond_1

    aget-object v6, v0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v5, -0x1

    aget-object v6, v0, v6

    :goto_1
    aget-object v7, v0, v5

    add-int/lit8 v8, v5, 0x1

    aget-object v9, v0, v8

    add-int/lit8 v5, v5, 0x2

    if-ge v5, v3, :cond_2

    aget-object v5, v0, v5

    goto :goto_2

    :cond_2
    move-object v5, v9

    :goto_2
    move v10, v4

    :goto_3
    if-ge v10, v2, :cond_5

    int-to-float v11, v10

    int-to-float v12, v2

    div-float/2addr v11, v12

    mul-float v12, v11, v11

    mul-float v13, v12, v11

    neg-float v14, v13

    const/high16 v15, 0x40000000    # 2.0f

    mul-float v16, v12, v15

    add-float v14, v14, v16

    sub-float/2addr v14, v11

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v16, v16, v13

    const/high16 v17, 0x40a00000    # 5.0f

    mul-float v17, v17, v12

    sub-float v16, v16, v17

    add-float v16, v16, v15

    const/high16 v15, -0x3fc00000    # -3.0f

    mul-float/2addr v15, v13

    const/high16 v17, 0x40800000    # 4.0f

    mul-float v17, v17, v12

    add-float v15, v15, v17

    add-float/2addr v15, v11

    sub-float/2addr v13, v12

    iget v11, v6, Landroid/graphics/PointF;->x:F

    mul-float/2addr v11, v14

    iget v12, v7, Landroid/graphics/PointF;->x:F

    mul-float v12, v12, v16

    add-float/2addr v11, v12

    iget v12, v9, Landroid/graphics/PointF;->x:F

    mul-float/2addr v12, v15

    add-float/2addr v11, v12

    iget v12, v5, Landroid/graphics/PointF;->x:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    iget v4, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v14

    iget v14, v7, Landroid/graphics/PointF;->y:F

    mul-float v14, v14, v16

    add-float/2addr v4, v14

    iget v14, v9, Landroid/graphics/PointF;->y:F

    mul-float/2addr v14, v15

    add-float/2addr v4, v14

    iget v14, v5, Landroid/graphics/PointF;->y:F

    mul-float/2addr v14, v13

    add-float/2addr v4, v14

    mul-float/2addr v4, v12

    move/from16 v12, p3

    int-to-float v13, v12

    cmpg-float v14, v4, v13

    if-gez v14, :cond_3

    move v4, v13

    move/from16 v13, p4

    goto :goto_4

    :cond_3
    move/from16 v13, p4

    int-to-float v14, v13

    cmpl-float v15, v4, v14

    if-lez v15, :cond_4

    move v4, v14

    :cond_4
    :goto_4
    invoke-virtual {v1, v11, v4}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    move/from16 v12, p3

    move/from16 v13, p4

    move v5, v8

    goto/16 :goto_0

    :cond_6
    aget-object v0, v0, v6

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method
