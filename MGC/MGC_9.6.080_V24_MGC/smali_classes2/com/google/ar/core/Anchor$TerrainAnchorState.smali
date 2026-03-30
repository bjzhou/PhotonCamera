.class public final enum Lcom/google/ar/core/Anchor$TerrainAnchorState;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Anchor$TerrainAnchorState;

.field public static final enum ERROR_INTERNAL:Lcom/google/ar/core/Anchor$TerrainAnchorState;

.field public static final enum ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$TerrainAnchorState;

.field public static final enum ERROR_UNSUPPORTED_LOCATION:Lcom/google/ar/core/Anchor$TerrainAnchorState;

.field public static final enum NONE:Lcom/google/ar/core/Anchor$TerrainAnchorState;

.field public static final enum SUCCESS:Lcom/google/ar/core/Anchor$TerrainAnchorState;

.field public static final enum TASK_IN_PROGRESS:Lcom/google/ar/core/Anchor$TerrainAnchorState;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Anchor$TerrainAnchorState;
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lcom/google/ar/core/Anchor$TerrainAnchorState;->TASK_IN_PROGRESS:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v2, Lcom/google/ar/core/Anchor$TerrainAnchorState;->SUCCESS:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    goto/32 :goto_e

    nop

    nop

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_6
    return-object v0

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v5, Lcom/google/ar/core/Anchor$TerrainAnchorState;->ERROR_UNSUPPORTED_LOCATION:Lcom/google/ar/core/Anchor$TerrainAnchorState;

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

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    filled-new-array/range {v0 .. v5}, [Lcom/google/ar/core/Anchor$TerrainAnchorState;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x7

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xb

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    sget-object v3, Lcom/google/ar/core/Anchor$TerrainAnchorState;->ERROR_INTERNAL:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f
    sget-object v4, Lcom/google/ar/core/Anchor$TerrainAnchorState;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->NONE:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->TASK_IN_PROGRESS:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1d

    nop

    nop

    :goto_2
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$TerrainAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x4

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

    :goto_4
    const-string v3, "ERROR_UNSUPPORTED_LOCATION"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, -0x3

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

    :goto_6
    const-string v1, "TASK_IN_PROGRESS"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Anchor$TerrainAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "SUCCESS"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->NONE:Lcom/google/ar/core/Anchor$TerrainAnchorState;

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

    :goto_a
    new-instance v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;

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

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$TerrainAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x5

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

    :goto_11
    new-instance v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_12
    sput-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->ERROR_INTERNAL:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_14
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$TerrainAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, -0x2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Anchor$TerrainAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_9

    nop

    nop

    :goto_17
    const/4 v2, 0x1

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

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Anchor$TerrainAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_27

    nop

    nop

    :goto_1a
    sput-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->$VALUES:[Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    :goto_1d
    goto/32 :goto_d

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1f
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_20
    sput-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->ERROR_UNSUPPORTED_LOCATION:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_21
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_22
    const-string v3, "ERROR_INTERNAL"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_23
    const v0, 0xe

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x17

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    sput-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->SUCCESS:Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "NONE"

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_29
    invoke-static {}, Lcom/google/ar/core/Anchor$TerrainAnchorState;->$values()[Lcom/google/ar/core/Anchor$TerrainAnchorState;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2a
    const-string v3, "ERROR_NOT_AUTHORIZED"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2b
    new-instance v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_1b

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

    nop

    :goto_0
    iput p3, p0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->nativeCode:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Anchor$TerrainAnchorState;
    .locals 5

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v4, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

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

    nop

    :goto_b
    aget-object v3, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    const-string v1, "Unexpected value for native TerrainAnchorState, value="

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

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

    :goto_f
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, v1, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xd

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

    :goto_16
    goto/32 :goto_8

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Lcom/google/ar/core/Anchor$TerrainAnchorState;->values()[Lcom/google/ar/core/Anchor$TerrainAnchorState;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_1a
    iget v4, v3, Lcom/google/ar/core/Anchor$TerrainAnchorState;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Anchor$TerrainAnchorState;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    const-class v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Anchor$TerrainAnchorState;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/Anchor$TerrainAnchorState;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    check-cast v0, [Lcom/google/ar/core/Anchor$TerrainAnchorState;

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

    :goto_3
    sget-object v0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->$VALUES:[Lcom/google/ar/core/Anchor$TerrainAnchorState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public isError()Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lcom/google/ar/core/Anchor$TerrainAnchorState;->nativeCode:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    if-ltz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop
.end method
