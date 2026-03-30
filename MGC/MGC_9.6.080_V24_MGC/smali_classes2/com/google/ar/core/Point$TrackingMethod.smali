.class public final enum Lcom/google/ar/core/Point$TrackingMethod;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Point$TrackingMethod;

.field public static final enum DISTANCE_GUESS:Lcom/google/ar/core/Point$TrackingMethod;

.field public static final enum DISTANCE_GUESS_AND_REAL_DEPTH:Lcom/google/ar/core/Point$TrackingMethod;

.field public static final enum REAL_DEPTH:Lcom/google/ar/core/Point$TrackingMethod;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Point$TrackingMethod;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    :goto_1
    sget-object v1, Lcom/google/ar/core/Point$TrackingMethod;->REAL_DEPTH:Lcom/google/ar/core/Point$TrackingMethod;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_3
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/Point$TrackingMethod;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    :goto_6
    sget-object v2, Lcom/google/ar/core/Point$TrackingMethod;->DISTANCE_GUESS_AND_REAL_DEPTH:Lcom/google/ar/core/Point$TrackingMethod;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    sget-object v0, Lcom/google/ar/core/Point$TrackingMethod;->DISTANCE_GUESS:Lcom/google/ar/core/Point$TrackingMethod;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lcom/google/ar/core/Point$TrackingMethod;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

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

    :goto_2
    sput-object v0, Lcom/google/ar/core/Point$TrackingMethod;->REAL_DEPTH:Lcom/google/ar/core/Point$TrackingMethod;

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

    :goto_3
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "DISTANCE_GUESS"

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

    :goto_5
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "DISTANCE_GUESS_AND_REAL_DEPTH"

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

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Point$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    :goto_f
    sget-object v1, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->wvsENkpyaRMPi:Ljava/lang/String;

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

    :goto_10
    sput-object v0, Lcom/google/ar/core/Point$TrackingMethod;->DISTANCE_GUESS:Lcom/google/ar/core/Point$TrackingMethod;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1, v3, v2}, Lcom/google/ar/core/Point$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ar/core/Point$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_15
    new-instance v0, Lcom/google/ar/core/Point$TrackingMethod;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sput-object v0, Lcom/google/ar/core/Point$TrackingMethod;->$VALUES:[Lcom/google/ar/core/Point$TrackingMethod;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    invoke-static {}, Lcom/google/ar/core/Point$TrackingMethod;->$values()[Lcom/google/ar/core/Point$TrackingMethod;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x11

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Lcom/google/ar/core/Point$TrackingMethod;

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

    nop

    nop

    :goto_1c
    sput-object v0, Lcom/google/ar/core/Point$TrackingMethod;->DISTANCE_GUESS_AND_REAL_DEPTH:Lcom/google/ar/core/Point$TrackingMethod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

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

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/Point$TrackingMethod;->nativeCode:I

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

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/Point$TrackingMethod;
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    aget-object v3, v0, v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v4, p0, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    iget v4, v3, Lcom/google/ar/core/Point$TrackingMethod;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_16

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    :goto_b
    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_e
    if-lt v2, v1, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    return-object v3

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    const-string v1, "Unexpected value for native Point TrackingMethod Mode, value="

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

    :goto_12
    const v0, 0x3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Lcom/google/ar/core/Point$TrackingMethod;->values()[Lcom/google/ar/core/Point$TrackingMethod;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    throw v0

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x20

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Point$TrackingMethod;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-class v0, Lcom/google/ar/core/Point$TrackingMethod;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/ar/core/Point$TrackingMethod;

    nop

    goto/32 :goto_2

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

    goto/32 :goto_1

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Point$TrackingMethod;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/Point$TrackingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    check-cast v0, [Lcom/google/ar/core/Point$TrackingMethod;

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

    :goto_2
    return-object v0

    nop

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/Point$TrackingMethod;->$VALUES:[Lcom/google/ar/core/Point$TrackingMethod;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
