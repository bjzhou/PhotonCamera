.class public final enum Lcom/google/ar/core/Config$GeospatialMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$GeospatialMode;

.field public static final enum DISABLED:Lcom/google/ar/core/Config$GeospatialMode;

.field public static final enum ENABLED:Lcom/google/ar/core/Config$GeospatialMode;

.field public static final enum ENABLED_LEGACY_LIVE_VIEW:Lcom/google/ar/core/Config$GeospatialMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$GeospatialMode;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lcom/google/ar/core/Config$GeospatialMode;->ENABLED_LEGACY_LIVE_VIEW:Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v0, 0xa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Lcom/google/ar/core/Config$GeospatialMode;->DISABLED:Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/Config$GeospatialMode;

    move-result-object v0

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

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lcom/google/ar/core/Config$GeospatialMode;->ENABLED:Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$GeospatialMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/ar/core/Config$GeospatialMode;->DISABLED:Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

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

    :goto_6
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$GeospatialMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lcom/google/ar/core/Config$GeospatialMode;->$values()[Lcom/google/ar/core/Config$GeospatialMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    const v1, 0x13

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x1

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

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lcom/google/ar/core/Config$GeospatialMode;->ENABLED:Lcom/google/ar/core/Config$GeospatialMode;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "DISABLED"

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Config$GeospatialMode;->ENABLED_LEGACY_LIVE_VIEW:Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "ENABLED_LEGACY_LIVE_VIEW"

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

    :goto_15
    sput-object v0, Lcom/google/ar/core/Config$GeospatialMode;->$VALUES:[Lcom/google/ar/core/Config$GeospatialMode;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    const-string v1, "ENABLED"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lcom/google/ar/core/Config$GeospatialMode;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$GeospatialMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_19

    nop

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

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/Config$GeospatialMode;->nativeCode:I

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

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$GeospatialMode;
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    iget v4, v3, Lcom/google/ar/core/Config$GeospatialMode;->nativeCode:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    aget-object v3, v0, v2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lt v2, v1, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xb

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {}, Lcom/google/ar/core/Config$GeospatialMode;->values()[Lcom/google/ar/core/Config$GeospatialMode;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    if-eq v4, p0, :cond_1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    const-string v1, "Unexpected value for native GeospatialMode, value="

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_18
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$GeospatialMode;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

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

    nop

    :goto_2
    const-class v0, Lcom/google/ar/core/Config$GeospatialMode;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Config$GeospatialMode;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$GeospatialMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, [Lcom/google/ar/core/Config$GeospatialMode;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/Config$GeospatialMode;->$VALUES:[Lcom/google/ar/core/Config$GeospatialMode;

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
.end method
