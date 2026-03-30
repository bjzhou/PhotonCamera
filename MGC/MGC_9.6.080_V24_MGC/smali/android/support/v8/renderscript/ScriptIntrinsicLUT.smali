.class public Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "PG"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private final mCache:[B

.field private mDirty:Z

.field private final mMatrix:Landroid/support/v8/renderscript/Matrix4f;

.field private mTables:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method private 236eaf182e0b6a12963289945450ba9fm(II)V
    .locals 0

    goto/32 :goto_f

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const/16 p0, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    const-string p1, "Value out of range (0-255)."

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const-string p1, "Index out of range (0-255)."

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

    :goto_7
    throw p0

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

    nop

    :goto_9
    if-gez p2, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_a
    if-le p1, p0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    if-le p2, p0, :cond_2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-gez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

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

    :goto_1
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Landroid/support/v8/renderscript/Matrix4f;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-direct {p1}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    new-array p1, p1, [B

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    const/16 p1, 0x400

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop
.end method

.method public static BWvbiavCbSYtnsvR(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/BaseObj;)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static BmXZnCrJagUgDZYg(Landroid/support/v8/renderscript/Script;Z)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Script;->setIncSupp(Z)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static DgpYhDBANrZmyuGu(Landroid/support/v8/renderscript/ScriptIntrinsicLUT;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->236eaf182e0b6a12963289945450ba9fm(II)V

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

.method public static IHRLVTTvYPPjnOOM(Landroid/support/v8/renderscript/Script;IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
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
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Script;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

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

    nop
.end method

.method public static MKTDOERcfkXInqDQ(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

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

.method public static QJPGATyQfRxxwSux(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    return-wide v0

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

    nop

    nop

    :goto_9
    const v0, 0x5

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static XFAOqGdMRuCmNiIq(Landroid/support/v8/renderscript/RenderScript;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

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

    nop
.end method

.method public static YgWLFZnEjvRnckvt(Landroid/support/v8/renderscript/ScriptIntrinsicLUT;II)V
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
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->236eaf182e0b6a12963289945450ba9fm(II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicLUT;
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xd

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    add-int/lit16 v3, p0, 0x100

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

    :goto_2
    if-lt p0, v0, :cond_0

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

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-byte v1, p0

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
    invoke-static {p1, v2, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->BWvbiavCbSYtnsvR(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    aput-byte v1, v0, v3

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->QJPGATyQfRxxwSux(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0x400

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

    nop

    :goto_9
    add-int/lit16 v3, p0, 0x300

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x100

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aput-byte v1, v0, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move p0, v2

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    iput-object p0, p1, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    :goto_11
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    new-instance p1, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_13
    return-object p1

    nop

    nop

    :goto_14
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->pKzkFIYocmySqyEL(Landroid/support/v8/renderscript/RenderScript;IJZ)J

    move-result-wide v0

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

    :goto_16
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    aput-byte v1, v0, v3

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

    :goto_18
    add-int/lit16 v3, p0, 0x200

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_19
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->MKTDOERcfkXInqDQ(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;I)Landroid/support/v8/renderscript/Allocation;

    move-result-object p0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p1, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p1, v0, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_21

    nop

    nop

    :goto_1c
    iget-object p0, p1, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->uHGVEQeVsDECrTbw(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    aput-byte v1, v0, v3

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
    goto/16 :goto_e

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->BmXZnCrJagUgDZYg(Landroid/support/v8/renderscript/Script;Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    :goto_23
    const/4 p1, 0x3

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_24
    const v1, 0x20

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_25
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->XFAOqGdMRuCmNiIq(Landroid/support/v8/renderscript/RenderScript;)Z

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_10

    nop
.end method

.method public static eFtegBywmMCpsnTf(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
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
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static pCoTDSdmhVntWtra(Landroid/support/v8/renderscript/ScriptIntrinsicLUT;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->236eaf182e0b6a12963289945450ba9fm(II)V

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

.method public static pKzkFIYocmySqyEL(Landroid/support/v8/renderscript/RenderScript;IJZ)J
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

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

    nop

    nop

    :goto_3
    goto/32 :goto_2

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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_5
    return-wide v0

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static tAqjBeLkCiCUhzHc(Landroid/support/v8/renderscript/ScriptIntrinsicLUT;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->236eaf182e0b6a12963289945450ba9fm(II)V

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

.method public static uHGVEQeVsDECrTbw(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static yUaGrmQpSDsvtXee(Landroid/support/v8/renderscript/Allocation;[B)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Allocation;->copyFromUnchecked([B)V

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


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mTables:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->yUaGrmQpSDsvtXee(Landroid/support/v8/renderscript/Allocation;[B)V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v1, p1, p2, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->eFtegBywmMCpsnTf(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

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

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    iput-boolean v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v2, v0, v1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->IHRLVTTvYPPjnOOM(Landroid/support/v8/renderscript/Script;IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

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
    const v0, 0x20

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    const v1, 0x11

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setAlpha(II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

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

    :goto_1
    add-int/lit16 p1, p1, 0x300

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->tAqjBeLkCiCUhzHc(Landroid/support/v8/renderscript/ScriptIntrinsicLUT;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    int-to-byte p2, p2

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

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

    :goto_7
    aput-byte p2, v0, p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public setBlue(II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    int-to-byte p2, p2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x1

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
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->YgWLFZnEjvRnckvt(Landroid/support/v8/renderscript/ScriptIntrinsicLUT;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    aput-byte p2, v0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    add-int/lit16 p1, p1, 0x200

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    iput-boolean p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public setGreen(II)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int/lit16 p1, p1, 0x100

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
    const/4 p1, 0x1

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
    int-to-byte p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aput-byte p2, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

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
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->pCoTDSdmhVntWtra(Landroid/support/v8/renderscript/ScriptIntrinsicLUT;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public setRed(II)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    int-to-byte p2, p2

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

    :goto_1
    invoke-static {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->DgpYhDBANrZmyuGu(Landroid/support/v8/renderscript/ScriptIntrinsicLUT;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    aput-byte p2, v0, p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mDirty:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicLUT;->mCache:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop
.end method
