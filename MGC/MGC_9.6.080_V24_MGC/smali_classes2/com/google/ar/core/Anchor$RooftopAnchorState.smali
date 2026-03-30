.class public final enum Lcom/google/ar/core/Anchor$RooftopAnchorState;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Anchor$RooftopAnchorState;

.field public static final enum ERROR_INTERNAL:Lcom/google/ar/core/Anchor$RooftopAnchorState;

.field public static final enum ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$RooftopAnchorState;

.field public static final enum ERROR_UNSUPPORTED_LOCATION:Lcom/google/ar/core/Anchor$RooftopAnchorState;

.field public static final enum NONE:Lcom/google/ar/core/Anchor$RooftopAnchorState;

.field public static final enum SUCCESS:Lcom/google/ar/core/Anchor$RooftopAnchorState;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Anchor$RooftopAnchorState;
    .locals 5

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

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

    goto/32 :goto_9

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

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v1, Lcom/google/ar/core/Anchor$RooftopAnchorState;->SUCCESS:Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    sget-object v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->NONE:Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    sget-object v3, Lcom/google/ar/core/Anchor$RooftopAnchorState;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v2, Lcom/google/ar/core/Anchor$RooftopAnchorState;->ERROR_INTERNAL:Lcom/google/ar/core/Anchor$RooftopAnchorState;

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

    :goto_c
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/google/ar/core/Anchor$RooftopAnchorState;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v4, Lcom/google/ar/core/Anchor$RooftopAnchorState;->ERROR_UNSUPPORTED_LOCATION:Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
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
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Anchor$RooftopAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

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

    :goto_3
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$RooftopAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->SUCCESS:Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_5
    const/4 v2, -0x3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const-string v3, "ERROR_INTERNAL"

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

    :goto_8
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$RooftopAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {}, Lcom/google/ar/core/Anchor$RooftopAnchorState;->$values()[Lcom/google/ar/core/Anchor$RooftopAnchorState;

    move-result-object v0

    nop

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

    :goto_a
    new-instance v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->NONE:Lcom/google/ar/core/Anchor$RooftopAnchorState;

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

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_d
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    const-string v3, "ERROR_NOT_AUTHORIZED"

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

    nop

    :goto_f
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ar/core/Anchor$RooftopAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->ERROR_INTERNAL:Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    const/4 v2, -0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0xb

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

    :goto_15
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Anchor$RooftopAnchorState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x2

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    new-instance v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    sput-object v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->ERROR_NOT_AUTHORIZED:Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    const-string v3, "ERROR_UNSUPPORTED_LOCATION"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    new-instance v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1c
    const-string v1, "NONE"

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_21

    nop

    nop

    :goto_1f
    sput-object v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->$VALUES:[Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    sput-object v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->ERROR_UNSUPPORTED_LOCATION:Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v1, "SUCCESS"

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_27
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_14

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

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->nativeCode:I

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
    return-void

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Anchor$RooftopAnchorState;
    .locals 5

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-eq v4, p0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_1
    invoke-static {}, Lcom/google/ar/core/Anchor$RooftopAnchorState;->values()[Lcom/google/ar/core/Anchor$RooftopAnchorState;

    move-result-object v0

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

    :goto_2
    iget v4, v3, Lcom/google/ar/core/Anchor$RooftopAnchorState;->nativeCode:I

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
    const/4 v2, 0x0

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_4

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_e
    aget-object v3, v0, v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    :goto_13
    return-object v3

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    :goto_18
    throw v0

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    :goto_1a
    const-string v1, "Unexpected value for native RooftopAnchorState, value="

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Anchor$RooftopAnchorState;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-class v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Anchor$RooftopAnchorState;
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

    :goto_1
    sget-object v0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->$VALUES:[Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v0, [Lcom/google/ar/core/Anchor$RooftopAnchorState;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-virtual {v0}, [Lcom/google/ar/core/Anchor$RooftopAnchorState;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public isError()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    if-ltz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    iget p0, p0, Lcom/google/ar/core/Anchor$RooftopAnchorState;->nativeCode:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method
