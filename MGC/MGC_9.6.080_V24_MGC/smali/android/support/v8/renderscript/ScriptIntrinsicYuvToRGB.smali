.class public Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "PG"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mInput:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static NLksgbeDwtSeiAfU(Landroid/support/v8/renderscript/RenderScript;IJZ)J
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    goto/32 :goto_6

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

    :goto_4
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

    :goto_5
    return-wide v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

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

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_a
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public static YTejNNOZsOuSYJqg(Landroid/support/v8/renderscript/RenderScript;)Z
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-direct {p1, v0, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_b

    nop

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x16

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const/4 p1, 0x6

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

    :goto_6
    invoke-static {p0, p1, v0, v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->NLksgbeDwtSeiAfU(Landroid/support/v8/renderscript/RenderScript;IJZ)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    const v1, 0x14

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->iozBUXInTDLGXZve(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

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

    :goto_9
    return-object p1

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->rrLmjZmUoHcEcDLd(Landroid/support/v8/renderscript/Script;Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->YTejNNOZsOuSYJqg(Landroid/support/v8/renderscript/RenderScript;)Z

    goto/32 :goto_8

    nop

    nop

    :goto_d
    new-instance p1, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop
.end method

.method public static iozBUXInTDLGXZve(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_5

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

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

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
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_5
    const v0, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
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

    :goto_7
    return-wide v0

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop
.end method

.method public static lGHnGWtjlniLWPIs(Landroid/support/v8/renderscript/Script;IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Script;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static pBVmqjqTGgpdFyvt(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static pkFUrCSztkJabLXt(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->createFieldID(ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

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
.end method

.method public static rHQUIrECUkLYuHUS(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/BaseObj;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

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

.method public static rrLmjZmUoHcEcDLd(Landroid/support/v8/renderscript/Script;Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Script;->setIncSupp(Z)V

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


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    goto/32 :goto_4

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

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
    const v0, 0x8

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

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0, v1, p1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->pBVmqjqTGgpdFyvt(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_0

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
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

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->pkFUrCSztkJabLXt(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    const v1, 0x3

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

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

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
    goto/32 :goto_1

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-static {p0, v2, v0, v1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->lGHnGWtjlniLWPIs(Landroid/support/v8/renderscript/Script;IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object p0

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
    const/4 v2, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x18

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
    const/4 v0, 0x2

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
    return-object p0

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public setInput(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->rHQUIrECUkLYuHUS(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicYuvToRGB;->mInput:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
