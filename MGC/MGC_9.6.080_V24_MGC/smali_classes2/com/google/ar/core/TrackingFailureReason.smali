.class public final enum Lcom/google/ar/core/TrackingFailureReason;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/TrackingFailureReason;

.field public static final enum BAD_STATE:Lcom/google/ar/core/TrackingFailureReason;

.field public static final enum CAMERA_UNAVAILABLE:Lcom/google/ar/core/TrackingFailureReason;

.field public static final enum EXCESSIVE_MOTION:Lcom/google/ar/core/TrackingFailureReason;

.field public static final enum INSUFFICIENT_FEATURES:Lcom/google/ar/core/TrackingFailureReason;

.field public static final enum INSUFFICIENT_LIGHT:Lcom/google/ar/core/TrackingFailureReason;

.field public static final enum NONE:Lcom/google/ar/core/TrackingFailureReason;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/TrackingFailureReason;
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v5, Lcom/google/ar/core/TrackingFailureReason;->CAMERA_UNAVAILABLE:Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v2, Lcom/google/ar/core/TrackingFailureReason;->INSUFFICIENT_LIGHT:Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    sget-object v4, Lcom/google/ar/core/TrackingFailureReason;->INSUFFICIENT_FEATURES:Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    sget-object v1, Lcom/google/ar/core/TrackingFailureReason;->BAD_STATE:Lcom/google/ar/core/TrackingFailureReason;

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

    :goto_7
    sget-object v3, Lcom/google/ar/core/TrackingFailureReason;->EXCESSIVE_MOTION:Lcom/google/ar/core/TrackingFailureReason;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lcom/google/ar/core/TrackingFailureReason;->NONE:Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    return-object v0

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xe

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_f
    filled-new-array/range {v0 .. v5}, [Lcom/google/ar/core/TrackingFailureReason;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    const v0, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xb

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lcom/google/ar/core/TrackingFailureReason;->EXCESSIVE_MOTION:Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x3

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_3
    const/4 v2, 0x4

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

    nop

    :goto_4
    sput-object v0, Lcom/google/ar/core/TrackingFailureReason;->NONE:Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    :goto_7
    const-string v1, "NONE"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingFailureReason;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingFailureReason;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    goto/32 :goto_22

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

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    sput-object v0, Lcom/google/ar/core/TrackingFailureReason;->CAMERA_UNAVAILABLE:Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

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

    :goto_e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "INSUFFICIENT_FEATURES"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_0
    goto/32 :goto_28

    nop

    :goto_11
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingFailureReason;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sput-object v0, Lcom/google/ar/core/TrackingFailureReason;->INSUFFICIENT_FEATURES:Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingFailureReason;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object v0, Lcom/google/ar/core/TrackingFailureReason;->$VALUES:[Lcom/google/ar/core/TrackingFailureReason;

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

    :goto_15
    invoke-static {}, Lcom/google/ar/core/TrackingFailureReason;->$values()[Lcom/google/ar/core/TrackingFailureReason;

    move-result-object v0

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

    :goto_16
    const-string v1, "BAD_STATE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x5

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

    :goto_19
    const-string v1, "EXCESSIVE_MOTION"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v0, Lcom/google/ar/core/TrackingFailureReason;->INSUFFICIENT_LIGHT:Lcom/google/ar/core/TrackingFailureReason;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Lcom/google/ar/core/TrackingFailureReason;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sput-object v0, Lcom/google/ar/core/TrackingFailureReason;->BAD_STATE:Lcom/google/ar/core/TrackingFailureReason;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v0, Lcom/google/ar/core/TrackingFailureReason;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Lcom/google/ar/core/TrackingFailureReason;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_20
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingFailureReason;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Lcom/google/ar/core/TrackingFailureReason;

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

    nop

    :goto_22
    const-string v1, "INSUFFICIENT_LIGHT"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/TrackingFailureReason;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_26
    const-string v1, "CAMERA_UNAVAILABLE"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Lcom/google/ar/core/TrackingFailureReason;

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

    :goto_28
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_21

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

    :goto_0
    iput p3, p0, Lcom/google/ar/core/TrackingFailureReason;->nativeCode:I

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
.end method

.method static forNumber(I)Lcom/google/ar/core/TrackingFailureReason;
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    if-eq v4, p0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1
    if-lt v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lcom/google/ar/core/TrackingFailureReason;->values()[Lcom/google/ar/core/TrackingFailureReason;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    const-string v1, "Unexpected value for native TrackingFailureReason, value="

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_7
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_10

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    const v0, 0x19

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
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    array-length v1, v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_f
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    throw v0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    :goto_14
    aget-object v3, v0, v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_18
    return-object v3

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v4, v3, Lcom/google/ar/core/TrackingFailureReason;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/TrackingFailureReason;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Lcom/google/ar/core/TrackingFailureReason;

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

    :goto_1
    check-cast p0, Lcom/google/ar/core/TrackingFailureReason;

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
    return-object p0

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/TrackingFailureReason;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/TrackingFailureReason;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    check-cast v0, [Lcom/google/ar/core/TrackingFailureReason;

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

    :goto_3
    sget-object v0, Lcom/google/ar/core/TrackingFailureReason;->$VALUES:[Lcom/google/ar/core/TrackingFailureReason;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
