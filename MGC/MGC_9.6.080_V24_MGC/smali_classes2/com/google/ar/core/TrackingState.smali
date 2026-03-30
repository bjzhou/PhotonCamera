.class public final enum Lcom/google/ar/core/TrackingState;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/TrackingState;

.field public static final enum PAUSED:Lcom/google/ar/core/TrackingState;

.field public static final enum STOPPED:Lcom/google/ar/core/TrackingState;

.field public static final enum TRACKING:Lcom/google/ar/core/TrackingState;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/TrackingState;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

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

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_9

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

    goto/32 :goto_3

    nop

    nop

    :goto_7
    sget-object v1, Lcom/google/ar/core/TrackingState;->PAUSED:Lcom/google/ar/core/TrackingState;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v2, Lcom/google/ar/core/TrackingState;->STOPPED:Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x13

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/TrackingState;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0xa

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
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lcom/google/ar/core/TrackingState;->PAUSED:Lcom/google/ar/core/TrackingState;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x2

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

    nop

    :goto_5
    const-string v1, "STOPPED"

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    sput-object v0, Lcom/google/ar/core/TrackingState;->$VALUES:[Lcom/google/ar/core/TrackingState;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "PAUSED"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lcom/google/ar/core/TrackingState;->$values()[Lcom/google/ar/core/TrackingState;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    new-instance v0, Lcom/google/ar/core/TrackingState;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_18

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    :goto_d
    new-instance v0, Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    sput-object v0, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    const-string v1, "TRACKING"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_13
    new-instance v0, Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    sput-object v0, Lcom/google/ar/core/TrackingState;->STOPPED:Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0xd

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

    :goto_16
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

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
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/TrackingState;->nativeCode:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/TrackingState;
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v4, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    return-object v3

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v1, "Unexpected value for native TrackingState, value="

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    add-int/lit8 v2, v2, 0x1

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
    const v0, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    array-length v1, v0

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

    :goto_c
    aget-object v3, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    iget v4, v3, Lcom/google/ar/core/TrackingState;->nativeCode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    invoke-static {}, Lcom/google/ar/core/TrackingState;->values()[Lcom/google/ar/core/TrackingState;

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/TrackingState;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/TrackingState;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    const-class v0, Lcom/google/ar/core/TrackingState;

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

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/TrackingState;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Lcom/google/ar/core/TrackingState;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    invoke-virtual {v0}, [Lcom/google/ar/core/TrackingState;->clone()Ljava/lang/Object;

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

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/TrackingState;->$VALUES:[Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
