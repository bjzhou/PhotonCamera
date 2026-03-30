.class public final enum Lcom/google/ar/core/VpsAvailability;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/VpsAvailability;

.field public static final enum AVAILABLE:Lcom/google/ar/core/VpsAvailability;

.field public static final enum ERROR_INTERNAL:Lcom/google/ar/core/VpsAvailability;

.field public static final enum ERROR_NETWORK_CONNECTION:Lcom/google/ar/core/VpsAvailability;

.field public static final enum ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/VpsAvailability;

.field public static final enum ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/VpsAvailability;

.field public static final enum UNAVAILABLE:Lcom/google/ar/core/VpsAvailability;

.field public static final enum UNKNOWN:Lcom/google/ar/core/VpsAvailability;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/VpsAvailability;
    .locals 7

    goto/32 :goto_2

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    :goto_1
    sget-object v5, Lcom/google/ar/core/VpsAvailability;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const v0, 0xe

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

    :goto_3
    sget-object v6, Lcom/google/ar/core/VpsAvailability;->ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    sget-object v3, Lcom/google/ar/core/VpsAvailability;->ERROR_INTERNAL:Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v4, Lcom/google/ar/core/VpsAvailability;->ERROR_NETWORK_CONNECTION:Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    sget-object v1, Lcom/google/ar/core/VpsAvailability;->AVAILABLE:Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    filled-new-array/range {v0 .. v6}, [Lcom/google/ar/core/VpsAvailability;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    sget-object v2, Lcom/google/ar/core/VpsAvailability;->UNAVAILABLE:Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lcom/google/ar/core/VpsAvailability;->UNKNOWN:Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/VpsAvailability;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/ar/core/VpsAvailability;->ERROR_NETWORK_CONNECTION:Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lcom/google/ar/core/VpsAvailability;->AVAILABLE:Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, -0x3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/VpsAvailability;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_8
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    invoke-static {}, Lcom/google/ar/core/VpsAvailability;->$values()[Lcom/google/ar/core/VpsAvailability;

    move-result-object v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_e
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/VpsAvailability;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "UNKNOWN"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    const-string v3, "ERROR_RESOURCE_EXHAUSTED"

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/VpsAvailability;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1d

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/VpsAvailability;->ERROR_INTERNAL:Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v3, "ERROR_NOT_AUTHORIZED"

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_17
    const-string v1, "AVAILABLE"

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_19
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/VpsAvailability;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_2b

    nop

    nop

    :goto_1d
    sput-object v0, Lcom/google/ar/core/VpsAvailability;->UNAVAILABLE:Lcom/google/ar/core/VpsAvailability;

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

    :goto_1e
    new-instance v0, Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_20
    const-string v3, "ERROR_INTERNAL"

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_22
    new-instance v0, Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "UNAVAILABLE"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    sput-object v0, Lcom/google/ar/core/VpsAvailability;->ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_25
    sput-object v0, Lcom/google/ar/core/VpsAvailability;->$VALUES:[Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_26
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/VpsAvailability;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v0, Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sput-object v0, Lcom/google/ar/core/VpsAvailability;->UNKNOWN:Lcom/google/ar/core/VpsAvailability;

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

    :goto_2a
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/VpsAvailability;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2c
    const-string v3, "ERROR_NETWORK_CONNECTION"

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

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    new-instance v0, Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    sput-object v0, Lcom/google/ar/core/VpsAvailability;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_30
    const/4 v2, -0x4

    nop

    nop

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

    :goto_31
    const/4 v2, -0x2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_32
    const/4 v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

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
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/VpsAvailability;->nativeCode:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/VpsAvailability;
    .locals 5

    goto/32 :goto_e

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

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

    :goto_1
    return-object v3

    nop

    nop

    :goto_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
    aget-object v3, v0, v2

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {}, Lcom/google/ar/core/VpsAvailability;->values()[Lcom/google/ar/core/VpsAvailability;

    move-result-object v0

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

    :goto_e
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    if-eq v4, p0, :cond_2

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    :goto_12
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_16
    const-string v1, "Unexpected value for native VpsAvailability, value="

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    iget v4, v3, Lcom/google/ar/core/VpsAvailability;->nativeCode:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/VpsAvailability;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_1

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

    :goto_2
    const-class v0, Lcom/google/ar/core/VpsAvailability;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/VpsAvailability;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/VpsAvailability;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, [Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/VpsAvailability;->$VALUES:[Lcom/google/ar/core/VpsAvailability;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
