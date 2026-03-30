.class public final enum Lcom/google/ar/core/ArCoreApk$UserMessageType;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/ArCoreApk$UserMessageType;

.field public static final enum APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

.field public static final enum FEATURE:Lcom/google/ar/core/ArCoreApk$UserMessageType;

.field public static final enum USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/ArCoreApk$UserMessageType;
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/ArCoreApk$UserMessageType;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_2
    const v1, 0x3

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

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    sget-object v2, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    sget-object v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

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

    :goto_6
    return-object v0

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->FEATURE:Lcom/google/ar/core/ArCoreApk$UserMessageType;

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

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    const-string v1, "USER_ALREADY_INFORMED"

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "FEATURE"

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    sput-object v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;->FEATURE:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    sput-object v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;->USER_ALREADY_INFORMED:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/ArCoreApk$UserMessageType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/ArCoreApk$UserMessageType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "APPLICATION"

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;->$VALUES:[Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_e
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_12
    new-instance v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;

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

    :goto_13
    sput-object v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

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

    :goto_14
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {}, Lcom/google/ar/core/ArCoreApk$UserMessageType;->$values()[Lcom/google/ar/core/ArCoreApk$UserMessageType;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/ArCoreApk$UserMessageType;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_19

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

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/ArCoreApk$UserMessageType;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/ArCoreApk$UserMessageType;
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x6

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
    const v1, 0xb

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_17

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lcom/google/ar/core/ArCoreApk$UserMessageType;->values()[Lcom/google/ar/core/ArCoreApk$UserMessageType;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    const-string v1, "Unexpected value for native UserMessageType, value="

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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    if-eq v4, p0, :cond_0

    nop

    nop

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

    :goto_b
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    :goto_e
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    if-lt v2, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    aget-object v3, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_12
    array-length v1, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_13
    return-object v3

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    :goto_19
    iget v4, v3, Lcom/google/ar/core/ArCoreApk$UserMessageType;->nativeCode:I

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

    :goto_1a
    rem-int v0, v0, v1

    nop

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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/ArCoreApk$UserMessageType;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

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
    check-cast p0, Lcom/google/ar/core/ArCoreApk$UserMessageType;

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

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    const-class v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/ArCoreApk$UserMessageType;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    check-cast v0, [Lcom/google/ar/core/ArCoreApk$UserMessageType;

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
    sget-object v0, Lcom/google/ar/core/ArCoreApk$UserMessageType;->$VALUES:[Lcom/google/ar/core/ArCoreApk$UserMessageType;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, [Lcom/google/ar/core/ArCoreApk$UserMessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
