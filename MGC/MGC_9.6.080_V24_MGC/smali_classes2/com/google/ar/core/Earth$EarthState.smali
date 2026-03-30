.class public final enum Lcom/google/ar/core/Earth$EarthState;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Earth$EarthState;

.field public static final enum ENABLED:Lcom/google/ar/core/Earth$EarthState;

.field public static final enum ERROR_APK_VERSION_TOO_OLD:Lcom/google/ar/core/Earth$EarthState;

.field public static final enum ERROR_GEOSPATIAL_MODE_DISABLED:Lcom/google/ar/core/Earth$EarthState;

.field public static final enum ERROR_INTERNAL:Lcom/google/ar/core/Earth$EarthState;

.field public static final enum ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Earth$EarthState;

.field public static final enum ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/Earth$EarthState;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Earth$EarthState;
    .locals 6

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    filled-new-array/range {v0 .. v5}, [Lcom/google/ar/core/Earth$EarthState;

    move-result-object v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v2, Lcom/google/ar/core/Earth$EarthState;->ERROR_GEOSPATIAL_MODE_DISABLED:Lcom/google/ar/core/Earth$EarthState;

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

    :goto_4
    sget-object v1, Lcom/google/ar/core/Earth$EarthState;->ERROR_INTERNAL:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_a

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    :goto_9
    return-object v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v3, Lcom/google/ar/core/Earth$EarthState;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Earth$EarthState;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    sget-object v5, Lcom/google/ar/core/Earth$EarthState;->ERROR_APK_VERSION_TOO_OLD:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v4, Lcom/google/ar/core/Earth$EarthState;->ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    sget-object v0, Lcom/google/ar/core/Earth$EarthState;->ENABLED:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x3

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

    :goto_3
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    const/4 v2, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    sput-object v0, Lcom/google/ar/core/Earth$EarthState;->ERROR_GEOSPATIAL_MODE_DISABLED:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    const-string v3, "ERROR_NOT_AUTHORIZED"

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lcom/google/ar/core/Earth$EarthState;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v3, "ERROR_INTERNAL"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Lcom/google/ar/core/Earth$EarthState;->$values()[Lcom/google/ar/core/Earth$EarthState;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_b
    new-instance v0, Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Earth$EarthState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lcom/google/ar/core/Earth$EarthState;->ERROR_APK_VERSION_TOO_OLD:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    new-instance v0, Lcom/google/ar/core/Earth$EarthState;

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

    :goto_12
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Earth$EarthState;->ENABLED:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_14
    const/4 v2, -0x5

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    const-string v3, "ERROR_GEOSPATIAL_MODE_DISABLED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_16
    const v1, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    const-string v3, "ERROR_RESOURCE_EXHAUSTED"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_18
    sput-object v0, Lcom/google/ar/core/Earth$EarthState;->ERROR_INTERNAL:Lcom/google/ar/core/Earth$EarthState;

    nop

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

    nop

    :goto_19
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Earth$EarthState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Earth$EarthState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    :goto_1c
    const/4 v1, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v3, "ERROR_APK_VERSION_TOO_OLD"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sput-object v0, Lcom/google/ar/core/Earth$EarthState;->$VALUES:[Lcom/google/ar/core/Earth$EarthState;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_22
    const/4 v2, -0x4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Earth$EarthState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_12

    nop

    nop

    :goto_27
    new-instance v0, Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    const/4 v2, -0x3

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Earth$EarthState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v1, 0x4

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2c
    sput-object v0, Lcom/google/ar/core/Earth$EarthState;->ERROR_RESOURCE_EXHAUSTED:Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    const-string v1, "ENABLED"

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

    :goto_2e
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Earth$EarthState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2c

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

    :goto_0
    return-void

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/Earth$EarthState;->nativeCode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/Earth$EarthState;
    .locals 5

    goto/32 :goto_d

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_3
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

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

    :goto_5
    invoke-static {}, Lcom/google/ar/core/Earth$EarthState;->values()[Lcom/google/ar/core/Earth$EarthState;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v4, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x11

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    return-object v3

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    :goto_11
    const-string v1, "Unexpected value for native EarthState, value="

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

    nop

    :goto_12
    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    iget v4, v3, Lcom/google/ar/core/Earth$EarthState;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v2, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int/lit8 v2, v2, 0x1

    nop

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

    :goto_18
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Earth$EarthState;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-class v0, Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    goto/32 :goto_2

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

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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
.end method

.method public static values()[Lcom/google/ar/core/Earth$EarthState;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/ar/core/Earth$EarthState;->$VALUES:[Lcom/google/ar/core/Earth$EarthState;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {v0}, [Lcom/google/ar/core/Earth$EarthState;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
