.class public Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
.super Landroid/support/v8/renderscript/ScriptIntrinsic;
.source "PG"


# static fields
.field private static final INTRINSIC_API_LEVEL:I = 0x13


# instance fields
.field private final mAdd:Landroid/support/v8/renderscript/Float4;

.field private mInput:Landroid/support/v8/renderscript/Allocation;

.field private final mMatrix:Landroid/support/v8/renderscript/Matrix4f;


# direct methods
.method private 4eb1017aededb6aa4b2447b799468739m()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    const v0, 0xf

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    :goto_3
    invoke-static {p0, v1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->UfSqqQStMhSzDdqw(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->TOzYZICEdvSTeMAf(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Matrix4f;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/16 v1, 0x40

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

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

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_d

    nop
.end method

.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    new-instance p1, Landroid/support/v8/renderscript/Float4;

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
    invoke-direct {p1}, Landroid/support/v8/renderscript/Float4;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Landroid/support/v8/renderscript/Matrix4f;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    new-instance p1, Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_4
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/ScriptIntrinsic;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public static AVSGAemlEsCTEPDT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

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

.method public static BCVghxsiIbdbEqlR(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static BIscdhWZVMcsPCrl(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix4f;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static BRTVPVEffUyKbGGF(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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
.end method

.method public static BndlIkHibSEDfUqa(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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

.method public static CRABlcoagZSGZoEN(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

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

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static CgHBbXvcWTVcEKqI(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static DHiTTvnKNMYjrZdH(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V
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
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->4eb1017aededb6aa4b2447b799468739m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static DIxkSGZmKJwfefAF(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static DLFdcAcyyaAQduao(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

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

.method public static DONjkYsuPhdgOaLG(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static DqqiawjWhURkquum(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static ERBRxoBubMFbVqVc(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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

.method public static EgpEuekdQNZQeZMK(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static EyBwPodcKtRcvMXq(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static EzhQtYOYBcnJPqVA(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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

.method public static FLJrntOWWPjYqYcD(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

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

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const v1, 0x2

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
    goto/32 :goto_1

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static FnkGMnpvhQYhZyWq(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static JYpTzTxMmXGqxmzS(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static JouOeMkMoXCJNyuJ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

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

.method public static KLsaSNUUiLLiwLKq(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static KVgwQvpgBnlOJYEL(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static KXwxSCfFcMoePIzu(Landroid/support/v8/renderscript/RenderScript;)Z
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/RenderScript;->isUseNative()Z

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

.method public static MKajULzxAFFTcSTZ(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

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

    nop

    nop

    nop

    nop
.end method

.method public static MbJrVaCkzwHrMmeB(Landroid/support/v8/renderscript/Script;Z)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Script;->setIncSupp(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static OLxVdTEWWvdJvvuJ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static PUkRISSKMGlJYMVx(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static PjdMdJwLVdXiGSPn(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static PrYPjcBfIVQijBBb(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static QbpFhJazOqfYiVPX(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static RTKHRJthckZRMOFT(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

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

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public static RTXJtgSIUzAeqUuj(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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
.end method

.method public static SfVwXBbNOHZsEpwM(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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
.end method

.method public static TFekvoCbauxzMtbl(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static THdAlHWBpZoyaxuR(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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

.method public static TOzYZICEdvSTeMAf(Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addMatrix(Landroid/support/v8/renderscript/Matrix4f;)V

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

.method public static TeTGmoDKnPHcZiim(Landroid/support/v8/renderscript/FieldPacker;F)V
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

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static TlyjJXOWLyvjOpxJ(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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
.end method

.method public static TrLOWlFMFoTIfZdj(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static TwTtWbYSXhWivyWw(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/FieldPacker;)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static UfSqqQStMhSzDdqw(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/FieldPacker;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static UiFGfNEcRKgOIDrZ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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

.method public static UnYoxJZecMfDVvyd(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static VqSWtPYHUoUjtykd(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static WKeTaenxuqnNXsnR(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Script;->forEach(ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static WSPoNcjNQoZPTctE(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_3(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static WhQTTsJMQfpPUobG(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static WyXPZSqIgyNgHBeC(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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
.end method

.method public static XAQDucOzZTUmqOlm(Landroid/support/v8/renderscript/FieldPacker;F)V
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
.end method

.method public static XCUNMQKNGTWOPdxw(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static XPKVZCxHCfxEKlLg(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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
.end method

.method public static XcfpBQPWjlSjesNE(Landroid/support/v8/renderscript/FieldPacker;F)V
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

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static YPTbKjIQOGBURpCq(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static ZNntwXcqzdFOkDsS(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static ZiGZHcccCEvYJvEF(Landroid/support/v8/renderscript/FieldPacker;F)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static aLZPUrvZTvwKCAtx(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V
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
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->4eb1017aededb6aa4b2447b799468739m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static aibtYqKudVZZaCbZ(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V
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
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->4eb1017aededb6aa4b2447b799468739m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static alzsSjWqrdhKGaoE(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static ayPzVVniJofMvuNY(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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
.end method

.method public static cBFOKEygIwkFJibg(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

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
.end method

.method public static cYyuHigLFXaytbdd(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
    .locals 1

    goto/32 :goto_0

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

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static create(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

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

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const-string p1, "Unsuported element type."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    const/4 p1, 0x0

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
    invoke-direct {v2, v0, v1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    invoke-static {p0, v0, v1, v2, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->egZxTfDQbPcuzlag(Landroid/support/v8/renderscript/RenderScript;IJZ)J

    move-result-wide v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_a
    invoke-direct {p0, p1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

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

    :goto_c
    if-nez v0, :cond_0

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
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_11

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x2

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

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_13
    invoke-static {v2, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->MbJrVaCkzwHrMmeB(Landroid/support/v8/renderscript/Script;Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
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

    nop

    :goto_15
    invoke-static {p1, p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->FLJrntOWWPjYqYcD(Landroid/support/v8/renderscript/BaseObj;Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->dkMNnDzJroljFqur(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    new-instance v2, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;

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

    :goto_18
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->KXwxSCfFcMoePIzu(Landroid/support/v8/renderscript/RenderScript;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->EzhQtYOYBcnJPqVA(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public static cyBDRWNhplQUcTFH(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static dkMNnDzJroljFqur(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static duCBhWqzQptwFpNO(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static eEhqGiiOrpRHTjth(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static eYYylpRWgnIuinNH(Landroid/support/v8/renderscript/Matrix4f;)V
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Matrix4f;->loadIdentity()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static egZxTfDQbPcuzlag(Landroid/support/v8/renderscript/RenderScript;IJZ)J
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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/RenderScript;->nScriptIntrinsicCreate(IJZ)J

    move-result-wide v0

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
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    return-wide v0

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
    const v0, 0x12

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public static fglCGcTdMQmxMIba(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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
.end method

.method public static fiBjmLDktxxXDuMU(Landroid/support/v8/renderscript/FieldPacker;F)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static gQGBopvPGAYIqpfG(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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

.method public static gwOCqrxvmDIaCsTt(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->4eb1017aededb6aa4b2447b799468739m()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static hUPnMbWJnlmsrpOY(Landroid/support/v8/renderscript/FieldPacker;F)V
    .locals 0

    goto/32 :goto_0

    nop

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

.method public static iFQbSzdkrmcCjGrv(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Element;->isCompatible(Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static iJtJxqfseCJuhyYW(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static iMSPDKZyGOQmkBqP(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static iUxxRsoRiRUFtbgZ(Landroid/support/v8/renderscript/FieldPacker;F)V
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

.method public static iXVKmLVdDFGQfNnr(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->4eb1017aededb6aa4b2447b799468739m()V

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

.method public static jIobRPRbCwuXMKfy(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static jKoxPcszaezjJEUh(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static jdQucDEfIZSEAmQP(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static jkUyrCSGTgTkSPiG(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static kVSSwRYhaHCZqKiv(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static kZDofFzhXsJStKbh(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/Matrix4f;->load(Landroid/support/v8/renderscript/Matrix3f;)V

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

.method public static lfaYNMBBzuSZBepI(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

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
.end method

.method public static mlcynFiXKJKpIBJG(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

    nop
.end method

.method public static nBWJsCpCRHmdfybn(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static oeSCaKLftpZGwlAt(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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

.method public static okLfUpQiVPBxWwOX(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static olyJTLsqftOlSGMw(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->F32_4(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static ovQFznQSvpWYJXaR(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static pWoEDaeAPeGtullC(Landroid/support/v8/renderscript/FieldPacker;F)V
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
    invoke-virtual {p0, p1}, Landroid/support/v8/renderscript/FieldPacker;->addF32(F)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static pZzPYFEddmCbCfqI(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8_2(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static riIefOdfSvmeQYRc(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public static sBCGzQetYHQFlpYw(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static syZggcaCSKvblBQN(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static tmPVZCqoqWYBKUoT(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public static uCnyRgnZVWqahvQb(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public static uVoRcvmMoLHtUQDS(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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
.end method

.method public static umQDSPbbLNCJaShN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;
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
    invoke-static {p0}, Landroid/support/v8/renderscript/Element;->U8(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

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

.method public static yLJVliWJsABCGRlr(Landroid/support/v8/renderscript/Script;IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;
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
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v8/renderscript/Script;->createKernelID(IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static yPuLasPexPZsOMQJ(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static yQyGFfgZxfhOEkan(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z
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

.method public static yamvHICXPuQgplAm(Landroid/support/v8/renderscript/Matrix4f;IIF)V
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
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static ybViABTfoAsOOtMT(Landroid/support/v8/renderscript/Matrix4f;IIF)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Matrix4f;->set(IIF)V

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

.method public static zUDObxCBOZxCrHQo(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/FieldPacker;)V
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
    invoke-virtual {p0, p1, p2}, Landroid/support/v8/renderscript/Script;->setVar(ILandroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static zziAqwcmvPrVhyOb(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getElement()Landroid/support/v8/renderscript/Element;

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


# virtual methods
.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    :goto_9
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v0, p1, p2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->WKeTaenxuqnNXsnR(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public forEach(Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Script$LaunchOptions;)V
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->EyBwPodcKtRcvMXq(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_2e

    nop

    nop

    :goto_3
    goto/32 :goto_42

    nop

    nop

    :goto_4
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->EgpEuekdQNZQeZMK(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->RTXJtgSIUzAeqUuj(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->jIobRPRbCwuXMKfy(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    nop

    :goto_7
    const-string v1, "Unsuported element type."

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_8
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->oeSCaKLftpZGwlAt(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_9
    move-object v5, p2

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
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    invoke-static {v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->umQDSPbbLNCJaShN(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    :goto_10
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->WyXPZSqIgyNgHBeC(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->THdAlHWBpZoyaxuR(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    move-object v7, p3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->QbpFhJazOqfYiVPX(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->UiFGfNEcRKgOIDrZ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_15
    move-object v2, p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_16
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->iJtJxqfseCJuhyYW(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {p0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->RTKHRJthckZRMOFT(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v1}, Landroid/support/v8/renderscript/RSIllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1b
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->JYpTzTxMmXGqxmzS(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->CgHBbXvcWTVcEKqI(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1e
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->nBWJsCpCRHmdfybn(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->ayPzVVniJofMvuNY(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

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

    :goto_22
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

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
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->TlyjJXOWLyvjOpxJ(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    :goto_25
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->zziAqwcmvPrVhyOb(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_26
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->cBFOKEygIwkFJibg(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_27
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->alzsSjWqrdhKGaoE(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

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

    :goto_28
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->ERBRxoBubMFbVqVc(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v3, 0x0

    nop

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

    :goto_2d
    throw p0

    nop

    :goto_2e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->uCnyRgnZVWqahvQb(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

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

    :goto_30
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->JouOeMkMoXCJNyuJ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_31
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_32
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_33
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->riIefOdfSvmeQYRc(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

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

    :goto_34
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_35
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->WSPoNcjNQoZPTctE(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_37
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_39
    if-eqz v0, :cond_6

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->BRTVPVEffUyKbGGF(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->gQGBopvPGAYIqpfG(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_3c
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->VqSWtPYHUoUjtykd(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mlcynFiXKJKpIBJG(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->XPKVZCxHCfxEKlLg(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_3f
    move-object v4, p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->fglCGcTdMQmxMIba(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v0, :cond_7

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_42
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

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

    :goto_43
    invoke-static/range {v2 .. v7}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->lfaYNMBBzuSZBepI(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/Allocation;Landroid/support/v8/renderscript/FieldPacker;Landroid/support/v8/renderscript/Script$LaunchOptions;)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->cYyuHigLFXaytbdd(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_45
    goto/32 :goto_29

    nop

    nop

    :goto_46
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->ZNntwXcqzdFOkDsS(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    :goto_48
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->DqqiawjWhURkquum(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

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

    :goto_49
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4a
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->yQyGFfgZxfhOEkan(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4f
    throw p0

    nop

    :goto_50
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->jdQucDEfIZSEAmQP(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

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

    :goto_52
    return-void

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_54
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->iFQbSzdkrmcCjGrv(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_56
    if-nez v0, :cond_a

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

    :cond_a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-eqz v0, :cond_b

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v0, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->MKajULzxAFFTcSTZ(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_59
    const v1, 0x16

    nop

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

    :goto_5a
    iget-object v1, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->CRABlcoagZSGZoEN(Landroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Z

    move-result v0

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

    :goto_5e
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->pZzPYFEddmCbCfqI(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2

    nop

    nop

    :goto_60
    new-instance p0, Landroid/support/v8/renderscript/RSIllegalArgumentException;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_61
    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-eqz v0, :cond_f

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_64
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->DIxkSGZmKJwfefAF(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->uVoRcvmMoLHtUQDS(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_66
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->AVSGAemlEsCTEPDT(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

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

    :goto_67
    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mRS:Landroid/support/v8/renderscript/RenderScript;

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

    :goto_69
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->olyJTLsqftOlSGMw(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6a
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->PjdMdJwLVdXiGSPn(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

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

    :goto_6b
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->OLxVdTEWWvdJvvuJ(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-static {p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->SfVwXBbNOHZsEpwM(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Element;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_6d
    invoke-static {v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->BndlIkHibSEDfUqa(Landroid/support/v8/renderscript/RenderScript;)Landroid/support/v8/renderscript/Element;

    move-result-object v2

    nop

    goto/32 :goto_2f

    nop

    nop
.end method

.method public getKernelID()Landroid/support/v8/renderscript/Script$KernelID;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v0, 0xa

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

    :goto_7
    if-lez v0, :cond_0

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

    :goto_8
    invoke-static {p0, v2, v0, v1, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->yLJVliWJsABCGRlr(Landroid/support/v8/renderscript/Script;IILandroid/support/v8/renderscript/Element;Landroid/support/v8/renderscript/Element;)Landroid/support/v8/renderscript/Script$KernelID;

    move-result-object p0

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

    :goto_9
    const/4 v1, 0x0

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

    :goto_a
    const/4 v0, 0x3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x4

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
.end method

.method public setAdd(FFFF)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, v0, Landroid/support/v8/renderscript/Float4;->z:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p2}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    iput p2, v0, Landroid/support/v8/renderscript/Float4;->y:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    iget-object p2, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iget p2, p2, Landroid/support/v8/renderscript/Float4;->x:F

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->pWoEDaeAPeGtullC(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    const/16 p2, 0x10

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Landroid/support/v8/renderscript/FieldPacker;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->ZiGZHcccCEvYJvEF(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_3

    nop

    nop

    :goto_f
    iput p1, v0, Landroid/support/v8/renderscript/Float4;->x:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    iget p2, p2, Landroid/support/v8/renderscript/Float4;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->TeTGmoDKnPHcZiim(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1, p2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->hUPnMbWJnlmsrpOY(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget p2, p2, Landroid/support/v8/renderscript/Float4;->z:F

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

    :goto_14
    iget p2, p2, Landroid/support/v8/renderscript/Float4;->w:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-static {p0, p2, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->zUDObxCBOZxCrHQo(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput p4, v0, Landroid/support/v8/renderscript/Float4;->w:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public setAdd(Landroid/support/v8/renderscript/Float4;)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->fiBjmLDktxxXDuMU(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_c

    nop

    nop

    :goto_1
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->z:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p1, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1f

    nop

    nop

    :goto_5
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    iput v1, v0, Landroid/support/v8/renderscript/Float4;->z:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->XAQDucOzZTUmqOlm(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_9

    nop

    nop

    :goto_8
    iput v1, v0, Landroid/support/v8/renderscript/Float4;->x:F

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->y:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p1, p1, Landroid/support/v8/renderscript/Float4;->w:F

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

    :goto_b
    iput v1, v0, Landroid/support/v8/renderscript/Float4;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->z:F

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mAdd:Landroid/support/v8/renderscript/Float4;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->XcfpBQPWjlSjesNE(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

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

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->w:F

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

    :goto_14
    iput v1, v0, Landroid/support/v8/renderscript/Float4;->w:F

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

    :goto_15
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->y:F

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

    :goto_16
    iget v1, p1, Landroid/support/v8/renderscript/Float4;->x:F

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_18
    const/16 v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    new-instance v0, Landroid/support/v8/renderscript/FieldPacker;

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

    :goto_1a
    const v0, 0xf

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

    :goto_1b
    invoke-static {v0, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->iUxxRsoRiRUFtbgZ(Landroid/support/v8/renderscript/FieldPacker;F)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p0, p1, v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->TwTtWbYSXhWivyWw(Landroid/support/v8/renderscript/Script;ILandroid/support/v8/renderscript/FieldPacker;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v1}, Landroid/support/v8/renderscript/FieldPacker;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix3f;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->iXVKmLVdDFGQfNnr(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->kZDofFzhXsJStKbh(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix3f;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method

.method public setColorMatrix(Landroid/support/v8/renderscript/Matrix4f;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->aibtYqKudVZZaCbZ(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_3
    invoke-static {v0, p1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->BIscdhWZVMcsPCrl(Landroid/support/v8/renderscript/Matrix4f;Landroid/support/v8/renderscript/Matrix4f;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public setGreyscale()V
    .locals 7

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    const v2, 0x3e991687    # 0.299f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_3
    invoke-static {v0, v5, v5, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->jKoxPcszaezjJEUh(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    :goto_7
    const/4 v3, 0x1

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
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_a
    invoke-static {v0, v1, v5, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->WhQTTsJMQfpPUobG(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->gwOCqrxvmDIaCsTt(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v5, v1, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->UnYoxJZecMfDVvyd(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v3, v1, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->KVgwQvpgBnlOJYEL(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_0

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->DLFdcAcyyaAQduao(Landroid/support/v8/renderscript/Matrix4f;)V

    goto/32 :goto_23

    nop

    nop

    :goto_13
    invoke-static {v0, v3, v3, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->eEhqGiiOrpRHTjth(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    :goto_15
    invoke-static {v0, v5, v3, v6}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->PrYPjcBfIVQijBBb(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    invoke-static {v0, v3, v5, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->ybViABTfoAsOOtMT(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v6, 0x3de978d5    # 0.114f

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1, v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->XCUNMQKNGTWOPdxw(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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
    invoke-static {v0, v1, v3, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->jkUyrCSGTgTkSPiG(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_20
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    const v4, 0x3f1645a2    # 0.587f

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

    :goto_23
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

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
.end method

.method public setRGBtoYUV()V
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->DHiTTvnKNMYjrZdH(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v2, v2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->KLsaSNUUiLLiwLKq(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_7
    const v1, 0x3e991687    # 0.299f

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x10

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

    nop

    :goto_a
    invoke-static {v0, v2, v3, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->kVSSwRYhaHCZqKiv(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    nop

    :goto_c
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_d
    const v1, -0x41e956c1    # -0.14713f

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x1

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f
    const v1, 0x3de978d5    # 0.114f

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    const v1, -0x42332df5    # -0.10001f

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_14
    const/4 v4, 0x2

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

    :goto_15
    invoke-static {v0, v3, v3, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->yamvHICXPuQgplAm(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v4, v4, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->sBCGzQetYHQFlpYw(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x3f1645a2    # 0.587f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, v2, v4, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->DONjkYsuPhdgOaLG(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, -0x40fc299e

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    invoke-static {v0, v4, v3, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->TFekvoCbauxzMtbl(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v3, v4, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->BCVghxsiIbdbEqlR(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v4, v2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->YPTbKjIQOGBURpCq(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1e
    const v1, 0x3edf3b64    # 0.436f

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

    :goto_1f
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_20
    const v1, -0x416c1a8b    # -0.28886f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    invoke-static {v0, v3, v2, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->cyBDRWNhplQUcTFH(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_24
    const v1, 0x3f1d70a4    # 0.615f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_25
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_27
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

    nop

    nop

    :goto_28
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_29
    const/4 v2, 0x0

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

    :goto_2a
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->PUkRISSKMGlJYMVx(Landroid/support/v8/renderscript/Matrix4f;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method public setYUVtoRGB()V
    .locals 7

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v1, v1, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->ovQFznQSvpWYJXaR(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-static {v0, v6, v6, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->FnkGMnpvhQYhZyWq(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_a
    goto/32 :goto_1

    nop

    :goto_b
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1, v3, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->syZggcaCSKvblBQN(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_d
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v6, v1, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->yPuLasPexPZsOMQJ(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_12

    nop

    nop

    :goto_12
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

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

    :goto_14
    const v5, 0x3f91e5f3    # 1.13983f

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

    :goto_15
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

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

    :goto_17
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v0, v3, v6, v1}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->TrLOWlFMFoTIfZdj(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_5

    nop

    nop

    :goto_1a
    const v5, -0x4135f06f

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    invoke-static {v0, v1, v6, v2}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->duCBhWqzQptwFpNO(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_2

    nop

    nop

    :goto_1c
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    invoke-static {p0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->aLZPUrvZTvwKCAtx(Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    const v1, 0x40020e17

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v5, -0x40eb5dcc    # -0.5806f

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v0, v3, v3, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->tmPVZCqoqWYBKUoT(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->mMatrix:Landroid/support/v8/renderscript/Matrix4f;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_25
    invoke-static {v0, v3, v1, v4}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->okLfUpQiVPBxWwOX(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->eYYylpRWgnIuinNH(Landroid/support/v8/renderscript/Matrix4f;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v0, v6, v3, v5}, Landroid/support/v8/renderscript/ScriptIntrinsicColorMatrix;->iMSPDKZyGOQmkBqP(Landroid/support/v8/renderscript/Matrix4f;IIF)V

    goto/32 :goto_1d

    nop

    nop
.end method
