.class public final enum Lcom/google/ar/core/FutureState;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/FutureState;

.field public static final enum CANCELLED:Lcom/google/ar/core/FutureState;

.field public static final enum DONE:Lcom/google/ar/core/FutureState;

.field public static final enum PENDING:Lcom/google/ar/core/FutureState;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/FutureState;
    .locals 3

    goto/32 :goto_d

    nop

    nop

    :goto_0
    sget-object v2, Lcom/google/ar/core/FutureState;->DONE:Lcom/google/ar/core/FutureState;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_3

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    filled-new-array {v0, v1, v2}, [Lcom/google/ar/core/FutureState;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    sget-object v1, Lcom/google/ar/core/FutureState;->CANCELLED:Lcom/google/ar/core/FutureState;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
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

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    sget-object v0, Lcom/google/ar/core/FutureState;->PENDING:Lcom/google/ar/core/FutureState;

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

    :goto_d
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

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    const-string v1, "PENDING"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/ar/core/FutureState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

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

    :goto_3
    invoke-static {}, Lcom/google/ar/core/FutureState;->$values()[Lcom/google/ar/core/FutureState;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lcom/google/ar/core/FutureState;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    sput-object v0, Lcom/google/ar/core/FutureState;->PENDING:Lcom/google/ar/core/FutureState;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    :goto_9
    sput-object v0, Lcom/google/ar/core/FutureState;->DONE:Lcom/google/ar/core/FutureState;

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

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xa

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    sput-object v0, Lcom/google/ar/core/FutureState;->CANCELLED:Lcom/google/ar/core/FutureState;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v1, "CANCELLED"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/FutureState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    const-string v1, "DONE"

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_13
    sput-object v0, Lcom/google/ar/core/FutureState;->$VALUES:[Lcom/google/ar/core/FutureState;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_15
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/FutureState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/FutureState;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_c

    nop

    nop

    :goto_17
    new-instance v0, Lcom/google/ar/core/FutureState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_10

    nop

    :goto_19
    const v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    goto/32 :goto_11

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p3, p0, Lcom/google/ar/core/FutureState;->nativeCode:I

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

    nop
.end method

.method static forNumber(I)Lcom/google/ar/core/FutureState;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    array-length v1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    :goto_3
    if-eq v4, p0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_4
    const v0, 0x1e

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

    :goto_5
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iget v4, v3, Lcom/google/ar/core/FutureState;->nativeCode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    const-string v1, "Unexpected value for native FutureState, value="

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    aget-object v3, v0, v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    throw v0

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    return-object v3

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    if-lt v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_17
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_19
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {}, Lcom/google/ar/core/FutureState;->values()[Lcom/google/ar/core/FutureState;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/FutureState;
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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lcom/google/ar/core/FutureState;

    nop

    goto/32 :goto_2

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
    const-class v0, Lcom/google/ar/core/FutureState;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/FutureState;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/ar/core/FutureState;->$VALUES:[Lcom/google/ar/core/FutureState;

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

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, [Lcom/google/ar/core/FutureState;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    check-cast v0, [Lcom/google/ar/core/FutureState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method
