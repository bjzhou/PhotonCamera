.class public Lcom/agc/util/CubeUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static __lookup(IIII[[F)[F
    .locals 0

    mul-int/2addr p2, p3

    add-int/2addr p1, p2

    mul-int/2addr p3, p1

    add-int/2addr p0, p3

    aget-object p0, p4, p0

    return-object p0
.end method

.method public static colorToRGB(IIII)I
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    if-gez p2, :cond_1

    neg-int p2, p2

    :cond_1
    if-gez p3, :cond_2

    neg-int p3, p3

    :cond_2
    add-int/lit8 p0, p0, 0x0

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p1

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p2

    shl-int/lit8 p0, p0, 0x8

    add-int/2addr p0, p3

    return p0
.end method

.method public static getLutBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 15

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x20

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, "\\s+"

    if-eqz v6, :cond_1

    :try_start_1
    const-string v8, "LUT_3D_SIZE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :cond_1
    mul-int v6, v3, v3

    mul-int/2addr v6, v3

    new-array v8, v0, [I

    const/4 v9, 0x3

    aput v9, v8, v2

    aput v6, v8, v1

    const-class v6, F

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v4, v1

    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v8, :cond_5

    :try_start_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v10, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2e

    if-eq v10, v11, :cond_4

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_4

    const/16 v11, 0x30

    if-lt v10, v11, :cond_2

    const/16 v11, 0x39

    if-gt v10, v11, :cond_2

    :cond_4
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v10, v8

    if-ne v10, v9, :cond_2

    new-array v10, v9, [F

    aget-object v11, v8, v1

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v10, v1

    aget-object v11, v8, v2

    invoke-static {v11}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    aput v11, v10, v2

    aget-object v8, v8, v0

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aput v8, v10, v0

    aput-object v10, v6, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v5

    move-object v4, v6

    goto :goto_1

    :catch_2
    move-exception v5

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v4

    :goto_2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v4, 0x200

    invoke-static {v4, v4, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    move v4, v1

    :goto_3
    const/16 v5, 0x40

    if-ge v4, v5, :cond_8

    move v7, v1

    :goto_4
    if-ge v7, v5, :cond_7

    move v8, v1

    :goto_5
    if-ge v8, v5, :cond_6

    rem-int/lit8 v9, v8, 0x8

    mul-int/2addr v9, v5

    add-int/2addr v9, v4

    div-int/lit8 v10, v8, 0x8

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v10, v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v7

    int-to-float v11, v4

    const/high16 v12, 0x427c0000    # 63.0f

    div-float/2addr v11, v12

    int-to-float v13, v7

    div-float/2addr v13, v12

    int-to-float v14, v8

    div-float/2addr v14, v12

    invoke-static {v11, v13, v14, v3, v6}, Lcom/agc/util/CubeUtil;->lookupLinear(FFFI[[F)[F

    move-result-object v11

    aget v12, v11, v1

    const/high16 v13, 0x437f0000    # 255.0f

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    aget v14, v11, v2

    mul-float/2addr v14, v13

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    aget v11, v11, v0

    mul-float/2addr v11, v13

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    const/16 v13, 0xff

    invoke-static {v13, v12, v14, v11}, Lcom/agc/util/CubeUtil;->colorToRGB(IIII)I

    move-result v11

    invoke-virtual {p0, v9, v10, v11}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    invoke-static {}, Ljava/lang/System;->gc()V

    return-object p0
.end method

.method public static getLutPathBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    invoke-static {p0}, Lcom/agc/util/ImageUtil;->getBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".cube"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/agc/util/CubeUtil;->getLutBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static lerp(FFF)F
    .locals 1

    mul-float/2addr p1, p2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr p0, v0

    add-float/2addr p1, p0

    return p1
.end method

.method public static lookupLinear(FFFI[[F)[F
    .locals 16

    move/from16 v0, p3

    move-object/from16 v1, p4

    add-int/lit8 v2, v0, -0x2

    int-to-float v2, v2

    mul-float v3, p0, v2

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    mul-float v5, p1, v2

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    mul-float v2, v2, p2

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    rem-float/2addr v3, v8

    rem-float/2addr v5, v8

    rem-float/2addr v2, v8

    invoke-static {v4, v6, v7, v0, v1}, Lcom/agc/util/CubeUtil;->__lookup(IIII[[F)[F

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    invoke-static {v4, v6, v9, v0, v1}, Lcom/agc/util/CubeUtil;->__lookup(IIII[[F)[F

    move-result-object v10

    add-int/lit8 v11, v6, 0x1

    invoke-static {v4, v11, v7, v0, v1}, Lcom/agc/util/CubeUtil;->__lookup(IIII[[F)[F

    move-result-object v12

    invoke-static {v4, v11, v9, v0, v1}, Lcom/agc/util/CubeUtil;->__lookup(IIII[[F)[F

    move-result-object v13

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4, v6, v7, v0, v1}, Lcom/agc/util/CubeUtil;->__lookup(IIII[[F)[F

    move-result-object v14

    invoke-static {v4, v6, v9, v0, v1}, Lcom/agc/util/CubeUtil;->__lookup(IIII[[F)[F

    move-result-object v6

    invoke-static {v4, v11, v7, v0, v1}, Lcom/agc/util/CubeUtil;->__lookup(IIII[[F)[F

    move-result-object v7

    invoke-static {v4, v11, v9, v0, v1}, Lcom/agc/util/CubeUtil;->__lookup(IIII[[F)[F

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v4, 0x0

    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_0

    aget v9, v8, v4

    aget v11, v10, v4

    invoke-static {v9, v11, v2}, Lcom/agc/util/CubeUtil;->lerp(FFF)F

    move-result v9

    aget v11, v12, v4

    aget v15, v13, v4

    invoke-static {v11, v15, v2}, Lcom/agc/util/CubeUtil;->lerp(FFF)F

    move-result v11

    invoke-static {v9, v11, v5}, Lcom/agc/util/CubeUtil;->lerp(FFF)F

    move-result v9

    aget v11, v14, v4

    aget v15, v6, v4

    invoke-static {v11, v15, v2}, Lcom/agc/util/CubeUtil;->lerp(FFF)F

    move-result v11

    aget v15, v7, v4

    move-object/from16 p0, v6

    aget v6, v0, v4

    invoke-static {v15, v6, v2}, Lcom/agc/util/CubeUtil;->lerp(FFF)F

    move-result v6

    invoke-static {v11, v6, v5}, Lcom/agc/util/CubeUtil;->lerp(FFF)F

    move-result v6

    invoke-static {v9, v6, v3}, Lcom/agc/util/CubeUtil;->lerp(FFF)F

    move-result v6

    aput v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, p0

    goto :goto_0

    :cond_0
    return-object v1
.end method
