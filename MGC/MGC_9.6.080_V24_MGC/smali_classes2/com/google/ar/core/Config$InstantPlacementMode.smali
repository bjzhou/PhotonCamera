.class public final enum Lcom/google/ar/core/Config$InstantPlacementMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$InstantPlacementMode;

.field public static final enum DISABLED:Lcom/google/ar/core/Config$InstantPlacementMode;

.field public static final enum ENABLED:Lcom/google/ar/core/Config$InstantPlacementMode;

.field public static final enum LOCAL_Y_UP:Lcom/google/ar/core/Config$InstantPlacementMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$InstantPlacementMode;
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/Config$InstantPlacementMode;

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

    :goto_b
    sget-object v1, Lcom/google/ar/core/Config$InstantPlacementMode;->ENABLED:Lcom/google/ar/core/Config$InstantPlacementMode;

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

    :goto_c
    sget-object v0, Lcom/google/ar/core/Config$InstantPlacementMode;->DISABLED:Lcom/google/ar/core/Config$InstantPlacementMode;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lcom/google/ar/core/Config$InstantPlacementMode;->LOCAL_Y_UP:Lcom/google/ar/core/Config$InstantPlacementMode;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "ENABLED"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/ar/core/Config$InstantPlacementMode;->$VALUES:[Lcom/google/ar/core/Config$InstantPlacementMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/Config$InstantPlacementMode;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "DISABLED"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lcom/google/ar/core/Config$InstantPlacementMode;->LOCAL_Y_UP:Lcom/google/ar/core/Config$InstantPlacementMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/ar/core/Config$InstantPlacementMode;->DISABLED:Lcom/google/ar/core/Config$InstantPlacementMode;

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

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    :goto_8
    invoke-static {}, Lcom/google/ar/core/Config$InstantPlacementMode;->$values()[Lcom/google/ar/core/Config$InstantPlacementMode;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x14

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
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$InstantPlacementMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    const-string v1, "LOCAL_Y_UP"

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/ar/core/Config$InstantPlacementMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Config$InstantPlacementMode;->ENABLED:Lcom/google/ar/core/Config$InstantPlacementMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$InstantPlacementMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lcom/google/ar/core/Config$InstantPlacementMode;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$InstantPlacementMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/Config$InstantPlacementMode;->nativeCode:I

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

.method public static forNumber(I)Lcom/google/ar/core/Config$InstantPlacementMode;
    .locals 5

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_3
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_4
    iget v4, v3, Lcom/google/ar/core/Config$InstantPlacementMode;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    :goto_f
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    const-string v1, "Unexpected value for native InstantPlacementMode, value="

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v3

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    :goto_14
    aget-object v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_7

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    invoke-static {}, Lcom/google/ar/core/Config$InstantPlacementMode;->values()[Lcom/google/ar/core/Config$InstantPlacementMode;

    move-result-object v0

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

    :goto_18
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v4, p0, :cond_2

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

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_1a
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$InstantPlacementMode;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Lcom/google/ar/core/Config$InstantPlacementMode;

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
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Config$InstantPlacementMode;

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
.end method

.method public static values()[Lcom/google/ar/core/Config$InstantPlacementMode;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$InstantPlacementMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/Config$InstantPlacementMode;->$VALUES:[Lcom/google/ar/core/Config$InstantPlacementMode;

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
    return-object v0

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/Config$InstantPlacementMode;

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
.end method
