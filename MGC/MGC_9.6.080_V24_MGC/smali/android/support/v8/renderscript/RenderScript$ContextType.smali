.class public final enum Landroid/support/v8/renderscript/RenderScript$ContextType;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/RenderScript$ContextType;

.field public static final enum DEBUG:Landroid/support/v8/renderscript/RenderScript$ContextType;

.field public static final enum NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

.field public static final enum PROFILE:Landroid/support/v8/renderscript/RenderScript$ContextType;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v2, "DEBUG"

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    sput-object v2, Landroid/support/v8/renderscript/RenderScript$ContextType;->PROFILE:Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, v1, v2, v2}, Landroid/support/v8/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    new-instance v2, Landroid/support/v8/renderscript/RenderScript$ContextType;

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

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_b
    const v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {v0, v1, v2}, [Landroid/support/v8/renderscript/RenderScript$ContextType;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    :goto_e
    sput-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->NORMAL:Landroid/support/v8/renderscript/RenderScript$ContextType;

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

    :goto_f
    new-instance v0, Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    sput-object v1, Landroid/support/v8/renderscript/RenderScript$ContextType;->DEBUG:Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    sput-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->$VALUES:[Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    const-string v3, "PROFILE"

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

    :goto_13
    new-instance v1, Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    invoke-direct {v1, v2, v3, v3}, Landroid/support/v8/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_10

    nop

    nop

    :goto_15
    const-string v1, "NORMAL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_19
    invoke-direct {v2, v3, v4, v4}, Landroid/support/v8/renderscript/RenderScript$ContextType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    const/4 v3, 0x1

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
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Landroid/support/v8/renderscript/RenderScript$ContextType;->mID:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static HtkeeUiBflFNmYzg([Landroid/support/v8/renderscript/RenderScript$ContextType;)Ljava/lang/Object;
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
    invoke-virtual {p0}, [Landroid/support/v8/renderscript/RenderScript$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static ufIEKbUEOsRmxGOI(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
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
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/RenderScript$ContextType;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-class v0, Landroid/support/v8/renderscript/RenderScript$ContextType;

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
    check-cast p0, Landroid/support/v8/renderscript/RenderScript$ContextType;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Landroid/support/v8/renderscript/RenderScript$ContextType;->ufIEKbUEOsRmxGOI(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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
.end method

.method public static values()[Landroid/support/v8/renderscript/RenderScript$ContextType;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$ContextType;->$VALUES:[Landroid/support/v8/renderscript/RenderScript$ContextType;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript$ContextType;->HtkeeUiBflFNmYzg([Landroid/support/v8/renderscript/RenderScript$ContextType;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_2
    check-cast v0, [Landroid/support/v8/renderscript/RenderScript$ContextType;

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
    return-object v0

    nop

    nop

    nop
.end method
