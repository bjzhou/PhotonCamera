.class public final enum Lcom/google/ar/core/Point$OrientationMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Point$OrientationMode;

.field public static final enum ESTIMATED_SURFACE_NORMAL:Lcom/google/ar/core/Point$OrientationMode;

.field public static final enum INITIALIZED_TO_IDENTITY:Lcom/google/ar/core/Point$OrientationMode;


# instance fields
.field private final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Point$OrientationMode;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    filled-new-array {v0, v1}, [Lcom/google/ar/core/Point$OrientationMode;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const v1, 0x12

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    return-object v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0xc

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
    sget-object v0, Lcom/google/ar/core/Point$OrientationMode;->INITIALIZED_TO_IDENTITY:Lcom/google/ar/core/Point$OrientationMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lcom/google/ar/core/Point$OrientationMode;->ESTIMATED_SURFACE_NORMAL:Lcom/google/ar/core/Point$OrientationMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/google/ar/core/Point$OrientationMode;->$values()[Lcom/google/ar/core/Point$OrientationMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    const-string v1, "ESTIMATED_SURFACE_NORMAL"

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/ar/core/Point$OrientationMode;->ESTIMATED_SURFACE_NORMAL:Lcom/google/ar/core/Point$OrientationMode;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    new-instance v0, Lcom/google/ar/core/Point$OrientationMode;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Point$OrientationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lcom/google/ar/core/Point$OrientationMode;->INITIALIZED_TO_IDENTITY:Lcom/google/ar/core/Point$OrientationMode;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    const v1, 0x12

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lcom/google/ar/core/Point$OrientationMode;->$VALUES:[Lcom/google/ar/core/Point$OrientationMode;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Point$OrientationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lcom/google/ar/core/Point$OrientationMode;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_15
    const-string v1, "INITIALIZED_TO_IDENTITY"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/Point$OrientationMode;->nativeCode:I

    nop

    goto/32 :goto_2

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
.end method

.method static forNumber(I)Lcom/google/ar/core/Point$OrientationMode;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    array-length v1, v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6
    const-string v1, "Unexpected value for native Point Orientation Mode, value="

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x12

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Lcom/google/ar/core/Point$OrientationMode;->values()[Lcom/google/ar/core/Point$OrientationMode;

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

    :goto_d
    throw v0

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v4, p0, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_13
    return-object v3

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_a

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v4, v3, Lcom/google/ar/core/Point$OrientationMode;->nativeCode:I

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

    :goto_1a
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Point$OrientationMode;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/Point$OrientationMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    const-class v0, Lcom/google/ar/core/Point$OrientationMode;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Point$OrientationMode;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/ar/core/Point$OrientationMode;->$VALUES:[Lcom/google/ar/core/Point$OrientationMode;

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
    return-object v0

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lcom/google/ar/core/Point$OrientationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/Point$OrientationMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
