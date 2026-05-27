.class final Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroid/support/v8/renderscript/RenderScript;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p2, Landroid/support/v8/renderscript/Allocation;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/support/v8/renderscript/Allocation;

    invoke-virtual {p2, p1}, Landroid/support/v8/renderscript/BaseObj;->getID(Landroid/support/v8/renderscript/RenderScript;)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    return-void

    :cond_0
    instance-of p1, p2, Ljava/lang/Boolean;

    const/4 v0, 0x4

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eq p2, p1, :cond_1

    const-wide/16 p1, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x1

    :goto_0
    iput-wide p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    return-void

    :cond_2
    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    return-void

    :cond_3
    instance-of p1, p2, Ljava/lang/Long;

    const/16 v1, 0x8

    if-eqz p1, :cond_4

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    return-void

    :cond_4
    instance-of p1, p2, Ljava/lang/Float;

    if-eqz p1, :cond_5

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v0, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    return-void

    :cond_5
    instance-of p1, p2, Ljava/lang/Double;

    if-eqz p1, :cond_6

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iput v1, p0, Landroid/support/v8/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    :cond_6
    return-void
.end method
