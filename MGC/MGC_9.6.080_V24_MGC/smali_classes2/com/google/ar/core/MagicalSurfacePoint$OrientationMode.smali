.class public final enum Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

.field public static final enum ESTIMATED_SURFACE_NORMAL:Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

.field public static final enum INITIALIZED_TO_IDENTITY:Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;


# instance fields
.field private final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    filled-new-array {v0, v1}, [Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->INITIALIZED_TO_IDENTITY:Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

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

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v1, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->ESTIMATED_SURFACE_NORMAL:Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1d

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

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    :goto_c
    const v1, 0xb

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "ESTIMATED_SURFACE_NORMAL"

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

    :goto_1
    sput-object v0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->$VALUES:[Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

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

    goto/32 :goto_c

    nop

    nop

    :goto_4
    sput-object v0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->INITIALIZED_TO_IDENTITY:Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    sput-object v0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->ESTIMATED_SURFACE_NORMAL:Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    const-string v1, "INITIALIZED_TO_IDENTITY"

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

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->$values()[Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    :goto_14
    const/4 v2, 0x1

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

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

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

    :goto_2
    iput p3, p0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->nativeCode:I

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
.end method

.method static fromNumber(I)Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_1a

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->values()[Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

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

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    if-eq v4, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

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

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const v1, 0xd

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_9
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    :goto_a
    if-lt v2, v1, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    array-length v1, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    aget-object v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
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

    nop

    :goto_e
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v4, v3, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->nativeCode:I

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_12
    const v0, 0x1

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    return-object v3

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    :goto_17
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "Unexpected value for native Point Orientation Mode, value="

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_19
    throw v0

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const-class v0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->$VALUES:[Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

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
    invoke-virtual {v0}, [Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/MagicalSurfacePoint$OrientationMode;

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
