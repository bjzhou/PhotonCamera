.class public final enum Landroid/support/v8/renderscript/RenderScript$Priority;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/RenderScript$Priority;

.field public static final enum LOW:Landroid/support/v8/renderscript/RenderScript$Priority;

.field public static final enum NORMAL:Landroid/support/v8/renderscript/RenderScript$Priority;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_17

    nop

    nop

    :goto_0
    sput-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->$VALUES:[Landroid/support/v8/renderscript/RenderScript$Priority;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    sput-object v1, Landroid/support/v8/renderscript/RenderScript$Priority;->NORMAL:Landroid/support/v8/renderscript/RenderScript$Priority;

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

    :goto_2
    const v1, 0x18

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
    const/4 v3, -0x4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const/16 v2, 0xf

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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
    const/4 v1, 0x0

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
    new-instance v0, Landroid/support/v8/renderscript/RenderScript$Priority;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    const-string v4, "NORMAL"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
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

    :goto_c
    goto/32 :goto_f

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const-string v3, "LOW"

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

    :goto_11
    invoke-direct {v1, v4, v2, v3}, Landroid/support/v8/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    filled-new-array {v0, v1}, [Landroid/support/v8/renderscript/RenderScript$Priority;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    new-instance v1, Landroid/support/v8/renderscript/RenderScript$Priority;

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
    invoke-direct {v0, v3, v1, v2}, Landroid/support/v8/renderscript/RenderScript$Priority;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sput-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->LOW:Landroid/support/v8/renderscript/RenderScript$Priority;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x6

    nop

    goto/32 :goto_2

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

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Landroid/support/v8/renderscript/RenderScript$Priority;->mID:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public static HKbjPvvcWWUbwkeU(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
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
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static HUcGhvawcfvQcrxS([Landroid/support/v8/renderscript/RenderScript$Priority;)Ljava/lang/Object;
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
    invoke-virtual {p0}, [Landroid/support/v8/renderscript/RenderScript$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/RenderScript$Priority;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    check-cast p0, Landroid/support/v8/renderscript/RenderScript$Priority;

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

    :goto_2
    invoke-static {v0, p0}, Landroid/support/v8/renderscript/RenderScript$Priority;->HKbjPvvcWWUbwkeU(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

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

    :goto_3
    const-class v0, Landroid/support/v8/renderscript/RenderScript$Priority;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static values()[Landroid/support/v8/renderscript/RenderScript$Priority;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-static {v0}, Landroid/support/v8/renderscript/RenderScript$Priority;->HUcGhvawcfvQcrxS([Landroid/support/v8/renderscript/RenderScript$Priority;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroid/support/v8/renderscript/RenderScript$Priority;->$VALUES:[Landroid/support/v8/renderscript/RenderScript$Priority;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    check-cast v0, [Landroid/support/v8/renderscript/RenderScript$Priority;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
