.class public Landroid/support/v8/renderscript/Matrix4f;
.super Ljava/lang/Object;


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private computeCofactor(II)F
    .locals 15

    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x4

    add-int/lit8 v1, p1, 0x1

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v0, v0, 0x4

    move-object v2, p0

    iget-object v3, v2, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    add-int v4, v1, v0

    aget v4, v3, v4

    add-int/lit8 v5, p2, 0x2

    rem-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, p1, 0x2

    rem-int/lit8 v6, v6, 0x4

    mul-int/lit8 v5, v5, 0x4

    add-int v7, v6, v5

    aget v7, v3, v7

    add-int/lit8 v8, p2, 0x3

    rem-int/lit8 v8, v8, 0x4

    add-int/lit8 v9, p1, 0x3

    rem-int/lit8 v9, v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    add-int v10, v9, v8

    aget v10, v3, v10

    mul-float v11, v7, v10

    add-int v12, v6, v8

    aget v12, v3, v12

    add-int v13, v9, v5

    aget v13, v3, v13

    mul-float v14, v12, v13

    sub-float/2addr v11, v14

    mul-float v4, v4, v11

    add-int/2addr v5, v1

    aget v5, v3, v5

    add-int/2addr v6, v0

    aget v6, v3, v6

    mul-float v10, v10, v6

    add-int/2addr v9, v0

    aget v0, v3, v9

    mul-float v12, v12, v0

    sub-float/2addr v10, v12

    mul-float v5, v5, v10

    add-int/2addr v1, v8

    aget v1, v3, v1

    mul-float v6, v6, v13

    mul-float v7, v7, v0

    sub-float/2addr v6, v7

    mul-float v1, v1, v6

    add-int v0, p1, p2

    and-int/lit8 v0, v0, 0x1

    sub-float/2addr v4, v5

    add-float/2addr v4, v1

    if-eqz v0, :cond_0

    neg-float v0, v4

    return v0

    :cond_0
    return v4
.end method


# virtual methods
.method public get(II)F
    .locals 1

    mul-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public inverse()Z
    .locals 9

    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, v0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v2, 0x4

    invoke-direct {p0, v2, v4}, Landroid/support/v8/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    add-int/2addr v6, v4

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v4, v2, v1

    iget-object v5, v0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v6, v5, v1

    mul-float v4, v4, v6

    aget v3, v2, v3

    const/4 v6, 0x1

    aget v7, v5, v6

    mul-float v3, v3, v7

    const/16 v7, 0x8

    aget v7, v2, v7

    const/4 v8, 0x2

    aget v8, v5, v8

    mul-float v7, v7, v8

    const/16 v8, 0xc

    aget v2, v2, v8

    const/4 v8, 0x3

    aget v5, v5, v8

    mul-float v2, v2, v5

    add-float/2addr v4, v3

    add-float/2addr v4, v7

    add-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v5, v2, v7

    if-gez v5, :cond_2

    return v1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v4

    :goto_2
    const/16 v3, 0x10

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float v4, v4, v2

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return v6
.end method

