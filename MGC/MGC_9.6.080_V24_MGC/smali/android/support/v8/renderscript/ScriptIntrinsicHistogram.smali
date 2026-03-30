.class public Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "PG"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private mOut:Landroid/support/v8/renderscript/Allocation;


# direct methods
.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
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
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static AsLFyrGjfUJuHnCu(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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

    nop
.end method

.method public static AtcTYuuAmZbuHRbB(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static AyElmbngxqCxTZLX(Landroid/support/v8/renderscript/RenderScript;IJZ)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    const v0, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

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

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x12

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

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public static AyhymIFDGHOKMjqG(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static CHeUFIoAlGfuvwEe(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
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

.method public static CUwBhuJoQEEjqfnC(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

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

    nop
.end method

.method public static CxCZNQIGTfgkBjUu(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

    nop

    nop

    nop
.end method

.method public static DPCdCWgHjvpcwPgd(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

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

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static DXrOKZHFuzfyleHV(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public static DaXtVBEeQYHLSSUR(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static DbjxIHXLwVodDzLE(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

.method public static EDPXPRJdpVAkoeUF(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

    nop

    nop
.end method

.method public static EtxsouFZpsSDlVsn(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

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

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static GAuPShCQwTJpuGFH(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static GLoPyxjyGSWyNOLJ(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static HIMpWiVHlTBmLetq(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

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

    nop

    nop

    nop
.end method

.method public static HzbgGWeqZGfPwGyu(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

.method public static IjcYBfqiZjkLCAKB(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JSdRcPPJlsTFAIrz(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/BaseObj;)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JUmUQxNNiZeybfTc(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

.method public static JaKIohzNcYkHDWhP(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

.method public static KjehbMJwFeBbSCDp(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

    nop

    nop

    nop

    nop
.end method

.method public static KxgViGMgqacOXLdy(Landroid/support/v8/renderscript/RenderScript;)Z
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

    :goto_1
    return v0

    nop

    nop
.end method

.method public static LFOxTjvdQJLNQGCU(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static LsVJhAMbydvvbXQP(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static LwdvLudaemLQZuwr(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static MGjyXlwVwgCMMNGq(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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
.end method

.method public static MIlYSRilPaCuGZYJ(Landroid/support/v8/renderscript/Type;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->hasMipmaps()Z

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
.end method

.method public static NBbRZemfFIWlHhyY(Landroid/support/v8/renderscript/Script;IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Script;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

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
.end method

.method public static NUZVMhWjiOsWeWBn(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static NxeJiDOSqqPBllQa(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

.method public static OeaENaAtdGjFXwSg(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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

.method public static OwBXWOYvQeIXNrtf(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static POUsDoawrnFlkqvZ(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static PfkmGhTvaeVIIbnl(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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
.end method

.method public static PtWqxxYlTNbOGDbS(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static QGLogVUAEaNqKQwf(Landroid/support/v8/renderscript/Element;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

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

.method public static QwByqaaEuAAWETdO(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static RXUNASdhFOzDtDpJ(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

    goto/32 :goto_0

    nop

    nop
.end method

.method public static TyjAUYuwhrBvtXdj(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static UHNwekHCGZSvritS(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->I32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static UbPwOdshhDyEhppr(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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
.end method

.method public static UlYkMgjNGwRZVQnn(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

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

.method public static VZrndwCYzsEytZUm(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static VayJoaHgtzFRGTrq(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static VecQggqsOvSYqKKL(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static VopRzSKYCGtTlpSs(Landroid/support/v8/renderscript/Type;)I
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

    nop
.end method

.method public static WLhHTeXAHmnloQLf(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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

.method public static WPiQDVtkYYoOnoaP(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static XkdjuMYoEdwBKpNR(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static XrfwUxwHQkgYJugm(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static XukmVZBuUyCslIMz(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;
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

.method public static YNfQdhJaBkItfels(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static YawPKzBifkdsMBzl(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

.method public static YbOntSWJHQSZThcc(Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ZmvmqvkXOeXJmOGM(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static ZnKPDwDpNqkWqXva(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static atXTlTAeJBjTGePh(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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
.end method

.method public static bBYvXBPuCnPewOhg(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_0

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

.method public static buydThrHPfnMVwPT(Landroid/support/v8/renderscript/Element;)I
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

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->xiTEtevSyEOIOIlP(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    return-object v2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    invoke-static {v2, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->uJjoktKWMZAvtNVa(Landroid/support/v8/renderscript/Script;Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->WLhHTeXAHmnloQLf(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

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
    invoke-direct {v2, v0, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_3

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->IjcYBfqiZjkLCAKB(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

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

    :goto_9
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x0

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
    invoke-static {p0, v0, v1, v2, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->AyElmbngxqCxTZLX(Landroid/support/v8/renderscript/RenderScript;IJZ)J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    goto :goto_b

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_15
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->PtWqxxYlTNbOGDbS(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0x9

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

    :goto_17
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    :goto_18
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->KxgViGMgqacOXLdy(Landroid/support/v8/renderscript/RenderScript;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->WPiQDVtkYYoOnoaP(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->ZmvmqvkXOeXJmOGM(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->OeaENaAtdGjFXwSg(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->kHxICAXFgFgTWkRP(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

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

    :goto_22
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->OwBXWOYvQeIXNrtf(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    :goto_23
    const-string p1, "Unsuported element type."

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop
.end method

.method public static dWyRATayitHyatzS(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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
.end method

.method public static dnkFrHaNSttVEyDn(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static eIUrbbUgrLsXkBRL(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->I32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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
.end method

.method public static eircnvNQqWmAjrsc(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

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

.method public static enATPhmjZhXXzKiD(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static fBdBstQogdQzIiWw(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

    nop
.end method

.method public static gUyTCnrGtYSnzinT(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static giydHvDxoEpACIXQ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static hBkXFYPrvYrsIbzL(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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

.method public static hQsYyFyIrkyXHNZq(Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->forEach_Dot(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ipjJJWgGlardTzjL(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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

    nop
.end method

.method public static isRFkcnGlvRBEhSP(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

    nop
.end method

.method public static jDTzgxkyZkjePiUV(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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
.end method

.method public static jMaKFKhXxHclNVYa(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

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

.method public static jfxYbETEDTfrFFkY(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->I32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static kHxICAXFgFgTWkRP(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_7

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
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

    :goto_9
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop
.end method

.method public static knObJNTvlQnyNVVJ(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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

    nop
.end method

.method public static kxbTfBZwhNvWCrCt(Landroid/support/v8/renderscript/Type;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Type;->getYuv()I

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

.method public static mOmsaPlHsTpwDZhj(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
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
.end method

.method public static nrMwHIbvIxnWOaVe(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

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
.end method

.method public static odqajtbXPBxGmFXY(Landroid/support/v8/renderscript/Element;)I
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

.method public static ovrGcayCfWaHXEKp(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static popobhPUbkauzbnM(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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

.method public static pupDXYLlorEbmuzk(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static qAUYALxOBaCoirhP(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_1

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static qeyHXBqUjAuopRcC(Landroid/support/v8/renderscript/FieldPacker;F)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static rLFcjkTzbSqjnxss(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static rTYduZCDgoBftGrL(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->I32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static rioLZNpTNzawNrLU(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {p0 .. p5}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

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

.method public static roUvVsNxfVeFHlkv(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static sCTJZAZcOmxMvanQ(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static toDuzghPfuCYWxoB(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public static uDQIozHzNtYaZybY(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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

.method public static uJjoktKWMZAvtNVa(Landroid/support/v8/renderscript/Script;Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Script;->setIncSupp(Z)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static xiTEtevSyEOIOIlP(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

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
.end method

.method public static xoIMwwJEgdhgmeUJ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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

    goto/32 :goto_0

    nop

    nop
.end method

.method public static yFdrrNXHsxtLZrSF(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->YbOntSWJHQSZThcc(Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

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

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_0
    const-string p1, "Input vector size must be >= output vector size."

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->popobhPUbkauzbnM(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->ZnKPDwDpNqkWqXva(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->CUwBhuJoQEEjqfnC(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->DPCdCWgHjvpcwPgd(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->EtxsouFZpsSDlVsn(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_17

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->sCTJZAZcOmxMvanQ(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

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

    :goto_d
    return-void

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    :goto_f
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->eircnvNQqWmAjrsc(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    goto/32 :goto_d

    nop

    nop

    :goto_11
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->NUZVMhWjiOsWeWBn(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->PfkmGhTvaeVIIbnl(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->JUmUQxNNiZeybfTc(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

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

    :goto_15
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->JaKIohzNcYkHDWhP(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string p1, "Input type must be U8, U8_1, U8_2 or U8_4."

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v2, p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->dWyRATayitHyatzS(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    move-object v5, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1c
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->roUvVsNxfVeFHlkv(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    :goto_21
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->UbPwOdshhDyEhppr(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_22
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_23
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

    :goto_24
    if-ge v0, v1, :cond_2

    nop

    goto/32 :goto_e

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

    :goto_25
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->YawPKzBifkdsMBzl(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_27
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->QwByqaaEuAAWETdO(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    move-object v0, p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->knObJNTvlQnyNVVJ(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_12

    nop

    nop

    :goto_2b
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->KjehbMJwFeBbSCDp(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2e
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v3, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->RXUNASdhFOzDtDpJ(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_33
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->QGLogVUAEaNqKQwf(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_34
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_35
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->qAUYALxOBaCoirhP(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_36
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->xoIMwwJEgdhgmeUJ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_38
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_3a
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->buydThrHPfnMVwPT(Landroid/support/v8/renderscript/Element;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_b

    nop

    nop

    :goto_3c
    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public forEach_Dot(Landroid/support/v8/renderscript/Allocation;)V
    .locals 1

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->hQsYyFyIrkyXHNZq(Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public forEach_Dot(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_1f

    nop

    :goto_2
    goto/32 :goto_28

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

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->MGjyXlwVwgCMMNGq(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->enATPhmjZhXXzKiD(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xe

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_a
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_b
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->pupDXYLlorEbmuzk(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->ipjJJWgGlardTzjL(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->AtcTYuuAmZbuHRbB(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->hBkXFYPrvYrsIbzL(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->AyhymIFDGHOKMjqG(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->DXrOKZHFuzfyleHV(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    const-string p1, "Output vector size must be one."

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string p1, "Input type must be U8, U8_1, U8_2 or U8_4."

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->fBdBstQogdQzIiWw(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    :goto_17
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->dnkFrHaNSttVEyDn(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

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

    :goto_19
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->AsLFyrGjfUJuHnCu(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    :goto_1c
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->LsVJhAMbydvvbXQP(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->rLFcjkTzbSqjnxss(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_22
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v3, 0x0

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

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_3
    goto/32 :goto_29

    nop

    :goto_25
    move-object v5, p2

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

    :goto_26
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_27
    invoke-static/range {v0 .. v5}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->rioLZNpTNzawNrLU(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_28
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->POUsDoawrnFlkqvZ(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_2

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

    :goto_2f
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

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

    :goto_30
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_31
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOmsaPlHsTpwDZhj(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_32
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->CxCZNQIGTfgkBjUu(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

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

    :goto_33
    add-int v0, v0, v1

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

    :goto_34
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->jDTzgxkyZkjePiUV(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_35
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    :goto_36
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->HzbgGWeqZGfPwGyu(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_38
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_39
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->odqajtbXPBxGmFXY(Landroid/support/v8/renderscript/Element;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v1, 0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop
.end method

.method public getFieldID_Input()Landroid/support/v8/renderscript/Script$FieldID;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

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

    nop

    :goto_2
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

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_4

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

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-static {p0, v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->XukmVZBuUyCslIMz(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$FieldID;

    move-result-object p0

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

    nop

    :goto_9
    const v0, 0x1d

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop
.end method

.method public getKernelID_Separate()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v2, v0, v1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->NBbRZemfFIWlHhyY(Landroid/support/v8/renderscript/Script;IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_3
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

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    return-object p0

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
    const/4 v2, 0x0

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

    :goto_8
    const/4 v0, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    :goto_a
    const v0, 0x13

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    const v1, 0x18

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public setDotCoefficients(FFFF)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_1
    invoke-static {v0, p3}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->XkdjuMYoEdwBKpNR(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_22

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x10

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

    :goto_6
    invoke-static {v0, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->jMaKFKhXxHclNVYa(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const-string p1, "Coefficient may not be negative."

    nop

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

    nop

    :goto_8
    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->UlYkMgjNGwRZVQnn(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_2

    nop

    nop

    :goto_9
    cmpg-float v0, p4, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_b
    cmpg-float v1, p1, v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_25

    nop

    nop

    :goto_e
    add-float v0, p1, p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    if-gez v0, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

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

    nop

    :goto_15
    cmpg-float v1, p2, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_16
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_11

    nop

    nop

    :goto_1a
    goto/32 :goto_20

    nop

    nop

    :goto_1b
    cmpl-float v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-gez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
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

    :goto_1e
    const v1, 0x16

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

    :goto_1f
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->qeyHXBqUjAuopRcC(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, p4}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->XrfwUxwHQkgYJugm(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_23
    if-gez v1, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_24
    const-string p1, "Sum of coefficients must be 1.0 or less."

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_26
    if-gez v1, :cond_5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    :goto_27
    cmpg-float v1, p3, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    const/4 p1, 0x0

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

    :goto_29
    add-float/2addr v0, p3

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

    :goto_2a
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_2b
    add-float/2addr v0, p4

    nop

    goto/32 :goto_2a

    nop

    nop
.end method

.method public setOutput(Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_0
    const-string p1, "Output type must be U32 or I32."

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->ovrGcayCfWaHXEKp(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, v1, :cond_1

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

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->giydHvDxoEpACIXQ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->gUyTCnrGtYSnzinT(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    :goto_b
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->toDuzghPfuCYWxoB(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    :goto_c
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->bBYvXBPuCnPewOhg(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_3
    goto/32 :goto_3f

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_f
    throw p0

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

    :goto_11
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->atXTlTAeJBjTGePh(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_12
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->VayJoaHgtzFRGTrq(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    const/16 v1, 0x100

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->YNfQdhJaBkItfels(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

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

    :goto_15
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->CHeUFIoAlGfuvwEe(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->VopRzSKYCGtTlpSs(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->UHNwekHCGZSvritS(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->uDQIozHzNtYaZybY(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1c
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_44

    nop

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

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ne v0, v1, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_22
    throw p0

    nop

    nop

    :goto_23
    goto/32 :goto_2f

    nop

    nop

    :goto_24
    const v1, 0x1f

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

    :goto_25
    if-eq v0, v1, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->nrMwHIbvIxnWOaVe(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

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

    :goto_28
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->LwdvLudaemLQZuwr(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

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

    :goto_29
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->kxbTfBZwhNvWCrCt(Landroid/support/v8/renderscript/Type;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2a
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->VecQggqsOvSYqKKL(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_2b
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2c
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->MIlYSRilPaCuGZYJ(Landroid/support/v8/renderscript/Type;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2d
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_6
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2f
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->isRFkcnGlvRBEhSP(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

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

    :goto_31
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->LFOxTjvdQJLNQGCU(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_32
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->NxeJiDOSqqPBllQa(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    :goto_34
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_36
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->GLoPyxjyGSWyNOLJ(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_38
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->jfxYbETEDTfrFFkY(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3a
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->DaXtVBEeQYHLSSUR(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->eIUrbbUgrLsXkBRL(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

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

    :goto_3e
    if-ne v0, v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

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

    :goto_40
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->EDPXPRJdpVAkoeUF(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p0, v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->JSdRcPPJlsTFAIrz(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/BaseObj;)V

    goto/32 :goto_4

    nop

    nop

    :goto_42
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->TyjAUYuwhrBvtXdj(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->yFdrrNXHsxtLZrSF(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

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

    :goto_45
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_56

    nop

    :cond_9
    goto/32 :goto_55

    nop

    :goto_46
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_48
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->rTYduZCDgoBftGrL(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_49
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->GAuPShCQwTJpuGFH(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4c
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const-string p1, "Output must be 1D, 256 elements."

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4f
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->DbjxIHXLwVodDzLE(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_50
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->HIMpWiVHlTBmLetq(Landroid/support/v8/renderscript/Type;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_51
    if-eq v0, v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_a
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-ne v0, v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_b
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_53
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->VZrndwCYzsEytZUm(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object v0

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v0, :cond_c

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_1

    nop

    nop

    :goto_57
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicHistogram;->mOut:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_58
    rem-int v0, v0, v1

    nop

    goto/32 :goto_45

    nop

    nop

    nop
.end method
