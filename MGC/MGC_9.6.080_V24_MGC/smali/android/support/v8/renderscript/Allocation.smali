.class public Landroid/support/v8/renderscript/Allocation;
.super Landroid/support/v8/renderscript/BaseObj;
.source "PG"


# static fields
.field public static final USAGE_GRAPHICS_TEXTURE:I = 0x2

.field public static final USAGE_IO_INPUT:I = 0x20

.field public static final USAGE_IO_OUTPUT:I = 0x40

.field public static final USAGE_SCRIPT:I = 0x1

.field public static final USAGE_SHARED:I = 0x80

.field static mBitmapOptions:Landroid/graphics/BitmapFactory$Options;


# instance fields
.field mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

.field mAutoPadding:Z

.field mBitmap:Landroid/graphics/Bitmap;

.field mByteBuffer:Ljava/nio/ByteBuffer;

.field mByteBufferStride:J

.field mConstrainedFace:Z

.field mConstrainedLOD:Z

.field mConstrainedY:Z

.field mConstrainedZ:Z

.field mCurrentCount:I

.field mCurrentDimX:I

.field mCurrentDimY:I

.field mCurrentDimZ:I

.field mIncAllocDestroyed:Z

.field mIncCompatAllocation:J

.field mReadAllowed:Z

.field mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

.field mSelectedLOD:I

.field mSelectedY:I

.field mSelectedZ:I

.field mSize:I

.field public mType:Landroid/support/v8/renderscript/Type;

.field mUsage:I

.field mWriteAllowed:Z