.method public inverseTranspose()Z
    .locals 8

    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    iget-object v5, v0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v2

    invoke-direct {p0, v2, v4}, Landroid/support/v8/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v4, v2, v1

    iget-object v5, v0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v6, v5, v1

    mul-float v4, v4, v6

    aget v6, v2, v3

    aget v3, v5, v3

    mul-float v6, v6, v3

    const/16 v3, 0x8

    aget v7, v2, v3

    aget v3, v5, v3

    mul-float v7, v7, v3

    const/16 v3, 0xc

    aget v2, v2, v3

    aget v3, v5, v3

    mul-float v2, v2, v3

    add-float/2addr v4, v6

    add-float/2addr v4, v7

    add-float/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v5, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v7, v2, v5

    if-gez v7, :cond_2

    return v1

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v4

    :goto_2
    const/16 v3, 0x10

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float v4, v4, v2

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public load(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 5

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    iget-object p1, p1, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x1

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x2

    aget v2, p1, v1

    aput v2, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    aget v1, p1, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    aget v1, p1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    aget v1, p1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    const/4 v1, 0x7

    aput v2, v0, v1

    aget v3, p1, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    aget v1, p1, v1

    const/16 v3, 0x9

    aput v1, v0, v3

    aget p1, p1, v4

    const/16 v1, 0xa

    aput p1, v0, v1

    const/16 p1, 0xb

    aput v2, v0, p1

    const/16 p1, 0xc

    aput v2, v0, p1

    const/16 p1, 0xd

    aput v2, v0, p1

    const/16 p1, 0xe

    aput v2, v0, p1

    const/16 p1, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v0, p1

    return-void
.end method

.method public load(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix4f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    add-float v0, p5, p5

    sub-float v1, p2, p1

    div-float v2, v0, v1

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    const/4 v4, 0x0

    aput v2, v3, v4

    sub-float v2, p4, p3

    div-float/2addr v0, v2

    const/4 v4, 0x5

    aput v0, v3, v4

    add-float/2addr p2, p1

    div-float/2addr p2, v1

    const/16 p1, 0x8

    aput p2, v3, p1

    add-float/2addr p4, p3

    div-float/2addr p4, v2

    const/16 p1, 0x9

    aput p4, v3, p1

    add-float p1, p6, p5

    neg-float p1, p1

    sub-float p2, p6, p5

    div-float/2addr p1, p2

    const/16 p3, 0xa

    aput p1, v3, p3

    const/16 p1, 0xb

    const/high16 p3, -0x40800000    # -1.0f

    aput p3, v3, p1

    const/high16 p1, -0x40000000    # -2.0f

    mul-float p6, p6, p1

    mul-float p6, p6, p5

    div-float/2addr p6, p2

    const/16 p1, 0xe

    aput p6, v3, p1

    const/16 p1, 0xf

    const/4 p2, 0x0

    aput p2, v3, p1

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    const/4 v1, 0x2

    aput v3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v3, v0, v1

    const/16 v1, 0x9

    aput v3, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v3, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v3, v0, v1

    const/16 v1, 0xe

    aput v3, v0, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    return-void
.end method

.method public loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v7, v2, :cond_0

    invoke-virtual {p2, v1, v7}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F

    move-result v11

    invoke-virtual {p1, v7, v0}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F

    move-result v12

    mul-float v12, v12, v11

    add-float/2addr v3, v12

    invoke-virtual {p1, v7, v10}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F

    move-result v10

    mul-float v10, v10, v11

    add-float/2addr v4, v10

    invoke-virtual {p1, v7, v9}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F

    move-result v9

    mul-float v9, v9, v11

    add-float/2addr v5, v9

    invoke-virtual {p1, v7, v8}, Landroid/support/v8/renderscript/Matrix4f;->get(II)F

    move-result v8

    mul-float v8, v8, v11

    add-float/2addr v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v1, v10, v4}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v1, v9, v5}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    invoke-virtual {p0, v1, v8, v6}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    sub-float v0, p2, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v1, v0

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    const/4 v4, 0x0

    aput v2, v3, v4

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/4 v4, 0x5

    aput v1, v3, v4

    sub-float v1, p6, p5

    const/high16 v4, -0x40000000    # -2.0f

    div-float/2addr v4, v1

    const/16 v5, 0xa

    aput v4, v3, v5

    add-float/2addr p2, p1

    neg-float p1, p2

    div-float/2addr p1, v0

    const/16 p2, 0xc

    aput p1, v3, p2

    add-float/2addr p4, p3

    neg-float p1, p4

    div-float/2addr p1, v2

    const/16 p2, 0xd

    aput p1, v3, p2

    add-float/2addr p6, p5

    neg-float p1, p6

    div-float/2addr p1, v1

    const/16 p2, 0xe

    aput p1, v3, p2

    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7

    const/4 v1, 0x0

    int-to-float v2, p1

    int-to-float v3, p2

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 7

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v4, p3, p1

    neg-float v3, v4

    mul-float v1, v3, p2

    mul-float v2, v4, p2

    move-object v0, p0

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 9

    new-instance v7, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v7}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    new-instance v8, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v8}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    if-le p1, p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v2, p1, p2

    neg-float v1, v2

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    int-to-float p2, p2

    div-float v4, p2, p1

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    neg-float v3, v4

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x42c80000    # 100.0f

    move-object v0, v7

    invoke-virtual/range {v0 .. v6}, Landroid/support/v8/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    :goto_0
    const/high16 p1, 0x43340000    # 180.0f

    const/4 p2, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v8, p1, p2, v0, p2}, Landroid/support/v8/renderscript/Matrix4f;->loadRotate(FFFF)V

    invoke-virtual {v7, v7, v8}, Landroid/support/v8/renderscript/Matrix4f;->loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V

    const/high16 p1, -0x40000000    # -2.0f

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v8, p1, v1, v0}, Landroid/support/v8/renderscript/Matrix4f;->loadScale(FFF)V

    invoke-virtual {v7, v7, v8}, Landroid/support/v8/renderscript/Matrix4f;->loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V

    invoke-virtual {v8, p2, p2, v1}, Landroid/support/v8/renderscript/Matrix4f;->loadTranslate(FFF)V

    invoke-virtual {v7, v7, v8}, Landroid/support/v8/renderscript/Matrix4f;->loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V

    invoke-virtual {p0, v7}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix4f;)V

    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 8

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v2, v0, v1

    const/16 v1, 0xe

    aput v2, v0, v1

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    double-to-float p1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p2, p2

    mul-float v3, p3, p3

    add-float/2addr v1, v3

    mul-float v3, p4, p4

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    cmpl-float v3, v1, v2

    if-nez v3, :cond_0

    div-float v1, v2, v1

    mul-float p2, p2, v1

    mul-float p3, p3, v1

    mul-float p4, p4, v1

    :cond_0
    sub-float/2addr v2, p1

    mul-float v1, p2, v0

    mul-float v3, p3, v0

    mul-float v0, v0, p4

    iget-object v4, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    mul-float v5, p2, p2

    mul-float v5, v5, v2

    add-float/2addr v5, p1

    const/4 v6, 0x0

    aput v5, v4, v6

    mul-float v5, p2, p3

    mul-float v5, v5, v2

    sub-float v6, v5, v0

    const/4 v7, 0x4

    aput v6, v4, v7

    mul-float p2, p2, p4

    mul-float p2, p2, v2

    add-float v6, p2, v3

    const/16 v7, 0x8

    aput v6, v4, v7

    add-float/2addr v5, v0

    const/4 v0, 0x1

    aput v5, v4, v0

    mul-float v0, p3, p3

    mul-float v0, v0, v2

    add-float/2addr v0, p1

    const/4 v5, 0x5

    aput v0, v4, v5

    mul-float p3, p3, p4

    mul-float p3, p3, v2

    sub-float v0, p3, v1

    const/16 v5, 0x9

    aput v0, v4, v5

    sub-float/2addr p2, v3

    const/4 v0, 0x2

    aput p2, v4, v0

    add-float/2addr p3, v1

    const/4 p2, 0x6

    aput p3, v4, p2

    mul-float p4, p4, p4

    mul-float p4, p4, v2

    add-float/2addr p4, p1

    const/16 p1, 0xa

    aput p4, v4, p1

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x5

    aput p2, v0, p1

    const/16 p1, 0xa

    aput p3, v0, p1

    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    const/16 p1, 0xd

    aput p2, v0, p1

    const/16 p1, 0xe

    aput p3, v0, p1

    return-void
.end method

.method public multiply(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/support/v8/renderscript/Matrix4f;->loadMultiply(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix4f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Matrix4f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->multiply(Landroid/support/v8/renderscript/Matrix4f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->multiply(Landroid/support/v8/renderscript/Matrix4f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 1

    mul-int/lit8 p1, p1, 0x4

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method

.method public translate(FFF)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->loadTranslate(FFF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix4f;->multiply(Landroid/support/v8/renderscript/Matrix4f;)V

    return-void
.end method

.method public transpose()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v2

    aget v5, v3, v4

    mul-int/lit8 v6, v2, 0x4

    add-int/2addr v6, v0

    aget v7, v3, v6

    aput v7, v3, v4

    aput v5, v3, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method
