.class public final enum Lcom/google/ar/core/Config$FocusMode;
.super Ljava/lang/Enum;
.source "PG"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ar/core/Config$FocusMode;

.field public static final enum AUTO:Lcom/google/ar/core/Config$FocusMode;

.field public static final enum FIXED:Lcom/google/ar/core/Config$FocusMode;


# instance fields
.field final nativeCode:I


# direct methods
.method private static synthetic $values()[Lcom/google/ar/core/Config$FocusMode;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Lcom/google/ar/core/Config$FocusMode;->AUTO:Lcom/google/ar/core/Config$FocusMode;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    filled-new-array {v0, v1}, [Lcom/google/ar/core/Config$FocusMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    sget-object v0, Lcom/google/ar/core/Config$FocusMode;->FIXED:Lcom/google/ar/core/Config$FocusMode;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

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
    add-int v0, v0, v1

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-object v0

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

    nop

    nop

    :goto_9
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const-string v1, "AUTO"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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

    nop

    :goto_2
    const-string v1, "FIXED"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$FocusMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lcom/google/ar/core/Config$FocusMode;->$values()[Lcom/google/ar/core/Config$FocusMode;

    move-result-object v0

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

    :goto_6
    sput-object v0, Lcom/google/ar/core/Config$FocusMode;->FIXED:Lcom/google/ar/core/Config$FocusMode;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    sput-object v0, Lcom/google/ar/core/Config$FocusMode;->$VALUES:[Lcom/google/ar/core/Config$FocusMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_a
    const v0, 0x18

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

    :goto_b
    const/4 v2, 0x0

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

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lcom/google/ar/core/Config$FocusMode;->AUTO:Lcom/google/ar/core/Config$FocusMode;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lcom/google/ar/core/Config$FocusMode;

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

    :goto_10
    invoke-direct {v0, v1, v2, v2}, Lcom/google/ar/core/Config$FocusMode;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lcom/google/ar/core/Config$FocusMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

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

    :goto_1
    iput p3, p0, Lcom/google/ar/core/Config$FocusMode;->nativeCode:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static forNumber(I)Lcom/google/ar/core/Config$FocusMode;
    .locals 5

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Unexpected value for native FocusMode, value="

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    :goto_2
    invoke-static {}, Lcom/google/ar/core/Config$FocusMode;->values()[Lcom/google/ar/core/Config$FocusMode;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v2, v2, 0x1

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

    :goto_4
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    if-lt v2, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    :goto_6
    iget v4, v3, Lcom/google/ar/core/Config$FocusMode;->nativeCode:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_7
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    aget-object v3, v0, v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    array-length v1, v0

    nop

    nop

    nop

    goto/32 :goto_7

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
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    :goto_11
    invoke-direct {v0, p0}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x10

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

    :goto_13
    if-eq v4, p0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_17
    throw v0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    return-object v3

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ar/core/Config$FocusMode;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    check-cast p0, Lcom/google/ar/core/Config$FocusMode;

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

    :goto_1
    const-class v0, Lcom/google/ar/core/Config$FocusMode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public static values()[Lcom/google/ar/core/Config$FocusMode;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, [Lcom/google/ar/core/Config$FocusMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    sget-object v0, Lcom/google/ar/core/Config$FocusMode;->$VALUES:[Lcom/google/ar/core/Config$FocusMode;

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
    invoke-virtual {v0}, [Lcom/google/ar/core/Config$FocusMode;->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop
.end method
