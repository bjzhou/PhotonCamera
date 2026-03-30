.class public Landroid/support/v8/renderscript/Script$FieldBase;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field protected mAllocation:Landroid/support/v8/renderscript/Allocation;

.field protected mElement:Landroid/support/v8/renderscript/Element;


# direct methods
.method protected constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public static RuOlWwhlGPERUHUi(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

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

.method public static jjNxCOOvjbuKakMX(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1, p2, p3}, Landroid/support/v8/renderscript/Allocation;->createSized(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

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

    nop
.end method

.method public static xSrqXFPCvdRmEJNL(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;
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
    invoke-virtual {p0}, Landroid/support/v8/renderscript/Allocation;->getType()Landroid/support/v8/renderscript/Type;

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


# virtual methods
.method public getAllocation()Landroid/support/v8/renderscript/Allocation;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Script$FieldBase;->mAllocation:Landroid/support/v8/renderscript/Allocation;

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

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Script$FieldBase;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getType()Landroid/support/v8/renderscript/Type;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Landroid/support/v8/renderscript/Script$FieldBase;->mAllocation:Landroid/support/v8/renderscript/Allocation;

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

    :goto_2
    invoke-static {p0}, Landroid/support/v8/renderscript/Script$FieldBase;->xSrqXFPCvdRmEJNL(Landroid/support/v8/renderscript/Allocation;)Landroid/support/v8/renderscript/Type;

    move-result-object p0

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

.method protected init(Landroid/support/v8/renderscript/RenderScript;I)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

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

    :goto_2
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, v0, p2, v1}, Landroid/support/v8/renderscript/Script$FieldBase;->jjNxCOOvjbuKakMX(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object p1

    nop

    goto/32 :goto_8

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

    :goto_7
    iget-object v0, p0, Landroid/support/v8/renderscript/Script$FieldBase;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Landroid/support/v8/renderscript/Script$FieldBase;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    return-void

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

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected init(Landroid/support/v8/renderscript/RenderScript;II)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroid/support/v8/renderscript/Script$FieldBase;->mElement:Landroid/support/v8/renderscript/Element;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    or-int/lit8 p3, p3, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroid/support/v8/renderscript/Script$FieldBase;->mAllocation:Landroid/support/v8/renderscript/Allocation;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-static {p1, v0, p2, p3}, Landroid/support/v8/renderscript/Script$FieldBase;->RuOlWwhlGPERUHUi(Landroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Element;II)Landroid/support/v8/renderscript/Allocation;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

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
.end method

.method public updateAllocation()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop
.end method
