.class public final enum Landroid/support/v8/renderscript/Type$CubemapFace;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum NEGATIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

.field public static final enum POSITIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;


# instance fields
.field mID:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v2, "NEGATIVE_X"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, v2, v3, v3}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    invoke-direct {v5, v6, v7, v7}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1e

    nop

    nop

    :goto_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-direct {v2, v3, v4, v4}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x11

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    filled-new-array/range {v0 .. v5}, [Landroid/support/v8/renderscript/Type$CubemapFace;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v3, Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v5, "POSITIVE_Z"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    const/4 v4, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1, v2, v2}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v2, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    sput-object v3, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_Y:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_10
    const-string v6, "NEGATIVE_Z"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    new-instance v5, Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    sput-object v4, Landroid/support/v8/renderscript/Type$CubemapFace;->POSITIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_18
    const-string v4, "NEGATIVE_Y"

    nop

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

    :goto_19
    invoke-direct {v4, v5, v6, v6}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_15

    nop

    nop

    :goto_1a
    sput-object v1, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_X:Landroid/support/v8/renderscript/Type$CubemapFace;

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

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    const-string v3, "POSITIVE_Y"

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

    :goto_1e
    sput-object v5, Landroid/support/v8/renderscript/Type$CubemapFace;->NEGATIVE_Z:Landroid/support/v8/renderscript/Type$CubemapFace;

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

    nop

    nop

    :goto_1f
    new-instance v1, Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "POSITIVE_X"

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v7, 0x5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    sput-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->$VALUES:[Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v3, v4, v5, v5}, Landroid/support/v8/renderscript/Type$CubemapFace;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_f

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

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

    :goto_28
    new-instance v2, Landroid/support/v8/renderscript/Type$CubemapFace;

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

    nop

    :goto_29
    new-instance v4, Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    goto/32 :goto_b

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

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Landroid/support/v8/renderscript/Type$CubemapFace;->mID:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static UGxVmQtDjheTDTCO([Landroid/support/v8/renderscript/Type$CubemapFace;)Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, [Landroid/support/v8/renderscript/Type$CubemapFace;->clone()Ljava/lang/Object;

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
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/v8/renderscript/Type$CubemapFace;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Landroid/support/v8/renderscript/Type$CubemapFace;->vhdmhmCILClrGYfb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-class v0, Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    check-cast p0, Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static values()[Landroid/support/v8/renderscript/Type$CubemapFace;
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
    sget-object v0, Landroid/support/v8/renderscript/Type$CubemapFace;->$VALUES:[Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-static {v0}, Landroid/support/v8/renderscript/Type$CubemapFace;->UGxVmQtDjheTDTCO([Landroid/support/v8/renderscript/Type$CubemapFace;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_3
    check-cast v0, [Landroid/support/v8/renderscript/Type$CubemapFace;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static vhdmhmCILClrGYfb(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;
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
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
