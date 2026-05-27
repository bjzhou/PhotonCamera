.class public final Landroid/support/v8/renderscript/Script$InvokeID;
.super Landroid/support/v8/renderscript/BaseObj;


# instance fields
.field mScript:Landroid/support/v8/renderscript/Script;

.field mSlot:I


# direct methods
.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    iput-object p4, p0, Landroid/support/v8/renderscript/Script$InvokeID;->mScript:Landroid/support/v8/renderscript/Script;

    iput p5, p0, Landroid/support/v8/renderscript/Script$InvokeID;->mSlot:I

    return-void
.end method
