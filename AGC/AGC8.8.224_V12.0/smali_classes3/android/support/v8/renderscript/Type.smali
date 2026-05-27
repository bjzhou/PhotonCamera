.class public Landroid/support/v8/renderscript/Type;
.super Landroid/support/v8/renderscript/BaseObj;


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimYuv:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mElementCount:I


# direct methods
.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    return-void
.end method

.method public static createX(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Type;
    .locals 9

    if-lez p2, :cond_0

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v3, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    new-instance v2, Landroid/support/v8/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    iput-object p1, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iput p2, v2, Landroid/support/v8/renderscript/Type;->mDimX:I

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    return-object v2

    :cond_0
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createXY(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Type;
    .locals 9

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    new-instance v2, Landroid/support/v8/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    iput-object p1, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iput p2, v2, Landroid/support/v8/renderscript/Type;->mDimX:I

    iput p3, v2, Landroid/support/v8/renderscript/Type;->mDimY:I

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    return-object v2

    :cond_0
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createXYZ(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;III)Landroid/support/v8/renderscript/Type;
    .locals 9

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-lez p4, :cond_0

    invoke-virtual {p1, p0}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    new-instance v2, Landroid/support/v8/renderscript/Type;

    invoke-direct {v2, v0, v1, p0}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    iput-object p1, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iput p2, v2, Landroid/support/v8/renderscript/Type;->mDimX:I

    iput p3, v2, Landroid/support/v8/renderscript/Type;->mDimY:I

    iput p4, v2, Landroid/support/v8/renderscript/Type;->mDimZ:I

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    return-object v2

    :cond_0
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string p1, "Dimension must be >= 1."

    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public calcElementCount()V
    .locals 8

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

    move-result v0

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasFaces()Z

    move-result v4

    const/4 v5, 0x1

    if-eq v5, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x6

    :goto_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    if-nez v3, :cond_3

    const/4 v3, 0x1

    :cond_3
    mul-int v6, v1, v2

    mul-int v6, v6, v3

    mul-int v6, v6, v4

    :goto_1
    if-eqz v0, :cond_8

    if-gt v1, v5, :cond_4

    if-gt v2, v5, :cond_4

    if-le v3, v5, :cond_8

    :cond_4
    if-le v1, v5, :cond_5

    shr-int/lit8 v1, v1, 0x1

    :cond_5
    if-le v2, v5, :cond_6

    shr-int/lit8 v2, v2, 0x1

    :cond_6
    if-le v3, v5, :cond_7

    shr-int/lit8 v3, v3, 0x1

    :cond_7
    mul-int v7, v1, v2

    mul-int v7, v7, v3

    mul-int v7, v7, v4

    add-int/2addr v6, v7

    goto :goto_1

    :cond_8
    iput v6, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    return-void
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Landroid/support/v8/renderscript/Type;->mElementCount:I

    return v0
.end method

.method public getDummyType(Landroid/support/v8/renderscript/RenderScript;J)J
    .locals 9

    iget v3, p0, Landroid/support/v8/renderscript/Type;->mDimX:I

    iget v4, p0, Landroid/support/v8/renderscript/Type;->mDimY:I

    iget v5, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    iget-boolean v6, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    iget-boolean v7, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    iget v8, p0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    move-object v0, p1

    move-wide v1, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/v8/renderscript/RenderScript;->nIncTypeCreate(JIIIZZI)J

    move-result-wide p1

    return-wide p1
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .locals 1

    iget-object v0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    return-object v0
.end method

.method public getX()I
    .locals 1

    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimX:I

    return v0
.end method

.method public getY()I
    .locals 1

    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimY:I

    return v0
.end method

.method public getYuv()I
    .locals 1

    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    return v0
.end method

.method public getZ()I
    .locals 1

    iget v0, p0, Landroid/support/v8/renderscript/Type;->mDimZ:I

    return v0
.end method

.method public hasFaces()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    return v0
.end method

.method public hasMipmaps()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    return v0
.end method
