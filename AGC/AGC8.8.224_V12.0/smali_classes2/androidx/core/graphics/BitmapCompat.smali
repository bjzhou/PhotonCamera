.class public final Landroidx/core/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/graphics/BitmapCompat$Api31Impl;,
        Landroidx/core/graphics/BitmapCompat$Api29Impl;,
        Landroidx/core/graphics/BitmapCompat$Api27Impl;,
        Landroidx/core/graphics/BitmapCompat$Api19Impl;,
        Landroidx/core/graphics/BitmapCompat$Api17Impl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Rect;Z)Landroid/graphics/Bitmap;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-lez v1, :cond_23

    if-lez v2, :cond_23

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-gt v4, v5, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 139
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-gt v4, v5, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "srcRect must be contained by srcBm!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    :goto_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1b

    if-lt v4, v5, :cond_2

    .line 148
    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->copyBitmapIfHardware(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v0

    :goto_1
    if-eqz v3, :cond_3

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    :goto_2
    if-eqz v3, :cond_4

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v7

    goto :goto_3

    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    :goto_3
    int-to-float v8, v1

    int-to-float v9, v6

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v7

    div-float/2addr v9, v10

    if-eqz v3, :cond_5

    .line 157
    iget v11, v3, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_5
    const/4 v11, 0x0

    :goto_4
    if-eqz v3, :cond_6

    .line 158
    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_5

    :cond_6
    const/4 v3, 0x0

    :goto_5
    const/4 v12, 0x1

    if-nez v11, :cond_8

    if-nez v3, :cond_8

    .line 161
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ne v1, v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-ne v2, v13, :cond_8

    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v1

    if-eqz v1, :cond_7

    if-ne v0, v4, :cond_7

    .line 164
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_7
    return-object v4

    .line 171
    :cond_8
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13, v12}, Landroid/graphics/Paint;-><init>(I)V

    .line 172
    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 173
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1d

    if-lt v14, v15, :cond_9

    .line 174
    invoke-static {v13}, Landroidx/core/graphics/BitmapCompat$Api29Impl;->setPaintBlendMode(Landroid/graphics/Paint;)V

    goto :goto_6

    .line 176
    :cond_9
    new-instance v14, Landroid/graphics/PorterDuffXfermode;

    sget-object v15, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v14, v15}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    :goto_6
    if-ne v6, v1, :cond_a

    if-ne v7, v2, :cond_a

    .line 181
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 182
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    neg-int v2, v11

    int-to-float v2, v2

    neg-int v3, v3

    int-to-float v3, v3

    .line 183
    invoke-virtual {v1, v4, v2, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0

    :cond_a
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 188
    invoke-static {v14, v15}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v17, v8, v16

    if-lez v17, :cond_b

    move/from16 v18, v11

    float-to-double v10, v8

    .line 189
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    goto :goto_7

    :cond_b
    move/from16 v18, v11

    float-to-double v10, v8

    .line 190
    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    div-double/2addr v10, v14

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    :goto_7
    double-to-int v8, v10

    cmpl-float v10, v9, v16

    if-lez v10, :cond_c

    float-to-double v9, v9

    .line 191
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    goto :goto_8

    :cond_c
    float-to-double v9, v9

    .line 192
    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    div-double/2addr v9, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    :goto_8
    double-to-int v9, v9

    const/4 v10, 0x0

    if-eqz p4, :cond_f

    .line 205
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v11, v5, :cond_f

    invoke-static/range {p0 .. p0}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v11

    if-nez v11, :cond_f

    if-lez v8, :cond_d

    .line 206
    invoke-static {v6, v1, v12, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v10

    goto :goto_9

    :cond_d
    move v10, v6

    :goto_9
    if-lez v9, :cond_e

    .line 207
    invoke-static {v7, v2, v12, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v11

    goto :goto_a

    :cond_e
    move v11, v7

    .line 208
    :goto_a
    invoke-static {v10, v11, v0, v12}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 210
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move/from16 v14, v18

    neg-int v14, v14

    int-to-float v14, v14

    neg-int v3, v3

    int-to-float v3, v3

    .line 211
    invoke-virtual {v11, v4, v14, v3, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move v14, v12

    const/4 v3, 0x0

    const/4 v11, 0x0

    move-object/from16 v21, v10

    move-object v10, v4

    move-object/from16 v4, v21

    goto :goto_b

    :cond_f
    move/from16 v14, v18

    move v11, v14

    const/4 v14, 0x0

    .line 221
    :goto_b
    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15, v11, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 222
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move v11, v8

    move/from16 v16, v9

    :goto_c
    if-nez v11, :cond_12

    if-eqz v16, :cond_10

    goto :goto_d

    :cond_10
    if-eq v10, v0, :cond_11

    if-eqz v10, :cond_11

    .line 311
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_11
    return-object v4

    :cond_12
    :goto_d
    if-gez v11, :cond_13

    add-int/lit8 v11, v11, 0x1

    goto :goto_e

    :cond_13
    if-lez v11, :cond_14

    add-int/lit8 v11, v11, -0x1

    :cond_14
    :goto_e
    if-gez v16, :cond_15

    add-int/lit8 v16, v16, 0x1

    goto :goto_f

    :cond_15
    if-lez v16, :cond_16

    add-int/lit8 v16, v16, -0x1

    :cond_16
    :goto_f
    move/from16 v12, v16

    .line 235
    invoke-static {v6, v1, v11, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v5

    move-object/from16 v18, v13

    .line 236
    invoke-static {v7, v2, v12, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v13

    move-object/from16 v19, v15

    const/4 v15, 0x0

    .line 237
    invoke-virtual {v3, v15, v15, v5, v13}, Landroid/graphics/Rect;->set(IIII)V

    if-nez v11, :cond_17

    if-nez v12, :cond_17

    const/4 v5, 0x1

    goto :goto_10

    :cond_17
    move v5, v15

    :goto_10
    if-eqz v10, :cond_18

    .line 257
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    if-ne v13, v1, :cond_18

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    if-ne v13, v2, :cond_18

    const/4 v13, 0x1

    goto :goto_11

    :cond_18
    move v13, v15

    :goto_11
    if-eqz v10, :cond_1c

    if-eq v10, v0, :cond_1c

    if-eqz p4, :cond_19

    .line 258
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 v20, v3

    const/16 v3, 0x1b

    if-lt v15, v3, :cond_1a

    .line 267
    invoke-static {v10}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->isAlreadyF16AndLinear(Landroid/graphics/Bitmap;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_12

    :cond_19
    move-object/from16 v20, v3

    :cond_1a
    :goto_12
    if-eqz v5, :cond_1b

    if-eqz v13, :cond_1d

    if-eqz v14, :cond_1b

    goto :goto_13

    :cond_1b
    move-object v3, v10

    const/16 v15, 0x1b

    goto :goto_17

    :cond_1c
    move-object/from16 v20, v3

    :cond_1d
    :goto_13
    if-eq v10, v0, :cond_1e

    if-eqz v10, :cond_1e

    .line 275
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1e
    if-lez v11, :cond_1f

    move v3, v14

    goto :goto_14

    :cond_1f
    move v3, v11

    .line 284
    :goto_14
    invoke-static {v6, v1, v3, v8}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v3

    if-lez v12, :cond_20

    move v10, v14

    goto :goto_15

    :cond_20
    move v10, v12

    .line 286
    :goto_15
    invoke-static {v7, v2, v10, v9}, Landroidx/core/graphics/BitmapCompat;->sizeAtStep(IIII)I

    move-result v10

    .line 290
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1b

    if-lt v13, v15, :cond_22

    if-eqz p4, :cond_21

    if-nez v5, :cond_21

    const/4 v5, 0x1

    goto :goto_16

    :cond_21
    const/4 v5, 0x0

    .line 292
    :goto_16
    invoke-static {v3, v10, v0, v5}, Landroidx/core/graphics/BitmapCompat$Api27Impl;->createBitmapWithSourceColorspace(IILandroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_17

    .line 295
    :cond_22
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-static {v3, v10, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 301
    :goto_17
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v10, v18

    move-object/from16 v13, v19

    move-object/from16 v15, v20

    .line 302
    invoke-virtual {v5, v4, v13, v15, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 308
    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v16, v12

    const/16 v5, 0x1b

    const/4 v12, 0x1

    move-object/from16 v21, v4

    move-object v4, v3

    move-object v3, v15

    move-object v15, v13

    move-object v13, v10

    move-object/from16 v10, v21

    goto/16 :goto_c

    .line 134
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dstW and dstH must be > 0!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 2

    .line 96
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 97
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api19Impl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p0

    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 2

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 58
    invoke-static {p0}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 2

    .line 83
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 84
    invoke-static {p0, p1}, Landroidx/core/graphics/BitmapCompat$Api17Impl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    :cond_0
    return-void
.end method

.method public static sizeAtStep(IIII)I
    .locals 1

    if-nez p2, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p3, p2

    shl-int p1, v0, p3

    mul-int/2addr p0, p1

    return p0

    :cond_1
    neg-int p0, p2

    sub-int/2addr p0, v0

    shl-int p0, p1, p0

    return p0
.end method
