.class public final Landroid/support/v8/renderscript/Script$KernelID;
.super Landroid/support/v8/renderscript/BaseObj;


# instance fields
.field mN:Landroid/renderscript/Script$KernelID;

.field mScript:Landroid/support/v8/renderscript/Script;

.field mSig:I

.field mSlot:I


# direct methods
.method public constructor <init>(JLandroid/support/v8/renderscript/RenderScript;Landroid/support/v8/renderscript/Script;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v8/renderscript/BaseObj;-><init>(JLandroid/support/v8/renderscript/RenderScript;)V

    iput-object p4, p0, Landroid/support/v8/renderscript/Script$KernelID;->mScript:Landroid/support/v8/renderscript/Script;

    iput p5, p0, Landroid/support/v8/renderscript/Script$KernelID;->mSlot:I

    iput p6, p0, Landroid/support/v8/renderscript/Script$KernelID;->mSig:I

    return-void
.end method
