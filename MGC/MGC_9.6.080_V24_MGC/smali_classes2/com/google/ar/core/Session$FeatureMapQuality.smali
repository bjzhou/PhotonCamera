.class public final enum Lcom/google/ar/core/Session$FeatureMapQuality;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Session$FeatureMapQuality;

.field public static final enum GOOD:Lcom/google/ar/core/Session$FeatureMapQuality;

.field public static final enum INSUFFICIENT:Lcom/google/ar/core/Session$FeatureMapQuality;

.field public static final enum SUFFICIENT:Lcom/google/ar/core/Session$FeatureMapQuality;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Session$FeatureMapQuality;
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

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

    nop

    :goto_3
    sget-object v0, Lcom/google/ar/core/Session$FeatureMapQuality;->INSUFFICIENT:Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    sget-object v2, Lcom/google/ar/core/Session$FeatureMapQuality;->GOOD:Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    nop

    :goto_a
    return-object v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v1, Lcom/google/ar/core/Session$FeatureMapQuality;->SUFFICIENT:Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/Session$FeatureMapQuality;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "SUFFICIENT"

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

    nop

    :goto_1
    const-string v1, "GOOD"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x8

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
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Session$FeatureMapQuality;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-static {}, Lcom/google/ar/core/Session$FeatureMapQuality;->$values()[Lcom/google/ar/core/Session$FeatureMapQuality;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v0, Lcom/google/ar/core/Session$FeatureMapQuality;->GOOD:Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_c
    sput-object v0, Lcom/google/ar/core/Session$FeatureMapQuality;->SUFFICIENT:Lcom/google/ar/core/Session$FeatureMapQuality;

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

    :goto_d
    new-instance v0, Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lcom/google/ar/core/Session$FeatureMapQuality;->$VALUES:[Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Session$FeatureMapQuality;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/Session$FeatureMapQuality;->INSUFFICIENT:Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    new-instance v0, Lcom/google/ar/core/Session$FeatureMapQuality;

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

    :goto_16
    const/4 v2, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x15

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Session$FeatureMapQuality;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    const-string v1, "INSUFFICIENT"

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

    :goto_1a
    rem-int v0, v0, v1

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

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lcom/google/ar/core/Session$FeatureMapQuality;->nativeCode:I

    nop

    nop

    goto/32 :goto_1

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
.end method

.method static forNumber(I)Lcom/google/ar/core/Session$FeatureMapQuality;
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    array-length v1, v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    goto/16 :goto_16

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    const-string v1, "Unexpected value for native FeatureMapQuality, value="

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v4, p0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget-object v3, v0, v2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
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

    nop

    nop

    :goto_13
    iget v4, v3, Lcom/google/ar/core/Session$FeatureMapQuality;->nativeCode:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_1

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

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    if-lt v2, v1, :cond_2

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1a
    invoke-static {}, Lcom/google/ar/core/Session$FeatureMapQuality;->values()[Lcom/google/ar/core/Session$FeatureMapQuality;

    move-result-object v0

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Session$FeatureMapQuality;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    const-class v0, Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p0, Lcom/google/ar/core/Session$FeatureMapQuality;

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
.end method

.method public static values()[Lcom/google/ar/core/Session$FeatureMapQuality;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/ar/core/Session$FeatureMapQuality;->$VALUES:[Lcom/google/ar/core/Session$FeatureMapQuality;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    :goto_2
    check-cast v0, [Lcom/google/ar/core/Session$FeatureMapQuality;

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

    :goto_3
    invoke-virtual {v0}, [Lcom/google/ar/core/Session$FeatureMapQuality;->clone()Ljava/lang/Object;

    move-result-object v0

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
