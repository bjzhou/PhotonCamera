.class public final enum Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

.field public static final enum FULL_TRACKING:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

.field public static final enum NOT_TRACKING:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

.field public static final enum SCREENSPACE_WITH_APPROXIMATE_DISTANCE:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    const v1, 0xf

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v0, 0x10

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

    :goto_7
    sget-object v1, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->SCREENSPACE_WITH_APPROXIMATE_DISTANCE:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    sget-object v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->NOT_TRACKING:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v2, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->FULL_TRACKING:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->$values()[Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    sput-object v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->FULL_TRACKING:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v1, "NOT_TRACKING"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_5
    new-instance v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "SCREENSPACE_WITH_APPROXIMATE_DISTANCE"

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

    :goto_7
    new-instance v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const v1, 0x20

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->SCREENSPACE_WITH_APPROXIMATE_DISTANCE:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

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

    :goto_e
    const-string v1, "FULL_TRACKING"

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->NOT_TRACKING:Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

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

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sput-object v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->$VALUES:[Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2

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
    iput p3, p0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->nativeCode:I

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
    return-void

    nop

    nop
.end method

.method static fromNumber(I)Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;
    .locals 5

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const-string v1, "Unexpected value for native InstantPlacementPoint TrackingMethod Mode, value="

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-eq v4, p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_8
    const/4 v2, 0x0

    nop

    nop

    :goto_9
    goto/32 :goto_19

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

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
    const v0, 0x9

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    :goto_11
    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    :goto_13
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    return-object v3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    :goto_16
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->values()[Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    move-result-object v0

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

    :goto_19
    if-lt v2, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

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

    nop

    :goto_1a
    iget v4, v3, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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
    check-cast p0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

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

    :goto_3
    const-class v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;
    .locals 1

    goto/32 :goto_3

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
    check-cast v0, [Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;->$VALUES:[Lcom/google/ar/core/InstantPlacementPoint$TrackingMethod;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method
