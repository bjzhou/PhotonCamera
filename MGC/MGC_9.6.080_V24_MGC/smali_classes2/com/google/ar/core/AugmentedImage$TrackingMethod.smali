.class public final enum Lcom/google/ar/core/AugmentedImage$TrackingMethod;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/AugmentedImage$TrackingMethod;

.field public static final enum FULL_TRACKING:Lcom/google/ar/core/AugmentedImage$TrackingMethod;

.field public static final enum LAST_KNOWN_POSE:Lcom/google/ar/core/AugmentedImage$TrackingMethod;

.field public static final enum NOT_TRACKING:Lcom/google/ar/core/AugmentedImage$TrackingMethod;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/AugmentedImage$TrackingMethod;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v1, 0x1b

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

    :goto_7
    const v0, 0x18

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->FULL_TRACKING:Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_b
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    move-result-object v0

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

    :goto_c
    sget-object v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->NOT_TRACKING:Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v2, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->LAST_KNOWN_POSE:Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/AugmentedImage$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x2

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

    :goto_2
    new-instance v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->$VALUES:[Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "NOT_TRACKING"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_8
    const-string v1, "FULL_TRACKING"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->LAST_KNOWN_POSE:Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;

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

    :goto_d
    goto/32 :goto_16

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xf

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/AugmentedImage$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "LAST_KNOWN_POSE"

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

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    invoke-static {}, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->$values()[Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    move-result-object v0

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

    :goto_14
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sput-object v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->NOT_TRACKING:Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/AugmentedImage$TrackingMethod;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->FULL_TRACKING:Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->nativeCode:I

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

.method static forNumber(I)Lcom/google/ar/core/AugmentedImage$TrackingMethod;
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

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

    :goto_3
    const v1, 0x14

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    if-eq v4, p0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_10
    return-object v3

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    if-lt v2, v1, :cond_2

    nop

    goto/32 :goto_8

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_14
    aget-object v3, v0, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    const v0, 0x20

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_17
    invoke-static {}, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->values()[Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    array-length v1, v0

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

    :goto_19
    const-string v1, "Unexpected value for native TrackingMethod, value="

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1a
    iget v4, v3, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/AugmentedImage$TrackingMethod;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-class v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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

    :goto_3
    check-cast p0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/AugmentedImage$TrackingMethod;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, [Lcom/google/ar/core/AugmentedImage$TrackingMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/AugmentedImage$TrackingMethod;->$VALUES:[Lcom/google/ar/core/AugmentedImage$TrackingMethod;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    check-cast v0, [Lcom/google/ar/core/AugmentedImage$TrackingMethod;

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

    :goto_3
    return-object v0

    nop

    nop

    nop
.end method