# direct methods
.method private 0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 12

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v9, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1
    move v4, p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, v6, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v9, p4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

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

    :goto_5
    move-object v7, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    move-object v0, p0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    iget-object v0, v6, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->nKKlrveQIefVqwMX(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->FfFTfujBjlLwylFL(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    if-eq v0, v2, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/16 :goto_20

    nop

    nop

    :goto_d
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    iget-object v0, v6, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    iget v5, v6, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

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

    nop

    :goto_10
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->zlLZbXafkbKARgwA(Landroid/support/v8/renderscript/Allocation;IIIIZ)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-int v8, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    move v6, p2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->asASjhxpxMlWzLbQ(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_15
    move-object v6, p0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_16
    const v0, 0x17

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v9, p4

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1c
    move v1, p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    iget-object v0, v6, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1e
    iget-object v1, v6, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1f
    move v11, v1

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    :goto_21
    const v1, 0x1f

    nop

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

    :goto_22
    iget v10, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    move-object/from16 v9, p4

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

    :goto_24
    rem-int v0, v0, v1

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

    :goto_25
    goto/32 :goto_31

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static/range {v1 .. v11}, Landroid/support/v8/renderscript/Allocation;->oxpZcuWVSEJsmUTJ(Landroid/support/v8/renderscript/RenderScript;JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_30

    nop

    nop

    :goto_29
    move v4, v8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    move v5, v11

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    move v11, v0

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

    :goto_2d
    mul-int v3, p5, v0

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

    nop

    :goto_2e
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->kIouBCyiUYddyJZT(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

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

    :goto_30
    return-void

    nop

    nop

    :goto_31
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_2
    goto/32 :goto_25

    nop
.end method

.method private 194b7ea49e5b4675687e186ffda5a236m(Landroid/support/v8/renderscript/Type;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->hdmuUYotksoWlXMm(Landroid/support/v8/renderscript/Type;)I

    move-result p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_19

    nop

    nop

    :goto_3
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->goKkmPGzubjTpqpT(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

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

    :goto_7
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x13

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

    :goto_9
    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xe

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->jjHbnWLXJRsIwydl(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    mul-int/2addr v0, p1

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_12
    iput p1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    if-gt v1, v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    if-gt p1, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private 32fdd65065ecfc1922c3154d2d7dbdcfm()J
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

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

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_8
    const v1, 0x1f

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->EoqVDDduwVSVRWMy(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v0, p0}, Landroid/support/v8/renderscript/Allocation;->tDvmQxAoCaDLKsOv(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    return-wide v0

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method private 4f104d61aa3a38ab3908a7f258e4269em(IIII)V
    .locals 1

    goto/32 :goto_15

    nop

    nop

    :goto_0
    if-gez p4, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    nop

    :goto_4
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    add-int/2addr p2, p4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    const-string p1, "Height or width cannot be negative."

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    if-le p1, v0, :cond_2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    const-string p1, "Updated region larger than allocation."

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    nop

    :goto_d
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    :goto_e
    add-int/2addr p1, p3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gez p2, :cond_3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_1e

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    if-gez p3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    if-gez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    iget p0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p1, "Offset cannot be negative."

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

    nop

    :goto_1d
    if-le p2, p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_6
    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 50255898632e75db1d9631034025586bm(IIIIZ)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    const-string p0, " at offset "

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2
    const-string p5, "Overflow, Available count "

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    const-string p0, ", got "

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4
    if-le v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5
    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p4, Ljava/lang/StringBuilder;

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

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, p1, p2

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

    :goto_e
    new-instance p3, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    :goto_14
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    invoke-static {p4, p0}, Landroid/support/v8/renderscript/Allocation;->WaclEcFkasiYyzGQ(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->lhsYJhqXuBDkTtES(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p0, "."

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_19
    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string p1, "Count must be >= 1."

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p4, p0}, Landroid/support/v8/renderscript/Allocation;->KUtsTuCAljVjyMoZ(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1f
    invoke-direct {p3, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p4, p2}, Landroid/support/v8/renderscript/Allocation;->zSPnqzhVSNrxyKTN(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_22
    throw p3

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-int/lit8 p4, p4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    :goto_26
    const-string p1, "Offset must be >= 0."

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_27
    if-gez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_28
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

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

    nop

    :goto_2a
    if-gtz p2, :cond_3

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    :goto_2c
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ge p3, p4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_4
    :goto_2f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_5
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_31
    iget p0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_33
    invoke-static {p4}, Landroid/support/v8/renderscript/Allocation;->FiOiGkvnNelsundu(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {p4, p1}, Landroid/support/v8/renderscript/Allocation;->KeLWxowmIeIIHYXa(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_35
    div-int/lit8 p4, p4, 0x4

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_36
    if-ge p3, p4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :cond_6
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p4, p0}, Landroid/support/v8/renderscript/Allocation;->PWGUHhrkxARzhtFM(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_38
    const-string p0, "Array too small for allocation type."

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

    :goto_39
    goto :goto_2f

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p4, p0}, Landroid/support/v8/renderscript/Allocation;->UGjBPDlSLtpqEndz(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3c
    throw p1

    nop

    nop

    :goto_3d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop
.end method

.method private 559b0de8f71656795fbdcd1b44d48b17m(Landroid/graphics/Bitmap;)V
    .locals 4

    goto/32 :goto_32

    nop

    nop

    :goto_0
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_0
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    :goto_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

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

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x3

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_15

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    invoke-static {p0, p1, v1}, Landroid/support/v8/renderscript/Allocation;->ygFKnFYQWInLvdYK(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_52

    nop

    nop

    :goto_e
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->OCLYsMJvOpRLZWUn(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    :goto_11
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->oVfWNBqlsBDPTdYb(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_13
    if-ne v0, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_3
    :goto_15
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    aget v0, v0, v1

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

    :goto_17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_19
    invoke-static {p0, p1, v1}, Landroid/support/v8/renderscript/Allocation;->QGpOweLBHQCZufwl(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

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

    :goto_1a
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_1b
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->aHJwMfltuJFPhENp(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1d
    sget-object v0, Landroid/support/v8/renderscript/Allocation$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_1e
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->dDyLfVpBhupgvhMx(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, p1, v1}, Landroid/support/v8/renderscript/Allocation;->cHqFxFgssXLAMfSZ(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

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

    :goto_26
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->hrodYtcLBFUfaGVu(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0xf

    nop

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

    nop

    :goto_28
    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_A:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_29
    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGB:Landroid/support/v8/renderscript/Element$DataKind;

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

    :goto_2a
    sget-object v2, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->ObuuLGVcODRTfSJA(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->yrTkqyzIXESlpDGD(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_32
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_34
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_35
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_4

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    :goto_38
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_39
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_6
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3d
    if-ne v0, v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_7
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3f
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_40
    throw v0

    nop

    nop

    :goto_41
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_42
    throw v0

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eq v0, v2, :cond_8

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_19

    nop

    nop

    :goto_46
    throw v0

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_48
    const/4 v1, 0x4

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

    :goto_49
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    :goto_4a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->RkygtoritFlrekec(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mKind:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4e
    if-eq v0, v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_9
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4f
    new-instance v1, Ljava/lang/StringBuilder;

    nop

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

    :goto_50
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->UOUntnPVFutEalJi(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_52
    invoke-static {p0, p1, v1}, Landroid/support/v8/renderscript/Allocation;->JpGEjQFQosYyadAM(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_53
    if-ne v0, v1, :cond_a

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

    :cond_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    :goto_55
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->anvzzULtDrsZczzZ(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sget-object v1, Landroid/support/v8/renderscript/Element$DataKind;->PIXEL_RGBA:Landroid/support/v8/renderscript/Element$DataKind;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_57
    const-string p1, "Bitmap has an unsupported format for this operation"

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

    :goto_58
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->PmrFccFETEjLzvbR(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    :goto_59
    if-eq v0, v1, :cond_b

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

    :cond_b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_15

    nop

    nop

    :goto_5b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->EgAThPLaMZxeGYYu(Landroid/graphics/Bitmap$Config;)I

    move-result v1

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

    :goto_5e
    throw p0

    nop

    :goto_5f
    goto/32 :goto_4a

    nop

    nop

    :goto_60
    if-eq v0, v2, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop
.end method

.method private 5692a5dc9750242e7b54de48005b1be0m()V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->yTMllVYgyQqnwAfF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    :goto_7
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_9
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    goto :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_e
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "64 bit integer source does not match allocation type "

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_14
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->xysKTwNrJmnqVbhM(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    const v0, 0x16

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x12

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

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

    :goto_20
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->GscCoMjTZKQfgvff(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method private 75a6e6bd1e5555541766a6d5a56da7fbm()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    if-ne v0, v1, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->tKIfccNYsACyMjCx(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    :goto_5
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->bSJlhRizzIIqdjqJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    const-string v1, "32 bit integer source does not match allocation type "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_12
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_13
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_1f

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_19
    goto/32 :goto_3

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    nop

    :goto_1e
    goto :goto_17

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->jzsIaErThnjLcVzy(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 75f7d0fa5920bb485ec3a130869b0c9cm()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->xXknBKKxHqukqfXR(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->aavMckYwNhMdpHma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const v0, 0xa

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->ZhTzuyfOvcMhtgqN(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

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

    nop

    :goto_6
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    :goto_9
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_15
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "32 bit float source does not match allocation type "

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

    :goto_17
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop
.end method

.method private 76a307610f8a61bb1e789165aa0b72bdm()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "16 bit integer source does not match allocation type "

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

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

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1f

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

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_11
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->ZxWDUrRjqXHgQgkn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_17
    goto/16 :goto_4

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1a
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->eIpjhZQjrfPiwXnD(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->NnvuOpQZiFgeUxUQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private 781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 10

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v8, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    if-gtz v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v5, p1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    iget v3, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

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

    :goto_9
    move v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

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
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->DOSqZydKAthBYcJL(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_15
    move v7, p3

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

    :goto_16
    move v9, p3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    invoke-static/range {v0 .. v9}, Landroid/support/v8/renderscript/Allocation;->gxfacCVRSADfFvdp(Landroid/support/v8/renderscript/Allocation;IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v4, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1c
    move-object v6, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->IHWxpPHvhFBtNrqV(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->ceEOTfjVXQcqNCvN(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

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

    :goto_26
    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_27
    move-object v7, p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x4

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

    :goto_29
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget v6, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

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

    :goto_2b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2c
    if-gtz v6, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 7da883e112a5545b77f31432f61ced8em()V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ALLOCATION:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_25

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->VtaTEqmccDoMdgeE(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "Object source does not match allocation type "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    const v1, 0x6

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

    :goto_13
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_ELEMENT:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SCRIPT:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_TYPE:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->gCewOpHueEfsQiJW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_18
    if-ne v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->RS_SAMPLER:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    if-ne v0, v1, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eq v0, v1, :cond_4

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

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    return-void

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    :goto_23
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->ZAOJoOeKlBgIcwhE(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_24
    throw v0

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_26
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private 86cdb1de44108982c22bf00d32e98209m(IIIIII)V
    .locals 1

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    if-gez p4, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    goto :goto_a

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    if-gez p5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p3, p6

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

    :goto_6
    throw p0

    nop

    :goto_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_9
    if-le p3, p0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    add-int/2addr p1, p4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_c
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    if-gez p6, :cond_4

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_11
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_12
    const-string p1, "Height or width cannot be negative."

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    const-string p1, "Updated region larger than allocation."

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

    :goto_14
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mAdaptedAllocation:Landroid/support/v8/renderscript/Allocation;

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

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    if-le p2, p1, :cond_5

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

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget p0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimZ:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1b
    const-string p1, "Offset cannot be negative."

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    if-le p1, v0, :cond_6

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

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/2addr p2, p5

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

    :goto_20
    if-gez p3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_23
    if-gez p2, :cond_9

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_9
    goto/32 :goto_20

    nop

    nop
.end method

.method private 8ab7800c053474e6ebb6f49d9eac1769m(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 10

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    move-object v7, p2

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

    :goto_1
    iget v2, p2, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget v1, p2, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    iget-object v3, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_31

    nop

    :goto_5
    iget p3, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

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

    :goto_6
    iget v8, p0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    div-int/lit8 p3, p3, 0x4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/2addr v2, p3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static/range {v3 .. v9}, Landroid/support/v8/renderscript/Allocation;->sFWUsoGchrAGJVpZ(Landroid/support/v8/renderscript/RenderScript;JLjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p3, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    if-ge v2, p3, :cond_1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_23

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

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->bgxZLIymMjkcYeFO(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_11

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_14
    const/4 v2, 0x0

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

    :goto_15
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-int/2addr v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    if-ge v1, p3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    mul-int/2addr p3, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

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

    :goto_1b
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    nop

    nop

    :goto_1c
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->XCjUFbhnpuWmYHBb(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v9, v2

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

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_32

    nop

    nop

    :goto_23
    goto :goto_18

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    invoke-static {p0, v3}, Landroid/support/v8/renderscript/Allocation;->FXLTiGOMAHmPvtIF(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    const v0, 0xa

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

    :goto_28
    if-nez v9, :cond_4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2a
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2b
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_2d
    throw p0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eq v0, v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->nrziwEBRBZdOwjBX(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_21

    nop

    nop

    :goto_32
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object v6, p1

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

    nop

    :goto_34
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v0, "Size of output array cannot be smaller than size of allocation."

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_36
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

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

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Landroid/support/v8/renderscript/Allocation;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    iput p5, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mIncAllocDestroyed:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_5
    iget-object p2, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_6
    and-int/lit8 v1, p5, -0x24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7
    const v0, 0x17

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    sget-boolean p1, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-boolean p3, p0, Landroid/support/v8/renderscript/Allocation;->mReadAllowed:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_c
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    :goto_e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p2, "Couldn\'t invoke registerNativeAllocation:"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_10
    new-instance p1, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    :goto_16
    if-nez v1, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_17
    mul-int/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    iput-wide p1, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

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

    :goto_19
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->WgoAGhEJOdzJlWfC(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1a
    throw p1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1e
    iput p1, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq p1, p3, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_3
    :try_start_0
    sget-object p1, Landroid/support/v8/renderscript/RenderScript;->registerNativeAllocation:Ljava/lang/reflect/Method;

    nop

    nop

    sget-object p2, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    nop

    iget p0, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    nop

    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->wVjHEJySApKfauQr(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    invoke-static {p1, p2, p0}, Landroid/support/v8/renderscript/Allocation;->ZuaCacrDsGaogQkI(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    :goto_22
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->eoKtqXfxneaGplqt(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string p3, "RenderScript_jni"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    iput-object p4, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    const-string p1, "Invalid usage combination."

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v1, :cond_4

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_36

    nop

    nop

    :goto_29
    invoke-static {p4}, Landroid/support/v8/renderscript/Allocation;->AEuQJSZxiZswOrUl(Landroid/support/v8/renderscript/Type;)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2b
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->epTmIUpAseOkfCwd(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_45

    nop

    nop

    :goto_2c
    const-wide/16 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p2}, Landroid/support/v8/renderscript/Allocation;->mJmjHdbZXKIlisyB(Landroid/support/v8/renderscript/Element;)I

    move-result p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-boolean p3, p0, Landroid/support/v8/renderscript/Allocation;->mWriteAllowed:Z

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_30
    iput-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_31
    return-void

    nop

    :goto_32
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_33
    and-int/lit8 v1, p5, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_34
    const/4 p3, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_35
    iput-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mWriteAllowed:Z

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_36
    goto/16 :goto_14

    nop

    nop

    :goto_37
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_38
    const-string p1, "Unknown usage specified."

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {p2, p0}, Landroid/support/v8/renderscript/Allocation;->OnptBmBhIeBLsVtc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p3, p1}, Landroid/support/v8/renderscript/Allocation;->sArBrwWRrRXpNWOG(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_10

    nop

    nop

    :goto_3b
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_9

    nop

    nop

    :goto_3c
    iput-wide p1, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3d
    invoke-static {p0, p4}, Landroid/support/v8/renderscript/Allocation;->sIzxsZqRKdJxFSgS(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Type;)V

    :goto_3e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {p1, p0}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_40
    invoke-static {p2}, Landroid/support/v8/renderscript/Allocation;->msCfdzStvVOdkrks(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_41
    if-nez p4, :cond_5

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_42
    iput-object p1, p0, Landroid/support/v8/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_43
    and-int/lit16 v1, p5, -0xe4

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

    :goto_44
    invoke-static {p2, p1}, Landroid/support/v8/renderscript/Allocation;->xfZhonpkjWicowZH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_45
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->kjKNvBkjQoKdqfbk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop
.end method

.method public static AAMjFUvFVMbbEErb(Landroid/support/v8/renderscript/RenderScript;JILandroid/graphics/Bitmap;I)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x2

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

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCubeCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x19

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public static ACtQCNHTzrizkZIt(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop
.end method

.method public static ADwxYcWSvqgGDTvM(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static AEuQJSZxiZswOrUl(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static ALYjNMWbKHCzRFMa(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

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

    nop
.end method

.method public static AOGBSmqNAqsgmKca(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->76a307610f8a61bb1e789165aa0b72bdm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static AdbWNNvIZzXtibsG(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    move-result-object v0

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

.method public static AfCiFQtisffnBLXl(D)D
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    const v1, 0x1

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static AxdNfPwxaiTpwYAS(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->c42252542884844cf067fab133f6083dm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BHiGcDZWYmGDeypm(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

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

.method public static BMtpqZwlvcpLQodo(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static BSwvHPrfjaTKHrII(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75a6e6bd1e5555541766a6d5a56da7fbm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static BaCBDLXelGuISjxH(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x3

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

    :goto_1
    rem-int v0, v0, v1

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

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public static BhYJobhNBOFRMAQq(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BnkSQhspbfZmYuLX(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BtzcVlkRQWAvqUWp(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static BvMojDvVIkOrYVEa(Landroid/support/v8/renderscript/RenderScript;JIIIILandroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(JIIIILandroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static BvOslFmZCaUSyUhy(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V
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

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->b728ffd016004ae5fc7f1dd69895a01am(Landroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static CLVSSBCzkyGtQAae(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static CkUckYkWvIkqPVPj(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static DOSqZydKAthBYcJL(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static DjODGdYcZHXSfNjh(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

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

.method public static DoAXZLoCIVwGlYPC(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_4444(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static EEvjEmEFhXXoGCRM(Landroid/support/v8/renderscript/Allocation;Landroid/view/Surface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Allocation;->setSurface(Landroid/view/Surface;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static EWiAvxJybIIiXdFD(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75f7d0fa5920bb485ec3a130869b0c9cm()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static EgAThPLaMZxeGYYu(Landroid/graphics/Bitmap$Config;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static EoqVDDduwVSVRWMy(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v0, 0xe

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

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x18

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop
.end method

.method public static EoqxxfNCvdpCmhDC(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

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
.end method

.method public static EtLlzNRnLKXErNju(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75a6e6bd1e5555541766a6d5a56da7fbm()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static FWCvgyEVKoDEdDzJ(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75a6e6bd1e5555541766a6d5a56da7fbm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static FXLTiGOMAHmPvtIF(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static FXeXdPwRcEgalsBV(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v0

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
.end method

.method public static FZwFWMBqjvceDsjq(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static FfFTfujBjlLwylFL(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_7
    return-wide v0

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static FhahiOahfbPpwEoL(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static FiOiGkvnNelsundu(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static FiiKsMNycuNIyvNs(Landroid/support/v8/renderscript/RenderScript;JIIIIIIJIIII)V
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
    invoke-virtual/range {p0 .. p14}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static FsTFwdqJfQEhGDFR(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static GAiqdEHPlmamULgi(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static GCAPlhqGHMIYjZIt(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static GHRWSNrjjQDVADsJ(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static GITLKZHKgpwMQxOI(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nAllocationIoSend(J)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static GNwNYeQtpjlFdZmj(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
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

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static GRVhcRWZbylssVhP(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->c42252542884844cf067fab133f6083dm()V

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

    nop
.end method

.method public static GTxloXolTbCDUkXs(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

.method public static GVxQPPBwEonWxfwb(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static GWbEutXVyJmGNjRO(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

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
.end method

.method public static GZScqCNYzYXzCDgC(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static GeEgnjgrGIRHTqkZ(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->b728ffd016004ae5fc7f1dd69895a01am(Landroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static GefBCEyjxiOGWThD(Landroid/support/v8/renderscript/Type$Builder;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static GscCoMjTZKQfgvff(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static GwWKglhyrCbAkNiK(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static HGtBWsoEYxWKgtSL(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HeeCIkDAHJZKKRVf(Landroid/support/v8/renderscript/Allocation;)V
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
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->76a307610f8a61bb1e789165aa0b72bdm()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static HpHkOFIGPdPxuliR(Ljava/lang/Class;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static HrNEmrWmdEbFExTo(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static HvWhTFEGEpBuITCG(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, La;->bq(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
.end method

.method public static HvzGEkgvjEsQsrDs(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75a6e6bd1e5555541766a6d5a56da7fbm()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static IDxRSpjodYllOHuZ(Landroid/support/v8/renderscript/Allocation;)V
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

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->5692a5dc9750242e7b54de48005b1be0m()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static IHWxpPHvhFBtNrqV(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static IQsVKfSvwXGUdHEt(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nAllocationIoReceive(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static IdntgEdbvnpRIeQt(Landroid/support/v8/renderscript/Allocation;IIIILandroid/support/v8/renderscript/Allocation;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static IncPWhualFvlLtMc(Landroid/support/v8/renderscript/RenderScript;JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-virtual/range {p0 .. p10}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead1D(JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static JEkYZAhXAyudZhpg(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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
.end method

.method public static JIfgLlIYBcLAbcZJ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static JJDazOAigswCnmXU(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

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
.end method

.method public static JMERDdcIZHxdcKbd(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static JNjYURvvOLtxBGzY(Landroid/support/v8/renderscript/RenderScript;JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p13}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead2D(JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

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

    nop
.end method

.method public static JNvNURNejrEHPLKs(Landroid/support/v8/renderscript/FieldPacker;)[B
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JXYrovdMhndakQZp(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
.end method

.method public static JpGEjQFQosYyadAM(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lmf;->a(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

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
.end method

.method public static JwiZYawOmYFMCYOy(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

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

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    const v1, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const v0, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static KMHGcVCVhLDRKkjx(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

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
    return-object v0

    nop

    nop
.end method

.method public static KUtsTuCAljVjyMoZ(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static KeLWxowmIeIIHYXa(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static KwrGtbuUcPxDOVBk(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static KzLlukbkIapazbXu(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

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

    nop
.end method

.method public static LJedwUpyManALSOp(Landroid/support/v8/renderscript/Type$Builder;Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static LPppXvbAIYXyFWSw(Landroid/support/v8/renderscript/BaseObj;Ljava/lang/Object;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static LTyYVutlJhsyanKQ(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static LUIQnjMbVsIDGKXh(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static LeWMybmSOFwqJWtK(Landroid/support/v8/renderscript/FieldPacker;)[B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->getData()[B

    move-result-object v0

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
    return-object v0

    nop

    nop
.end method

.method public static MCItxKcVAIwZlUDk(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

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
    return v0

    nop

    nop

    nop
.end method

.method public static MUuTYEpMkLMMQWzi(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static MVhutUyJuNBvTEBt(Landroid/support/v8/renderscript/Type$Builder;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static MiXCexCjubiCpZHA(I)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static MoKVDRuzBaVGpYEV(Landroid/support/v8/renderscript/Allocation;IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-direct/range {p0 .. p9}, Landroid/support/v8/renderscript/Allocation;->d6010742a5da8ccdfb70d5edeb06459dm(IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static MvRXpPzFDvlYuQTF(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static NCdjuRSEKNLcfsWG(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

.method public static NEBddhuRpXBOwWJm(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static NHBRotPItcqQwTEG(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static NQrDauLTlRNIdXHC(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static NboxEZxrdHwlJzrh(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->76a307610f8a61bb1e789165aa0b72bdm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static NmXYLDsnbNdiZjhX(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static NnvuOpQZiFgeUxUQ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    nop
.end method

.method public static NtxMiyhXKyHHcPvq(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static OCLYsMJvOpRLZWUn(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

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
.end method

.method public static OCOddUQVKnRyhdKF(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ObuuLGVcODRTfSJA(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static OhctDYJFUGtKQZKq(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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
    return-object v0

    nop
.end method

.method public static OnptBmBhIeBLsVtc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop
.end method

.method public static PEfkDJjVYckBCRLZ(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->559b0de8f71656795fbdcd1b44d48b17m(Landroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static PWGUHhrkxARzhtFM(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static PcFaVZtOxgINKYlp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static PmrFccFETEjLzvbR(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static PqsxYebYuZbsoWyO(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

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
.end method

.method public static QGpOweLBHQCZufwl(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Lmf;->a(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static QJWJGvTLzsyBHnGJ(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    const v0, 0x19

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

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

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
.end method

.method public static QUBqaJSipZsXxqEa(Landroid/support/v8/renderscript/RenderScript;JLandroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCopyFromBitmap(JLandroid/graphics/Bitmap;)V

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
.end method

.method public static QeypIKgJYKUwaqVU(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75a6e6bd1e5555541766a6d5a56da7fbm()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static QwTebyeyBrQfEKqI(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    const v1, 0xb

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public static QzaWDgbLXEDJDsYM(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_4
    const v0, 0xd

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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
    return-wide v0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop
.end method

.method public static RFNgnZvgFHrilxMO(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static RHyAcEgrQeRtRIMP(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static RWZSWMCXZfxosgwV(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static RXCAhawxrLkxnRSc(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static RZNwWaTCUbZWwfGr(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

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
.end method

.method public static RcEeIbfYQWumpqIv(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->8ab7800c053474e6ebb6f49d9eac1769m(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static RdyFcSywqEHBUmQy(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static RfoPhuDZbKYngblk(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static RiWrKrsGPKHzhcrP(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static RjejfkzazfqLBwJK(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->76a307610f8a61bb1e789165aa0b72bdm()V

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

    nop
.end method

.method public static RkygtoritFlrekec(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static RtwpZMfrcVINeOOw(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V
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

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->e3578a12ca5271acbcea4c6e108f78dcm(Landroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SQnUuZbXoQeAsaEQ(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static SYzCwBiXkPjWFDse(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

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
.end method

.method public static SZzNngbqqdPoYmkZ(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->7da883e112a5545b77f31432f61ced8em()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static SesTHlkuAwtiCSEd(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75f7d0fa5920bb485ec3a130869b0c9cm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static SfxpZJTFmGFBZrRS(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static StnKAlDccufKDXci(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static TLpcPNUsDgAATULb(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static TNJyZrpFXlCKbASz(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

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
.end method

.method public static TQmMdrUFOZbdNbbY(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static TfanDMtlJmZgMxUG(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static TsUKGgKgmWPGDcpV(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1d

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

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    :goto_9
    const v1, 0x11

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

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static UGDMxZfYErBrsXma(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static UGjBPDlSLtpqEndz(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static UOUntnPVFutEalJi(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

.method public static UYnqiLYPBPwgGezN(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->8ab7800c053474e6ebb6f49d9eac1769m(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static UYqzpGSFyGsNZtbk(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

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

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static UaxBgQEdcusmrMuu(Landroid/support/v8/renderscript/RenderScript;JI)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationSyncAll(JI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static UhjaPVtHUJTmhrWy(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static UknxqgnyfjJGSXAs(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static UlqrsToneBoIPOKh(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    const v1, 0x1a

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_a
    rem-int v0, v0, v1

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
.end method

.method public static UznvLiawAQkzGMYZ(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->76a307610f8a61bb1e789165aa0b72bdm()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static VBXlzVDTAstQoOQa(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static VhQkcNqbmvHKteLP(Landroid/support/v8/renderscript/RenderScript;)V
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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static VhvJgJQzvrTtsrqX(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const v0, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    const v1, 0x1

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

    :goto_a
    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static VtaTEqmccDoMdgeE(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static VtiTKzvbRyYzCrlX(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(IILjava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static VucPDnvFgbAXhTyt(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
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

    :goto_1
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static WBvYzBnizdlYofgT(Landroid/support/v8/renderscript/RenderScript;JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual/range {p0 .. p13}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static WBzagcmHoPNTTaoe(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

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

    nop
.end method

.method public static WCtPAZdtUUuRyePy(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static WEPKwLsxLrXznqEt(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static WKnYtWixYgIqgKUC(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

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
.end method

.method public static WOdwGoVfzEPPooLH(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static WWDQwcniTGlaXLax(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static WaclEcFkasiYyzGQ(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static WgoAGhEJOdzJlWfC(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static WitNVqqOoEnMNwqN(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static WzHHElMUyqVNTrGF(Landroid/support/v8/renderscript/RenderScript;)V
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static WzgmdSSidskjgAuE(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XBptfnbhcOWZyCTI(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->c42252542884844cf067fab133f6083dm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static XCjUFbhnpuWmYHBb(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XGrdHxQysQJBMaYf(Landroid/support/v8/renderscript/Allocation;IIII)V
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

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->4f104d61aa3a38ab3908a7f258e4269em(IIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static XOZlhqokDBoGUynd(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    const v0, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v1, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

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

.method public static XXBGEvmMHajRtXLb(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

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

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XZJgaKNLucTyvGDG(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

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

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static XpziLhLcVyukywFP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static XqvIRCeYNYMfWixk(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static XvmvOAnGkglIRyiN(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static YGQIYaHWNFBDSKrZ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGB_565(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static YQqYJLRtqohNFoFG(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static YTFRYFAYyBlQiXWj(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static YZmSGLwuWxydSEeS(Landroid/support/v8/renderscript/RenderScript;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getDispatchAPILevel()I

    move-result v0

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
.end method

.method public static YmJpTELeBHImyCkm(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static YnhZHhRGTQSdydpU(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->c42252542884844cf067fab133f6083dm()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static YtjieFwVTQbTMDpf(Landroid/support/v8/renderscript/RenderScript;JLandroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCopyToBitmap(JLandroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static YuKncuiAzxeeBMuW(Landroid/support/v8/renderscript/Allocation;IIIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->86cdb1de44108982c22bf00d32e98209m(IIIIII)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static YzHQBdWRhZgDNieT(Landroid/support/v8/renderscript/RenderScript;JIIIIIIJIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p14}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData2D(JIIIIIIJIIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZAOJoOeKlBgIcwhE(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static ZElmhGLazbRCQUmo(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ZGAajxMBgTlOvCZX(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZMpwvvqaWILlKLKt(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static ZOvUhpdKYOtImVFj(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZPrHnEWpzqixHAxf(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static ZRCBPLAhvyDpLoiA(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZUhopmdLPtxOuMOE(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {p0 .. p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

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

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static ZXtUznkyPmUebVPO(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75f7d0fa5920bb485ec3a130869b0c9cm()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static ZbFYLQJBSVLUhEfg(Landroid/support/v8/renderscript/RenderScript;JLandroid/view/Surface;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/RenderScript;->nAllocationSetSurface(JLandroid/view/Surface;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static ZhTzuyfOvcMhtgqN(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static ZhxTUNgXXgRZzHKl(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->ioSend()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ZmXjjfOgLUQyUEHc(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
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

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ZsiGqqptHtQIxRcC(Landroid/support/v8/renderscript/Allocation;IILandroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFrom(IILandroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ZthBHVcbXwMpINKC(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZuaCacrDsGaogQkI(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ZxWDUrRjqXHgQgkn(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static aCWdYFXGgtMPkZjT(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, La;->bq(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static aFkUkTGtmdNiWewJ(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static aGRocLqqDGozywAT(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static aHJwMfltuJFPhENp(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

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

.method public static aJwqtRQGxMRioyhK(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

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
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

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

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

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

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static aavMckYwNhMdpHma(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static agToeBnwQhychRVJ(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static anvzzULtDrsZczzZ(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static asASjhxpxMlWzLbQ(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static axhBmxrekMzVWwod(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, "Object passed is not an array of primitives."

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_9
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->XBptfnbhcOWZyCTI(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_3e

    nop

    nop

    :goto_e
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->DjODGdYcZHXSfNjh(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_10
    sget-object p0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->IDxRSpjodYllOHuZ(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_12
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->HvzGEkgvjEsQsrDs(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_47

    nop

    nop

    :goto_18
    if-eq p1, v0, :cond_3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_19
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p2, :cond_4

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    const-string p1, "Object passed is not an Array of primitives."

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

    :goto_21
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->nOXoxsLjvZMvgYht(Ljava/lang/Class;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_23
    if-nez p2, :cond_5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_25
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_26
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-object p0

    nop

    nop

    :goto_2a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez p2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_6
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq p1, v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->sjIMzLQbFMwmdXtL(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    :goto_31
    goto/32 :goto_43

    nop

    nop

    :goto_32
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_33
    if-nez p2, :cond_9

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    :goto_34
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_35
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_37
    return-object p0

    nop

    :goto_38
    goto/32 :goto_2c

    nop

    nop

    :goto_39
    if-eq p1, v0, :cond_a

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

    :cond_a
    goto/32 :goto_1d

    nop

    nop

    :goto_3a
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3b
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq p1, v0, :cond_b

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

    :cond_b
    goto/32 :goto_23

    nop

    nop

    :goto_40
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->SesTHlkuAwtiCSEd(Landroid/support/v8/renderscript/Allocation;)V

    :goto_41
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sget-object p0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->HpHkOFIGPdPxuliR(Ljava/lang/Class;)Z

    move-result v0

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

    :goto_45
    return-object p0

    nop

    :goto_46
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_48
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->resUktIPJGKGnFCq(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->tqStrPKlGZyzCXOi(Landroid/support/v8/renderscript/Allocation;)V

    :goto_4c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4d
    return-object p0

    nop

    :goto_4e
    goto/32 :goto_48

    nop

    nop

    :goto_4f
    sget-object p0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_64:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_50
    if-nez p2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_51
    if-eq p1, v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_15

    nop

    nop
.end method

.method private b728ffd016004ae5fc7f1dd69895a01am(Landroid/graphics/Bitmap;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->fRfZTBYFkZReDpXG(Landroid/graphics/Bitmap;)I

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    :goto_6
    const v0, 0xc

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p1, "Cannot update allocation from bitmap, sizes mismatch"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    if-eq v0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->ZElmhGLazbRCQUmo(Landroid/graphics/Bitmap;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bAaHHHjlENfsPeCp(Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

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

    nop

    nop
.end method

.method public static bHXcEBuZjrXgwTPl(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static bHhtxCXZbmVibccz(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static bOPKzTwXnxwgxCzf(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bSJlhRizzIIqdjqJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
.end method

.method public static bTyRFrLZxXbgppjp(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static bbOswctCUMpIpdWV(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static bdQxsQONcpaZwdZD(Landroid/support/v8/renderscript/Type$Builder;Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Type$Builder;->setFaces(Z)Landroid/support/v8/renderscript/Type$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static bgxZLIymMjkcYeFO(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static bncWdcbxWSzHqGaN(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static buzvIBgKntmYdDtr(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method private c377e76a8f5f6d3913fc168d336edefdm()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

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

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->jhcciHRqKeYvggJY(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->nkxwIHbctsYbiAUW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_64:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

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
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_19

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->FZwFWMBqjvceDsjq(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

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

    :goto_13
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "64 bit float source does not match allocation type "

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method private c42252542884844cf067fab133f6083dm()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->UNSIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_4
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->GTxloXolTbCDUkXs(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_a
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_1c

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->uyKFZsGvucUyyyMD(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v1, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_f
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_10
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    :goto_11
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    :goto_15
    iget-object p0, p0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    const-string v1, "8 bit integer source does not match allocation type "

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->XpziLhLcVyukywFP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    throw v0

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_1f
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    const v1, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public static cHqFxFgssXLAMfSZ(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Lmf;->a(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static ceEOTfjVXQcqNCvN(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static cpnbcBgFaWBkOYZs(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x15

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v1, 0x1a

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
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->KMHGcVCVhLDRKkjx(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

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

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static createCubemapFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 8

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

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

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v0, v6

    nop

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

    :goto_3
    const-string v1, "Load failed for bitmap "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v2, v1, -0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_45

    nop

    :goto_6
    invoke-static {v6, p1, v1, v2}, Landroid/support/v8/renderscript/Allocation;->yFkgFychNffAsIYw(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v3, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a
    if-eqz v3, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v6, Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3d

    nop

    nop

    :goto_e
    move-object v4, p1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_f
    const-string v1, "Only power of 2 cube faces supported"

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    nop

    :goto_11
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->YQqYJLRtqohNFoFG(Landroid/graphics/Bitmap;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    and-int/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    const-string v1, "Cubemap height must be multiple of 6"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->AAMjFUvFVMbbEErb(Landroid/support/v8/renderscript/RenderScript;JILandroid/graphics/Bitmap;I)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v2, v1}, Landroid/support/v8/renderscript/Allocation;->bdQxsQONcpaZwdZD(Landroid/support/v8/renderscript/Type$Builder;Z)Landroid/support/v8/renderscript/Type$Builder;

    goto/32 :goto_9

    nop

    nop

    :goto_18
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->hGmwvhXYFKkoCBzr(Landroid/graphics/Bitmap;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_19
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2, p0, v6}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    goto/32 :goto_32

    nop

    nop

    :goto_1b
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    throw v0

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1f
    const v1, 0x11

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-wide/16 v3, 0x0

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

    :goto_21
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->ZGAajxMBgTlOvCZX(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    cmp-long v0, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_25
    const-string v2, " element "

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

    nop

    :goto_26
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    :goto_28
    iget v3, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

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

    :goto_29
    if-eq p2, v3, :cond_3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    div-int/lit8 v2, v2, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    if-eq v2, v1, :cond_4

    nop

    goto/32 :goto_30

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v2, Landroid/support/v8/renderscript/Type$Builder;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    const-string v1, "Only square cube map faces supported"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2f
    throw v0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v2, v1}, Landroid/support/v8/renderscript/Allocation;->bHhtxCXZbmVibccz(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object v3, p0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    move v5, p3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_35
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->RWZSWMCXZfxosgwV(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v6

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

    :goto_36
    invoke-static {v2}, Landroid/support/v8/renderscript/Allocation;->mVXPqGgPhGCFRyoo(Landroid/support/v8/renderscript/Type$Builder;)Landroid/support/v8/renderscript/Type;

    move-result-object v7

    nop

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

    :goto_37
    move-object v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v1, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_39
    invoke-static {v2, v1}, Landroid/support/v8/renderscript/Allocation;->qCpzAsiuUlrWgavl(Landroid/support/v8/renderscript/Type$Builder;Z)Landroid/support/v8/renderscript/Type$Builder;

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3a
    return-object v6

    nop

    nop

    :goto_3b
    goto/32 :goto_24

    nop

    nop

    :goto_3c
    rem-int/lit8 v3, v2, 0x6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3d
    const/4 v1, 0x0

    nop

    nop

    :goto_3e
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    throw v0

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_42
    move v5, p3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v2, v1}, Landroid/support/v8/renderscript/Allocation;->rJuYyWoPDvQFxWal(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_40

    nop

    :goto_45
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const v0, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {v7, p0}, Landroid/support/v8/renderscript/Allocation;->QwTebyeyBrQfEKqI(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop
.end method

.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static createCubemapFromCubeFaces(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method

.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Allocation;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->sugAJxOmBaEXNTCy(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    goto/32 :goto_8

    nop

    :goto_c
    const/16 v1, 0x83

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 11

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-wide v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    new-instance v6, Landroid/support/v8/renderscript/Allocation;

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

    :goto_2
    move-object v9, p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    iget v8, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v4}, Landroid/support/v8/renderscript/Allocation;->WCtPAZdtUUuRyePy(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->HGtBWsoEYxWKgtSL(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    const/16 v10, 0x83

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    move-object v5, p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1a

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

    :goto_a
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->evKSveWbzCevFdKs(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    and-int/lit16 v0, p3, 0x80

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_d
    move-wide v1, p2

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_e
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_f
    const-string p1, "USAGE_SHARED cannot be used with a Bitmap that has a null config."

    nop

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

    :goto_10
    iget v8, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object v6

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v6, p1}, Landroid/support/v8/renderscript/Allocation;->RtwpZMfrcVINeOOw(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_18
    new-instance v6, Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    move-object v0, v6

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

    nop

    :goto_1a
    move-object v3, p0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static/range {v5 .. v10}, Landroid/support/v8/renderscript/Allocation;->pwIYrbyQkRLnkoyF(Landroid/support/v8/renderscript/RenderScript;JILandroid/graphics/Bitmap;I)J

    move-result-wide p2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1e
    move-object v5, p0

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v1, Landroid/graphics/Canvas;

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

    :goto_20
    cmp-long v0, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v4, p0}, Landroid/support/v8/renderscript/Allocation;->otocETdstVYdWSIA(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    cmp-long v0, p2, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    if-eq p3, v0, :cond_3

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

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_25
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->tKuHhSdRIHtuDAhT(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->ctyWPtRTtNOklFGY(Landroid/graphics/Bitmap;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v0, v6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4b

    nop

    :goto_2e
    move-object v3, p0

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

    :goto_2f
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->onwKakrgKPgDvXiF(Landroid/graphics/Bitmap;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_30
    move v10, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_31
    move v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    const/16 v0, 0x83

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_33
    invoke-static {v4, p0}, Landroid/support/v8/renderscript/Allocation;->nZyUXQrSwrbUAIcP(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v6

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

    :goto_34
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->wKTZGboTTxyIdOqV(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_36
    const-string v1, "Load failed."

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0, v5}, Landroid/support/v8/renderscript/Allocation;->TNJyZrpFXlCKbASz(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_38
    return-object v6

    nop

    :goto_39
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static/range {v5 .. v10}, Landroid/support/v8/renderscript/Allocation;->dtinWLFzTNrnqBlR(Landroid/support/v8/renderscript/RenderScript;JILandroid/graphics/Bitmap;I)J

    move-result-wide p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_3b
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    throw p0

    nop

    :goto_3e
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_40
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_41
    throw p0

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v1, p1, v3, v3, v2}, Landroid/support/v8/renderscript/Allocation;->hJiIcENuWFVqdpoo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_44
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

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

    :goto_45
    invoke-static {p0, v0, p2, p3}, Landroid/support/v8/renderscript/Allocation;->WKnYtWixYgIqgKUC(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->PcFaVZtOxgINKYlp(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

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

    :goto_48
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_49
    move-object v9, p1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4a
    invoke-direct {p0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_3e

    nop

    nop

    :goto_4c
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4d
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4e
    const/16 v5, 0x83

    nop

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

    :goto_4f
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_50
    if-eq p2, v0, :cond_7

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_51
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;I)Landroid/support/v8/renderscript/Allocation;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x19

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

    :goto_8
    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v8/renderscript/Allocation;->sTSfLfeShVmpKxMv(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    nop
.end method

.method public static createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->xPyCsXCYVqChEwMt(Landroid/graphics/Bitmap;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p3, p4}, Landroid/support/v8/renderscript/Allocation;->EoqxxfNCvdpCmhDC(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/Allocation;->TLpcPNUsDgAATULb(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

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

    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->XqvIRCeYNYMfWixk(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    and-int/lit16 v0, p4, 0xe0

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
    const-string p1, "Unsupported usage specified."

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static createFromString(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/String;I)Landroid/support/v8/renderscript/Allocation;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1e

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

    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    :catch_0
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->npsrZsBtmDKzCgYg(Landroid/support/v8/renderscript/RenderScript;)V

    :try_start_0
    const-string v0, "UTF-8"

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v0}, Landroid/support/v8/renderscript/Allocation;->YTFRYFAYyBlQiXWj(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    nop

    nop

    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->bTyRFrLZxXbgppjp(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    array-length v1, p1

    nop

    nop

    nop

    invoke-static {p0, v0, v1, p2}, Landroid/support/v8/renderscript/Allocation;->lSvkzTHbBWyEhGFC(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

    nop

    nop

    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->wAttseyPxRNRaoZE(Landroid/support/v8/renderscript/Allocation;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    const-string p1, "Could not convert string to utf-8."

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Allocation;->RXCAhawxrLkxnRSc(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

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

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public static createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v1, 0x4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    move-object v0, v6

    nop

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    move-object v4, v7

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v7, p0}, Landroid/support/v8/renderscript/Allocation;->rzpQntIOXQixdqrp(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_e
    const v0, 0x10

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

    :goto_f
    new-instance v6, Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, p2}, Landroid/support/v8/renderscript/Allocation;->SQnUuZbXoQeAsaEQ(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    cmp-long v0, v1, v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v0, p0

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

    :goto_13
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto/32 :goto_20

    nop

    nop

    :goto_14
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

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

    nop

    :goto_15
    new-instance v0, Landroid/support/v8/renderscript/Type$Builder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->cpnbcBgFaWBkOYZs(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/Allocation;->qNvKlJWGvRPZEJsJ(Landroid/support/v8/renderscript/RenderScript;JIIJ)J

    move-result-wide v1

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

    :goto_18
    const-string v1, "Allocation creation failed."

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

    :goto_19
    move-object v3, p0

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

    :goto_1a
    invoke-direct {v0, p0, p1}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->GefBCEyjxiOGWThD(Landroid/support/v8/renderscript/Type$Builder;)Landroid/support/v8/renderscript/Type;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    move v4, p3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    move v5, p3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-wide/16 v3, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-object v6

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v3, v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

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

    :goto_23
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

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
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Allocation;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->GCAPlhqGHMIYjZIt(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    const v0, 0x4

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

    :goto_c
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    sget-object v0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/support/v8/renderscript/Allocation$MipmapControl;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, v0, p2}, Landroid/support/v8/renderscript/Allocation;->GWbEutXVyJmGNjRO(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static createTyped(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 9

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v3, p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    :goto_3
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v0, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    move v5, p3

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

    :goto_6
    and-int/lit8 v0, p3, 0x20

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "USAGE_IO not supported, Allocation creation failed."

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    :goto_9
    goto/16 :goto_22

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    move-object v4, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_e
    return-object v6

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_24

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "Bad Type"

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, p0

    nop

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

    :goto_14
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/Allocation;->szYcSMbwypxvofFI(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v6, Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->GAiqdEHPlmamULgi(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_10

    nop

    :goto_1c
    cmp-long v0, v0, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;-><init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Type;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-wide/16 v5, 0x0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->yEFfuOBpfQSTMCuI(Landroid/support/v8/renderscript/RenderScript;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

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

    :goto_21
    throw v0

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Landroid/support/v8/renderscript/RSRuntimeException;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_25
    const-wide/16 v7, 0x0

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

    :goto_26
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "Allocation creation failed."

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget v3, p2, Landroid/support/v8/renderscript/Allocation$MipmapControl;->mID:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static/range {v0 .. v6}, Landroid/support/v8/renderscript/Allocation;->jvcjwHysGZWprhIE(Landroid/support/v8/renderscript/RenderScript;JIIJ)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2d
    move v4, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Landroid/support/v8/renderscript/RSInvalidStateException;

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

    :goto_2f
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    cmp-long v0, v1, v7

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/Allocation;->wUbOguxLIFrbgHgH(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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

    nop
.end method

.method public static ctyWPtRTtNOklFGY(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static cvyMplKbLUEAVnVD(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->76a307610f8a61bb1e789165aa0b72bdm()V

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

    nop
.end method

.method public static cwxJxTSzhfavZXhq(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->559b0de8f71656795fbdcd1b44d48b17m(Landroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method private d6010742a5da8ccdfb70d5edeb06459dm(IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 17

    goto/32 :goto_d

    nop

    nop

    :goto_0
    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_3
    move/from16 v16, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    move/from16 v10, p5

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_9
    mul-int/2addr v3, v5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static/range {v2 .. v16}, Landroid/support/v8/renderscript/Allocation;->gjzYpXfSlKsieGoK(Landroid/support/v8/renderscript/RenderScript;JIIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    move/from16 v11, p6

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_f
    iget v8, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v3, v0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    :goto_12
    move/from16 v16, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    mul-int v1, v1, p4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_14
    mul-int v1, v1, p6

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_15
    throw v0

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_19
    move/from16 v6, p2

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

    :goto_1a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1b
    invoke-static {v3}, Landroid/support/v8/renderscript/Allocation;->NEBddhuRpXBOwWJm(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1c
    move v13, v2

    nop

    :goto_1d
    goto/32 :goto_34

    nop

    nop

    :goto_1e
    invoke-direct {v0, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    div-int/lit8 v3, v1, 0x4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    mul-int v1, v1, p5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_23
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->VhvJgJQzvrTtsrqX(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v3}, Landroid/support/v8/renderscript/Allocation;->ekfZVexsLYmQrYWv(Landroid/support/v8/renderscript/Element;)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_26
    move-object/from16 v0, p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_27
    if-le v3, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_28
    invoke-static/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->niqAPPpSdhgWkIND(Landroid/support/v8/renderscript/Allocation;IIIIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move/from16 v7, p3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move/from16 v5, p1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v14, p8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v4, "Array too small for allocation type."

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_26

    nop

    nop

    :goto_32
    move/from16 v9, p4

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_33
    goto/32 :goto_31

    nop

    nop

    :goto_34
    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_35
    iget v15, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_36
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    mul-int v2, v2, p9

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_30

    nop

    :goto_3a
    if-eq v3, v5, :cond_3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-le v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v13, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3d
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->BnkSQhspbfZmYuLX(Landroid/support/v8/renderscript/Element;)I

    move-result v1

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

    nop

    :goto_3e
    iget-object v1, v1, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v14, p8

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v12, p7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->tFsQhcPABcCMVBsz(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_42
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v2, v14, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop
.end method

.method public static dDyLfVpBhupgvhMx(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static dFQWadSpZYlltRXr(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

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

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static dbwSFXGBEDwuyjMP(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const v1, 0x15

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
.end method

.method public static dfhEQnqcXpRPiimx(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static dqWaZsCHHHLjXrjq(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public static drmmMPrOAZvOWRVK(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

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
    return v0

    nop
.end method

.method public static dtinWLFzTNrnqBlR(Landroid/support/v8/renderscript/RenderScript;JILandroid/graphics/Bitmap;I)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

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
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateFromBitmap(JILandroid/graphics/Bitmap;I)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    nop
.end method

.method private e3578a12ca5271acbcea4c6e108f78dcm(Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroid/support/v8/renderscript/Allocation;->mBitmap:Landroid/graphics/Bitmap;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static eIpjhZQjrfPiwXnD(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static eaVpjyePfCwgdmrB(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static efCSUazJAwQeNhzz(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->c42252542884844cf067fab133f6083dm()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static ekfZVexsLYmQrYWv(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->XXBGEvmMHajRtXLb(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object p1

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

    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

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

    :goto_2
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->DoAXZLoCIVwGlYPC(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

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

    nop

    :goto_4
    if-eq p1, v0, :cond_0

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->jOYhhhKuJoomYXPV(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const-string v0, "Bad bitmap type: "

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->OhctDYJFUGtKQZKq(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object p0

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

    :goto_8
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->YGQIYaHWNFBDSKrZ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object p0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, p1}, Landroid/support/v8/renderscript/Allocation;->tlNXSZhveCNFbndZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_d
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p1, v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->tvSOCvGAbQbEnOTO(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    return-object p0

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    if-eq p1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_15
    return-object p0

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->WitNVqqOoEnMNwqN(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_5

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static eoKtqXfxneaGplqt(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static epPBvpiXeAKoVrWk(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->elementFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static epTmIUpAseOkfCwd(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

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

.method public static epiAenFLlZRbPlzN(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->559b0de8f71656795fbdcd1b44d48b17m(Landroid/graphics/Bitmap;)V

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
.end method

.method public static evKSveWbzCevFdKs(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->typeFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method private f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 12

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    :goto_2
    invoke-static/range {v1 .. v11}, Landroid/support/v8/renderscript/Allocation;->IncPWhualFvlLtMc(Landroid/support/v8/renderscript/RenderScript;JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->BMtpqZwlvcpLQodo(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x3

    nop

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

    nop

    :goto_6
    move-object v7, p3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v1, v6, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_b
    const v1, 0x11

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v6, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_d
    move v11, v1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    move v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_11
    move v6, p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->hUpkTbPxOlNLDsSr(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_13
    move-object/from16 v9, p4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_14
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->ifjQLlLfbZCyDYEj(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, v6, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_17
    move v4, v8

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_18
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_19
    mul-int v8, v0, p2

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
    iget-object v0, v6, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->jHyRXxlyWBBVOdhh(Landroid/support/v8/renderscript/Allocation;IIIIZ)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_21
    iget v0, v9, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_22
    iget-object v0, v6, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_23
    move-object v6, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v9, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_25
    iget v10, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v5, v6, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v2, p2

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

    nop

    :goto_28
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_29
    mul-int v3, p5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move v11, v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->xiFxmxoGsNvCSDpT(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_e

    nop

    :goto_2d
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v9, p4

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

    nop

    :goto_2f
    move v4, p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v5, v11

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_31
    const v0, 0x1c

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

    :goto_32
    if-eq v0, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public static fGuAiPgfistrfEfT(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static fPzulwtMRVUTExOm(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static fQkZNdMIkiRowwUs(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->getPos()I

    move-result v0

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
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fQlasrOsEwXTWYfJ(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nIncObjDestroy(J)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static fRfZTBYFkZReDpXG(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static fVKHFVkmavIlNeUf(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    nop

    :goto_3
    goto/32 :goto_8

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static fWtCDOPPZWWcWJZn(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static fZmeeYOmugpdSFDn(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Type$Builder;->setX(I)Landroid/support/v8/renderscript/Type$Builder;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop
.end method

.method public static ftDWRZZXZXRMnzRi([B)Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static gAWANAviIsEvNriU(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

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

    :goto_1
    return v0

    nop
.end method

.method public static gCewOpHueEfsQiJW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static gMuBQmynXGsLdCLs(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static gOqAlmhLORyqashy(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

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

    nop
.end method

.method public static gjzYpXfSlKsieGoK(Landroid/support/v8/renderscript/RenderScript;JIIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
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

    nop

    :goto_1
    invoke-virtual/range {p0 .. p14}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(JIIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static goKkmPGzubjTpqpT(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static gslhVXhBmfXEeWzn(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getX()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static guUCVQECSWQhaHgO(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static gxfacCVRSADfFvdp(Landroid/support/v8/renderscript/Allocation;IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p9}, Landroid/support/v8/renderscript/Allocation;->d6010742a5da8ccdfb70d5edeb06459dm(IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static hGmwvhXYFKkoCBzr(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static hJiIcENuWFVqdpoo(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static hKutMbXdRWMlVpxf(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static hUpkTbPxOlNLDsSr(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static hdmuUYotksoWlXMm(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getZ()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static heEpNwJrUZmFkyBm(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/support/v8/renderscript/BaseObj;->destroy()V

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

    nop

    nop
.end method

.method public static hrodYtcLBFUfaGVu(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static iCzTnZlZpXYCVnsi(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

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
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75f7d0fa5920bb485ec3a130869b0c9cm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static iaeNHnDTRvJGTKMQ(Landroid/support/v8/renderscript/RenderScript;JIII)Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->nAllocationGetByteBuffer(JIII)Ljava/nio/ByteBuffer;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop
.end method

.method public static ifjQLlLfbZCyDYEj(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static irrTHOKKGfawXftU(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->c42252542884844cf067fab133f6083dm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static itRvoGixOsRAzbgU(Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;)V
    .locals 0

    goto/32 :goto_1

    nop

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

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static itWjvOgLHccOdpNp(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static jBUnwqQMlPfztOPn(Landroid/support/v8/renderscript/Allocation;)V
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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->c42252542884844cf067fab133f6083dm()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jCSRcMPulvYtYHnt(Landroid/support/v8/renderscript/RenderScript;JIII[BI)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/RenderScript;->nAllocationElementData1D(JIII[BI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jHyRXxlyWBBVOdhh(Landroid/support/v8/renderscript/Allocation;IIIIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->50255898632e75db1d9631034025586bm(IIIIZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jOYhhhKuJoomYXPV(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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
.end method

.method public static jaEMpaoTaxFIXiBu(Landroid/support/v8/renderscript/BaseObj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/support/v8/renderscript/BaseObj;->finalize()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jhcciHRqKeYvggJY(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static jjHbnWLXJRsIwydl(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static jvcjwHysGZWprhIE(Landroid/support/v8/renderscript/RenderScript;JIIJ)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_1
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-wide v0

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xc

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

    :goto_7
    goto/32 :goto_9

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jwYqgcalMPexkRdj(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
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

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static jzsIaErThnjLcVzy(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static kIouBCyiUYddyJZT(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static kcERWKcRSDkXJPNe(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75a6e6bd1e5555541766a6d5a56da7fbm()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static kjKNvBkjQoKdqfbk(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static koeqwzCVmaDCYUEm(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static lBMRDDjqFjzcvguQ(Landroid/support/v8/renderscript/RenderScript;JIIIIIIIJIIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p15}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData3D(JIIIIIIIJIIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static lPLoMcpcvKvfmTmM(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static lSvkzTHbBWyEhGFC(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static lhsYJhqXuBDkTtES(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static lmsKuDrcpWHyoEtJ(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->8ab7800c053474e6ebb6f49d9eac1769m(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static mJmjHdbZXKIlisyB(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static mVXPqGgPhGCFRyoo(Landroid/support/v8/renderscript/Type$Builder;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type$Builder;->create()Landroid/support/v8/renderscript/Type;

    move-result-object v0

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

.method public static mdktKOjBhVjEUrqn(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static mouUiYQEURFEgfAK(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static msCfdzStvVOdkrks(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static nBaGwKEmlkNXNSDw(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nKKlrveQIefVqwMX(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getVectorSize()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static nOXoxsLjvZMvgYht(Ljava/lang/Class;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nSoNwcigNmcnBEYJ(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nVrtRFxsRwYBgGFo(Landroid/support/v8/renderscript/Allocation;II[I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static nZyUXQrSwrbUAIcP(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static nbldDjxCvJroMaqW(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static niqAPPpSdhgWkIND(Landroid/support/v8/renderscript/Allocation;IIIIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->86cdb1de44108982c22bf00d32e98209m(IIIIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nkxwIHbctsYbiAUW(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static npsrZsBtmDKzCgYg(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static nrziwEBRBZdOwjBX(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static nuldUNvybqdzoMFZ(Landroid/support/v8/renderscript/RenderScript;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->getDispatchAPILevel()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static oLagQnuDlpldAsfc(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

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
.end method

.method public static oLwGOEIRfqVZemkH(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

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
.end method

.method public static oRtPHTjFtvPSyTDG(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static oVfWNBqlsBDPTdYb(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static onwKakrgKPgDvXiF(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static otocETdstVYdWSIA(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public static oxpZcuWVSEJsmUTJ(Landroid/support/v8/renderscript/RenderScript;JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p10}, Landroid/support/v8/renderscript/RenderScript;->nAllocationData1D(JIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static oyJhVWGjwaaKuIYh(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static pIHKgSwzidPbRluq(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static pPEemiIGQwvfYMkj(Landroid/support/v8/renderscript/Allocation;)V
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

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75f7d0fa5920bb485ec3a130869b0c9cm()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static pUyBCKZpipoqJmkk(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static paBbuOtmOmXmtoqV(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

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
.end method

.method public static ptqtBthaFedqmxTc(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x12

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

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    return-wide v0

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public static pwIYrbyQkRLnkoyF(Landroid/support/v8/renderscript/RenderScript;JILandroid/graphics/Bitmap;I)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x13

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

    nop

    :goto_1
    const v1, 0x11

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateBitmapBackedAllocation(JILandroid/graphics/Bitmap;I)J

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    goto/32 :goto_6

    nop

    :goto_a
    add-int v0, v0, v1

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
.end method

.method public static pyRCrfgyyFovVrRg(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static qCpzAsiuUlrWgavl(Landroid/support/v8/renderscript/Type$Builder;Z)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Type$Builder;->setMipmaps(Z)Landroid/support/v8/renderscript/Type$Builder;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static qNvKlJWGvRPZEJsJ(Landroid/support/v8/renderscript/RenderScript;JIIJ)J
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationCreateTyped(JIIJ)J

    move-result-wide v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    return-wide v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_9
    const v1, 0x18

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static qjkhkKJKxGthYOVT(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static rINwJiHDpmmTSDjf(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

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

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static rJuYyWoPDvQFxWal(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Type$Builder;->setY(I)Landroid/support/v8/renderscript/Type$Builder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static rKjckLKKFDTbuzrT(Landroid/support/v8/renderscript/Allocation;II[B)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeFromUnchecked(II[B)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static resUktIPJGKGnFCq(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->76a307610f8a61bb1e789165aa0b72bdm()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static rfnFqszaqFMTUMMd(Landroid/support/v8/renderscript/RenderScript;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isAlive()Z

    move-result v0

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

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static romLzHcjtJtcWaNQ(Landroid/support/v8/renderscript/FieldPacker;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/FieldPacker;->getPos()I

    move-result v0

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

    :goto_1
    return v0

    nop
.end method

.method public static rzpQntIOXQixdqrp(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_6

    nop

    :goto_4
    const v0, 0x19

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

    :goto_5
    goto/32 :goto_9

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public static sArBrwWRrRXpNWOG(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static sFWUsoGchrAGJVpZ(Landroid/support/v8/renderscript/RenderScript;JLjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;IZ)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p6}, Landroid/support/v8/renderscript/RenderScript;->nAllocationRead(JLjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static sIzxsZqRKdJxFSgS(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Type;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/Allocation;->194b7ea49e5b4675687e186ffda5a236m(Landroid/support/v8/renderscript/Type;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static sKvKcaLqSOuyzlsq(Landroid/support/v8/renderscript/Allocation;IIII)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->4f104d61aa3a38ab3908a7f258e4269em(IIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sTSfLfeShVmpKxMv(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->createFromBitmapResource(Landroid/support/v8/renderscript/RenderScript;Landroid/content/res/Resources;ILandroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static sXtlJEyMaFZsZbjH(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

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
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sjIMzLQbFMwmdXtL(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static sjiEKoRsdLjsCEZK(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static sugAJxOmBaEXNTCy(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static swHaoiiuPvZoZUTT(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static szYcSMbwypxvofFI(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

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

    :goto_4
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x18

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static szZJtxxoqojwBxUp(Landroid/support/v8/renderscript/Allocation;II[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->copy1DRangeToUnchecked(II[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static tDvmQxAoCaDLKsOv(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v0, 0x17

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

    nop
.end method

.method public static tFsQhcPABcCMVBsz(Landroid/support/v8/renderscript/RenderScript;)V
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

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static tKIfccNYsACyMjCx(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static tKuHhSdRIHtuDAhT(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static tMImMXRmrvZRukdC(Landroid/support/v8/renderscript/RenderScript;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nAllocationGenerateMipmaps(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static tlNXSZhveCNFbndZ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static tmzunoNzzabWBNbe(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static tnbesJLogkQQdiUw(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static tqStrPKlGZyzCXOi(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->c377e76a8f5f6d3913fc168d336edefdm()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static tvSOCvGAbQbEnOTO(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->A_8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method static typeFromBitmap(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/support/v8/renderscript/Allocation$MipmapControl;)Landroid/support/v8/renderscript/Type;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->KwrGtbuUcPxDOVBk(Landroid/graphics/Bitmap;)I

    move-result p0

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

    :goto_4
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->fZmeeYOmugpdSFDn(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    if-eq p2, p0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, p0, v0}, Landroid/support/v8/renderscript/Type$Builder;-><init>(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->LJedwUpyManALSOp(Landroid/support/v8/renderscript/Type$Builder;Z)Landroid/support/v8/renderscript/Type$Builder;

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x5

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

    :goto_e
    return-object p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->epPBvpiXeAKoVrWk(Landroid/support/v8/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->MVhutUyJuNBvTEBt(Landroid/support/v8/renderscript/Type$Builder;)Landroid/support/v8/renderscript/Type;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->tmzunoNzzabWBNbe(Landroid/graphics/Bitmap;)I

    move-result p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->AdbWNNvIZzXtibsG(Landroid/support/v8/renderscript/Type$Builder;I)Landroid/support/v8/renderscript/Type$Builder;

    goto/32 :goto_16

    nop

    nop

    :goto_16
    sget-object p0, Landroid/support/v8/renderscript/Allocation$MipmapControl;->MIPMAP_FULL:Landroid/support/v8/renderscript/Allocation$MipmapControl;

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

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v1, Landroid/support/v8/renderscript/Type$Builder;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop
.end method

.method public static tzDbZBCKtwCLOiFQ(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getY()I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static uLQCdUjQVchrDBlq(Ljava/lang/Object;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static uRWyaLaUYFCOQIDF(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static uRzqZgYipWbMXeqe(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static uWoOgTZTkNFkuwyh(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

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
.end method

.method public static ubmEvilzuLVHxYdq(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->8ab7800c053474e6ebb6f49d9eac1769m(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static ucVKBqGwoHNpGaDv(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static uiqiVXloIpAPZiNt(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
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

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static urKgpgELOXlEYKET(Landroid/support/v8/renderscript/RenderScript;J)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/RenderScript;->nAllocationGetStride(J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x6

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
.end method

.method public static uyKFZsGvucUyyyMD(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static vNGTtiHTNZwOlFxS(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->b469b9ff40c4e98a7ccc4986149892dem(Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static vWolUtPDpvPhqHXD(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

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
.end method

.method public static vdOraxUIUydtkOvp(Landroid/support/v8/renderscript/Allocation;IIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->4f104d61aa3a38ab3908a7f258e4269em(IIII)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static wAttseyPxRNRaoZE(Landroid/support/v8/renderscript/Allocation;[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFrom([B)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static wKTZGboTTxyIdOqV(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->RGBA_8888(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static wLUuMYLndRaVNpGT(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->f4b85dc329c51b75ef72296c79857aa4m(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static wLvUnHCeAeOCXERZ(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static wUbOguxLIFrbgHgH(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_3

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    const v0, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-wide v0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static wVjHEJySApKfauQr(I)Ljava/lang/Integer;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static wYuleirrvjgfhSOg(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1a

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

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

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

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    return-wide v0

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public static wkWTDzepTenMggaY(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75f7d0fa5920bb485ec3a130869b0c9cm()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static wsyWBPAmntzgeFeE(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
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

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static xEtcGojyvqrmbvbI(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    const v1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static xHNkbefPmcUOesAg(Landroid/graphics/Bitmap;)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static xPyCsXCYVqChEwMt(Landroid/graphics/Bitmap;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static xXknBKKxHqukqfXR(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static xfZhonpkjWicowZH(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static xiFxmxoGsNvCSDpT(Landroid/support/v8/renderscript/Allocation;)J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-wide v0

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->32fdd65065ecfc1922c3154d2d7dbdcfm()J

    move-result-wide v0

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
.end method

.method public static xmLuhISoMBqKocuN(Landroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->validate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static xnWBtazXkPDhOdyC(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->781eebb3b27c15adf93195797065020em(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static xysKTwNrJmnqVbhM(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public static xzaBbiFzEadnRdRH(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static yEFfuOBpfQSTMCuI(Landroid/support/v8/renderscript/RenderScript;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->usingIO()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static yFkgFychNffAsIYw(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, La;->bp(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_1
    return-object v0

    nop
.end method

.method public static yTMllVYgyQqnwAfF(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static ygFKnFYQWInLvdYK(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, p2}, Lmf;->a(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap$Config;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

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

    nop
.end method

.method public static yhydCWcqEnvlhnel(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ypehXbbyihMlOric(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x20

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static yrTkqyzIXESlpDGD(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Element;->getBytesSize()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static yuvxciUwNFhOazGa(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->0dff5631a28c7dc3267d8f101d3f83ccm(IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static zCxLWYBcgoYIQdip(Landroid/support/v8/renderscript/Allocation;IIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Allocation;->4f104d61aa3a38ab3908a7f258e4269em(IIII)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static zNpmfEzQJRqtBmnw(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual/range {p0 .. p7}, Landroid/support/v8/renderscript/Allocation;->copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static zSPnqzhVSNrxyKTN(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

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
.end method

.method public static zXTxLqkfFePATVHV(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->8ab7800c053474e6ebb6f49d9eac1769m(Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static zYThKKHkQdVeluoE(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    const v0, 0xb

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x16

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

    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static zaBEBZMusZEOncBO(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75a6e6bd1e5555541766a6d5a56da7fbm()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static zlLZbXafkbKARgwA(Landroid/support/v8/renderscript/Allocation;IIIIZ)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct/range {p0 .. p5}, Landroid/support/v8/renderscript/Allocation;->50255898632e75db1d9631034025586bm(IIIIZ)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static ztKGfbKeREYCxGja(Landroid/support/v8/renderscript/Allocation;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/Allocation;->75f7d0fa5920bb485ec3a130869b0c9cm()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public copy1DRangeFrom(IILandroid/support/v8/renderscript/Allocation;I)V
    .locals 15

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1e

    nop

    nop

    :goto_1
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const v0, 0x9

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, v1, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    move v4, v7

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

    :goto_6
    iget v13, v1, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

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

    :goto_7
    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_9
    move-wide v1, v3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->XOZlhqokDBoGUynd(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    iget-object v6, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_f
    iget-object v0, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iget v5, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_13
    move/from16 v7, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    move/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_15
    iget v14, v0, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

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

    :goto_16
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-object v0, v2

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

    :goto_18
    const v1, 0x19

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

    nop

    :goto_19
    move/from16 v11, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    iget v6, v6, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1b
    invoke-static {v1, v0}, Landroid/support/v8/renderscript/Allocation;->eaVpjyePfCwgdmrB(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static/range {v0 .. v14}, Landroid/support/v8/renderscript/Allocation;->FiiKsMNycuNIyvNs(Landroid/support/v8/renderscript/RenderScript;JIIIIIIJIIII)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v1, p3

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
.end method

.method public copy1DRangeFrom(IILjava/lang/Object;)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v4, p3

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

    nop

    nop

    :goto_4
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->WWDQwcniTGlaXLax(Ljava/lang/Object;)I

    move-result v6

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

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    move-object v1, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    move v2, p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, p3, v0}, Landroid/support/v8/renderscript/Allocation;->BHiGcDZWYmGDeypm(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v5

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

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    move v3, p2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-static/range {v1 .. v6}, Landroid/support/v8/renderscript/Allocation;->GNwNYeQtpjlFdZmj(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public copy1DRangeFrom(II[B)V
    .locals 6

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->GRVhcRWZbylssVhP(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v3, p3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    rem-int v0, v0, v1

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

    nop

    :goto_9
    move v1, p1

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

    nop

    :goto_a
    move v2, p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    array-length v5, p3

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

    :goto_c
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->GwWKglhyrCbAkNiK(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    move-object v0, p0

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
.end method

.method public copy1DRangeFrom(II[F)V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    move-object v3, p3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const v0, 0x7

    nop

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

    :goto_b
    const v1, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    array-length v5, p3

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

    :goto_d
    move v1, p1

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

    :goto_e
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->pPEemiIGQwvfYMkj(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_7

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_11
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->LTyYVutlJhsyanKQ(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeFrom(II[I)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->VucPDnvFgbAXhTyt(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_2

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
    goto/32 :goto_f

    nop

    nop

    :goto_4
    move v1, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->kcERWKcRSDkXJPNe(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    array-length v5, p3

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

    nop

    :goto_a
    move-object v3, p3

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

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const v0, 0x13

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const v1, 0x19

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public copy1DRangeFrom(II[S)V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->UznvLiawAQkzGMYZ(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    array-length v5, p3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

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

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->uiqiVXloIpAPZiNt(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_a
    const v0, 0x1f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_c
    move v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    move v1, p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    move-object v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeFromUnchecked(IILjava/lang/Object;)V
    .locals 7

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    invoke-static {p0, p3, v0}, Landroid/support/v8/renderscript/Allocation;->vNGTtiHTNZwOlFxS(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v5

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

    :goto_3
    invoke-static/range {v1 .. v6}, Landroid/support/v8/renderscript/Allocation;->sjiEKoRsdLjsCEZK(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v2, p1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->GHRWSNrjjQDVADsJ(Ljava/lang/Object;)I

    move-result v6

    nop

    nop

    goto/32 :goto_f

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

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    move v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    move-object v4, p3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0xd

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeFromUnchecked(II[B)V
    .locals 6

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    move-object v3, p3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1c

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    move v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    array-length v5, p3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :goto_10
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->CkUckYkWvIkqPVPj(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeFromUnchecked(II[F)V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    move-object v3, p3

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    move v1, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    move v2, p2

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

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object v0, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->yuvxciUwNFhOazGa(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_b

    nop

    nop

    :goto_10
    array-length v5, p3

    nop

    nop

    goto/32 :goto_d

    nop

    nop
.end method

.method public copy1DRangeFromUnchecked(II[I)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->WzgmdSSidskjgAuE(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    move v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    move-object v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    array-length v5, p3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v0, 0x1e

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

    :goto_d
    move v1, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_b

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeFromUnchecked(II[S)V
    .locals 6

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    move v1, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    array-length v5, p3

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

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

    nop

    :goto_6
    move v2, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    const v0, 0x15

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v0, p0

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

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_e
    move-object v3, p3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->aFkUkTGtmdNiWewJ(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeTo(IILjava/lang/Object;)V
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-static/range {v1 .. v6}, Landroid/support/v8/renderscript/Allocation;->WOdwGoVfzEPPooLH(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v4, p3

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

    :goto_3
    const v1, 0x17

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

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, p3, v0}, Landroid/support/v8/renderscript/Allocation;->KzLlukbkIapazbXu(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v5

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_a
    move v3, p2

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

    :goto_b
    move v2, p1

    nop

    goto/32 :goto_a

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

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    move-object v1, p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->JMERDdcIZHxdcKbd(Ljava/lang/Object;)I

    move-result v6

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public copy1DRangeTo(II[B)V
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->efCSUazJAwQeNhzz(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    move v2, p2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->ZPrHnEWpzqixHAxf(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    const v1, 0x1

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

    :goto_8
    move-object v3, p3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    array-length v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_11
    const v0, 0x13

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

    nop
.end method

.method public copy1DRangeTo(II[F)V
    .locals 6

    goto/32 :goto_f

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    move v1, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    move-object v3, p3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    move v2, p2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    goto/32 :goto_5

    nop

    :goto_d
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->ztKGfbKeREYCxGja(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->bbOswctCUMpIpdWV(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const v0, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    array-length v5, p3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public copy1DRangeTo(II[I)V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x14

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->oLagQnuDlpldAsfc(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v0, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->BSwvHPrfjaTKHrII(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    array-length v5, p3

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

    :goto_e
    move-object v3, p3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    move v2, p2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    move v1, p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeTo(II[S)V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    move-object v3, p3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->MvRXpPzFDvlYuQTF(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->RjejfkzazfqLBwJK(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    move v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    array-length v5, p3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xf

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

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    move v1, p1

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

    nop

    :goto_d
    goto/32 :goto_2

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object v0, p0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeToUnchecked(IILjava/lang/Object;)V
    .locals 7

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    move-object v4, p3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0, p3, v0}, Landroid/support/v8/renderscript/Allocation;->pyRCrfgyyFovVrRg(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v5

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-static/range {v1 .. v6}, Landroid/support/v8/renderscript/Allocation;->ZRCBPLAhvyDpLoiA(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v3, p2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_b
    move v2, p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->oRtPHTjFtvPSyTDG(Ljava/lang/Object;)I

    move-result v6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v1, p0

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

    :goto_10
    goto/32 :goto_2

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeToUnchecked(II[B)V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->axhBmxrekMzVWwod(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    move-object v0, p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    move v1, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v3, p3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    array-length v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

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

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v2, p2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeToUnchecked(II[F)V
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v2, p2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xd

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

    :goto_7
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->lPLoMcpcvKvfmTmM(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    array-length v5, p3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    move-object v3, p3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    move v1, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeToUnchecked(II[I)V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->ALYjNMWbKHCzRFMa(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v1, 0x16

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    array-length v5, p3

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

    :goto_8
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    move-object v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x5

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    move v2, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public copy1DRangeToUnchecked(II[S)V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    array-length v5, p3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    move v1, p1

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

    :goto_4
    sget-object v4, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/Allocation;->wLUuMYLndRaVNpGT(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    move-object v3, p3

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

    :goto_10
    move v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method public copy2DRangeFrom(IIIILandroid/support/v8/renderscript/Allocation;II)V
    .locals 18

    goto/32 :goto_7

    nop

    nop

    :goto_0
    move/from16 v16, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move/from16 v7, p2

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
    move/from16 v10, p3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    move/from16 v11, p4

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_11

    nop

    nop

    :goto_c
    invoke-static/range {v3 .. v17}, Landroid/support/v8/renderscript/Allocation;->YzHQBdWRhZgDNieT(Landroid/support/v8/renderscript/RenderScript;JIIIIIIJIIII)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    move/from16 v6, p1

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

    :goto_e
    invoke-static/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->vdOraxUIUydtkOvp(Landroid/support/v8/renderscript/Allocation;IIII)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v9, v2, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->aJwqtRQGxMRioyhK(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    :goto_12
    invoke-static {v1, v0}, Landroid/support/v8/renderscript/Allocation;->NCdjuRSEKNLcfsWG(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v12

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    iget v8, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_15
    const v1, 0xd

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

    :goto_16
    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v1, v1, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2}, Landroid/support/v8/renderscript/Allocation;->CLVSSBCzkyGtQAae(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_e

    nop

    nop

    :goto_1a
    move/from16 v14, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_0

    nop

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

    :goto_1d
    move/from16 v17, v1

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

    :goto_1e
    move-object/from16 v1, p5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1f
    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    move/from16 v15, p7

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, v1, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy2DRangeFrom(IIIILjava/lang/Object;)V
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    move v3, p2

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

    :goto_2
    invoke-static/range {v1 .. v8}, Landroid/support/v8/renderscript/Allocation;->wsyWBPAmntzgeFeE(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    move v5, p4

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    move-object v1, p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p5, v0}, Landroid/support/v8/renderscript/Allocation;->agToeBnwQhychRVJ(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
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

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    move v4, p3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p5}, Landroid/support/v8/renderscript/Allocation;->BtzcVlkRQWAvqUWp(Ljava/lang/Object;)I

    move-result v8

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v2, p1

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

    :goto_10
    move-object v6, p5

    nop

    goto/32 :goto_2

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_12
    goto/32 :goto_e

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public copy2DRangeFrom(IIII[B)V
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_1
    move v2, p2

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

    nop

    nop

    :goto_2
    const v0, 0x5

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    array-length v7, p5

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

    :goto_6
    move v4, p4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    move-object v0, p0

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
    move-object v5, p5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->irrTHOKKGfawXftU(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    move v1, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->ZthBHVcbXwMpINKC(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v3, p3

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

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public copy2DRangeFrom(IIII[F)V
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object v5, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v0, 0x4

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v0, p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    move v2, p2

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

    :goto_c
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->wkWTDzepTenMggaY(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->fWtCDOPPZWWcWJZn(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length v7, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    move v3, p3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    move v1, p1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v4, p4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public copy2DRangeFrom(IIII[I)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v4, p4

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    move v3, p3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    array-length v7, p5

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->ZmXjjfOgLUQyUEHc(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    move v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->zaBEBZMusZEOncBO(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    move-object v5, p5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    move-object v0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public copy2DRangeFrom(IIII[S)V
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x10

    nop

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

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->cvyMplKbLUEAVnVD(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    move v1, p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->zNpmfEzQJRqtBmnw(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    move v2, p2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    move v4, p4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, p0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    array-length v7, p5

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    move v3, p3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x15

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

    :goto_12
    move-object v5, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_5

    nop
.end method

.method public copy2DRangeFrom(IILandroid/graphics/Bitmap;)V
    .locals 10

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    move v5, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->XvmvOAnGkglIRyiN(Landroid/graphics/Bitmap;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    const v0, 0xd

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->vWolUtPDpvPhqHXD(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->wLvUnHCeAeOCXERZ(Landroid/graphics/Bitmap;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    move-object v9, p3

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    iget v7, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->JwiZYawOmYFMCYOy(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v3

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

    :goto_d
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    iget v8, p0, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    invoke-static {v1, p3, v3, v3, v2}, Landroid/support/v8/renderscript/Allocation;->xzaBbiFzEadnRdRH(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    invoke-static {p0, p1, p2, v0}, Landroid/support/v8/renderscript/Allocation;->ZsiGqqptHtQIxRcC(Landroid/support/v8/renderscript/Allocation;IILandroid/graphics/Bitmap;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->xHNkbefPmcUOesAg(Landroid/graphics/Bitmap;)I

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->drmmMPrOAZvOWRVK(Landroid/graphics/Bitmap;)I

    move-result v1

    nop

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

    :goto_18
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->NtxMiyhXKyHHcPvq(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_4

    nop

    nop

    :goto_19
    return-void

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    :goto_1b
    new-instance v1, Landroid/graphics/Canvas;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->paBbuOtmOmXmtoqV(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_1e
    const v1, 0xd

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

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

    :goto_20
    invoke-static {p0, p3}, Landroid/support/v8/renderscript/Allocation;->epiAenFLlZRbPlzN(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_22
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, p1, p2, v0, v1}, Landroid/support/v8/renderscript/Allocation;->zCxLWYBcgoYIQdip(Landroid/support/v8/renderscript/Allocation;IIII)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_24
    invoke-static/range {v2 .. v9}, Landroid/support/v8/renderscript/Allocation;->BvMojDvVIkOrYVEa(Landroid/support/v8/renderscript/RenderScript;JIIIILandroid/graphics/Bitmap;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_25
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

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
.end method

.method public copy2DRangeFromUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 16

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v3, v0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    if-eq v3, v5, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    :goto_7
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    move/from16 v10, p4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->UlqrsToneBoIPOKh(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    div-int/lit8 v3, v1, 0x4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static/range {v2 .. v15}, Landroid/support/v8/renderscript/Allocation;->WBvYzBnizdlYofgT(Landroid/support/v8/renderscript/RenderScript;JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_9

    nop

    nop

    :goto_10
    const v1, 0xb

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_11
    move/from16 v5, p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v3}, Landroid/support/v8/renderscript/Allocation;->FXeXdPwRcEgalsBV(Landroid/support/v8/renderscript/Element;)I

    move-result v3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_15
    move/from16 v6, p2

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_16
    const-string v4, "Array too small for allocation type."

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_17
    const v0, 0x11

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

    :goto_18
    move v15, v2

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

    :goto_19
    move-object/from16 v13, p6

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

    :goto_1a
    invoke-direct {v0, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1c
    iget v7, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1d
    move v15, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v3}, Landroid/support/v8/renderscript/Allocation;->uRzqZgYipWbMXeqe(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

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

    :goto_20
    move v12, v2

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v2, v13, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->pUyBCKZpipoqJmkk(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_39

    nop

    :goto_26
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_38

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    mul-int v2, v2, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_29
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2a
    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->LUIQnjMbVsIDGKXh(Landroid/support/v8/renderscript/Element;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v11, p5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->sKvKcaLqSOuyzlsq(Landroid/support/v8/renderscript/Allocation;IIII)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    mul-int/2addr v3, v5

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

    :goto_30
    move/from16 v9, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_31
    mul-int v1, v1, p4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-le v3, v2, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v8, v1, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_34
    move-object/from16 v13, p6

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_35
    iget-object v1, v1, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_36
    mul-int v1, v1, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_37
    iget v14, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

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

    :goto_38
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3c
    if-le v1, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3d
    move v12, v1

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

    nop

    :goto_3e
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3f
    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_40
    iget-object v0, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    nop

    nop

    :goto_41
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 v5, 0x3

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public copy2DRangeTo(IIIILjava/lang/Object;)V
    .locals 9

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 v0, 0x1

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

    :goto_6
    move v4, p3

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const v1, 0x18

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_8
    move-object v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    invoke-static {p0, p5, v0}, Landroid/support/v8/renderscript/Allocation;->FhahiOahfbPpwEoL(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v7

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

    :goto_a
    move v5, p4

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    move v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    invoke-static/range {v1 .. v8}, Landroid/support/v8/renderscript/Allocation;->MUuTYEpMkLMMQWzi(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_d
    invoke-static {p5}, Landroid/support/v8/renderscript/Allocation;->RZNwWaTCUbZWwfGr(Ljava/lang/Object;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_10
    move-object v6, p5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    :goto_12
    move v3, p2

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

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public copy2DRangeTo(IIII[B)V
    .locals 8

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    array-length v7, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    :goto_2
    move-object v0, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v2, p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    move v1, p1

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

    :goto_5
    move-object v5, p5

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

    :goto_6
    move v4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    move v3, p3

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_a
    const v0, 0xd

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

    nop

    :goto_b
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    const v1, 0x1f

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

    :goto_10
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->jBUnwqQMlPfztOPn(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->jwYqgcalMPexkRdj(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_12

    nop

    nop

    :goto_12
    return-void

    nop

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

    nop

    nop
.end method

.method public copy2DRangeTo(IIII[F)V
    .locals 8

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v1, p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->ZXtUznkyPmUebVPO(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    move-object v0, p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v5, p5

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

    :goto_a
    goto/32 :goto_8

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    move v3, p3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_e
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    array-length v7, p5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_11
    move v4, p4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->pIHKgSwzidPbRluq(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public copy2DRangeTo(IIII[I)V
    .locals 8

    goto/32 :goto_8

    nop

    nop

    :goto_0
    array-length v7, p5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->QeypIKgJYKUwaqVU(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->UGDMxZfYErBrsXma(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v4, p4

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

    :goto_7
    move-object v5, p5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x11

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_c
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    move-object v0, p0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    move v3, p3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public copy2DRangeTo(IIII[S)V
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v6, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    move v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    invoke-static/range {v0 .. v7}, Landroid/support/v8/renderscript/Allocation;->oyJhVWGjwaaKuIYh(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0x1a

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->NboxEZxrdHwlJzrh(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    array-length v7, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x20

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    move v3, p3

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

    nop

    nop

    :goto_c
    move v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    move-object v5, p5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v4, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    move-object v0, p0

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
.end method

.method public copy2DRangeToUnchecked(IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V
    .locals 16

    goto/32 :goto_3c

    nop

    nop

    :goto_0
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->gOqAlmhLORyqashy(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v12, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    const/4 v1, 0x0

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

    :goto_3
    if-le v3, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_4
    const/4 v5, 0x3

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

    :goto_5
    invoke-static {v3}, Landroid/support/v8/renderscript/Allocation;->NQrDauLTlRNIdXHC(Landroid/support/v8/renderscript/Element;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    mul-int v1, v1, p3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    move v12, v2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static/range {v2 .. v15}, Landroid/support/v8/renderscript/Allocation;->JNjYURvvOLtxBGzY(Landroid/support/v8/renderscript/RenderScript;JIIIIIILjava/lang/Object;ILandroid/support/v8/renderscript/Element$DataType;IZ)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-int v1, v1, p4

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move/from16 v10, p4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move/from16 v9, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mType:Landroid/support/v8/renderscript/Element$DataType;

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

    nop

    :goto_12
    iget-object v0, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_2e

    nop

    nop

    :goto_15
    move v15, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    invoke-static {v3}, Landroid/support/v8/renderscript/Allocation;->OCOddUQVKnRyhdKF(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->UYqzpGSFyGsNZtbk(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v3

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1b
    move/from16 v6, p2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v15, v2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1d
    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1e
    const/4 v2, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    nop

    nop

    :goto_20
    const-string v4, "Array too small for allocation type."

    nop

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

    nop

    :goto_21
    iget v2, v13, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

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

    nop

    nop

    :goto_22
    if-le v1, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_23
    mul-int v2, v2, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_24
    iget v8, v1, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

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

    :goto_25
    move-object/from16 v0, p0

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

    :goto_26
    move-object/from16 v13, p6

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_27
    const v1, 0x8

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_28
    iget-boolean v3, v0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_29
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->NHBRotPItcqQwTEG(Landroid/support/v8/renderscript/Element;)I

    move-result v1

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

    :goto_2b
    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2c
    move-object/from16 v13, p6

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

    :goto_2d
    if-eq v3, v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static/range {p0 .. p4}, Landroid/support/v8/renderscript/Allocation;->XGrdHxQysQJBMaYf(Landroid/support/v8/renderscript/Allocation;IIII)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_30
    mul-int/2addr v3, v5

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_31
    throw v0

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_22

    nop

    nop

    :goto_33
    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedFace:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_8

    nop

    :goto_35
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v1, v1, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    :cond_3
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v7, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_39
    div-int/lit8 v3, v1, 0x4

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

    :goto_3a
    invoke-direct {v0, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3b
    iget-object v1, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_3c
    const v0, 0x15

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v11, p5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3e
    iget v14, v0, Landroid/support/v8/renderscript/Element$DataType;->mSize:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v0, v4}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move/from16 v5, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_42
    if-lez v0, :cond_4

    nop

    goto/32 :goto_e

    nop

    :cond_4
    goto/32 :goto_d

    nop
.end method

.method public copy3DRangeFrom(IIIIIILandroid/support/v8/renderscript/Allocation;III)V
    .locals 19

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move/from16 v18, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    move/from16 v8, p3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    move/from16 v10, p4

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

    nop

    nop

    :goto_7
    move/from16 v16, p9

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

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    iget-object v3, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static/range {p0 .. p0}, Landroid/support/v8/renderscript/Allocation;->fVKHFVkmavIlNeUf(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-static {v1, v0}, Landroid/support/v8/renderscript/Allocation;->UhjaPVtHUJTmhrWy(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v13

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v9, v0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

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

    nop

    :goto_10
    move/from16 v6, p1

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

    :goto_11
    invoke-static/range {p0 .. p6}, Landroid/support/v8/renderscript/Allocation;->YuKncuiAzxeeBMuW(Landroid/support/v8/renderscript/Allocation;IIIIII)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    iget-object v0, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_13
    move/from16 v17, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v1, p7

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_16
    move/from16 v7, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    const v1, 0x9

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move/from16 v11, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_19
    iget-object v2, v0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, v1, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move/from16 v15, p8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static/range {v3 .. v18}, Landroid/support/v8/renderscript/Allocation;->lBMRDDjqFjzcvguQ(Landroid/support/v8/renderscript/RenderScript;JIIIIIIIJIIII)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move/from16 v12, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    invoke-static {v2}, Landroid/support/v8/renderscript/Allocation;->uRWyaLaUYFCOQIDF(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public copy3DRangeFrom(IIIIIILjava/lang/Object;)V
    .locals 11

    goto/32 :goto_5

    nop

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

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_3
    move-object v1, p0

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

    :goto_4
    move v4, p3

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x16

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    move v2, p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, v8, v0}, Landroid/support/v8/renderscript/Allocation;->XZJgaKNLucTyvGDG(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move/from16 v7, p6

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
    goto/32 :goto_11

    nop

    :goto_a
    move/from16 v6, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static/range {v1 .. v10}, Landroid/support/v8/renderscript/Allocation;->MoKVDRuzBaVGpYEV(Landroid/support/v8/renderscript/Allocation;IIIIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static/range {p7 .. p7}, Landroid/support/v8/renderscript/Allocation;->ZUhopmdLPtxOuMOE(Ljava/lang/Object;)I

    move-result v10

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

    :goto_e
    move-object/from16 v8, p7

    nop

    goto/32 :goto_7

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    move v3, p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v5, p4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public copyFrom(Landroid/graphics/Bitmap;)V
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

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

    nop

    :goto_1
    const v0, 0x9

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

    :goto_2
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->JIfgLlIYBcLAbcZJ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

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

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    :goto_5
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->RHyAcEgrQeRtRIMP(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->uWoOgTZTkNFkuwyh(Landroid/graphics/Bitmap;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1, v2, p1}, Landroid/support/v8/renderscript/Allocation;->QUBqaJSipZsXxqEa(Landroid/support/v8/renderscript/RenderScript;JLandroid/graphics/Bitmap;)V

    goto/32 :goto_19

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_e
    new-instance v1, Landroid/graphics/Canvas;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->cwxJxTSzhfavZXhq(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->wYuleirrvjgfhSOg(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1, p1, v3, v3, v2}, Landroid/support/v8/renderscript/Allocation;->StnKAlDccufKDXci(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->hKutMbXdRWMlVpxf(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->mdktKOjBhVjEUrqn(Landroid/graphics/Bitmap;)I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->WzHHElMUyqVNTrGF(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->GeEgnjgrGIRHTqkZ(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public copyFrom(Landroid/support/v8/renderscript/Allocation;)V
    .locals 9

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget v4, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimX:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->LPppXvbAIYXyFWSw(Landroid/support/v8/renderscript/BaseObj;Ljava/lang/Object;)Z

    move-result v0

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

    :goto_3
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->guUCVQECSWQhaHgO(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    const v1, 0x2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentDimY:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->SfxpZJTFmGFBZrRS(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    move-object v6, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    goto/32 :goto_1c

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_12
    const-string p1, "Types of allocations must match."

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

    :goto_13
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static/range {v1 .. v8}, Landroid/support/v8/renderscript/Allocation;->IdntgEdbvnpRIeQt(Landroid/support/v8/renderscript/Allocation;IIIILandroid/support/v8/renderscript/Allocation;II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    :goto_1c
    goto/32 :goto_15

    nop

    nop

    :goto_1d
    move-object v1, p0

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

    nop

    nop
.end method

.method public copyFrom(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->tnbesJLogkQQdiUw(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/Allocation;->WBzagcmHoPNTTaoe(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    const v1, 0x3

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

    :goto_b
    const/4 v0, 0x1

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

    :goto_c
    const v0, 0x1a

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

    nop

    :goto_d
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->rINwJiHDpmmTSDjf(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public copyFrom([B)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->YnhZHhRGTQSdydpU(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->fGuAiPgfistrfEfT(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    array-length v1, p1

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

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xa

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

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

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

    nop

    :goto_c
    rem-int v0, v0, v1

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

    nop

    :goto_d
    const v1, 0x2

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
.end method

.method public copyFrom([F)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    array-length v1, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xc

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

    :goto_6
    const v0, 0xd

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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->ZMpwvvqaWILlKLKt(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->EWiAvxJybIIiXdFD(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public copyFrom([I)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->FWCvgyEVKoDEdDzJ(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    const v1, 0x1c

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

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :goto_8
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->bncWdcbxWSzHqGaN(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    array-length v1, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public copyFrom([Landroid/support/v8/renderscript/BaseObj;)V
    .locals 6

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1
    aget-object v2, p1, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    iget-object v5, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_3
    new-array v0, v0, [J

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

    :goto_4
    array-length v2, p1

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

    :goto_5
    invoke-static {v2, v4}, Landroid/support/v8/renderscript/Allocation;->zYThKKHkQdVeluoE(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    array-length v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v1, v3

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    aput-wide v4, v0, v2

    nop

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

    :goto_a
    goto/32 :goto_21

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    if-lt v1, v2, :cond_1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->JEkYZAhXAyudZhpg(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0x8

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

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

    :cond_2
    goto/32 :goto_a

    nop

    :goto_13
    invoke-direct {p1, p0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    long-to-int v2, v4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_15
    invoke-static {v4, v5}, Landroid/support/v8/renderscript/Allocation;->xEtcGojyvqrmbvbI(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v4

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    const v0, 0x1f

    nop

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

    :goto_18
    iget p0, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_19
    new-array v0, v0, [I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    sget v1, Landroid/support/v8/renderscript/RenderScript;->sPointerSize:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    const-string v2, "Array size mismatch, allocation sizeX = "

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1c
    array-length v0, p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    :goto_1f
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->SZzNngbqqdPoYmkZ(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw p1

    nop

    nop

    :goto_21
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v4, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    iget p1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_24
    move v1, v3

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

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

    :goto_27
    if-lt v1, v2, :cond_3

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v1, v0}, Landroid/support/v8/renderscript/Allocation;->BhYJobhNBOFRMAQq(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :goto_2b
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2e
    mul-int/lit8 v0, v0, 0x4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_30
    goto :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_33
    new-instance p1, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    nop

    :goto_34
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->RdyFcSywqEHBUmQy(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p0, v3, p1, v0}, Landroid/support/v8/renderscript/Allocation;->VtiTKzvbRyYzCrlX(Landroid/support/v8/renderscript/Allocation;IILjava/lang/Object;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget v1, p0, Landroid/support/v8/renderscript/Allocation;->mCurrentCount:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_37
    invoke-static {p0, v3, p1, v0}, Landroid/support/v8/renderscript/Allocation;->nVrtRFxsRwYBgGFo(Landroid/support/v8/renderscript/Allocation;II[I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_38
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->ZOvUhpdKYOtImVFj(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_28

    nop

    nop

    :goto_39
    aget-object v4, p1, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3a
    invoke-static {v1, p0}, Landroid/support/v8/renderscript/Allocation;->ACtQCNHTzrizkZIt(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3c
    aput v2, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3f
    const-string p0, ", array length = "

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

    :goto_40
    mul-int/lit8 v2, v1, 0x4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_41
    const/4 v3, 0x0

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
.end method

.method public copyFrom([S)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const v1, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    array-length v1, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->AOGBSmqNAqsgmKca(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    :goto_d
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->buzvIBgKntmYdDtr(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public copyFromUnchecked(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/Allocation;->RiWrKrsGPKHzhcrP(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->swHaoiiuPvZoZUTT(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const v1, 0xd

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

    :goto_8
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->PqsxYebYuZbsoWyO(Ljava/lang/Object;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

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
.end method

.method public copyFromUnchecked([B)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x11

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

    :goto_1
    add-int v0, v0, v1

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

    :goto_2
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->xnWBtazXkPDhOdyC(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_8

    nop

    nop

    :goto_c
    array-length v1, p1

    nop

    goto/32 :goto_b

    nop

    nop
.end method

.method public copyFromUnchecked([F)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

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

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

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
    return-void

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->JJDazOAigswCnmXU(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    array-length v1, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x9

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public copyFromUnchecked([I)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    array-length v1, p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

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

    nop

    :goto_9
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->nBaGwKEmlkNXNSDw(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_6

    nop

    nop

    :goto_a
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public copyFromUnchecked([S)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xa

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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_7
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->qjkhkKJKxGthYOVT(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    array-length v1, p1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public copyTo(Landroid/graphics/Bitmap;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1, v2, p1}, Landroid/support/v8/renderscript/Allocation;->YtjieFwVTQbTMDpf(Landroid/support/v8/renderscript/RenderScript;JLandroid/graphics/Bitmap;)V

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->TsUKGgKgmWPGDcpV(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->VhQkcNqbmvHKteLP(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->BvOslFmZCaUSyUhy(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V

    goto/32 :goto_0

    nop

    nop

    :goto_e
    const v1, 0xe

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0, p1}, Landroid/support/v8/renderscript/Allocation;->PEfkDJjVYckBCRLZ(Landroid/support/v8/renderscript/Allocation;Landroid/graphics/Bitmap;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public copyTo(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->RcEeIbfYQWumpqIv(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-static {p1}, Landroid/support/v8/renderscript/Allocation;->uLQCdUjQVchrDBlq(Ljava/lang/Object;)I

    move-result v1

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
    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/Allocation;->GZScqCNYzYXzCDgC(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Z)Landroid/support/v8/renderscript/Element$DataType;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public copyTo([B)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    const v1, 0xd

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->AxdNfPwxaiTpwYAS(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    array-length v1, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->zXTxLqkfFePATVHV(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public copyTo([F)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    array-length v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->iCzTnZlZpXYCVnsi(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->lmsKuDrcpWHyoEtJ(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->FLOAT_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop
.end method

.method public copyTo([I)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->ubmEvilzuLVHxYdq(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->EtLlzNRnLKXErNju(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_32:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    array-length v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop
.end method

.method public copyTo([S)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    sget-object v0, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_16:Landroid/support/v8/renderscript/Element$DataType;

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_2
    const v1, 0x7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, p1, v0, v1}, Landroid/support/v8/renderscript/Allocation;->UYnqiLYPBPwgGezN(Landroid/support/v8/renderscript/Allocation;Ljava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_3

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->HeeCIkDAHJZKKRVf(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    array-length v1, p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public destroy()V
    .locals 6

    goto/32 :goto_1d

    nop

    nop

    :goto_0
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_18

    nop

    nop

    :goto_1
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->heEpNwJrUZmFkyBm(Landroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->GVxQPPBwEonWxfwb(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    const v1, 0x20

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-wide v4, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    iput-wide v2, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

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

    nop

    :goto_9
    invoke-static {v1, v4, v5}, Landroid/support/v8/renderscript/Allocation;->fQlasrOsEwXTWYfJ(Landroid/support/v8/renderscript/RenderScript;J)V

    :goto_a
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    const-wide/16 v2, 0x0

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

    :goto_c
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->EEvjEmEFhXXoGCRM(Landroid/support/v8/renderscript/Allocation;Landroid/view/Surface;)V

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->itRvoGixOsRAzbgU(Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_11
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mIncAllocDestroyed:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    iput-boolean v0, p0, Landroid/support/v8/renderscript/Allocation;->mIncAllocDestroyed:Z

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->rfnFqszaqFMTUMMd(Landroid/support/v8/renderscript/RenderScript;)Z

    move-result v1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_14
    if-nez v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->bAaHHHjlENfsPeCp(Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1c
    iget-object v0, v0, Landroid/support/v8/renderscript/RenderScript;->mRWLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1d
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    and-int/lit8 v0, v0, 0x60

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1f
    iget-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v1, :cond_3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_24
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    :goto_25
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_15

    nop

    nop
.end method

.method protected finalize()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

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
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->jaEMpaoTaxFIXiBu(Landroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v2}, Landroid/support/v8/renderscript/Allocation;->MiXCexCjubiCpZHA(I)Ljava/lang/Integer;

    move-result-object v2

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

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    sget-object v1, Landroid/support/v8/renderscript/RenderScript;->sRuntime:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->itWjvOgLHccOdpNp(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    sget-object v0, Landroid/support/v8/renderscript/RenderScript;->registerNativeFree:Ljava/lang/reflect/Method;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    iget v2, p0, Landroid/support/v8/renderscript/Allocation;->mSize:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    sget-boolean v0, Landroid/support/v8/renderscript/RenderScript;->sUseGCHooks:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    if-eq v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xf

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public generateMipmaps()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x20

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

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->ptqtBthaFedqmxTc(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->tMImMXRmrvZRukdC(Landroid/support/v8/renderscript/RenderScript;J)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 14

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    move-object v11, v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    mul-int/2addr v0, v5

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2
    new-array v0, v5, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->ftDWRZZXZXRMnzRi([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v2}, Landroid/support/v8/renderscript/Allocation;->ypehXbbyihMlOric(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->MCItxKcVAIwZlUDk(Landroid/support/v8/renderscript/Type;)I

    move-result v7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    mul-int v5, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->oLwGOEIRfqVZemkH(Landroid/support/v8/renderscript/Type;)I

    move-result v0

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

    :goto_c
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->TQmMdrUFOZbdNbbY(Landroid/support/v8/renderscript/Type;)I

    move-result v0

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

    nop

    :goto_d
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    :goto_e
    goto/32 :goto_3b

    nop

    nop

    :goto_f
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_10
    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/Allocation;->iaeNHnDTRvJGTKMQ(Landroid/support/v8/renderscript/RenderScript;JIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_44

    nop

    :goto_12
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v6, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->gMuBQmynXGsLdCLs(Landroid/support/v8/renderscript/Element;)I

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_17
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    if-gtz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->WEPKwLsxLrXznqEt(Landroid/support/v8/renderscript/Type;)I

    move-result v10

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-long v1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2

    nop

    nop

    :goto_1f
    new-array v0, v0, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_21
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->tzDbZBCKtwCLOiFQ(Landroid/support/v8/renderscript/Type;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->nbldDjxCvJroMaqW(Landroid/support/v8/renderscript/Type;)I

    move-result v1

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    nop

    nop

    :goto_25
    goto/32 :goto_27

    nop

    nop

    :goto_26
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->YZmSGLwuWxydSEeS(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_27
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBuffer:Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->RfoPhuDZbKYngblk(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_29
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->NmXYLDsnbNdiZjhX(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-wide v1, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->VBXlzVDTAstQoOQa(Landroid/support/v8/renderscript/Type;)I

    move-result v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->ADwxYcWSvqgGDTvM(Landroid/support/v8/renderscript/Type;)I

    move-result v9

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static/range {v6 .. v13}, Landroid/support/v8/renderscript/Allocation;->fPzulwtMRVUTExOm(Landroid/support/v8/renderscript/Allocation;IIIILjava/lang/Object;Landroid/support/v8/renderscript/Element$DataType;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_32
    return-object p0

    nop

    nop

    :goto_33
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_34
    return-object v0

    nop

    :goto_35
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_36
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v1, 0x15

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sget-object v12, Landroid/support/v8/renderscript/Element$DataType;->SIGNED_8:Landroid/support/v8/renderscript/Element$DataType;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->dFQWadSpZYlltRXr(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_3b
    iget-object v2, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3c
    const/4 v7, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3d
    return-object p0

    nop

    nop

    :goto_3e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3f
    and-int/lit8 v0, v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {p0, v2, v1, v0}, Landroid/support/v8/renderscript/Allocation;->szZJtxxoqojwBxUp(Landroid/support/v8/renderscript/Allocation;II[B)V

    :goto_41
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    mul-int v13, v5, v1

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

    :goto_44
    goto/32 :goto_33

    nop

    nop

    :goto_45
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->nSoNwcigNmcnBEYJ(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_47
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_48
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_49
    if-lt v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-gtz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public getBytesSize()I
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    double-to-int p0, v0

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

    :goto_4
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->gAWANAviIsEvNriU(Landroid/support/v8/renderscript/Element;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    return p0

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->SYzCwBiXkPjWFDse(Landroid/support/v8/renderscript/Element;)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->yhydCWcqEnvlhnel(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object p0

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
    iget v1, v0, Landroid/support/v8/renderscript/Type;->mDimYuv:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_b
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_c
    const v1, 0x1c

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_f
    return v0

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    mul-double/2addr v0, v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    mul-int/2addr v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    :goto_15
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_16
    int-to-double v0, v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    mul-int/2addr v0, p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->ucVKBqGwoHNpGaDv(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->bHXcEBuZjrXgwTPl(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/Allocation;->AfCiFQtisffnBLXl(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->FsTFwdqJfQEhGDFR(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public getElement()Landroid/support/v8/renderscript/Element;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->sXtlJEyMaFZsZbjH(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public getIncAllocID()J
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public getStride()J
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->nuldUNvybqdzoMFZ(Landroid/support/v8/renderscript/RenderScript;)I

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1
    iput-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_2

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->urKgpgELOXlEYKET(Landroid/support/v8/renderscript/RenderScript;J)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    if-gt v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_9
    const-wide/16 v2, 0x0

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

    :goto_a
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    mul-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    iget-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    const/16 v1, 0x15

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->gslhVXhBmfXEeWzn(Landroid/support/v8/renderscript/Type;)I

    move-result v0

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

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->bOPKzTwXnxwgxCzf(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    cmp-long v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    const v0, 0x7

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    int-to-long v0, v0

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

    :goto_1b
    return-wide v0

    nop

    :goto_1c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->UknxqgnyfjJGSXAs(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1e
    if-eqz v2, :cond_2

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

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_1f
    invoke-static {v1}, Landroid/support/v8/renderscript/Allocation;->YmJpTELeBHImyCkm(Landroid/support/v8/renderscript/Element;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_20
    iput-wide v0, p0, Landroid/support/v8/renderscript/Allocation;->mByteBufferStride:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public getType()Landroid/support/v8/renderscript/Type;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public getUsage()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public ioReceive()V
    .locals 3

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    and-int/lit8 v0, v0, 0x20

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->dbwSFXGBEDwuyjMP(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const v0, 0x5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "Can only receive if IO_INPUT usage specified."

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

    :goto_a
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->mouUiYQEURFEgfAK(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_11
    const v1, 0x1f

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

    :goto_12
    invoke-static {v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->IQsVKfSvwXGUdHEt(Landroid/support/v8/renderscript/RenderScript;J)V

    goto/32 :goto_2

    nop

    nop

    :goto_13
    throw p0

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public ioSend()V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->HrNEmrWmdEbFExTo(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    :goto_4
    const v0, 0xa

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    and-int/lit8 v0, v0, 0x40

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

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "Can only send buffer if IO_OUTPUT usage specified."

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

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

    nop

    goto/32 :goto_10

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_11
    const v1, 0x16

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->BaCBDLXelGuISjxH(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v1, v2}, Landroid/support/v8/renderscript/Allocation;->GITLKZHKgpwMQxOI(Landroid/support/v8/renderscript/RenderScript;J)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop
.end method

.method public ioSendOutput()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->ZhxTUNgXXgRZzHKl(Landroid/support/v8/renderscript/Allocation;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public setAutoPadding(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-boolean p1, p0, Landroid/support/v8/renderscript/Allocation;->mAutoPadding:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setFromFieldPacker(IILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 9

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "Offset must be >= 0."

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_1
    iget-object p3, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_2
    aget-object p3, p3, p2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_4
    array-length v0, v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

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

    :goto_6
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    nop

    :goto_7
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_8
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string p1, "Component_number "

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v8, p3, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->QJWJGvTLzsyBHnGJ(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_11
    const-string p2, " does not match component size "

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    mul-int/2addr p3, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-gez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    :goto_16
    const-string p3, " out of range."

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_17
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p1, "Field packer sizelength "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_19
    invoke-static/range {v1 .. v8}, Landroid/support/v8/renderscript/Allocation;->jCSRcMPulvYtYHnt(Landroid/support/v8/renderscript/RenderScript;JIII[BI)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "."

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

    :goto_1b
    if-lt p2, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p3, p3, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1d
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    move v4, p1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_20
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->romLzHcjtJtcWaNQ(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result v8

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

    :goto_21
    invoke-static {p3, v8, p1, p2, v0}, Landroid/support/v8/renderscript/Allocation;->HvWhTFEGEpBuITCG(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

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

    :goto_23
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    nop

    :goto_25
    throw p0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_27
    throw p0

    nop

    nop

    :goto_28
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    aget v0, v0, p2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Landroid/support/v8/renderscript/Element;->mArraySizes:[I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    move v6, p2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p2, p1, p3}, Landroid/support/v8/renderscript/Allocation;->JXYrovdMhndakQZp(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object p3, p3, Landroid/support/v8/renderscript/Element;->mElements:[Landroid/support/v8/renderscript/Element;

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

    :goto_2f
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->JNvNURNejrEHPLKs(Landroid/support/v8/renderscript/FieldPacker;)[B

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_33

    nop

    nop

    :goto_32
    iget v5, p0, Landroid/support/v8/renderscript/Allocation;->mSelectedLOD:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_33
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    :goto_35
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_36
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->xmLuhISoMBqKocuN(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p3}, Landroid/support/v8/renderscript/Allocation;->dfhEQnqcXpRPiimx(Landroid/support/v8/renderscript/Element;)I

    move-result p3

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

    nop
.end method

.method public setFromFieldPacker(ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 4

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const-string p1, "Field packer length "

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

    :goto_1
    if-eq v3, p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mType:Landroid/support/v8/renderscript/Type;

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

    :goto_8
    invoke-static {p0, p1, v2, v1}, Landroid/support/v8/renderscript/Allocation;->rKjckLKKFDTbuzrT(Landroid/support/v8/renderscript/Allocation;II[B)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iget-object v0, v0, Landroid/support/v8/renderscript/Type;->mElement:Landroid/support/v8/renderscript/Element;

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

    :goto_a
    const v1, 0x3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->RFNgnZvgFHrilxMO(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_7

    nop

    nop

    :goto_e
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->koeqwzCVmaDCYUEm(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-static {p2}, Landroid/support/v8/renderscript/Allocation;->LeWMybmSOFwqJWtK(Landroid/support/v8/renderscript/FieldPacker;)[B

    move-result-object v1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_10
    mul-int v3, v0, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const v0, 0x15

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v2, "."

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    invoke-static {p2}, Landroid/support/v8/renderscript/Allocation;->fQkZNdMIkiRowwUs(Landroid/support/v8/renderscript/FieldPacker;)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, " not divisible by element size "

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    div-int v2, p2, v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, p2, p1, v1, v2}, Landroid/support/v8/renderscript/Allocation;->aCWdYFXGgtMPkZjT(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    nop

    :goto_19
    add-int v0, v0, v1

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

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    throw p0

    nop

    nop

    :goto_1c
    goto/32 :goto_12

    nop

    nop
.end method

.method public setIncAllocID(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-wide p1, p0, Landroid/support/v8/renderscript/Allocation;->mIncCompatAllocation:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Landroid/support/v8/renderscript/Allocation;->mUsage:I

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_5
    invoke-static {v0, v1, v2, p1}, Landroid/support/v8/renderscript/Allocation;->ZbFYLQJBSVLUhEfg(Landroid/support/v8/renderscript/RenderScript;JLandroid/view/Surface;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    and-int/lit8 v0, v0, 0x40

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Landroid/support/v8/renderscript/RSInvalidStateException;

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

    nop

    nop

    :goto_c
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSInvalidStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->aGRocLqqDGozywAT(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_3

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    invoke-static {p0, v0}, Landroid/support/v8/renderscript/Allocation;->dqWaZsCHHHLjXrjq(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    :goto_12
    const-string p1, "Allocation is not USAGE_IO_OUTPUT."

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

    nop

    :goto_13
    throw p0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public syncAll(I)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto :goto_11

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const v0, 0x1a

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    invoke-static {p0}, Landroid/support/v8/renderscript/Allocation;->QzaWDgbLXEDJDsYM(Landroid/support/v8/renderscript/Allocation;)J

    move-result-wide v1

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

    :goto_a
    invoke-static {v0}, Landroid/support/v8/renderscript/Allocation;->TfanDMtlJmZgMxUG(Landroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p1, "Source must be exactly one usage type."

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v1, 0x2

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

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    :goto_10
    throw p0

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0, v1, v2, p1}, Landroid/support/v8/renderscript/Allocation;->UaxBgQEdcusmrMuu(Landroid/support/v8/renderscript/RenderScript;JI)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_15
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_17
    if-ne p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq p1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroid/support/v8/renderscript/Allocation;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
