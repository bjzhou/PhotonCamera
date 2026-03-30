.class public final enum Lcom/google/ar/core/Config$PowerMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$PowerMode;

.field public static final enum NORMAL:Lcom/google/ar/core/Config$PowerMode;

.field public static final enum REDUCED_POWER:Lcom/google/ar/core/Config$PowerMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$PowerMode;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_a

    nop

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
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {v0, v1}, [Lcom/google/ar/core/Config$PowerMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lcom/google/ar/core/Config$PowerMode;->REDUCED_POWER:Lcom/google/ar/core/Config$PowerMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v0, Lcom/google/ar/core/Config$PowerMode;->NORMAL:Lcom/google/ar/core/Config$PowerMode;

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

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    new-instance v0, Lcom/google/ar/core/Config$PowerMode;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/ar/core/Config$PowerMode;->REDUCED_POWER:Lcom/google/ar/core/Config$PowerMode;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    sput-object v0, Lcom/google/ar/core/Config$PowerMode;->$VALUES:[Lcom/google/ar/core/Config$PowerMode;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$PowerMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-static {}, Lcom/google/ar/core/Config$PowerMode;->$values()[Lcom/google/ar/core/Config$PowerMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Lcom/google/ar/core/Config$PowerMode;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

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

    :goto_d
    const-string v1, "NORMAL"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_f

    nop

    :goto_11
    sput-object v0, Lcom/google/ar/core/Config$PowerMode;->NORMAL:Lcom/google/ar/core/Config$PowerMode;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_14
    const-string v1, "REDUCED_POWER"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_15
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$PowerMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_11

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

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Lcom/google/ar/core/Config$PowerMode;->nativeCode:I

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
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$PowerMode;
    .locals 5

    goto/32 :goto_b

    nop

    nop

    :goto_0
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1
    throw v0

    nop

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

    nop

    :goto_3
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v3

    nop

    :goto_5
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Lcom/google/ar/core/Config$PowerMode;->values()[Lcom/google/ar/core/Config$PowerMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_8
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    goto :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

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

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v4, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    :goto_11
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    const-string v1, "Unexpected value for native PowerMode, value="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    :goto_18
    goto/32 :goto_7

    nop

    nop

    :goto_19
    iget v4, v3, Lcom/google/ar/core/Config$PowerMode;->nativeCode:I

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

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
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$PowerMode;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/Config$PowerMode;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-class v0, Lcom/google/ar/core/Config$PowerMode;

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
    return-object p0

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Config$PowerMode;
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

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/Config$PowerMode;->$VALUES:[Lcom/google/ar/core/Config$PowerMode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$PowerMode;->clone()Ljava/lang/Object;

    move-result-object v0

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
    check-cast v0, [Lcom/google/ar/core/Config$PowerMode;

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
