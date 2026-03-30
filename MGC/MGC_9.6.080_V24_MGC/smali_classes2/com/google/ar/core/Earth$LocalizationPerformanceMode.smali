.class public final enum Lcom/google/ar/core/Earth$LocalizationPerformanceMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

.field public static final enum ACTIVE_AR:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

.field public static final enum ACTIVE_NO_CAMERA:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

.field public static final enum INACTIVE_PASSIVE:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

.field public static final enum SESSION_STATE_DEFAULT:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Earth$LocalizationPerformanceMode;
    .locals 4

    goto/32 :goto_4

    nop

    nop

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

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

    :goto_5
    sget-object v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->SESSION_STATE_DEFAULT:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    sget-object v3, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->INACTIVE_PASSIVE:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {v0, v1, v2, v3}, [Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_d
    sget-object v2, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->ACTIVE_NO_CAMERA:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v1, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->ACTIVE_AR:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "ACTIVE_AR"

    nop

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

    :goto_2
    sput-object v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->ACTIVE_AR:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v1, "INACTIVE_PASSIVE"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->$VALUES:[Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    sput-object v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->INACTIVE_PASSIVE:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_d
    const/4 v2, 0x1

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

    :goto_e
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sput-object v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->ACTIVE_NO_CAMERA:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    :goto_15
    sput-object v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->SESSION_STATE_DEFAULT:Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

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

    :goto_16
    const/4 v2, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    const-string v1, "SESSION_STATE_DEFAULT"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1a
    const-string v1, "ACTIVE_NO_CAMERA"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    invoke-static {}, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->$values()[Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2

    nop

    nop

    :goto_1f
    new-instance v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->nativeCode:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/Earth$LocalizationPerformanceMode;
    .locals 5

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    array-length v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    :goto_b
    const-string v1, "Unexpected value for native LocalizationPerformanceMode, value="

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v4, v3, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->nativeCode:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    throw v0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lt v2, v1, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_13
    const v0, 0x3

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    if-eq v4, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->values()[Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    :goto_1a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Earth$LocalizationPerformanceMode;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const-class v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

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

    :goto_3
    return-object p0

    nop
.end method

.method public static values()[Lcom/google/ar/core/Earth$LocalizationPerformanceMode;
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

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->$VALUES:[Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lcom/google/ar/core/Earth$LocalizationPerformanceMode;->clone()Ljava/lang/Object;

    move-result-object v0

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
    check-cast v0, [Lcom/google/ar/core/Earth$LocalizationPerformanceMode;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
