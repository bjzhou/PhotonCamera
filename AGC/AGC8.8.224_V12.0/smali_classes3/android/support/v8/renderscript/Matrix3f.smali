.class public Landroid/support/v8/renderscript/Matrix3f;
.super Ljava/lang/Object;


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    return-void
.end method

.method public constructor <init>([F)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 1

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    add-int/2addr p1, p2

    aget p1, v0, p1

    return p1
.end method

.method public getArray()[F
    .locals 1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public load(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 3

    invoke-virtual {p1}, Landroid/support/v8/renderscript/Matrix3f;->getArray()[F

    move-result-object p1

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public loadIdentity()V
    .locals 4

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

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

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v3, v0, v1

    const/4 v1, 0x6

    aput v3, v0, v1

    const/4 v1, 0x7

    aput v3, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    return-void
.end method

.method public loadMultiply(Landroid/support/v8/renderscript/Matrix3f;Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v6, v2, :cond_0

    invoke-virtual {p2, v1, v6}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v9

    invoke-virtual {p1, v6, v0}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v10

    mul-float v10, v10, v9

    add-float/2addr v3, v10

    invoke-virtual {p1, v6, v8}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v8

    mul-float v8, v8, v9

    add-float/2addr v4, v8

    invoke-virtual {p1, v6, v7}, Landroid/support/v8/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float v7, v7, v9

    add-float/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1, v0, v3}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v1, v8, v4}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    invoke-virtual {p0, v1, v7, v5}, Landroid/support/v8/renderscript/Matrix3f;->set(IIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 4

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    aput p1, v1, v2

    neg-float v2, v0

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x3

    aput v0, v1, v2

    const/4 v0, 0x4

    aput p1, v1, v0

    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 8

    const v0, 0x3c8efa35

    mul-float p1, p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v1, p2, p2

    mul-float v2, p3, p3

    add-float/2addr v1, v2

    mul-float v2, p4, p4

    add-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

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

    iget-object v4, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-float v5, p2, p2

    mul-float v5, v5, v2

    add-float/2addr v5, p1

    const/4 v6, 0x0

    aput v5, v4, v6

    mul-float v5, p2, p3

    mul-float v5, v5, v2

    sub-float v6, v5, v0

    const/4 v7, 0x3

    aput v6, v4, v7

    mul-float p2, p2, p4

    mul-float p2, p2, v2

    add-float v6, p2, v3

    const/4 v7, 0x6

    aput v6, v4, v7

    add-float/2addr v5, v0

    const/4 v0, 0x1

    aput v5, v4, v0

    mul-float v0, p3, p3

    mul-float v0, v0, v2

    add-float/2addr v0, p1

    const/4 v5, 0x4

    aput v0, v4, v5

    mul-float p3, p3, p4

    mul-float p3, p3, v2

    sub-float v0, p3, v1

    const/4 v5, 0x7

    aput v0, v4, v5

    sub-float/2addr p2, v3

    const/4 v0, 0x2

    aput p2, v4, v0

    add-float/2addr p3, v1

    const/4 p2, 0x5

    aput p3, v4, p2

    mul-float p4, p4, p4

    mul-float p4, p4, v2

    add-float/2addr p4, p1

    const/16 p1, 0x8

    aput p4, v4, p1

    return-void
.end method

.method public loadScale(FF)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    return-void
.end method

.method public loadScale(FFF)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x4

    aput p2, v0, p1

    const/16 p1, 0x8

    aput p3, v0, p1

    return-void
.end method

.method public loadTranslate(FF)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix3f;->loadIdentity()V

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    const/4 p1, 0x7

    aput p2, v0, p1

    return-void
.end method

.method public multiply(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p0, p1}, Landroid/support/v8/renderscript/Matrix3f;->loadMultiply(Landroid/support/v8/renderscript/Matrix3f;Landroid/support/v8/renderscript/Matrix3f;)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->load(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(F)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1}, Landroid/support/v8/renderscript/Matrix3f;->loadRotate(F)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public rotate(FFFF)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Matrix3f;->loadRotate(FFFF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FF)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/Matrix3f;->loadScale(FF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public scale(FFF)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix3f;->loadScale(FFF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public set(IIF)V
    .locals 1

    mul-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    add-int/2addr p1, p2

    aput p3, v0, p1

    return-void
.end method

.method public translate(FF)V
    .locals 1

    new-instance v0, Landroid/support/v8/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/support/v8/renderscript/Matrix3f;-><init>()V

    invoke-virtual {v0, p1, p2}, Landroid/support/v8/renderscript/Matrix3f;->loadTranslate(FF)V

    invoke-virtual {p0, v0}, Landroid/support/v8/renderscript/Matrix3f;->multiply(Landroid/support/v8/renderscript/Matrix3f;)V

    return-void
.end method

.method public transpose()V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Landroid/support/v8/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v2

    aget v5, v3, v4

    mul-int/lit8 v6, v2, 0x3

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
