.class public final enum Landroid/support/v8/renderscript/Sampler$Value;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

.field public static final enum WRAP:Landroid/support/v8/renderscript/Sampler$Value;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    const-string v7, "CLAMP"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    const-string v7, "WRAP"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    const-string v4, "LINEAR_MIP_NEAREST"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v5, Landroid/support/v8/renderscript/Sampler$Value;

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
    const/4 v8, 0x6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v6, 0x5

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroid/support/v8/renderscript/Sampler$Value;

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

    :goto_c
    invoke-direct {v1, v2, v3, v3}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v8, 0x4

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

    :goto_e
    invoke-direct {v2, v3, v4, v4}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    sput-object v6, Landroid/support/v8/renderscript/Sampler$Value;->MIRRORED_REPEAT:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    const-string v1, "NEAREST"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v4, v7, v8, v5}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    filled-new-array/range {v0 .. v6}, [Landroid/support/v8/renderscript/Sampler$Value;

    move-result-object v0

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

    :goto_13
    sput-object v1, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_15
    sput-object v5, Landroid/support/v8/renderscript/Sampler$Value;->CLAMP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_16
    sput-object v4, Landroid/support/v8/renderscript/Sampler$Value;->WRAP:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v5, v7, v6, v8}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_19
    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v6, v7, v8, v8}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    invoke-direct {v3, v4, v5, v6}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1d
    new-instance v3, Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sput-object v2, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_LINEAR:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v5, 0x3

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

    :goto_22
    const-string v2, "LINEAR"

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v7, "MIRRORED_REPEAT"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v2, Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x12

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v3, "LINEAR_MIP_LINEAR"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0, v1, v2, v2}, Landroid/support/v8/renderscript/Sampler$Value;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2a
    sput-object v0, Landroid/support/v8/renderscript/Sampler$Value;->$VALUES:[Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v6, Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    new-instance v4, Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2e
    sput-object v3, Landroid/support/v8/renderscript/Sampler$Value;->LINEAR_MIP_NEAREST:Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Landroid/support/v8/renderscript/Sampler$Value;->mID:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static JwNeYCIPMfWbkZKz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

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

    nop

    nop
.end method

.method public static XOjGPlwVyvBMAkXI([Landroid/support/v8/renderscript/Sampler$Value;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, [Landroid/support/v8/renderscript/Sampler$Value;->clone()Ljava/lang/Object;

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
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Sampler$Value;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Landroid/support/v8/renderscript/Sampler$Value;->JwNeYCIPMfWbkZKz(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    :goto_2
    check-cast p0, Landroid/support/v8/renderscript/Sampler$Value;

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

    :goto_3
    const-class v0, Landroid/support/v8/renderscript/Sampler$Value;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Landroid/support/v8/renderscript/Sampler$Value;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Landroid/support/v8/renderscript/Sampler$Value;

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

    :goto_2
    sget-object v0, Landroid/support/v8/renderscript/Sampler$Value;->$VALUES:[Landroid/support/v8/renderscript/Sampler$Value;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Landroid/support/v8/renderscript/Sampler$Value;->XOjGPlwVyvBMAkXI([Landroid/support/v8/renderscript/Sampler$Value;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
