.class public Landroid/support/v8/renderscript/Type$Builder;
.super Ljava/lang/Object;


# instance fields
.field mDimFaces:Z

.field mDimMipmaps:Z

.field mDimX:I

.field mDimY:I

.field mDimZ:I

.field mElement:Landroid/support/v8/renderscript/Element;

.field mRS:Landroid/support/v8/renderscript/RenderScript;

.field mYuv:I


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    invoke-virtual {p2}, Landroid/support/v8/renderscript/BaseObj;->checkValid()V

    iput-object p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iput-object p2, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    return-void
.end method


# virtual methods
.method public create()Landroid/support/v8/renderscript/Type;
    .locals 11

    iget v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    if-lez v0, :cond_2

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps not supported with 3D types."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Both X and Y dimension required when Z is present."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    if-lez v1, :cond_4

    iget v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    if-lez v2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "X dimension required when Y is present."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iget-boolean v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    if-eqz v2, :cond_6

    if-lez v1, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "Cube maps require 2D Types."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_2
    iget v1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    if-eqz v1, :cond_8

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

    const-string v1, "YUV only supports basic 2D."

    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    iget-object v2, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    iget-object v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    invoke-virtual {v0, v2}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    iget v5, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iget v6, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iget v7, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iget-boolean v8, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iget-boolean v9, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iget v10, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    invoke-virtual/range {v2 .. v10}, Landroid/support/v8/renderscript/RenderScript;->nTypeCreate(JIIIZZI)J

    move-result-wide v0

    new-instance v2, Landroid/support/v8/renderscript/Type;

    iget-object v3, p0, Landroid/support/v8/renderscript/Type$Builder;->mRS:Landroid/support/v8/renderscript/RenderScript;

    invoke-direct {v2, v0, v1, v3}, Landroid/support/v8/renderscript/Type;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    iget-object v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mElement:Landroid/support/v8/renderscript/Element;

    iput-object v0, v2, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    iget v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    iput v0, v2, Landroid/support/v8/renderscript/Type;->mDimX:I

    iget v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    iput v0, v2, Landroid/support/v8/renderscript/Type;->mDimY:I

    iget v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    iput v0, v2, Landroid/support/v8/renderscript/Type;->mDimZ:I

    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    iput-boolean v0, v2, Landroid/support/v8/renderscript/Type;->mDimMipmaps:Z

    iget-boolean v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    iput-boolean v0, v2, Landroid/support/v8/renderscript/Type;->mDimFaces:Z

    iget v0, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    iput v0, v2, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    invoke-virtual {v2}, Landroid/support/v8/renderscript/Type;->calcElementCount()V

    return-object v2
.end method

.method public setFaces(Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimFaces:Z

    return-object p0
.end method

.method public setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimMipmaps:Z

    return-object p0
.end method

.method public setX(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimX:I

    return-object p0

    :cond_0
    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension X are not valid."

    invoke-direct {p1, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setY(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimY:I

    return-object p0

    :cond_0
    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension Y are not valid."

    invoke-direct {p1, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setYuvFormat(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v0, "Only NV21 and YV12 are supported.."

    invoke-direct {p1, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_0
    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mYuv:I

    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x32315659 -> :sswitch_0
    .end sparse-switch
.end method

.method public setZ(I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    if-lez p1, :cond_0

    iput p1, p0, Landroid/support/v8/renderscript/Type$Builder;->mDimZ:I

    return-object p0

    :cond_0
    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    const-string v0, "Values of less than 1 for Dimension Z are not valid."

    invoke-direct {p1, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
