.class public final enum Lcom/google/ar/core/Config$DepthMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$DepthMode;

.field public static final enum ALWAYS_ENABLED:Lcom/google/ar/core/Config$DepthMode;

.field public static final enum AUTOMATIC:Lcom/google/ar/core/Config$DepthMode;

.field public static final enum DISABLED:Lcom/google/ar/core/Config$DepthMode;

.field public static final enum RAW_DEPTH_ONLY:Lcom/google/ar/core/Config$DepthMode;

.field public static final enum STATIC_SCENE_WITH_MOVING_PEOPLE:Lcom/google/ar/core/Config$DepthMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$DepthMode;
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const v1, 0x1a

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

    :goto_1
    sget-object v3, Lcom/google/ar/core/Config$DepthMode;->ALWAYS_ENABLED:Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/ar/core/Config$DepthMode;->DISABLED:Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    sget-object v4, Lcom/google/ar/core/Config$DepthMode;->RAW_DEPTH_ONLY:Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v1, Lcom/google/ar/core/Config$DepthMode;->AUTOMATIC:Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/ar/core/Config$DepthMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object v2, Lcom/google/ar/core/Config$DepthMode;->STATIC_SCENE_WITH_MOVING_PEOPLE:Lcom/google/ar/core/Config$DepthMode;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Config$DepthMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_d

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "STATIC_SCENE_WITH_MOVING_PEOPLE"

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x3

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

    :goto_8
    const/4 v2, 0x2

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

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_a
    new-instance v0, Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$DepthMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "ALWAYS_ENABLED"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lcom/google/ar/core/Config$DepthMode;->ALWAYS_ENABLED:Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lcom/google/ar/core/Config$DepthMode;->$VALUES:[Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$DepthMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v0, Lcom/google/ar/core/Config$DepthMode;->DISABLED:Lcom/google/ar/core/Config$DepthMode;

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

    nop

    nop

    :goto_11
    const/4 v3, 0x4

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Config$DepthMode;->RAW_DEPTH_ONLY:Lcom/google/ar/core/Config$DepthMode;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$DepthMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lcom/google/ar/core/Config$DepthMode;->$values()[Lcom/google/ar/core/Config$DepthMode;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "RAW_DEPTH_ONLY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1, v3, v2}, Lcom/google/ar/core/Config$DepthMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    sput-object v0, Lcom/google/ar/core/Config$DepthMode;->STATIC_SCENE_WITH_MOVING_PEOPLE:Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1c
    new-instance v0, Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    const v1, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v1, "DISABLED"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v2, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    const-string v1, "AUTOMATIC"

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

    :goto_24
    sput-object v0, Lcom/google/ar/core/Config$DepthMode;->AUTOMATIC:Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput p3, p0, Lcom/google/ar/core/Config$DepthMode;->nativeCode:I

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$DepthMode;
    .locals 5

    goto/32 :goto_d

    nop

    nop

    :goto_0
    array-length v1, v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_a

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x14

    nop

    nop

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

    :goto_e
    if-eq v4, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v4, v3, Lcom/google/ar/core/Config$DepthMode;->nativeCode:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "Unexpected value for native DepthMode, value="

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_15
    invoke-static {}, Lcom/google/ar/core/Config$DepthMode;->values()[Lcom/google/ar/core/Config$DepthMode;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    const v1, 0x4

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

    :goto_17
    if-lt v2, v1, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_18
    return-object v3

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$DepthMode;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    const-class v0, Lcom/google/ar/core/Config$DepthMode;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lcom/google/ar/core/Config$DepthMode;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Config$DepthMode;
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

    :goto_1
    sget-object v0, Lcom/google/ar/core/Config$DepthMode;->$VALUES:[Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$DepthMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/Config$DepthMode;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
